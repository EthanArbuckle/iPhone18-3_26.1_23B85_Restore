@interface RTBluePOIDailyMetrics
- (BOOL)shouldSubmit;
- (RTBluePOIDailyMetrics)initWithDefaultsManager:(id)manager;
- (id)description;
- (void)create;
- (void)increaseCountForKey:(id)key;
- (void)reset;
- (void)setValue:(id)value forKey:(id)key;
- (void)submit;
@end

@implementation RTBluePOIDailyMetrics

- (RTBluePOIDailyMetrics)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v13.receiver = self;
    v13.super_class = RTBluePOIDailyMetrics;
    v6 = [(RTBluePOIDailyMetrics *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_defaultsManager, manager);
      v8 = objc_opt_new();
      metrics = v7->_metrics;
      v7->_metrics = v8;
    }

    [(RTBluePOIDailyMetrics *)v7 reset];
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
  metrics = [(RTBluePOIDailyMetrics *)self metrics];
  [metrics removeAllObjects];

  defaultsManager = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [defaultsManager setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventBackgroundQueryCount"];

  defaultsManager2 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [defaultsManager2 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventOnDemandQueryCount"];

  defaultsManager3 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [defaultsManager3 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventOpportunisticWiFiScanRequestCount"];

  defaultsManager4 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [defaultsManager4 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventSavedTileCount"];

  defaultsManager5 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [defaultsManager5 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventTileDownloadCountOnBattery"];

  defaultsManager6 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [defaultsManager6 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventTileDownloadCountOnCharger"];

  defaultsManager7 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [defaultsManager7 setObject:&unk_28459E5F8 forKey:@"BluePOIDailyEventTotalSavedModelSize"];
}

- (void)create
{
  defaultsManager = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"BluePOIDailyEventBackgroundQueryCount"];
  unsignedIntValue = [v4 unsignedIntValue];

  defaultsManager2 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v7 = [defaultsManager2 objectForKey:@"BluePOIDailyEventOnDemandQueryCount"];
  unsignedIntValue2 = [v7 unsignedIntValue];

  defaultsManager3 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v10 = [defaultsManager3 objectForKey:@"BluePOIDailyEventOpportunisticWiFiScanRequestCount"];
  unsignedIntValue3 = [v10 unsignedIntValue];

  defaultsManager4 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v13 = [defaultsManager4 objectForKey:@"BluePOIDailyEventSavedTileCount"];
  unsignedIntValue4 = [v13 unsignedIntValue];

  defaultsManager5 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v16 = [defaultsManager5 objectForKey:@"BluePOIDailyEventTileDownloadCountOnBattery"];
  unsignedIntValue5 = [v16 unsignedIntValue];

  defaultsManager6 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v19 = [defaultsManager6 objectForKey:@"BluePOIDailyEventTileDownloadCountOnCharger"];
  unsignedIntValue6 = [v19 unsignedIntValue];

  defaultsManager7 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v22 = [defaultsManager7 objectForKey:@"BluePOIDailyEventTotalSavedModelSize"];
  unsignedIntValue7 = [v22 unsignedIntValue];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue];
  metrics = [(RTBluePOIDailyMetrics *)self metrics];
  [metrics setObject:v24 forKeyedSubscript:@"backgroundQueryCount"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue2];
  metrics2 = [(RTBluePOIDailyMetrics *)self metrics];
  [metrics2 setObject:v26 forKeyedSubscript:@"onDemandQueryCount"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue3];
  metrics3 = [(RTBluePOIDailyMetrics *)self metrics];
  [metrics3 setObject:v28 forKeyedSubscript:@"opportunisticWiFiScanRequestCount"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue4];
  metrics4 = [(RTBluePOIDailyMetrics *)self metrics];
  [metrics4 setObject:v30 forKeyedSubscript:@"savedTileCount"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue5];
  metrics5 = [(RTBluePOIDailyMetrics *)self metrics];
  [metrics5 setObject:v32 forKeyedSubscript:@"tileDownloadCountOnBattery"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue6];
  metrics6 = [(RTBluePOIDailyMetrics *)self metrics];
  [metrics6 setObject:v34 forKeyedSubscript:@"tileDownloadCountOnCharger"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue7];
  metrics7 = [(RTBluePOIDailyMetrics *)self metrics];
  [metrics7 setObject:v37 forKeyedSubscript:@"totalSavedModelSize"];
}

- (BOOL)shouldSubmit
{
  v17 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"BluePOIDailyEventSubmissonAttemptDate"];

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
    metrics = [(RTBluePOIDailyMetrics *)self metrics];
    log_analytics_submission(v4, metrics);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
    metrics2 = [(RTBluePOIDailyMetrics *)self metrics];
    AnalyticsSendEvent();
  }

  [(RTBluePOIDailyMetrics *)self reset];
  defaultsManager = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v8 = [MEMORY[0x277CBEAA8] now];
  [defaultsManager setObject:v8 forKey:@"BluePOIDailyEventSubmissonAttemptDate"];
}

- (void)increaseCountForKey:(id)key
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  defaultsManager = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v7 = [defaultsManager objectForKey:keyCopy];
  unsignedIntValue = [v7 unsignedIntValue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v13 = 138413058;
      v14 = v10;
      v15 = 2112;
      v16 = keyCopy;
      v17 = 2048;
      v18 = unsignedIntValue;
      v19 = 2048;
      v20 = unsignedIntValue + 1;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, key, %@, count, before, %lu, after, %lu", &v13, 0x2Au);
    }
  }

  defaultsManager2 = [(RTBluePOIDailyMetrics *)self defaultsManager];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue + 1];
  [defaultsManager2 setObject:v12 forKey:keyCopy];
}

- (void)setValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  defaultsManager = [(RTBluePOIDailyMetrics *)self defaultsManager];
  [defaultsManager setObject:valueCopy forKey:keyCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  metrics = [(RTBluePOIDailyMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTBluePOIDailyMetrics, %lu, ", objc_msgSend(metrics, "count")];

  metrics2 = [(RTBluePOIDailyMetrics *)self metrics];
  allKeys = [metrics2 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__RTBluePOIDailyMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [allKeys enumerateObjectsUsingBlock:v12];

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