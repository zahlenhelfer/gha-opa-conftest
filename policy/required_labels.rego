package kubernetes.requiredlabels

deny[msg] {
  input.kind == "Pod"
  not input.metadata.labels.costcenter
  msg := sprintf("Pod %q is missing required label 'costcenter'", [input.metadata.name])
}
