@interface SBBluetoothController
+ (SBBluetoothController)sharedInstance;
- (BOOL)canReportBatteryLevel;
- (id)deviceForAudioRoute:(id)route;
- (id)firstBTDeviceToReportBatteryLevel;
- (int)batteryLevel;
- (void)addDeviceNotification:(id)notification;
- (void)batteryChanged:(id)changed;
- (void)bluetoothDeviceEndedVoiceControl:(id)control;
- (void)bluetoothDeviceInitiatedVoiceControl:(id)control;
- (void)connectionChanged:(id)changed;
- (void)dealloc;
- (void)iapDeviceChanged:(id)changed;
- (void)noteDevicesChanged;
- (void)removeDeviceNotification:(id)notification;
- (void)startWatchingForDevices;
- (void)stopWatchingForDevices;
- (void)updateBattery;
- (void)updateTetheringConnected;
@end

@implementation SBBluetoothController

+ (SBBluetoothController)sharedInstance
{
  v2 = __sharedBluetoothController;
  if (!__sharedBluetoothController)
  {
    kdebug_trace();
    v3 = objc_alloc_init(SBBluetoothController);
    v4 = __sharedBluetoothController;
    __sharedBluetoothController = v3;

    kdebug_trace();
    v2 = __sharedBluetoothController;
  }

  return v2;
}

- (void)dealloc
{
  [(SBBluetoothController *)self stopWatchingForDevices];
  v3.receiver = self;
  v3.super_class = SBBluetoothController;
  [(SBBluetoothController *)&v3 dealloc];
}

- (id)firstBTDeviceToReportBatteryLevel
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_devices;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 supportsBatteryLevel] && (objc_msgSend(v6, "connected") & 1) != 0)
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)canReportBatteryLevel
{
  v3 = +[SBUIController sharedInstance];
  if ([v3 isHeadsetDocked])
  {
    v4 = 1;
  }

  else
  {
    firstBTDeviceToReportBatteryLevel = [(SBBluetoothController *)self firstBTDeviceToReportBatteryLevel];
    v4 = firstBTDeviceToReportBatteryLevel != 0;
  }

  return v4;
}

- (int)batteryLevel
{
  v3 = +[SBUIController sharedInstance];
  if ([v3 isHeadsetDocked])
  {
    headsetBatteryCapacity = [v3 headsetBatteryCapacity];
  }

  else
  {
    firstBTDeviceToReportBatteryLevel = [(SBBluetoothController *)self firstBTDeviceToReportBatteryLevel];
    v6 = firstBTDeviceToReportBatteryLevel;
    if (firstBTDeviceToReportBatteryLevel)
    {
      headsetBatteryCapacity = [firstBTDeviceToReportBatteryLevel batteryLevel];
    }

    else
    {
      headsetBatteryCapacity = 0;
    }
  }

  return headsetBatteryCapacity;
}

- (void)noteDevicesChanged
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:SBBluetoothBatteryAvailabilityChangedNotification object:0];
}

- (void)startWatchingForDevices
{
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  [(SBBluetoothController *)self stopWatchingForDevices];
  pairedDevices = [mEMORY[0x277CF3248] pairedDevices];
  v4 = [pairedDevices mutableCopy];
  devices = self->_devices;
  self->_devices = v4;

  if (!self->_devices)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_devices;
    self->_devices = v6;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_iapDeviceChanged_ name:@"SBUIHeadsetDockStatusChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel_connectionChanged_ name:*MEMORY[0x277CF3168] object:0];
  [defaultCenter addObserver:self selector:sel_addDeviceNotification_ name:*MEMORY[0x277CF3190] object:0];
  [defaultCenter addObserver:self selector:sel_removeDeviceNotification_ name:*MEMORY[0x277CF31A0] object:0];
  [defaultCenter addObserver:self selector:sel_connectionChanged_ name:*MEMORY[0x277CF3170] object:0];
  [defaultCenter addObserver:self selector:sel_batteryChanged_ name:*MEMORY[0x277CF3180] object:0];
  [defaultCenter addObserver:self selector:sel_bluetoothDeviceInitiatedVoiceControl_ name:*MEMORY[0x277CF31E8] object:0];
  [defaultCenter addObserver:self selector:sel_bluetoothDeviceEndedVoiceControl_ name:*MEMORY[0x277CF31E0] object:0];
  [(SBBluetoothController *)self noteDevicesChanged];
}

- (void)stopWatchingForDevices
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  devices = self->_devices;
  self->_devices = 0;
}

- (void)iapDeviceChanged:(id)changed
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBBluetoothController iapDeviceChanged:];
  }

  [(SBBluetoothController *)self noteDevicesChanged];
}

- (void)addDeviceNotification:(id)notification
{
  notificationCopy = notification;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBBluetoothController addDeviceNotification:];
  }

  object = [notificationCopy object];
  if (object && ([(NSMutableArray *)self->_devices containsObject:object]& 1) == 0)
  {
    [(NSMutableArray *)self->_devices addObject:object];
    [(SBBluetoothController *)self noteDevicesChanged];
  }
}

- (void)removeDeviceNotification:(id)notification
{
  notificationCopy = notification;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBBluetoothController removeDeviceNotification:];
  }

  object = [notificationCopy object];
  if (object)
  {
    [(NSMutableArray *)self->_devices removeObject:object];
    [(SBBluetoothController *)self noteDevicesChanged];
  }
}

- (void)updateTetheringConnected
{
  v13 = *MEMORY[0x277D85DE8];
  self->_tetheringConnected = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_devices;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (([*(*(&v8 + 1) + 8 * i) connectedServices] & 0x1000) != 0)
        {
          self->_tetheringConnected = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)connectionChanged:(id)changed
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBBluetoothController connectionChanged:];
  }

  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  pairedDevices = [mEMORY[0x277CF3248] pairedDevices];
  v6 = [pairedDevices mutableCopy];
  devices = self->_devices;
  self->_devices = v6;

  if (!self->_devices)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = self->_devices;
    self->_devices = v8;
  }

  [(SBBluetoothController *)self noteDevicesChanged];
  [(SBBluetoothController *)self updateTetheringConnected];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:SBBluetoothConnectionChangedNotification object:0 userInfo:0];
}

- (void)batteryChanged:(id)changed
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBBluetoothController batteryChanged:];
  }

  [(SBBluetoothController *)self updateBattery];

  [(SBBluetoothController *)self noteDevicesChanged];
}

- (void)updateBattery
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:SBBluetoothBatteryLevelChangedNotification object:0];
}

- (id)deviceForAudioRoute:(id)route
{
  routeCopy = route;
  devices = self->_devices;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__SBBluetoothController_deviceForAudioRoute___block_invoke;
  v10[3] = &unk_2783AC6B0;
  v6 = routeCopy;
  v11 = v6;
  v7 = [(NSMutableArray *)devices indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_devices objectAtIndex:v7];
  }

  return v8;
}

uint64_t __45__SBBluetoothController_deviceForAudioRoute___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 address];
  v4 = [v2 matchesUID:v3];

  return v4;
}

- (void)bluetoothDeviceInitiatedVoiceControl:(id)control
{
  v9 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = controlCopy;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Bluetooth device voice control initiated: %@", &v7, 0xCu);
  }

  v5 = +[SBVoiceControlController sharedInstance];
  object = [controlCopy object];
  [v5 bluetoothDeviceInitiatedVoiceControl:object];
}

- (void)bluetoothDeviceEndedVoiceControl:(id)control
{
  controlCopy = control;
  v5 = +[SBVoiceControlController sharedInstance];
  object = [controlCopy object];

  [v5 bluetoothDeviceEndedVoiceControl:object];
}

- (void)iapDeviceChanged:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBBluetoothController iapDeviceChanged:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)addDeviceNotification:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBBluetoothController addDeviceNotification:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)removeDeviceNotification:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBBluetoothController removeDeviceNotification:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)connectionChanged:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBBluetoothController connectionChanged:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)batteryChanged:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBBluetoothController batteryChanged:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end