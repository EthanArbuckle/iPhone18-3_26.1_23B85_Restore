@interface UIKeyboardTouchLog
@end

@implementation UIKeyboardTouchLog

void ___UIKeyboardTouchLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardTouch");
  v1 = _UIKeyboardTouchLog_log;
  _UIKeyboardTouchLog_log = v0;
}

@end