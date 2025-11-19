@interface TTRIDeviceSupport
+ (BOOL)deviceSupportsPencil;
@end

@implementation TTRIDeviceSupport

+ (BOOL)deviceSupportsPencil
{
  if (deviceSupportsPencil_onceToken[0] != -1)
  {
    +[TTRIDeviceSupport deviceSupportsPencil];
  }

  return deviceSupportsPencil_supportsPencil;
}

uint64_t __41__TTRIDeviceSupport_deviceSupportsPencil__block_invoke()
{
  result = MGGetBoolAnswer();
  deviceSupportsPencil_supportsPencil = result;
  return result;
}

@end