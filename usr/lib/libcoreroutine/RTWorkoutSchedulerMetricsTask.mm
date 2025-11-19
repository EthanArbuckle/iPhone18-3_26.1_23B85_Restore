@interface RTWorkoutSchedulerMetricsTask
+ (id)defaultsKeyForTaskType:(unint64_t)a3;
+ (unint64_t)taskTypeForDefaultsKey:(id)a3;
- (RTWorkoutSchedulerMetricsTask)initWithTaskType:(unint64_t)a3 defaultsManager:(id)a4;
- (unint64_t)taskRunDailyCountForMetricsTaskType:(unint64_t)a3;
- (void)resetTaskState;
@end

@implementation RTWorkoutSchedulerMetricsTask

+ (id)defaultsKeyForTaskType:(unint64_t)a3
{
  if (a3 > 6)
  {
    return @"RTDefaultsWorkoutSchedulerMetricsTaskTypeInitialClusterAndSyncKey";
  }

  else
  {
    return off_2788D1260[a3];
  }
}

+ (unint64_t)taskTypeForDefaultsKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeInitialClusterAndSyncKey"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeWorkoutComparisonKey"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeWorkoutComparisonOnChargerKey"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeClusterAndSyncKey"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeUpdateRelevanceScoreKey"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeProcessNewlyAddedWorkoutKey"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (RTWorkoutSchedulerMetricsTask)initWithTaskType:(unint64_t)a3 defaultsManager:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = RTWorkoutSchedulerMetricsTask;
    v8 = [(RTWorkoutSchedulerMetricsTask *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_defaultsManager, a4);
      [(RTWorkoutSchedulerMetricsTask *)v9 setTaskType:a3];
      [(RTWorkoutSchedulerMetricsTask *)v9 setTaskStart:0];
      [(RTWorkoutSchedulerMetricsTask *)v9 setTaskFinish:0];
      [(RTWorkoutSchedulerMetricsTask *)v9 setMemoryFootprintAtStart:-1];
      [(RTWorkoutSchedulerMetricsTask *)v9 setMemoryFootprintAtFinish:-1];
      [(RTWorkoutSchedulerMetricsTask *)v9 setTaskRunDailyCount:[(RTWorkoutSchedulerMetricsTask *)v9 taskRunDailyCountForMetricsTaskType:a3]];
      [(RTWorkoutSchedulerMetricsTask *)v9 setTotalNAtStart:-1];
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)resetTaskState
{
  [(RTWorkoutSchedulerMetricsTask *)self setTaskStart:0];
  [(RTWorkoutSchedulerMetricsTask *)self setTaskFinish:0];
  [(RTWorkoutSchedulerMetricsTask *)self setMemoryFootprintAtStart:-1];
  [(RTWorkoutSchedulerMetricsTask *)self setMemoryFootprintAtFinish:-1];
  v3 = [(RTWorkoutSchedulerMetricsTask *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTWorkoutSchedulerMetricsTask taskRunDailyCount](self, "taskRunDailyCount")}];
  v5 = [RTWorkoutSchedulerMetricsTask defaultsKeyForTaskType:[(RTWorkoutSchedulerMetricsTask *)self taskType]];
  [v3 setObject:v4 forKey:v5];

  [(RTWorkoutSchedulerMetricsTask *)self setTotalNAtStart:-1];
}

- (unint64_t)taskRunDailyCountForMetricsTaskType:(unint64_t)a3
{
  v4 = [RTWorkoutSchedulerMetricsTask defaultsKeyForTaskType:a3];
  v5 = [(RTWorkoutSchedulerMetricsTask *)self defaultsManager];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

@end