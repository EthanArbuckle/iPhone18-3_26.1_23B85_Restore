@interface SBBluetoothAccessoryBatteryMonitor
- (NSString)description;
- (SBBluetoothAccessoryBatteryMonitor)init;
- (id)descriptionBuilder;
- (void)_popLowPowerAlertForAccessoryIfNecessary:(id)a3;
- (void)connectedDevicesDidChange:(id)a3;
@end

@implementation SBBluetoothAccessoryBatteryMonitor

- (SBBluetoothAccessoryBatteryMonitor)init
{
  v8.receiver = self;
  v8.super_class = SBBluetoothAccessoryBatteryMonitor;
  v2 = [(SBBluetoothAccessoryBatteryMonitor *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accessoryNamesInLowPower = v2->_accessoryNamesInLowPower;
    v2->_accessoryNamesInLowPower = v3;

    v5 = objc_alloc_init(MEMORY[0x277CF0DB0]);
    batteryDeviceController = v2->_batteryDeviceController;
    v2->_batteryDeviceController = v5;

    [(BCBatteryDeviceController *)v2->_batteryDeviceController addBatteryDeviceObserver:v2 queue:MEMORY[0x277D85CD0]];
  }

  return v2;
}

- (void)connectedDevicesDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = *MEMORY[0x277CF0DC8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 productIdentifier] == v8 && objc_msgSend(v10, "vendor") == 1)
        {
          [(SBBluetoothAccessoryBatteryMonitor *)self _popLowPowerAlertForAccessoryIfNecessary:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_popLowPowerAlertForAccessoryIfNecessary:(id)a3
{
  v8 = a3;
  v4 = [v8 name];
  v5 = [(NSMutableSet *)self->_accessoryNamesInLowPower containsObject:v4];
  if ([v8 isLowBattery] && objc_msgSend(v8, "isConnected"))
  {
    if ((v5 & 1) == 0)
    {
      [(NSMutableSet *)self->_accessoryNamesInLowPower addObject:v4];
      v6 = -[SBBluetoothAccessoryLowPowerAlertItem initWithAccessory:batteryLevel:]([SBBluetoothAccessoryLowPowerAlertItem alloc], "initWithAccessory:batteryLevel:", v4, [v8 percentCharge]);
      v7 = +[SBAlertItemsController sharedInstance];
      [v7 activateAlertItem:v6];
    }
  }

  else if (([v8 isLowBattery] & 1) == 0 && ((v5 ^ 1) & 1) == 0)
  {
    [(NSMutableSet *)self->_accessoryNamesInLowPower removeObject:v4];
  }
}

- (NSString)description
{
  v2 = [(SBBluetoothAccessoryBatteryMonitor *)self descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_accessoryNamesInLowPower withName:@"Accessory Names in Low Power"];

  return v3;
}

@end