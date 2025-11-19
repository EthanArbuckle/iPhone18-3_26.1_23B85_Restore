@interface RTWatchdogManager
- (RTWatchdogManager)initWithLifeCycleManager:(id)a3 defaultsManager:(id)a4 platform:(id)a5;
- (RTWatchdogManager)initWithTimerManager:(id)a3 lifeCycleManager:(id)a4 defaultsManager:(id)a5 platform:(id)a6;
- (id)_getRecordsWithCriteria:(BOOL)a3;
- (void)_addObject:(id)a3;
- (void)_checkInAllRecords;
- (void)_checkInAllStartedRecords:(id)a3;
- (void)_checkInAllStoppedRecords:(id)a3;
- (void)_removeObject:(id)a3;
- (void)_shutdownWithHandler:(id)a3;
- (void)_timeoutExceeded:(id)a3;
- (void)addObject:(id)a3;
- (void)removeObject:(id)a3;
- (void)setTimeoutAndFireInterval;
- (void)shutdownWithHandler:(id)a3;
@end

@implementation RTWatchdogManager

- (RTWatchdogManager)initWithLifeCycleManager:(id)a3 defaultsManager:(id)a4 platform:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      v12 = 0;
      goto LABEL_8;
    }

    v18 = 0;
    v14 = "Invalid parameter not satisfying: lifecycleManager";
    v15 = &v18;
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    goto LABEL_7;
  }

  if (!v9)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 0;
    v14 = "Invalid parameter not satisfying: defaultsManager";
    v15 = &v17;
    goto LABEL_10;
  }

  v11 = objc_opt_new();
  self = [(RTWatchdogManager *)self initWithTimerManager:v11 lifeCycleManager:v8 defaultsManager:v9 platform:v10];

  v12 = self;
LABEL_8:

  return v12;
}

- (RTWatchdogManager)initWithTimerManager:(id)a3 lifeCycleManager:(id)a4 defaultsManager:(id)a5 platform:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v12)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: lifecycleManager";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_14;
  }

  if (!v11)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_13;
  }

  if (!v13)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: defaultsManager";
      goto LABEL_13;
    }

LABEL_14:

    v22 = 0;
    goto LABEL_18;
  }

  v38.receiver = self;
  v38.super_class = RTWatchdogManager;
  v15 = [(RTWatchdogManager *)&v38 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_lifecycleManager, a4);
    objc_storeStrong(p_isa + 2, a3);
    objc_storeStrong(p_isa + 6, a5);
    v17 = p_isa;
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v17 UTF8String];
    }

    else
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v17];
      v19 = [v23 UTF8String];
    }

    v24 = dispatch_queue_create(v19, v18);

    v25 = v17[7];
    v17[7] = v24;

    v26 = objc_opt_new();
    v27 = v17[4];
    v17[4] = v26;

    v28 = objc_opt_new();
    v29 = v17[5];
    v17[5] = v28;

    objc_storeStrong(v17 + 8, a6);
    [v17 setTimeoutAndFireInterval];
    v30 = p_isa[2];
    v31 = [v17 queue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __84__RTWatchdogManager_initWithTimerManager_lifeCycleManager_defaultsManager_platform___block_invoke;
    v36[3] = &unk_2788C4EA0;
    v32 = v17;
    v37 = v32;
    v33 = [v30 timerWithIdentifier:@"RTWatchdogHeartbeatTimer" queue:v31 handler:v36];
    v34 = v32[1];
    v32[1] = v33;

    [v32[1] fireWithInterval:*(v32 + 9)];
    [v32[1] resume];
  }

  self = p_isa;
  v22 = self;
LABEL_18:

  return v22;
}

- (void)setTimeoutAndFireInterval
{
  v14 = *MEMORY[0x277D85DE8];
  *&self->_fireInterval = xmmword_230B01260;
  if ([(RTPlatform *)self->_platform internalInstall])
  {
    v3 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWatchdogManagerFireIntervalKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      self->_fireInterval = v4;
    }

    v5 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWatchdogManagerTimeoutKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      self->_timeout = v6;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityDefaults);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      fireInterval = self->_fireInterval;
      timeout = self->_timeout;
      v10 = 134218240;
      v11 = timeout;
      v12 = 2048;
      v13 = fireInterval;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Setting RTWatchdogManager default timeout, %f, fireInterval, %f", &v10, 0x16u);
    }
  }
}

- (void)addObject:(id)a3
{
  v4 = a3;
  v5 = [(RTWatchdogManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__RTWatchdogManager_addObject___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_addObject:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  timeout = self->_timeout;
  if (objc_opt_respondsToSelector())
  {
    [v4 timeout];
    timeout = v6;
  }

  v7 = [[RTWatchdogRecord alloc] initWithObject:v4 timeout:timeout];
  [(NSMutableArray *)self->_records addObject:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWatchdog);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Adding record, %@", &v9, 0xCu);
    }
  }
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  v5 = [(RTWatchdogManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__RTWatchdogManager_removeObject___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_removeObject:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__RTWatchdogManager__removeObject___block_invoke;
  v8[3] = &unk_2788CD7C0;
  v9 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v8];
  [(NSMutableArray *)self->_records filterUsingPredicate:v7];
}

uint64_t __35__RTWatchdogManager__removeObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (id)_getRecordsWithCriteria:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(RTWatchdogManager *)self records];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isPendingCheckIn] == v3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_checkInAllStartedRecords:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] now];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    v11 = MEMORY[0x277D86220];
    *&v8 = 138412546;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 checkInStartDate];
        [v5 timeIntervalSinceDate:v14];
        v16 = v15;

        [v13 timeout];
        if (v16 >= v17)
        {
          [(RTWatchdogManager *)self _timeoutExceeded:v13];
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilityWatchdog);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v19;
            v25 = v13;
            v26 = 2048;
            v27 = v16;
            _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "Pending check-in from record, %@, time since check in started, %f", buf, 0x16u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }
}

- (void)_timeoutExceeded:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityWatchdog);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_fault_impl(&dword_2304B3000, v5, OS_LOG_TYPE_FAULT, "Hung record, %@, exiting", &v11, 0xCu);
  }

  v6 = [(RTWatchdogManager *)self metrics];
  v7 = [v4 object];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v4 getLatency];
  [v6 submitToCoreAnalytics:v9 type:2 duration:?];

  v10 = [(RTWatchdogManager *)self lifecycleManager];
  [v10 exit];
}

- (void)_checkInAllStoppedRecords:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [MEMORY[0x277CBEAA8] now];
        [v8 setCheckInStartDate:v9];

        [v8 setCheckInStopDate:0];
        v10 = [v8 object];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __47__RTWatchdogManager__checkInAllStoppedRecords___block_invoke;
        v12[3] = &unk_2788C7E48;
        v12[4] = self;
        v12[5] = v8;
        [v10 checkInWithHandler:v12];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void __47__RTWatchdogManager__checkInAllStoppedRecords___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTWatchdogManager__checkInAllStoppedRecords___block_invoke_2;
  block[3] = &unk_2788C4EA0;
  block[4] = *(a1 + 40);
  dispatch_async(v2, block);
}

void __47__RTWatchdogManager__checkInAllStoppedRecords___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] now];
  [*(a1 + 32) setCheckInStopDate:v2];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityWatchdog);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "Checked in record, %@", &v5, 0xCu);
    }
  }
}

- (void)_checkInAllRecords
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(RTWatchdogManager *)self _getRecordsWithCriteria:1];
  v4 = [(RTWatchdogManager *)self _getRecordsWithCriteria:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWatchdog);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134218240;
      v7 = [v3 count];
      v8 = 2048;
      v9 = [v4 count];
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "Checking in all records, %lu started, %lu stopped", &v6, 0x16u);
    }
  }

  [(RTWatchdogManager *)self _checkInAllStartedRecords:v3];
  [(RTWatchdogManager *)self _checkInAllStoppedRecords:v4];
}

- (void)shutdownWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTWatchdogManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__RTWatchdogManager_shutdownWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_shutdownWithHandler:(id)a3
{
  v6 = a3;
  [(RTTimer *)self->_watchdogHeartbeatTimer invalidate];
  watchdogHeartbeatTimer = self->_watchdogHeartbeatTimer;
  self->_watchdogHeartbeatTimer = 0;

  [(NSMutableArray *)self->_records removeAllObjects];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

@end