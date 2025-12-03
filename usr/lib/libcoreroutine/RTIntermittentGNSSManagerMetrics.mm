@interface RTIntermittentGNSSManagerMetrics
+ (id)signalCategoryToString:(unint64_t)string;
- (RTIntermittentGNSSManagerMetrics)initWithDefaultsManager:(id)manager timerManager:(id)timerManager;
- (double)_getCurrentSessionDuration;
- (id)_collectDailyMetrics;
- (id)_collectSessionMetrics;
- (id)_collectStreakMetrics;
- (id)_getLastRegistrationDate;
- (id)getLastRegistrationDate;
- (void)_clearDailyMetrics;
- (void)_clearSessionMetrics;
- (void)_clearStreakMetrics;
- (void)_setup;
- (void)_submitDailyMetricsToCoreAnalytics;
- (void)_submitSessionMetricsToCoreAnalytics;
- (void)_submitStreakMetricsToCoreAnalytics;
- (void)_updateMetricsForKey:(id)key;
- (void)processSignalSwitch:(unint64_t)switch;
- (void)setup;
- (void)shutdown;
- (void)submitDailyMetricsToCoreAnalytics;
- (void)updateMetricsForKey:(id)key;
- (void)updateSessionLocationCount:(unint64_t)count;
@end

@implementation RTIntermittentGNSSManagerMetrics

- (RTIntermittentGNSSManagerMetrics)initWithDefaultsManager:(id)manager timerManager:(id)timerManager
{
  managerCopy = manager;
  timerManagerCopy = timerManager;
  v9 = timerManagerCopy;
  if (!managerCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: defaultsManager";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!timerManagerCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_15;
  }

  v24.receiver = self;
  v24.super_class = RTIntermittentGNSSManagerMetrics;
  v10 = [(RTIntermittentGNSSManagerMetrics *)&v24 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_defaultsManager, manager);
    objc_storeStrong(p_isa + 3, timerManager);
    v12 = p_isa;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [v12 UTF8String];
    }

    else
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v12];
      uTF8String = [v18 UTF8String];
    }

    v19 = dispatch_queue_create(uTF8String, v13);

    v20 = v12[5];
    v12[5] = v19;

    v21 = objc_opt_new();
    v22 = v12[4];
    v12[4] = v21;

    [v12 setup];
  }

  self = p_isa;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (void)setup
{
  queue = [(RTIntermittentGNSSManagerMetrics *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RTIntermittentGNSSManagerMetrics_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  self->_mostRecentSignalSwitch = 0;
  [(NSMutableDictionary *)self->_powerLogEventDictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Enabled"];
  v3 = [RTIntermittentGNSSManagerMetrics signalCategoryToString:0];
  [(NSMutableDictionary *)self->_powerLogEventDictionary setObject:v3 forKeyedSubscript:@"Reason"];

  [(RTIntermittentGNSSManagerMetrics *)self _clearSessionMetrics];

  [(RTIntermittentGNSSManagerMetrics *)self _clearStreakMetrics];
}

- (void)shutdown
{
  queue = [(RTIntermittentGNSSManagerMetrics *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTIntermittentGNSSManagerMetrics_shutdown__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __44__RTIntermittentGNSSManagerMetrics_shutdown__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) streakMetricsTimer];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setStreakMetricsTimer:0];
}

- (double)_getCurrentSessionDuration
{
  defaultsManager = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsIntermittentGNSSLastRegistrationDate"];
  v4 = v3;
  if (v3)
  {
    date = v3;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v6 = date;

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:v6];
  v9 = v8;

  return v9;
}

- (id)getLastRegistrationDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__51;
  v11 = __Block_byref_object_dispose__51;
  v12 = 0;
  queue = [(RTIntermittentGNSSManagerMetrics *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__RTIntermittentGNSSManagerMetrics_getLastRegistrationDate__block_invoke;
  v6[3] = &unk_2788C7FB0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __59__RTIntermittentGNSSManagerMetrics_getLastRegistrationDate__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _getLastRegistrationDate];

  return MEMORY[0x2821F96F8]();
}

- (id)_getLastRegistrationDate
{
  defaultsManager = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsIntermittentGNSSLastRegistrationDate"];
  v4 = v3;
  if (v3)
  {
    date = v3;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v6 = date;

  return v6;
}

- (void)updateSessionLocationCount:(unint64_t)count
{
  queue = [(RTIntermittentGNSSManagerMetrics *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__RTIntermittentGNSSManagerMetrics_updateSessionLocationCount___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = count;
  dispatch_async(queue, v6);
}

_BYTE *__63__RTIntermittentGNSSManagerMetrics_updateSessionLocationCount___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    v3 = *(a1 + 40);
    v4 = v3 + [result currentSessionNumLocationsReceived];
    v5 = *(a1 + 32);

    return [v5 setCurrentSessionNumLocationsReceived:v4];
  }

  return result;
}

+ (id)signalCategoryToString:(unint64_t)string
{
  if (string - 1 > 4)
  {
    return @"RTIntermittentGNSSManagerSignalCategoryUnknown";
  }

  else
  {
    return off_2788C9388[string - 1];
  }
}

- (void)updateMetricsForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    queue = [(RTIntermittentGNSSManagerMetrics *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__RTIntermittentGNSSManagerMetrics_updateMetricsForKey___block_invoke;
    v7[3] = &unk_2788C4A70;
    v7[4] = self;
    v8 = keyCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key", buf, 2u);
    }
  }
}

- (void)_updateMetricsForKey:(id)key
{
  location[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = keyCopy;
  if (!keyCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key", location, 2u);
    }

LABEL_10:

    goto LABEL_33;
  }

  if ([keyCopy isEqualToString:@"register"])
  {
    [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionOngoing:1];
    defaultsManager = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    date = [MEMORY[0x277CBEAA8] date];
    [defaultsManager setObject:date forKey:@"RTDefaultsIntermittentGNSSLastRegistrationDate"];

    powerLogEventDictionary = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
    [powerLogEventDictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Enabled"];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTIntermittentGNSSManagerMetrics mostRecentSignalSwitch](self, "mostRecentSignalSwitch")}];
    powerLogEventDictionary2 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
    [powerLogEventDictionary2 setObject:v9 forKeyedSubscript:@"Reason"];

    powerLogEventDictionary3 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
    PLLogRegisteredEvent();

    [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionActivationCriteria:[(RTIntermittentGNSSManagerMetrics *)self mostRecentSignalSwitch]];
    defaultsManager2 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v13 = [defaultsManager2 objectForKey:@"RTDefaultsIntermittentGNSSLastUnregistrationDate"];

    defaultsManager3 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v15 = [defaultsManager3 objectForKey:@"RTDefaultsIntermittentGNSSLastRegistrationDate"];

    if (v13 && ([v15 timeIntervalSinceDate:v13], -[RTIntermittentGNSSManagerMetrics setCurrentSessionTimeSinceLastSession:](self, "setCurrentSessionTimeSinceLastSession:"), -[RTIntermittentGNSSManagerMetrics currentSessionTimeSinceLastSession](self, "currentSessionTimeSinceLastSession"), v16 <= 1200.0))
    {
      [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakNumSessions:[(RTIntermittentGNSSManagerMetrics *)self currentStreakNumSessions]+ 1];
    }

    else
    {
      if ([(RTIntermittentGNSSManagerMetrics *)self currentStreakOngoing])
      {
        [(RTIntermittentGNSSManagerMetrics *)self _submitStreakMetricsToCoreAnalytics];
      }

      [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakOngoing:1];
      [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakNumSessions:[(RTIntermittentGNSSManagerMetrics *)self currentStreakNumSessions]+ 1];
      [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakActivationCriteria:[(RTIntermittentGNSSManagerMetrics *)self currentSessionActivationCriteria]];
    }

    goto LABEL_33;
  }

  if (![v5 isEqualToString:@"unregister"])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    v17 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[RTIntermittentGNSSManagerMetrics _updateMetricsForKey:]";
      _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%s, command not recognized for metrics update", location, 0xCu);
    }

    goto LABEL_10;
  }

  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionOngoing:0];
  defaultsManager4 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  date2 = [MEMORY[0x277CBEAA8] date];
  [defaultsManager4 setObject:date2 forKey:@"RTDefaultsIntermittentGNSSLastUnregistrationDate"];

  powerLogEventDictionary4 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
  [powerLogEventDictionary4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Enabled"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTIntermittentGNSSManagerMetrics mostRecentSignalSwitch](self, "mostRecentSignalSwitch")}];
  powerLogEventDictionary5 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
  [powerLogEventDictionary5 setObject:v21 forKeyedSubscript:@"Reason"];

  powerLogEventDictionary6 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
  PLLogRegisteredEvent();

  [(RTIntermittentGNSSManagerMetrics *)self _getCurrentSessionDuration];
  v25 = v24;
  defaultsManager5 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v27 = [defaultsManager5 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
  intValue = [v27 intValue];

  defaultsManager6 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v30 = [defaultsManager6 objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
  [v30 doubleValue];
  if (v31 == 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v31;
  }

  defaultsManager7 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:v25 + v32];
  [defaultsManager7 setObject:v34 forKey:@"RTDefaultsIntermittentGNSSDailyDuration"];

  defaultsManager8 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v36 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
  [defaultsManager8 setObject:v36 forKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];

  defaultsManager9 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v38 = [defaultsManager9 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
  [v38 doubleValue];
  if (v39 == 0.0)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v39;
  }

  if (v25 > v40)
  {
    defaultsManager10 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
    [defaultsManager10 setObject:v42 forKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
  }

  if (v25 >= 1200.0)
  {
    defaultsManager11 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v44 = [defaultsManager11 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
    intValue2 = [v44 intValue];

    defaultsManager12 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v47 = [MEMORY[0x277CCABB0] numberWithInt:(intValue2 + 1)];
    [defaultsManager12 setObject:v47 forKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
  }

  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionDuration:v25];
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionDeactivationCriteria:[(RTIntermittentGNSSManagerMetrics *)self mostRecentSignalSwitch]];
  [(RTIntermittentGNSSManagerMetrics *)self currentStreakDuration];
  v49 = v48;
  [(RTIntermittentGNSSManagerMetrics *)self currentSessionDuration];
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakDuration:v49 + v50];
  [(RTIntermittentGNSSManagerMetrics *)self currentSessionTimeSinceLastSession];
  if (v51 <= 1200.0)
  {
    [(RTIntermittentGNSSManagerMetrics *)self currentStreakDuration];
    v53 = v52;
    [(RTIntermittentGNSSManagerMetrics *)self currentSessionTimeSinceLastSession];
    [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakDuration:v53 + v54];
  }

  [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakDeactivationCriteria:[(RTIntermittentGNSSManagerMetrics *)self mostRecentSignalSwitch]];
  [(RTIntermittentGNSSManagerMetrics *)self _submitSessionMetricsToCoreAnalytics];
  streakMetricsTimer = [(RTIntermittentGNSSManagerMetrics *)self streakMetricsTimer];

  if (streakMetricsTimer)
  {
    streakMetricsTimer2 = [(RTIntermittentGNSSManagerMetrics *)self streakMetricsTimer];
    [streakMetricsTimer2 invalidate];

    [(RTIntermittentGNSSManagerMetrics *)self setStreakMetricsTimer:0];
  }

  objc_initWeak(location, self);
  timerManager = [(RTIntermittentGNSSManagerMetrics *)self timerManager];
  queue = [(RTIntermittentGNSSManagerMetrics *)self queue];
  v62 = MEMORY[0x277D85DD0];
  v63 = 3221225472;
  v64 = __57__RTIntermittentGNSSManagerMetrics__updateMetricsForKey___block_invoke;
  v65 = &unk_2788C57F8;
  objc_copyWeak(&v67, location);
  selfCopy = self;
  v59 = [timerManager timerWithIdentifier:@"RTIntermittentGNSSStreakMetricsTimer" queue:queue handler:&v62];
  [(RTIntermittentGNSSManagerMetrics *)self setStreakMetricsTimer:v59, v62, v63, v64, v65];

  streakMetricsTimer3 = [(RTIntermittentGNSSManagerMetrics *)self streakMetricsTimer];
  [streakMetricsTimer3 fireAfterDelay:1200.0];

  streakMetricsTimer4 = [(RTIntermittentGNSSManagerMetrics *)self streakMetricsTimer];
  [streakMetricsTimer4 resume];

  objc_destroyWeak(&v67);
  objc_destroyWeak(location);
LABEL_33:
}

void __57__RTIntermittentGNSSManagerMetrics__updateMetricsForKey___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained streakMetricsTimer];

  if (v3)
  {
    v4 = [WeakRetained streakMetricsTimer];
    [v4 invalidate];

    [WeakRetained setStreakMetricsTimer:0];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "[RTIntermittentGNSSManagerMetrics _updateMetricsForKey:]_block_invoke";
      v8 = 2112;
      v9 = @"RTIntermittentGNSSStreakMetricsTimer";
      v10 = 2048;
      v11 = 0x4034000000000000;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, time between session threshold for streak metric has been exceeded, timerIdentifier, %@, threshold in minutes, %.2f", &v6, 0x20u);
    }
  }

  if ([*(a1 + 32) currentStreakOngoing])
  {
    [*(a1 + 32) _submitStreakMetricsToCoreAnalytics];
  }
}

- (void)processSignalSwitch:(unint64_t)switch
{
  queue = [(RTIntermittentGNSSManagerMetrics *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__RTIntermittentGNSSManagerMetrics_processSignalSwitch___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = switch;
  dispatch_async(queue, v6);
}

- (id)_collectDailyMetrics
{
  v3 = objc_opt_new();
  defaultsManager = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
  if (v5)
  {
    defaultsManager2 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v7 = [defaultsManager2 objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  defaultsManager3 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v11 = [defaultsManager3 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
  if (v11)
  {
    defaultsManager4 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v13 = [defaultsManager4 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
    intValue = [v13 intValue];
  }

  else
  {
    intValue = 0;
  }

  defaultsManager5 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v16 = [defaultsManager5 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
  if (v16)
  {
    defaultsManager6 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v18 = [defaultsManager6 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
    intValue2 = [v18 intValue];
  }

  else
  {
    intValue2 = 0;
  }

  defaultsManager7 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v21 = [defaultsManager7 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
  if (v21)
  {
    defaultsManager8 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v23 = [defaultsManager8 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
    [v23 doubleValue];
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v27 = [RTMetric binForNumber:v26 bins:&unk_2845A0C50];
  [v3 setObject:v27 forKeyedSubscript:@"_totalDailyDuration"];

  v28 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
  v29 = [RTMetric binForNumber:v28 bins:&unk_2845A0C68];
  [v3 setObject:v29 forKeyedSubscript:@"_numDailyRequests"];

  v30 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
  v31 = [RTMetric binForNumber:v30 bins:&unk_2845A0C80];
  [v3 setObject:v31 forKeyedSubscript:@"_numLongSessions"];

  v32 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
  v33 = [RTMetric binForNumber:v32 bins:&unk_2845A0C98];
  [v3 setObject:v33 forKeyedSubscript:@"_longestSessionDuration"];

  return v3;
}

- (id)_collectSessionMetrics
{
  v3 = objc_opt_new();
  [(RTIntermittentGNSSManagerMetrics *)self currentSessionDuration];
  v4 = MEMORY[0x277CCABB0];
  v6 = v5 / 60.0;
  [(RTIntermittentGNSSManagerMetrics *)self currentSessionDuration];
  v7 = [v4 numberWithDouble:?];
  v8 = [RTMetric binForNumber:v7 bins:&unk_2845A0CB0];
  [v3 setObject:v8 forKeyedSubscript:@"_duration"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTIntermittentGNSSManagerMetrics currentSessionActivationCriteria](self, "currentSessionActivationCriteria")}];
  [v3 setObject:v9 forKeyedSubscript:@"_activationCriteria"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTIntermittentGNSSManagerMetrics currentSessionDeactivationCriteria](self, "currentSessionDeactivationCriteria")}];
  [v3 setObject:v10 forKeyedSubscript:@"_deactivationCriteria"];

  v11 = MEMORY[0x277CCABB0];
  [(RTIntermittentGNSSManagerMetrics *)self currentSessionTimeSinceLastSession];
  v12 = [v11 numberWithDouble:?];
  v13 = [RTMetric binForNumber:v12 bins:&unk_2845A0CC8];
  [v3 setObject:v13 forKeyedSubscript:@"_timeSinceLastSession"];

  if (v6 > 1.0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:{-[RTIntermittentGNSSManagerMetrics currentSessionNumLocationsReceived](self, "currentSessionNumLocationsReceived") / v6}];
    v15 = [RTMetric binForNumber:v14 bins:&unk_2845A0CE0];
    [v3 setObject:v15 forKeyedSubscript:@"_numLocationsPerMin"];
  }

  else
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTIntermittentGNSSManagerMetrics currentSessionNumLocationsReceived](self, "currentSessionNumLocationsReceived")}];
    [v3 setObject:v14 forKeyedSubscript:@"_numLocationsPerMin"];
  }

  return v3;
}

- (id)_collectStreakMetrics
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  [(RTIntermittentGNSSManagerMetrics *)self currentStreakDuration];
  v5 = [v4 numberWithDouble:?];
  v6 = [RTMetric binForNumber:v5 bins:&unk_2845A0CF8];
  [v3 setObject:v6 forKeyedSubscript:@"_duration"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTIntermittentGNSSManagerMetrics currentStreakActivationCriteria](self, "currentStreakActivationCriteria")}];
  [v3 setObject:v7 forKeyedSubscript:@"_activationCriteria"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTIntermittentGNSSManagerMetrics currentStreakDeactivationCriteria](self, "currentStreakDeactivationCriteria")}];
  [v3 setObject:v8 forKeyedSubscript:@"_deactivationCriteria"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTIntermittentGNSSManagerMetrics currentStreakNumSessions](self, "currentStreakNumSessions")}];
  v10 = [RTMetric binForNumber:v9 bins:&unk_2845A0D10];
  [v3 setObject:v10 forKeyedSubscript:@"_numSessions"];

  return v3;
}

- (void)_clearDailyMetrics
{
  defaultsManager = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  [defaultsManager setObject:&unk_28459D308 forKey:@"RTDefaultsIntermittentGNSSDailyDuration"];

  defaultsManager2 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  [defaultsManager2 setObject:&unk_28459D308 forKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];

  defaultsManager3 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  [defaultsManager3 setObject:&unk_28459D308 forKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];

  defaultsManager4 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  [defaultsManager4 setObject:&unk_28459D308 forKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
}

- (void)_clearSessionMetrics
{
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionDuration:0.0];
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionActivationCriteria:0];
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionDeactivationCriteria:0];
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionTimeSinceLastSession:-1.0];

  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionNumLocationsReceived:0];
}

- (void)_clearStreakMetrics
{
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakDuration:0.0];
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionActivationCriteria:0];
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionDeactivationCriteria:0];
  [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakNumSessions:0];

  [(RTIntermittentGNSSManagerMetrics *)self setCurrentStreakOngoing:0];
}

- (void)submitDailyMetricsToCoreAnalytics
{
  queue = [(RTIntermittentGNSSManagerMetrics *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTIntermittentGNSSManagerMetrics_submitDailyMetricsToCoreAnalytics__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_submitDailyMetricsToCoreAnalytics
{
  v42 = *MEMORY[0x277D85DE8];
  _collectDailyMetrics = [(RTIntermittentGNSSManagerMetrics *)self _collectDailyMetrics];
  defaultsManager = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
  v6 = 0;
  v7 = 0;
  if (v5)
  {
    defaultsManager2 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v9 = [defaultsManager2 objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
    [v9 doubleValue];
    v7 = v10;
  }

  defaultsManager3 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v12 = [defaultsManager3 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
  if (v12)
  {
    defaultsManager4 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v14 = [defaultsManager4 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
    [v14 doubleValue];
    v6 = v15;
  }

  defaultsManager5 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v17 = [defaultsManager5 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
  v18 = 0;
  v19 = 0;
  if (v17)
  {
    defaultsManager6 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v21 = [defaultsManager6 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
    [v21 doubleValue];
    v19 = v22;
  }

  defaultsManager7 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v24 = [defaultsManager7 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
  if (v24)
  {
    defaultsManager8 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v26 = [defaultsManager8 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
    [v26 doubleValue];
    v18 = v27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 134219010;
      v33 = v7;
      v34 = 2048;
      v35 = v6;
      v36 = 2048;
      v37 = v19;
      v38 = 2048;
      v39 = v18;
      v40 = 2112;
      v41 = _collectDailyMetrics;
      _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "submitting daily metrics for intermittent gnss, totalDuration, %.2f, sessionCount, %.2f, longSessionCount, %.2f, longSessionDuration, %.2f, metrics, %@", buf, 0x34u);
    }
  }

  v29 = objc_alloc(MEMORY[0x277CCACA8]);
  v30 = [v29 initWithCString:RTAnalyticsEventIntermittentGNSSDailyMetrics encoding:1];
  log_analytics_submission(v30, _collectDailyMetrics);
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v30];
  AnalyticsSendEvent();

  [(RTIntermittentGNSSManagerMetrics *)self _clearDailyMetrics];
}

- (void)_submitSessionMetricsToCoreAnalytics
{
  _collectSessionMetrics = [(RTIntermittentGNSSManagerMetrics *)self _collectSessionMetrics];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventIntermittentGNSSSessionMetrics encoding:1];
  log_analytics_submission(v4, _collectSessionMetrics);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
  AnalyticsSendEvent();

  [(RTIntermittentGNSSManagerMetrics *)self _clearSessionMetrics];
}

- (void)_submitStreakMetricsToCoreAnalytics
{
  _collectStreakMetrics = [(RTIntermittentGNSSManagerMetrics *)self _collectStreakMetrics];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventIntermittentGNSSStreakMetrics encoding:1];
  log_analytics_submission(v4, _collectStreakMetrics);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
  AnalyticsSendEvent();

  [(RTIntermittentGNSSManagerMetrics *)self _clearStreakMetrics];
}

@end