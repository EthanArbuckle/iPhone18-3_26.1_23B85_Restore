@interface TVRUISignpostLog
@end

@implementation TVRUISignpostLog

uint64_t ___TVRUISignpostLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "Signpost");
  v1 = _TVRUISignpostLog_log;
  _TVRUISignpostLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end