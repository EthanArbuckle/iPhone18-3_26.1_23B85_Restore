@interface SMCheckInRemindersTipResponseMetricManager
- (BOOL)submitMetricsWithError:(id *)error;
- (SMCheckInRemindersTipResponseMetricManager)init;
- (int64_t)mostRecentResponse;
- (void)resetMetrics;
- (void)startMetricsCollection;
- (void)updateTipResponse:(int64_t)response;
@end

@implementation SMCheckInRemindersTipResponseMetricManager

- (SMCheckInRemindersTipResponseMetricManager)init
{
  v3 = objc_alloc_init(RTDefaultsManager);
  [(SMCheckInRemindersTipResponseMetricManager *)self setDefaultsManager:v3];

  v5.receiver = self;
  v5.super_class = SMCheckInRemindersTipResponseMetricManager;
  return [(RTMetric *)&v5 init];
}

- (int64_t)mostRecentResponse
{
  defaultsManager = [(SMCheckInRemindersTipResponseMetricManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsCheckInRemindersFitnessTipResponse"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)startMetricsCollection
{
  defaultsManager = [(SMCheckInRemindersTipResponseMetricManager *)self defaultsManager];
  [defaultsManager setObject:&unk_28459E8B0 forKey:@"RTDefaultsCheckInRemindersFitnessTipResponse"];
}

- (void)updateTipResponse:(int64_t)response
{
  v21 = *MEMORY[0x277D85DE8];
  if (([(SMCheckInRemindersTipResponseMetricManager *)self mostRecentResponse]& 0x8000000000000000) == 0)
  {
    mostRecentResponse = [(SMCheckInRemindersTipResponseMetricManager *)self mostRecentResponse];
    if (mostRecentResponse <= 4 && ((1 << mostRecentResponse) & 0x16) != 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      defaultsManager = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(defaultsManager, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_debug_impl(&dword_2304B3000, defaultsManager, OS_LOG_TYPE_DEBUG, "%@, %@, skipping response update", &v15, 0x16u);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = NSStringFromSelector(a2);
          v15 = 138412802;
          v16 = v13;
          v17 = 2112;
          v18 = v14;
          v19 = 2048;
          responseCopy = response;
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, %@, updating response, %ld", &v15, 0x20u);
        }
      }

      defaultsManager = [(SMCheckInRemindersTipResponseMetricManager *)self defaultsManager];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:response];
      [defaultsManager setObject:v9 forKey:@"RTDefaultsCheckInRemindersFitnessTipResponse"];
    }

LABEL_13:
  }
}

- (void)resetMetrics
{
  defaultsManager = [(SMCheckInRemindersTipResponseMetricManager *)self defaultsManager];
  [defaultsManager setObject:&unk_28459E8C8 forKey:@"RTDefaultsCheckInRemindersFitnessTipResponse"];
}

- (BOOL)submitMetricsWithError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  mostRecentResponse = [(SMCheckInRemindersTipResponseMetricManager *)self mostRecentResponse];
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (mostRecentResponse < 0)
  {
    if (v7)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        *buf = 138412546;
        v27 = v21;
        v28 = 2112;
        v29 = v22;
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, %@, skipping metric submission due to no collection started", buf, 0x16u);
      }
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D4ACD0];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Metric collection not started";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    *error = [v13 errorWithDomain:v14 code:24 userInfo:v15];

    v11 = 0;
  }

  else
  {
    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v27 = v18;
        v28 = 2112;
        v29 = v19;
        v30 = 2048;
        mostRecentResponse2 = [(SMCheckInRemindersTipResponseMetricManager *)self mostRecentResponse];
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, %@, attempting to submit metric with response, %ld", buf, 0x20u);
      }
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMCheckInRemindersTipResponseMetricManager mostRecentResponse](self, "mostRecentResponse")}];
    metrics = [(RTMetric *)self metrics];
    [metrics setObject:v9 forKeyedSubscript:@"tipResponse"];

    v23.receiver = self;
    v23.super_class = SMCheckInRemindersTipResponseMetricManager;
    v11 = [(RTMetric *)&v23 submitMetricsWithError:error];
  }

  [(SMCheckInRemindersTipResponseMetricManager *)self resetMetrics];
  return v11;
}

@end