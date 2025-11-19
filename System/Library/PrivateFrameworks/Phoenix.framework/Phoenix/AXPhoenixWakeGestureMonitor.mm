@interface AXPhoenixWakeGestureMonitor
+ (id)sharedInstance;
- (AXPhoenixWakeGestureMonitor)init;
- (BOOL)isDeviceHandheld;
- (void)_didReceiveSleepGesture;
- (void)_didReceiveWakeGesture;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)wakeGestureManager:(id)a3 didUpdateWakeGesture:(int64_t)a4;
@end

@implementation AXPhoenixWakeGestureMonitor

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __45__AXPhoenixWakeGestureMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXPhoenixWakeGestureMonitor);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (AXPhoenixWakeGestureMonitor)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AXPhoenixWakeGestureMonitor;
  v8 = [(AXPhoenixEventMonitor *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8 && ([getCMWakeGestureManagerClass() isWakeGestureAvailable] & 1) != 0)
  {
    v4 = v8;
    v5 = [getCMWakeGestureManagerClass() sharedManager];
    [(AXPhoenixWakeGestureMonitor *)v4 setGestureManager:?];
    MEMORY[0x277D82BD8](v5);
  }

  v3 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v3;
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AXPhoenixWakeGestureMonitor *)v7 gestureManager];
  [(CMWakeGestureManager *)v3 setDelegate:v7];
  MEMORY[0x277D82BD8](v3);
  v4 = [(AXPhoenixWakeGestureMonitor *)v7 gestureManager];
  [(CMWakeGestureManager *)v4 startWakeGestureUpdates];
  MEMORY[0x277D82BD8](v4);
  oslog = AXLogBackTap();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v8, "[AXPhoenixWakeGestureMonitor _startMonitoringWithQueue:]");
    _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Started monitoring wake gesture", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoring
{
  v5 = *MEMORY[0x277D85DE8];
  oslog[2] = &self->super.super;
  oslog[1] = a2;
  v2 = [(AXPhoenixWakeGestureMonitor *)self gestureManager];
  [(CMWakeGestureManager *)v2 stopWakeGestureUpdates];
  MEMORY[0x277D82BD8](v2);
  oslog[0] = AXLogBackTap();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v4, "[AXPhoenixWakeGestureMonitor _stopMonitoring]");
    _os_log_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Stopped monitoring wake gesture", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isDeviceHandheld
{
  v22 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = +[AXPhoenixWakeGestureMonitor sharedInstance];
  v2 = mach_absolute_time();
  v17 = MachAbsoluteTimeToTimeIntervalSinceBoot_0(v2);
  [location[0] wakeGestureTimestamp];
  v16 = v3;
  [location[0] dismissalTimestamp];
  v15 = v4;
  v14 = 0;
  if (v16 <= v4)
  {
    v8 = AXLogBackTap();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v19, "[AXPhoenixWakeGestureMonitor isDeviceHandheld]");
      _os_log_impl(&dword_25E4AC000, v8, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Tagging as FarField as user dismissed", v19, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  else
  {
    v5 = v17 - v16;
    v13 = v5;
    if (v5 >= 8.0)
    {
      v10 = AXLogBackTap();
      v9 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_0(v20, "[AXPhoenixWakeGestureMonitor isDeviceHandheld]", COERCE__INT64(v13));
        _os_log_impl(&dword_25E4AC000, v10, v9, "[PHOENIX] %s Tagging as farfield as last user interaction %f secs back", v20, 0x16u);
      }

      objc_storeStrong(&v10, 0);
    }

    else
    {
      v14 = 1;
      oslog = AXLogBackTap();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_0(v21, "[AXPhoenixWakeGestureMonitor isDeviceHandheld]", COERCE__INT64(v13));
        _os_log_impl(&dword_25E4AC000, oslog, type, "[PHOENIX] %s Tagging as handheld as user interacted in last %f secs", v21, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  v7 = v14;
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (void)wakeGestureManager:(id)a3 didUpdateWakeGesture:(int64_t)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4 == 1)
  {
    v7 = v10;
    v4 = mach_absolute_time();
    [(AXPhoenixWakeGestureMonitor *)v7 setWakeGestureTimestamp:MachAbsoluteTimeToTimeIntervalSinceBoot_0(v4)];
    [(AXPhoenixWakeGestureMonitor *)v10 _didReceiveWakeGesture];
  }

  else if (a4 == 3)
  {
    v6 = v10;
    v5 = mach_absolute_time();
    [(AXPhoenixWakeGestureMonitor *)v6 setDismissalTimestamp:MachAbsoluteTimeToTimeIntervalSinceBoot_0(v5)];
    [(AXPhoenixWakeGestureMonitor *)v10 _didReceiveSleepGesture];
  }

  objc_storeStrong(location, 0);
}

- (void)_didReceiveWakeGesture
{
  v13 = self;
  v12 = a2;
  [(AXPhoenixWakeGestureMonitor *)self wakeGestureTimestamp];
  v11 = v2;
  v3 = v13;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __53__AXPhoenixWakeGestureMonitor__didReceiveWakeGesture__block_invoke;
  v9 = &unk_279A20778;
  v10[0] = MEMORY[0x277D82BE0](v13);
  v10[1] = v11;
  v4.receiver = v3;
  v4.super_class = AXPhoenixWakeGestureMonitor;
  [(AXPhoenixEventMonitor *)&v4 enumerateObserversInQueue:?];
  objc_storeStrong(v10, 0);
}

void __53__AXPhoenixWakeGestureMonitor__didReceiveWakeGesture__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) notifyObserver:location[0]];
  if (objc_opt_respondsToSelector())
  {
    [location[0] gestureMonitorDidReceiveWakeGesture:*(a1 + 32) timestamp:*(a1 + 40)];
  }

  objc_storeStrong(location, 0);
}

- (void)_didReceiveSleepGesture
{
  v13 = self;
  v12 = a2;
  [(AXPhoenixWakeGestureMonitor *)self dismissalTimestamp];
  v11 = v2;
  v3 = v13;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __54__AXPhoenixWakeGestureMonitor__didReceiveSleepGesture__block_invoke;
  v9 = &unk_279A20778;
  v10[0] = MEMORY[0x277D82BE0](v13);
  v10[1] = v11;
  v4.receiver = v3;
  v4.super_class = AXPhoenixWakeGestureMonitor;
  [(AXPhoenixEventMonitor *)&v4 enumerateObserversInQueue:?];
  objc_storeStrong(v10, 0);
}

void __54__AXPhoenixWakeGestureMonitor__didReceiveSleepGesture__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) notifyObserver:location[0]];
  if (objc_opt_respondsToSelector())
  {
    [location[0] gestureMonitorDidReceiveSleepGesture:*(a1 + 32) timestamp:*(a1 + 40)];
  }

  objc_storeStrong(location, 0);
}

@end