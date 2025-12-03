@interface HDSPDeviceUnlockMonitor
- (BOOL)_latestKeyBagValueForHasBeenUnlockedSinceBoot;
- (BOOL)hasBeenUnlockedSinceBoot;
- (HDSPDeviceUnlockMonitor)init;
- (HDSPDeviceUnlockMonitor)initWithCallbackScheduler:(id)scheduler;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
- (void)_withLock:(id)lock;
- (void)handleFirstUnlock;
- (void)setOverrideDeviceHasBeenUnlockedSinceBoot:(id)boot;
@end

@implementation HDSPDeviceUnlockMonitor

- (HDSPDeviceUnlockMonitor)init
{
  hkspMainThreadScheduler = [MEMORY[0x277D2C938] hkspMainThreadScheduler];
  v4 = [(HDSPDeviceUnlockMonitor *)self initWithCallbackScheduler:hkspMainThreadScheduler];

  return v4;
}

- (HDSPDeviceUnlockMonitor)initWithCallbackScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v11.receiver = self;
  v11.super_class = HDSPDeviceUnlockMonitor;
  v5 = [(HDSPDeviceUnlockMonitor *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_monitorLock._os_unfair_lock_opaque = 0;
    v7 = [objc_alloc(MEMORY[0x277D624A0]) initWithCallbackScheduler:schedulerCopy];
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = v6;
  }

  return v6;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_monitorLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_monitorLock);
}

- (void)setOverrideDeviceHasBeenUnlockedSinceBoot:(id)boot
{
  objc_storeStrong(&self->_overrideDeviceHasBeenUnlockedSinceBoot, boot);
  bootCopy = boot;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HDSPDeviceUnlockMonitor_setOverrideDeviceHasBeenUnlockedSinceBoot___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPDeviceUnlockMonitor *)self _withLock:v6];
}

- (BOOL)hasBeenUnlockedSinceBoot
{
  overrideDeviceHasBeenUnlockedSinceBoot = [(HDSPDeviceUnlockMonitor *)self overrideDeviceHasBeenUnlockedSinceBoot];

  if (overrideDeviceHasBeenUnlockedSinceBoot)
  {
    overrideDeviceHasBeenUnlockedSinceBoot2 = [(HDSPDeviceUnlockMonitor *)self overrideDeviceHasBeenUnlockedSinceBoot];
    bOOLValue = [overrideDeviceHasBeenUnlockedSinceBoot2 BOOLValue];

    return bOOLValue;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__HDSPDeviceUnlockMonitor_hasBeenUnlockedSinceBoot__block_invoke;
    v8[3] = &unk_279C7B130;
    v8[4] = self;
    v8[5] = &v9;
    [(HDSPDeviceUnlockMonitor *)self _withLock:v8];
    v7 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
    return v7;
  }
}

void __51__HDSPDeviceUnlockMonitor_hasBeenUnlockedSinceBoot__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[8];
  if ((v3 & 1) == 0)
  {
    *(*(a1 + 32) + 8) = [v2 _latestKeyBagValueForHasBeenUnlockedSinceBoot];
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = *(*(a1 + 32) + 8);
      v10 = 138543618;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      v8 = v6;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] found initial hasBeenUnlockedSinceBoot value of [%d]", &v10, 0x12u);
    }

    v3 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_latestKeyBagValueForHasBeenUnlockedSinceBoot
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = v2;
  if ((v2 & 0x80000000) != 0)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = MEMORY[0x277CCABB0];
      v9 = v7;
      v10 = [v8 numberWithInt:v3];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] received an error when calling MKBDeviceUnlockedSinceBoot().  Error code: [%@]", &v11, 0x16u);
    }

    result = 0;
  }

  else
  {
    result = v2 == 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleFirstUnlock
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] handleFirstUnlock", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HDSPDeviceUnlockMonitor_handleFirstUnlock__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPDeviceUnlockMonitor *)self _withLock:v6];
  [(HKSPObserverSet *)self->_observers enumerateObserversWithBlock:&__block_literal_global_6];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.mobile.keybagd.first_unlock"])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 138543618;
      *&v11[4] = objc_opt_class();
      *&v11[12] = 2114;
      *&v11[14] = nameCopy;
      v7 = *&v11[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", v11, 0x16u);
    }

    [(HDSPDeviceUnlockMonitor *)self handleFirstUnlock];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  v9 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

@end