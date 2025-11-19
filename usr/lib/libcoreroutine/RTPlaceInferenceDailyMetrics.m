@interface RTPlaceInferenceDailyMetrics
- (BOOL)shouldSubmit;
- (RTPlaceInferenceDailyMetrics)initWithDefaultsManager:(id)a3;
- (id)description;
- (void)create;
- (void)increaseCountForClientMappingIndex:(int)a3;
- (void)reset;
- (void)submit;
@end

@implementation RTPlaceInferenceDailyMetrics

- (RTPlaceInferenceDailyMetrics)initWithDefaultsManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = RTPlaceInferenceDailyMetrics;
    v6 = [(RTPlaceInferenceDailyMetrics *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_defaultsManager, a3);
      v8 = objc_opt_new();
      metrics = v7->_metrics;
      v7->_metrics = v8;
    }

    self = v7;
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

- (void)reset
{
  v3 = [(RTPlaceInferenceDailyMetrics *)self metrics];
  [v3 removeAllObjects];

  v4 = 0;
  do
  {
    v5 = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
    v6 = [(RTPlaceInferenceDailyMetrics *)self getClientKeyForDefaultManager:v4];
    [v5 setObject:&unk_28459EF28 forKey:v6];

    v4 = (v4 + 1);
  }

  while (v4 != 20);
}

- (void)create
{
  v3 = 0;
  do
  {
    v4 = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
    v5 = [(RTPlaceInferenceDailyMetrics *)self getClientKeyForDefaultManager:v3];
    v6 = [v4 objectForKey:v5];
    v7 = [v6 unsignedIntValue];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v9 = [(RTPlaceInferenceDailyMetrics *)self metrics];
    v10 = [(RTPlaceInferenceDailyMetrics *)self getClientKeyForDailyMetrics:v3];
    [v9 setObject:v8 forKeyedSubscript:v10];

    v3 = (v3 + 1);
  }

  while (v3 != 20);
}

- (BOOL)shouldSubmit
{
  v2 = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
  v3 = [v2 objectForKey:@"PlaceInferenceLastDailyMetricsSubmissionAttemptDate"];

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
    v5 = [(RTPlaceInferenceDailyMetrics *)self metrics];
    log_analytics_submission(v4, v5);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
    v7 = [(RTPlaceInferenceDailyMetrics *)self metrics];
    AnalyticsSendEvent();
  }

  [(RTPlaceInferenceDailyMetrics *)self reset];
  v9 = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CBEAA8] now];
  [v9 setObject:v8 forKey:@"PlaceInferenceLastDailyMetricsSubmissionAttemptDate"];
}

- (void)increaseCountForClientMappingIndex:(int)a3
{
  v9 = [(RTPlaceInferenceDailyMetrics *)self getClientKeyForDefaultManager:*&a3];
  v4 = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
  v5 = [v4 objectForKey:v9];
  v6 = [v5 unsignedIntValue];

  v7 = [(RTPlaceInferenceDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6 + 1];
  [v7 setObject:v8 forKey:v9];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(RTPlaceInferenceDailyMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTPlaceInferenceDailyMetrics count, %lu", objc_msgSend(v4, "count")];

  v6 = [(RTPlaceInferenceDailyMetrics *)self metrics];
  v7 = [v6 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__RTPlaceInferenceDailyMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

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