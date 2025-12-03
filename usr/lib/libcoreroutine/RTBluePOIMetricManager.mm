@interface RTBluePOIMetricManager
- (BOOL)_requestCollectQueryEvent;
- (BOOL)requestCollectQueryEvent;
- (RTBluePOIMetricManager)initWithDefaultsManager:(id)manager bluePOITileStore:(id)store distanceCalculator:(id)calculator fileManager:(id)fileManager;
- (id)objectForKey:(id)key;
- (void)_onDailyMetricsNotification:(id)notification;
- (void)_setEventMetricsValue:(id)value forKey:(id)key;
- (void)_setObject:(id)object forKey:(id)key;
- (void)_setup;
- (void)_stopCollectQueryEvent;
- (void)_submitEventMetrics;
- (void)onDailyMetricsNotification:(id)notification;
- (void)setEventMetricsValue:(id)value forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)stopCollectQueryEvent;
- (void)submitEventMetrics;
@end

@implementation RTBluePOIMetricManager

- (RTBluePOIMetricManager)initWithDefaultsManager:(id)manager bluePOITileStore:(id)store distanceCalculator:(id)calculator fileManager:(id)fileManager
{
  managerCopy = manager;
  storeCopy = store;
  calculatorCopy = calculator;
  fileManagerCopy = fileManager;
  v15 = fileManagerCopy;
  if (!managerCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: defaultsManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_17;
  }

  if (!storeCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: bluePOITileStore";
    goto LABEL_16;
  }

  if (!calculatorCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_16;
  }

  if (!fileManagerCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: fileManager";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v28.receiver = self;
  v28.super_class = RTBluePOIMetricManager;
  v16 = [(RTNotifier *)&v28 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_bluePOITileStore, store);
    objc_storeStrong(&v17->_defaultsManager, manager);
    objc_storeStrong(&v17->_distanceCalculator, calculator);
    objc_storeStrong(&v17->_fileManager, fileManager);
    v18 = [[RTBluePOIDailyMetrics alloc] initWithDefaultsManager:managerCopy];
    dailyMetrics = v17->_dailyMetrics;
    v17->_dailyMetrics = v18;

    v20 = objc_opt_new();
    eventMetrics = v17->_eventMetrics;
    v17->_eventMetrics = v20;

    v22 = [MEMORY[0x277CCAA00] pathInCacheDirectory:@"BluePOIModels"];
    bluePOIModelPath = v17->_bluePOIModelPath;
    v17->_bluePOIModelPath = v22;

    v17->_collectingEventMetrics = 0;
  }

  [(RTService *)v17 setup];
  self = v17;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (void)_setup
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

- (void)onDailyMetricsNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTBluePOIMetricManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onDailyMetricsNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received notification, %@", buf, 0x16u);
    }
  }

  v8 = MEMORY[0x277CCAA00];
  bluePOIModelPath = [(RTBluePOIMetricManager *)self bluePOIModelPath];
  v10 = vcvtpd_u64_f64(vcvtd_n_f64_u64([v8 directorySizeAtPath:bluePOIModelPath], 0x14uLL));

  dailyMetrics = [(RTBluePOIMetricManager *)self dailyMetrics];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  [dailyMetrics setValue:v12 forKey:@"BluePOIDailyEventTotalSavedModelSize"];

  bluePOITileStore = [(RTBluePOIMetricManager *)self bluePOITileStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__RTBluePOIMetricManager__onDailyMetricsNotification___block_invoke;
  v14[3] = &unk_2788CC0A8;
  v14[4] = self;
  v14[5] = a2;
  [bluePOITileStore fetchBluePOITileCountWithHandler:v14];
}

void __54__RTBluePOIMetricManager__onDailyMetricsNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (v5 && !v6)
  {
    v8 = [v5 unsignedIntegerValue];
  }

  v9 = [*(a1 + 32) dailyMetrics];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v9 setValue:v10 forKey:@"BluePOIDailyEventSavedTileCount"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(*(a1 + 40));
      v13 = [*(a1 + 32) dailyMetrics];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, submitting BluePOI daily metrics, %@", &v15, 0x16u);
    }
  }

  v14 = [*(a1 + 32) dailyMetrics];
  [v14 submit];
}

- (void)submitEventMetrics
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTBluePOIMetricManager_submitEventMetrics__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_submitEventMetrics
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventBluePOIQueryEvent encoding:1];
  eventMetrics = [(RTBluePOIMetricManager *)self eventMetrics];
  log_analytics_submission(v4, eventMetrics);

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
  eventMetrics2 = [(RTBluePOIMetricManager *)self eventMetrics];
  AnalyticsSendEvent();

  eventMetrics3 = [(RTBluePOIMetricManager *)self eventMetrics];
  [eventMetrics3 removeAllObjects];

  [(RTBluePOIMetricManager *)self setCollectingEventMetrics:0];
}

- (void)setEventMetricsValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTBluePOIMetricManager_setEventMetricsValue_forKey___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_async(queue, block);
}

- (void)_setEventMetricsValue:(id)value forKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      collectingEventMetrics = [(RTBluePOIMetricManager *)self collectingEventMetrics];
      v12 = @"NO";
      *v14 = 138413058;
      *&v14[4] = v10;
      *&v14[12] = 2112;
      if (collectingEventMetrics)
      {
        v12 = @"YES";
      }

      *&v14[14] = keyCopy;
      v15 = 2112;
      v16 = valueCopy;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, key, %@, value, %@, collectingEventMetrics, %@", v14, 0x2Au);
    }
  }

  if ([(RTBluePOIMetricManager *)self collectingEventMetrics])
  {
    eventMetrics = [(RTBluePOIMetricManager *)self eventMetrics];
    [eventMetrics setObject:valueCopy forKey:keyCopy];
  }
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  defaultsManager = [(RTBluePOIMetricManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RTBluePOIMetricManager_setObject_forKey___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_async(queue, block);
}

- (void)_setObject:(id)object forKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = keyCopy;
      v16 = 2112;
      v17 = objectCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, key, %@, obj, %@", &v12, 0x20u);
    }
  }

  defaultsManager = [(RTBluePOIMetricManager *)self defaultsManager];
  [defaultsManager setObject:objectCopy forKey:keyCopy];
}

- (BOOL)requestCollectQueryEvent
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(RTNotifier *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__RTBluePOIMetricManager_requestCollectQueryEvent__block_invoke;
  v5[3] = &unk_2788C7FB0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __50__RTBluePOIMetricManager_requestCollectQueryEvent__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _requestCollectQueryEvent];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_requestCollectQueryEvent
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(RTBluePOIMetricManager *)self collectingEventMetrics])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(a2);
        v20 = 138412290;
        v21 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, collectingEventMetrics, YES, shouldCollectQueryEvent, NO", &v20, 0xCu);
      }
    }

    return 0;
  }

  defaultsManager = [(RTBluePOIMetricManager *)self defaultsManager];
  v7 = [defaultsManager objectForKey:@"BluePOIQueryEventSamplingRate"];
  if (v7)
  {
    defaultsManager2 = [(RTBluePOIMetricManager *)self defaultsManager];
    v9 = [defaultsManager2 objectForKey:@"BluePOIQueryEventSamplingRate"];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0x3F9999999999999ALL;
  }

  v12 = RTCommonRandomFlip();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      collectingEventMetrics = [(RTBluePOIMetricManager *)self collectingEventMetrics];
      v16 = @"NO";
      v20 = 138413058;
      v21 = v14;
      if (collectingEventMetrics)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v23 = v17;
      v24 = 2048;
      v22 = 2112;
      if (v12)
      {
        v16 = @"YES";
      }

      v25 = v11;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, collectingEventMetrics, %@, samplingRate, %.1f, shouldCollectQueryEvent, %@", &v20, 0x2Au);
    }
  }

  if (!v12)
  {
    return 0;
  }

  v18 = 1;
  [(RTBluePOIMetricManager *)self setCollectingEventMetrics:1];
  return v18;
}

- (void)stopCollectQueryEvent
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTBluePOIMetricManager_stopCollectQueryEvent__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_stopCollectQueryEvent
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      collectingEventMetrics = [(RTBluePOIMetricManager *)self collectingEventMetrics];
      v7 = @"NO";
      if (collectingEventMetrics)
      {
        v7 = @"YES";
      }

      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, collectingEventMetrics, %@", &v8, 0x16u);
    }
  }

  if ([(RTBluePOIMetricManager *)self collectingEventMetrics])
  {
    [(RTBluePOIMetricManager *)self submitEventMetrics];
    [(RTBluePOIMetricManager *)self setCollectingEventMetrics:0];
  }
}

@end