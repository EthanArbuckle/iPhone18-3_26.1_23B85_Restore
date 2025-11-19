@interface RTBluePOIDailyMetrics
- (BOOL)shouldSubmit;
- (RTBluePOIDailyMetrics)initWithDefaultsManager:(id)a3;
- (id)description;
- (void)create;
- (void)increaseCountForKey:(id)a3;
- (void)reset;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)submit;
@end

@implementation RTBluePOIDailyMetrics

- (RTBluePOIDailyMetrics)initWithDefaultsManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = RTBluePOIDailyMetrics;
    v6 = [(RTBluePOIDailyMetrics *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_defaultsManager, a3);
      v8 = objc_opt_new();
      metrics = v7->_metrics;
      v7->_metrics = v8;
    }

    [(RTBluePOIDailyMetrics *)v7 reset];
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
  v3 = [(RTBluePOIDailyMetrics *)self metrics];
  [v3 removeAllObjects];

  v4 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [v4 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventBackgroundQueryCount"];

  v5 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [v5 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventOnDemandQueryCount"];

  v6 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [v6 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventOpportunisticWiFiScanRequestCount"];

  v7 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [v7 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventSavedTileCount"];

  v8 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [v8 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventTileDownloadCountOnBattery"];

  v9 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [v9 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventTileDownloadCountOnCharger"];

  v10 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [v10 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventTotalSavedModelSize"];
}

- (void)create
{
  v3 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v4 = [v3 objectForKey:@"BluePOIDailyEventBackgroundQueryCount"];
  v5 = [v4 unsignedIntValue];

  v6 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v7 = [v6 objectForKey:@"BluePOIDailyEventOnDemandQueryCount"];
  v8 = [v7 unsignedIntValue];

  v9 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v10 = [v9 objectForKey:@"BluePOIDailyEventOpportunisticWiFiScanRequestCount"];
  v11 = [v10 unsignedIntValue];

  v12 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v13 = [v12 objectForKey:@"BluePOIDailyEventSavedTileCount"];
  v14 = [v13 unsignedIntValue];

  v15 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v16 = [v15 objectForKey:@"BluePOIDailyEventTileDownloadCountOnBattery"];
  v17 = [v16 unsignedIntValue];

  v18 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v19 = [v18 objectForKey:@"BluePOIDailyEventTileDownloadCountOnCharger"];
  v20 = [v19 unsignedIntValue];

  v21 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v22 = [v21 objectForKey:@"BluePOIDailyEventTotalSavedModelSize"];
  v23 = [v22 unsignedIntValue];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v25 = [(RTBluePOIDailyMetrics *)self metrics];
  [v25 setObject:v24 forKeyedSubscript:@"backgroundQueryCount"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v27 = [(RTBluePOIDailyMetrics *)self metrics];
  [v27 setObject:v26 forKeyedSubscript:@"onDemandQueryCount"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v29 = [(RTBluePOIDailyMetrics *)self metrics];
  [v29 setObject:v28 forKeyedSubscript:@"opportunisticWiFiScanRequestCount"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v31 = [(RTBluePOIDailyMetrics *)self metrics];
  [v31 setObject:v30 forKeyedSubscript:@"savedTileCount"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  v33 = [(RTBluePOIDailyMetrics *)self metrics];
  [v33 setObject:v32 forKeyedSubscript:@"tileDownloadCountOnBattery"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
  v35 = [(RTBluePOIDailyMetrics *)self metrics];
  [v35 setObject:v34 forKeyedSubscript:@"tileDownloadCountOnCharger"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
  v36 = [(RTBluePOIDailyMetrics *)self metrics];
  [v36 setObject:v37 forKeyedSubscript:@"totalSavedModelSize"];
}

- (BOOL)shouldSubmit
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v4 = [v3 objectForKey:@"BluePOIDailyEventSubmissonAttemptDate"];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-90000.0];
    v6 = [v4 isAfterDate:v5];
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v9 = @"NO";
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      if (v6)
      {
        v9 = @"YES";
      }

      v14 = v4;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, last submission date, %@, shouldSubmit, %@", &v11, 0x20u);
    }
  }

  return v6;
}

- (void)submit
{
  if ([(RTBluePOIDailyMetrics *)self shouldSubmit])
  {
    [(RTBluePOIDailyMetrics *)self create];
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [v3 initWithCString:RTAnalyticsEventBluePOIQueryDaily encoding:1];
    v5 = [(RTBluePOIDailyMetrics *)self metrics];
    log_analytics_submission(v4, v5);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
    v7 = [(RTBluePOIDailyMetrics *)self metrics];
    AnalyticsSendEvent();
  }

  [(RTBluePOIDailyMetrics *)self reset];
  v9 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CBEAA8] now];
  [v9 setObject:v8 forKey:@"BluePOIDailyEventSubmissonAttemptDate"];
}

- (void)increaseCountForKey:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v7 = [v6 objectForKey:v5];
  v8 = [v7 unsignedIntValue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v13 = 138413058;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      v17 = 2048;
      v18 = v8;
      v19 = 2048;
      v20 = v8 + 1;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, key, %@, count, before, %lu, after, %lu", &v13, 0x2Au);
    }
  }

  v11 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8 + 1];
  [v11 setObject:v12 forKey:v5];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [v8 setObject:v7 forKey:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(RTBluePOIDailyMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTBluePOIDailyMetrics, %lu, ", objc_msgSend(v4, "count")];

  v6 = [(RTBluePOIDailyMetrics *)self metrics];
  v7 = [v6 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__RTBluePOIDailyMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __36__RTBluePOIDailyMetrics_description__block_invoke(uint64_t a1, void *a2)
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