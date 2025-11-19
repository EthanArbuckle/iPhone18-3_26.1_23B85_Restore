@interface TVRUIDeviceInfoLog
@end

@implementation TVRUIDeviceInfoLog

uint64_t ___TVRUIDeviceInfoLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "DeviceInfo");
  v1 = _TVRUIDeviceInfoLog_log;
  _TVRUIDeviceInfoLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end