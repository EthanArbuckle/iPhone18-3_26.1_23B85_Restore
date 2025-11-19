@interface TVRUITipsLog
@end

@implementation TVRUITipsLog

uint64_t ___TVRUITipsLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "Tips");
  v1 = _TVRUITipsLog_log;
  _TVRUITipsLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end