@interface RTMetricManager
+ (double)doubleWithSignificantDigits:(double)a3 digits:(int)a4;
+ (id)metricForType:(unint64_t)a3;
+ (id)productionMetrics;
+ (int)roundTimeInterval:(double)a3 byIntervalUnit:(unint64_t)a4;
- (BOOL)_routineConfiguredForMetric:(id)a3;
- (BOOL)setupWithConfiguredClasses:(id)a3 platform:(id)a4 error:(id *)a5;
- (RTMetricManager)initWithAWDServerConnection:(id)a3 configuredClasses:(id)a4 managedConfigurationManager:(id)a5 platform:(id)a6 xpcActivityManager:(id)a7;
- (RTMetricManager)initWithPlatform:(id)a3 xpcActivityManager:(id)a4;
- (void)_fetchDiagnosticsEnabled:(id)a3;
- (void)_registerQueriableMetric:(unint64_t)a3 withHandler:(id)a4;
- (void)_releaseMetricPlaceholderForMetric:(id)a3 withHandler:(id)a4;
- (void)_shutdownWithHandler:(id)a3;
- (void)_submitMetric:(id)a3 withHandler:(id)a4;
- (void)fetchDiagnosticsEnabled:(id)a3;
- (void)registerForXPCActivities:(id)a3;
- (void)registerQueriableMetric:(unint64_t)a3 withHandler:(id)a4;
- (void)submitMetric:(id)a3 withHandler:(id)a4;
@end

@implementation RTMetricManager

- (RTMetricManager)initWithPlatform:(id)a3 xpcActivityManager:(id)a4
{
  v6 = MEMORY[0x277D7BC58];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithComponentId:44 andBlockOnConfiguration:1];
  v10 = +[RTMetricManager productionMetrics];
  v11 = objc_opt_new();
  v12 = [(RTMetricManager *)self initWithAWDServerConnection:v9 configuredClasses:v10 managedConfigurationManager:v11 platform:v8 xpcActivityManager:v7];

  return v12;
}

- (RTMetricManager)initWithAWDServerConnection:(id)a3 configuredClasses:(id)a4 managedConfigurationManager:(id)a5 platform:(id)a6 xpcActivityManager:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (!v14)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: configuredClasses";
LABEL_24:
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_25;
  }

  if (!v15)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: managedConfigurationManager";
    goto LABEL_24;
  }

  if (!v16)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: platform";
    goto LABEL_24;
  }

  if (!v17)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: xpcActivityManager";
      goto LABEL_24;
    }

LABEL_25:

    v26 = 0;
    goto LABEL_26;
  }

  v33.receiver = self;
  v33.super_class = RTMetricManager;
  v19 = [(RTNotifier *)&v33 init];
  if (v19)
  {
    v20 = [v14 copy];
    configuredMetricClasses = v19->_configuredMetricClasses;
    v19->_configuredMetricClasses = v20;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      log = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        v30 = [v14 count];
        *buf = 134218242;
        v35 = v30;
        v36 = 2112;
        v37 = v14;
        _os_log_debug_impl(&dword_2304B3000, log, OS_LOG_TYPE_DEBUG, "Configured metric manager with %lu classes, %@", buf, 0x16u);
      }
    }

    objc_storeStrong(&v19->_managedConfigurationManager, a5);
    objc_storeStrong(&v19->_awdServerConnection, a3);
    objc_storeStrong(&v19->_platform, a6);
    objc_storeStrong(&v19->_xpcActivityManager, a7);
    v22 = [(RTMetricManager *)v19 configuredMetricClasses];
    platform = v19->_platform;
    v32 = 0;
    [(RTMetricManager *)v19 setupWithConfiguredClasses:v22 platform:platform error:&v32];
    v24 = v32;

    if (v24)
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v35 = v24;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "error configuring metric manager, %@", buf, 0xCu);
      }
    }

    [(RTMetricManager *)v19 registerForXPCActivities:v19->_xpcActivityManager, v13];
  }

  self = v19;
  v26 = self;
LABEL_26:

  return v26;
}

+ (id)productionMetrics
{
  v4[20] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v4[13] = objc_opt_class();
  v4[14] = objc_opt_class();
  v4[15] = objc_opt_class();
  v4[16] = objc_opt_class();
  v4[17] = objc_opt_class();
  v4[18] = objc_opt_class();
  v4[19] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:20];

  return v2;
}

- (void)fetchDiagnosticsEnabled:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__RTMetricManager_fetchDiagnosticsEnabled___block_invoke;
    v7[3] = &unk_2788C4938;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTMetricManager fetchDiagnosticsEnabled:]";
      v11 = 1024;
      v12 = 123;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchDiagnosticsEnabled:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTMetricManager *)self managedConfigurationManager];
    v4[2](v4, [v5 effectiveBoolValueForSetting:@"RTFeatureDiagnosticsSubmissionAllowed"]);
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[RTMetricManager _fetchDiagnosticsEnabled:]";
      v8 = 1024;
      v9 = 136;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v6, 0x12u);
    }
  }
}

- (BOOL)setupWithConfiguredClasses:(id)a3 platform:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = [v8 internalInstall];

  if (v10)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__RTMetricManager_setupWithConfiguredClasses_platform_error___block_invoke;
    v15[3] = &unk_2788C4BA8;
    v16 = v9;
    [v7 enumerateObjectsUsingBlock:v15];
  }

  v11 = _RTSafeArray();
  v12 = _RTMultiErrorCreate();

  if (a5)
  {
    v13 = v12;
    *a5 = v12;
  }

  return v12 == 0;
}

void __61__RTMetricManager_setupWithConfiguredClasses_platform_error___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([(objc_class *)v3 conformsToProtocol:&unk_284624910]& 1) == 0)
  {
    v10 = *MEMORY[0x277CCA450];
    v4 = MEMORY[0x277CCACA8];
    v5 = NSStringFromClass(v3);
    v6 = NSStringFromProtocol(&unk_284624910);
    v7 = [v4 stringWithFormat:@"Class %@ does not conform to %@", v5, v6];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTMetricManagerErrorDomain" code:11 userInfo:v8];
    [*(a1 + 32) addObject:v9];
  }
}

- (void)registerForXPCActivities:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:1 priority:1 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:1 allowBattery:86400.0 powerNap:60.0];
    [(RTXPCActivityCriteria *)v6 setCpuIntensive:1];
    objc_initWeak(location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__RTMetricManager_registerForXPCActivities___block_invoke;
    v7[3] = &unk_2788C6A18;
    v8[1] = a2;
    objc_copyWeak(v8, location);
    [v5 registerActivityWithIdentifier:@"com.apple.routined.metrics.daily" criteria:v6 handler:v7];
    objc_destroyWeak(v8);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, &v6->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: xpcActivityManager", location, 2u);
    }
  }
}

void __44__RTMetricManager_registerForXPCActivities___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v11 = [WeakRetained queue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __44__RTMetricManager_registerForXPCActivities___block_invoke_87;
      v15[3] = &unk_2788C4938;
      v15[4] = v10;
      v16 = v5;
      dispatch_async(v11, v15);
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "self was nil during daily metric activity, returning", buf, 2u);
      }

      if (v5)
      {
        v17 = *MEMORY[0x277CCA450];
        v18 = @"self was nil during daily metric activity";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTMetricManagerErrorDomain" code:0 userInfo:v13];
        v5[2](v5, v14, 0);
      }
    }
  }
}

uint64_t __44__RTMetricManager_registerForXPCActivities___block_invoke_87(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"RTMetricManagerDailyMetricNotification" object:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_shutdownWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTMetricManager *)self awdServerConnection];

  if (v5)
  {
    v6 = dispatch_semaphore_create(0);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "Flushing remaining metrics to AWD.", buf, 2u);
      }
    }

    v8 = [(RTMetricManager *)self awdServerConnection];
    v9 = dispatch_get_global_queue(2, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __40__RTMetricManager__shutdownWithHandler___block_invoke;
    v15[3] = &unk_2788C4EA0;
    v10 = v6;
    v16 = v10;
    [v8 flushToQueue:v9 block:v15];

    v11 = v10;
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v11, v13))
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      [v14 timeIntervalSinceDate:v12];
    }
  }

  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)registerQueriableMetric:(unint64_t)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTMetricManager_registerQueriableMetric_withHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_registerQueriableMetric:(unint64_t)a3 withHandler:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[RTMetricManager _registerQueriableMetric:withHandler:]";
      v38 = 1024;
      v39 = 258;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v8 = [RTMetricManager metricForType:a3];
  v9 = [v8 metricId];
  v10 = [(RTMetricManager *)self awdServerConnection];
  v11 = v10 == 0;

  if (!v11)
  {
    objc_initWeak(&location, self);
    v12 = [(RTMetricManager *)self awdServerConnection];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __56__RTMetricManager__registerQueriableMetric_withHandler___block_invoke;
    v27 = &unk_2788C7510;
    objc_copyWeak(v29, &location);
    v30 = v9;
    v13 = v6;
    v28 = v13;
    v29[1] = a3;
    v14 = [v12 registerQueriableMetric:v9 callback:&v24];

    if (v14)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_17:

        objc_destroyWeak(v29);
        objc_destroyWeak(&location);
        goto LABEL_18;
      }

      v15 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v37) = v9;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "Queriable Metric (%u) is registered.", buf, 8u);
      }
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"AWD registerQueriableMetric failure (%d)", v9, v24, v25, v26, v27];
      v20 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33 = v15;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v22 = [v20 errorWithDomain:@"RTMetricManagerErrorDomain" code:9 userInfo:v21];
      (*(v13 + 2))(v13, a3, v22, 0);

      v23 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v15;
        _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    goto LABEL_17;
  }

  v16 = MEMORY[0x277CCA9B8];
  v34 = *MEMORY[0x277CCA450];
  v35 = @"Failed metric submission because routined didn't have a connection to awdd.";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v18 = [v16 errorWithDomain:@"RTMetricManagerErrorDomain" code:3 userInfo:v17];
  (*(v6 + 2))(v6, a3, v18, 0);

  v19 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = @"Failed metric submission because routined didn't have a connection to awdd.";
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

LABEL_18:
}

void __56__RTMetricManager__registerQueriableMetric_withHandler___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__RTMetricManager__registerQueriableMetric_withHandler___block_invoke_2;
    v10[3] = &unk_2788C74E8;
    v7 = *(a1 + 56);
    v13 = a2;
    v14 = v7;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v11 = v8;
    v12[1] = v9;
    objc_copyWeak(v12, (a1 + 40));
    dispatch_async(v6, v10);

    objc_destroyWeak(v12);
  }
}

void __56__RTMetricManager__registerQueriableMetric_withHandler___block_invoke_2(int32x2_t *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[7].i32[0];
      *buf = 67109120;
      LODWORD(v17) = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Registered Metric (%u) is triggered.", buf, 8u);
    }
  }

  v4 = a1[7].u32[1];
  if (a1[7].i32[0] == v4)
  {
    v5 = a1[6];
    v6 = a1[4];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__RTMetricManager__registerQueriableMetric_withHandler___block_invoke_93;
    v14[3] = &unk_2788C74C0;
    objc_copyWeak(v15, &a1[5]);
    v15[2] = vrev64_s32(a1[7]);
    v15[1] = a1[6];
    (*(*&v6 + 16))(v6, v5, 0, v14);
    objc_destroyWeak(v15);
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"triggered metricId (%d) is not what we registered (%d)", a1[7].u32[0], v4];
    v8 = a1[4];
    v9 = a1[6];
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v12 = [v10 errorWithDomain:@"RTMetricManagerErrorDomain" code:8 userInfo:v11];
    (*(*&v8 + 16))(v8, v9, v12, 0);

    v13 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

void __56__RTMetricManager__registerQueriableMetric_withHandler___block_invoke_93(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__RTMetricManager__registerQueriableMetric_withHandler___block_invoke_2_94;
  v16[3] = &unk_2788C7498;
  v16[4] = WeakRetained;
  v17 = v8;
  v21 = *(a1 + 48);
  v12 = *(a1 + 40);
  v19 = v9;
  v20 = v12;
  v18 = v7;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  dispatch_async(v11, v16);
}

void __56__RTMetricManager__registerQueriableMetric_withHandler___block_invoke_2_94(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(a1 + 40))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 76);
        v16 = [*(a1 + 40) localizedDescription];
        *buf = 67109378;
        LODWORD(v18[0]) = v15;
        WORD2(v18[0]) = 2112;
        *(v18 + 6) = v16;
        _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "A queriable metric is not submitted. %u (%@)", buf, 0x12u);
      }

      v4 = *(a1 + 32);
      v5 = [RTMetricManager metricForType:*(a1 + 64)];
      [v4 _releaseMetricPlaceholderForMetric:v5 withHandler:*(a1 + 56)];
    }

    else
    {
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);

      [v2 _submitMetric:v13 withHandler:v14];
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"RTMetricManager swelf is nil metricId (%d)", *(a1 + 72)];
    v7 = v6;
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = v6;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v11 = [v9 errorWithDomain:@"RTMetricManagerErrorDomain" code:9 userInfo:v10];
      (*(v8 + 16))(v8, v11);
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18[0] = v7;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (void)_releaseMetricPlaceholderForMetric:(id)a3 withHandler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(RTMetricManager *)self awdServerConnection];

  if (v8)
  {
    v9 = [v6 metricId];
    v10 = [(RTMetricManager *)self awdServerConnection];
    v11 = [v10 newMetricContainerWithIdentifier:v9];

    if (!v11)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed metric submission because AWD was not configured to accept the metric id %u.", v9];
      v19 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v18;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (v7)
      {
        v20 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA450];
        v30 = v18;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v22 = [v20 errorWithDomain:@"RTMetricManagerErrorDomain" code:4 userInfo:v21];
        v7[2](v7, v22);
      }

      v11 = 0;
      goto LABEL_22;
    }

    [v11 setMetric:v6];
    v12 = [(RTMetricManager *)self awdServerConnection];
    v13 = [v12 submitMetric:v11];

    if (v13)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v34) = v9;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "AWD placeholder is released %u, success!", buf, 8u);
      }

      if (v7)
      {
        v7[2](v7, 0);
      }

      goto LABEL_22;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"AWD placeholder may be not released %u, failed!", v9];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v17;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (v7)
    {
      v24 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28 = v17;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v26 = [v24 errorWithDomain:@"RTMetricManagerErrorDomain" code:6 userInfo:v25];
      v7[2](v7, v26);
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v34 = @"Failed metric submission because routined didn't have a connection to awdd.";
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  if (v7)
  {
    v16 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Failed metric submission because routined didn't have a connection to awdd.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v17 = [v16 errorWithDomain:@"RTMetricManagerErrorDomain" code:3 userInfo:v11];
    v7[2](v7, v17);
    goto LABEL_21;
  }

LABEL_23:
}

- (void)submitMetric:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTMetricManager_submitMetric_withHandler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_submitMetric:(id)a3 withHandler:(id)a4
{
  v47[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(RTMetricManager *)self awdServerConnection];

  if (!v8)
  {
    v14 = @"Failed metric submission because routined didn't have a connection to awdd.";
    v30 = 3;
LABEL_18:
    v31 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA450];
    v47[0] = v14;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v12 = [v31 errorWithDomain:@"RTMetricManagerErrorDomain" code:v30 userInfo:v32];

    if (v7)
    {
      v7[2](v7, v12);
    }

    v33 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v14;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (!v6)
  {
    v14 = @"Failed metric submission because the metric was nil.";
    v30 = 1;
    goto LABEL_18;
  }

  if (![(RTMetricManager *)self _routineConfiguredForMetric:v6])
  {
    v14 = @"Failed metric submission because the metric was not an AWD metric.";
    v30 = 2;
    goto LABEL_18;
  }

  v9 = [(RTMetricManager *)self managedConfigurationManager];
  v10 = [v9 effectiveBoolValueForSetting:@"RTFeatureDiagnosticsSubmissionAllowed"];

  if ((v10 & 1) == 0)
  {
    v14 = @"Failed metric submission because Diagnostics and Usage is disabled.";
    v30 = 5;
    goto LABEL_18;
  }

  v39 = 0;
  v11 = [v6 valid:&v39];
  v12 = v39;
  if (v11)
  {
    v13 = [(RTMetricManager *)self awdServerConnection];
    v14 = [v13 newMetricContainerWithIdentifier:{objc_msgSend(v6, "metricId")}];

    if (v14)
    {
      [(__CFString *)v14 setMetric:v6];
      v15 = [(RTMetricManager *)self awdServerConnection];
      v16 = [v15 submitMetric:v14];

      if (v7)
      {
        if ((v16 & 1) == 0)
        {
          v17 = MEMORY[0x277CCA9B8];
          v40 = *MEMORY[0x277CCA450];
          v18 = MEMORY[0x277CCACA8];
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = [v18 stringWithFormat:@"Submitted metric type %@, failed!", v20];
          v41 = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v23 = [v17 errorWithDomain:@"RTMetricManagerErrorDomain" code:6 userInfo:v22];

          v12 = v23;
        }

        v7[2](v7, v12);
      }

      v24 = v12;
      if (!v12)
      {
        v12 = 0;
        goto LABEL_23;
      }

      v25 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138412290;
      v45 = v27;
      v28 = "Submitted metric type %@, failed!";
      v29 = v25;
    }

    else
    {
      v34 = MEMORY[0x277CCACA8];
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v25 = [v34 stringWithFormat:@"Failed metric submission because AWD was not configured to accept the metric type %@.", v36];

      v37 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43 = v25;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v24 = [v37 errorWithDomain:@"RTMetricManagerErrorDomain" code:4 userInfo:v38];

      if (v7)
      {
        v7[2](v7, v24);
      }

      v27 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v45 = v25;
      v28 = "%@";
      v29 = v27;
    }

    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
LABEL_31:

LABEL_32:
    v12 = v24;
    goto LABEL_23;
  }

  if (v7)
  {
    v7[2](v7, v12);
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v45 = v12;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Error during metric validation, %@", buf, 0xCu);
  }

LABEL_23:
}

- (BOOL)_routineConfiguredForMetric:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(RTMetricManager *)self configuredMetricClasses:0];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_opt_isKindOfClass())
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412290;
    v19 = v13;
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Metric manager is not configured for %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

+ (id)metricForType:(unint64_t)a3
{
  if (a3 > 0x13)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(**(&unk_2788C7530 + a3)) _init];
  }

  return v5;
}

+ (int)roundTimeInterval:(double)a3 byIntervalUnit:(unint64_t)a4
{
  if (a4)
  {
    return (a3 / a4) * a4;
  }

  else
  {
    return (a3 * 1000.0);
  }
}

+ (double)doubleWithSignificantDigits:(double)a3 digits:(int)a4
{
  result = 0.0;
  if (a3 != 0.0 && a4 >= 1)
  {
    v8 = -a3;
    if (a3 >= 0.0)
    {
      v8 = a3;
    }

    v9 = log10(v8);
    v10 = __exp10((a4 - vcvtpd_s64_f64(v9)));
    return round(v10 * a3) / v10;
  }

  return result;
}

@end