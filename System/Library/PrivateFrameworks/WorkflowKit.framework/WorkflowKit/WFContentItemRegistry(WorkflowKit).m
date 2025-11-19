@interface WFContentItemRegistry(WorkflowKit)
+ (id)allContentItemClassesInWorkflowKit;
@end

@implementation WFContentItemRegistry(WorkflowKit)

+ (id)allContentItemClassesInWorkflowKit
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

@end