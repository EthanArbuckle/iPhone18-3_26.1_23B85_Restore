@interface TVRUIHintsLog
@end

@implementation TVRUIHintsLog

uint64_t ___TVRUIHintsLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "Hints");
  v1 = _TVRUIHintsLog_log;
  _TVRUIHintsLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end