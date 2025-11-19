@interface RTIntermittentGNSSManagerMetrics
+ (id)signalCategoryToString:(unint64_t)a3;
- (RTIntermittentGNSSManagerMetrics)initWithDefaultsManager:(id)a3 timerManager:(id)a4;
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
- (void)_updateMetricsForKey:(id)a3;
- (void)processSignalSwitch:(unint64_t)a3;
- (void)setup;
- (void)shutdown;
- (void)submitDailyMetricsToCoreAnalytics;
- (void)updateMetricsForKey:(id)a3;
- (void)updateSessionLocationCount:(unint64_t)a3;
@end

@implementation RTIntermittentGNSSManagerMetrics

- (RTIntermittentGNSSManagerMetrics)initWithDefaultsManager:(id)a3 timerManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v17 = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: defaultsManager";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
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
    objc_storeStrong(&v10->_defaultsManager, a3);
    objc_storeStrong(p_isa + 3, a4);
    v12 = p_isa;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v12 UTF8String];
    }

    else
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v12];
      v14 = [v18 UTF8String];
    }

    v19 = dispatch_queue_create(v14, v13);

    v20 = v12[5];
    v12[5] = v19;

    v21 = objc_opt_new();
    v22 = v12[4];
    v12[4] = v21;

    [v12 setup];
  }

  self = p_isa;
  v17 = self;
LABEL_13:

  return v17;
}

- (void)setup
{
  v3 = [(RTIntermittentGNSSManagerMetrics *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RTIntermittentGNSSManagerMetrics_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(RTIntermittentGNSSManagerMetrics *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTIntermittentGNSSManagerMetrics_shutdown__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v2 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsIntermittentGNSSLastRegistrationDate"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] date];
  }

  v6 = v5;

  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSinceDate:v6];
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
  v3 = [(RTIntermittentGNSSManagerMetrics *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__RTIntermittentGNSSManagerMetrics_getLastRegistrationDate__block_invoke;
  v6[3] = &unk_2788C7FB0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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
  v2 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsIntermittentGNSSLastRegistrationDate"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] date];
  }

  v6 = v5;

  return v6;
}

- (void)updateSessionLocationCount:(unint64_t)a3
{
  v5 = [(RTIntermittentGNSSManagerMetrics *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__RTIntermittentGNSSManagerMetrics_updateSessionLocationCount___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
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

+ (id)signalCategoryToString:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"RTIntermittentGNSSManagerSignalCategoryUnknown";
  }

  else
  {
    return off_2788C9388[a3 - 1];
  }
}

- (void)updateMetricsForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTIntermittentGNSSManagerMetrics *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__RTIntermittentGNSSManagerMetrics_updateMetricsForKey___block_invoke;
    v7[3] = &unk_2788C4A70;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
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

- (void)_updateMetricsForKey:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
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

  if ([v4 isEqualToString:@"register"])
  {
    [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionOngoing:1];
    v6 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v7 = [MEMORY[0x277CBEAA8] date];
    [v6 setObject:v7 forKey:@"RTDefaultsIntermittentGNSSLastRegistrationDate"];

    v8 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Enabled"];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTIntermittentGNSSManagerMetrics mostRecentSignalSwitch](self, "mostRecentSignalSwitch")}];
    v10 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
    [v10 setObject:v9 forKeyedSubscript:@"Reason"];

    v11 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
    PLLogRegisteredEvent();

    [(RTIntermittentGNSSManagerMetrics *)self setCurrentSessionActivationCriteria:[(RTIntermittentGNSSManagerMetrics *)self mostRecentSignalSwitch]];
    v12 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v13 = [v12 objectForKey:@"RTDefaultsIntermittentGNSSLastUnregistrationDate"];

    v14 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v15 = [v14 objectForKey:@"RTDefaultsIntermittentGNSSLastRegistrationDate"];

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
  v18 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v19 = [MEMORY[0x277CBEAA8] date];
  [v18 setObject:v19 forKey:@"RTDefaultsIntermittentGNSSLastUnregistrationDate"];

  v20 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
  [v20 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Enabled"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTIntermittentGNSSManagerMetrics mostRecentSignalSwitch](self, "mostRecentSignalSwitch")}];
  v22 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
  [v22 setObject:v21 forKeyedSubscript:@"Reason"];

  v23 = [(RTIntermittentGNSSManagerMetrics *)self powerLogEventDictionary];
  PLLogRegisteredEvent();

  [(RTIntermittentGNSSManagerMetrics *)self _getCurrentSessionDuration];
  v25 = v24;
  v26 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v27 = [v26 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
  v28 = [v27 intValue];

  v29 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v30 = [v29 objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
  [v30 doubleValue];
  if (v31 == 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v31;
  }

  v33 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:v25 + v32];
  [v33 setObject:v34 forKey:@"RTDefaultsIntermittentGNSSDailyDuration"];

  v35 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v36 = [MEMORY[0x277CCABB0] numberWithInt:(v28 + 1)];
  [v35 setObject:v36 forKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];

  v37 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v38 = [v37 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
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
    v41 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
    [v41 setObject:v42 forKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
  }

  if (v25 >= 1200.0)
  {
    v43 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v44 = [v43 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
    v45 = [v44 intValue];

    v46 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v47 = [MEMORY[0x277CCABB0] numberWithInt:(v45 + 1)];
    [v46 setObject:v47 forKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
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
  v55 = [(RTIntermittentGNSSManagerMetrics *)self streakMetricsTimer];

  if (v55)
  {
    v56 = [(RTIntermittentGNSSManagerMetrics *)self streakMetricsTimer];
    [v56 invalidate];

    [(RTIntermittentGNSSManagerMetrics *)self setStreakMetricsTimer:0];
  }

  objc_initWeak(location, self);
  v57 = [(RTIntermittentGNSSManagerMetrics *)self timerManager];
  v58 = [(RTIntermittentGNSSManagerMetrics *)self queue];
  v62 = MEMORY[0x277D85DD0];
  v63 = 3221225472;
  v64 = __57__RTIntermittentGNSSManagerMetrics__updateMetricsForKey___block_invoke;
  v65 = &unk_2788C57F8;
  objc_copyWeak(&v67, location);
  v66 = self;
  v59 = [v57 timerWithIdentifier:@"RTIntermittentGNSSStreakMetricsTimer" queue:v58 handler:&v62];
  [(RTIntermittentGNSSManagerMetrics *)self setStreakMetricsTimer:v59, v62, v63, v64, v65];

  v60 = [(RTIntermittentGNSSManagerMetrics *)self streakMetricsTimer];
  [v60 fireAfterDelay:1200.0];

  v61 = [(RTIntermittentGNSSManagerMetrics *)self streakMetricsTimer];
  [v61 resume];

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

- (void)processSignalSwitch:(unint64_t)a3
{
  v5 = [(RTIntermittentGNSSManagerMetrics *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__RTIntermittentGNSSManagerMetrics_processSignalSwitch___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (id)_collectDailyMetrics
{
  v3 = objc_opt_new();
  v4 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v5 = [v4 objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
  if (v5)
  {
    v6 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v7 = [v6 objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v11 = [v10 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
  if (v11)
  {
    v12 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v13 = [v12 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
    v14 = [v13 intValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v16 = [v15 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
  if (v16)
  {
    v17 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v18 = [v17 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
    v19 = [v18 intValue];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v21 = [v20 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
  if (v21)
  {
    v22 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v23 = [v22 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
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

  v28 = [MEMORY[0x277CCABB0] numberWithInt:v14];
  v29 = [RTMetric binForNumber:v28 bins:&unk_2845A0C68];
  [v3 setObject:v29 forKeyedSubscript:@"_numDailyRequests"];

  v30 = [MEMORY[0x277CCABB0] numberWithInt:v19];
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
  v3 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  [v3 setObject:&unk_28459D308 forKey:@"RTDefaultsIntermittentGNSSDailyDuration"];

  v4 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  [v4 setObject:&unk_28459D308 forKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];

  v5 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  [v5 setObject:&unk_28459D308 forKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];

  v6 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  [v6 setObject:&unk_28459D308 forKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
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
  v3 = [(RTIntermittentGNSSManagerMetrics *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTIntermittentGNSSManagerMetrics_submitDailyMetricsToCoreAnalytics__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_submitDailyMetricsToCoreAnalytics
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(RTIntermittentGNSSManagerMetrics *)self _collectDailyMetrics];
  v4 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v5 = [v4 objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
  v6 = 0;
  v7 = 0;
  if (v5)
  {
    v8 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v9 = [v8 objectForKey:@"RTDefaultsIntermittentGNSSDailyDuration"];
    [v9 doubleValue];
    v7 = v10;
  }

  v11 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v12 = [v11 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
  if (v12)
  {
    v13 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v14 = [v13 objectForKey:@"RTDefaultsIntermittentGNSSDailySessionCount"];
    [v14 doubleValue];
    v6 = v15;
  }

  v16 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v17 = [v16 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
  v18 = 0;
  v19 = 0;
  if (v17)
  {
    v20 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v21 = [v20 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongSessionCount"];
    [v21 doubleValue];
    v19 = v22;
  }

  v23 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
  v24 = [v23 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
  if (v24)
  {
    v25 = [(RTIntermittentGNSSManagerMetrics *)self defaultsManager];
    v26 = [v25 objectForKey:@"RTDefaultsIntermittentGNSSDailyLongestSessionDuration"];
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
      v41 = v3;
      _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "submitting daily metrics for intermittent gnss, totalDuration, %.2f, sessionCount, %.2f, longSessionCount, %.2f, longSessionDuration, %.2f, metrics, %@", buf, 0x34u);
    }
  }

  v29 = objc_alloc(MEMORY[0x277CCACA8]);
  v30 = [v29 initWithCString:RTAnalyticsEventIntermittentGNSSDailyMetrics encoding:1];
  log_analytics_submission(v30, v3);
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v30];
  AnalyticsSendEvent();

  [(RTIntermittentGNSSManagerMetrics *)self _clearDailyMetrics];
}

- (void)_submitSessionMetricsToCoreAnalytics
{
  v6 = [(RTIntermittentGNSSManagerMetrics *)self _collectSessionMetrics];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventIntermittentGNSSSessionMetrics encoding:1];
  log_analytics_submission(v4, v6);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
  AnalyticsSendEvent();

  [(RTIntermittentGNSSManagerMetrics *)self _clearSessionMetrics];
}

- (void)_submitStreakMetricsToCoreAnalytics
{
  v6 = [(RTIntermittentGNSSManagerMetrics *)self _collectStreakMetrics];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventIntermittentGNSSStreakMetrics encoding:1];
  log_analytics_submission(v4, v6);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
  AnalyticsSendEvent();

  [(RTIntermittentGNSSManagerMetrics *)self _clearStreakMetrics];
}

@end