@interface UITextInputActionsValidateLanguageHelper
@end

@implementation UITextInputActionsValidateLanguageHelper

void ___UITextInputActionsValidateLanguageHelper_block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^[a-z]{2 options:3}([_-][A-Z][a-z]{3})?$" error:{0, 0}];
  v1 = _MergedGlobals_1359;
  _MergedGlobals_1359 = v0;
}

@end