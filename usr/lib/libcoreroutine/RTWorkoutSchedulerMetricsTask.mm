@interface RTWorkoutSchedulerMetricsTask
+ (id)defaultsKeyForTaskType:(unint64_t)type;
+ (unint64_t)taskTypeForDefaultsKey:(id)key;
- (RTWorkoutSchedulerMetricsTask)initWithTaskType:(unint64_t)type defaultsManager:(id)manager;
- (unint64_t)taskRunDailyCountForMetricsTaskType:(unint64_t)type;
- (void)resetTaskState;
@end

@implementation RTWorkoutSchedulerMetricsTask

+ (id)defaultsKeyForTaskType:(unint64_t)type
{
  if (type > 6)
  {
    return @"RTDefaultsWorkoutSchedulerMetricsTaskTypeInitialClusterAndSyncKey";
  }

  else
  {
    return off_2788D1260[type];
  }
}

+ (unint64_t)taskTypeForDefaultsKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeInitialClusterAndSyncKey"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeWorkoutComparisonKey"])
  {
    v4 = 2;
  }

  else if ([keyCopy isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeWorkoutComparisonOnChargerKey"])
  {
    v4 = 3;
  }

  else if ([keyCopy isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeClusterAndSyncKey"])
  {
    v4 = 4;
  }

  else if ([keyCopy isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeUpdateRelevanceScoreKey"])
  {
    v4 = 5;
  }

  else if ([keyCopy isEqualToString:@"RTDefaultsWorkoutSchedulerMetricsTaskTypeProcessNewlyAddedWorkoutKey"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (RTWorkoutSchedulerMetricsTask)initWithTaskType:(unint64_t)type defaultsManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v13.receiver = self;
    v13.super_class = RTWorkoutSchedulerMetricsTask;
    v8 = [(RTWorkoutSchedulerMetricsTask *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_defaultsManager, manager);
      [(RTWorkoutSchedulerMetricsTask *)v9 setTaskType:type];
      [(RTWorkoutSchedulerMetricsTask *)v9 setTaskStart:0];
      [(RTWorkoutSchedulerMetricsTask *)v9 setTaskFinish:0];
      [(RTWorkoutSchedulerMetricsTask *)v9 setMemoryFootprintAtStart:-1];
      [(RTWorkoutSchedulerMetricsTask *)v9 setMemoryFootprintAtFinish:-1];
      [(RTWorkoutSchedulerMetricsTask *)v9 setTaskRunDailyCount:[(RTWorkoutSchedulerMetricsTask *)v9 taskRunDailyCountForMetricsTaskType:type]];
      [(RTWorkoutSchedulerMetricsTask *)v9 setTotalNAtStart:-1];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)resetTaskState
{
  [(RTWorkoutSchedulerMetricsTask *)self setTaskStart:0];
  [(RTWorkoutSchedulerMetricsTask *)self setTaskFinish:0];
  [(RTWorkoutSchedulerMetricsTask *)self setMemoryFootprintAtStart:-1];
  [(RTWorkoutSchedulerMetricsTask *)self setMemoryFootprintAtFinish:-1];
  defaultsManager = [(RTWorkoutSchedulerMetricsTask *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTWorkoutSchedulerMetricsTask taskRunDailyCount](self, "taskRunDailyCount")}];
  v5 = [RTWorkoutSchedulerMetricsTask defaultsKeyForTaskType:[(RTWorkoutSchedulerMetricsTask *)self taskType]];
  [defaultsManager setObject:v4 forKey:v5];

  [(RTWorkoutSchedulerMetricsTask *)self setTotalNAtStart:-1];
}

- (unint64_t)taskRunDailyCountForMetricsTaskType:(unint64_t)type
{
  v4 = [RTWorkoutSchedulerMetricsTask defaultsKeyForTaskType:type];
  defaultsManager = [(RTWorkoutSchedulerMetricsTask *)self defaultsManager];
  v6 = [defaultsManager objectForKey:v4];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end