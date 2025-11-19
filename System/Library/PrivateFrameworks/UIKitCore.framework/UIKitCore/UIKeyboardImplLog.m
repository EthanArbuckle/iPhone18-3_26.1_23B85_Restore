@interface UIKeyboardImplLog
@end

@implementation UIKeyboardImplLog

void ___UIKeyboardImplLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIKeyboardImpl");
  v1 = _UIKeyboardImplLog_log;
  _UIKeyboardImplLog_log = v0;
}

@end