@interface RTBluetoothManagerNotificationDisconnected
- (RTBluetoothManagerNotificationDisconnected)initWithDeviceName:(id)a3 andDeviceAddress:(id)a4;
@end

@implementation RTBluetoothManagerNotificationDisconnected

- (RTBluetoothManagerNotificationDisconnected)initWithDeviceName:(id)a3 andDeviceAddress:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTBluetoothManagerNotificationDisconnected;
  v9 = [(RTNotification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceName, a3);
    objc_storeStrong(&v10->_deviceAddress, a4);
  }

  return v10;
}

@end