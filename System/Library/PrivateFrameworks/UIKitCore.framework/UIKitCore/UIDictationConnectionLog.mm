@interface UIDictationConnectionLog
@end

@implementation UIDictationConnectionLog

void ___UIDictationConnectionLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "DictationConnection");
  v1 = _UIDictationConnectionLog_log;
  _UIDictationConnectionLog_log = v0;
}

@end