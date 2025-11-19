@interface SBBluetoothAccessoryLowPowerAlertItem
- (SBBluetoothAccessoryLowPowerAlertItem)initWithAccessory:(id)a3 batteryLevel:(int64_t)a4;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBBluetoothAccessoryLowPowerAlertItem

- (SBBluetoothAccessoryLowPowerAlertItem)initWithAccessory:(id)a3 batteryLevel:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBAlertItem *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_batteryLevel = a4;
    v9 = [v6 copy];
    accessoryName = v8->_accessoryName;
    v8->_accessoryName = v9;
  }

  return v8;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = SBApp;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_batteryLevel / 100.0];
  v8 = [v6 formattedPercentStringForNumber:v7];

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"ACCESSORY_LOW_POWER_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  v12 = [v9 stringWithFormat:v11, self->_accessoryName];

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:@"ACCESSORY_LOW_POWER_MESSAGE" value:&stru_283094718 table:@"SpringBoard"];
  v16 = [v13 stringWithFormat:v15, v8];

  [v5 setTitle:v12];
  [v5 setMessage:v16];
  if (!a3)
  {
    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [v18 localizedStringForKey:@"CLOSE" value:&stru_283094718 table:@"SpringBoard"];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__SBBluetoothAccessoryLowPowerAlertItem_configure_requirePasscodeForActions___block_invoke;
    v22[3] = &unk_2783A8A40;
    v22[4] = self;
    v20 = [v17 actionWithTitle:v19 style:1 handler:v22];
    [v5 addAction:v20];
  }
}

@end