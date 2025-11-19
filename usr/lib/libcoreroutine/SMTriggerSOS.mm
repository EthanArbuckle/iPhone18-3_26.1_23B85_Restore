@interface SMTriggerSOS
- (SMTriggerManagerProtocol)sessionMonitorDelegate;
- (SMTriggerSOS)initWithQueue:(id)a3 sessionStore:(id)a4;
- (void)_handleSOSNotificationForReason:(id)a3;
- (void)_notifySOSTriggerWithCategory:(unint64_t)a3;
- (void)_startMonitoringWithConfiguration:(id)a3 handler:(id)a4;
- (void)_stopMonitoringWithHandler:(id)a3;
- (void)handleSOSNotificationForReason:(id)a3;
- (void)onRemoteEmergencyContactsNotified:(unint64_t)a3;
- (void)startMonitoringWithConfiguration:(id)a3 handler:(id)a4;
- (void)stopMonitoringWithHandler:(id)a3;
@end

@implementation SMTriggerSOS

- (SMTriggerSOS)initWithQueue:(id)a3 sessionStore:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[SMTriggerSOS initWithQueue:sessionStore:]";
      v33 = 1024;
      LODWORD(v34) = 28;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, initializing triggerSOS", buf, 0x16u);
    }
  }

  v29.receiver = self;
  v29.super_class = SMTriggerSOS;
  v15 = [(SMTriggerSOS *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a3);
    objc_storeStrong(&v16->_sessionStore, a4);
    v17 = objc_opt_new();
    sosEvents = v16->_sosEvents;
    v16->_sosEvents = v17;

    v19 = objc_opt_new();
    darwinSOSNotificationHelper = v16->_darwinSOSNotificationHelper;
    v16->_darwinSOSNotificationHelper = v19;

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D495B8]];
    v30[0] = v21;
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D495C8]];
    v30[1] = v22;
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D495D0]];
    v30[2] = v23;
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D495C0]];
    v30[3] = v24;
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D495B0]];
    v30[4] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
    SOSNotifications = v16->_SOSNotifications;
    v16->_SOSNotifications = v26;
  }

  return v16;
}

- (void)startMonitoringWithConfiguration:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SMTriggerSOS *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SMTriggerSOS_startMonitoringWithConfiguration_handler___block_invoke;
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
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(SMTriggerSOS *)self SOSNotifications];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [(SMTriggerSOS *)self darwinSOSNotificationHelper];
        [v13 addObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:v12 callback:onSOSNotification info:0 suspensionBehavior:1];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138412546;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, start monitoring SOS darwin notifications", buf, 0x16u);
    }
  }

  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)stopMonitoringWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(SMTriggerSOS *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SMTriggerSOS_stopMonitoringWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_stopMonitoringWithHandler:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(SMTriggerSOS *)self SOSNotifications];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [(SMTriggerSOS *)self darwinSOSNotificationHelper];
        [v12 removeObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:v11 info:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, stop monitoring for SOS darwin notifications", buf, 0x16u);
    }
  }

  if (v5)
  {
    v5[2](v5, 0);
  }
}

- (void)onRemoteEmergencyContactsNotified:(unint64_t)a3
{
  v5 = [(SMTriggerSOS *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SMTriggerSOS_onRemoteEmergencyContactsNotified___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)handleSOSNotificationForReason:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, handling SOS trigger notification for reason %@", buf, 0x20u);
    }
  }

  v10 = [(SMTriggerSOS *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__SMTriggerSOS_handleSOSNotificationForReason___block_invoke;
  v12[3] = &unk_2788C4A70;
  v12[4] = self;
  v13 = v5;
  v11 = v5;
  dispatch_async(v10, v12);
}

- (void)_handleSOSNotificationForReason:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(SMTriggerSOS *)self SOSNotifications];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 isEqualToString:*(*(&v21 + 1) + 8 * i)])
        {
          v10 = [MEMORY[0x277CBEAA8] date];
          v11 = [(SMTriggerSOS *)self sosEvents];
          [v11 setObject:v10 forKeyedSubscript:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D495B8]];
  v13 = [v4 isEqualToString:v12];

  if (v13)
  {
    v14 = 11;
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D495C8]];
    v16 = [v4 isEqualToString:v15];

    if (v16)
    {
      v14 = 13;
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D495C0]];
      v18 = [v4 isEqualToString:v17];

      if (v18)
      {
        v14 = 12;
      }

      else
      {
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D495B0]];
        v20 = [v4 isEqualToString:v19];

        if (v20)
        {
          v14 = 10;
        }

        else
        {
          v14 = 14;
        }
      }
    }
  }

  [(SMTriggerSOS *)self _notifySOSTriggerWithCategory:v14];
}

- (void)_notifySOSTriggerWithCategory:(unint64_t)a3
{
  v5 = [SMTriggerNotification alloc];
  v6 = [MEMORY[0x277CBEAA8] date];
  v8 = [(SMTriggerNotification *)v5 initWithTriggerCategory:a3 SOSState:2 triggerName:@"SMTriggerSOS" date:v6 details:MEMORY[0x277CBEC10]];

  v7 = [(SMTriggerSOS *)self sessionMonitorDelegate];
  [v7 onTriggerNotification:v8];
}

- (SMTriggerManagerProtocol)sessionMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->sessionMonitorDelegate);

  return WeakRetained;
}

@end