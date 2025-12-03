@interface ATXBluetoothConnectedTrigger
- (ATXBluetoothConnectedTrigger)initWithCoder:(id)coder;
- (ATXBluetoothConnectedTrigger)initWithDeviceIdentifier:(id)identifier deviceName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXBluetoothConnectedTrigger

- (ATXBluetoothConnectedTrigger)initWithDeviceIdentifier:(id)identifier deviceName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ATXBluetoothConnectedTrigger;
  v9 = [(ATXBluetoothConnectedTrigger *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceIdentifier, identifier);
    objc_storeStrong(&v10->_deviceName, name);
    v11 = v10;
  }

  return v10;
}

- (ATXBluetoothConnectedTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothDeviceIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothDeviceName"];

  v7 = [(ATXBluetoothConnectedTrigger *)self initWithDeviceIdentifier:v5 deviceName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  deviceIdentifier = self->_deviceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:deviceIdentifier forKey:@"bluetoothDeviceIdentifier"];
  [coderCopy encodeObject:self->_deviceName forKey:@"bluetoothDeviceName"];
}

@end