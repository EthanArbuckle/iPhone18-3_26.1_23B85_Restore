@interface TVRUISiriLog
@end

@implementation TVRUISiriLog

uint64_t ___TVRUISiriLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "Siri");
  v1 = _TVRUISiriLog_log;
  _TVRUISiriLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end