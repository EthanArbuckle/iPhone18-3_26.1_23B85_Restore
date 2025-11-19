@interface SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification
- (SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification)initWithIDSDevice:(id)a3;
@end

@implementation SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification

- (SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification)initWithIDSDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification;
  v6 = [(RTNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

@end