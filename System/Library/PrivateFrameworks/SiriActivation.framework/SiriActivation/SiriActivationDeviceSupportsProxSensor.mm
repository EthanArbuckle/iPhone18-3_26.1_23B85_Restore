@interface SiriActivationDeviceSupportsProxSensor
@end

@implementation SiriActivationDeviceSupportsProxSensor

uint64_t ___SiriActivationDeviceSupportsProxSensor_block_invoke()
{
  result = MGGetBoolAnswer();
  _SiriActivationDeviceSupportsProxSensor_deviceSupportsProxSensor = result;
  return result;
}

@end