@interface TVRUIDeviceQueryLog
@end

@implementation TVRUIDeviceQueryLog

uint64_t ___TVRUIDeviceQueryLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "DeviceQuery");
  v1 = _TVRUIDeviceQueryLog_log;
  _TVRUIDeviceQueryLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end