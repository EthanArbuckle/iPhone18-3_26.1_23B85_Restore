@interface TVRUIButtonLog
@end

@implementation TVRUIButtonLog

uint64_t ___TVRUIButtonLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "Buttons");
  v1 = _TVRUIButtonLog_log;
  _TVRUIButtonLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end