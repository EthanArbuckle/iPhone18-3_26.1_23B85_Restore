@interface TVRCDeviceQueryLog
@end

@implementation TVRCDeviceQueryLog

uint64_t ___TVRCDeviceQueryLog_block_invoke()
{
  _TVRCDeviceQueryLog_log = os_log_create("com.apple.TVRemoteCore", "DeviceQuery");

  return MEMORY[0x2821F96F8]();
}

@end