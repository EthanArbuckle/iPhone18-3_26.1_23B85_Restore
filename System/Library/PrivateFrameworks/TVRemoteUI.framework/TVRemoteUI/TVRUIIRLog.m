@interface TVRUIIRLog
@end

@implementation TVRUIIRLog

uint64_t ___TVRUIIRLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "IntelligentRouting");
  v1 = _TVRUIIRLog_log;
  _TVRUIIRLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end