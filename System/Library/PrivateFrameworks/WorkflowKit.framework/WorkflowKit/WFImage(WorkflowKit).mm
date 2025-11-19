@interface WFImage(WorkflowKit)
+ (id)workflowKitImageNamed:()WorkflowKit;
@end

@implementation WFImage(WorkflowKit)

+ (id)workflowKitImageNamed:()WorkflowKit
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [a1 imageNamed:v5 inBundle:v6];

  return v7;
}

@end