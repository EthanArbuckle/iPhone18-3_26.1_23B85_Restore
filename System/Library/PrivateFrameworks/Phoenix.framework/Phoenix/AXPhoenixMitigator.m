@interface AXPhoenixMitigator
- (AXPhoenixMitigator)initWithDelegate:(id)a3 configuration:(id)a4;
- (BOOL)isRunning;
- (id)_contextInfo:(BOOL)a3;
- (void)_shouldTriggerEventWithTapData:(id)a3 isDoubleTap:(BOOL)a4 completion:(id)a5;
- (void)_subscribeEventMonitor:(id)a3;
- (void)_subscribeEventMonitors;
- (void)_unsubscribeEventMonitors;
- (void)dealloc;
- (void)gestureMonitorDidReceiveSleepGesture:(id)a3 timestamp:(double)a4;
- (void)gestureMonitorDidReceiveWakeGesture:(id)a3 timestamp:(double)a4;
- (void)phoenixDeviceLockMonitor:(id)a3 didReceiveDeviceLockStateChanged:(BOOL)a4 timestamp:(double)a5;
- (void)phoenixDisplayStatusMonitor:(id)a3 didReceiveDisplayStateChanged:(BOOL)a4 timestamp:(double)a5;
- (void)phoenixEventMonitorDidReceiveEvent:(id)a3;
- (void)setDeviceLocked:(BOOL)a3;
- (void)setDisplayOn:(BOOL)a3;
- (void)setIsHandHeld:(BOOL)a3;
- (void)setTouchOn:(BOOL)a3;
- (void)setTouchOn:(BOOL)a3 timestamp:(double)a4;
- (void)shouldTriggerDoubleTapEventWithTapData:(id)a3 completion:(id)a4;
- (void)shouldTriggerTripleTapEventWithTapData:(id)a3 completion:(id)a4;
- (void)startWithCompletion:(id)a3;
- (void)stop;
@end

@implementation AXPhoenixMitigator

- (AXPhoenixMitigator)initWithDelegate:(id)a3 configuration:(id)a4
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v4 = v25;
  v25 = 0;
  v22.receiver = v4;
  v22.super_class = AXPhoenixMitigator;
  v14 = [(AXPhoenixMitigator *)&v22 init];
  v25 = v14;
  objc_storeStrong(&v25, v14);
  if (v14)
  {
    objc_storeStrong(&v25->_delegate, location[0]);
    v5 = dispatch_queue_create("Serial EventMonitor queue", 0);
    queue = v25->_queue;
    v25->_queue = v5;
    MEMORY[0x277D82BD8](queue);
    v7 = [MEMORY[0x277CBEB18] array];
    monitors = v25->_monitors;
    v25->_monitors = v7;
    MEMORY[0x277D82BD8](monitors);
    objc_storeStrong(&v25->_configuration, v23);
    v9 = [objc_alloc(MEMORY[0x277CE7D70]) initWithHIDTapIdentifier:@"BackTapEventTap" HIDEventTapPriority:36 shouldMonitorHIDEventsOnly:1 systemEventTapIdentifier:0 systemEventTapPriority:0];
    eventProcessor = v25->_eventProcessor;
    v25->_eventProcessor = v9;
    MEMORY[0x277D82BD8](eventProcessor);
    [(AXEventProcessor *)v25->_eventProcessor setHIDEventFilterMask:1];
    objc_initWeak(&v21, v25);
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __53__AXPhoenixMitigator_initWithDelegate_configuration___block_invoke;
    v19 = &unk_279A20618;
    objc_copyWeak(&v20, &v21);
    [(AXEventProcessor *)v25->_eventProcessor setHIDEventHandler:&v15];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v21);
  }

  v12 = MEMORY[0x277D82BE0](v25);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v25, 0);
  return v12;
}

uint64_t __53__AXPhoenixMitigator_initWithDelegate_configuration___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained(a1 + 4);
  if ([location[0] isTouchDown])
  {
    v2 = mach_absolute_time();
    [v10[0] setTouchOn:1 timestamp:MachAbsoluteTimeToTimeIntervalSinceBoot(v2)];
  }

  else
  {
    v5 = [location[0] handInfo];
    v8 = 0;
    v6 = 0;
    if ([v5 initialFingerCount] > 0)
    {
      v9 = [location[0] handInfo];
      v8 = 1;
      v6 = [v9 currentFingerCount] == 0;
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](v9);
    }

    MEMORY[0x277D82BD8](v5);
    if (v6)
    {
      v3 = mach_absolute_time();
      [v10[0] setTouchOn:0 timestamp:MachAbsoluteTimeToTimeIntervalSinceBoot(v3)];
    }
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)startWithCompletion:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&v11, v13);
  queue = v13->_queue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __42__AXPhoenixMitigator_startWithCompletion___block_invoke;
  v8 = &unk_279A20640;
  objc_copyWeak(&v10, &v11);
  v9 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(location, 0);
}

void __42__AXPhoenixMitigator_startWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[2] = a1;
  v7[1] = a1;
  v7[0] = objc_loadWeakRetained((a1 + 40));
  if (v7[0])
  {
    location = AXLogBackTap();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v10, "[AXPhoenixMitigator startWithCompletion:]_block_invoke");
      _os_log_impl(&dword_25E4AC000, location, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Subscribe to event monitors...", v10, 0xCu);
    }

    objc_storeStrong(&location, 0);
    [v7[0] _subscribeEventMonitors];
    [*(v7[0] + 6) beginHandlingHIDEventsForReason:@"BackTapEventTap"];
    *(v7[0] + 40) = 1;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v2 = *(a1 + 32);
    v1 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9 = @"Nil instance starting mitigator";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v3 = [v1 errorWithDomain:@"AXPhoenixErrorDomain" code:1001 userInfo:?];
    (*(v2 + 16))(v2, 0);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v7, 0);
  *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v10 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  queue = v10->_queue;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __26__AXPhoenixMitigator_stop__block_invoke;
  v7 = &unk_279A20668;
  objc_copyWeak(&v8, location);
  dispatch_async(queue, &v3);
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

void __26__AXPhoenixMitigator_stop__block_invoke(id *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v3, "[AXPhoenixMitigator stop]_block_invoke");
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Unsubscribe to event monitors...", v3, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] _unsubscribeEventMonitors];
    [*(location[0] + 6) endHandlingHIDEventsForReason:@"BackTapEventTap"];
    *(location[0] + 40) = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isRunning
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_queue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __31__AXPhoenixMitigator_isRunning__block_invoke;
  v9 = &unk_279A20690;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](self);
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (void)shouldTriggerDoubleTapEventWithTapData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  [(AXPhoenixMitigator *)v5 _shouldTriggerEventWithTapData:1 isDoubleTap:location[0] completion:v6.var0, v6.var1, v6.var2, v6.var3];
  objc_storeStrong(location, 0);
}

- (void)shouldTriggerTripleTapEventWithTapData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  [(AXPhoenixMitigator *)v5 _shouldTriggerEventWithTapData:0 isDoubleTap:location[0] completion:v6.var0, v6.var1, v6.var2, v6.var3];
  objc_storeStrong(location, 0);
}

- (void)_shouldTriggerEventWithTapData:(id)a3 isDoubleTap:(BOOL)a4 completion:(id)a5
{
  v16 = a3;
  v15 = self;
  v14 = a2;
  v13 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v11 = ![(AXPhoenixMitigatorConfiguration *)v15->_configuration disableWhenDisplayOff];
  v10 = ![(AXPhoenixMitigatorConfiguration *)v15->_configuration disableWhenDeviceLocked];
  v9 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([(AXPhoenixMitigatorConfiguration *)v15->_configuration disableWhenDisplayOff])
  {
    if ([(AXPhoenixMitigator *)v15 displayOn]&& v15->_lastDisplayOnTimestamp < v16.var1)
    {
      v11 = 1;
    }

    else
    {
      [v8 appendString:@"Display off"];
    }
  }

  if ([(AXPhoenixMitigatorConfiguration *)v15->_configuration disableWhenDeviceLocked])
  {
    if ([(AXPhoenixMitigator *)v15 deviceLocked]|| v15->_lastDeviceUnlockedTimestamp >= v16.var1)
    {
      [v8 appendString:@"Device locked"];
    }

    else
    {
      v10 = 1;
    }
  }

  var2 = v16.var2;
  if (v16.var2 < 0.4 || (var2 = v16.var3, v16.var3 < 0.4))
  {
    [v8 appendString:{@"Tapped too light", var2}];
  }

  if ([(AXPhoenixMitigator *)v15 touchOn])
  {
    v9 = 1;
    [v8 appendFormat:@"Touch on"];
  }

  v7 = [v8 length] == 0;
  if (location)
  {
    v6 = [(AXPhoenixMitigator *)v15 _contextInfo:v13];
    [v6 setObject:v8 forKey:@"reason"];
    (*(location + 2))(location, v7, v6, v8);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(AXPhoenixMitigator *)self _unsubscribeEventMonitors];
  [(AXEventProcessor *)v4->_eventProcessor cleanup];
  [(AXEventProcessor *)v4->_eventProcessor endHandlingHIDEventsForReason:@"BackTapEventTap"];
  v2.receiver = v4;
  v2.super_class = AXPhoenixMitigator;
  [(AXPhoenixMitigator *)&v2 dealloc];
}

- (void)setIsHandHeld:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  v9 = a2;
  v8 = a3;
  if (self->_isHandHeld != a3)
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v10->_isHandHeld];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:v10->_lastWakeGestureTimestamp];
      v3 = [MEMORY[0x277CCABB0] numberWithDouble:v10->_lastDismissalTimestamp];
      __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(v11, "[AXPhoenixMitigator setIsHandHeld:]", v6, v5, v4, v3);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s IsHandHeld: %@ -> %@ (lastWake %@, lastSleep %@)", v11, 0x34u);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&oslog, 0);
    v10->_isHandHeld = v8;
  }

  *MEMORY[0x277D85DE8];
}

- (void)setDisplayOn:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  v10 = a2;
  v9 = a3;
  oslog = AXLogBackTap();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v11->_displayOn];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:v11->_lastDisplayOnTimestamp];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:v11->_lastDisplayOffTimestamp];
    __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(v12, "[AXPhoenixMitigator setDisplayOn:]", v7, v6, v5, v4);
    _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s DisplayOn: %@ -> %@ (lastDisplayOn %@, lastDisplayOff %@)", v12, 0x34u);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&oslog, 0);
  v11->_displayOn = v9;
  delegate = v11->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(AXPhoenixMitigatorDelegate *)v11->_delegate phoenixMitigator:v11 displayOnDidChange:v9];
  }

  *MEMORY[0x277D85DE8];
}

- (void)setDeviceLocked:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  v9 = a2;
  v8 = a3;
  if (self->_deviceLocked != a3)
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v10->_deviceLocked];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:v10->_lastDeviceLockedTimestamp];
      v3 = [MEMORY[0x277CCABB0] numberWithDouble:v10->_lastDeviceUnlockedTimestamp];
      __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(v11, "[AXPhoenixMitigator setDeviceLocked:]", v6, v5, v4, v3);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s DeviceLocked: %@ -> %@ (lastDeviceLocked %@, lastDeviceUnlocked %@)", v11, 0x34u);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&oslog, 0);
    v10->_deviceLocked = v8;
  }

  *MEMORY[0x277D85DE8];
}

- (void)setTouchOn:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  v9 = a2;
  v8 = a3;
  if (self->_touchOn != a3)
  {
    [(AXPhoenixMitigatorDelegate *)v10->_delegate phoenixMitigator:v10 touchOnDidChange:v8];
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v10->_touchOn];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:v10->_lastTouchInteractionGainTimestamp];
      v3 = [MEMORY[0x277CCABB0] numberWithDouble:v10->_lastTouchInteractionLossTimestamp];
      __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(v11, "[AXPhoenixMitigator setTouchOn:]", v6, v5, v4, v3);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_INFO, "[PHOENIX] %s TouchOn: %@ -> %@ (gained %@, lost %@)", v11, 0x34u);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&oslog, 0);
    v10->_touchOn = v8;
  }

  *MEMORY[0x277D85DE8];
}

- (id)_contextInfo:(BOOL)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11 = self;
  v10 = a2;
  v9 = a3;
  v12[0] = @"screenLocked";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_deviceLocked];
  v13[0] = v6;
  v12[1] = @"handHeld";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v11->_isHandHeld];
  v13[1] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v7 = [v3 initWithDictionary:v8];
  objc_storeStrong(&v8, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_subscribeEventMonitors
{
  v4 = +[AXPhoenixWakeGestureMonitor sharedInstance];
  [(AXPhoenixMitigator *)self _subscribeEventMonitor:?];
  MEMORY[0x277D82BD8](v4);
  v5 = +[AXPhoenixDeviceLockMonitor sharedInstance];
  [(AXPhoenixMitigator *)self _subscribeEventMonitor:?];
  MEMORY[0x277D82BD8](v5);
  if ([(AXPhoenixMitigatorConfiguration *)self->_configuration disableWhenDisplayOff])
  {
    v2 = +[AXPhoenixDisplayStatusMonitor sharedInstance];
    [(AXPhoenixMitigator *)self _subscribeEventMonitor:?];
    MEMORY[0x277D82BD8](v2);
  }
}

- (void)_subscribeEventMonitor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    [location[0] addObserver:v4];
    [(NSMutableArray *)v4->_monitors addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)_unsubscribeEventMonitors
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  v10 = a2;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v11->_monitors);
  v7 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v4);
      [v9 removeObserver:v11];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  [(NSMutableArray *)v11->_monitors removeAllObjects];
  *MEMORY[0x277D85DE8];
}

- (void)phoenixEventMonitorDidReceiveEvent:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&v10, v12);
  queue = v12->_queue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __57__AXPhoenixMitigator_phoenixEventMonitorDidReceiveEvent___block_invoke;
  v8 = &unk_279A20668;
  objc_copyWeak(&v9, &v10);
  dispatch_async(queue, &v4);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v10);
  objc_storeStrong(location, 0);
}

void __57__AXPhoenixMitigator_phoenixEventMonitorDidReceiveEvent___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  objc_storeStrong(location, 0);
}

- (void)setTouchOn:(BOOL)a3 timestamp:(double)a4
{
  if (a3)
  {
    [(AXPhoenixMitigator *)self setLastTouchInteractionGainTimestamp:a4];
  }

  else
  {
    [(AXPhoenixMitigator *)self setLastTouchInteractionLossTimestamp:a4];
  }

  [(AXPhoenixMitigator *)self setTouchOn:a3];
}

- (void)phoenixDeviceLockMonitor:(id)a3 didReceiveDeviceLockStateChanged:(BOOL)a4 timestamp:(double)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16 = a5;
  objc_initWeak(&v15, v19);
  queue = v19->_queue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __90__AXPhoenixMitigator_phoenixDeviceLockMonitor_didReceiveDeviceLockStateChanged_timestamp___block_invoke;
  v12 = &unk_279A206B8;
  objc_copyWeak(v13, &v15);
  v14 = v17;
  v13[1] = *&v16;
  dispatch_async(queue, &v8);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v15);
  objc_storeStrong(location, 0);
}

void __90__AXPhoenixMitigator_phoenixDeviceLockMonitor_didReceiveDeviceLockStateChanged_timestamp___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  if (location[0])
  {
    if (*(a1 + 48))
    {
      [location[0] setLastDeviceLockedTimestamp:*(a1 + 40)];
    }

    else
    {
      [location[0] setLastDeviceUnlockedTimestamp:*(a1 + 40)];
    }

    [location[0] setDeviceLocked:*(a1 + 48) & 1];
  }

  objc_storeStrong(location, 0);
}

- (void)phoenixDisplayStatusMonitor:(id)a3 didReceiveDisplayStateChanged:(BOOL)a4 timestamp:(double)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16 = a5;
  objc_initWeak(&v15, v19);
  queue = v19->_queue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __90__AXPhoenixMitigator_phoenixDisplayStatusMonitor_didReceiveDisplayStateChanged_timestamp___block_invoke;
  v12 = &unk_279A206B8;
  objc_copyWeak(v13, &v15);
  v14 = v17;
  v13[1] = *&v16;
  dispatch_async(queue, &v8);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v15);
  objc_storeStrong(location, 0);
}

void __90__AXPhoenixMitigator_phoenixDisplayStatusMonitor_didReceiveDisplayStateChanged_timestamp___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  if (location[0])
  {
    if (*(a1 + 48))
    {
      [location[0] setLastDisplayOnTimestamp:*(a1 + 40)];
    }

    else
    {
      [location[0] setLastDisplayOffTimestamp:*(a1 + 40)];
    }

    [location[0] setDisplayOn:*(a1 + 48) & 1];
  }

  objc_storeStrong(location, 0);
}

- (void)gestureMonitorDidReceiveWakeGesture:(id)a3 timestamp:(double)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  objc_initWeak(&v13, v16);
  queue = v16->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __68__AXPhoenixMitigator_gestureMonitorDidReceiveWakeGesture_timestamp___block_invoke;
  v10 = &unk_279A206E0;
  objc_copyWeak(v12, &v13);
  v12[1] = *&v14;
  v11 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v12);
  objc_destroyWeak(&v13);
  objc_storeStrong(location, 0);
}

void __68__AXPhoenixMitigator_gestureMonitorDidReceiveWakeGesture_timestamp___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    [location[0] setLastWakeGestureTimestamp:*(a1 + 48)];
    [location[0] setIsHandHeld:{objc_msgSend(*(a1 + 32), "isDeviceHandheld")}];
  }

  objc_storeStrong(location, 0);
}

- (void)gestureMonitorDidReceiveSleepGesture:(id)a3 timestamp:(double)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  objc_initWeak(&v13, v16);
  queue = v16->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __69__AXPhoenixMitigator_gestureMonitorDidReceiveSleepGesture_timestamp___block_invoke;
  v10 = &unk_279A206E0;
  objc_copyWeak(v12, &v13);
  v12[1] = *&v14;
  v11 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v12);
  objc_destroyWeak(&v13);
  objc_storeStrong(location, 0);
}

void __69__AXPhoenixMitigator_gestureMonitorDidReceiveSleepGesture_timestamp___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    [location[0] setLastDismissalTimestamp:*(a1 + 48)];
    [location[0] setIsHandHeld:{objc_msgSend(*(a1 + 32), "isDeviceHandheld")}];
  }

  objc_storeStrong(location, 0);
}

@end