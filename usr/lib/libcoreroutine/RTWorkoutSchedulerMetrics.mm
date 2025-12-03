@interface RTWorkoutSchedulerMetrics
+ (id)metricsTaskTypeToString:(unint64_t)string;
- (RTWorkoutSchedulerMetrics)initWithDefaultsManager:(id)manager;
- (RTWorkoutSchedulerMetrics)initWithDefaultsManager:(id)manager managedConfiguration:(id)configuration;
- (void)collectDailyMetrics;
- (void)createTaskMetricsDictionary:(id)dictionary;
- (void)dealloc;
- (void)incrementMetricDefaultForKey:(id)key;
- (void)onDailyMetricNotification:(id)notification;
- (void)setup;
- (void)startCollectMetricsTaskType:(unint64_t)type totalNAtStart:(int64_t)start;
- (void)stopCollectMetricsTaskType:(unint64_t)type;
- (void)submitDailyMetricsToCoreAnalytics:(id)analytics;
- (void)submitTaskMetricsToCoreAnalytics:(id)analytics;
@end

@implementation RTWorkoutSchedulerMetrics

+ (id)metricsTaskTypeToString:(unint64_t)string
{
  if (string - 1 > 5)
  {
    return @"RTWorkoutSchedulerMetricsTaskTypeUnknown";
  }

  else
  {
    return off_2788CDD88[string - 1];
  }
}

- (RTWorkoutSchedulerMetrics)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_opt_new();
  v6 = [(RTWorkoutSchedulerMetrics *)self initWithDefaultsManager:managerCopy managedConfiguration:v5];

  return v6;
}

- (RTWorkoutSchedulerMetrics)initWithDefaultsManager:(id)manager managedConfiguration:(id)configuration
{
  managerCopy = manager;
  if (managerCopy)
  {
    v14.receiver = self;
    v14.super_class = RTWorkoutSchedulerMetrics;
    v7 = [(RTWorkoutSchedulerMetrics *)&v14 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_defaultsManager, manager);
      v9 = objc_opt_new();
      managedConfiguration = v8->_managedConfiguration;
      v8->_managedConfiguration = v9;

      [(RTWorkoutSchedulerMetrics *)v8 setup];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setup
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onDailyMetricNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];

  v4 = objc_opt_new();
  [(RTWorkoutSchedulerMetrics *)self setMetricsDictionary:v4];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"RTMetricManagerDailyMetricNotification" object:0];

  v4.receiver = self;
  v4.super_class = RTWorkoutSchedulerMetrics;
  [(RTWorkoutSchedulerMetrics *)&v4 dealloc];
}

- (void)incrementMetricDefaultForKey:(id)key
{
  keyCopy = key;
  defaultsManager = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
  v6 = [defaultsManager objectForKey:keyCopy];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  defaultsManager2 = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [defaultsManager2 setObject:v8 forKey:keyCopy];
}

- (void)onDailyMetricNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      name2 = [notificationCopy name];
      v15 = 138412802;
      v16 = name2;
      v17 = 2080;
      v18 = "[RTWorkoutSchedulerMetrics onDailyMetricNotification:]";
      v19 = 1024;
      v20 = 111;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", &v15, 0x1Cu);
    }
  }

  name3 = [notificationCopy name];
  v9 = [name3 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v9 & 1) == 0)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      name4 = [notificationCopy name];
      v15 = 138412290;
      v16 = name4;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "unknown notification name, %@", &v15, 0xCu);
    }

LABEL_10:

    goto LABEL_11;
  }

  managedConfiguration = [(RTWorkoutSchedulerMetrics *)self managedConfiguration];
  isHealthDataSubmissionAllowed = [managedConfiguration isHealthDataSubmissionAllowed];

  if ((isHealthDataSubmissionAllowed & 1) == 0)
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

    defaultsManager = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
    [defaultsManager setObject:&unk_28459EAC0 forKey:@"RTDefaultsWorkoutSchedulerMetricsBackoffTimerDeferralDailyCount"];

    defaultsManager2 = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
    [defaultsManager2 setObject:&unk_28459EAC0 forKey:@"RTDefaultsWorkoutSchedulerMetricsMemoryFootprintDeferralDailyCount"];
  }

  else
  {
    [(RTWorkoutSchedulerMetrics *)self submitDailyMetricsToCoreAnalytics:v3];
  }
}

- (void)startCollectMetricsTaskType:(unint64_t)type totalNAtStart:(int64_t)start
{
  v30 = *MEMORY[0x277D85DE8];
  managedConfiguration = [(RTWorkoutSchedulerMetrics *)self managedConfiguration];
  isHealthDataSubmissionAllowed = [managedConfiguration isHealthDataSubmissionAllowed];

  if (isHealthDataSubmissionAllowed)
  {
    v10 = [RTWorkoutSchedulerMetrics metricsTaskTypeToString:type];
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

    metricsDictionary = [(RTWorkoutSchedulerMetrics *)self metricsDictionary];
    v16 = [metricsDictionary objectForKey:v10];

    if (!v16)
    {
      v17 = [RTWorkoutSchedulerMetricsTask alloc];
      defaultsManager = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
      v16 = [(RTWorkoutSchedulerMetricsTask *)v17 initWithTaskType:type defaultsManager:defaultsManager];
    }

    v19 = [MEMORY[0x277CBEAA8] now];
    [(RTWorkoutSchedulerMetricsTask *)v16 setTaskStart:v19];

    +[RTRuntime footprint];
    [(RTWorkoutSchedulerMetricsTask *)v16 setMemoryFootprintAtStart:v20];
    defaultsManager2 = [(RTWorkoutSchedulerMetrics *)self defaultsManager];
    v22 = [defaultsManager2 objectForKey:@"RTDefaultsWorkoutSchedulerTopNWorkoutsKey"];
    -[RTWorkoutSchedulerMetricsTask setCurrentNAtStart:](v16, "setCurrentNAtStart:", [v22 unsignedIntegerValue]);

    [(RTWorkoutSchedulerMetricsTask *)v16 setTotalNAtStart:start];
    metricsDictionary2 = [(RTWorkoutSchedulerMetrics *)self metricsDictionary];
    [metricsDictionary2 setObject:v16 forKey:v10];

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

- (void)stopCollectMetricsTaskType:(unint64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  managedConfiguration = [(RTWorkoutSchedulerMetrics *)self managedConfiguration];
  isHealthDataSubmissionAllowed = [managedConfiguration isHealthDataSubmissionAllowed];

  if (isHealthDataSubmissionAllowed)
  {
    v8 = [RTWorkoutSchedulerMetrics metricsTaskTypeToString:type];
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

    metricsDictionary = [(RTWorkoutSchedulerMetrics *)self metricsDictionary];
    v14 = [metricsDictionary objectForKey:v8];

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

- (void)createTaskMetricsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [RTMetric binsFromStart:&unk_28459EAC0 toEnd:&unk_28459EAD8 gap:&unk_28459EAF0];
  v6 = [RTMetric binsFromStart:&unk_28459EAC0 toEnd:&unk_28459EB08 gap:&unk_28459EAF0];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dictionaryCopy, "currentNAtStart")}];
  v8 = [RTMetric binForNumber:v7 bins:v6];
  [v4 setObject:v8 forKeyedSubscript:@"currentNAtStart"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dictionaryCopy, "currentNAtFinish")}];
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
  taskFinish = [dictionaryCopy taskFinish];
  taskStart = [dictionaryCopy taskStart];
  [taskFinish timeIntervalSinceDate:taskStart];
  v21 = v20;

  v22 = +[RTWorkoutSchedulerMetrics metricsTaskTypeToString:](RTWorkoutSchedulerMetrics, "metricsTaskTypeToString:", [dictionaryCopy taskType]);
  [v4 setObject:v22 forKeyedSubscript:@"taskType"];

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  v24 = [RTMetric binForNumber:v23 bins:v5];
  [v4 setObject:v24 forKeyedSubscript:@"taskDuration"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dictionaryCopy, "memoryFootprintAtStart")}];
  v26 = [RTMetric binForNumber:v25 bins:v6];
  [v4 setObject:v26 forKeyedSubscript:@"memoryFootprintAtStart"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dictionaryCopy, "memoryFootprintAtFinish")}];
  v28 = [RTMetric binForNumber:v27 bins:v6];
  [v4 setObject:v28 forKeyedSubscript:@"memoryFootprintAtFinish"];

  v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dictionaryCopy, "totalNAtStart")}];
  [v4 setObject:v29 forKeyedSubscript:@"totalNAtStart"];

  v30 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsWorkoutSchedulerMetricsIsDeviceEligibleKey"];
  [v4 setObject:v30 forKeyedSubscript:@"isDeviceEligible"];

  [dictionaryCopy setTaskRunDailyCount:{objc_msgSend(dictionaryCopy, "taskRunDailyCount") + 1}];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dictionaryCopy, "taskRunDailyCount")}];
  [v4 setObject:v31 forKeyedSubscript:@"taskRunDailyCount"];

  [dictionaryCopy resetTaskState];
  [(RTWorkoutSchedulerMetrics *)self submitTaskMetricsToCoreAnalytics:v4];
}

- (void)submitDailyMetricsToCoreAnalytics:(id)analytics
{
  v3 = MEMORY[0x277CCACA8];
  analyticsCopy = analytics;
  v5 = [v3 alloc];
  v7 = [v5 initWithCString:RTAnalyticsEventWorkoutSchedulerDaily encoding:1];
  log_analytics_submission(v7, analyticsCopy);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v7];
  AnalyticsSendEvent();
}

- (void)submitTaskMetricsToCoreAnalytics:(id)analytics
{
  v3 = MEMORY[0x277CCACA8];
  analyticsCopy = analytics;
  v5 = [v3 alloc];
  v7 = [v5 initWithCString:RTAnalyticsEventWorkoutScheduler encoding:1];
  log_analytics_submission(v7, analyticsCopy);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v7];
  AnalyticsSendEvent();
}

@end