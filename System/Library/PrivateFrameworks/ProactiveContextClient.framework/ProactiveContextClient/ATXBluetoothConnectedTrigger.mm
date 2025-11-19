@interface ATXBluetoothConnectedTrigger
- (ATXBluetoothConnectedTrigger)initWithCoder:(id)a3;
- (ATXBluetoothConnectedTrigger)initWithDeviceIdentifier:(id)a3 deviceName:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXBluetoothConnectedTrigger

- (ATXBluetoothConnectedTrigger)initWithDeviceIdentifier:(id)a3 deviceName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ATXBluetoothConnectedTrigger;
  v9 = [(ATXBluetoothConnectedTrigger *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceIdentifier, a3);
    objc_storeStrong(&v10->_deviceName, a4);
    v11 = v10;
  }

  return v10;
}

- (ATXBluetoothConnectedTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothDeviceIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothDeviceName"];

  v7 = [(ATXBluetoothConnectedTrigger *)self initWithDeviceIdentifier:v5 deviceName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  deviceIdentifier = self->_deviceIdentifier;
  v5 = a3;
  [v5 encodeObject:deviceIdentifier forKey:@"bluetoothDeviceIdentifier"];
  [v5 encodeObject:self->_deviceName forKey:@"bluetoothDeviceName"];
}

@end