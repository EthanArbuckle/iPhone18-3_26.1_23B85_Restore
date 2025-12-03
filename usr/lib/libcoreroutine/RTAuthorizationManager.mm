@interface RTAuthorizationManager
+ (BOOL)supportsNotificationName:(id)name;
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)isCoreRoutineLocationClientEnabled;
- (BOOL)shouldPersistLocations;
- (RTAuthorizationManager)initWithPlatform:(id)platform userSessionMonitor:(id)monitor;
- (id)_getMetrics:(BOOL)metrics;
- (void)_onDailyMetricsNotification:(id)notification;
- (void)_registerForNotifications;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)_unregisterForNotifications;
- (void)dealloc;
- (void)fetchRoutineEnabledWithHandler:(id)handler;
- (void)fetchRoutineSupportedWithHandler:(id)handler;
- (void)handleAppResetChangeNotification;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)onDailyMetricsNotification:(id)notification;
- (void)onUserSessionChangeNotification:(id)notification;
- (void)setEnabled:(BOOL)enabled;
- (void)setRoutineEnabled:(BOOL)enabled withHandler:(id)handler;
- (void)setup;
- (void)updateRoutineEnabled:(BOOL)enabled;
@end

@implementation RTAuthorizationManager

- (RTAuthorizationManager)initWithPlatform:(id)platform userSessionMonitor:(id)monitor
{
  platformCopy = platform;
  monitorCopy = monitor;
  v9 = monitorCopy;
  if (!platformCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: platform";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_9;
  }

  if (!monitorCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: userSessionMonitor";
    goto LABEL_12;
  }

  v19.receiver = self;
  v19.super_class = RTAuthorizationManager;
  v10 = [(RTNotifier *)&v19 init];
  if (v10)
  {
    v11 = [RTInvocationDispatcher alloc];
    queue = [(RTNotifier *)v10 queue];
    v13 = [(RTInvocationDispatcher *)v11 initWithQueue:queue];
    dispatcher = v10->_dispatcher;
    v10->_dispatcher = v13;

    objc_storeStrong(&v10->_platform, platform);
    objc_storeStrong(&v10->_userSessionMonitor, monitor);
    [(RTAuthorizationManager *)v10 setup];
  }

  self = v10;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)_registerForNotifications
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = NSStringFromSelector(a2);
      v7 = 138412290;
      v8 = v6;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, registered for daily notifications", &v7, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

- (void)_unregisterForNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (id)_getMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  isLocationServicesEnabled = [(RTAuthorizationManager *)self isLocationServicesEnabled];
  isCoreRoutineLocationClientEnabled = [(RTAuthorizationManager *)self isCoreRoutineLocationClientEnabled];
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithBool:isCoreRoutineLocationClientEnabled];
  [v7 setObject:v8 forKeyedSubscript:@"coreRoutineSystemServiceEnabled"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:isLocationServicesEnabled];
  [v7 setObject:v9 forKeyedSubscript:@"locationServicesEnabled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabled];
  if (metricsCopy)
  {
    v11 = @"authorizationStateChange";
  }

  else
  {
    v11 = @"authorizationState";
  }

  [v7 setObject:v10 forKeyedSubscript:v11];

  return v7;
}

- (void)_onDailyMetricsNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = [name isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v7 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      name2 = [notificationCopy name];
      *buf = 138412802;
      v19 = name2;
      v20 = 2080;
      v21 = "[RTAuthorizationManager _onDailyMetricsNotification:]";
      v22 = 1024;
      v23 = 137;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, received notification, %@", buf, 0x16u);
    }
  }

  name3 = [notificationCopy name];
  v12 = [name3 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if (v12)
  {
    v13 = [(RTAuthorizationManager *)self _getMetrics:0];
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    name4 = [v14 initWithCString:RTAnalyticsEventAuthorizationState encoding:1];
    log_analytics_submission(name4, v13);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", name4];
    AnalyticsSendEvent();
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    name4 = [notificationCopy name];
    *buf = 138412290;
    v19 = name4;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
  }

LABEL_13:
}

- (void)onDailyMetricsNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTAuthorizationManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [RTAuthorizationManager_Embedded allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RTAuthorizationManager;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (void)setup
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__RTAuthorizationManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __31__RTAuthorizationManager_setup__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setup];
  *(*(a1 + 32) + 34) = 1;
  result = [*(*(a1 + 32) + 40) invocationsPending];
  if (result)
  {
    v3 = *(*(a1 + 32) + 40);

    return [v3 dispatchPendingInvocations];
  }

  return result;
}

- (void)_setup
{
  v13 = *MEMORY[0x277D85DE8];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, onAppResetChangedNotification, *MEMORY[0x277CC1BB8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  userSessionMonitor = self->_userSessionMonitor;
  v5 = +[(RTNotification *)RTUserSessionMonitorNotificationConsoleUserDidChange];
  [(RTNotifier *)userSessionMonitor addObserver:self selector:sel_onUserSessionChangeNotification_ name:v5];

  self->_supported = [(RTPlatform *)self->_platform supportsCoreRoutineCapability];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (self->_supported)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "CoreRoutine's services supported, %@", &v11, 0xCu);
    }
  }

  isLocationServicesEnabled = [(RTAuthorizationManager *)self isLocationServicesEnabled];
  if (isLocationServicesEnabled)
  {
    LOBYTE(isLocationServicesEnabled) = [(RTAuthorizationManager *)self isCoreRoutineLocationClientEnabled];
  }

  self->_enabled = isLocationServicesEnabled;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (self->_enabled)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "CoreRoutine's location client enabled, %@", &v11, 0xCu);
    }
  }

  [(RTAuthorizationManager *)self _registerForNotifications];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  dispatcher = [(RTAuthorizationManager *)self dispatcher];
  [dispatcher shutdown];

  [(RTAuthorizationManager *)self _unregisterForNotifications];
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v5 = handlerCopy;
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = RTAuthorizationManager;
  [(RTAuthorizationManager *)&v5 dealloc];
}

- (BOOL)isCoreRoutineLocationClientEnabled
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = CLCopyAppsUsingLocation();
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [v2 objectForKey:{*(*(&v10 + 1) + 8 * i), v10}];
        if ([MEMORY[0x277CBFC10] primaryEntityClassForLocationDictionary:v6] == 16)
        {
          LODWORD(v3) = [MEMORY[0x277CBFC10] isEntityAuthorizedForLocationDictionary:v6];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v3)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "CoreRoutine's location client enabled, %@", buf, 0xCu);
    }
  }

  return v3;
}

- (void)fetchRoutineEnabledWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTAuthorizationManager_fetchRoutineEnabledWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __57__RTAuthorizationManager_fetchRoutineEnabledWithHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isSupported])
  {
    v2 = [*(a1 + 32) isEnabled];
  }

  else
  {
    v2 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "CoreRoutine enabled, %@", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)fetchRoutineSupportedWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__RTAuthorizationManager_fetchRoutineSupportedWithHandler___block_invoke;
  v7[3] = &unk_2788C4D38;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __59__RTAuthorizationManager_fetchRoutineSupportedWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) isSupported];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (BOOL)shouldPersistLocations
{
  userSessionMonitor = [(RTAuthorizationManager *)self userSessionMonitor];
  activeUser = [userSessionMonitor activeUser];

  return activeUser;
}

- (void)setRoutineEnabled:(BOOL)enabled withHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTAuthorizationManager_setRoutineEnabled_withHandler___block_invoke;
  block[3] = &unk_2788C5048;
  enabledCopy = enabled;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __56__RTAuthorizationManager_setRoutineEnabled_withHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 48))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "set routine enabled to %@", buf, 0xCu);
    }
  }

  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = CLCopyAppsUsingLocation();
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
        if ([MEMORY[0x277CBFC10] primaryEntityClassForLocationDictionary:v9] == 16)
        {
          [MEMORY[0x277CBFC10] setEntityAuthorized:*(a1 + 48) forLocationDictionary:v9];

          goto LABEL_18;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  [*(a1 + 32) setEnabled:*(a1 + 48)];
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 0);
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    v8 = [[RTAuthorizationManagerNotificationRoutineEnabled alloc] initWithEnabled:self->_enabled];
    [(RTNotifier *)self postNotification:v8];
    v4 = [(RTAuthorizationManager *)self _getMetrics:1];
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [v5 initWithCString:RTAnalyticsEventAuthorizationStateChange encoding:1];
    log_analytics_submission(v6, v4);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v6];
    AnalyticsSendEvent();
  }
}

- (void)updateRoutineEnabled:(BOOL)enabled
{
  queue = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__RTAuthorizationManager_updateRoutineEnabled___block_invoke;
  v6[3] = &unk_2788C5070;
  enabledCopy = enabled;
  v6[4] = self;
  dispatch_async(queue, v6);
}

uint64_t __47__RTAuthorizationManager_updateRoutineEnabled___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 40))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "update routine enabled to %@", &v5, 0xCu);
    }
  }

  return [*(a1 + 32) setEnabled:*(a1 + 40)];
}

- (void)handleAppResetChangeNotification
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTAuthorizationManager_handleAppResetChangeNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __58__RTAuthorizationManager_handleAppResetChangeNotification__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setEnabled:{objc_msgSend(*(a1 + 32), "isCoreRoutineLocationClientEnabled")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) isEnabled];
      v4 = @"NO";
      if (v3)
      {
        v4 = @"YES";
      }

      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Overall CoreRoutine services enabled after app reset changed notification, %@", &v5, 0xCu);
    }
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v16, 0xCu);
    }
  }

  v9 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v10 = [nameCopy isEqualToString:v9];

  if (v10)
  {
    v11 = [[RTAuthorizationManagerNotificationRoutineEnabled alloc] initWithEnabled:[(RTAuthorizationManager *)self isEnabled]];
    goto LABEL_9;
  }

  v12 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
  v13 = [nameCopy isEqualToString:v12];

  if (v13)
  {
    v14 = [RTAuthorizationManagerNotificationConsoleUserDidChange alloc];
    userSessionMonitor = [(RTAuthorizationManager *)self userSessionMonitor];
    v11 = -[RTAuthorizationManagerNotificationConsoleUserDidChange initWithactiveUser:](v14, "initWithactiveUser:", [userSessionMonitor activeUser]);

    if (!v11)
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    [(RTNotifier *)self postNotification:v11 toObserver:observerCopy];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)supportsNotificationName:(id)name
{
  nameCopy = name;
  v4 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  if ([nameCopy isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
    v5 = [nameCopy isEqualToString:v6];
  }

  return v5;
}

- (void)onUserSessionChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTAuthorizationManager_onUserSessionChangeNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __58__RTAuthorizationManager_onUserSessionChangeNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTUserSessionMonitorNotificationConsoleUserDidChange];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) activeUser];
        v9 = 67109120;
        LODWORD(v10) = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "active user did change: is active user: %d", &v9, 8u);
      }
    }

    v7 = -[RTAuthorizationManagerNotificationConsoleUserDidChange initWithactiveUser:]([RTAuthorizationManagerNotificationConsoleUserDidChange alloc], "initWithactiveUser:", [*(a1 + 32) activeUser]);
    if (v7)
    {
      [*(a1 + 40) postNotification:v7];
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) name];
      v9 = 138412802;
      v10 = v8;
      v11 = 2080;
      v12 = "[RTAuthorizationManager onUserSessionChangeNotification:]_block_invoke";
      v13 = 1024;
      v14 = 393;
      _os_log_error_impl(&dword_2304B3000, &v7->super.super, OS_LOG_TYPE_ERROR, "unhandled notification name, %@ (in %s:%d)", &v9, 0x1Cu);
    }
  }
}

@end