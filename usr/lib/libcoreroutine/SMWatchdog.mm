@interface SMWatchdog
- (SMWatchdog)initWithDefaultsManager:(id)manager handler:(id)handler;
- (double)_fetchTimeoutValueForState:(unint64_t)state;
- (id)_createRecord:(id)record timeoutLimit:(double)limit;
- (void)_addRecord:(id)record;
- (void)_addStateToWatchdog:(id)watchdog;
- (void)_checkInAllRecords;
- (void)_removeRecord:(id)record;
- (void)_setUpWatchdogTimerToFireWithDate:(id)date;
- (void)_shutdownWithHandler:(id)handler;
- (void)_updateTimerBasedOnRecords;
- (void)_updateTimerIfNeeded:(id)needed;
- (void)addRecord:(id)record;
- (void)handleStateChange:(id)change forActiveDevice:(BOOL)device;
- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device;
- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device;
- (void)receiveHeartbeatForSessionID:(id)d handler:(id)handler;
- (void)removeRecord:(id)record;
- (void)shutdownWithHandler:(id)handler;
@end

@implementation SMWatchdog

- (SMWatchdog)initWithDefaultsManager:(id)manager handler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  handlerCopy = handler;
  if (handlerCopy)
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
        uTF8String = [(SMWatchdog *)v11 UTF8String];
      }

      else
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v11];
        uTF8String = [v16 UTF8String];
      }

      v17 = dispatch_queue_create(uTF8String, v12);

      queue = v11->_queue;
      v11->_queue = v17;

      v19 = _Block_copy(handlerCopy);
      handler = v11->_handler;
      v11->_handler = v19;

      objc_storeStrong(&v11->_defaultsManager, manager);
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
    selfCopy = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v14 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315651;
      v9 = "[SMWatchdog onSessionResumedWithState:forActiveDevice:]";
      v10 = 2117;
      v11 = stateCopy;
      v12 = 1024;
      v13 = deviceCopy;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@, activeDevice, %d", &v8, 0x1Cu);
    }
  }

  [(SMWatchdog *)self handleStateChange:stateCopy forActiveDevice:deviceCopy];
}

- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v14 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315651;
      v9 = "[SMWatchdog onSessionStateChanged:forActiveDevice:]";
      v10 = 2117;
      v11 = changedCopy;
      v12 = 1024;
      v13 = deviceCopy;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, state, %{sensitive}@, activeDevice, %d", &v8, 0x1Cu);
    }
  }

  [(SMWatchdog *)self handleStateChange:changedCopy forActiveDevice:deviceCopy];
}

- (void)handleStateChange:(id)change forActiveDevice:(BOOL)device
{
  v18 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = changeCopy;
  if (device)
  {
    if ([changeCopy sessionState] == 1 || !objc_msgSend(v7, "sessionState"))
    {
      [(SMWatchdog *)self shutdownWithHandler:&__block_literal_global_80];
      goto LABEL_10;
    }

    mostRecentRecord = [(SMWatchdog *)self mostRecentRecord];
    state = [mostRecentRecord state];
    v10 = [v7 isEqual:state];

    if (!v10)
    {
      queue = [(SMWatchdog *)self queue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__SMWatchdog_handleStateChange_forActiveDevice___block_invoke_11;
      v14[3] = &unk_2788C4A70;
      v14[4] = self;
      v15 = v7;
      dispatch_async(queue, v14);

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
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    records = [(SMWatchdog *)self records];
    v5 = [records countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        v9 = distantFuture;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(records);
          }

          v10 = *(*(&v15 + 1) + 8 * v8);
          startDate = [v10 startDate];
          [v10 timeout];
          v12 = [startDate dateByAddingTimeInterval:?];

          distantFuture = [v9 earlierDate:v12];

          ++v8;
          v9 = distantFuture;
        }

        while (v6 != v8);
        v6 = [records countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [distantFuture stringFromDate];
        *buf = 136315394;
        v20 = "[SMWatchdog _updateTimerBasedOnRecords]";
        v21 = 2112;
        v22 = stringFromDate;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, Updating earliest fire date, %@", buf, 0x16u);
      }
    }

    [(SMWatchdog *)self _updateTimerIfNeeded:distantFuture];
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

- (void)_updateTimerIfNeeded:(id)needed
{
  neededCopy = needed;
  watchdogTimerFireDate = self->_watchdogTimerFireDate;
  v6 = neededCopy;
  if (!watchdogTimerFireDate || ![(NSDate *)watchdogTimerFireDate isEqualToDate:neededCopy])
  {
    [(SMWatchdog *)self _setUpWatchdogTimerToFireWithDate:v6];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_setUpWatchdogTimerToFireWithDate:(id)date
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [dateCopy stringFromDate];
      *buf = 136315394;
      v20 = "[SMWatchdog _setUpWatchdogTimerToFireWithDate:]";
      v21 = 2112;
      v22 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Set up watchdog timer with date, %@", buf, 0x16u);
    }
  }

  if (dateCopy)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v8 = [dateCopy isEqualToDate:distantFuture];

    if ((v8 & 1) == 0)
    {
      [(RTTimer *)self->_watchdogTimer invalidate];
      objc_initWeak(buf, self);
      timerManager = self->_timerManager;
      queue = [(SMWatchdog *)self queue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __48__SMWatchdog__setUpWatchdogTimerToFireWithDate___block_invoke;
      v17[3] = &unk_2788C5908;
      objc_copyWeak(&v18, buf);
      v11 = [(RTTimerManager *)timerManager timerWithIdentifier:@"SMWatchdogHeartbeatTimer" queue:queue handler:v17];
      watchdogTimer = self->_watchdogTimer;
      self->_watchdogTimer = v11;

      [dateCopy timeIntervalSinceNow];
      v13 = self->_watchdogTimer;
      if (v14 <= 0.0)
      {
        [(RTTimer *)self->_watchdogTimer fireAfterDelay:0.0];
        v15 = [MEMORY[0x277CBEAA8] now];
      }

      else
      {
        [dateCopy timeIntervalSinceNow];
        [(RTTimer *)v13 fireAfterDelay:?];
        v15 = dateCopy;
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

- (void)addRecord:(id)record
{
  recordCopy = record;
  queue = [(SMWatchdog *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__SMWatchdog_addRecord___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_async(queue, v7);
}

- (void)_addRecord:(id)record
{
  v12 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [recordCopy description];
      v8 = 136315395;
      v9 = "[SMWatchdog _addRecord:]";
      v10 = 2117;
      v11 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Adding record, %{sensitive}@", &v8, 0x16u);
    }
  }

  if (recordCopy)
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    [recordCopy setStartDate:v7];

    [(NSMutableArray *)self->_records addObject:recordCopy];
    [(SMWatchdog *)self _updateTimerBasedOnRecords];
  }
}

- (void)removeRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    queue = [(SMWatchdog *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__SMWatchdog_removeRecord___block_invoke;
    v6[3] = &unk_2788C4A70;
    v6[4] = self;
    v7 = recordCopy;
    dispatch_async(queue, v6);
  }
}

uint64_t __27__SMWatchdog_removeRecord___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeRecord:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _updateTimerBasedOnRecords];
}

- (void)_removeRecord:(id)record
{
  v21 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [recordCopy description];
      records = [(SMWatchdog *)self records];
      *buf = 136315651;
      v16 = "[SMWatchdog _removeRecord:]";
      v17 = 2117;
      v18 = v6;
      v19 = 2048;
      v20 = [records count];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Removing record, %{sensitive}@, Remaining records, %lu", buf, 0x20u);
    }
  }

  if (recordCopy)
  {
    v8 = MEMORY[0x277CCAC30];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __28__SMWatchdog__removeRecord___block_invoke;
    v13[3] = &unk_2788CCB18;
    v14 = recordCopy;
    v9 = [v8 predicateWithBlock:v13];
    [(NSMutableArray *)self->_records filterUsingPredicate:v9];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        records2 = [(SMWatchdog *)self records];
        v12 = [records2 count];
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
      records = [(SMWatchdog *)self records];
      *buf = 136315394;
      v32 = "[SMWatchdog _checkInAllRecords]";
      v33 = 2048;
      v34 = [records count];
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, Checking in all records, %lu", buf, 0x16u);
    }
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = MEMORY[0x277CBEA60];
  records2 = [(SMWatchdog *)self records];
  v8 = [v6 arrayWithArray:records2];

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
        startDate = [v16 startDate];
        [v5 timeIntervalSinceDate:startDate];
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
          handler = [(SMWatchdog *)self handler];
          state = [v16 state];
          (handler)[2](handler, state, 0);

          [(SMWatchdog *)self _removeRecord:v16];
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  [(SMWatchdog *)self _updateTimerBasedOnRecords];
}

- (void)_addStateToWatchdog:(id)watchdog
{
  watchdogCopy = watchdog;
  -[SMWatchdog _fetchTimeoutValueForState:](self, "_fetchTimeoutValueForState:", [watchdogCopy sessionState]);
  if (v4 > 0.0)
  {
    v5 = [(SMWatchdog *)self _createRecord:watchdogCopy timeoutLimit:?];
    if (v5)
    {
      v6 = v5;
      mostRecentRecord = [(SMWatchdog *)self mostRecentRecord];
      [(SMWatchdog *)self _removeRecord:mostRecentRecord];

      [(SMWatchdog *)self _updateTimerBasedOnRecords];
      [(SMWatchdog *)self _addRecord:v6];
      [(SMWatchdog *)self setMostRecentRecord:v6];
    }
  }
}

- (double)_fetchTimeoutValueForState:(unint64_t)state
{
  result = 0.0;
  if (state <= 8)
  {
    if (state > 6)
    {
      if (state == 7)
      {
        defaultsManager = [(SMWatchdog *)self defaultsManager];
        v6 = @"RTDefaultsSMWatchdogDestinationAnomalyStateTimeout";
        v18 = [defaultsManager objectForKey:@"RTDefaultsSMWatchdogDestinationAnomalyStateTimeout"];

        if (!v18)
        {
          v8 = MEMORY[0x277D4AEC0];
          return *v8;
        }
      }

      else
      {
        defaultsManager2 = [(SMWatchdog *)self defaultsManager];
        v6 = @"RTDefaultsSMWatchdogRoundTripAnomalyStateTimeout";
        v12 = [defaultsManager2 objectForKey:@"RTDefaultsSMWatchdogRoundTripAnomalyStateTimeout"];

        if (!v12)
        {
          v8 = MEMORY[0x277D4AEE8];
          return *v8;
        }
      }
    }

    else if (state == 2)
    {
      defaultsManager3 = [(SMWatchdog *)self defaultsManager];
      v6 = @"RTDefaultsSMWatchdogMonitoringStateTimeout";
      v16 = [defaultsManager3 objectForKey:@"RTDefaultsSMWatchdogMonitoringStateTimeout"];

      if (!v16)
      {
        v8 = MEMORY[0x277D4AED8];
        return *v8;
      }
    }

    else
    {
      if (state != 4)
      {
        return result;
      }

      defaultsManager4 = [(SMWatchdog *)self defaultsManager];
      v6 = @"RTDefaultsSMWatchdogCacheReleaseStateTimeout";
      v10 = [defaultsManager4 objectForKey:@"RTDefaultsSMWatchdogCacheReleaseStateTimeout"];

      if (!v10)
      {
        v8 = MEMORY[0x277D4AEB8];
        return *v8;
      }
    }

LABEL_28:
    defaultsManager5 = [(SMWatchdog *)self defaultsManager];
    v26 = [defaultsManager5 objectForKey:v6];
    [v26 doubleValue];
    v28 = v27;

    return v28;
  }

  if (state <= 10)
  {
    if (state == 9)
    {
      defaultsManager6 = [(SMWatchdog *)self defaultsManager];
      v6 = @"RTDefaultsSMWatchdogTimerEndedPromptStateTimeout";
      v22 = [defaultsManager6 objectForKey:@"RTDefaultsSMWatchdogTimerEndedPromptStateTimeout"];

      if (!v22)
      {
        v8 = MEMORY[0x277D4AEF0];
        return *v8;
      }
    }

    else
    {
      defaultsManager7 = [(SMWatchdog *)self defaultsManager];
      v6 = @"RTDefaultsSMWatchdogInitializingStateTimeout";
      v14 = [defaultsManager7 objectForKey:@"RTDefaultsSMWatchdogInitializingStateTimeout"];

      if (!v14)
      {
        v8 = MEMORY[0x277D4AED0];
        return *v8;
      }
    }

    goto LABEL_28;
  }

  if (state == 11)
  {
    defaultsManager8 = [(SMWatchdog *)self defaultsManager];
    v6 = @"RTDefaultsSMWatchdogReadyStateTimeout";
    v20 = [defaultsManager8 objectForKey:@"RTDefaultsSMWatchdogReadyStateTimeout"];

    if (!v20)
    {
      v8 = MEMORY[0x277D4AEE0];
      return *v8;
    }

    goto LABEL_28;
  }

  if (state == 12)
  {
    defaultsManager9 = [(SMWatchdog *)self defaultsManager];
    v6 = @"RTDefaultsSMWatchdogEndAwarenessStateTimeout";
    v24 = [defaultsManager9 objectForKey:@"RTDefaultsSMWatchdogEndAwarenessStateTimeout"];

    if (!v24)
    {
      v8 = MEMORY[0x277D4AEC8];
      return *v8;
    }

    goto LABEL_28;
  }

  if (state != 14)
  {
    return result;
  }

  defaultsManager10 = [(SMWatchdog *)self defaultsManager];
  v6 = @"RTDefaultsSMWatchdogWorkoutAnomalyStateTimeoutKey";
  v7 = [defaultsManager10 objectForKey:@"RTDefaultsSMWatchdogWorkoutAnomalyStateTimeoutKey"];

  if (v7)
  {
    goto LABEL_28;
  }

  v8 = MEMORY[0x277D4AEF8];
  return *v8;
}

- (id)_createRecord:(id)record timeoutLimit:(double)limit
{
  recordCopy = record;
  sessionStateTransitionDate = [recordCopy sessionStateTransitionDate];
  [sessionStateTransitionDate timeIntervalSinceNow];
  v9 = v8;

  v10 = v9 + limit;
  mostRecentRecord = [(SMWatchdog *)self mostRecentRecord];

  if (!mostRecentRecord)
  {
    if ([recordCopy sessionState] == 10 || objc_msgSend(recordCopy, "sessionState") == 11)
    {
      [(SMWatchdog *)self heartbeatInterval];
      if (v10 < v12 + v12)
      {
        [(SMWatchdog *)self heartbeatInterval];
        v10 = v13 + v13;
      }
    }

    if ([recordCopy isPromptState])
    {
      [(SMWatchdog *)self heartbeatInterval];
      if (v10 < v14)
      {
        [(SMWatchdog *)self heartbeatInterval];
        v10 = v15;
      }
    }
  }

  v16 = [[SMWatchdogRecord alloc] initWithState:recordCopy timeout:v10];

  return v16;
}

- (void)receiveHeartbeatForSessionID:(id)d handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[SMWatchdog receiveHeartbeatForSessionID:handler:]";
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, sessionID, %@", buf, 0x16u);
    }
  }

  queue = [(SMWatchdog *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SMWatchdog_receiveHeartbeatForSessionID_handler___block_invoke;
  block[3] = &unk_2788C67D8;
  v13 = dCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = dCopy;
  v11 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMWatchdog *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SMWatchdog_shutdownWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_shutdownWithHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      records = [(SMWatchdog *)self records];
      v9 = 136315394;
      v10 = "[SMWatchdog _shutdownWithHandler:]";
      v11 = 2048;
      v12 = [records count];
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
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end