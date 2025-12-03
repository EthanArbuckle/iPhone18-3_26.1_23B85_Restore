@interface _HKRPOxygenSaturationOnboardingManagerStaticDeviceDataSource
- (_HKRPOxygenSaturationOnboardingManagerStaticDeviceDataSource)initWithDevice:(id)device;
@end

@implementation _HKRPOxygenSaturationOnboardingManagerStaticDeviceDataSource

- (_HKRPOxygenSaturationOnboardingManagerStaticDeviceDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = _HKRPOxygenSaturationOnboardingManagerStaticDeviceDataSource;
  v6 = [(_HKRPOxygenSaturationOnboardingManagerDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

@end