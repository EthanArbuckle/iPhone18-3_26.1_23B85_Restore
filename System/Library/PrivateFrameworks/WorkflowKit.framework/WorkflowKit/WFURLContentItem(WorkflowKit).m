@interface WFURLContentItem(WorkflowKit)
+ (id)allURLCoercionsInWorkflowKit;
@end

@implementation WFURLContentItem(WorkflowKit)

+ (id)allURLCoercionsInWorkflowKit
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

@end