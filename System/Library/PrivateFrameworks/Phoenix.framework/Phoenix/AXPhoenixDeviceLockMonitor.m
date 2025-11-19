@interface AXPhoenixDeviceLockMonitor
+ (id)sharedInstance;
- (AXPhoenixDeviceLockMonitor)init;
- (BOOL)_queryIsDeviceLocked;
- (void)_notifyObserver:(id)a3 isDeviceLocked:(BOOL)a4 timestamp:(double)a5;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)deviceLockStateChanged:(double)a3;
@end

@implementation AXPhoenixDeviceLockMonitor

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_2);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance__sharedInstance_0;

  return v2;
}

uint64_t __44__AXPhoenixDeviceLockMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXPhoenixDeviceLockMonitor);
  v1 = sharedInstance__sharedInstance_0;
  sharedInstance__sharedInstance_0 = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (AXPhoenixDeviceLockMonitor)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AXPhoenixDeviceLockMonitor;
  v6 = [(AXPhoenixEventMonitor *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(AXPhoenixDeviceLockMonitor *)v6 setDeviceLocked:0];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&v10, v12);
  queue = location[0];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __56__AXPhoenixDeviceLockMonitor__startMonitoringWithQueue___block_invoke;
  v8 = &unk_279A20668;
  objc_copyWeak(&v9, &v10);
  dispatch_async(queue, &v4);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v10);
  objc_storeStrong(location, 0);
}

void __56__AXPhoenixDeviceLockMonitor__startMonitoringWithQueue___block_invoke(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, location[0], HandleDeviceLockStateChanged, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v6, "[AXPhoenixDeviceLockMonitor _startMonitoringWithQueue:]_block_invoke");
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Started monitoring device lock/unlock state", v6, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v3 = location[0];
    v2 = mach_absolute_time();
    [v3 deviceLockStateChanged:MachAbsoluteTimeToTimeIntervalSinceBoot_1(v2)];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoring
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = self;
  oslog[1] = a2;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v4, @"com.apple.mobile.keybagd.lock_status", 0);
  oslog[0] = AXLogBackTap();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v5, "[AXPhoenixDeviceLockMonitor _stopMonitoring]");
    _os_log_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Stopped monitoring device lock/unlock state", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (void)deviceLockStateChanged:(double)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  [(AXPhoenixDeviceLockMonitor *)self setDeviceLocked:[(AXPhoenixDeviceLockMonitor *)self _queryIsDeviceLocked]];
  objc_initWeak(&location, v16);
  v12 = AXLogBackTap();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AXPhoenixDeviceLockMonitor *)v16 isDeviceLocked])
    {
      v3 = @"Locked";
    }

    else
    {
      v3 = @"Unlocked";
    }

    __os_log_helper_16_2_2_8_32_8_66(v17, "[AXPhoenixDeviceLockMonitor deviceLockStateChanged:]", v3);
    _os_log_impl(&dword_25E4AC000, v12, v11, "[PHOENIX] %s Device Lock Status Changed : %{public}@", v17, 0x16u);
  }

  objc_storeStrong(&v12, 0);
  v4 = v16;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __53__AXPhoenixDeviceLockMonitor_deviceLockStateChanged___block_invoke;
  v9 = &unk_279A20AF0;
  objc_copyWeak(v10, &location);
  v10[1] = *&v14;
  [(AXPhoenixEventMonitor *)v4 enumerateObserversInQueue:&v5];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
  *MEMORY[0x277D85DE8];
}

void __53__AXPhoenixDeviceLockMonitor_deviceLockStateChanged___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained((a1 + 32));
  if (v3[0])
  {
    [v3[0] _notifyObserver:location[0] isDeviceLocked:objc_msgSend(v3[0] timestamp:{"isDeviceLocked"), *(a1 + 40)}];
  }

  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_queryIsDeviceLocked
{
  v4 = MKBGetDeviceLockState();
  v3 = 1;
  if (v4 != 2)
  {
    return v4 == 1;
  }

  return v3;
}

- (void)_notifyObserver:(id)a3 isDeviceLocked:(BOOL)a4 timestamp:(double)a5
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AXPhoenixEventMonitor *)v8 notifyObserver:location[0]];
  if (objc_opt_respondsToSelector())
  {
    [location[0] phoenixDeviceLockMonitor:v8 didReceiveDeviceLockStateChanged:a4 timestamp:a5];
  }

  objc_storeStrong(location, 0);
}

@end