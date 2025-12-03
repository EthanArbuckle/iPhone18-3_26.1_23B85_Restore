@interface UIColor(WorkflowEditor)
+ (id)wf_moduleBorderColor;
+ (id)wf_workflowEditorColorNamed:()WorkflowEditor;
@end

@implementation UIColor(WorkflowEditor)

+ (id)wf_moduleBorderColor
{
  linkColor = [MEMORY[0x277D75348] linkColor];
  v1 = [linkColor colorWithAlphaComponent:0.8];

  return v1;
}

+ (id)wf_workflowEditorColorNamed:()WorkflowEditor
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [self colorNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

@end