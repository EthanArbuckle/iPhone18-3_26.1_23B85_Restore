@interface TVRUIDockLog
@end

@implementation TVRUIDockLog

uint64_t ___TVRUIDockLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "Dock");
  v1 = _TVRUIDockLog_log;
  _TVRUIDockLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end