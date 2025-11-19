@interface TVRUIDevicePickerLog
@end

@implementation TVRUIDevicePickerLog

uint64_t ___TVRUIDevicePickerLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "DevicePicker");
  v1 = _TVRUIDevicePickerLog_log;
  _TVRUIDevicePickerLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end