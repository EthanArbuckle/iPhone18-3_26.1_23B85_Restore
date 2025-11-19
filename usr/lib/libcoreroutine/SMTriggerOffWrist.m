@interface SMTriggerOffWrist
- (SMTriggerManagerProtocol)sessionMonitorDelegate;
- (SMTriggerOffWrist)initWithQueue:(id)a3 defaultsManager:(id)a4 dataProtectionManager:(id)a5 sessionStore:(id)a6 wristStateManager:(id)a7;
- (void)_onWristStateChangedNotification:(id)a3;
- (void)_setup;
- (void)_startMonitoringWithConfiguration:(id)a3 handler:(id)a4;
- (void)_stopMonitoringWithHandler:(id)a3;
- (void)onWristStateChangedNotification:(id)a3;
- (void)setup;
- (void)startMonitoringWithConfiguration:(id)a3 handler:(id)a4;
- (void)stopMonitoringWithHandler:(id)a3;
@end

@implementation SMTriggerOffWrist

- (SMTriggerOffWrist)initWithQueue:(id)a3 defaultsManager:(id)a4 dataProtectionManager:(id)a5 sessionStore:(id)a6 wristStateManager:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v30 = a7;
  if (!v13)
  {
    v28 = v16;
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[SMTriggerOffWrist initWithQueue:defaultsManager:dataProtectionManager:sessionStore:wristStateManager:]";
      v34 = 1024;
      LODWORD(v35) = 46;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }

    v16 = v28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = v16;
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      NSStringFromClass(v19);
      v20 = v25 = v14;
      NSStringFromSelector(a2);
      v21 = aSelectora = v15;
      *buf = 138412546;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, %@, initializing triggerOffWrist", buf, 0x16u);

      v15 = aSelectora;
      v14 = v25;
    }

    v16 = v29;
  }

  v31.receiver = self;
  v31.super_class = SMTriggerOffWrist;
  v22 = [(SMTriggerOffWrist *)&v31 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_queue, a3);
    objc_storeStrong(&v23->_defaultsManager, a4);
    objc_storeStrong(&v23->_dataProtectionManager, a5);
    objc_storeStrong(&v23->_sessionStore, a6);
    objc_storeStrong(&v23->_wristStateManager, a7);
    [(SMTriggerOffWrist *)v23 setup];
  }

  return v23;
}

- (void)setup
{
  v3 = [(SMTriggerOffWrist *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SMTriggerOffWrist_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)startMonitoringWithConfiguration:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SMTriggerOffWrist *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMTriggerOffWrist_startMonitoringWithConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_startMonitoringWithConfiguration:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v7)
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

    v14 = [(SMTriggerOffWrist *)self wristStateManager];
    v15 = +[(RTNotification *)RTWatchWristStateManagerWristStateChangedNotification];
    [v14 addObserver:self selector:sel_onWristStateChangedNotification_ name:v15];

    if (v8)
    {
      v8[2](v8, 0);
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

- (void)stopMonitoringWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(SMTriggerOffWrist *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SMTriggerOffWrist_stopMonitoringWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_stopMonitoringWithHandler:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
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

  v10 = [(SMTriggerOffWrist *)self wristStateManager];
  [v10 removeObserver:self];

  if (v5)
  {
    v5[2](v5, 0);
  }
}

- (void)onWristStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(SMTriggerOffWrist *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SMTriggerOffWrist_onWristStateChangedNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onWristStateChangedNotification:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v5 = [(SMTriggerOffWrist *)self defaultsManager];
  v6 = [v5 objectForKey:@"RTDefaultsSMTriggerOffWristSuppressNotifications"];
  v7 = [v6 BOOLValue];

  if (!v7)
  {
    v8 = v4;
    if ([v8 wristState]== 1)
    {
      v10 = [(SMTriggerOffWrist *)self offWristThresholdTimerAlarm];

      if (!v10)
      {
        objc_initWeak(&location, self);
        v11 = [RTXPCTimerAlarm alloc];
        v12 = [(SMTriggerOffWrist *)self queue];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __54__SMTriggerOffWrist__onWristStateChangedNotification___block_invoke;
        v23[3] = &unk_2788C7638;
        v23[4] = self;
        objc_copyWeak(&v24, &location);
        v13 = [(RTXPCTimerAlarm *)v11 initWithIdentifier:@"com.apple.routined.safetyMonitor.triggerOffWrist.offWristThresholdTimerAlarm" queue:v12 handler:v23];
        [(SMTriggerOffWrist *)self setOffWristThresholdTimerAlarm:v13];

        v14 = [(SMTriggerOffWrist *)self offWristThresholdTimerAlarm];
        v15 = [MEMORY[0x277CBEAA8] date];
        v16 = [v15 dateByAddingTimeInterval:30.0];
        v22 = 0;
        [v14 fireWithDate:v16 error:&v22];
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
      v19 = [(SMTriggerOffWrist *)self offWristThresholdTimerAlarm];

      if (v19)
      {
        v20 = [(SMTriggerOffWrist *)self offWristThresholdTimerAlarm];
        [v20 invalidate];

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