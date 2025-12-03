@interface SMTriggerDuration
- (BOOL)_startMonitoringWithConfig:(id)config error:(id *)error;
- (BOOL)_stopMonitoring;
- (SMTriggerDuration)initWithQueue:(id)queue defaultsManager:(id)manager sessionStore:(id)store;
- (SMTriggerManagerProtocol)sessionMonitorDelegate;
- (void)_initializeTimers;
- (void)modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)setup;
- (void)startMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)stopMonitoringWithHandler:(id)handler;
@end

@implementation SMTriggerDuration

- (SMTriggerDuration)initWithQueue:(id)queue defaultsManager:(id)manager sessionStore:(id)store
{
  v26 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  managerCopy = manager;
  storeCopy = store;
  if (!queueCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SMTriggerDuration initWithQueue:defaultsManager:sessionStore:]";
      v24 = 1024;
      LODWORD(v25) = 39;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }
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
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, initializing", buf, 0x16u);
    }
  }

  v21.receiver = self;
  v21.super_class = SMTriggerDuration;
  v18 = [(SMTriggerDuration *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_defaultsManager, manager);
    objc_storeStrong(&v19->_sessionStore, store);
    [(SMTriggerDuration *)v19 setup];
  }

  return v19;
}

- (void)setup
{
  queue = [(SMTriggerDuration *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SMTriggerDuration_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_initializeTimers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [RTXPCTimerAlarm alloc];
  queue = [(SMTriggerDuration *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SMTriggerDuration__initializeTimers__block_invoke;
  v9[3] = &unk_2788C4EA0;
  v9[4] = self;
  v5 = [(RTXPCTimerAlarm *)v3 initWithIdentifier:@"com.apple.routined.triggerDuration" queue:queue handler:v9];
  [(SMTriggerDuration *)self setXpcTimerAlarm:v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      xpcTimerAlarm = [(SMTriggerDuration *)self xpcTimerAlarm];
      identifier = [xpcTimerAlarm identifier];
      *buf = 136315394;
      v11 = "[SMTriggerDuration _initializeTimers]";
      v12 = 2112;
      v13 = identifier;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, initialized xpcTimerAlarm, %@", buf, 0x16u);
    }
  }
}

void __38__SMTriggerDuration__initializeTimers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SMTriggerDuration__initializeTimers__block_invoke_2;
  block[3] = &unk_2788C4EA0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __38__SMTriggerDuration__initializeTimers__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) xpcTimerAlarm];
      v4 = [v3 identifier];
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "timer %@ expired", &v9, 0xCu);
    }
  }

  v5 = [SMTriggerNotification alloc];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [(SMTriggerNotification *)v5 initWithTriggerCategory:7 SOSState:1 triggerName:@"DurationTrigger" date:v6 details:MEMORY[0x277CBEC10]];

  v8 = [*(a1 + 32) sessionMonitorDelegate];
  [v8 onTriggerNotification:v7];
}

- (void)startMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  time = [configurationCopy time];
  timeBound = [time timeBound];

  if (timeBound)
  {
    queue = [(SMTriggerDuration *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SMTriggerDuration_startMonitoringWithConfiguration_handler___block_invoke;
    block[3] = &unk_2788C4C20;
    block[4] = self;
    v17 = configurationCopy;
    v19 = a2;
    v18 = handlerCopy;
    dispatch_async(queue, block);
  }

  else if (handlerCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"endDate is nil";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = [v12 errorWithDomain:v13 code:7 userInfo:v14];

    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

void __62__SMTriggerDuration_startMonitoringWithConfiguration_handler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) time];
  v4 = [v3 timeBound];
  v14 = 0;
  [v2 _startMonitoringWithConfig:v4 error:&v14];
  v5 = v14;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = [*(a1 + 40) time];
      v11 = [v10 timeBound];
      v12 = [v11 stringFromDate];
      *buf = 138413058;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, endDate, %@, error, %@", buf, 0x2Au);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v5);
  }
}

- (BOOL)_startMonitoringWithConfig:(id)config error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  configCopy = config;
  if (configCopy)
  {
    xpcTimerAlarm = [(SMTriggerDuration *)self xpcTimerAlarm];

    if (!xpcTimerAlarm)
    {
      [(SMTriggerDuration *)self _initializeTimers];
    }

    xpcTimerAlarm2 = [(SMTriggerDuration *)self xpcTimerAlarm];
    v20 = 0;
    [xpcTimerAlarm2 fireWithDate:configCopy error:&v20];
    v10 = v20;

    if (error)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    if (!v11)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v22 = v18;
        v23 = 2112;
        v24 = v19;
        v25 = 2112;
        v26 = v10;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v14 = v10;
      *error = v10;
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"endDate");
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)stopMonitoringWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMTriggerDuration *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SMTriggerDuration_stopMonitoringWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __47__SMTriggerDuration_stopMonitoringWithHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _stopMonitoring];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 48));
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@", &v7, 0x16u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (BOOL)_stopMonitoring
{
  xpcTimerAlarm = [(SMTriggerDuration *)self xpcTimerAlarm];
  [xpcTimerAlarm invalidate];

  [(SMTriggerDuration *)self setXpcTimerAlarm:0];
  return 1;
}

- (void)modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  queue = [(SMTriggerDuration *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SMTriggerDuration_modifyMonitoringWithConfiguration_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v12[4] = self;
  v13 = configurationCopy;
  v14 = handlerCopy;
  v15 = a2;
  v10 = configurationCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

uint64_t __63__SMTriggerDuration_modifyMonitoringWithConfiguration_handler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) xpcTimerAlarm];

  if (!v2 && *(a1 + 48))
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277D01448];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Can not modify a duration trigger that has not been initialized yet";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v6 = [v3 errorWithDomain:v4 code:7 userInfo:v5];

    (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 32) stopMonitoringWithHandler:*(a1 + 48)];
  [*(a1 + 32) startMonitoringWithConfiguration:*(a1 + 40) handler:*(a1 + 48)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@", &v12, 0x16u);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (SMTriggerManagerProtocol)sessionMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->sessionMonitorDelegate);

  return WeakRetained;
}

@end