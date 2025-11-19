@interface UITextInputActionsValidateRegionHelper
@end

@implementation UITextInputActionsValidateRegionHelper

void ___UITextInputActionsValidateRegionHelper_block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(([A-Z]{2})|([0-9]{3})|([A-Z][a-z]{3}))$" options:0 error:0];
  v1 = qword_1ED4A27A0;
  qword_1ED4A27A0 = v0;
}

@end