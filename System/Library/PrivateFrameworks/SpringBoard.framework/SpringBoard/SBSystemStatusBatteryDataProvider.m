@interface SBSystemStatusBatteryDataProvider
- (BOOL)_isInNotChargingState;
- (SBSystemStatusBatteryDataProvider)init;
- (void)_noteNotChargingStatusChanged;
- (void)_registerForNotifications;
- (void)_updateData;
- (void)_updateShouldExposeNotChargingState;
- (void)connectedDevicesDidChange:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSystemStatusBatteryDataProvider

- (SBSystemStatusBatteryDataProvider)init
{
  v10.receiver = self;
  v10.super_class = SBSystemStatusBatteryDataProvider;
  v2 = [(SBSystemStatusBatteryDataProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D6B930]);
    v4 = [SBApp systemStatusServer];
    v5 = [v3 initWithServerHandle:v4];
    batteryDataPublisher = v2->_batteryDataPublisher;
    v2->_batteryDataPublisher = v5;

    v7 = objc_alloc_init(MEMORY[0x277CF0DB0]);
    batteryDeviceController = v2->_batteryDeviceController;
    v2->_batteryDeviceController = v7;

    [(BCBatteryDeviceController *)v2->_batteryDeviceController addBatteryDeviceObserver:v2 queue:MEMORY[0x277D85CD0]];
    [(SBSystemStatusBatteryDataProvider *)v2 _registerForNotifications];
  }

  return v2;
}

- (void)dealloc
{
  [(SBSystemStatusBatteryDataProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBSystemStatusBatteryDataProvider;
  [(SBSystemStatusBatteryDataProvider *)&v3 dealloc];
}

- (void)invalidate
{
  [(STBatteryStatusDomainPublisher *)self->_batteryDataPublisher invalidate];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  batteryDeviceController = self->_batteryDeviceController;

  [(BCBatteryDeviceController *)batteryDeviceController removeBatteryDeviceObserver:self];
}

- (void)connectedDevicesDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * v8) isInternal])
        {
          [(SBSystemStatusBatteryDataProvider *)self _updateData];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_registerForNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__updateData name:@"SBBootCompleteNotification" object:0];
  [v3 addObserver:self selector:sel__updateData name:@"SBCurrentLocaleDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__updateData name:@"SBBatterySaverModeDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__noteNotChargingStatusChanged name:@"SBUIBatteryNotChargingStatusChangedNotification" object:0];
}

- (void)_updateData
{
  v3 = [(BCBatteryDeviceController *)self->_batteryDeviceController sb_deviceInternalBattery];
  if (v3)
  {
    v18 = v3;
    v4 = objc_alloc_init(MEMORY[0x277D6BA00]);
    v5 = [(SBSystemStatusBatteryDataProvider *)self shouldExposeNotChargingState];
    v6 = [SBApp isBatterySaverModeActive];
    v7 = [v18 percentCharge];
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if ([v18 isCharging])
    {
      if ([v18 isPaused])
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      if (!v5)
      {
LABEL_10:
        v10 = [MEMORY[0x277CF0DA8] localizedBatteryDetailTextForBatteryLevel:v8];
        v11 = 1;
LABEL_18:
        [v4 setChargingState:v9];
        [v4 setPercentCharge:v8];
        [v4 setBatterySaverModeActive:v6];
        [v4 setChargingDescription:v10];
        [v4 setChargingDescriptionType:v11];
        v14 = [(SBSystemStatusBatteryDataProvider *)self batteryDataPublisher];
        [v14 setData:v4];

        v15 = [v4 copy];
        lastPublishedData = self->_lastPublishedData;
        self->_lastPublishedData = v15;

        v17 = [MEMORY[0x277CCAB98] defaultCenter];
        [v17 postNotificationName:@"SBSystemStatusBatteryDataProviderDidChangeNotification" object:v4];

        v3 = v18;
        goto LABEL_19;
      }
    }

    else
    {
      v12 = [v18 powerSourceState];
      v13 = 2;
      if (v5)
      {
        v13 = 0;
      }

      if (v12 == 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }

      if (!v5)
      {
        goto LABEL_10;
      }
    }

    v11 = 2;
    v10 = UIStatusBarLocalizedNotChargingString();
    goto LABEL_18;
  }

LABEL_19:
}

- (void)_noteNotChargingStatusChanged
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([(SBSystemStatusBatteryDataProvider *)self _isInNotChargingState])
  {
    v3 = 0.6;
  }

  else
  {
    v3 = 0.0;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateShouldExposeNotChargingState object:0];
  v5[0] = *MEMORY[0x277CBE738];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [(SBSystemStatusBatteryDataProvider *)self performSelector:sel__updateShouldExposeNotChargingState withObject:0 afterDelay:v4 inModes:v3];
}

- (void)_updateShouldExposeNotChargingState
{
  v3 = [(SBSystemStatusBatteryDataProvider *)self _isInNotChargingState];
  if (v3 != [(SBSystemStatusBatteryDataProvider *)self shouldExposeNotChargingState])
  {
    [(SBSystemStatusBatteryDataProvider *)self setShouldExposeNotChargingState:v3];

    [(SBSystemStatusBatteryDataProvider *)self _updateData];
  }
}

- (BOOL)_isInNotChargingState
{
  v3 = __sb__runningInSpringBoard();
  v4 = v3;
  if (!v3)
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {
      LOBYTE(v5) = 0;
      goto LABEL_10;
    }

LABEL_5:
    v6 = +[SBUIController sharedInstance];
    if ([v6 isConnectedToChargeIncapablePowerSource])
    {
      v7 = +[SBUIController sharedInstance];
      v5 = [v7 isFullyCharged] ^ 1;

      if (v4)
      {
        return v5;
      }
    }

    else
    {

      LOBYTE(v5) = 0;
      if (v4)
      {
        return v5;
      }
    }

LABEL_10:

    return v5;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
    goto LABEL_5;
  }

  LOBYTE(v5) = 0;
  return v5;
}

@end