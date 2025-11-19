@interface SMCheckInRemindersTipResponseMetricManager
- (BOOL)submitMetricsWithError:(id *)a3;
- (SMCheckInRemindersTipResponseMetricManager)init;
- (int64_t)mostRecentResponse;
- (void)resetMetrics;
- (void)startMetricsCollection;
- (void)updateTipResponse:(int64_t)a3;
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
  v2 = [(SMCheckInRemindersTipResponseMetricManager *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsCheckInRemindersFitnessTipResponse"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)startMetricsCollection
{
  v2 = [(SMCheckInRemindersTipResponseMetricManager *)self defaultsManager];
  [v2 setObject:&unk_28459E8B0 forKey:@"RTDefaultsCheckInRemindersFitnessTipResponse"];
}

- (void)updateTipResponse:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (([(SMCheckInRemindersTipResponseMetricManager *)self mostRecentResponse]& 0x8000000000000000) == 0)
  {
    v6 = [(SMCheckInRemindersTipResponseMetricManager *)self mostRecentResponse];
    if (v6 <= 4 && ((1 << v6) & 0x16) != 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
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
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, %@, skipping response update", &v15, 0x16u);
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
          v20 = a3;
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, %@, updating response, %ld", &v15, 0x20u);
        }
      }

      v7 = [(SMCheckInRemindersTipResponseMetricManager *)self defaultsManager];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [v7 setObject:v9 forKey:@"RTDefaultsCheckInRemindersFitnessTipResponse"];
    }

LABEL_13:
  }
}

- (void)resetMetrics
{
  v2 = [(SMCheckInRemindersTipResponseMetricManager *)self defaultsManager];
  [v2 setObject:&unk_28459E8C8 forKey:@"RTDefaultsCheckInRemindersFitnessTipResponse"];
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = [(SMCheckInRemindersTipResponseMetricManager *)self mostRecentResponse];
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v6 < 0)
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
    *a3 = [v13 errorWithDomain:v14 code:24 userInfo:v15];

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
        v31 = [(SMCheckInRemindersTipResponseMetricManager *)self mostRecentResponse];
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, %@, attempting to submit metric with response, %ld", buf, 0x20u);
      }
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMCheckInRemindersTipResponseMetricManager mostRecentResponse](self, "mostRecentResponse")}];
    v10 = [(RTMetric *)self metrics];
    [v10 setObject:v9 forKeyedSubscript:@"tipResponse"];

    v23.receiver = self;
    v23.super_class = SMCheckInRemindersTipResponseMetricManager;
    v11 = [(RTMetric *)&v23 submitMetricsWithError:a3];
  }

  [(SMCheckInRemindersTipResponseMetricManager *)self resetMetrics];
  return v11;
}

@end