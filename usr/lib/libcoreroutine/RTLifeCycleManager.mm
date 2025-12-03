@interface RTLifeCycleManager
- (RTLifeCycleManager)init;
- (id)createSourceForSignal:(int)signal withBlock:(id)block;
- (id)serviceWithClass:(Class)class;
- (void)_exit;
- (void)_start;
- (void)addListener:(id)listener machPort:(id)port;
- (void)addService:(id)service;
- (void)dealloc;
- (void)exit;
- (void)exitWithDelay:(double)delay;
- (void)start;
- (void)submitUptimeMetricsWithDefaultsMananger:(id)mananger;
@end

@implementation RTLifeCycleManager

- (RTLifeCycleManager)init
{
  v18.receiver = self;
  v18.super_class = RTLifeCycleManager;
  v2 = [(RTLifeCycleManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = v2;
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(RTLifeCycleManager *)v5 UTF8String];
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v5];
      uTF8String = [v8 UTF8String];
    }

    v9 = dispatch_queue_create(uTF8String, v6);

    queue = v5->_queue;
    v5->_queue = v9;

    v11 = objc_opt_new();
    signals = v5->_signals;
    v5->_signals = v11;

    v13 = objc_opt_new();
    listeners = v5->_listeners;
    v5->_listeners = v13;

    v15 = objc_opt_new();
    services = v5->_services;
    v5->_services = v15;
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_signals enumerateObjectsUsingBlock:&__block_literal_global_14];
  v3.receiver = self;
  v3.super_class = RTLifeCycleManager;
  [(RTLifeCycleManager *)&v3 dealloc];
}

void __29__RTLifeCycleManager_dealloc__block_invoke(int a1, dispatch_source_t source)
{
  if (source)
  {
    dispatch_source_cancel(source);
  }
}

- (id)createSourceForSignal:(int)signal withBlock:(id)block
{
  blockCopy = block;
  signal(signal, 1);
  v6 = dispatch_source_create(MEMORY[0x277D85D30], signal, 0, MEMORY[0x277D85CD0]);
  dispatch_source_set_event_handler(v6, blockCopy);

  dispatch_resume(v6);

  return v6;
}

- (void)start
{
  queue = [(RTLifeCycleManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__RTLifeCycleManager_start__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addService:(id)service
{
  v16 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  watchdogManager = [(RTLifeCycleManager *)self watchdogManager];

  if (!watchdogManager)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[RTLifeCycleManager addService:]";
      v14 = 1024;
      v15 = 239;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.watchdogManager (in %s:%d)", &v12, 0x12u);
    }
  }

  if (serviceCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      services = [(RTLifeCycleManager *)self services];
      v8 = [services containsObject:serviceCopy];

      if (v8)
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315394;
          v13 = "[RTLifeCycleManager addService:]";
          v14 = 1024;
          v15 = 241;
          _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Service already added to services set. (in %s:%d)", &v12, 0x12u);
        }
      }

      services2 = [(RTLifeCycleManager *)self services];
      [services2 addObject:serviceCopy];

      watchdogManager2 = [(RTLifeCycleManager *)self watchdogManager];
      [watchdogManager2 addObject:serviceCopy];
    }
  }
}

- (void)addListener:(id)listener machPort:(id)port
{
  listenerCopy = listener;
  portCopy = port;
  if (listenerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      listeners = [(RTLifeCycleManager *)self listeners];
      [listeners setObject:listenerCopy forKey:portCopy];

      watchdogManager = [(RTLifeCycleManager *)self watchdogManager];
      [watchdogManager addObject:listenerCopy];
    }
  }
}

- (id)serviceWithClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  if (class)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    services = [(RTLifeCycleManager *)self services];
    v4 = [services countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(services);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            goto LABEL_15;
          }
        }

        v5 = [services countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    services = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(services, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, services, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: serviceClass", buf, 2u);
    }
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (void)submitUptimeMetricsWithDefaultsMananger:(id)mananger
{
  manangerCopy = mananger;
  date = [MEMORY[0x277CBEAA8] date];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v6 = [@"LastLaunchDate" stringByAppendingPathExtension:processName];
  v7 = [manangerCopy objectForKey:v6];

  if (v7)
  {
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    processName2 = [processInfo2 processName];
    v10 = [@"LastExitDate" stringByAppendingPathExtension:processName2];
    v11 = [manangerCopy objectForKey:v10];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = date;
    }

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    [v12 timeIntervalSinceDate:v7];
    v15 = v14;
    [date timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    processInfo3 = [MEMORY[0x277CCAC38] processInfo];
    processName3 = [processInfo3 processName];
    [v18 setObject:processName3 forKeyedSubscript:@"processName"];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    [v18 setObject:v21 forKeyedSubscript:@"processUptime"];

    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    [v18 setObject:v22 forKeyedSubscript:@"durationSincePreviousLaunch"];

    if (v11)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithInt:0];
      [v18 setObject:v23 forKeyedSubscript:@"previousExitWasUnclean"];
    }

    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    v25 = [v24 initWithCString:RTAnalyticsEventProcessUptime encoding:1];
    log_analytics_submission(v25, v18);
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v25];
    AnalyticsSendEvent();
  }

  processInfo4 = [MEMORY[0x277CCAC38] processInfo];
  processName4 = [processInfo4 processName];
  v29 = [@"LastLaunchDate" stringByAppendingPathExtension:processName4];
  [manangerCopy setObject:date forKey:v29];

  processInfo5 = [MEMORY[0x277CCAC38] processInfo];
  processName5 = [processInfo5 processName];
  v32 = [@"LastExitDate" stringByAppendingPathExtension:processName5];
  [manangerCopy setObject:0 forKey:v32];
}

- (void)_start
{
  v307 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromSelector(a2);
      *buf = 138412290;
      v304 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  v298 = +[RTPlatform currentPlatform];
  v5 = objc_alloc_init(RTDefaultsManager);
  v6 = [[RTWatchdogManager alloc] initWithLifeCycleManager:self defaultsManager:v5 platform:v298];
  watchdogManager = self->_watchdogManager;
  self->_watchdogManager = v6;

  [(RTLifeCycleManager *)self addService:v5];
  v251 = objc_alloc_init(RTReachabilityManager);
  [(RTLifeCycleManager *)self addService:v251];
  [(RTLifeCycleManager *)self submitUptimeMetricsWithDefaultsMananger:v5];
  v292 = [[RTDiagnostics alloc] initWithDefaultsManager:v5 platform:v298];
  [(RTDiagnostics *)v292 addDiagnosticProvider:v5];
  [(RTLifeCycleManager *)self addService:v292];
  [(RTDiagnostics *)v292 logProcessDiagnosticInformation];
  v288 = [[RTXPCActivityManager alloc] initWithDefaultsManager:v5 diagnostics:v292 identifier:@"Default"];
  v286 = [[RTMetricManager alloc] initWithPlatform:v298 xpcActivityManager:v288];
  [(RTLifeCycleManager *)self addService:v286];
  v211 = [[RTAssetProcessor alloc] initWithDefaultsManager:v5];
  v244 = [[RTAssetManager alloc] initWithDefaultsManager:v5 assetProcessor:v211 xpcActivityManager:v288];
  [(RTLifeCycleManager *)self addService:v244];
  [(RTLifeCycleManager *)self addService:v288];
  v278 = [[RTAccountManager alloc] initWithLifecycleManager:self defaultsManager:v5];
  [(RTLifeCycleManager *)self addService:v278];
  v210 = objc_opt_new();
  v209 = objc_opt_new();
  v289 = [[RTDataProtectionManager alloc] initWithKeybagMonitor:v210 notificationHelper:v209];
  [(RTLifeCycleManager *)self addService:v289];
  v208 = objc_opt_new();
  v290 = [[RTAuthorizationManager alloc] initWithPlatform:v298 userSessionMonitor:v208];
  [(RTLifeCycleManager *)self addService:v290];
  v266 = objc_opt_new();
  [(RTLifeCycleManager *)self addService:v266];
  [(RTDiagnostics *)v292 addDiagnosticProvider:v266];
  v299 = objc_opt_new();
  v265 = [[RTPersistenceDriver alloc] initWithPersistenceManager:v299 dataProtectionManager:v289 accountManager:v278 platform:v298 keychainManager:v266 defaultsManager:v5 lifecycleManager:self];
  v276 = [[RTPersistenceMirroringManager alloc] initWithAccountManager:v278 defaultsManager:v5 persistenceManager:v299 platform:v298 reachabilityManager:v251 xpcActivityManager:v288];
  [v299 setDelegate:v265];
  [v299 setMirroringDelegate:v276];
  if (([v299 initializeContainer] & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "persistence failed to setup.", buf, 2u);
    }

    [(RTLifeCycleManager *)self exit];
  }

  [(RTPersistenceDriver *)v265 start];
  [(RTLifeCycleManager *)self addService:v299];
  [(RTLifeCycleManager *)self addService:v265];
  [(RTLifeCycleManager *)self addService:v276];
  [(RTDiagnostics *)v292 addDiagnosticProvider:v299];
  [(RTDiagnostics *)v292 addDiagnosticProvider:v276];
  objc_initWeak(&location, self);
  signals = [(RTLifeCycleManager *)self signals];
  v300[0] = MEMORY[0x277D85DD0];
  v300[1] = 3221225472;
  v300[2] = __28__RTLifeCycleManager__start__block_invoke;
  v300[3] = &unk_2788C5908;
  objc_copyWeak(&v301, &location);
  v10 = [(RTLifeCycleManager *)self createSourceForSignal:15 withBlock:v300];
  [signals addObject:v10];

  v11 = objc_alloc_init(RTWiFiManager);
  [(RTLifeCycleManager *)self addService:v11];
  v283 = v11;
  v12 = [[RTLocationStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v12];
  v269 = v12;
  v237 = objc_opt_new();
  v239 = objc_opt_new();
  v13 = [RTLocationManager alloc];
  v14 = objc_opt_new();
  v295 = [(RTLocationManager *)v13 initWithAuthorizationManager:v290 defaultsManager:v5 locationSmoother:v237 locationStore:v269 platform:v298 routineLocationManager:v239 timerManager:v14];

  [(RTLifeCycleManager *)self addService:v295];
  v15 = [[RTTripSegmentInertialDataStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v15];
  v207 = v15;
  v16 = [[RTTripSegmentInertialDataManager alloc] initWithInertialDataStore:v15 routineLocationManager:v239];
  [(RTLifeCycleManager *)self addService:v16];
  v218 = v16;
  v17 = [[RTBackgroundInertialOdometryStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v17];
  v206 = v17;
  v18 = [[RTBackgroundInertialOdometryManager alloc] initWithBackgroundInertialOdometryStore:v17];
  [(RTLifeCycleManager *)self addService:v18];
  v242 = v18;
  v19 = objc_alloc_init(RTMapServiceManager);
  [(RTLifeCycleManager *)self addService:v19];
  v294 = v19;
  v20 = objc_opt_new();
  [(RTLifeCycleManager *)self addService:v20];
  v297 = v20;
  v21 = [[RTContactsManager alloc] initWithDataProtectionManager:v289 mapServiceManager:v294 distanceCalculator:v20];
  [(RTLifeCycleManager *)self addService:v21];
  v281 = v21;
  v22 = [[RTBuildingPolygonManager alloc] initWithDistanceCalculator:v297 MapServiceManager:v294];
  [(RTLifeCycleManager *)self addService:v22];
  v219 = v22;
  v23 = [[RTMapsSupportManager alloc] initWithMapServiceManager:v294];
  [(RTLifeCycleManager *)self addService:v23];
  v274 = v23;
  v24 = [[RTVehicleStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v24];
  v258 = v24;
  v25 = [[RTMotionActivityManager alloc] initWithPlatform:v298 vehicleStore:v24];
  [(RTLifeCycleManager *)self addService:v25];
  v291 = v25;
  v26 = [[RTStarkManager alloc] initWithDefaultsManager:v5];
  [(RTLifeCycleManager *)self addService:v26];
  v230 = v26;
  v27 = [RTBatteryManager alloc];
  v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [@"BatteryManager" UTF8String];
  }

  else
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), @"BatteryManager"];
    v31 = v30;
    uTF8String = [v30 UTF8String];
  }

  v32 = dispatch_queue_create(uTF8String, v28);

  v282 = [(RTBatteryManager *)v27 initWithQueue:v32];
  [(RTLifeCycleManager *)self addService:v282];
  v33 = objc_alloc_init(RTBluetoothManager);
  [(RTLifeCycleManager *)self addService:v33];
  v201 = v33;
  v34 = [[RTWalletManager alloc] initWithDefaultsManager:v5];
  [(RTLifeCycleManager *)self addService:v34];
  v200 = v34;
  v35 = [[RTNavigationManager alloc] initWithAuthorizationManager:v290 mapServiceManager:v294];
  [(RTLifeCycleManager *)self addService:v35];
  v280 = v35;
  v36 = objc_opt_new();
  [(RTLifeCycleManager *)self addService:v36];
  v199 = v36;
  v37 = objc_alloc_init(RTEventManager);
  [(RTLifeCycleManager *)self addService:v37];
  v273 = v37;
  v38 = [(RTStore *)[RTVisitStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v38];
  v263 = v38;
  v236 = [(RTStore *)[RTSettledStateTransitionStore alloc] initWithPersistenceManager:v299];
  v205 = [[RTWiFiFootprintMonitor alloc] initWithWiFiManager:v283];
  v268 = [[RTScenarioTriggerManager alloc] initWithLocationStore:v269 motionActivityManager:v291 settledStateTransitionStore:v236 wifiFootprintMonitor:v205 platform:v298];
  v39 = [(RTStore *)[RTFingerprintStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v39];
  v204 = v39;
  v40 = [RTFingerprintManager alloc];
  v41 = objc_opt_new();
  v277 = [(RTFingerprintManager *)v40 initWithDefaultsManager:v5 fingerprintStore:v204 scenarioTriggerManager:v268 timerManager:v41 wifiManager:v283];

  [(RTLifeCycleManager *)self addService:v277];
  v42 = [RTLearnedLocationStore alloc];
  v43 = [[RTPersistenceExpirationEnforcer alloc] initWithPersistenceManager:v299];
  v293 = [(RTLearnedLocationStore *)v42 initWithDistanceCalculator:v297 expirationEnforcer:v43 mirroringManager:v276];

  [(RTLifeCycleManager *)self addService:v293];
  productType = [v298 productType];
  if ([productType isEqualToString:{@"Watch1, 1"}])
  {

LABEL_15:
    v212 = 0;
    goto LABEL_17;
  }

  productType2 = [v298 productType];
  v46 = [productType2 isEqualToString:{@"Watch1, 2"}];

  if (v46)
  {
    goto LABEL_15;
  }

  v47 = [RTLocationAwarenessManager alloc];
  v48 = objc_opt_new();
  v49 = objc_opt_new();
  v212 = [(RTLocationAwarenessManager *)v47 initWithLocationManager:v295 config:v48 metricManager:v286 motionActivityManager:v291 authorizationManager:v290 wifiManager:v283 xpcActivityManager:v288 timerManager:v49 learnedLocationStore:v293];

  [(RTLifeCycleManager *)self addService:v212];
LABEL_17:
  v202 = [[RTInferredMapItemFuser alloc] initWithDefaultsManager:v5 distanceCalculator:v297 learnedLocationStore:v293];
  v50 = objc_opt_new();
  [(RTLifeCycleManager *)self addService:v50];
  v235 = v50;
  v51 = [[RTInterimPersistenceManager alloc] initWithDataProtectionManager:v289 platform:v298];
  [(RTLifeCycleManager *)self addService:v51];
  v203 = v51;
  v52 = [(RTStore *)[RTBluePOITileStore alloc] initWithInterimPersistenceManager:v51];
  [(RTLifeCycleManager *)self addService:v52];
  v238 = v52;
  v53 = [RTBluePOIMetricManager alloc];
  v54 = objc_opt_new();
  v55 = objc_opt_new();
  v275 = [(RTBluePOIMetricManager *)v53 initWithDefaultsManager:v5 bluePOITileStore:v238 distanceCalculator:v54 fileManager:v55];

  [(RTLifeCycleManager *)self addService:v275];
  v56 = [RTBluePOITileManager alloc];
  v57 = objc_opt_new();
  v58 = objc_opt_new();
  v59 = objc_opt_new();
  v285 = [(RTBluePOITileManager *)v56 initWithBatteryManager:v282 bluePOIMetricManager:v275 bluePOITileStore:v238 defaultsManager:v5 distanceCalculator:v57 fileManager:v58 geoExternalTileLoader:v59 learnedLocationStore:v293 mapServiceManager:v294 platform:v298 xpcActivityManager:v288];

  [(RTLifeCycleManager *)self addService:v285];
  v60 = [[RTMapItemManager alloc] initWithLearnedLocationStore:v293 MapServiceManager:v294];
  [(RTLifeCycleManager *)self addService:v60];
  v250 = v60;
  v61 = [[RTBluePOIMonitorEnabler alloc] initWithDefaultsManager:v5];
  [(RTBluePOIMonitorEnabler *)v61 setMotionActivityManager:v291];
  [(RTLifeCycleManager *)self addService:v61];
  v264 = v61;
  v62 = [[RTBluePOIWiFiScanner alloc] initWithDefaultsManager:v5 wifiManager:v283 bluePOIEnabler:v61 bluePOIMetricManager:v275];
  [(RTLifeCycleManager *)self addService:v62];
  v157 = v62;
  v63 = [[RTBluePOIMonitor alloc] initWithDefaultsManager:v5 bluePOIMetricManager:v275 bluePOIMonitorEnabler:v264 bluePOITileManager:v285 distanceCalculator:v297 fingerprintManager:v277 locationManager:v295 mapItemManager:v250 mapServiceManager:v294 platform:v298 wifiManager:v283];
  [(RTLifeCycleManager *)self addService:v63];
  v232 = v63;
  v64 = [(RTStore *)[RTPlaceInferenceQueryStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v64];
  v257 = v64;
  v65 = [[RTUserCurationStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v65];
  v248 = v65;
  v66 = [[RTPlaceInferenceManager alloc] initWithDefaultsManager:v5 bluePOIMetricManager:v275 bluePOIMonitor:v232 bluePOITileManager:v285 distanceCalculator:v297 eventManager:v273 fingerprintManager:v277 inferredMapItemFuser:v202 learnedLocationStore:v293 locationManager:v295 mapItemManager:v250 mapServiceManager:v294 mapsSupportManager:v274 metricManager:v286 motionActivityManager:v291 placeInferenceQueryStore:v257 platform:v298 portraitManager:v235 userCurationStore:v65 visitStore:v263];
  [(RTLifeCycleManager *)self addService:v66];
  v272 = v66;
  v67 = [[RTLearnedPlaceTypeInferenceStore alloc] initWithPersistenceManager:v299 learnedLocationStore:v293];
  [(RTLifeCycleManager *)self addService:v67];
  v231 = v67;
  v233 = [[RTVisitLabeler alloc] initWithDefaultsManager:v5 placeInferenceManager:v272 locationManager:v295 wifiManager:v283];
  v185 = [[RTLearnedLocationReconcilerPerDevice alloc] initWithPersistenceManager:v299];
  v184 = [[RTLearnedLocationReconcilerPerVisit alloc] initWithPersistenceManager:v299 defaultsManager:v5];
  v68 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String2 = [@"RTLearnedLocationManager" UTF8String];
  }

  else
  {
    v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), @"RTLearnedLocationManager"];
    v71 = v70;
    uTF8String2 = [v70 UTF8String];
  }

  object = dispatch_queue_create(uTF8String2, v68);

  dispatch_suspend(object);
  v72 = [[RTLearnedLocationManager alloc] initWithQueue:object contactsManager:v281 distanceCalculator:v297 learnedLocationStore:v293 learnedPlaceTypeInferenceStore:v231 mapServiceManager:v294];
  [(RTLifeCycleManager *)self addService:v72];
  [(RTDiagnostics *)v292 addDiagnosticProvider:v72];
  [(RTBluePOIMonitorEnabler *)v264 setLearnedLocationManager:v72];
  v296 = v72;
  v198 = [(RTStore *)[RTHintStore alloc] initWithPersistenceManager:v299];
  v73 = [RTVehicleLocationProvider alloc];
  v74 = objc_opt_new();
  v284 = [(RTVehicleLocationProvider *)v73 initWithLocationManager:v295 motionActivityManager:v291 mapsSupportManager:v274 metricManager:v286 managedObjectContext:0 persistenceManager:v299 vehicleLocationHistoryController:0 learnedLocationManager:v296 managedConfiguration:v74 defaultsManager:v5 keychainManager:v266];

  [(RTLifeCycleManager *)self addService:v284];
  v75 = [[RTEventModelProvider alloc] initWithDefaultsManager:v5 eventManager:v273 learnedLocationManager:v296 managedObjectContext:0 metricManager:v286 persistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v75];
  v256 = v75;
  v76 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String3 = [@"RTDeviceLocationPredictor" UTF8String];
  }

  else
  {
    v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), @"RTDeviceLocationPredictor"];
    v79 = v78;
    uTF8String3 = [v78 UTF8String];
  }

  v234 = dispatch_queue_create(uTF8String3, v76);

  v197 = [[RTNextPredictedLocationsOfInterestCache alloc] initWithQueue:v234 dataProtectionManager:v289 starkManager:v230];
  v196 = [[RTPredictedLocationOfInterestProviderStateModel alloc] initWithDataProtectionManager:v289 learnedLocationManager:v296 locationManager:v295 metricManager:v286 cache:v197];
  v195 = [[RTPredictedLocationOfInterestProviderCalendar alloc] initWithEventManager:v273 eventModelProvider:v256 learnedLocationManager:v296 mapServiceManager:v294];
  v194 = [[RTPredictedLocationOfInterestProviderMaps alloc] initWithMapsSupportManager:v274];
  v156 = [[RTPredictedLocationOfInterestProviderVehicleLocation alloc] initWithVehicleLocationProvider:v284 distanceCalculator:v297];
  v193 = [MEMORY[0x277CBEB98] setWithObjects:{v195, v196, v194, v156, 0}];
  v80 = [[RTDeviceLocationPredictor alloc] initWithQueue:v234 authorizationManager:v290 defaultsManager:v5 distanceCalculator:v297 learnedLocationManager:v296 locationManager:v295 mapServiceManager:v294 metricManager:v286 platform:v298 providers:v193];
  [(RTLifeCycleManager *)self addService:v80];
  v271 = v80;
  v81 = [[RTHintManager alloc] initWithBatteryManager:v282 bluetoothManager:v201 cameraManager:v199 hintStore:v198 learnedLocationManager:v296 locationManager:v295 metricManager:v286 navigationManager:v280 reachabilityManager:v251 walletManager:v200];
  [(RTLifeCycleManager *)self addService:v81];
  v254 = v81;
  v82 = [[RTAppClipManager alloc] initWithDistanceCalculator:v297];
  [(RTLifeCycleManager *)self addService:v82];
  v192 = v82;
  v83 = [[RTPointOfInterestMonitor alloc] initWithAppClipManager:v82 buildingPolygonManager:v219 defaultsManager:v5 distanceCalculator:v297 learnedLocationManager:v296 locationManager:v295 mapServiceManager:v294 motionActivityManager:v291 navigationManager:v280 platform:v298 vehicleLocationProvider:v284 visitLabeler:v233 visitStore:v263];
  [(RTLifeCycleManager *)self addService:v83];
  v191 = v83;
  v84 = [[RTVisitManager alloc] initWithDefaultsManager:v5 deviceLocationPredictor:v271 hintManager:v254 learnedLocationManager:v296 locationAwarenessManager:v212 locationManager:v295 metricManager:v286 motionActivityManager:v291 platform:v298 pointOfInterestMonitor:v83 visitLabeler:v233 visitStore:v263 xpcActivityManager:v288];
  [(RTPlaceInferenceManager *)v272 setVisitManager:v84];
  [(RTBluePOIMonitorEnabler *)v264 setVisitManager:v84];
  [(RTBluePOITileManager *)v285 setVisitManager:v84];
  v287 = v84;
  v190 = [[RTAuthorizedLocationVisitLogStore alloc] initWithPersistenceManager:v299];
  v189 = [[RTAuthorizedLocationConfirmationStatusStore alloc] initWithPersistenceManager:v299];
  v188 = [[RTAuthorizedLocationZDRLocationsStore alloc] initWithPersistenceManager:v299];
  v85 = [RTAuthorizedLocationManager alloc];
  v86 = +[RTPlatform currentPlatform];
  v255 = [(RTAuthorizedLocationManager *)v85 initWithVisitManager:v287 locationManager:v295 distanceCalculator:v297 learnedLocationManager:v296 motionActivityManager:v291 visitLogStore:v190 confirmationStatusStore:v189 zdrLocationsStore:v188 defaultsManager:v5 xpcActivityManager:v288 dataProtectionManager:v289 persistenceMirroringManager:v276 platform:v86 authorizationManager:v290];

  [(RTLifeCycleManager *)self addService:v255];
  v87 = [[RTHealthKitManager alloc] initWithContactsManager:v281 defaultsManager:v5 distanceCalculator:v297 platform:v298];
  [(RTDiagnostics *)v292 addDiagnosticProvider:v87];
  v279 = v87;
  v187 = [[RTElevationStore alloc] initWithPersistenceManager:v299];
  if ([MEMORY[0x277CC1C18] isAbsoluteAltitudeAvailable] && objc_msgSend(v298, "iPhoneDevice") && objc_msgSend(MEMORY[0x277CBFC10], "locationServicesEnabled"))
  {
    v88 = objc_alloc_init(MEMORY[0x277CC1C18]);
    v186 = [[RTElevationProvider alloc] initWithAltimeter:v88];
  }

  else
  {
    v186 = 0;
  }

  v89 = [[RTElevationManager alloc] initWithElevationStore:v187 elevationProvider:v186];
  [(RTLifeCycleManager *)self addService:v89];
  v262 = v89;
  v243 = [[RTElevationAdjuster alloc] initWithElevationManager:v89];
  [(RTLifeCycleManager *)self addService:v243];
  v90 = +[RTTripClusterDeviceHelper getDeviceHelperInstance];
  [v90 initWithDefaultsManager:v5 platform:v298];

  v217 = [[RTTripSegmentStore alloc] initWithPersistenceManager:v299];
  v183 = [[RTSynthesizedLocationStore alloc] initWithPersistenceManager:v299];
  v182 = [[RTGeoRoadDataStore alloc] initWithPersistenceManager:v299];
  v181 = [[RTTripClusterStore alloc] initWithPersistenceManager:v299];
  v180 = [[RTTripClusterRouteStore alloc] initWithPersistenceManager:v299];
  v179 = [[RTTripClusterScheduleStore alloc] initWithPersistenceManager:v299];
  v178 = [[RTTripClusterRoadTransitionsDataStore alloc] initWithPersistenceManager:v299];
  v177 = [[RTTripClusterRecencyStore alloc] initWithPersistenceManager:v299];
  v229 = [[RTTripClusterRoadTransitionsStore alloc] initWithPersistenceManager:v299];
  v176 = [[RTTripClusterWaypointDataStore alloc] initWithPersistenceManager:v299 defaultsManager:v5];
  v91 = [[RTTripSegmentManager alloc] initWithTripSegmentStore:v217 synthesizedLocationStore:v183 defaultsManager:v5 elevationAdjuster:v243 learnedLocationStore:v293 distanceCalculator:v297 geoRoadDataStore:v182 tripSegmentRoadTransitionsStore:v229];
  [(RTLifeCycleManager *)self addService:v91];
  [(RTDiagnostics *)v292 addDiagnosticProvider:v91];
  v253 = v91;
  v241 = [[RTTripClusterManager alloc] initWithTripSegmentManager:v91 tripClusterStore:v181 tripClusterRouteStore:v180 tripClusterRouteRoadTransitionsStore:v178 tripClusterRecencyStore:v177 tripClusterScheduleStore:v179 tripSegmentRoadTransitionsStore:v229 tripClusterWaypointStore:v176 defaultsManager:v5];
  v92 = [[RTEventAgentManager alloc] initWithPlatform:v298];
  [(RTLifeCycleManager *)self addService:v92];
  v214 = v92;
  if ([RTTripSegmentProvider isTripSegmentGenerationSupportedOnPlatform:v298])
  {
    v175 = [[RTTripSegmentProvider alloc] initWithLearnedLocationManager:v296 locationManager:v295 motionActivityManager:v291 tripSegmentInertialDataManager:v218 inertialOdometryManager:v242 vehicleStore:v258 tripSegmentStore:v217 tripSegmentManager:v253 elevationAdjuster:v243 distanceCalculator:v297 defaultsManager:v5 visitManager:v287 tripClusterManager:v241];
  }

  else
  {
    v175 = 0;
  }

  v174 = [[RTTransitMetricManager alloc] initWithDefaultsManager:v5 distanceCalculator:v297 learnedLocationManager:v296 learnedLocationStore:v293];
  v93 = [[RTBiomeManager alloc] initWithAuthorizationManager:v290 dataProtectionManager:v289 defaultsManager:v5 learnedLocationManager:v296 platform:v298];
  [(RTLifeCycleManager *)self addService:v93];
  v227 = v93;
  v173 = [[RTDailyTrainingSessionCounter alloc] initWithDefaultsManager:v5];
  v94 = [RTPointOfInterestSampler alloc];
  v95 = objc_opt_new();
  v216 = [(RTPointOfInterestSampler *)v94 initWithDefaultsManager:v5 locationManager:v295 placeInferenceManager:v272 timerManager:v95 wifiManager:v283];

  v96 = [RTPointOfInterestMetricsManager alloc];
  v97 = objc_opt_new();
  v228 = [(RTPointOfInterestMetricsManager *)v96 initWithBatteryManager:v282 defaultsManager:v5 distanceCalculator:v297 learnedLocationStore:v293 locationManager:v295 mapServiceManager:v294 navigationManager:v280 placeInferenceQueryStore:v257 pointOfInterestSampler:v216 scenarioTriggerManager:v268 timerManager:v97 visitManager:v287];

  [(RTLifeCycleManager *)self addService:v228];
  v98 = [[RTUserCurationManager alloc] initWithUserCurationStore:v248];
  [(RTLifeCycleManager *)self addService:v98];
  v240 = v98;
  v99 = [[RTLearnedLocationEngine alloc] initWithAccountManager:v278 biomeManager:v227 bluePOIMetricManager:v275 bluePOIMonitor:v232 bluePOITileManager:v285 contactsManager:v281 dailyTrainingSessionCounter:v173 defaultsManager:v5 diagnostics:v292 distanceCalculator:v297 elevationManager:v262 eventManager:v273 fingerprintManager:v277 learnedLocationStore:v293 learnedPlaceTypeInferenceStore:v231 locationManager:v295 locationStore:v269 mapItemManager:v250 mapServiceManager:v294 mapsSupportManager:v274 metricManager:v286 motionActivityManager:v291 placeInferenceQueryStore:v257 platform:v298 pointOfInterestMetricsManager:v228 portraitManager:v235 reconcilerPerVisit:v184 reconcilerPerDevice:v185 settledStateTransitionStore:v236 transitMetricManager:v174 tripSegmentProvider:v175 userCurationStore:v248 visitManager:v287 xpcActivityManager:v288 batteryManager:v282];
  [(RTLearnedLocationManager *)v296 setLearnedLocationEngine:v99];
  [(RTDiagnostics *)v292 addDiagnosticProvider:v99];
  v155 = v99;
  dispatch_resume(object);
  v100 = [[RTIntermittentGNSSManager alloc] initWithDefaultsManager:v5 learnedLocationManager:v296 locationManager:v295 motionActivityManager:v291 platform:v298 vehicleLocationProvider:v284 wifiManager:v283];
  [(RTLifeCycleManager *)self addService:v100];
  v213 = v100;
  v172 = objc_alloc_init(RTWorkoutMetricsManager);
  v101 = [(RTStore *)[RTWorkoutDistanceStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v101];
  v171 = v101;
  v102 = [[RTWorkoutRouteManager alloc] initWithDefaultsManager:v5 distanceCalculator:v297 healthKitManager:v279 locationManager:v295 mapServiceManager:v294 platform:v298 workoutDistanceStore:v101 workoutMetricsManager:v172];
  [(RTLifeCycleManager *)self addService:v102];
  v215 = v102;
  v103 = [[RTWorkoutScheduler alloc] initWithBatteryManager:v282 dataProtectionManager:v289 workoutRouteManager:v102 healthKitManager:v279 locationManager:v295 defaultsManager:v5 platform:v298 xpcActivityManager:v288];
  [(RTLifeCycleManager *)self addService:v103];
  v159 = v103;
  v170 = objc_alloc_init(MEMORY[0x277CBFC20]);
  v104 = [(RTStore *)[RTProximityEventStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v104];
  v169 = v104;
  v105 = [(RTStore *)[RTPeopleDensityStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v105];
  v168 = v105;
  v106 = [RTPeopleDiscoveryProvider alloc];
  v107 = objc_opt_new();
  v252 = [(RTPeopleDiscoveryProvider *)v106 initWithDefaultManager:v5 proximityEventStore:v169 peopleDensityStore:v168 advertisementManager:v170 dataProtectionManager:v289 timerManager:v107];

  [(RTLifeCycleManager *)self addService:v252];
  v108 = objc_alloc_init(RTNetworkOfInterestManager);
  [(RTLifeCycleManager *)self addService:v108];
  v167 = v108;
  v109 = objc_alloc_init(SMMessagingService);
  [(RTLifeCycleManager *)self addService:v109];
  v260 = v109;
  v110 = [SMSafetyCacheStore alloc];
  v111 = objc_opt_new();
  v267 = [(SMSafetyCacheStore *)v110 initWithPersistenceManager:v299 timerManager:v111];

  [(RTLifeCycleManager *)self addService:v267];
  v112 = [(RTStore *)[SMSessionStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v112];
  v261 = v112;
  v247 = objc_alloc_init(MEMORY[0x277D4AA68]);
  v165 = objc_alloc_init(SMEmergencyCallManager);
  v166 = objc_alloc_init(MEMORY[0x277D4AC28]);
  v113 = objc_alloc(MEMORY[0x277D4AAC0]);
  v114 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String4 = [@"SMEligibilityChecker" UTF8String];
  }

  else
  {
    v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), @"SMEligibilityChecker"];
    v117 = v116;
    uTF8String4 = [v116 UTF8String];
  }

  v118 = dispatch_queue_create(uTF8String4, v114);

  v226 = [v113 initWithQueue:v118];
  v119 = objc_alloc(MEMORY[0x277D4AAB0]);
  v120 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String5 = [@"SMDeviceConfigurationChecker" UTF8String];
  }

  else
  {
    v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), @"SMDeviceConfigurationChecker"];
    v123 = v122;
    uTF8String5 = [v122 UTF8String];
  }

  v124 = dispatch_queue_create(uTF8String5, v120);

  v225 = [v119 initWithQueue:v124];
  v125 = [RTLocationManager alloc];
  v126 = objc_opt_new();
  v270 = [(RTLocationManager *)v125 initWithAuthorizationManager:0 defaultsManager:v5 locationSmoother:v237 locationStore:v267 platform:v298 routineLocationManager:0 timerManager:v126 effectiveLocationBundlePath:*MEMORY[0x277D4AD20]];

  [(RTLifeCycleManager *)self addService:v270];
  v127 = [(RTStore *)[SMSuggestionsStore alloc] initWithPersistenceManager:v299];
  [(RTLifeCycleManager *)self addService:v127];
  v224 = v127;
  v128 = [[SMSuggestionsHelper alloc] initWithAuthorizationManager:v290 contactsManager:v281 deviceLocationPredictor:v271 distanceCalculator:v297 healthKitManager:v279 learnedLocationStore:v293 learnedLocationManager:v296 locationManager:v270 mapServiceManager:v294 navigationManager:v280 sessionStore:v261 eligibilityChecker:v226];
  [(RTLifeCycleManager *)self addService:v128];
  v246 = v128;
  v129 = [[RTVisitConsolidator alloc] initWithLearnedLocationManager:v296 visitManager:v287 authorizedLocationManager:v255 accountManager:v278 bluePOITileManager:v285];
  [(RTLifeCycleManager *)self addService:v129];
  v259 = v129;
  v130 = [[SMSuggestionsManager alloc] initWithAuthorizationManager:v290 contactsManager:v281 defaultsManager:v5 deviceLocationPredictor:v271 distanceCalculator:v297 healthKitManager:v279 learnedLocationStore:v293 learnedLocationManager:v296 locationManager:v270 mapServiceManager:v294 messagingService:v260 motionActivityManager:v291 navigationManager:v280 platform:v298 visitManager:v287 visitConsolidator:v129 sessionStore:v261 suggestionsStore:v224 suggestionsHelper:v246 appDeletionManager:v247 trialManager:v166];
  [(RTLifeCycleManager *)self addService:v130];
  v245 = v130;
  v223 = [[RTXPCActivityManager alloc] initWithDefaultsManager:v5 diagnostics:v292 identifier:@"SafetyMonitor"];
  v164 = objc_opt_new();
  v131 = [[SMInitiatorService alloc] initWithDefaultsManager:v5 contactsManager:v281 locationManager:v270 motionActivityManager:v291 platform:v298 messagingService:v260 safetyCacheStore:v267 sessionStore:v261 dataProtectionManager:v289 batteryManager:v282 xpcActivityManager:v223 networkOfInterestManager:v167 authorizationManager:v290 wristStateManager:0 vehicleLocationProvider:v284 starkManager:v230 suggestionsManager:v130 suggestionsHelper:v246 learnedLocationManager:v296 healthKitManager:v279 deviceConfigurationChecker:v225 noMovementMonitor:v164 biomeManager:v227 appDeletionManager:v247 emergencyCallManager:v165];
  [(RTLifeCycleManager *)self addService:v131];
  v222 = v131;
  v132 = [[SMReceiverService alloc] initWithDefaultsManager:v5 platform:v298 messagingService:v260 safetyCacheStore:v267 xpcActivityManager:v223];
  [(RTLifeCycleManager *)self addService:v132];
  v163 = v132;
  v133 = [[SMClientListener alloc] initWithDefaultsManager:v5 authorizationManager:v290 distanceCalculator:v297 platform:v298 initiatorService:v222 messagingService:v260 receiverService:v132 sessionStore:v261 suggestionsManager:v245 suggestionsHelper:v246 suggestionsStore:v224 eligibilityChecker:v226 deviceConfigurationChecker:v225 appDeletionManager:v247];
  [(RTLifeCycleManager *)self addListener:v133 machPort:*MEMORY[0x277D4AD28]];
  v154 = v133;
  v134 = [[RTCompanionLinkManager alloc] initWithDefaultsManager:v5];
  [(RTLifeCycleManager *)self addService:v134];
  v162 = v134;
  v135 = [RTLocationContextManager alloc];
  v136 = objc_opt_new();
  v221 = [(RTLocationContextManager *)v135 initWithAuthorizationManager:v290 defaultsManager:v5 distanceCalculator:v297 learnedLocationManager:v296 learnedLocationStore:v293 locationManager:v295 placeInferenceManager:v272 platform:v298 timerManager:v136 visitManager:v287 companionLinkManager:v162];

  [(RTLifeCycleManager *)self addService:v221];
  v137 = objc_alloc_init(RTHomeKitManager);
  [(RTLifeCycleManager *)self addService:v137];
  v160 = v137;
  v161 = objc_alloc_init(RTTripLocationPropagator);
  v138 = [(RTStore *)[RTPredictedContextStore alloc] initWithPersistenceManager:v299];
  v139 = [RTPredictedContextMetricsManager alloc];
  v140 = objc_opt_new();
  v220 = [(RTPredictedContextMetricsManager *)v139 initWithManagedConfiguration:v140 predictedContextStore:v138 defaultsManager:v5 visitConsolidator:v259];

  v141 = [[RTFeatureExtractor alloc] initWithLearnedLocationManager:v296 visitManager:v287 locationManager:v295 eventManager:v273 navigationManager:v280 mapsSupportManager:v274 motionActivityManager:v291 vehicleLocationProvider:v284 visitConsolidator:v259 healthKitManager:v279 homeKitManager:v160 tripLocationPropagator:v161 metricsManager:v220];
  [(RTLifeCycleManager *)self addService:v141];
  v142 = [[RTPredictedContextManager alloc] initWithFeatureExtractor:v141 learnedLocationManager:v296 platform:v298 activityManager:v288 dataProtectionManager:v289 defaultsManager:v5 visitManager:v287 eventManager:v273 mapServiceManager:v294 mapsSupportManager:v274 navigationManager:v280 motionActivityManager:v291 vehicleLocationProvider:v284 distanceCalculator:v297 predictedContextStore:v138 metricsManager:v220];
  [(RTLifeCycleManager *)self addService:v142];
  [(RTDiagnostics *)v292 addDiagnosticProvider:v142];
  v143 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v254, v271, v262, v256, v277, v218, v242, v295, v296, v268, v287, v272, v284, v276, v265, v253, v241, v258, v222, v245, v252, v270, v240, v142, v138, v285, 0}];
  v144 = [[RTPurgeManager alloc] initWithDefaultsManager:v5 learnedLocationStore:v293 lifeCycleManager:self platform:v298 purgers:v143 visitStore:v263 xpcActivityManager:v288];
  [(RTLifeCycleManager *)self addService:v144];
  [(RTBluePOITileManager *)v285 setPredictedContextManager:v142];
  v145 = [RTClientListener alloc];
  v146 = objc_opt_new();
  v147 = [(RTClientListener *)v145 initWithAccountManager:v278 assetManager:v244 authorizationManager:v290 backgroundInertialOdometryManager:v242 bluePOITileManager:v285 contactsManager:v281 defaultsManager:v5 deviceLocationPredictor:v271 diagnostics:v292 elevationManager:v262 eventAgentManager:v214 eventModelProvider:v256 authorizedLocationManager:v255 fingerprintManager:v277 healthKitManager:v279 hintManager:v254 intermittentGNSSManager:v213 learnedLocationManager:v296 learnedLocationStore:v293 locationManager:v295 locationContextManager:v221 locationStore:v269 mapServiceManager:v294 metricManager:v286 motionActivityManager:v291 peopleDiscoveryProvider:v252 placeInferenceManager:v272 predictedContextManager:v142 purgeManager:v144 scenarioTriggerManager:v268 timerManager:v146 tripSegmentManager:v253 userCurationManager:v240 vehicleLocationProvider:v284 vehicleStore:v258 visitManager:v287 wifiManager:v283 tripClusterManager:v241 visitConsolidator:v259];

  [(RTLifeCycleManager *)self addListener:v147 machPort:@"com.apple.routined.registration"];
  if ([v298 internalInstall])
  {
    v148 = [[RTClientListenerInternal alloc] initWithAccountManager:v278 assetManager:v244 authorizationManager:v290 bluePOITileManager:v285 buildingPolygonManager:v219 deviceLocationPredictor:v271 diagnostics:v292 eventAgentManager:v214 eventModelProvider:v256 authorizedLocationManager:v255 fingerprintManager:v277 hintManager:v254 intermittentGNSSManager:v213 learnedLocationManager:v296 learnedLocationStore:v293 locationManager:v295 locationStore:v269 mapServiceManager:v294 motionActivityManager:v291 peopleDiscoveryProvider:v252 persistenceManager:v299 placeInferenceQueryStore:v257 platform:v298 pointOfInterestSampler:v216 predictedContextManager:v142 purgeManager:v144 safetyCacheStore:v267 scenarioTriggerManager:v268 userCurationManager:v240 vehicleLocationProvider:v284 visitManager:v287 workoutRouteManager:v215 workoutScheduler:v159];
    [(RTLifeCycleManager *)self addListener:v148 machPort:@"com.apple.routined.internal"];
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", self->_queue, &__block_literal_global_712);
  xpc_set_event_stream_handler("com.apple.alarm", self->_queue, &__block_literal_global_717);
  xpc_set_event_stream_handler("com.apple.locationd.nomovement.stateupdate", self->_queue, &__block_literal_global_720);
  xpc_set_event_stream_handler("com.apple.locationd.workout.workoutStateStopDetectionOrAutoPauseUpdate", self->_queue, &__block_literal_global_723);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v149 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
    {
      v150 = NSStringFromSelector(a2);
      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceDate:date];
      *buf = 138412546;
      v304 = v150;
      v305 = 2048;
      v306 = v152;
      _os_log_impl(&dword_2304B3000, v149, OS_LOG_TYPE_INFO, "%@, finished, latency, %.2f", buf, 0x16u);
    }
  }

  objc_destroyWeak(&v301);
  objc_destroyWeak(&location);
}

void __28__RTLifeCycleManager__start__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "handle SIGTERM", v4, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained exit];
}

void __28__RTLifeCycleManager__start__block_invoke_709(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (MEMORY[0x23191C270]() == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x277D86430]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = string;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "--- handle event %s ---", &v7, 0xCu);
      }
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    [v5 postNotificationName:v6 object:0];
  }
}

void __28__RTLifeCycleManager__start__block_invoke_715(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (MEMORY[0x23191C270]() == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x277D86430]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = string;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "--- handle event, com.apple.alarm, name, %s ---", &v7, 0xCu);
      }
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    [v5 postNotificationName:v6 object:0];
  }
}

void __28__RTLifeCycleManager__start__block_invoke_718(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (MEMORY[0x23191C270]() == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x277D86430]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = 136315138;
        v6 = string;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "--- handle event %s ---", &v5, 0xCu);
      }
    }
  }
}

void __28__RTLifeCycleManager__start__block_invoke_721(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (MEMORY[0x23191C270]() == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x277D86430]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = 136315138;
        v6 = string;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "--- handle event %s ---", &v5, 0xCu);
      }
    }
  }
}

- (void)exitWithDelay:(double)delay
{
  v4 = dispatch_time(0, (delay * 1000000000.0));
  queue = [(RTLifeCycleManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__RTLifeCycleManager_exitWithDelay___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_after(v4, queue, block);
}

- (void)exit
{
  queue = [(RTLifeCycleManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__RTLifeCycleManager_exit__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_exit
{
  v72 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      *buf = 138412290;
      v71 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  v35 = [(RTLifeCycleManager *)self serviceWithClass:objc_opt_class()];
  listeners = [(RTLifeCycleManager *)self listeners];
  allValues = [listeners allValues];
  v9 = [allValues mutableCopy];

  services = [(RTLifeCycleManager *)self services];
  v11 = [services mutableCopy];

  v12 = dispatch_time(0, 10000000000);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__RTLifeCycleManager__exit__block_invoke;
  block[3] = &unk_2788C4C70;
  v67 = a2;
  v34 = date;
  v64 = v34;
  v39 = v11;
  v65 = v39;
  v38 = v9;
  v66 = v38;
  dispatch_after(v12, queue, block);
  v14 = dispatch_group_create();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  listeners2 = [(RTLifeCycleManager *)self listeners];
  allValues2 = [listeners2 allValues];

  obj = allValues2;
  v17 = [allValues2 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v60;
    do
    {
      v20 = 0;
      do
      {
        if (*v60 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v59 + 1) + 8 * v20);
        v22 = [MEMORY[0x277CBEAA8] now];
        dispatch_group_enter(v14);
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __27__RTLifeCycleManager__exit__block_invoke_724;
        v54[3] = &unk_2788C5F28;
        v54[4] = self;
        v54[5] = v21;
        v58 = a2;
        v55 = v22;
        v56 = v38;
        v57 = v14;
        v23 = v22;
        [v21 shutdownWithHandler:v54];

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v18);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obja = [(RTLifeCycleManager *)self services];
  v24 = [obja countByEnumeratingWithState:&v50 objects:v68 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v51;
    do
    {
      v27 = 0;
      do
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(*(&v50 + 1) + 8 * v27);
        v29 = [MEMORY[0x277CBEAA8] now];
        dispatch_group_enter(v14);
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __27__RTLifeCycleManager__exit__block_invoke_730;
        v45[3] = &unk_2788C5F28;
        v45[4] = self;
        v45[5] = v28;
        v49 = a2;
        v46 = v29;
        v47 = v39;
        v48 = v14;
        v30 = v29;
        [v28 shutdownWithHandler:v45];

        ++v27;
      }

      while (v25 != v27);
      v25 = [obja countByEnumeratingWithState:&v50 objects:v68 count:16];
    }

    while (v25);
  }

  queue = [(RTLifeCycleManager *)self queue];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __27__RTLifeCycleManager__exit__block_invoke_732;
  v40[3] = &unk_2788C4C70;
  v41 = v35;
  v42 = v34;
  selfCopy = self;
  v44 = a2;
  v32 = v34;
  v33 = v35;
  dispatch_group_notify(v14, queue, v40);
}

void __27__RTLifeCycleManager__exit__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = [MEMORY[0x277CBEAA8] date];
      [v4 timeIntervalSinceDate:*(a1 + 32)];
      v6 = v5;
      v7 = [*(a1 + 40) count];
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) count];
      v10 = *(a1 + 48);
      v11 = 138413570;
      v12 = v3;
      v13 = 2048;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, timed out waiting for clean exit, latency, %.2f, %lu services, %@, %lu listeners, %@", &v11, 0x3Eu);
    }
  }

  exit(0);
}

void __27__RTLifeCycleManager__exit__block_invoke_724(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__RTLifeCycleManager__exit__block_invoke_2;
  block[3] = &unk_2788C5F00;
  v15 = *(a1 + 72);
  v5 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v10 = v3;
  v6 = v5;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v8 = v3;
  dispatch_async(v4, block);
}

void __27__RTLifeCycleManager__exit__block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(*(a1 + 80));
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = *(a1 + 40);
      v16 = [MEMORY[0x277CBEAA8] date];
      [v16 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138413058;
      v25 = v12;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      v30 = 2048;
      v31 = v17;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, shutdown service, %@, error, %@, latency, %.2f", buf, 0x2Au);
    }
  }

  [*(*(a1 + 56) + 32) removeObject:*(a1 + 32)];
  [*(a1 + 64) removeObject:*(a1 + 32)];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 64);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (v6)
        {
          [v6 appendString:{@", "}];
        }

        else
        {
          v6 = [MEMORY[0x277CCAB68] string];
        }

        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v6 appendString:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = [*(a1 + 64) count];
      *buf = 134218242;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "total number of listeners remaining, %lu, listeners, %@", buf, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 72));
}

void __27__RTLifeCycleManager__exit__block_invoke_730(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__RTLifeCycleManager__exit__block_invoke_2_731;
  block[3] = &unk_2788C5F50;
  v13 = *(a1 + 72);
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  v4 = *(a1 + 56);
  *&v6 = v7;
  *&v5 = v8;
  *(&v6 + 1) = v4;
  *(&v5 + 1) = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 64);
  dispatch_async(v2, block);
}

void __27__RTLifeCycleManager__exit__block_invoke_2_731(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(*(a1 + 72));
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [MEMORY[0x277CBEAA8] date];
      [v15 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138412802;
      v24 = v12;
      v25 = 2112;
      v26 = v14;
      v27 = 2048;
      v28 = v16;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, shutdown service, %@, latency, %.2f", buf, 0x20u);
    }
  }

  [*(*(a1 + 48) + 32) removeObject:*(a1 + 32)];
  [*(a1 + 56) removeObject:*(a1 + 32)];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 56);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (v6)
        {
          [v6 appendString:{@", "}];
        }

        else
        {
          v6 = [MEMORY[0x277CCAB68] string];
        }

        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v6 appendString:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = [*(a1 + 56) count];
      *buf = 134218242;
      v24 = v17;
      v25 = 2112;
      v26 = v6;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "total number of services remaining, %lu, services, %@", buf, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

uint64_t __27__RTLifeCycleManager__exit__block_invoke_732(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 processName];
  v6 = [@"LastExitDate" stringByAppendingPathExtension:v5];
  [v2 setObject:v3 forKey:v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLifeCycle);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = [MEMORY[0x277CBEAA8] date];
      [v9 timeIntervalSinceDate:*(a1 + 40)];
      v12 = 138412546;
      v13 = v8;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, shutdown complete, latency, %.2f", &v12, 0x16u);
    }
  }

  [*(*(a1 + 48) + 32) shutdownWithHandler:&__block_literal_global_735];
  return xpc_transaction_exit_clean();
}

void __27__RTLifeCycleManager__exit__block_invoke_733()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v0 = _rt_log_facility_get_os_log(RTLogFacilityWatchdog);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_2304B3000, v0, OS_LOG_TYPE_INFO, "RTWatchdog finished shutdown", v1, 2u);
    }
  }
}

@end