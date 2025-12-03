@interface VOSBluetoothLowEnergyDevice
- (BOOL)connected;
- (BOOL)connecting;
- (BOOL)isEqual:(id)equal;
- (BOOL)paired;
- (VOSBluetoothLowEnergyDevice)initWithPeripheral:(id)peripheral manager:(id)manager;
- (id)address;
- (id)description;
- (id)identifier;
- (id)name;
- (int64_t)compare:(id)compare;
- (void)connect;
- (void)disconnect;
- (void)unpair;
@end

@implementation VOSBluetoothLowEnergyDevice

- (VOSBluetoothLowEnergyDevice)initWithPeripheral:(id)peripheral manager:(id)manager
{
  peripheralCopy = peripheral;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = VOSBluetoothLowEnergyDevice;
  v9 = [(VOSBluetoothLowEnergyDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_peripheral, peripheral);
    objc_storeStrong(&v10->_centralManager, manager);
  }

  return v10;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  name = [(VOSBluetoothLowEnergyDevice *)self name];
  name2 = [compareCopy name];

  v7 = [name localizedCaseInsensitiveCompare:name2];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(VOSBluetoothLowEnergyDevice *)self identifier];
    identifier2 = [v5 identifier];

    v8 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(VOSBluetoothLowEnergyDevice *)self name];
  identifier = [(VOSBluetoothLowEnergyDevice *)self identifier];
  peripheral = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  centralManager = [(VOSBluetoothLowEnergyDevice *)self centralManager];
  v10 = [v3 stringWithFormat:@"%@<%p>: name:'%@' identifier:'%@' CBPeripheral:'%@', CBCentralManager: '%@'", v5, self, name, identifier, peripheral, centralManager];

  return v10;
}

- (id)identifier
{
  peripheral = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  identifier = [peripheral identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)name
{
  peripheral = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  name = [peripheral name];

  return name;
}

- (BOOL)connected
{
  peripheral = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  isConnectedToSystem = [peripheral isConnectedToSystem];

  return isConnectedToSystem;
}

- (BOOL)connecting
{
  peripheral = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  v3 = [peripheral state] == 1;

  return v3;
}

- (BOOL)paired
{
  v3 = +[VOSBluetoothManager sharedInstance];
  LOBYTE(self) = [v3 btleDeviceIsPaired:self];

  return self;
}

- (void)connect
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = AXLogBrailleHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    peripheral = [(VOSBluetoothLowEnergyDevice *)self peripheral];
    v12 = 138412290;
    v13 = peripheral;
    _os_log_impl(&dword_223C70000, v3, OS_LOG_TYPE_DEFAULT, "Attempt connect: Current peripheral state: %@", &v12, 0xCu);
  }

  peripheral2 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  isConnectedToSystem = [peripheral2 isConnectedToSystem];

  if ((isConnectedToSystem & 1) == 0)
  {
    v7 = AXLogBrailleHW();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      peripheral3 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
      v12 = 138412290;
      v13 = peripheral3;
      _os_log_impl(&dword_223C70000, v7, OS_LOG_TYPE_DEFAULT, "Connecting: %@", &v12, 0xCu);
    }

    centralManager = [(VOSBluetoothLowEnergyDevice *)self centralManager];
    peripheral4 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
    [centralManager connectPeripheral:peripheral4 options:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)disconnect
{
  centralManager = [(VOSBluetoothLowEnergyDevice *)self centralManager];
  peripheral = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  [centralManager cancelPeripheralConnection:peripheral options:0];
}

- (void)unpair
{
  v3 = +[VOSBluetoothManager sharedInstance];
  [v3 unpairBTLEDevice:self];
}

- (id)address
{
  peripheral = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  identifier = [peripheral identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

@end