@interface TVRUIPrewarmLog
@end

@implementation TVRUIPrewarmLog

uint64_t ___TVRUIPrewarmLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "Prewarm");
  v1 = _TVRUIPrewarmLog_log;
  _TVRUIPrewarmLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end