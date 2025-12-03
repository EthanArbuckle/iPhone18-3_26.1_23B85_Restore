@interface RTBluetoothManagerNotificationConnected
- (RTBluetoothManagerNotificationConnected)initWithDeviceName:(id)name andDeviceAddress:(id)address;
@end

@implementation RTBluetoothManagerNotificationConnected

- (RTBluetoothManagerNotificationConnected)initWithDeviceName:(id)name andDeviceAddress:(id)address
{
  nameCopy = name;
  addressCopy = address;
  v12.receiver = self;
  v12.super_class = RTBluetoothManagerNotificationConnected;
  v9 = [(RTNotification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceName, name);
    objc_storeStrong(&v10->_deviceAddress, address);
  }

  return v10;
}

@end