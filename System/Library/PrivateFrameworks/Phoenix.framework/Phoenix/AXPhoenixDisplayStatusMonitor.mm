@interface AXPhoenixDisplayStatusMonitor
+ (id)sharedInstance;
- (AXPhoenixDisplayStatusMonitor)init;
- (BOOL)_queryIsDisplayOn;
- (void)_displayStateChanged:(double)a3;
- (void)_notifyObserver:(id)a3 isDisplayOn:(BOOL)a4 timestamp:(double)a5;
- (void)_registerForSpringboardNotificationsWithQueue:(id)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)_unregisterForSpringboardNotifications;
@end

@implementation AXPhoenixDisplayStatusMonitor

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken_2;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_5);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance__sharedInstance_1;

  return v2;
}

uint64_t __47__AXPhoenixDisplayStatusMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXPhoenixDisplayStatusMonitor);
  v1 = sharedInstance__sharedInstance_1;
  sharedInstance__sharedInstance_1 = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (AXPhoenixDisplayStatusMonitor)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AXPhoenixDisplayStatusMonitor;
  v6 = [(AXPhoenixEventMonitor *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(AXPhoenixDisplayStatusMonitor *)v6 setDisplayOn:0];
    [(AXPhoenixDisplayStatusMonitor *)v6 setNotifyToken:0xFFFFFFFFLL];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&v11, v13);
  queue = location[0];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59__AXPhoenixDisplayStatusMonitor__startMonitoringWithQueue___block_invoke;
  v8 = &unk_279A20990;
  objc_copyWeak(&v10, &v11);
  v9 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(location, 0);
}

void __59__AXPhoenixDisplayStatusMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    [location[0] setQueue:*(a1 + 32)];
    [location[0] _registerForSpringboardNotificationsWithQueue:*(a1 + 32)];
    [location[0] setDisplayOn:{objc_msgSend(location[0], "_queryIsDisplayOn")}];
    v1 = mach_absolute_time();
    v5 = MachAbsoluteTimeToTimeIntervalSinceBoot_2(v1);
    [location[0] _displayStateChanged:v5];
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if ([location[0] isDisplayOn])
      {
        v2 = @"ON";
      }

      else
      {
        v2 = @"OFF";
      }

      __os_log_helper_16_2_2_8_32_8_64(v7, "[AXPhoenixDisplayStatusMonitor _startMonitoringWithQueue:]_block_invoke", v2);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Started monitoring display on/off state. Currently: %@", v7, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoring
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = self;
  oslog[1] = a2;
  v2 = [(AXPhoenixDisplayStatusMonitor *)self queue];
  dispatch_assert_queue_V2(v2);
  MEMORY[0x277D82BD8](v2);
  [(AXPhoenixDisplayStatusMonitor *)v4 _unregisterForSpringboardNotifications];
  oslog[0] = AXLogBackTap();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v5, "[AXPhoenixDisplayStatusMonitor _stopMonitoring]");
    _os_log_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Stopped monitoring display on/off state.", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_registerForSpringboardNotificationsWithQueue:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&from, v15);
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __79__AXPhoenixDisplayStatusMonitor__registerForSpringboardNotificationsWithQueue___block_invoke;
  v10 = &unk_279A20C28;
  objc_copyWeak(&v11, &from);
  v12 = MEMORY[0x25F8B5270](&v6);
  out_token = 0;
  v4 = notify_register_dispatch(springboardDisplayNotificationName, &out_token, location[0], v12);
  [(AXPhoenixDisplayStatusMonitor *)v15 setNotifyToken:out_token];
  if (v4)
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v16, "[AXPhoenixDisplayStatusMonitor _registerForSpringboardNotificationsWithQueue:]");
      _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Fail to register for screen state change", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __79__AXPhoenixDisplayStatusMonitor__registerForSpringboardNotificationsWithQueue___block_invoke(id *a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v9 = a2;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    state64 = 0;
    state = notify_get_state(v9, &state64);
    if (state)
    {
      oslog = AXLogBackTap();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v3 = [MEMORY[0x277CCABB0] numberWithInt:state];
        __os_log_helper_16_2_2_8_32_8_64(v11, "[AXPhoenixDisplayStatusMonitor _registerForSpringboardNotificationsWithQueue:]_block_invoke", v3);
        _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s notify_get_state status %@ != NOTITY_STATUS_OK", v11, 0x16u);
        MEMORY[0x277D82BD8](v3);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      [location[0] setDisplayOn:state64 == 0];
      v2 = mach_absolute_time();
      v5 = MachAbsoluteTimeToTimeIntervalSinceBoot_2(v2);
      [location[0] _displayStateChanged:v5];
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_unregisterForSpringboardNotifications
{
  if (notify_is_valid_token([(AXPhoenixDisplayStatusMonitor *)self notifyToken]))
  {
    notify_cancel([(AXPhoenixDisplayStatusMonitor *)self notifyToken]);
  }

  [(AXPhoenixDisplayStatusMonitor *)self setNotifyToken:0xFFFFFFFFLL];
}

- (void)_displayStateChanged:(double)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  objc_initWeak(&location, self);
  v3 = v13;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__AXPhoenixDisplayStatusMonitor__displayStateChanged___block_invoke;
  v8 = &unk_279A20AF0;
  objc_copyWeak(v9, &location);
  v9[1] = *&v11;
  [(AXPhoenixEventMonitor *)v3 enumerateObserversInQueue:&v4];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __54__AXPhoenixDisplayStatusMonitor__displayStateChanged___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained((a1 + 32));
  if (v3[0])
  {
    [v3[0] _notifyObserver:location[0] isDisplayOn:objc_msgSend(v3[0] timestamp:{"isDisplayOn"), *(a1 + 40)}];
  }

  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_queryIsDisplayOn
{
  v10 = *MEMORY[0x277D85DE8];
  v7[2] = self;
  v7[1] = a2;
  v7[0] = 0;
  state = notify_get_state([(AXPhoenixDisplayStatusMonitor *)self notifyToken], v7);
  if (!state)
  {
    if (!v7[0])
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v7[0] == 1)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  oslog = AXLogBackTap();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:state];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7[0]];
    __os_log_helper_16_2_3_8_32_8_64_8_64(v9, "[AXPhoenixDisplayStatusMonitor _queryIsDisplayOn]", v4, v3);
    _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Display status ambiguous: notify_get_state status %@ != NOTIFY_STATUS_OK and state == %@", v9, 0x20u);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&oslog, 0);
  v8 = 1;
LABEL_9:
  *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (void)_notifyObserver:(id)a3 isDisplayOn:(BOOL)a4 timestamp:(double)a5
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AXPhoenixEventMonitor *)v7 notifyObserver:location[0]];
  if (objc_opt_respondsToSelector())
  {
    [location[0] phoenixDisplayStatusMonitor:v7 didReceiveDisplayStateChanged:-[AXPhoenixDisplayStatusMonitor isDisplayOn](v7 timestamp:{"isDisplayOn"), a5}];
  }

  objc_storeStrong(location, 0);
}

@end