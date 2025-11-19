@interface SMWatchdog
- (SMWatchdog)initWithDefaultsManager:(id)a3 handler:(id)a4;
- (double)_fetchTimeoutValueForState:(unint64_t)a3;
- (id)_createRecord:(id)a3 timeoutLimit:(double)a4;
- (void)_addRecord:(id)a3;
- (void)_addStateToWatchdog:(id)a3;
- (void)_checkInAllRecords;
- (void)_removeRecord:(id)a3;
- (void)_setUpWatchdogTimerToFireWithDate:(id)a3;
- (void)_shutdownWithHandler:(id)a3;
- (void)_updateTimerBasedOnRecords;
- (void)_updateTimerIfNeeded:(id)a3;
- (void)addRecord:(id)a3;
- (void)handleStateChange:(id)a3 forActiveDevice:(BOOL)a4;
- (void)onSessionResumedWithState:(id)a3 forActiveDevice:(BOOL)a4;
- (void)onSessionStateChanged:(id)a3 forActiveDevice:(BOOL)a4;
- (void)receiveHeartbeatForSessionID:(id)a3 handler:(id)a4;
- (void)removeRecord:(id)a3;
- (void)shutdownWithHandler:(id)a3;
@end

@implementation SMWatchdog

- (SMWatchdog)initWithDefaultsManager:(id)a3 handler:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v35.receiver = self;
    v35.super_class = SMWatchdog;
    v9 = [(SMWatchdog *)&v35 init];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [(SMWatchdog *)v11 UTF8String];
      }

      else
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v11];
        v13 = [v16 UTF8String];
      }

      v17 = dispatch_queue_create(v13, v12);

      queue = v11->_queue;
      v11->_queue = v17;

      v19 = _Block_copy(v8);
      handler = v11->_handler;
      v11->_handler = v19;

      objc_storeStrong(&v11->_defaultsManager, a3);
      v21 = objc_opt_new();
      timerManager = v11->_timerManager;
      v11->_timerManager = v21;

      v23 = objc_opt_new();
      records = v11->_records;
      v11->_records = v23;

      watchdogTimer = v11->_watchdogTimer;
      v11->_watchdogTimer = 0;

      watchdogTimerFireDate = v11->_watchdogTimerFireDate;
      v11->_watchdogTimerFireDate = 0;

      defaultsManager = v11->_defaultsManager;
      v28 = *MEMORY[0x277D4AD08];
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D4AD08]];
      v30 = [(RTDefaultsManager *)defaultsManager objectForKey:@"RTDefaultsSMHeartbeatInterval" value:v29];
      [v30 doubleValue];
      v11->_heartbeatInterval = v31;

      if (v11->_heartbeatInterval != v28 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          heartbeatInterval = v11->_heartbeatInterval;
          *buf = 136316162;
          v37 = "[SMWatchdog initWithDefaultsManager:handler:]";
          v38 = 2080;
          v39 = "overriding safety monitor heartbeat interval";
          v40 = 2048;
          v41 = v28;
          v42 = 2048;
          v43 = heartbeatInterval;
          v44 = 2112;
          v45 = @"RTDefaultsSMHeartbeatInterval";
          _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
        }
      }
    }

    self = v10;
    v15 = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)onSessionResumedWithState:(id)a3 forActiveDevice:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315651;
      v9 = "[SMWatchdog onSessionResumedWithState:forActiveDevice:]";
      v10 = 2117;
      v11 = v6;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@, activeDevice, %d", &v8, 0x1Cu);
    }
  }

  [(SMWatchdog *)self handleStateChange:v6 forActiveDevice:v4];
}

- (void)onSessionStateChanged:(id)a3 forActiveDevice:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315651;
      v9 = "[SMWatchdog onSessionStateChanged:forActiveDevice:]";
      v10 = 2117;
      v11 = v6;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@, activeDevice, %d", &v8, 0x1Cu);
    }
  }

  [(SMWatchdog *)self handleStateChange:v6 forActiveDevice:v4];
}

- (void)handleStateChange:(id)a3 forActiveDevice:(BOOL)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    if ([v6 sessionState] == 1 || !objc_msgSend(v7, "sessionState"))
    {
      [(SMWatchdog *)self shutdownWithHandler:&__block_literal_global_80];
      goto LABEL_10;
    }

    v8 = [(SMWatchdog *)self mostRecentRecord];
    v9 = [v8 state];
    v10 = [v7 isEqual:v9];

    if (!v10)
    {
      v13 = [(SMWatchdog *)self queue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__SMWatchdog_handleStateChange_forActiveDevice___block_invoke_11;
      v14[3] = &unk_2788C4A70;
      v14[4] = self;
      v15 = v7;
      dispatch_async(v13, v14);

      goto LABEL_10;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[SMWatchdog handleStateChange:forActiveDevice:]";
      v12 = "%s, received duplicate state change ";
LABEL_13:
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[SMWatchdog handleStateChange:forActiveDevice:]";
      v12 = "%s, received state change for non-active device";
      goto LABEL_13;
    }
  }

LABEL_10:
}

void __48__SMWatchdog_handleStateChange_forActiveDevice___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMWatchdog handleStateChange:forActiveDevice:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, shutdown watchdog with error, %@", &v4, 0x16u);
    }
  }
}

- (void)_updateTimerBasedOnRecords
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_records count])
  {
    v3 = [MEMORY[0x277CBEAA8] distantFuture];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(SMWatchdog *)self records];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        v9 = v3;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * v8);
          v11 = [v10 startDate];
          [v10 timeout];
          v12 = [v11 dateByAddingTimeInterval:?];

          v3 = [v9 earlierDate:v12];

          ++v8;
          v9 = v3;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v3 stringFromDate];
        *buf = 136315394;
        v20 = "[SMWatchdog _updateTimerBasedOnRecords]";
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, Updating earliest fire date, %@", buf, 0x16u);
      }
    }

    [(SMWatchdog *)self _updateTimerIfNeeded:v3];
  }

  else
  {

    [(SMWatchdog *)self _shutdownWithHandler:&__block_literal_global_14];
  }
}

void __40__SMWatchdog__updateTimerBasedOnRecords__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v0 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      v1 = 136315138;
      v2 = "[SMWatchdog _updateTimerBasedOnRecords]_block_invoke";
      _os_log_impl(&dword_2304B3000, v0, OS_LOG_TYPE_INFO, "%s, Removing timer as there are no records left", &v1, 0xCu);
    }
  }
}

- (void)_updateTimerIfNeeded:(id)a3
{
  v4 = a3;
  watchdogTimerFireDate = self->_watchdogTimerFireDate;
  v6 = v4;
  if (!watchdogTimerFireDate || ![(NSDate *)watchdogTimerFireDate isEqualToDate:v4])
  {
    [(SMWatchdog *)self _setUpWatchdogTimerToFireWithDate:v6];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_setUpWatchdogTimerToFireWithDate:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 stringFromDate];
      *buf = 136315394;
      v20 = "[SMWatchdog _setUpWatchdogTimerToFireWithDate:]";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Set up watchdog timer with date, %@", buf, 0x16u);
    }
  }

  if (v4)
  {
    v7 = [MEMORY[0x277CBEAA8] distantFuture];
    v8 = [v4 isEqualToDate:v7];

    if ((v8 & 1) == 0)
    {
      [(RTTimer *)self->_watchdogTimer invalidate];
      objc_initWeak(buf, self);
      timerManager = self->_timerManager;
      v10 = [(SMWatchdog *)self queue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __48__SMWatchdog__setUpWatchdogTimerToFireWithDate___block_invoke;
      v17[3] = &unk_2788C5908;
      objc_copyWeak(&v18, buf);
      v11 = [(RTTimerManager *)timerManager timerWithIdentifier:@"SMWatchdogHeartbeatTimer" queue:v10 handler:v17];
      watchdogTimer = self->_watchdogTimer;
      self->_watchdogTimer = v11;

      [v4 timeIntervalSinceNow];
      v13 = self->_watchdogTimer;
      if (v14 <= 0.0)
      {
        [(RTTimer *)self->_watchdogTimer fireAfterDelay:0.0];
        v15 = [MEMORY[0x277CBEAA8] now];
      }

      else
      {
        [v4 timeIntervalSinceNow];
        [(RTTimer *)v13 fireAfterDelay:?];
        v15 = v4;
      }

      watchdogTimerFireDate = self->_watchdogTimerFireDate;
      self->_watchdogTimerFireDate = v15;

      [(RTTimer *)self->_watchdogTimer resume];
      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }
  }
}

void __48__SMWatchdog__setUpWatchdogTimerToFireWithDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained watchdogTimer];
  [v1 invalidate];

  [WeakRetained setWatchdogTimerFireDate:0];
  [WeakRetained _checkInAllRecords];
}

- (void)addRecord:(id)a3
{
  v4 = a3;
  v5 = [(SMWatchdog *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__SMWatchdog_addRecord___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_addRecord:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 description];
      v8 = 136315395;
      v9 = "[SMWatchdog _addRecord:]";
      v10 = 2117;
      v11 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Adding record, %{sensitive}@", &v8, 0x16u);
    }
  }

  if (v4)
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    [v4 setStartDate:v7];

    [(NSMutableArray *)self->_records addObject:v4];
    [(SMWatchdog *)self _updateTimerBasedOnRecords];
  }
}

- (void)removeRecord:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SMWatchdog *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__SMWatchdog_removeRecord___block_invoke;
    v6[3] = &unk_2788C4A70;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

uint64_t __27__SMWatchdog_removeRecord___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeRecord:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _updateTimerBasedOnRecords];
}

- (void)_removeRecord:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 description];
      v7 = [(SMWatchdog *)self records];
      *buf = 136315651;
      v16 = "[SMWatchdog _removeRecord:]";
      v17 = 2117;
      v18 = v6;
      v19 = 2048;
      v20 = [v7 count];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Removing record, %{sensitive}@, Remaining records, %lu", buf, 0x20u);
    }
  }

  if (v4)
  {
    v8 = MEMORY[0x277CCAC30];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __28__SMWatchdog__removeRecord___block_invoke;
    v13[3] = &unk_2788CCB18;
    v14 = v4;
    v9 = [v8 predicateWithBlock:v13];
    [(NSMutableArray *)self->_records filterUsingPredicate:v9];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(SMWatchdog *)self records];
        v12 = [v11 count];
        *buf = 136315394;
        v16 = "[SMWatchdog _removeRecord:]";
        v17 = 2048;
        v18 = v12;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, Remaining records, %lu", buf, 0x16u);
      }
    }
  }
}

- (void)_checkInAllRecords
{
  v38 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(SMWatchdog *)self records];
      *buf = 136315394;
      v32 = "[SMWatchdog _checkInAllRecords]";
      v33 = 2048;
      v34 = [v4 count];
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, Checking in all records, %lu", buf, 0x16u);
    }
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = MEMORY[0x277CBEA60];
  v7 = [(SMWatchdog *)self records];
  v8 = [v6 arrayWithArray:v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v28;
    v14 = MEMORY[0x277D86220];
    *&v11 = 138412802;
    v26 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 startDate];
        [v5 timeIntervalSinceDate:v17];
        v19 = v18;

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v24 = [v16 description];
            [v16 timeout];
            *buf = v26;
            v32 = v24;
            v33 = 2048;
            v34 = v25;
            v35 = 2048;
            v36 = v19;
            _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "Checking on record, %@, timeout, %f, time since check in started, %f", buf, 0x20u);
          }
        }

        [v16 timeout];
        if (v19 >= v21)
        {
          v22 = [(SMWatchdog *)self handler];
          v23 = [v16 state];
          (v22)[2](v22, v23, 0);

          [(SMWatchdog *)self _removeRecord:v16];
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  [(SMWatchdog *)self _updateTimerBasedOnRecords];
}

- (void)_addStateToWatchdog:(id)a3
{
  v8 = a3;
  -[SMWatchdog _fetchTimeoutValueForState:](self, "_fetchTimeoutValueForState:", [v8 sessionState]);
  if (v4 > 0.0)
  {
    v5 = [(SMWatchdog *)self _createRecord:v8 timeoutLimit:?];
    if (v5)
    {
      v6 = v5;
      v7 = [(SMWatchdog *)self mostRecentRecord];
      [(SMWatchdog *)self _removeRecord:v7];

      [(SMWatchdog *)self _updateTimerBasedOnRecords];
      [(SMWatchdog *)self _addRecord:v6];
      [(SMWatchdog *)self setMostRecentRecord:v6];
    }
  }
}

- (double)_fetchTimeoutValueForState:(unint64_t)a3
{
  result = 0.0;
  if (a3 <= 8)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        v17 = [(SMWatchdog *)self defaultsManager];
        v6 = @"RTDefaultsSMWatchdogDestinationAnomalyStateTimeout";
        v18 = [v17 objectForKey:@"RTDefaultsSMWatchdogDestinationAnomalyStateTimeout"];

        if (!v18)
        {
          v8 = MEMORY[0x277D4AEC0];
          return *v8;
        }
      }

      else
      {
        v11 = [(SMWatchdog *)self defaultsManager];
        v6 = @"RTDefaultsSMWatchdogRoundTripAnomalyStateTimeout";
        v12 = [v11 objectForKey:@"RTDefaultsSMWatchdogRoundTripAnomalyStateTimeout"];

        if (!v12)
        {
          v8 = MEMORY[0x277D4AEE8];
          return *v8;
        }
      }
    }

    else if (a3 == 2)
    {
      v15 = [(SMWatchdog *)self defaultsManager];
      v6 = @"RTDefaultsSMWatchdogMonitoringStateTimeout";
      v16 = [v15 objectForKey:@"RTDefaultsSMWatchdogMonitoringStateTimeout"];

      if (!v16)
      {
        v8 = MEMORY[0x277D4AED8];
        return *v8;
      }
    }

    else
    {
      if (a3 != 4)
      {
        return result;
      }

      v9 = [(SMWatchdog *)self defaultsManager];
      v6 = @"RTDefaultsSMWatchdogCacheReleaseStateTimeout";
      v10 = [v9 objectForKey:@"RTDefaultsSMWatchdogCacheReleaseStateTimeout"];

      if (!v10)
      {
        v8 = MEMORY[0x277D4AEB8];
        return *v8;
      }
    }

LABEL_28:
    v25 = [(SMWatchdog *)self defaultsManager];
    v26 = [v25 objectForKey:v6];
    [v26 doubleValue];
    v28 = v27;

    return v28;
  }

  if (a3 <= 10)
  {
    if (a3 == 9)
    {
      v21 = [(SMWatchdog *)self defaultsManager];
      v6 = @"RTDefaultsSMWatchdogTimerEndedPromptStateTimeout";
      v22 = [v21 objectForKey:@"RTDefaultsSMWatchdogTimerEndedPromptStateTimeout"];

      if (!v22)
      {
        v8 = MEMORY[0x277D4AEF0];
        return *v8;
      }
    }

    else
    {
      v13 = [(SMWatchdog *)self defaultsManager];
      v6 = @"RTDefaultsSMWatchdogInitializingStateTimeout";
      v14 = [v13 objectForKey:@"RTDefaultsSMWatchdogInitializingStateTimeout"];

      if (!v14)
      {
        v8 = MEMORY[0x277D4AED0];
        return *v8;
      }
    }

    goto LABEL_28;
  }

  if (a3 == 11)
  {
    v19 = [(SMWatchdog *)self defaultsManager];
    v6 = @"RTDefaultsSMWatchdogReadyStateTimeout";
    v20 = [v19 objectForKey:@"RTDefaultsSMWatchdogReadyStateTimeout"];

    if (!v20)
    {
      v8 = MEMORY[0x277D4AEE0];
      return *v8;
    }

    goto LABEL_28;
  }

  if (a3 == 12)
  {
    v23 = [(SMWatchdog *)self defaultsManager];
    v6 = @"RTDefaultsSMWatchdogEndAwarenessStateTimeout";
    v24 = [v23 objectForKey:@"RTDefaultsSMWatchdogEndAwarenessStateTimeout"];

    if (!v24)
    {
      v8 = MEMORY[0x277D4AEC8];
      return *v8;
    }

    goto LABEL_28;
  }

  if (a3 != 14)
  {
    return result;
  }

  v5 = [(SMWatchdog *)self defaultsManager];
  v6 = @"RTDefaultsSMWatchdogWorkoutAnomalyStateTimeoutKey";
  v7 = [v5 objectForKey:@"RTDefaultsSMWatchdogWorkoutAnomalyStateTimeoutKey"];

  if (v7)
  {
    goto LABEL_28;
  }

  v8 = MEMORY[0x277D4AEF8];
  return *v8;
}

- (id)_createRecord:(id)a3 timeoutLimit:(double)a4
{
  v6 = a3;
  v7 = [v6 sessionStateTransitionDate];
  [v7 timeIntervalSinceNow];
  v9 = v8;

  v10 = v9 + a4;
  v11 = [(SMWatchdog *)self mostRecentRecord];

  if (!v11)
  {
    if ([v6 sessionState] == 10 || objc_msgSend(v6, "sessionState") == 11)
    {
      [(SMWatchdog *)self heartbeatInterval];
      if (v10 < v12 + v12)
      {
        [(SMWatchdog *)self heartbeatInterval];
        v10 = v13 + v13;
      }
    }

    if ([v6 isPromptState])
    {
      [(SMWatchdog *)self heartbeatInterval];
      if (v10 < v14)
      {
        [(SMWatchdog *)self heartbeatInterval];
        v10 = v15;
      }
    }
  }

  v16 = [[SMWatchdogRecord alloc] initWithState:v6 timeout:v10];

  return v16;
}

- (void)receiveHeartbeatForSessionID:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[SMWatchdog receiveHeartbeatForSessionID:handler:]";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, sessionID, %@", buf, 0x16u);
    }
  }

  v9 = [(SMWatchdog *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SMWatchdog_receiveHeartbeatForSessionID_handler___block_invoke;
  block[3] = &unk_2788C67D8;
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(v9, block);
}

void __51__SMWatchdog_receiveHeartbeatForSessionID_handler___block_invoke(uint64_t a1)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) watchdogTimerFireDate];

  if (!v2)
  {
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277D4ACD0];
    v49 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Watchdog is not active"];
    v50[0] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v50;
    v17 = &v49;
LABEL_12:
    v21 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v22 = v12;
    v23 = v13;
    v24 = 11;
LABEL_13:
    v25 = [v22 initWithDomain:v23 code:v24 userInfo:v21];

    (*(*(a1 + 48) + 16))();
    return;
  }

  v3 = [*(a1 + 32) mostRecentRecord];

  if (!v3)
  {
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277D4ACD0];
    v47 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"No Watchdog record to modify"];
    v48 = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v48;
    v17 = &v47;
    goto LABEL_12;
  }

  v4 = *(a1 + 40);
  if (!v4 || ([*(a1 + 32) mostRecentRecord], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "state"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "configuration"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "sessionID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v4, "isEqual:", v8), v8, v7, v6, v5, (v9 & 1) == 0))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 40);
      v35 = [*(a1 + 32) mostRecentRecord];
      v36 = [v35 state];
      v37 = [v36 configuration];
      v38 = [v37 sessionID];
      *buf = 136315650;
      v42 = "[SMWatchdog receiveHeartbeatForSessionID:handler:]_block_invoke";
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v38;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%s, invalid session ID %@, current sessionID, %@", buf, 0x20u);
    }

    v19 = objc_alloc(MEMORY[0x277CCA9B8]);
    v20 = *MEMORY[0x277D4ACD0];
    v39 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s cannot be completed since sessionID passed in does not match current sessionID", "-[SMWatchdog receiveHeartbeatForSessionID:handler:]_block_invoke"];
    v40 = v14;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v22 = v19;
    v23 = v20;
    v24 = 7;
    goto LABEL_13;
  }

  v10 = [*(a1 + 32) mostRecentRecord];
  v11 = [v10 state];
  if ([v11 sessionState] == 10)
  {

LABEL_15:
    v29 = [*(a1 + 32) mostRecentRecord];
    v30 = [v29 state];
    v31 = [v30 mutableCopy];

    v32 = [MEMORY[0x277CBEAA8] now];
    [v31 setSessionStateTransitionDate:v32];

    [*(a1 + 32) _addStateToWatchdog:v31];
    goto LABEL_16;
  }

  v26 = [*(a1 + 32) mostRecentRecord];
  v27 = [v26 state];
  v28 = [v27 sessionState];

  if (v28 == 11)
  {
    goto LABEL_15;
  }

LABEL_16:
  v33 = *(*(a1 + 48) + 16);

  v33();
}

- (void)shutdownWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(SMWatchdog *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SMWatchdog_shutdownWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_shutdownWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(SMWatchdog *)self records];
      v9 = 136315394;
      v10 = "[SMWatchdog _shutdownWithHandler:]";
      v11 = 2048;
      v12 = [v6 count];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, records count, %lu", &v9, 0x16u);
    }
  }

  [(SMWatchdog *)self setMostRecentRecord:0];
  [(RTTimer *)self->_watchdogTimer invalidate];
  watchdogTimer = self->_watchdogTimer;
  self->_watchdogTimer = 0;

  watchdogTimerFireDate = self->_watchdogTimerFireDate;
  self->_watchdogTimerFireDate = 0;

  [(NSMutableArray *)self->_records removeAllObjects];
  if (v4)
  {
    v4[2](v4, 0);
  }
}

@end