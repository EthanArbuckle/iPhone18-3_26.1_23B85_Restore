@interface StatusKitAgentMainLog
@end

@implementation StatusKitAgentMainLog

void ___StatusKitAgentMainLog_block_invoke(id a1)
{
  _StatusKitAgentMainLog__logger = os_log_create("com.apple.StatusKit", "StatusKitAgentMain");

  _objc_release_x1();
}

@end