@interface UIKeyboardTaskQueueLog
@end

@implementation UIKeyboardTaskQueueLog

void ___UIKeyboardTaskQueueLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardTaskQueue");
  v1 = _UIKeyboardTaskQueueLog_log;
  _UIKeyboardTaskQueueLog_log = v0;
}

@end