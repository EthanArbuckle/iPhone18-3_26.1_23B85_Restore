@interface TVRCXPCLog
@end

@implementation TVRCXPCLog

uint64_t ___TVRCXPCLog_block_invoke()
{
  _TVRCXPCLog_log = os_log_create("com.apple.tvremotecore.xpc", "Client");

  return MEMORY[0x2821F96F8]();
}

@end