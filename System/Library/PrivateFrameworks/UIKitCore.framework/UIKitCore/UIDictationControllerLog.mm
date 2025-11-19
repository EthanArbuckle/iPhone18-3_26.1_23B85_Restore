@interface UIDictationControllerLog
@end

@implementation UIDictationControllerLog

void ___UIDictationControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "Dictation");
  v1 = _UIDictationControllerLog_log;
  _UIDictationControllerLog_log = v0;
}

@end