@interface UIImage(WorkflowUI)
+ (id)wf_workflowUIImageNamed:()WorkflowUI;
- (id)wf_insetImageWithInsets:()WorkflowUI;
@end

@implementation UIImage(WorkflowUI)

- (id)wf_insetImageWithInsets:()WorkflowUI
{
  [self size];
  v11 = v10;
  [self size];
  v18.width = a5 + a3 + v11;
  v18.height = a4 + a2 + v12;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  UIGraphicsPushContext(CurrentContext);
  [self drawAtPoint:{a3, a2}];
  UIGraphicsPopContext();
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  v15 = [v14 imageWithRenderingMode:{objc_msgSend(self, "renderingMode")}];

  UIGraphicsEndImageContext();

  return v15;
}

+ (id)wf_workflowUIImageNamed:()WorkflowUI
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [self imageNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

@end