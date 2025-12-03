@interface BackgroundTaskAgentMonitor
- (BOOL)initNetworkLinkQualityMonitoring;
- (BOOL)initPowerSourceMonitoring;
- (BackgroundTaskAgentMonitor)initWithTarget:(id)target selector:(SEL)selector queue:(id)queue;
- (SEL)selector;
- (double)getKernelMonotonicClock;
- (void)cancelNetworkStabilizationTimer;
- (void)dealloc;
- (void)debugPrintMonitorStatus;
- (void)networkStabilizationTimerHandler;
- (void)notifyWhenBatteryLevel:(double)level;
- (void)processRegistrationNotification;
- (void)rescheduleNetworkStabilizationTimer;
- (void)setIsInVoiceCall:(BOOL)call;
- (void)setIsScreenBlanked:(BOOL)blanked;
- (void)updateBatteryLevel:(unsigned int)level;
- (void)updateCallState;
- (void)updateNetworkLinkQuality;
- (void)updatePluggedinState:(unsigned int)state;
- (void)updateRoamingState;
@end

@implementation BackgroundTaskAgentMonitor

- (void)rescheduleNetworkStabilizationTimer
{
  [(BackgroundTaskAgentMonitor *)self setPendingNetworkUpdate:1];
  if ([(BackgroundTaskAgentMonitor *)self systemWillSleep])
  {

    [(BackgroundTaskAgentMonitor *)self setShouldRescheduleTimer:1];
  }

  else
  {
    [(BackgroundTaskAgentMonitor *)self cancelNetworkStabilizationTimer];
    [(BackgroundTaskAgentMonitor *)self setNetworkStabilizationTimer:[NSTimer timerWithTimeInterval:self target:"networkStabilizationTimerHandler" selector:0 userInfo:0 repeats:5.0]];
    [+[NSRunLoop mainRunLoop](NSRunLoop addTimer:"addTimer:forMode:" forMode:[(BackgroundTaskAgentMonitor *)self networkStabilizationTimer], NSDefaultRunLoopMode];
    networkStabilizationTimer = [(BackgroundTaskAgentMonitor *)self networkStabilizationTimer];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_6BAC();
    }
  }
}

- (void)cancelNetworkStabilizationTimer
{
  [(NSTimer *)self->_networkStabilizationTimer invalidate];

  self->_networkStabilizationTimer = 0;
}

- (BackgroundTaskAgentMonitor)initWithTarget:(id)target selector:(SEL)selector queue:(id)queue
{
  v19.receiver = self;
  v19.super_class = BackgroundTaskAgentMonitor;
  v8 = [(BackgroundTaskAgentMonitor *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_target = target;
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v8->_selector = selectorCopy;
    v8->_queue = queue;
    v8->_primaryLinkQuality = 0;
    v8->_primaryLinkIsCellular = 0;
    v8->_networkStabilizationTimer = 0;
    v8->_pendingNetworkUpdate = 0;
    if (![(BackgroundTaskAgentMonitor *)v8 initNetworkLinkQualityMonitoring])
    {
      goto LABEL_8;
    }

    v9->_isScreenBlanked = 0;
    v9->_numScreenBlankedJobs = 0;
    v9->_lastScreenBlankedTime = -1.0;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    v16 = sub_40A8;
    v17 = &unk_C558;
    v18 = v9;
    notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &v9->_screenBlankedToken, v9->_queue, handler);
    v16(handler, v9->_screenBlankedToken);
    if ([(BackgroundTaskAgentMonitor *)v9 initPowerSourceMonitoring])
    {
      v9->_numAdjustTimeJobs = 0;
      Current = CFAbsoluteTimeGetCurrent();
      [(BackgroundTaskAgentMonitor *)v9 getKernelMonotonicClock];
      v9->_systemToMonotonicTimeOffset = Current - v12;
      v9->_numVoiceCallJobs = 0;
      [(BackgroundTaskAgentMonitor *)v9 updateCallState];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_40F8;
      v14[3] = &unk_C4B0;
      v14[4] = v9;
      dispatch_async(&_dispatch_main_q, v14);
      v9->_roamStateChanged = 0;
      [(BackgroundTaskAgentMonitor *)v9 updateRoamingState];
      v9->systemPowerPortRef = 0;
      v9->rootDomainConnect = IORegisterForSystemPower(v9, &v9->systemPowerPortRef, sub_FA0, &v9->pmNotifier);
      IONotificationPortSetDispatchQueue(v9->systemPowerPortRef, queue);
      *&v9->_systemWillSleep = 256;
    }

    else
    {
LABEL_8:

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  IODeregisterForSystemPower(&self->pmNotifier);
  systemPowerPortRef = self->systemPowerPortRef;
  if (systemPowerPortRef)
  {
    IONotificationPortDestroy(systemPowerPortRef);
    self->systemPowerPortRef = 0;
  }

  IOServiceClose(self->rootDomainConnect);
  self->rootDomainConnect = 0;
  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    CFRelease(dynamicStore);
  }

  self->_dynamicStore = 0;
  batteryIONotifyPort = self->_batteryIONotifyPort;
  if (batteryIONotifyPort)
  {
    IONotificationPortDestroy(batteryIONotifyPort);
    self->_batteryIONotifyPort = 0;
  }

  batteryNotificationRef = self->_batteryNotificationRef;
  if (batteryNotificationRef)
  {
    IOObjectRelease(batteryNotificationRef);
    self->_batteryNotificationRef = 0;
  }

  batteryEntry = self->_batteryEntry;
  if (batteryEntry)
  {
    IOObjectRelease(batteryEntry);
    self->_batteryEntry = 0;
  }

  screenBlankedToken = self->_screenBlankedToken;
  if (screenBlankedToken)
  {
    notify_cancel(screenBlankedToken);
  }

  self->_screenBlankedToken = 0;
  powerPluggedinToken = self->_powerPluggedinToken;
  if (powerPluggedinToken)
  {
    notify_cancel(powerPluggedinToken);
  }

  self->_powerPluggedinToken = 0;
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveEveryObserver();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(BackgroundTaskAgentMonitor *)self cancelNetworkStabilizationTimer];
  v11.receiver = self;
  v11.super_class = BackgroundTaskAgentMonitor;
  [(BackgroundTaskAgentMonitor *)&v11 dealloc];
}

- (void)notifyWhenBatteryLevel:(double)level
{
  self->_batteryNotificationThreshold = level;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_6A04();
  }
}

- (void)debugPrintMonitorStatus
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_6A80(self);
  }
}

- (BOOL)initNetworkLinkQualityMonitoring
{
  v10.version = 0;
  memset(&v10.retain, 0, 24);
  v10.info = self;
  v3 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.backgroundtaskagent", sub_E28, &v10);
  self->_dynamicStore = v3;
  if (v3)
  {
    SCDynamicStoreSetDispatchQueue(v3, [(BackgroundTaskAgentMonitor *)self queue]);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v5 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCEntNetIPv4);
    CFArrayAppendValue(Mutable, NetworkGlobalEntity);
    CFRelease(NetworkGlobalEntity);
    v7 = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCEntNetIPv6);
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v7);
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetLinkQuality);
    CFArrayAppendValue(v5, NetworkInterfaceEntity);
    CFRelease(NetworkInterfaceEntity);
    SCDynamicStoreSetNotificationKeys(self->_dynamicStore, Mutable, v5);
    CFRelease(Mutable);
    CFRelease(v5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_6B68();
    }

    [(BackgroundTaskAgentMonitor *)self updateNetworkLinkQuality];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_6B24();
  }

  return v3 != 0;
}

- (void)networkStabilizationTimerHandler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4894;
  block[3] = &unk_C4B0;
  block[4] = self;
  dispatch_async([(BackgroundTaskAgentMonitor *)self queue], block);
}

- (void)updateNetworkLinkQuality
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCEntNetIPv4);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  v5 = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCEntNetIPv6);
  CFArrayAppendValue(Mutable, v5);
  v6 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v7 = kSCEntNetCommCenter;
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetCommCenter);
  CFArrayAppendValue(v6, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v9 = kSCEntNetLinkQuality;
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetLinkQuality);
  CFArrayAppendValue(v6, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  v11 = SCDynamicStoreCopyMultiple(self->_dynamicStore, Mutable, v6);
  CFRelease(Mutable);
  CFRelease(v6);
  if (NetworkGlobalEntity)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
    LODWORD(Value) = 0;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v11, NetworkGlobalEntity);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_6C2C(NetworkGlobalEntity, Value);
  }

  entity = v7;
  if (Value)
  {
    v17 = CFGetTypeID(Value);
    if (v17 == CFDictionaryGetTypeID())
    {
      v18 = CFDictionaryGetValue(Value, kSCDynamicStorePropNetPrimaryInterface);
      v19 = CFDictionaryGetValue(Value, kSCDynamicStorePropNetPrimaryService);
      LODWORD(Value) = 1;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      LODWORD(Value) = 0;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  CFRelease(NetworkGlobalEntity);
  if (!v18 || !v19)
  {
    v20 = CFDictionaryGetValue(v11, v5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_6CC8(v5, v20);
      if (v20)
      {
LABEL_30:
        v35 = v11;
        v21 = v18;
        v22 = Value;
        Value = v9;
        v23 = CFGetTypeID(v20);
        v12 = v23 == CFDictionaryGetTypeID();
        v9 = Value;
        LODWORD(Value) = v22;
        v18 = v21;
        v11 = v35;
        if (v12)
        {
          v18 = CFDictionaryGetValue(v20, kSCDynamicStorePropNetPrimaryInterface);
          v19 = CFDictionaryGetValue(v20, kSCDynamicStorePropNetPrimaryService);
          LODWORD(Value) = 1;
        }
      }
    }

    else if (v20)
    {
      goto LABEL_30;
    }
  }

  CFRelease(v5);
  v13 = 0;
  if (v18 && v19)
  {
    v24 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v19, entity);
    v25 = v9;
    v26 = v24;
    v27 = CFDictionaryGetValue(v11, v24);
    CFRelease(v26);
    v13 = v27 != 0;
    v28 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v18, v25);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_6D64(v28);
    }

    v29 = CFDictionaryGetValue(v11, v28);
    CFRelease(v28);
    if (v29)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_6DE8(v29);
      }

      v30 = CFGetTypeID(v29);
      if (v30 == CFDictionaryGetTypeID())
      {
        v31 = CFDictionaryGetValue(v29, v25);
        v32 = CFGetTypeID(v31);
        if (v32 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(v31, kCFNumberIntType, &valuePtr);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_6E6C(&valuePtr);
          }

          v33 = valuePtr;
          if ((valuePtr - 51) >= 0x32)
          {
            if ((valuePtr + 1) >= 0x34)
            {
              v34 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              if (v33 == -2)
              {
                if (v34)
                {
                  sub_6F68(v18);
                }
              }

              else if (v34)
              {
                sub_6EEC();
              }
            }
          }

          else
          {
            LODWORD(Value) = 2;
          }
        }
      }
    }
  }

LABEL_7:
  [(BackgroundTaskAgentMonitor *)self updateRoamingState];
  [(BackgroundTaskAgentMonitor *)self setPendingNetworkUpdate:0];
  if (Value != self->_primaryLinkQuality || self->_primaryLinkIsCellular != v13 || self->_roamStateChanged)
  {
    self->_primaryLinkQuality = Value;
    self->_primaryLinkIsCellular = v13;
    self->_roamStateChanged = 0;
    if (self->_numNetworkJobs >= 1)
    {
      if (self->_selector)
      {
        selector = self->_selector;
      }

      else
      {
        selector = 0;
      }

      [self->_target performSelector:selector withObject:0];
    }
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"kBTANetworkHasStabilized", 0];
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_22;
  }

  sub_6FEC();
  if (v11)
  {
LABEL_22:
    CFRelease(v11);
  }
}

- (void)setIsScreenBlanked:(BOOL)blanked
{
  if (self->_isScreenBlanked != blanked)
  {
    v14 = v7;
    v15 = v4;
    v16 = v3;
    blankedCopy = blanked;
    self->_isScreenBlanked = blanked;
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (blankedCopy)
    {
      if (v11)
      {
        sub_70BC();
      }

      Current = CFAbsoluteTimeGetCurrent();
    }

    else
    {
      Current = -1.0;
      if (v11)
      {
        sub_7078();
      }
    }

    self->_lastScreenBlankedTime = Current;
    if (self->_numScreenBlankedJobs >= 1)
    {
      if (self->_selector)
      {
        selector = self->_selector;
      }

      else
      {
        selector = 0;
      }

      [self->_target performSelector:selector withObject:{0, v8, v14, v15, v16, v5, v6}];
    }
  }
}

- (BOOL)initPowerSourceMonitoring
{
  self->_isPowerPluggedin = 0;
  self->_numPowerPluggedinJobs = 0;
  self->_lastPowerPluggedinTime = -1.0;
  self->_batteryNotificationThreshold = 101.0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_7100();
  }

  v3 = IONotificationPortCreate(kIOMasterPortDefault);
  self->_batteryIONotifyPort = v3;
  IONotificationPortSetDispatchQueue(v3, [(BackgroundTaskAgentMonitor *)self queue]);
  v4 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
  self->_batteryEntry = MatchingService;
  v6 = IOServiceAddInterestNotification(self->_batteryIONotifyPort, MatchingService, "IOGeneralInterest", sub_DD0, self, &self->_batteryNotificationRef);
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_7184();
    }
  }

  else
  {
    [(BackgroundTaskAgentMonitor *)self updateBatteryLevel:self->_batteryEntry];
    [(BackgroundTaskAgentMonitor *)self updatePluggedinState:self->_batteryEntry];
  }

  return v6 == 0;
}

- (void)updateBatteryLevel:(unsigned int)level
{
  CFProperty = IORegistryEntryCreateCFProperty(level, @"MaxCapacity", kCFAllocatorDefault, 0);
  v6 = IORegistryEntryCreateCFProperty(level, @"CurrentCapacity", kCFAllocatorDefault, 0);
  v7 = v6;
  if (CFProperty)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!CFProperty)
    {
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    [CFProperty doubleValue];
    if (v13 > 0.0)
    {
      [v7 doubleValue];
      v15 = v14 * 100.0;
      [CFProperty doubleValue];
      self->_batteryLevel = v15 / v16;
    }
  }

  CFRelease(CFProperty);
  if (v7)
  {
LABEL_8:
    CFRelease(v7);
  }

LABEL_9:
  if (self->_batteryLevel >= self->_batteryNotificationThreshold)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_7200();
    }

    selector = self->_selector;
    p_selector = &self->_selector;
    v9 = selector;
    p_selector[15] = 0x4059400000000000;
    if (selector)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    [*(p_selector - 1) performSelector:v12 withObject:0];
  }
}

- (void)updatePluggedinState:(unsigned int)state
{
  CFProperty = IORegistryEntryCreateCFProperty(state, @"ExternalConnected", kCFAllocatorDefault, 0);
  isPowerPluggedin = self->_isPowerPluggedin;
  intValue = [CFProperty intValue];
  v7 = intValue == 1;
  self->_isPowerPluggedin = v7;
  if (isPowerPluggedin != v7)
  {
    v8 = intValue;
    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v8 == 1)
    {
      if (v9)
      {
        sub_72C0();
      }

      Current = CFAbsoluteTimeGetCurrent();
    }

    else
    {
      Current = -1.0;
      if (v9)
      {
        sub_727C();
      }
    }

    self->_lastPowerPluggedinTime = Current;
    if (self->_numPowerPluggedinJobs >= 1)
    {
      if (self->_selector)
      {
        selector = self->_selector;
      }

      else
      {
        selector = 0;
      }

      [self->_target performSelector:selector withObject:0];
    }
  }
}

- (double)getKernelMonotonicClock
{
  v6 = 0;
  v5 = 4;
  if ((byte_D93C & 1) == 0)
  {
    if (sysctlnametomib("kern.monotonicclock", dword_D940, &dword_D930))
    {
      v2 = -1.0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_7304();
      }

      return v2;
    }

    byte_D93C = 1;
  }

  if (sysctl(dword_D940, dword_D930, &v6, &v5, 0, 0))
  {
    v2 = -1.0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_7348();
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_73EC(&v6);
    }

    LODWORD(v3) = v6;
    return v3 + 0.5;
  }

  return v2;
}

- (void)setIsInVoiceCall:(BOOL)call
{
  if (self->_isInVoiceCall != call)
  {
    v11 = v4;
    v12 = v3;
    callCopy = call;
    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (callCopy)
    {
      if (v9)
      {
        sub_74B0();
      }
    }

    else if (v9)
    {
      sub_746C();
    }

    self->_isInVoiceCall = callCopy;
    if (self->_numVoiceCallJobs >= 1)
    {
      if (self->_selector)
      {
        selector = self->_selector;
      }

      else
      {
        selector = 0;
      }

      [self->_target performSelector:selector withObject:{0, v11, v12, v5, v6}];
    }
  }
}

- (void)updateCallState
{
  v3 = CTCopyCurrentCalls();
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    goto LABEL_10;
  }

  [v3 objectAtIndex:0];
  Status = CTCallGetStatus();
  if ((Status - 1) < 4)
  {
    selfCopy2 = self;
    v7 = 1;
LABEL_11:

    [(BackgroundTaskAgentMonitor *)selfCopy2 setIsInVoiceCall:v7];
    return;
  }

  if (Status == 5 || Status == 0)
  {
LABEL_10:
    selfCopy2 = self;
    v7 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_74F4();
  }
}

- (void)updateRoamingState
{
  isRoaming = self->_isRoaming;
  Status = CTRegistrationGetStatus();
  v5 = Status && CFEqual(Status, kCTRegistrationStatusRegisteredRoaming);
  self->_isRoaming = v5;
  if (isRoaming != v5 && self->_numRoamJobs != 0)
  {
    self->_roamStateChanged = 1;
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        sub_757C();
      }
    }

    else if (v7)
    {
      sub_7538();
    }
  }
}

- (void)processRegistrationNotification
{
  [(BackgroundTaskAgentMonitor *)self updateRoamingState];
  if (self->_roamStateChanged)
  {
    if (self->_isRoaming)
    {
      target = self->_target;
      if (self->_selector)
      {
        selector = self->_selector;
      }

      else
      {
        selector = 0;
      }

      [target performSelector:selector withObject:0];
    }

    else
    {

      [(BackgroundTaskAgentMonitor *)self rescheduleNetworkStabilizationTimer];
    }
  }
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

@end