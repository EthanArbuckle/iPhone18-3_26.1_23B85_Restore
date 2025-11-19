@interface UIKeyboardSmartReplyLog
@end

@implementation UIKeyboardSmartReplyLog

void ___UIKeyboardSmartReplyLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "SmartReply");
  v1 = _UIKeyboardSmartReplyLog_log;
  _UIKeyboardSmartReplyLog_log = v0;
}

@end