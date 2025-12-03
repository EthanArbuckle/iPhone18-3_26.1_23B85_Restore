@interface SMTriggerOffWrist
- (SMTriggerManagerProtocol)sessionMonitorDelegate;
- (SMTriggerOffWrist)initWithQueue:(id)queue defaultsManager:(id)manager dataProtectionManager:(id)protectionManager sessionStore:(id)store wristStateManager:(id)stateManager;
- (void)_onWristStateChangedNotification:(id)notification;
- (void)_setup;
- (void)_startMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)_stopMonitoringWithHandler:(id)handler;
- (void)onWristStateChangedNotification:(id)notification;
- (void)setup;
- (void)startMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)stopMonitoringWithHandler:(id)handler;
@end

@implementation SMTriggerOffWrist

- (SMTriggerOffWrist)initWithQueue:(id)queue defaultsManager:(id)manager dataProtectionManager:(id)protectionManager sessionStore:(id)store wristStateManager:(id)stateManager
{
  v36 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  managerCopy = manager;
  protectionManagerCopy = protectionManager;
  storeCopy = store;
  stateManagerCopy = stateManager;
  if (!queueCopy)
  {
    v28 = storeCopy;
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[SMTriggerOffWrist initWithQueue:defaultsManager:dataProtectionManager:sessionStore:wristStateManager:]";
      v34 = 1024;
      LODWORD(v35) = 46;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }

    storeCopy = v28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = storeCopy;
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      NSStringFromClass(v19);
      v20 = v25 = managerCopy;
      NSStringFromSelector(a2);
      v21 = aSelectora = protectionManagerCopy;
      *buf = 138412546;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, %@, initializing triggerOffWrist", buf, 0x16u);

      protectionManagerCopy = aSelectora;
      managerCopy = v25;
    }

    storeCopy = v29;
  }

  v31.receiver = self;
  v31.super_class = SMTriggerOffWrist;
  v22 = [(SMTriggerOffWrist *)&v31 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_queue, queue);
    objc_storeStrong(&v23->_defaultsManager, manager);
    objc_storeStrong(&v23->_dataProtectionManager, protectionManager);
    objc_storeStrong(&v23->_sessionStore, store);
    objc_storeStrong(&v23->_wristStateManager, stateManager);
    [(SMTriggerOffWrist *)v23 setup];
  }

  return v23;
}

- (void)setup
{
  queue = [(SMTriggerOffWrist *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SMTriggerOffWrist_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[SMTriggerOffWrist _setup]";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s", &v3, 0xCu);
    }
  }
}

- (void)startMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  queue = [(SMTriggerOffWrist *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMTriggerOffWrist_startMonitoringWithConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (void)_startMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (configurationCopy)
  {
    if (v9)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v20 = 138412546;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, start monitoring wrist state notifications", &v20, 0x16u);
      }
    }

    wristStateManager = [(SMTriggerOffWrist *)self wristStateManager];
    v15 = +[(RTNotification *)RTWatchWristStateManagerWristStateChangedNotification];
    [wristStateManager addObserver:self selector:sel_onWristStateChangedNotification_ name:v15];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else if (v9)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      v20 = 138412546;
      v21 = v18;
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, configuration is nil, monitoring cannot be started without valid configuration", &v20, 0x16u);
    }
  }
}

- (void)stopMonitoringWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMTriggerOffWrist *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SMTriggerOffWrist_stopMonitoringWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_stopMonitoringWithHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, stop monitoring for wrist state notifications", &v11, 0x16u);
    }
  }

  wristStateManager = [(SMTriggerOffWrist *)self wristStateManager];
  [wristStateManager removeObserver:self];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)onWristStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(SMTriggerOffWrist *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SMTriggerOffWrist_onWristStateChangedNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onWristStateChangedNotification:(id)notification
{
  v30 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [notification isKindOfClass:[RTWatchWristStateManagerWristStateChangedNotification class]]", buf, 2u);
    }

    goto LABEL_8;
  }

  defaultsManager = [(SMTriggerOffWrist *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsSMTriggerOffWristSuppressNotifications"];
  bOOLValue = [v6 BOOLValue];

  if (!bOOLValue)
  {
    v8 = notificationCopy;
    if ([v8 wristState]== 1)
    {
      offWristThresholdTimerAlarm = [(SMTriggerOffWrist *)self offWristThresholdTimerAlarm];

      if (!offWristThresholdTimerAlarm)
      {
        objc_initWeak(&location, self);
        v11 = [RTXPCTimerAlarm alloc];
        queue = [(SMTriggerOffWrist *)self queue];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __54__SMTriggerOffWrist__onWristStateChangedNotification___block_invoke;
        v23[3] = &unk_2788C7638;
        v23[4] = self;
        objc_copyWeak(&v24, &location);
        v13 = [(RTXPCTimerAlarm *)v11 initWithIdentifier:@"com.apple.routined.safetyMonitor.triggerOffWrist.offWristThresholdTimerAlarm" queue:queue handler:v23];
        [(SMTriggerOffWrist *)self setOffWristThresholdTimerAlarm:v13];

        offWristThresholdTimerAlarm2 = [(SMTriggerOffWrist *)self offWristThresholdTimerAlarm];
        date = [MEMORY[0x277CBEAA8] date];
        v16 = [date dateByAddingTimeInterval:30.0];
        v22 = 0;
        [offWristThresholdTimerAlarm2 fireWithDate:v16 error:&v22];
        v17 = v22;

        if (v17)
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v21 = [v17 description];
            *buf = 136315394;
            v27 = "[SMTriggerOffWrist _onWristStateChangedNotification:]";
            v28 = 2112;
            v29 = v21;
            _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%s watch separation buffer timer setup failed with error, %@", buf, 0x16u);
          }
        }

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }

    else if ([v8 wristState]== 2)
    {
      offWristThresholdTimerAlarm3 = [(SMTriggerOffWrist *)self offWristThresholdTimerAlarm];

      if (offWristThresholdTimerAlarm3)
      {
        offWristThresholdTimerAlarm4 = [(SMTriggerOffWrist *)self offWristThresholdTimerAlarm];
        [offWristThresholdTimerAlarm4 invalidate];

        [(SMTriggerOffWrist *)self setOffWristThresholdTimerAlarm:0];
      }
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = +[(RTNotification *)RTWatchWristStateManagerWristStateChangedNotification];
      *buf = 136315394;
      v27 = "[SMTriggerOffWrist _onWristStateChangedNotification:]";
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, device configured to suppress %@", buf, 0x16u);
    }

LABEL_8:
  }
}

void __54__SMTriggerOffWrist__onWristStateChangedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) offWristThresholdTimerAlarm];
      v4 = [v3 identifier];
      v11 = 136315394;
      v12 = "[SMTriggerOffWrist _onWristStateChangedNotification:]_block_invoke";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, %@ expired", &v11, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained offWristThresholdTimerAlarm];
  [v6 invalidate];

  v7 = [SMTriggerNotification alloc];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [(SMTriggerNotification *)v7 initWithTriggerCategory:19 SOSState:1 triggerName:@"SMTriggerOffWrist" date:v8 details:MEMORY[0x277CBEC10]];

  v10 = [WeakRetained sessionMonitorDelegate];
  [v10 onTriggerNotification:v9];
}

- (SMTriggerManagerProtocol)sessionMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->sessionMonitorDelegate);

  return WeakRetained;
}

@end