@interface UIKeyboardExtendedLog
@end

@implementation UIKeyboardExtendedLog

void ___UIKeyboardExtendedLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIKeyboardExtended");
  v1 = _UIKeyboardExtendedLog_log;
  _UIKeyboardExtendedLog_log = v0;
}

@end