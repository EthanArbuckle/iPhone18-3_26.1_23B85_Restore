@interface HDSPDevicePowerMonitor
- (BOOL)isCharging;
- (HDSPDevicePowerMonitor)init;
- (HDSPDevicePowerMonitor)initWithCallbackScheduler:(id)scheduler;
- (float)batteryLevel;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
@end

@implementation HDSPDevicePowerMonitor

- (HDSPDevicePowerMonitor)init
{
  hkspMainThreadScheduler = [MEMORY[0x277D2C938] hkspMainThreadScheduler];
  v4 = [(HDSPDevicePowerMonitor *)self initWithCallbackScheduler:hkspMainThreadScheduler];

  return v4;
}

- (HDSPDevicePowerMonitor)initWithCallbackScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v10.receiver = self;
  v10.super_class = HDSPDevicePowerMonitor;
  v5 = [(HDSPDevicePowerMonitor *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D624A0]) initWithCallbackScheduler:schedulerCopy];
    observers = v5->_observers;
    v5->_observers = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isCharging
{
  v13 = *MEMORY[0x277D85DE8];
  isChargingOverride = self->_isChargingOverride;
  if (isChargingOverride)
  {
    v3 = *MEMORY[0x277D85DE8];

    return [(NSNumber *)isChargingOverride BOOLValue];
  }

  else
  {
    v5 = HKSPIsCharging();
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 1024;
      v12 = v5;
      v7 = v10;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] charging: %d", &v9, 0x12u);
    }

    v8 = *MEMORY[0x277D85DE8];
    return v5;
  }
}

- (float)batteryLevel
{
  v14 = *MEMORY[0x277D85DE8];
  batteryLevelOverride = self->_batteryLevelOverride;
  if (batteryLevelOverride)
  {
    v3 = *MEMORY[0x277D85DE8];

    [(NSNumber *)batteryLevelOverride floatValue];
  }

  else
  {
    HKSPBatteryLevel();
    v6 = v5;
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2048;
      v13 = v6;
      v8 = v11;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] battery level: %f", &v10, 0x16u);
    }

    v9 = *MEMORY[0x277D85DE8];
    return v6;
  }

  return result;
}

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.system.powersources.source"])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = nameCopy;
      v7 = v14;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", buf, 0x16u);
    }

    observers = self->_observers;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__HDSPDevicePowerMonitor_notificationListener_didReceiveNotificationWithName___block_invoke;
    v12[3] = &unk_279C7CE10;
    v12[4] = self;
    [(HKSPObserverSet *)observers enumerateObserversWithBlock:v12];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  v10 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

void __78__HDSPDevicePowerMonitor_notificationListener_didReceiveNotificationWithName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 deviceChangedChargingState:{objc_msgSend(v2, "isCharging")}];
}

@end