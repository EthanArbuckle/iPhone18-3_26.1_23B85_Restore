@interface SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification
- (SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification)initWithIDSDevice:(id)device;
@end

@implementation SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification

- (SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification;
  v6 = [(RTNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

@end