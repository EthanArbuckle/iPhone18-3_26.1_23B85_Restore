@interface RTWorkoutSchedulerMetrics
+ (id)metricsTaskTypeToString:(unint64_t)a3;
- (RTWorkoutSchedulerMetrics)initWithDefaultsManager:(id)a3;
- (RTWorkoutSchedulerMetrics)initWithDefaultsManager:(id)a3 managedConfiguration:(id)a4;
- (void)collectDailyMetrics;
- (void)createTaskMetricsDictionary:(id)a3;
- (void)dealloc;
- (void)incrementMetricDefaultForKey:(id)a3;
- (void)onDailyMetricNotification:(id)a3;
- (void)setup;
- (void)startCollectMetricsTaskType:(unint64_t)a3 totalNAtStart:(int64_t)a4;
- (void)stopCollectMetricsTaskType:(unint64_t)a3;
- (void)submitDailyMetricsToCoreAnalytics:(id)a3;
- (void)submitTaskMetricsToCoreAnalytics:(id)a3;
@end

@implementation RTWorkoutSchedulerMetrics

+ (id)metricsTaskTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"RTWorkoutSchedulerMetricsTaskTypeUnknown";
  }

  else
  {
    return off_2788CDD88[a3 - 1];
  }
}

- (RTWorkoutSchedulerMetrics)initWithDefaultsManager:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(RTWorkoutSchedulerMetrics *)self initWithDefaultsManager:v4 managedConfiguration:v5];

  return v6;
}

- (RTWorkoutSchedulerMetrics)initWithDefaultsManager:(id)a3 managedConfiguration:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v14.receiver = self;
    v14.super_class = RTWorkoutSchedulerMetrics;
    v7 = [(RTWorkoutSchedulerMetrics *)&v14 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_defaultsManager, a3);
      v9 = objc_opt_new();
      managedConfiguration = v8->_managedConfiguration;
      v8->_managedConfiguration = v9;

      [(RTWorkoutSchedulerMetrics *)v8 setup];
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)setup
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_onDailyMetricNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];

  v4 = objc_opt_new();
  [(RTWorkoutSchedulerMetrics *)self setMetricsDictionary:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"RTMetricManagerDailyMetricNotification" object:0];

  v4.receiver = self;
  v4.super_class = RTWorkoutSchedulerMetrics;
  [(RTWorkoutSchedulerMetrics *)&v4 dealloc];
}

- (void)incrementMetricDefaultForKey:(id)a3
{
  v4 = a3;
  v5 = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 unsignedIntegerValue];

  v9 = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
  [v9 setObject:v8 forKey:v4];
}

- (void)onDailyMetricNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 name];
      v15 = 138412802;
      v16 = v13;
      v17 = 2080;
      v18 = "[RTWorkoutSchedulerMetrics onDailyMetricNotification:]";
      v19 = 1024;
      v20 = 111;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", &v15, 0x1Cu);
    }
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v9 & 1) == 0)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [v4 name];
      v15 = 138412290;
      v16 = v14;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "unknown notification name, %@", &v15, 0xCu);
    }

LABEL_10:

    goto LABEL_11;
  }

  v10 = [(RTWorkoutSchedulerMetrics *)self managedConfiguration];
  v11 = [v10 isHealthDataSubmissionAllowed];

  if ((v11 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "Health Data Submission not allowed on this device.", &v15, 2u);
    }

    goto LABEL_10;
  }

  [(RTWorkoutSchedulerMetrics *)self collectDailyMetrics];
LABEL_11:
}

- (void)collectDailyMetrics
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerMetricsIsDeviceEligibleKey"];
  [v3 setObject:v4 forKeyedSubscript:@"isDeviceEligible"];

  v5 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerMetricsIsDeviceEligibleKey"];
  LOBYTE(v4) = [v5 BOOLValue];

  if (v4)
  {
    v6 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerMetricsMemoryFootprintDeferralDailyCount"];
    [v3 setObject:v6 forKeyedSubscript:@"memoryFootprintDeferralDailyCount"];

    v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerMetricsBackoffTimerDeferralDailyCount"];
    [v3 setObject:v7 forKeyedSubscript:@"backoffTimerDeferralDailyCount"];

    [(RTWorkoutSchedulerMetrics *)self supportedTaskKeys];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [RTWorkoutSchedulerMetrics metricsTaskTypeToString:[RTWorkoutSchedulerMetricsTask taskTypeForDefaultsKey:v12]];
          [v3 setObject:v13 forKeyedSubscript:@"taskType"];

          v14 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerMetricsIsDeviceEligibleKey"];
          [v3 setObject:v14 forKeyedSubscript:@"isDeviceEligible"];

          v15 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:v12];

          if (v15)
          {
            v16 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:v12];
            [v3 setObject:v16 forKeyedSubscript:@"taskRunDailyCount"];
          }

          else
          {
            [v3 setObject:&unk_28459EAC0 forKeyedSubscript:@"taskRunDailyCount"];
          }

          [(RTWorkoutSchedulerMetrics *)self submitDailyMetricsToCoreAnalytics:v3];
          [(RTDefaultsManager *)self->_defaultsManager setObject:&unk_28459EAC0 forKey:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v17 = objc_opt_new();
    [(RTWorkoutSchedulerMetrics *)self setMetricsDictionary:v17];

    v18 = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
    [v18 setObject:&unk_28459EAC0 forKey:@"RTDefaultsWorkoutSchedulerMetricsBackoffTimerDeferralDailyCount"];

    v19 = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
    [v19 setObject:&unk_28459EAC0 forKey:@"RTDefaultsWorkoutSchedulerMetricsMemoryFootprintDeferralDailyCount"];
  }

  else
  {
    [(RTWorkoutSchedulerMetrics *)self submitDailyMetricsToCoreAnalytics:v3];
  }
}

- (void)startCollectMetricsTaskType:(unint64_t)a3 totalNAtStart:(int64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = [(RTWorkoutSchedulerMetrics *)self managedConfiguration];
  v9 = [v8 isHealthDataSubmissionAllowed];

  if (v9)
  {
    v10 = [RTWorkoutSchedulerMetrics metricsTaskTypeToString:a3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        v24 = 138412802;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, %@", &v24, 0x20u);
      }
    }

    v15 = [(RTWorkoutSchedulerMetrics *)self metricsDictionary];
    v16 = [v15 objectForKey:v10];

    if (!v16)
    {
      v17 = [RTWorkoutSchedulerMetricsTask alloc];
      v18 = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
      v16 = [(RTWorkoutSchedulerMetricsTask *)v17 initWithTaskType:a3 defaultsManager:v18];
    }

    v19 = [MEMORY[0x277CBEAA8] now];
    [(RTWorkoutSchedulerMetricsTask *)v16 setTaskStart:v19];

    +[RTRuntime footprint];
    [(RTWorkoutSchedulerMetricsTask *)v16 setMemoryFootprintAtStart:v20];
    v21 = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
    v22 = [v21 objectForKey:@"RTDefaultsWorkoutSchedulerTopNWorkoutsKey"];
    -[RTWorkoutSchedulerMetricsTask setCurrentNAtStart:](v16, "setCurrentNAtStart:", [v22 unsignedIntegerValue]);

    [(RTWorkoutSchedulerMetricsTask *)v16 setTotalNAtStart:a4];
    v23 = [(RTWorkoutSchedulerMetrics *)self metricsDictionary];
    [v23 setObject:v16 forKey:v10];

LABEL_9:
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "Health Data Submission not allowed on this device.", &v24, 2u);
    }

    goto LABEL_9;
  }
}

- (void)stopCollectMetricsTaskType:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [(RTWorkoutSchedulerMetrics *)self managedConfiguration];
  v7 = [v6 isHealthDataSubmissionAllowed];

  if (v7)
  {
    v8 = [RTWorkoutSchedulerMetrics metricsTaskTypeToString:a3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        v18 = 138412802;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, %@", &v18, 0x20u);
      }
    }

    v13 = [(RTWorkoutSchedulerMetrics *)self metricsDictionary];
    v14 = [v13 objectForKey:v8];

    v15 = [MEMORY[0x277CBEAA8] now];
    [v14 setTaskFinish:v15];

    +[RTRuntime footprint];
    [v14 setMemoryFootprintAtFinish:v16];
    v17 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerTopNWorkoutsKey"];
    [v14 setCurrentNAtFinish:{objc_msgSend(v17, "unsignedIntegerValue")}];

    [(RTWorkoutSchedulerMetrics *)self createTaskMetricsDictionary:v14];
LABEL_7:

    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Health Data Submission not allowed on this device.", &v18, 2u);
    }

    goto LABEL_7;
  }
}

- (void)createTaskMetricsDictionary:(id)a3
{
  v32 = a3;
  v4 = objc_opt_new();
  v5 = [RTMetric binsFromStart:&unk_28459EAC0 toEnd:&unk_28459EAD8 gap:&unk_28459EAF0];
  v6 = [RTMetric binsFromStart:&unk_28459EAC0 toEnd:&unk_28459EB08 gap:&unk_28459EAF0];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "currentNAtStart")}];
  v8 = [RTMetric binForNumber:v7 bins:v6];
  [v4 setObject:v8 forKeyedSubscript:@"currentNAtStart"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "currentNAtFinish")}];
  v10 = [RTMetric binForNumber:v9 bins:v6];
  [v4 setObject:v10 forKeyedSubscript:@"currentNAtFinish"];

  v11 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerWorldBuildStartTimeKey"];
  v12 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerWorldBuildFinishTimeKey"];
  if (v12 && ([MEMORY[0x277CBEAA8] distantPast], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToDate:", v13), v13, (v14 & 1) == 0))
  {
    [v12 timeIntervalSinceDate:v11];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v17 = [RTMetric binForNumber:v16 bins:v5];
    [v4 setObject:v17 forKeyedSubscript:@"worldBuildDuration"];

    v15 = MEMORY[0x277CBEC38];
  }

  else
  {
    v15 = MEMORY[0x277CBEC28];
  }

  [v4 setObject:v15 forKeyedSubscript:@"worldBuildIsFinished"];
  v18 = [v32 taskFinish];
  v19 = [v32 taskStart];
  [v18 timeIntervalSinceDate:v19];
  v21 = v20;

  v22 = +[RTWorkoutSchedulerMetrics metricsTaskTypeToString:](RTWorkoutSchedulerMetrics, "metricsTaskTypeToString:", [v32 taskType]);
  [v4 setObject:v22 forKeyedSubscript:@"taskType"];

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  v24 = [RTMetric binForNumber:v23 bins:v5];
  [v4 setObject:v24 forKeyedSubscript:@"taskDuration"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "memoryFootprintAtStart")}];
  v26 = [RTMetric binForNumber:v25 bins:v6];
  [v4 setObject:v26 forKeyedSubscript:@"memoryFootprintAtStart"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "memoryFootprintAtFinish")}];
  v28 = [RTMetric binForNumber:v27 bins:v6];
  [v4 setObject:v28 forKeyedSubscript:@"memoryFootprintAtFinish"];

  v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v32, "totalNAtStart")}];
  [v4 setObject:v29 forKeyedSubscript:@"totalNAtStart"];

  v30 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerMetricsIsDeviceEligibleKey"];
  [v4 setObject:v30 forKeyedSubscript:@"isDeviceEligible"];

  [v32 setTaskRunDailyCount:{objc_msgSend(v32, "taskRunDailyCount") + 1}];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "taskRunDailyCount")}];
  [v4 setObject:v31 forKeyedSubscript:@"taskRunDailyCount"];

  [v32 resetTaskState];
  [(RTWorkoutSchedulerMetrics *)self submitTaskMetricsToCoreAnalytics:v4];
}

- (void)submitDailyMetricsToCoreAnalytics:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v7 = [v5 initWithCString:RTAnalyticsEventWorkoutSchedulerDaily encoding:1];
  log_analytics_submission(v7, v4);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v7];
  AnalyticsSendEvent();
}

- (void)submitTaskMetricsToCoreAnalytics:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v7 = [v5 initWithCString:RTAnalyticsEventWorkoutScheduler encoding:1];
  log_analytics_submission(v7, v4);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v7];
  AnalyticsSendEvent();
}

@end