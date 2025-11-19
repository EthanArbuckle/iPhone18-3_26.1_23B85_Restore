@interface RTPointOfInterestMonitorDailyMetrics
- (BOOL)shouldSubmit;
- (RTPointOfInterestMonitorDailyMetrics)initWithDefaultsManager:(id)a3;
- (id)description;
- (void)create;
- (void)increaseCountForKey:(id)a3;
- (void)reset;
- (void)submit;
@end

@implementation RTPointOfInterestMonitorDailyMetrics

- (RTPointOfInterestMonitorDailyMetrics)initWithDefaultsManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = RTPointOfInterestMonitorDailyMetrics;
    v6 = [(RTPointOfInterestMonitorDailyMetrics *)&v13 init];
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
  v3 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [v3 removeAllObjects];

  v4 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [v4 setObject:&unk_28459C558 forKey:@"InstantPOIMetricsArrivalEventCount"];

  v5 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [v5 setObject:&unk_28459C558 forKey:@"InstantPOIMetricsBuildingFenceSetupCount"];

  v6 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [v6 setObject:&unk_28459C558 forKey:@"InstantPOIMetricsHighAccuracyLocationRequestCount"];

  v7 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [v7 setObject:&unk_28459C558 forKey:@"InstantPOIMetricsBluePOIQueryCount"];

  v8 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  [v8 setObject:&unk_28459C558 forKey:@"InstantPOIMetricsVisitCount"];
}

- (void)create
{
  v3 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v4 = [v3 objectForKey:@"InstantPOIMetricsArrivalEventCount"];
  v5 = [v4 unsignedIntValue];

  v6 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v7 = [v6 objectForKey:@"InstantPOIMetricsBuildingFenceSetupCount"];
  v8 = [v7 unsignedIntValue];

  v9 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v10 = [v9 objectForKey:@"InstantPOIMetricsHighAccuracyLocationRequestCount"];
  v11 = [v10 unsignedIntValue];

  v12 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v13 = [v12 objectForKey:@"InstantPOIMetricsBluePOIQueryCount"];
  v14 = [v13 unsignedIntValue];

  v15 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v16 = [v15 objectForKey:@"InstantPOIMetricsVisitCount"];
  v17 = [v16 unsignedIntValue];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v19 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [v19 setObject:v18 forKeyedSubscript:@"arrivalEventCount"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v21 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [v21 setObject:v20 forKeyedSubscript:@"buildingFenceSetupCount"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v23 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [v23 setObject:v22 forKeyedSubscript:@"highAccuracyLocationRequestCount"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v25 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [v25 setObject:v24 forKeyedSubscript:@"bluePOIQueryCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  v26 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  [v26 setObject:v27 forKeyedSubscript:@"visitCount"];
}

- (BOOL)shouldSubmit
{
  v2 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v3 = [v2 objectForKey:@"InstantPOILastDailyMetricsSubmissonAttemptDate"];

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
    v5 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
    log_analytics_submission(v4, v5);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
    v7 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
    AnalyticsSendEvent();
  }

  [(RTPointOfInterestMonitorDailyMetrics *)self reset];
  v9 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CBEAA8] now];
  [v9 setObject:v8 forKey:@"InstantPOILastDailyMetricsSubmissonAttemptDate"];
}

- (void)increaseCountForKey:(id)a3
{
  v4 = a3;
  v5 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 unsignedIntValue];

  v9 = [(RTPointOfInterestMonitorDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
  [v9 setObject:v8 forKey:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTPointOfInterestMonitorDailyMetrics, %lu, ", objc_msgSend(v4, "count")];

  v6 = [(RTPointOfInterestMonitorDailyMetrics *)self metrics];
  v7 = [v6 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__RTPointOfInterestMonitorDailyMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

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