@interface RTXPCActivityManager
+ (id)criteriaDictionaryWithCriteria:(id)criteria;
+ (id)lastAttemptDateKeyForIdentifier:(id)identifier;
+ (id)lastCompleteDateKeyForIdentifier:(id)identifier;
+ (id)xpcActivityCopyCriteriaActivity:(id)activity;
- (RTXPCActivityManager)initWithDefaultsManager:(id)manager diagnostics:(id)diagnostics identifier:(id)identifier;
- (RTXPCActivityManager)initWithDefaultsManager:(id)manager diagnostics:(id)diagnostics timerManager:(id)timerManager identifier:(id)identifier;
- (id)_lastAttemptDateForIdentifier:(id)identifier;
- (id)_lastCompleteDateForIdentifier:(id)identifier;
- (id)_registerRegistrant:(id)registrant;
- (void)_onDeferCheckTimer;
- (void)_registerActivityWithIdentifier:(id)identifier criteria:(id)criteria handler:(id)handler deferHandler:(id)deferHandler;
- (void)_runRegistrantWithIdentifier:(id)identifier activity:(id)activity handler:(id)handler;
- (void)_scheduleNextTask;
- (void)_shutdownWithHandler:(id)handler;
- (void)_startDeferCheckTimer;
- (void)_stopDeferCheckTimer;
- (void)_unregisterActivityWithIdentifier:(id)identifier handler:(id)handler;
- (void)_updateLastAttemptDateForIdentifier:(id)identifier;
- (void)_updateLastCompleteDateForIdentifier:(id)identifier;
- (void)deleteDefaultsForIdentifier:(id)identifier;
- (void)registerActivityWithIdentifier:(id)identifier criteria:(id)criteria handler:(id)handler deferHandler:(id)deferHandler;
- (void)runRegistrantWithIdentifier:(id)identifier activity:(id)activity handler:(id)handler;
- (void)unregisterActivityWithIdentifier:(id)identifier handler:(id)handler;
@end

@implementation RTXPCActivityManager

- (RTXPCActivityManager)initWithDefaultsManager:(id)manager diagnostics:(id)diagnostics identifier:(id)identifier
{
  identifierCopy = identifier;
  diagnosticsCopy = diagnostics;
  managerCopy = manager;
  v11 = objc_opt_new();
  v12 = [(RTXPCActivityManager *)self initWithDefaultsManager:managerCopy diagnostics:diagnosticsCopy timerManager:v11 identifier:identifierCopy];

  return v12;
}

- (RTXPCActivityManager)initWithDefaultsManager:(id)manager diagnostics:(id)diagnostics timerManager:(id)timerManager identifier:(id)identifier
{
  managerCopy = manager;
  diagnosticsCopy = diagnostics;
  timerManagerCopy = timerManager;
  identifierCopy = identifier;
  v15 = identifierCopy;
  if (!managerCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: defaultsManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_17;
  }

  if (!diagnosticsCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: diagnostics";
    goto LABEL_16;
  }

  if (!timerManagerCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_16;
  }

  if (!identifierCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: identifer";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v26.receiver = self;
  v26.super_class = RTXPCActivityManager;
  v16 = [(RTNotifier *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_defaultsManager, manager);
    objc_storeStrong(&v17->_diagnostics, diagnostics);
    objc_storeStrong(&v17->_timerManager, timerManager);
    v18 = objc_opt_new();
    registrants = v17->_registrants;
    v17->_registrants = v18;

    v20 = objc_opt_new();
    pendingTasks = v17->_pendingTasks;
    v17->_pendingTasks = v20;

    objc_storeStrong(&v17->_identifier, identifier);
    [(RTService *)v17 setup];
  }

  self = v17;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

+ (id)lastAttemptDateKeyForIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    v3 = [@"XPCActivityLastAttemptDate" stringByAppendingPathExtension:?];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "+[RTXPCActivityManager lastAttemptDateKeyForIdentifier:]";
      v8 = 1024;
      v9 = 557;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v6, 0x12u);
    }

    v3 = 0;
  }

  return v3;
}

+ (id)lastCompleteDateKeyForIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    v3 = [@"XPCActivityLastCompleteDate" stringByAppendingPathExtension:?];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "+[RTXPCActivityManager lastCompleteDateKeyForIdentifier:]";
      v8 = 1024;
      v9 = 568;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v6, 0x12u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)deleteDefaultsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    defaultsManager = [(RTXPCActivityManager *)self defaultsManager];
    v6 = [RTXPCActivityManager lastAttemptDateKeyForIdentifier:identifierCopy];
    [defaultsManager setObject:0 forKey:v6];

    defaultsManager2 = [(RTXPCActivityManager *)self defaultsManager];
    v8 = [RTXPCActivityManager lastCompleteDateKeyForIdentifier:identifierCopy];
    [defaultsManager2 setObject:0 forKey:v8];
  }

  else
  {
    defaultsManager2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(defaultsManager2, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, defaultsManager2, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", v9, 2u);
    }
  }
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v5 = handlerCopy;
  }
}

- (id)_lastAttemptDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() lastAttemptDateKeyForIdentifier:identifierCopy];

  defaultsManager = [(RTXPCActivityManager *)self defaultsManager];
  v7 = [defaultsManager objectForKey:v5];

  return v7;
}

- (void)_updateLastAttemptDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [objc_opt_class() lastAttemptDateKeyForIdentifier:identifierCopy];

  defaultsManager = [(RTXPCActivityManager *)self defaultsManager];
  date = [MEMORY[0x277CBEAA8] date];
  [defaultsManager setObject:date forKey:v7];
}

- (id)_lastCompleteDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() lastCompleteDateKeyForIdentifier:identifierCopy];

  defaultsManager = [(RTXPCActivityManager *)self defaultsManager];
  v7 = [defaultsManager objectForKey:v5];

  return v7;
}

- (void)_updateLastCompleteDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [objc_opt_class() lastCompleteDateKeyForIdentifier:identifierCopy];

  defaultsManager = [(RTXPCActivityManager *)self defaultsManager];
  date = [MEMORY[0x277CBEAA8] date];
  [defaultsManager setObject:date forKey:v7];
}

+ (id)criteriaDictionaryWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if (criteriaCopy)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    [criteriaCopy interval];
    v6 = v5;
    if (v5 > 0.0)
    {
      v7 = *MEMORY[0x277D86288];
      [criteriaCopy interval];
      xpc_dictionary_set_int64(v4, v7, v8);
    }

    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], v6 > 0.0);
    v9 = *MEMORY[0x277D86250];
    [criteriaCopy delay];
    xpc_dictionary_set_int64(v4, v9, v10);
    v11 = *MEMORY[0x277D86270];
    [criteriaCopy gracePeriod];
    xpc_dictionary_set_int64(v4, v11, v12);
    v13 = *MEMORY[0x277D86340];
    v14 = [objc_opt_class() convertPriority:{objc_msgSend(criteriaCopy, "priority")}];
    xpc_dictionary_set_string(v4, v13, v14);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], [criteriaCopy allowBattery]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], [criteriaCopy requireNetworkConnectivity]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86390], [criteriaCopy requireInexpensiveNetworkConnectivity]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86330], [criteriaCopy powerNap]);
    xpc_dictionary_set_int64(v4, *MEMORY[0x277D86320], [criteriaCopy networkTransferUploadSize]);
    xpc_dictionary_set_int64(v4, *MEMORY[0x277D862E8], [criteriaCopy networkTransferDownloadSize]);
    requireBatteryLevel = [criteriaCopy requireBatteryLevel];

    if (requireBatteryLevel)
    {
      v16 = *MEMORY[0x277D86388];
      requireBatteryLevel2 = [criteriaCopy requireBatteryLevel];
      xpc_dictionary_set_int64(v4, v16, [requireBatteryLevel2 integerValue]);

      v18 = xpc_dictionary_create(0, 0, 0);
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v19 = _MergedGlobals_6;
      v30 = _MergedGlobals_6;
      if (!_MergedGlobals_6)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __get_DASCTSMinBatteryLevelKeySymbolLoc_block_invoke;
        v26[3] = &unk_2788C6A40;
        v26[4] = &v27;
        __get_DASCTSMinBatteryLevelKeySymbolLoc_block_invoke(v26);
        v19 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (!v19)
      {
        dlerror();
        v25 = abort_report_np();
        _Block_object_dispose(&v27, 8);
        _Unwind_Resume(v25);
      }

      v20 = [*v19 cStringUsingEncoding:4];
      requireBatteryLevel3 = [criteriaCopy requireBatteryLevel];
      xpc_dictionary_set_int64(v18, v20, [requireBatteryLevel3 integerValue]);

      xpc_dictionary_set_value(v4, *MEMORY[0x277D86260], v18);
    }

    [criteriaCopy expectedDuration];
    v22 = *MEMORY[0x277D86268];
    [criteriaCopy expectedDuration];
    xpc_dictionary_set_int64(v4, v22, v23);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D863B8], [criteriaCopy userRequestedBackgroundTask]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86248], [criteriaCopy cpuIntensive]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86328], [criteriaCopy postInstall]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86368], [criteriaCopy requiresBuddyComplete]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86378], [criteriaCopy requiresClassB]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86370], [criteriaCopy requiresClassA]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_registerActivityWithIdentifier:(id)identifier criteria:(id)criteria handler:(id)handler deferHandler:(id)deferHandler
{
  v48[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  criteriaCopy = criteria;
  handlerCopy = handler;
  deferHandlerCopy = deferHandler;
  if (handlerCopy)
  {
    if (identifierCopy)
    {
      if (criteriaCopy)
      {
        v14 = [[RTXPCActivityRegistrant alloc] initWithIdentifier:identifierCopy criteria:criteriaCopy handler:handlerCopy deferHandler:deferHandlerCopy];
        if (v14)
        {
          v15 = v14;
          registrants = [(RTXPCActivityManager *)self registrants];
          identifier = [v15 identifier];
          [registrants setObject:v15 forKey:identifier];

          identifier2 = [v15 identifier];
          v19 = [(RTXPCActivityManager *)self _lastAttemptDateForIdentifier:identifier2];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v20 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              identifier3 = [(RTXPCActivityManager *)self identifier];
              stringFromDate = [v19 stringFromDate];
              date = [MEMORY[0x277CBEAA8] date];
              distantPast = v19;
              if (!v19)
              {
                distantPast = [MEMORY[0x277CBEAA8] distantPast];
              }

              [date timeIntervalSinceDate:distantPast];
              *buf = 138413058;
              v36 = identifier3;
              v37 = 2112;
              v38 = v15;
              v39 = 2112;
              v40 = stringFromDate;
              v41 = 2048;
              v42 = v23;
              _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "manager, %@, register activity, registrant, %@, lastAttemptDate, %@, intervalSinceLastAttempt, %.2f", buf, 0x2Au);
              if (!v19)
              {
              }
            }
          }

          v24 = [(RTXPCActivityManager *)self _registerRegistrant:v15];
        }

        else
        {
          v30 = MEMORY[0x277CCA9B8];
          v31 = *MEMORY[0x277D01448];
          v43 = *MEMORY[0x277CCA450];
          v44 = @"requires a valid registrant.";
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v32 = [v30 errorWithDomain:v31 code:7 userInfo:v19];
          handlerCopy[2](handlerCopy, 0, v32);

          v15 = 0;
        }

        goto LABEL_17;
      }

      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277D01448];
      v45 = *MEMORY[0x277CCA450];
      v46 = @"requires a valid criteria.";
      v27 = MEMORY[0x277CBEAC0];
      v28 = &v46;
      v29 = &v45;
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277D01448];
      v47 = *MEMORY[0x277CCA450];
      v48[0] = @"requires a valid identifier range.";
      v27 = MEMORY[0x277CBEAC0];
      v28 = v48;
      v29 = &v47;
    }

    v15 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
    v19 = [v25 errorWithDomain:v26 code:7 userInfo:v15];
    handlerCopy[2](handlerCopy, 0, v19);
LABEL_17:
  }
}

- (void)_runRegistrantWithIdentifier:(id)identifier activity:(id)activity handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  activityCopy = activity;
  v11 = [[RTXPCActivityTask alloc] initWithIdentifier:identifierCopy activity:activityCopy handler:handlerCopy];

  if (v11)
  {
    pendingTasks = [(RTXPCActivityManager *)self pendingTasks];
    [pendingTasks addObject:v11];

    [(RTXPCActivityManager *)self _startDeferCheckTimer];
    [(RTXPCActivityManager *)self _scheduleNextTask];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      identifier = [(RTXPCActivityManager *)self identifier];
      v15 = 138412546;
      v16 = identifier;
      v17 = 2112;
      v18 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "manager, %@, unable to create task for identifier, %@", &v15, 0x16u);
    }
  }
}

- (void)runRegistrantWithIdentifier:(id)identifier activity:(id)activity handler:(id)handler
{
  identifierCopy = identifier;
  activityCopy = activity;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__RTXPCActivityManager_runRegistrantWithIdentifier_activity_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = activityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = activityCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

- (void)_startDeferCheckTimer
{
  if (!self->_timer)
  {
    runningTask = [(RTXPCActivityManager *)self runningTask];
    if (runningTask)
    {
    }

    else
    {
      pendingTasks = [(RTXPCActivityManager *)self pendingTasks];
      v5 = [pendingTasks count];

      if (!v5)
      {
        return;
      }
    }

    timerManager = self->_timerManager;
    queue = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__RTXPCActivityManager__startDeferCheckTimer__block_invoke;
    v10[3] = &unk_2788C4EA0;
    v10[4] = self;
    v8 = [(RTTimerManager *)timerManager timerWithIdentifier:@"deferTimer" queue:queue handler:v10];
    timer = self->_timer;
    self->_timer = v8;

    [(RTTimer *)self->_timer fireAfterDelay:5.0 interval:5.0];
    [(RTTimer *)self->_timer resume];
  }
}

- (void)_stopDeferCheckTimer
{
  if (self->_timer)
  {
    timer = [(RTXPCActivityManager *)self runningTask];
    if (!timer)
    {
      pendingTasks = [(RTXPCActivityManager *)self pendingTasks];
      v5 = [pendingTasks count];

      if (v5)
      {
        return;
      }

      [(RTTimer *)self->_timer invalidate];
      timer = self->_timer;
      self->_timer = 0;
    }
  }
}

- (void)_onDeferCheckTimer
{
  selfCopy3 = self;
  v63 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(RTXPCActivityManager *)selfCopy3 identifier];
      v41 = NSStringFromSelector(a2);
      runningTask = [(RTXPCActivityManager *)selfCopy3 runningTask];
      identifier2 = [runningTask identifier];
      pendingTasks = [(RTXPCActivityManager *)self pendingTasks];
      v45 = [pendingTasks valueForKeyPath:@"identifier"];
      v46 = [v45 componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v56 = identifier;
      v57 = 2112;
      v58 = v41;
      v59 = 2112;
      v60 = identifier2;
      v61 = 2112;
      v62 = v46;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "manager, %@, %@, running task, %@, pending tasks, %@", buf, 0x2Au);

      selfCopy3 = self;
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = [(NSMutableArray *)selfCopy3->_pendingTasks copy];
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v51;
    *&v7 = 138412546;
    v48 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        activity = [v11 activity];
        v13 = [RTXPCActivityManager xpcActivityShouldDeferActivity:activity];

        if (v13)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v14 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              identifier3 = [(RTXPCActivityManager *)self identifier];
              identifier4 = [v11 identifier];
              *buf = v48;
              v56 = identifier3;
              v57 = 2112;
              v58 = identifier4;
              _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "manager, %@, pending xpc activity should defer, identifier, %@", buf, 0x16u);
            }
          }

          handler = [v11 handler];

          if (handler)
          {
            handler2 = [v11 handler];
            handler2[2](handler2, 3, 0);
          }

          selfCopy3 = self;
          [(NSMutableArray *)self->_pendingTasks removeObject:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v8);
  }

  runningTask2 = [(RTXPCActivityManager *)selfCopy3 runningTask];

  if (runningTask2)
  {
    runningTask3 = [(RTXPCActivityManager *)selfCopy3 runningTask];
    activity2 = [runningTask3 activity];
    v22 = [RTXPCActivityManager xpcActivityShouldDeferActivity:activity2];

    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          identifier5 = [(RTXPCActivityManager *)selfCopy3 identifier];
          runningTask4 = [(RTXPCActivityManager *)selfCopy3 runningTask];
          identifier6 = [runningTask4 identifier];
          *buf = 138412546;
          v56 = identifier5;
          v57 = 2112;
          v58 = identifier6;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "manager, %@, running xpc activity should defer, identifier, %@", buf, 0x16u);
        }
      }

      registrants = [(RTXPCActivityManager *)selfCopy3 registrants];
      runningTask5 = [(RTXPCActivityManager *)selfCopy3 runningTask];
      identifier7 = [runningTask5 identifier];
      v30 = [registrants objectForKeyedSubscript:identifier7];

      if (v30 && ([v30 deferHandler], v31 = objc_claimAutoreleasedReturnValue(), v31, v31))
      {
        if ([v30 didInvokeDeferHandler])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v32 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              identifier8 = [v30 identifier];
              *buf = 138412290;
              v56 = identifier8;
              _os_log_debug_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEBUG, "Defer handler already invoked for,%@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v37 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              identifier9 = [v30 identifier];
              *buf = 138412290;
              v56 = identifier9;
              _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "Invoking defer handler for,%@", buf, 0xCu);
            }
          }

          deferHandler = [v30 deferHandler];
          deferHandler[2](deferHandler, 0);

          [v30 setDidInvokeDeferHandler:1];
        }
      }

      else
      {
        runningTask6 = [(RTXPCActivityManager *)selfCopy3 runningTask];
        handler3 = [runningTask6 handler];

        if (handler3)
        {
          runningTask7 = [(RTXPCActivityManager *)selfCopy3 runningTask];
          handler4 = [runningTask7 handler];
          handler4[2](handler4, 5, 0);
        }

        [(RTXPCActivityManager *)selfCopy3 setRunningTask:0];
      }
    }
  }

  [(RTXPCActivityManager *)selfCopy3 _stopDeferCheckTimer];
}

- (void)_scheduleNextTask
{
  v67 = *MEMORY[0x277D85DE8];
  runningTask = [(RTXPCActivityManager *)self runningTask];

  if (!runningTask)
  {
    pendingTasks = [(RTXPCActivityManager *)self pendingTasks];
    firstObject = [pendingTasks firstObject];

    if (firstObject)
    {
      pendingTasks2 = [(RTXPCActivityManager *)self pendingTasks];
      [pendingTasks2 removeObjectAtIndex:0];

      registrants = [(RTXPCActivityManager *)self registrants];
      identifier = [firstObject identifier];
      v14 = [registrants objectForKey:identifier];

      if (v14)
      {
        date = [MEMORY[0x277CBEAA8] date];
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __41__RTXPCActivityManager__scheduleNextTask__block_invoke;
        aBlock[3] = &unk_2788CA620;
        objc_copyWeak(&v57, &location);
        v50 = date;
        v53 = v50;
        selfCopy = self;
        v16 = firstObject;
        v55 = v16;
        v17 = v14;
        v56 = v17;
        v49 = _Block_copy(aBlock);
        [(RTXPCActivityManager *)self setRunningTask:v16];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            identifier2 = [(RTXPCActivityManager *)self identifier];
            identifier3 = [v17 identifier];
            *buf = 138412546;
            v62 = identifier2;
            v63 = 2112;
            v64 = identifier3;
            _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "manager, %@, run started, identifier, %@", buf, 0x16u);
          }
        }

        diagnostics = self->_diagnostics;
        v22 = MEMORY[0x277CCACA8];
        identifier4 = [v16 identifier];
        v24 = [v22 stringWithFormat:@"Before identifier, %@", identifier4];
        [(RTDiagnostics *)diagnostics logDiagnosticStateWithReason:v24];

        identifier5 = [v17 identifier];
        v26 = [(RTXPCActivityManager *)self _lastAttemptDateForIdentifier:identifier5];

        identifier6 = [v17 identifier];
        v28 = [(RTXPCActivityManager *)self _lastCompleteDateForIdentifier:identifier6];

        if (v28)
        {
          v29 = [v28 laterDate:v26];
          if ([v29 isEqualToDate:v28])
          {
            v30 = 1;
          }

          else
          {
            v30 = 2;
          }
        }

        else
        {
          v30 = 0;
        }

        date2 = [MEMORY[0x277CBEAA8] date];
        [date2 timeIntervalSinceDate:v26];
        v39 = v38;

        v40 = objc_opt_new();
        identifier7 = [v17 identifier];
        [v40 setObject:identifier7 forKeyedSubscript:@"identifier"];

        [v40 setObject:&unk_28459DE30 forKeyedSubscript:@"state"];
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
        [v40 setObject:v42 forKeyedSubscript:@"result"];

        v43 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
        [v40 setObject:v43 forKeyedSubscript:@"interval"];

        v44 = objc_alloc(MEMORY[0x277CCACA8]);
        v45 = [v44 initWithCString:RTAnalyticsEventXPCActivitySuccessRate encoding:1];
        log_analytics_submission(v45, v40);
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v45];
        AnalyticsSendEvent();

        identifier8 = [v17 identifier];
        [(RTXPCActivityManager *)self _updateLastAttemptDateForIdentifier:identifier8];

        handler = [v17 handler];
        (handler)[2](handler, v49, 0);

        objc_destroyWeak(&v57);
        objc_destroyWeak(&location);
      }

      else
      {
        handler2 = [firstObject handler];

        if (handler2)
        {
          handler3 = [firstObject handler];
          v34 = MEMORY[0x277CCA9B8];
          v59 = *MEMORY[0x277CCA450];
          v60 = @"no registrant with identifier";
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v36 = [v34 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v35];
          (handler3)[2](handler3, 5, v36);
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        firstObject = 0;
        goto LABEL_25;
      }

      v14 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        identifier9 = [(RTXPCActivityManager *)self identifier];
        v32 = NSStringFromSelector(a2);
        *buf = 138412546;
        v62 = identifier9;
        v63 = 2112;
        v64 = v32;
        _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "manager, %@, %@, no more tasks to run", buf, 0x16u);
      }
    }

    goto LABEL_25;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  firstObject = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
  {
    identifier10 = [(RTXPCActivityManager *)self identifier];
    v7 = NSStringFromSelector(a2);
    runningTask2 = [(RTXPCActivityManager *)self runningTask];
    identifier11 = [runningTask2 identifier];
    *buf = 138412802;
    v62 = identifier10;
    v63 = 2112;
    v64 = v7;
    v65 = 2112;
    v66 = identifier11;
    _os_log_impl(&dword_2304B3000, firstObject, OS_LOG_TYPE_INFO, "manager, %@, %@, defer next task until the current task is finished, %@", buf, 0x20u);
  }

LABEL_25:
}

void __41__RTXPCActivityManager__scheduleNextTask__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RTXPCActivityManager__scheduleNextTask__block_invoke_2;
  block[3] = &unk_2788CA5F8;
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = *(a1 + 40);
  v13 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v15 = v13;
  v16 = v11;
  v17 = v5;
  v18 = a3;
  v12 = v5;
  dispatch_async(v7, block);
}

void __41__RTXPCActivityManager__scheduleNextTask__block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = v3;

  v5 = *(*(a1 + 40) + 40);
  v6 = MEMORY[0x277CCACA8];
  v7 = [*(a1 + 48) identifier];
  v8 = [v6 stringWithFormat:@"After identifier, %@", v7];
  [v5 logDiagnosticStateWithReason:v8];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 40) identifier];
      v11 = [*(a1 + 56) identifier];
      v12 = *(a1 + 64);
      v13 = *(a1 + 72);
      *buf = 138413314;
      v35 = v10;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      v40 = 2048;
      v41 = v4;
      v42 = 1024;
      v43 = v13;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "manager, %@, run finished, identifier, %@, error, %@, latency, %.2f, is deferred, %d", buf, 0x30u);
    }
  }

  v14 = objc_opt_new();
  v15 = [*(a1 + 56) identifier];
  [v14 setObject:v15 forKeyedSubscript:@"identifier"];

  [v14 setObject:&unk_28459DE18 forKeyedSubscript:@"state"];
  [v14 setObject:&unk_28459DE30 forKeyedSubscript:@"result"];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [v14 setObject:v16 forKeyedSubscript:@"interval"];

  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = [v17 initWithCString:RTAnalyticsEventXPCActivitySuccessRate encoding:1];
  log_analytics_submission(v18, v14);
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v18];
  AnalyticsSendEvent();

  v20 = *(a1 + 40);
  v21 = [*(a1 + 56) identifier];
  [v20 _updateLastCompleteDateForIdentifier:v21];

  v22 = [*(a1 + 40) runningTask];
  v23 = *(a1 + 48);

  if (v22 == v23)
  {
    if (*(a1 + 72) == 1 && ([*(a1 + 56) deferHandler], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = v24;
      v26 = [*(a1 + 48) activity];
      v27 = [RTXPCActivityManager xpcActivityShouldDeferActivity:v26];

      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 5;
      }
    }

    else
    {
      v28 = 5;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [*(a1 + 40) identifier];
        v31 = [*(a1 + 56) identifier];
        *buf = 138412802;
        v35 = v30;
        v36 = 2112;
        v37 = v31;
        v38 = 2048;
        v39 = v28;
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "manager, %@, identifier, %@, setting activity state to, %ld", buf, 0x20u);
      }
    }

    v32 = [*(a1 + 48) handler];

    if (v32)
    {
      v33 = [*(a1 + 48) handler];
      v33[2](v33, v28, *(a1 + 64));
    }

    [*(a1 + 40) setRunningTask:0];
    [*(a1 + 56) setDidInvokeDeferHandler:0];
    [*(a1 + 40) _scheduleNextTask];
  }
}

- (id)_registerRegistrant:(id)registrant
{
  v26[1] = *MEMORY[0x277D85DE8];
  registrantCopy = registrant;
  if (registrantCopy)
  {
    v5 = objc_opt_class();
    criteria = [registrantCopy criteria];
    v7 = [v5 criteriaDictionaryWithCriteria:criteria];

    if (v7)
    {
      objc_initWeak(&location, self);
      identifier = [registrantCopy identifier];
      v9 = identifier;
      uTF8String = [identifier UTF8String];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __44__RTXPCActivityManager__registerRegistrant___block_invoke;
      v17[3] = &unk_2788CA670;
      v11 = v7;
      v18 = v11;
      selfCopy = self;
      v20 = registrantCopy;
      objc_copyWeak(&v21, &location);
      [RTXPCActivityManager xpcActivityRegisterIdentifier:uTF8String criteria:*MEMORY[0x277D86238] handler:v17];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      v12 = 0;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"requires a valid criteria.";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v12 = [v14 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v15];

      v11 = 0;
    }
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"requires a valid registrant.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v12 = [v13 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v11];
  }

  return v12;
}

void __44__RTXPCActivityManager__registerRegistrant___block_invoke(xpc_object_t *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [RTXPCActivityManager xpcActivityGetStateActivity:v3];
  if (v4 == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [a1[5] identifier];
        v10 = [a1[6] identifier];
        *buf = 138412546;
        v30 = v9;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "manager, %@, run, identifier, %@", buf, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v11 = [a1[6] identifier];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__RTXPCActivityManager__registerRegistrant___block_invoke_248;
    v25[3] = &unk_2788CA648;
    v12 = v3;
    v13 = a1[5];
    v14 = a1[6];
    v26 = v12;
    v27 = v13;
    v28 = v14;
    [WeakRetained runRegistrantWithIdentifier:v11 activity:v12 handler:v25];

    if (![RTXPCActivityManager xpcActivitySetStateActivity:v12 state:4])
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = [a1[5] identifier];
        v24 = [a1[6] identifier];
        *buf = 138412546;
        v30 = v23;
        v31 = 2112;
        v32 = v24;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "manager, %@, run, identifier, %@, failed to set activity to state, XPC_ACTIVITY_STATE_CONTINUE", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = v4;
    if (v4)
    {
      WeakRetained = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        v16 = [a1[5] identifier];
        v17 = [a1[6] identifier];
        *buf = 138412802;
        v30 = v16;
        v31 = 2048;
        v32 = v5;
        v33 = 2112;
        v34 = v17;
        _os_log_error_impl(&dword_2304B3000, WeakRetained, OS_LOG_TYPE_ERROR, "manager, %@, unhandled state, %lu, identifier, %@", buf, 0x20u);
      }
    }

    else
    {
      WeakRetained = [RTXPCActivityManager xpcActivityCopyCriteriaActivity:v3];
      if (WeakRetained && xpc_equal(a1[4], WeakRetained))
      {
        v7 = @"NO";
      }

      else
      {
        [RTXPCActivityManager xpcActivitySetCriteriaActivity:v3 criteria:a1[4]];
        v7 = @"YES";
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [a1[5] identifier];
          v20 = [a1[6] identifier];
          v21 = v20;
          v22 = @"YES";
          *buf = 138413058;
          v30 = v19;
          if (!WeakRetained)
          {
            v22 = @"NO";
          }

          v31 = 2112;
          v32 = v20;
          v33 = 2112;
          v34 = v22;
          v35 = 2112;
          v36 = v7;
          _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "manager, %@, check-in, identifier, %@, existingCriteria, %@, setCriteria, %@", buf, 0x2Au);
        }
      }
    }
  }
}

void __44__RTXPCActivityManager__registerRegistrant___block_invoke_248(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![RTXPCActivityManager xpcActivitySetStateActivity:*(a1 + 32) state:a2])
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) identifier];
      v6 = [*(a1 + 48) identifier];
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2048;
      v12 = a2;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "manager, %@, run, identifier, %@, failed to set activity to state, %ld", &v7, 0x20u);
    }
  }
}

- (void)registerActivityWithIdentifier:(id)identifier criteria:(id)criteria handler:(id)handler deferHandler:(id)deferHandler
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  handlerCopy = handler;
  deferHandlerCopy = deferHandler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__RTXPCActivityManager_registerActivityWithIdentifier_criteria_handler_deferHandler___block_invoke;
  block[3] = &unk_2788CA698;
  block[4] = self;
  v20 = identifierCopy;
  v21 = criteriaCopy;
  v22 = handlerCopy;
  v23 = deferHandlerCopy;
  v15 = deferHandlerCopy;
  v16 = handlerCopy;
  v17 = criteriaCopy;
  v18 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_unregisterActivityWithIdentifier:(id)identifier handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    goto LABEL_14;
  }

  registrants = [(RTXPCActivityManager *)self registrants];
  v9 = [registrants objectForKey:identifierCopy];

  if (v9)
  {
    registrants2 = [(RTXPCActivityManager *)self registrants];
    [registrants2 removeObjectForKey:identifierCopy];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        identifier = [(RTXPCActivityManager *)self identifier];
        v14 = 138412546;
        v15 = identifier;
        v16 = 2112;
        v17 = v9;
        v13 = "manager, %@, unregister activity, registrant, %@";
LABEL_9:
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, v13, &v14, 0x16u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityXPCActivity);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      identifier = [(RTXPCActivityManager *)self identifier];
      v14 = 138412546;
      v15 = identifier;
      v16 = 2112;
      v17 = identifierCopy;
      v13 = "manager, %@, unregister activity, identifier, %@. no existing registrant";
      goto LABEL_9;
    }

LABEL_10:
  }

  +[RTXPCActivityManager xpcActivityUnregisterIdentifier:](RTXPCActivityManager, "xpcActivityUnregisterIdentifier:", [identifierCopy UTF8String]);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_14:
}

- (void)unregisterActivityWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTXPCActivityManager_unregisterActivityWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

+ (id)xpcActivityCopyCriteriaActivity:(id)activity
{
  v3 = xpc_activity_copy_criteria(activity);

  return v3;
}

@end