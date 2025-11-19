@interface UIKeyboardLayoutGuideLogger
@end

@implementation UIKeyboardLayoutGuideLogger

void ___UIKeyboardLayoutGuideLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardLayoutGuide");
  v1 = _MergedGlobals_3_21;
  _MergedGlobals_3_21 = v0;
}

@end