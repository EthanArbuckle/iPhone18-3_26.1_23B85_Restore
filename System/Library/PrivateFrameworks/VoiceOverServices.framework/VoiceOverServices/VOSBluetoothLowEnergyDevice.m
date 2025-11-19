@interface VOSBluetoothLowEnergyDevice
- (BOOL)connected;
- (BOOL)connecting;
- (BOOL)isEqual:(id)a3;
- (BOOL)paired;
- (VOSBluetoothLowEnergyDevice)initWithPeripheral:(id)a3 manager:(id)a4;
- (id)address;
- (id)description;
- (id)identifier;
- (id)name;
- (int64_t)compare:(id)a3;
- (void)connect;
- (void)disconnect;
- (void)unpair;
@end

@implementation VOSBluetoothLowEnergyDevice

- (VOSBluetoothLowEnergyDevice)initWithPeripheral:(id)a3 manager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VOSBluetoothLowEnergyDevice;
  v9 = [(VOSBluetoothLowEnergyDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_peripheral, a3);
    objc_storeStrong(&v10->_centralManager, a4);
  }

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(VOSBluetoothLowEnergyDevice *)self name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(VOSBluetoothLowEnergyDevice *)self identifier];
    v7 = [v5 identifier];

    v8 = [v6 isEqualToString:v7];
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
  v6 = [(VOSBluetoothLowEnergyDevice *)self name];
  v7 = [(VOSBluetoothLowEnergyDevice *)self identifier];
  v8 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  v9 = [(VOSBluetoothLowEnergyDevice *)self centralManager];
  v10 = [v3 stringWithFormat:@"%@<%p>: name:'%@' identifier:'%@' CBPeripheral:'%@', CBCentralManager: '%@'", v5, self, v6, v7, v8, v9];

  return v10;
}

- (id)identifier
{
  v2 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)name
{
  v2 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  v3 = [v2 name];

  return v3;
}

- (BOOL)connected
{
  v2 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  v3 = [v2 isConnectedToSystem];

  return v3;
}

- (BOOL)connecting
{
  v2 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  v3 = [v2 state] == 1;

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
    v4 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_223C70000, v3, OS_LOG_TYPE_DEFAULT, "Attempt connect: Current peripheral state: %@", &v12, 0xCu);
  }

  v5 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  v6 = [v5 isConnectedToSystem];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogBrailleHW();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_223C70000, v7, OS_LOG_TYPE_DEFAULT, "Connecting: %@", &v12, 0xCu);
    }

    v9 = [(VOSBluetoothLowEnergyDevice *)self centralManager];
    v10 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
    [v9 connectPeripheral:v10 options:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)disconnect
{
  v4 = [(VOSBluetoothLowEnergyDevice *)self centralManager];
  v3 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  [v4 cancelPeripheralConnection:v3 options:0];
}

- (void)unpair
{
  v3 = +[VOSBluetoothManager sharedInstance];
  [v3 unpairBTLEDevice:self];
}

- (id)address
{
  v2 = [(VOSBluetoothLowEnergyDevice *)self peripheral];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

@end