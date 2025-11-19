@interface RTAuthorizationManager
+ (BOOL)supportsNotificationName:(id)a3;
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isCoreRoutineLocationClientEnabled;
- (BOOL)shouldPersistLocations;
- (RTAuthorizationManager)initWithPlatform:(id)a3 userSessionMonitor:(id)a4;
- (id)_getMetrics:(BOOL)a3;
- (void)_onDailyMetricsNotification:(id)a3;
- (void)_registerForNotifications;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_unregisterForNotifications;
- (void)dealloc;
- (void)fetchRoutineEnabledWithHandler:(id)a3;
- (void)fetchRoutineSupportedWithHandler:(id)a3;
- (void)handleAppResetChangeNotification;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onDailyMetricsNotification:(id)a3;
- (void)onUserSessionChangeNotification:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setRoutineEnabled:(BOOL)a3 withHandler:(id)a4;
- (void)setup;
- (void)updateRoutineEnabled:(BOOL)a3;
@end

@implementation RTAuthorizationManager

- (RTAuthorizationManager)initWithPlatform:(id)a3 userSessionMonitor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v15 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: platform";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
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
    v12 = [(RTNotifier *)v10 queue];
    v13 = [(RTInvocationDispatcher *)v11 initWithQueue:v12];
    dispatcher = v10->_dispatcher;
    v10->_dispatcher = v13;

    objc_storeStrong(&v10->_platform, a3);
    objc_storeStrong(&v10->_userSessionMonitor, a4);
    [(RTAuthorizationManager *)v10 setup];
  }

  self = v10;
  v15 = self;
LABEL_10:

  return v15;
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

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

- (void)_unregisterForNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];
}

- (id)_getMetrics:(BOOL)a3
{
  v3 = a3;
  v5 = [(RTAuthorizationManager *)self isLocationServicesEnabled];
  v6 = [(RTAuthorizationManager *)self isCoreRoutineLocationClientEnabled];
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v7 setObject:v8 forKeyedSubscript:@"coreRoutineSystemServiceEnabled"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v7 setObject:v9 forKeyedSubscript:@"locationServicesEnabled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabled];
  if (v3)
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

- (void)_onDailyMetricsNotification:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v7 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = [v5 name];
      *buf = 138412802;
      v19 = v17;
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
      v21 = v5;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, received notification, %@", buf, 0x16u);
    }
  }

  v11 = [v5 name];
  v12 = [v11 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if (v12)
  {
    v13 = [(RTAuthorizationManager *)self _getMetrics:0];
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v14 initWithCString:RTAnalyticsEventAuthorizationState encoding:1];
    log_analytics_submission(v15, v13);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v15];
    AnalyticsSendEvent();
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v15 = [v5 name];
    *buf = 138412290;
    v19 = v15;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
  }

LABEL_13:
}

- (void)onDailyMetricsNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTAuthorizationManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [RTAuthorizationManager_Embedded allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___RTAuthorizationManager;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (void)setup
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__RTAuthorizationManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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

  v8 = [(RTAuthorizationManager *)self isLocationServicesEnabled];
  if (v8)
  {
    LOBYTE(v8) = [(RTAuthorizationManager *)self isCoreRoutineLocationClientEnabled];
  }

  self->_enabled = v8;
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

- (void)_shutdownWithHandler:(id)a3
{
  v6 = a3;
  v4 = [(RTAuthorizationManager *)self dispatcher];
  [v4 shutdown];

  [(RTAuthorizationManager *)self _unregisterForNotifications];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

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

- (void)fetchRoutineEnabledWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTAuthorizationManager_fetchRoutineEnabledWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)fetchRoutineSupportedWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__RTAuthorizationManager_fetchRoutineSupportedWithHandler___block_invoke;
  v7[3] = &unk_2788C4D38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v2 = [(RTAuthorizationManager *)self userSessionMonitor];
  v3 = [v2 activeUser];

  return v3;
}

- (void)setRoutineEnabled:(BOOL)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTAuthorizationManager_setRoutineEnabled_withHandler___block_invoke;
  block[3] = &unk_2788C5048;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
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

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
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

- (void)updateRoutineEnabled:(BOOL)a3
{
  v5 = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__RTAuthorizationManager_updateRoutineEnabled___block_invoke;
  v6[3] = &unk_2788C5070;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
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
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTAuthorizationManager_handleAppResetChangeNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([objc_opt_class() supportsNotificationName:v7] & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v16, 0xCu);
    }
  }

  v9 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = [[RTAuthorizationManagerNotificationRoutineEnabled alloc] initWithEnabled:[(RTAuthorizationManager *)self isEnabled]];
    goto LABEL_9;
  }

  v12 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
  v13 = [v7 isEqualToString:v12];

  if (v13)
  {
    v14 = [RTAuthorizationManagerNotificationConsoleUserDidChange alloc];
    v15 = [(RTAuthorizationManager *)self userSessionMonitor];
    v11 = -[RTAuthorizationManagerNotificationConsoleUserDidChange initWithactiveUser:](v14, "initWithactiveUser:", [v15 activeUser]);

    if (!v11)
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    [(RTNotifier *)self postNotification:v11 toObserver:v6];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  if (([objc_opt_class() supportsNotificationName:v4] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorization);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)supportsNotificationName:(id)a3
{
  v3 = a3;
  v4 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
    v5 = [v3 isEqualToString:v6];
  }

  return v5;
}

- (void)onUserSessionChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTAuthorizationManager_onUserSessionChangeNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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