@interface AXPhoenixMitigator
- (AXPhoenixMitigator)initWithDelegate:(id)delegate configuration:(id)configuration;
- (BOOL)isRunning;
- (id)_contextInfo:(BOOL)info;
- (void)_shouldTriggerEventWithTapData:(id)data isDoubleTap:(BOOL)tap completion:(id)completion;
- (void)_subscribeEventMonitor:(id)monitor;
- (void)_subscribeEventMonitors;
- (void)_unsubscribeEventMonitors;
- (void)dealloc;
- (void)gestureMonitorDidReceiveSleepGesture:(id)gesture timestamp:(double)timestamp;
- (void)gestureMonitorDidReceiveWakeGesture:(id)gesture timestamp:(double)timestamp;
- (void)phoenixDeviceLockMonitor:(id)monitor didReceiveDeviceLockStateChanged:(BOOL)changed timestamp:(double)timestamp;
- (void)phoenixDisplayStatusMonitor:(id)monitor didReceiveDisplayStateChanged:(BOOL)changed timestamp:(double)timestamp;
- (void)phoenixEventMonitorDidReceiveEvent:(id)event;
- (void)setDeviceLocked:(BOOL)locked;
- (void)setDisplayOn:(BOOL)on;
- (void)setIsHandHeld:(BOOL)held;
- (void)setTouchOn:(BOOL)on;
- (void)setTouchOn:(BOOL)on timestamp:(double)timestamp;
- (void)shouldTriggerDoubleTapEventWithTapData:(id)data completion:(id)completion;
- (void)shouldTriggerTripleTapEventWithTapData:(id)data completion:(id)completion;
- (void)startWithCompletion:(id)completion;
- (void)stop;
@end

@implementation AXPhoenixMitigator

- (AXPhoenixMitigator)initWithDelegate:(id)delegate configuration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v23 = 0;
  objc_storeStrong(&v23, configuration);
  v4 = selfCopy;
  selfCopy = 0;
  v22.receiver = v4;
  v22.super_class = AXPhoenixMitigator;
  v14 = [(AXPhoenixMitigator *)&v22 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    objc_storeStrong(&selfCopy->_delegate, location[0]);
    v5 = dispatch_queue_create("Serial EventMonitor queue", 0);
    queue = selfCopy->_queue;
    selfCopy->_queue = v5;
    MEMORY[0x277D82BD8](queue);
    array = [MEMORY[0x277CBEB18] array];
    monitors = selfCopy->_monitors;
    selfCopy->_monitors = array;
    MEMORY[0x277D82BD8](monitors);
    objc_storeStrong(&selfCopy->_configuration, v23);
    v9 = [objc_alloc(MEMORY[0x277CE7D70]) initWithHIDTapIdentifier:@"BackTapEventTap" HIDEventTapPriority:36 shouldMonitorHIDEventsOnly:1 systemEventTapIdentifier:0 systemEventTapPriority:0];
    eventProcessor = selfCopy->_eventProcessor;
    selfCopy->_eventProcessor = v9;
    MEMORY[0x277D82BD8](eventProcessor);
    [(AXEventProcessor *)selfCopy->_eventProcessor setHIDEventFilterMask:1];
    objc_initWeak(&v21, selfCopy);
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __53__AXPhoenixMitigator_initWithDelegate_configuration___block_invoke;
    v19 = &unk_279A20618;
    objc_copyWeak(&v20, &v21);
    [(AXEventProcessor *)selfCopy->_eventProcessor setHIDEventHandler:&v15];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v21);
  }

  v12 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (void)startWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  objc_initWeak(&v11, selfCopy);
  queue = selfCopy->_queue;
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
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  queue = selfCopy->_queue;
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
  selfCopy = self;
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

- (void)shouldTriggerDoubleTapEventWithTapData:(id)data completion:(id)completion
{
  dataCopy = data;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(AXPhoenixMitigator *)selfCopy _shouldTriggerEventWithTapData:1 isDoubleTap:location[0] completion:dataCopy.var0, dataCopy.var1, dataCopy.var2, dataCopy.var3];
  objc_storeStrong(location, 0);
}

- (void)shouldTriggerTripleTapEventWithTapData:(id)data completion:(id)completion
{
  dataCopy = data;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(AXPhoenixMitigator *)selfCopy _shouldTriggerEventWithTapData:0 isDoubleTap:location[0] completion:dataCopy.var0, dataCopy.var1, dataCopy.var2, dataCopy.var3];
  objc_storeStrong(location, 0);
}

- (void)_shouldTriggerEventWithTapData:(id)data isDoubleTap:(BOOL)tap completion:(id)completion
{
  dataCopy = data;
  selfCopy = self;
  v14 = a2;
  tapCopy = tap;
  location = 0;
  objc_storeStrong(&location, completion);
  v11 = ![(AXPhoenixMitigatorConfiguration *)selfCopy->_configuration disableWhenDisplayOff];
  v10 = ![(AXPhoenixMitigatorConfiguration *)selfCopy->_configuration disableWhenDeviceLocked];
  v9 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([(AXPhoenixMitigatorConfiguration *)selfCopy->_configuration disableWhenDisplayOff])
  {
    if ([(AXPhoenixMitigator *)selfCopy displayOn]&& selfCopy->_lastDisplayOnTimestamp < dataCopy.var1)
    {
      v11 = 1;
    }

    else
    {
      [v8 appendString:@"Display off"];
    }
  }

  if ([(AXPhoenixMitigatorConfiguration *)selfCopy->_configuration disableWhenDeviceLocked])
  {
    if ([(AXPhoenixMitigator *)selfCopy deviceLocked]|| selfCopy->_lastDeviceUnlockedTimestamp >= dataCopy.var1)
    {
      [v8 appendString:@"Device locked"];
    }

    else
    {
      v10 = 1;
    }
  }

  var2 = dataCopy.var2;
  if (dataCopy.var2 < 0.4 || (var2 = dataCopy.var3, dataCopy.var3 < 0.4))
  {
    [v8 appendString:{@"Tapped too light", var2}];
  }

  if ([(AXPhoenixMitigator *)selfCopy touchOn])
  {
    v9 = 1;
    [v8 appendFormat:@"Touch on"];
  }

  v7 = [v8 length] == 0;
  if (location)
  {
    v6 = [(AXPhoenixMitigator *)selfCopy _contextInfo:tapCopy];
    [v6 setObject:v8 forKey:@"reason"];
    (*(location + 2))(location, v7, v6, v8);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AXPhoenixMitigator *)self _unsubscribeEventMonitors];
  [(AXEventProcessor *)selfCopy->_eventProcessor cleanup];
  [(AXEventProcessor *)selfCopy->_eventProcessor endHandlingHIDEventsForReason:@"BackTapEventTap"];
  v2.receiver = selfCopy;
  v2.super_class = AXPhoenixMitigator;
  [(AXPhoenixMitigator *)&v2 dealloc];
}

- (void)setIsHandHeld:(BOOL)held
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v9 = a2;
  heldCopy = held;
  if (self->_isHandHeld != held)
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:selfCopy->_isHandHeld];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:heldCopy];
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_lastWakeGestureTimestamp];
      v3 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_lastDismissalTimestamp];
      __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(v11, "[AXPhoenixMitigator setIsHandHeld:]", v6, v5, v4, v3);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s IsHandHeld: %@ -> %@ (lastWake %@, lastSleep %@)", v11, 0x34u);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_isHandHeld = heldCopy;
  }

  *MEMORY[0x277D85DE8];
}

- (void)setDisplayOn:(BOOL)on
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v10 = a2;
  onCopy = on;
  oslog = AXLogBackTap();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:selfCopy->_displayOn];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:onCopy];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_lastDisplayOnTimestamp];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_lastDisplayOffTimestamp];
    __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(v12, "[AXPhoenixMitigator setDisplayOn:]", v7, v6, v5, v4);
    _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s DisplayOn: %@ -> %@ (lastDisplayOn %@, lastDisplayOff %@)", v12, 0x34u);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&oslog, 0);
  selfCopy->_displayOn = onCopy;
  delegate = selfCopy->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(AXPhoenixMitigatorDelegate *)selfCopy->_delegate phoenixMitigator:selfCopy displayOnDidChange:onCopy];
  }

  *MEMORY[0x277D85DE8];
}

- (void)setDeviceLocked:(BOOL)locked
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v9 = a2;
  lockedCopy = locked;
  if (self->_deviceLocked != locked)
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:selfCopy->_deviceLocked];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:lockedCopy];
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_lastDeviceLockedTimestamp];
      v3 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_lastDeviceUnlockedTimestamp];
      __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(v11, "[AXPhoenixMitigator setDeviceLocked:]", v6, v5, v4, v3);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s DeviceLocked: %@ -> %@ (lastDeviceLocked %@, lastDeviceUnlocked %@)", v11, 0x34u);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_deviceLocked = lockedCopy;
  }

  *MEMORY[0x277D85DE8];
}

- (void)setTouchOn:(BOOL)on
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v9 = a2;
  onCopy = on;
  if (self->_touchOn != on)
  {
    [(AXPhoenixMitigatorDelegate *)selfCopy->_delegate phoenixMitigator:selfCopy touchOnDidChange:onCopy];
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:selfCopy->_touchOn];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:onCopy];
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_lastTouchInteractionGainTimestamp];
      v3 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_lastTouchInteractionLossTimestamp];
      __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(v11, "[AXPhoenixMitigator setTouchOn:]", v6, v5, v4, v3);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_INFO, "[PHOENIX] %s TouchOn: %@ -> %@ (gained %@, lost %@)", v11, 0x34u);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_touchOn = onCopy;
  }

  *MEMORY[0x277D85DE8];
}

- (id)_contextInfo:(BOOL)info
{
  v13[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v10 = a2;
  infoCopy = info;
  v12[0] = @"screenLocked";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_deviceLocked];
  v13[0] = v6;
  v12[1] = @"handHeld";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:selfCopy->_isHandHeld];
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

- (void)_subscribeEventMonitor:(id)monitor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, monitor);
  if (location[0])
  {
    [location[0] addObserver:selfCopy];
    [(NSMutableArray *)selfCopy->_monitors addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)_unsubscribeEventMonitors
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v10 = a2;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_monitors);
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
      [v9 removeObserver:selfCopy];
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
  [(NSMutableArray *)selfCopy->_monitors removeAllObjects];
  *MEMORY[0x277D85DE8];
}

- (void)phoenixEventMonitorDidReceiveEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  objc_initWeak(&v10, selfCopy);
  queue = selfCopy->_queue;
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

- (void)setTouchOn:(BOOL)on timestamp:(double)timestamp
{
  if (on)
  {
    [(AXPhoenixMitigator *)self setLastTouchInteractionGainTimestamp:timestamp];
  }

  else
  {
    [(AXPhoenixMitigator *)self setLastTouchInteractionLossTimestamp:timestamp];
  }

  [(AXPhoenixMitigator *)self setTouchOn:on];
}

- (void)phoenixDeviceLockMonitor:(id)monitor didReceiveDeviceLockStateChanged:(BOOL)changed timestamp:(double)timestamp
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, monitor);
  changedCopy = changed;
  timestampCopy = timestamp;
  objc_initWeak(&v15, selfCopy);
  queue = selfCopy->_queue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __90__AXPhoenixMitigator_phoenixDeviceLockMonitor_didReceiveDeviceLockStateChanged_timestamp___block_invoke;
  v12 = &unk_279A206B8;
  objc_copyWeak(v13, &v15);
  v14 = changedCopy;
  v13[1] = *&timestampCopy;
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

- (void)phoenixDisplayStatusMonitor:(id)monitor didReceiveDisplayStateChanged:(BOOL)changed timestamp:(double)timestamp
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, monitor);
  changedCopy = changed;
  timestampCopy = timestamp;
  objc_initWeak(&v15, selfCopy);
  queue = selfCopy->_queue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __90__AXPhoenixMitigator_phoenixDisplayStatusMonitor_didReceiveDisplayStateChanged_timestamp___block_invoke;
  v12 = &unk_279A206B8;
  objc_copyWeak(v13, &v15);
  v14 = changedCopy;
  v13[1] = *&timestampCopy;
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

- (void)gestureMonitorDidReceiveWakeGesture:(id)gesture timestamp:(double)timestamp
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  timestampCopy = timestamp;
  objc_initWeak(&v13, selfCopy);
  queue = selfCopy->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __68__AXPhoenixMitigator_gestureMonitorDidReceiveWakeGesture_timestamp___block_invoke;
  v10 = &unk_279A206E0;
  objc_copyWeak(v12, &v13);
  v12[1] = *&timestampCopy;
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

- (void)gestureMonitorDidReceiveSleepGesture:(id)gesture timestamp:(double)timestamp
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  timestampCopy = timestamp;
  objc_initWeak(&v13, selfCopy);
  queue = selfCopy->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __69__AXPhoenixMitigator_gestureMonitorDidReceiveSleepGesture_timestamp___block_invoke;
  v10 = &unk_279A206E0;
  objc_copyWeak(v12, &v13);
  v12[1] = *&timestampCopy;
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