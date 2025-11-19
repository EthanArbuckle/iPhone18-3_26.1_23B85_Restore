@interface TVRCHomeKitLog
@end

@implementation TVRCHomeKitLog

uint64_t ___TVRCHomeKitLog_block_invoke()
{
  _TVRCHomeKitLog_log = os_log_create("com.apple.TVRemoteCore", "HomeKit");

  return MEMORY[0x2821F96F8]();
}

@end