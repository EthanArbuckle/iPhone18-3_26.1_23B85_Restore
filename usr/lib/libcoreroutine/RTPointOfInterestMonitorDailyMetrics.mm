@interface RTPointOfInterestMonitorDailyMetrics
- (BOOL)shouldSubmit;
- (RTPointOfInterestMonitorDailyMetrics)initWithDefaultsManager:(id)manager;
- (id)description;
- (void)create;
- (void)increaseCountForKey:(id)key;
- (void)reset;
- (void)submit;
@end

@implementation RTPointOfInterestMonitorDailyMetrics

- (RTPointOfInterestMonitorDailyMetrics)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v13.receiver = self;
    v13.super_class = RTPointOfInterestMonitorDailyMetrics;
    v6 = [(RTPointOfInterestMonitorDailyMetrics *)&v13 init];
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
  metrics = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [metrics removeAllObjects];

  defaultsManager = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [defaultsManager setObject:&unk_28459C558 forKey:@"InstantPOIMetricsArrivalEventCount"];

  defaultsManager2 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [defaultsManager2 setObject:&unk_28459C558 forKey:@"InstantPOIMetricsBuildingFenceSetupCount"];

  defaultsManager3 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [defaultsManager3 setObject:&unk_28459C558 forKey:@"InstantPOIMetricsHighAccuracyLocationRequestCount"];

  defaultsManager4 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [defaultsManager4 setObject:&unk_28459C558 forKey:@"InstantPOIMetricsBluePOIQueryCount"];

  defaultsManager5 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [defaultsManager5 setObject:&unk_28459C558 forKey:@"InstantPOIMetricsVisitCount"];
}

- (void)create
{
  defaultsManager = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"InstantPOIMetricsArrivalEventCount"];
  unsignedIntValue = [v4 unsignedIntValue];

  defaultsManager2 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v7 = [defaultsManager2 objectForKey:@"InstantPOIMetricsBuildingFenceSetupCount"];
  unsignedIntValue2 = [v7 unsignedIntValue];

  defaultsManager3 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v10 = [defaultsManager3 objectForKey:@"InstantPOIMetricsHighAccuracyLocationRequestCount"];
  unsignedIntValue3 = [v10 unsignedIntValue];

  defaultsManager4 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v13 = [defaultsManager4 objectForKey:@"InstantPOIMetricsBluePOIQueryCount"];
  unsignedIntValue4 = [v13 unsignedIntValue];

  defaultsManager5 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v16 = [defaultsManager5 objectForKey:@"InstantPOIMetricsVisitCount"];
  unsignedIntValue5 = [v16 unsignedIntValue];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue];
  metrics = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [metrics setObject:v18 forKeyedSubscript:@"arrivalEventCount"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue2];
  metrics2 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [metrics2 setObject:v20 forKeyedSubscript:@"buildingFenceSetupCount"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue3];
  metrics3 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [metrics3 setObject:v22 forKeyedSubscript:@"highAccuracyLocationRequestCount"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue4];
  metrics4 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [metrics4 setObject:v24 forKeyedSubscript:@"bluePOIQueryCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue5];
  metrics5 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [metrics5 setObject:v27 forKeyedSubscript:@"visitCount"];
}

- (BOOL)shouldSubmit
{
  defaultsManager = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"InstantPOILastDailyMetricsSubmissonAttemptDate"];

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
  if ([(RTPointOfInterestMonitorDailyMetrics *)self shouldSubmit])
  {
    [(RTPointOfInterestMonitorDailyMetrics *)self create];
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [v3 initWithCString:RTAnalyticsEventPointOfInterestMonitorDaily encoding:1];
    metrics = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
    log_analytics_submission(v4, metrics);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
    metrics2 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
    AnalyticsSendEvent();
  }

  [(RTPointOfInterestMonitorDailyMetrics *)self reset];
  defaultsManager = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CBEAA8] now];
  [defaultsManager setObject:v8 forKey:@"InstantPOILastDailyMetricsSubmissonAttemptDate"];
}

- (void)increaseCountForKey:(id)key
{
  keyCopy = key;
  defaultsManager = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v6 = [defaultsManager objectForKey:keyCopy];
  unsignedIntValue = [v6 unsignedIntValue];

  defaultsManager2 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue + 1];
  [defaultsManager2 setObject:v8 forKey:keyCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  metrics = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTPointOfInterestMonitorDailyMetrics, %lu, ", objc_msgSend(metrics, "count")];

  metrics2 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  allKeys = [metrics2 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__RTPointOfInterestMonitorDailyMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [allKeys enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __51__RTPointOfInterestMonitorDailyMetrics_description__block_invoke(uint64_t a1, void *a2)
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