@interface UIKeyboardLog
@end

@implementation UIKeyboardLog

void ___UIKeyboardLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardUI");
  v1 = _UIKeyboardLog_log;
  _UIKeyboardLog_log = v0;
}

@end