@interface LTOSLogDeviceState
@end

@implementation LTOSLogDeviceState

uint64_t ___LTOSLogDeviceState_block_invoke()
{
  _LTOSLogDeviceState_log = os_log_create("com.apple.Translation", "DeviceState");

  return MEMORY[0x2821F96F8]();
}

@end