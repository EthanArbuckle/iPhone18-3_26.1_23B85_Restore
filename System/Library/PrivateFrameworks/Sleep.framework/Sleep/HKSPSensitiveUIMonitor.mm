@interface HKSPSensitiveUIMonitor
+ (id)sharedMonitor;
- (BOOL)_hideSensitiveUI;
- (BOOL)_isVendorRelease;
- (HKSPSensitiveUIMonitor)initWithCallbackScheduler:(id)scheduler;
- (void)_handleNotification;
- (void)_withLock:(id)lock;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)overrideHideSensitiveUI:(BOOL)i;
@end

@implementation HKSPSensitiveUIMonitor

+ (id)sharedMonitor
{
  if (qword_280B06968 != -1)
  {
    dispatch_once(&qword_280B06968, &__block_literal_global_10);
  }

  v3 = qword_280B06960;

  return v3;
}

void __39__HKSPSensitiveUIMonitor_sharedMonitor__block_invoke()
{
  v0 = [HKSPSensitiveUIMonitor alloc];
  v3 = [MEMORY[0x277D2C938] hkspMainThreadScheduler];
  v1 = [(HKSPSensitiveUIMonitor *)v0 initWithCallbackScheduler:v3];
  v2 = qword_280B06960;
  qword_280B06960 = v1;
}

- (BOOL)_isVendorRelease
{
  if (qword_280B06970 != -1)
  {
    dispatch_once(&qword_280B06970, &__block_literal_global_295_0);
  }

  return _MergedGlobals_14;
}

void __42__HKSPSensitiveUIMonitor__isVendorRelease__block_invoke()
{
  v0 = MGGetStringAnswer();
  _MergedGlobals_14 = [@"Vendor" isEqualToString:v0];
}

- (HKSPSensitiveUIMonitor)initWithCallbackScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v14.receiver = self;
  v14.super_class = HKSPSensitiveUIMonitor;
  v5 = [(HKSPSensitiveUIMonitor *)&v14 init];
  if (v5)
  {
    v6 = [[HKSPObserverSet alloc] initWithCallbackScheduler:schedulerCopy];
    observers = v5->_observers;
    v5->_observers = v6;

    hksp_internalUserDefaults = [MEMORY[0x277CBEBD0] hksp_internalUserDefaults];
    userDefaults = v5->_userDefaults;
    v5->_userDefaults = hksp_internalUserDefaults;

    v10 = objc_alloc_init(MEMORY[0x277D2BA60]);
    npsManager = v5->_npsManager;
    v5->_npsManager = v10;

    v5->_needPrefsUpdate = 1;
    v5->_lock._os_unfair_lock_opaque = 0;
    [(HKSPSensitiveUIMonitor *)v5 registerForNotifications];
    v12 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(HKSPSensitiveUIMonitor *)self unregisterForNotifications];
  v3.receiver = self;
  v3.super_class = HKSPSensitiveUIMonitor;
  [(HKSPSensitiveUIMonitor *)&v3 dealloc];
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleNotification
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v4 = v8;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] sensitiveUIStateChanged", buf, 0x16u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__HKSPSensitiveUIMonitor__handleNotification__block_invoke;
  v6[3] = &unk_279C74258;
  v6[4] = self;
  [(HKSPSensitiveUIMonitor *)self _withLock:v6];
  [(HKSPObserverSet *)self->_observers enumerateObserversWithBlock:&__block_literal_global_309];
  v5 = *MEMORY[0x277D85DE8];
}

void __45__HKSPSensitiveUIMonitor__handleNotification__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 sensitiveUIStateChanged];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"hideAzulSensitiveUI"])
  {
    v13 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2048;
      selfCopy = self;
      v14 = v18;
      _os_log_impl(&dword_269A84000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] NSUserDefaults key path changed", buf, 0x16u);
    }

    [(HKSPSensitiveUIMonitor *)self _handleNotification];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HKSPSensitiveUIMonitor;
    [(HKSPSensitiveUIMonitor *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hideSensitiveUI
{
  if ([(HKSPSensitiveUIMonitor *)self _isVendorRelease])
  {
    v3 = 1;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__HKSPSensitiveUIMonitor__hideSensitiveUI__block_invoke;
    v5[3] = &unk_279C74BB0;
    v5[4] = self;
    v5[5] = &v6;
    [(HKSPSensitiveUIMonitor *)self _withLock:v5];
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return v3 & 1;
}

void __42__HKSPSensitiveUIMonitor__hideSensitiveUI__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 10) == 1 && (*(v2 + 8) & 1) == 0)
  {
    v3 = [*(v2 + 24) objectForKey:@"hideAzulSensitiveUI"];
    v4 = v3;
    v5 = MEMORY[0x277CBEC38];
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;

    v7 = [v6 BOOLValue];
    *(*(a1 + 32) + 9) = v7;
    *(*(a1 + 32) + 10) = 0;
    v2 = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = *(v2 + 9);
}

- (void)overrideHideSensitiveUI:(BOOL)i
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HKSPSensitiveUIMonitor_overrideHideSensitiveUI___block_invoke;
  v4[3] = &unk_279C74040;
  v4[4] = self;
  iCopy = i;
  [(HKSPSensitiveUIMonitor *)self _withLock:v4];
  [(HKSPSensitiveUIMonitor *)self _handleNotification];
}

uint64_t __50__HKSPSensitiveUIMonitor_overrideHideSensitiveUI___block_invoke(uint64_t result)
{
  *(*(result + 32) + 8) = 1;
  *(*(result + 32) + 9) = *(result + 40);
  return result;
}

@end