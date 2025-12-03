@interface RTPlaceInferenceDailyMetrics
- (BOOL)shouldSubmit;
- (RTPlaceInferenceDailyMetrics)initWithDefaultsManager:(id)manager;
- (id)description;
- (void)create;
- (void)increaseCountForClientMappingIndex:(int)index;
- (void)reset;
- (void)submit;
@end

@implementation RTPlaceInferenceDailyMetrics

- (RTPlaceInferenceDailyMetrics)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v13.receiver = self;
    v13.super_class = RTPlaceInferenceDailyMetrics;
    v6 = [(RTPlaceInferenceDailyMetrics *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_defaultsManager, manager);
      v8 = objc_opt_new();
      metrics = v7->_metrics;
      v7->_metrics = v8;
    }

    self = v7;
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

- (void)reset
{
  metrics = [(RTPlaceInferenceDailyMetrics *)self metrics];
  [metrics removeAllObjects];

  v4 = 0;
  do
  {
    defaultsManager = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
    v6 = [(RTPlaceInferenceDailyMetrics *)self getClientKeyForDefaultManager:v4];
    [defaultsManager setObject:&unk_28459EF28 forKey:v6];

    v4 = (v4 + 1);
  }

  while (v4 != 20);
}

- (void)create
{
  v3 = 0;
  do
  {
    defaultsManager = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
    v5 = [(RTPlaceInferenceDailyMetrics *)self getClientKeyForDefaultManager:v3];
    v6 = [defaultsManager objectForKey:v5];
    unsignedIntValue = [v6 unsignedIntValue];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue];
    metrics = [(RTPlaceInferenceDailyMetrics *)self metrics];
    v10 = [(RTPlaceInferenceDailyMetrics *)self getClientKeyForDailyMetrics:v3];
    [metrics setObject:v8 forKeyedSubscript:v10];

    v3 = (v3 + 1);
  }

  while (v3 != 20);
}

- (BOOL)shouldSubmit
{
  defaultsManager = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"PlaceInferenceLastDailyMetricsSubmissionAttemptDate"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-90000.0];
    v5 = [v3 isAfterDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)submit
{
  if ([(RTPlaceInferenceDailyMetrics *)self shouldSubmit])
  {
    [(RTPlaceInferenceDailyMetrics *)self create];
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [v3 initWithCString:RTAnalyticsEventPlaceInferenceQueryDaily encoding:1];
    metrics = [(RTPlaceInferenceDailyMetrics *)self metrics];
    log_analytics_submission(v4, metrics);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
    metrics2 = [(RTPlaceInferenceDailyMetrics *)self metrics];
    AnalyticsSendEvent();
  }

  [(RTPlaceInferenceDailyMetrics *)self reset];
  defaultsManager = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CBEAA8] now];
  [defaultsManager setObject:v8 forKey:@"PlaceInferenceLastDailyMetricsSubmissionAttemptDate"];
}

- (void)increaseCountForClientMappingIndex:(int)index
{
  v9 = [(RTPlaceInferenceDailyMetrics *)self getClientKeyForDefaultManager:*&index];
  defaultsManager = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
  v5 = [defaultsManager objectForKey:v9];
  unsignedIntValue = [v5 unsignedIntValue];

  defaultsManager2 = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue + 1];
  [defaultsManager2 setObject:v8 forKey:v9];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  metrics = [(RTPlaceInferenceDailyMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTPlaceInferenceDailyMetrics count, %lu", objc_msgSend(metrics, "count")];

  metrics2 = [(RTPlaceInferenceDailyMetrics *)self metrics];
  allKeys = [metrics2 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__RTPlaceInferenceDailyMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [allKeys enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __43__RTPlaceInferenceDailyMetrics_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 metrics];
  v8 = [v5 valueForKey:v4];

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@, ", v4, v8];

  [v6 appendString:v7];
}

@end