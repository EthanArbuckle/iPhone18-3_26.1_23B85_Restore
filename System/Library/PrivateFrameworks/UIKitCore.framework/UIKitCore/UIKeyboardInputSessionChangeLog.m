@interface UIKeyboardInputSessionChangeLog
@end

@implementation UIKeyboardInputSessionChangeLog

void ___UIKeyboardInputSessionChangeLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "InputSessionChange");
  v1 = _UIKeyboardInputSessionChangeLog_log;
  _UIKeyboardInputSessionChangeLog_log = v0;
}

@end