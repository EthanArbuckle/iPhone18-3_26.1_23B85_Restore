@interface RTIntermittentGNSSManager
+ (BOOL)supportsNotificationName:(id)name;
+ (BOOL)validLocation:(id)location;
+ (id)overrideStateToString:(unint64_t)string;
- (BOOL)_dutyCyclingConditionMet;
- (BOOL)_frequentlyVisitedLocationOfInterest:(id)interest;
- (BOOL)_motionActivityConditionsSatisifed:(id)satisifed;
- (BOOL)_wifiDenseConditionsMet;
- (BOOL)platformSupported;
- (RTIntermittentGNSSManager)initWithDefaultsManager:(id)manager learnedLocationManager:(id)locationManager locationManager:(id)a5 motionActivityManager:(id)activityManager platform:(id)platform timerManager:(id)timerManager vehicleLocationProvider:(id)provider wifiManager:(id)self0;
- (RTIntermittentGNSSManager)initWithDefaultsManager:(id)manager learnedLocationManager:(id)locationManager locationManager:(id)a5 motionActivityManager:(id)activityManager platform:(id)platform vehicleLocationProvider:(id)provider wifiManager:(id)wifiManager;
- (id)_initializeWifiLocationStarvedTimer;
- (id)_locationsOfInterestNearLocation:(id)location error:(id *)error;
- (int64_t)_remoteStatusForCurrentState;
- (void)_checkWifiDenseArea;
- (void)_completeRemoteStatusChecklistItem:(unint64_t)item;
- (void)_considerRegisteringForIntermittentGNSS;
- (void)_processWifiScanResults;
- (void)_registerForRhythmicNonWakingLocation;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)_unregisterForRhythmicNonWakingLocation;
- (void)_updateLocationNearLOI:(id)i;
- (void)_updateSignalEnvironmentRiskStatus:(int)status;
- (void)_updateWifiLocationAvailabilityStatus:(id)status;
- (void)_updateWifiLocationStarvedTimer;
- (void)fetchIntermittentGNSSRegistrationStateWithHandler:(id)handler;
- (void)fetchRemoteStatusWithHandler:(id)handler;
- (void)onDailyMetricsNotification:(id)notification;
- (void)onLeechedLocationNotification:(id)notification;
- (void)onMotionActivityManagerNotification:(id)notification;
- (void)onVehicleEventNotification:(id)notification;
- (void)onWifiScanResultsNotification:(id)notification;
- (void)setAwayFromFrequentlyVisitedLOI:(BOOL)i;
- (void)setCurrentSignalEnvironment:(int)environment;
- (void)setLastDenseWifiScanResultDate:(id)date;
- (void)setLastWifiLocationDate:(id)date;
- (void)setMotionActivityTypeSatisfied:(BOOL)satisfied;
- (void)setRegisteredForIntermittentGNSS:(BOOL)s;
- (void)setSignalEnvironmentAtRisk:(BOOL)risk;
- (void)setUnsettled:(BOOL)unsettled;
- (void)setWifiLocationStarved:(BOOL)starved;
- (void)updateIntermittentGNSSRegistrationOverrideState:(unint64_t)state handler:(id)handler;
@end

@implementation RTIntermittentGNSSManager

- (int64_t)_remoteStatusForCurrentState
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(RTIntermittentGNSSManager *)self remoteStatusChecklist]== 15)
  {
    if ([(RTIntermittentGNSSManager *)self awayFromFrequentlyVisitedLOI])
    {
      if ([(RTIntermittentGNSSManager *)self wifiLocationStarved])
      {
        lastDenseWifiScanResultDate = [(RTIntermittentGNSSManager *)self lastDenseWifiScanResultDate];
        v4 = lastDenseWifiScanResultDate;
        if (lastDenseWifiScanResultDate)
        {
          distantPast = lastDenseWifiScanResultDate;
        }

        else
        {
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
        }

        v6 = distantPast;

        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSinceDate:v6];
        v11 = v10;

        if (v11 <= 840.0)
        {
          v7 = 1;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v13 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
            v7 = 1;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v18 = 136315138;
              v19 = "[RTIntermittentGNSSManager _remoteStatusForCurrentState]";
              v14 = "%s, dense WiFi, status accessible";
LABEL_36:
              v7 = 1;
              _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, v14, &v18, 0xCu);
            }

LABEL_45:
          }

LABEL_46:

          return v7;
        }

        if ([(RTIntermittentGNSSManager *)self currentSignalEnvironment])
        {
          currentSignalEnvironment = [(RTIntermittentGNSSManager *)self currentSignalEnvironment];
          goto LABEL_27;
        }

        if ([(RTIntermittentGNSSManager *)self previousSignalEnvironment])
        {
          currentSignalEnvironment = [(RTIntermittentGNSSManager *)self previousSignalEnvironment];
LABEL_27:
          if ((currentSignalEnvironment - 5) < 0xFFFFFFFD)
          {
            currentDominantMotionType = [(RTIntermittentGNSSManager *)self currentDominantMotionType];
            v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
            if (currentDominantMotionType == 4)
            {
              if (!v16)
              {
                v7 = 3;
                goto LABEL_46;
              }

              v13 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v18 = 136315138;
                v19 = "[RTIntermittentGNSSManager _remoteStatusForCurrentState]";
                _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, status remote in vehicle", &v18, 0xCu);
              }

              v7 = 3;
            }

            else
            {
              if (!v16)
              {
                v7 = 2;
                goto LABEL_46;
              }

              v13 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v18 = 136315138;
                v19 = "[RTIntermittentGNSSManager _remoteStatusForCurrentState]";
                _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, status remote", &v18, 0xCu);
              }

              v7 = 2;
            }

            goto LABEL_45;
          }

          v7 = 1;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v13 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
            v7 = 1;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v18 = 136315138;
              v19 = "[RTIntermittentGNSSManager _remoteStatusForCurrentState]";
              v14 = "%s, signal environment does not appear to be remote, status accessible";
              goto LABEL_36;
            }

            goto LABEL_45;
          }

          goto LABEL_46;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v18 = 136315138;
            v19 = "[RTIntermittentGNSSManager _remoteStatusForCurrentState]";
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, signal environment is unavailable, status unknown", &v18, 0xCu);
          }

          v7 = 0;
          goto LABEL_45;
        }

LABEL_9:
        v7 = 0;
        goto LABEL_46;
      }

      v7 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
        v7 = 1;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_46;
        }

        v18 = 136315138;
        v19 = "[RTIntermittentGNSSManager _remoteStatusForCurrentState]";
        v8 = "%s, recent WiFi location, status accessible";
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
        v7 = 1;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_46;
        }

        v18 = 136315138;
        v19 = "[RTIntermittentGNSSManager _remoteStatusForCurrentState]";
        v8 = "%s, near loi, status accessible";
LABEL_17:
        v7 = 1;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, v8, &v18, 0xCu);
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v18 = 136315138;
        v19 = "[RTIntermittentGNSSManager _remoteStatusForCurrentState]";
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, checklist not yet complete, status unknown", &v18, 0xCu);
      }

      goto LABEL_9;
    }

    return 0;
  }

  return v7;
}

- (void)_updateWifiLocationStarvedTimer
{
  v23 = *MEMORY[0x277D85DE8];
  wifiLocationStarvedTimer = [(RTIntermittentGNSSManager *)self wifiLocationStarvedTimer];

  if (wifiLocationStarvedTimer)
  {
    wifiLocationStarvedTimer2 = [(RTIntermittentGNSSManager *)self wifiLocationStarvedTimer];
    [wifiLocationStarvedTimer2 invalidate];

    [(RTIntermittentGNSSManager *)self setWifiLocationStarvedTimer:0];
  }

  lastWifiLocationDate = [(RTIntermittentGNSSManager *)self lastWifiLocationDate];
  if (lastWifiLocationDate)
  {
  }

  else
  {
    lastDenseWifiScanResultDate = [(RTIntermittentGNSSManager *)self lastDenseWifiScanResultDate];

    if (!lastDenseWifiScanResultDate)
    {
      return;
    }
  }

  _initializeWifiLocationStarvedTimer = [(RTIntermittentGNSSManager *)self _initializeWifiLocationStarvedTimer];
  [(RTIntermittentGNSSManager *)self setWifiLocationStarvedTimer:_initializeWifiLocationStarvedTimer];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      lastWifiLocationDate2 = [(RTIntermittentGNSSManager *)self lastWifiLocationDate];
      stringFromDate = [lastWifiLocationDate2 stringFromDate];
      lastDenseWifiScanResultDate2 = [(RTIntermittentGNSSManager *)self lastDenseWifiScanResultDate];
      stringFromDate2 = [lastDenseWifiScanResultDate2 stringFromDate];
      v13 = 136316162;
      v14 = "[RTIntermittentGNSSManager _updateWifiLocationStarvedTimer]";
      v15 = 2112;
      v16 = @"RTIntermittentGNSSLocationStarvedTimer";
      v17 = 2112;
      v18 = stringFromDate;
      v19 = 2112;
      v20 = stringFromDate2;
      v21 = 2048;
      v22 = 0x408A400000000000;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, %@, lastWifiLocationDate, %@, lastDenseWifiScanResultDate, %@, interval, %.2f", &v13, 0x34u);
    }
  }
}

- (id)_initializeWifiLocationStarvedTimer
{
  objc_initWeak(&location, self);
  date = [MEMORY[0x277CBEAA8] date];
  timerManager = [(RTIntermittentGNSSManager *)self timerManager];
  queue = [(RTNotifier *)self queue];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __64__RTIntermittentGNSSManager__initializeWifiLocationStarvedTimer__block_invoke;
  v16 = &unk_2788CF4E8;
  v6 = date;
  v17 = v6;
  selfCopy = self;
  objc_copyWeak(&v19, &location);
  v7 = [timerManager timerWithIdentifier:@"RTIntermittentGNSSLocationStarvedTimer" queue:queue handler:&v13];

  v8 = [(RTIntermittentGNSSManager *)self lastWifiLocationDate:v13];
  lastDenseWifiScanResultDate = [(RTIntermittentGNSSManager *)self lastDenseWifiScanResultDate];
  v10 = [v8 laterDate:lastDenseWifiScanResultDate];

  [v6 timeIntervalSinceDate:v10];
  [v7 fireAfterDelay:{fmax(840.0 - v11, 1.0)}];
  [v7 resume];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v7;
}

- (RTIntermittentGNSSManager)initWithDefaultsManager:(id)manager learnedLocationManager:(id)locationManager locationManager:(id)a5 motionActivityManager:(id)activityManager platform:(id)platform vehicleLocationProvider:(id)provider wifiManager:(id)wifiManager
{
  wifiManagerCopy = wifiManager;
  providerCopy = provider;
  platformCopy = platform;
  activityManagerCopy = activityManager;
  v20 = a5;
  locationManagerCopy = locationManager;
  managerCopy = manager;
  v23 = objc_opt_new();
  v24 = [(RTIntermittentGNSSManager *)self initWithDefaultsManager:managerCopy learnedLocationManager:locationManagerCopy locationManager:v20 motionActivityManager:activityManagerCopy platform:platformCopy timerManager:v23 vehicleLocationProvider:providerCopy wifiManager:wifiManagerCopy];

  return v24;
}

- (RTIntermittentGNSSManager)initWithDefaultsManager:(id)manager learnedLocationManager:(id)locationManager locationManager:(id)a5 motionActivityManager:(id)activityManager platform:(id)platform timerManager:(id)timerManager vehicleLocationProvider:(id)provider wifiManager:(id)self0
{
  managerCopy = manager;
  locationManagerCopy = locationManager;
  v34 = a5;
  activityManagerCopy = activityManager;
  platformCopy = platform;
  timerManagerCopy = timerManager;
  providerCopy = provider;
  wifiManagerCopy = wifiManager;
  v29 = wifiManagerCopy;
  if (!managerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: defaultsManager";
LABEL_28:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_29;
  }

  if (!locationManagerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: learnedLocationManager";
    goto LABEL_28;
  }

  if (!v34)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_28;
  }

  if (!activityManagerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_28;
  }

  if (!platformCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: platform";
    goto LABEL_28;
  }

  if (!timerManagerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_28;
  }

  if (!providerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: vehicleLocationProvider";
    goto LABEL_28;
  }

  if (!wifiManagerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: wifiManager";
      goto LABEL_28;
    }

LABEL_29:

    v23 = 0;
    selfCopy = self;
    goto LABEL_30;
  }

  v35.receiver = self;
  v35.super_class = RTIntermittentGNSSManager;
  v19 = [(RTNotifier *)&v35 init];
  if (v19)
  {
    v28 = v19;
    objc_storeStrong(&v19->_defaultsManager, manager);
    objc_storeStrong(&v28->_learnedLocationManager, locationManager);
    objc_storeStrong(&v28->_locationManager, a5);
    v20 = [[RTIntermittentGNSSManagerMetrics alloc] initWithDefaultsManager:managerCopy timerManager:timerManagerCopy];
    metrics = v28->_metrics;
    v28->_metrics = v20;

    objc_storeStrong(&v28->_motionActivityManager, activityManager);
    objc_storeStrong(&v28->_platform, platform);
    objc_storeStrong(&v28->_timerManager, timerManager);
    objc_storeStrong(&v28->_vehicleLocationProvider, provider);
    objc_storeStrong(&v28->_wifiManager, wifiManager);
    [(RTService *)v28 setup];
    v19 = v28;
  }

  selfCopy = v19;
  v23 = selfCopy;
LABEL_30:

  return v23;
}

- (BOOL)platformSupported
{
  platform = [(RTIntermittentGNSSManager *)self platform];
  if ([platform internalInstall])
  {
    defaultsManager = [(RTIntermittentGNSSManager *)self defaultsManager];
    v5 = [defaultsManager objectForKey:@"RTDefaultsIntermittentGNSSBypassPlatformCheck"];

    if (v5)
    {
      defaultsManager2 = [(RTIntermittentGNSSManager *)self defaultsManager];
      v7 = [defaultsManager2 objectForKey:@"RTDefaultsIntermittentGNSSBypassPlatformCheck"];
      bOOLValue = [v7 BOOLValue];

      return bOOLValue;
    }
  }

  else
  {
  }

  return MGGetBoolAnswer();
}

- (void)_setup
{
  v72 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTIntermittentGNSSManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsIntermittentGNSSBypassSetup"];
  if (v4)
  {
  }

  else
  {
    v5 = _os_feature_enabled_impl();

    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[RTIntermittentGNSSManager _setup]";
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, IntermittentGNSS registration and setup blocked by user defaults or feature flag", &buf, 0xCu);
    }
  }

LABEL_8:
  [(RTIntermittentGNSSManager *)self setRemoteStatusChecklist:0];
  _initializeWifiLocationStarvedTimer = [(RTIntermittentGNSSManager *)self _initializeWifiLocationStarvedTimer];
  [(RTIntermittentGNSSManager *)self setWifiLocationStarvedTimer:_initializeWifiLocationStarvedTimer];

  locationManager = [(RTIntermittentGNSSManager *)self locationManager];
  v9 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [locationManager addObserver:self selector:sel_onLeechedLocationNotification_ name:v9];

  motionActivityManager = [(RTIntermittentGNSSManager *)self motionActivityManager];
  v11 = +[(RTNotification *)RTMotionActivityManagerNotificationActivity];
  [motionActivityManager addObserver:self selector:sel_onMotionActivityManagerNotification_ name:v11];

  motionActivityManager2 = [(RTIntermittentGNSSManager *)self motionActivityManager];
  v13 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
  [motionActivityManager2 addObserver:self selector:sel_onMotionActivityManagerNotification_ name:v13];

  motionActivityManager3 = [(RTIntermittentGNSSManager *)self motionActivityManager];
  v15 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
  [motionActivityManager3 addObserver:self selector:sel_onMotionActivityManagerNotification_ name:v15];

  vehicleLocationProvider = [(RTIntermittentGNSSManager *)self vehicleLocationProvider];
  v17 = +[(RTNotification *)RTVehicleEventNotification];
  [vehicleLocationProvider addObserver:self selector:sel_onVehicleEventNotification_ name:v17];

  wifiManager = [(RTIntermittentGNSSManager *)self wifiManager];
  v19 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  [wifiManager addObserver:self selector:sel_onWifiScanResultsNotification_ name:v19];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];

  v21 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__187;
  v68 = __Block_byref_object_dispose__187;
  v69 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__187;
  v63 = __Block_byref_object_dispose__187;
  v64 = 0;
  motionActivityManager = self->_motionActivityManager;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __35__RTIntermittentGNSSManager__setup__block_invoke;
  v55[3] = &unk_2788D2560;
  p_buf = &buf;
  v58 = &v59;
  v23 = v21;
  v56 = v23;
  [(RTMotionActivityManager *)motionActivityManager fetchPredominantMotionActivityWithHandler:v55];
  v24 = v23;
  v25 = [MEMORY[0x277CBEAA8] now];
  v26 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v24, v26))
  {
    v27 = [MEMORY[0x277CBEAA8] now];
    [v27 timeIntervalSinceDate:v25];
    v29 = v28;
    v30 = objc_opt_new();
    v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_147];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v33 = [callStackSymbols filteredArrayUsingPredicate:v31];
    firstObject = [v33 firstObject];

    [v30 submitToCoreAnalytics:firstObject type:1 duration:v29];
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      *v71 = 0;
      _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v71, 2u);
    }

    v36 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA450];
    *v71 = @"semaphore wait timeout";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v37];

    if (v38)
    {
      v39 = v38;

      v40 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v38 = 0;
  }

  v40 = 1;
LABEL_15:

  v41 = v38;
  if ((v40 & 1) == 0)
  {
    objc_storeStrong(v60 + 5, v38);
  }

  if (!v60[5])
  {
    v42 = [(RTIntermittentGNSSManager *)self _motionActivityConditionsSatisifed:*(*(&buf + 1) + 40)];
    self->_unsettled = v42;
    self->_motionActivityTypeSatisfied = v42;
  }

  v43 = objc_opt_new();
  accessPoints = self->_accessPoints;
  self->_accessPoints = v43;

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  lastLOINearbyCheckDate = self->_lastLOINearbyCheckDate;
  self->_lastLOINearbyCheckDate = distantPast;

  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  lastSettledStateChangeDate = self->_lastSettledStateChangeDate;
  self->_lastSettledStateChangeDate = distantPast2;

  distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
  lastWifiLocationDate = self->_lastWifiLocationDate;
  self->_lastWifiLocationDate = distantPast3;

  distantPast4 = [MEMORY[0x277CBEAA8] distantPast];
  lastDenseWifiScanResultDate = self->_lastDenseWifiScanResultDate;
  self->_lastDenseWifiScanResultDate = distantPast4;

  distantPast5 = [MEMORY[0x277CBEAA8] distantPast];
  lastRegisteredForIntermittentGNSSVariableFlipDate = self->_lastRegisteredForIntermittentGNSSVariableFlipDate;
  self->_lastRegisteredForIntermittentGNSSVariableFlipDate = distantPast5;

  self->_signalEnvironmentAtRisk = 1;
  self->_awayFromFrequentlyVisitedLOI = 1;
  self->_wifiLocationStarved = 1;
  [(RTIntermittentGNSSManager *)self _considerRegisteringForIntermittentGNSS];

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&buf, 8);
}

void __35__RTIntermittentGNSSManager__setup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  locationManager = [(RTIntermittentGNSSManager *)self locationManager];
  [locationManager removeObserver:self];

  motionActivityManager = [(RTIntermittentGNSSManager *)self motionActivityManager];
  [motionActivityManager removeObserver:self];

  vehicleLocationProvider = [(RTIntermittentGNSSManager *)self vehicleLocationProvider];
  [vehicleLocationProvider removeObserver:self];

  wifiManager = [(RTIntermittentGNSSManager *)self wifiManager];
  [wifiManager removeObserver:self];

  wifiLocationStarvedTimer = [(RTIntermittentGNSSManager *)self wifiLocationStarvedTimer];
  [wifiLocationStarvedTimer invalidate];

  [(RTIntermittentGNSSManager *)self setWifiLocationStarvedTimer:0];
  wifiScanTimer = [(RTIntermittentGNSSManager *)self wifiScanTimer];
  [wifiScanTimer invalidate];

  [(RTIntermittentGNSSManager *)self setWifiScanTimer:0];
  metrics = [(RTIntermittentGNSSManager *)self metrics];
  [metrics shutdown];

  v11 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v11 = handlerCopy;
  }
}

- (void)setUnsettled:(BOOL)unsettled
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_unsettled != unsettled)
  {
    self->_unsettled = unsettled;
    date = [MEMORY[0x277CBEAA8] date];
    lastSettledStateChangeDate = self->_lastSettledStateChangeDate;
    self->_lastSettledStateChangeDate = date;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if (self->_unsettled)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        v9 = 136315394;
        v10 = "[RTIntermittentGNSSManager setUnsettled:]";
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, unsettled, %@", &v9, 0x16u);
      }
    }

    metrics = [(RTIntermittentGNSSManager *)self metrics];
    [metrics processSignalSwitch:2];

    [(RTIntermittentGNSSManager *)self _considerRegisteringForIntermittentGNSS];
  }
}

- (void)setLastWifiLocationDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  objc_storeStrong(&self->_lastWifiLocationDate, date);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [dateCopy stringFromDate];
      v8 = 136315394;
      v9 = "[RTIntermittentGNSSManager setLastWifiLocationDate:]";
      v10 = 2112;
      v11 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, lastWifiLocationDate, %@", &v8, 0x16u);
    }
  }

  [(RTIntermittentGNSSManager *)self _updateWifiLocationStarvedTimer];
  [(RTIntermittentGNSSManager *)self setWifiLocationStarved:0];
}

- (void)setLastDenseWifiScanResultDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  objc_storeStrong(&self->_lastDenseWifiScanResultDate, date);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [dateCopy stringFromDate];
      v8 = 136315394;
      v9 = "[RTIntermittentGNSSManager setLastDenseWifiScanResultDate:]";
      v10 = 2112;
      v11 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, lastDenseWifiScanResultDate, %@", &v8, 0x16u);
    }
  }

  [(RTIntermittentGNSSManager *)self _updateWifiLocationStarvedTimer];
  [(RTIntermittentGNSSManager *)self setWifiLocationStarved:0];
}

- (void)setMotionActivityTypeSatisfied:(BOOL)satisfied
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_motionActivityTypeSatisfied != satisfied)
  {
    satisfiedCopy = satisfied;
    self->_motionActivityTypeSatisfied = satisfied;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (satisfiedCopy)
        {
          v6 = @"YES";
        }

        v8 = 136315394;
        v9 = "[RTIntermittentGNSSManager setMotionActivityTypeSatisfied:]";
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, motionActivityTypeSatisfied, %@", &v8, 0x16u);
      }
    }

    metrics = [(RTIntermittentGNSSManager *)self metrics];
    [metrics processSignalSwitch:1];

    [(RTIntermittentGNSSManager *)self _considerRegisteringForIntermittentGNSS];
  }
}

- (void)setAwayFromFrequentlyVisitedLOI:(BOOL)i
{
  iCopy = i;
  v12 = *MEMORY[0x277D85DE8];
  [(RTIntermittentGNSSManager *)self _completeRemoteStatusChecklistItem:2];
  if (self->_awayFromFrequentlyVisitedLOI != iCopy)
  {
    self->_awayFromFrequentlyVisitedLOI = iCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (iCopy)
        {
          v6 = @"YES";
        }

        v8 = 136315395;
        v9 = "[RTIntermittentGNSSManager setAwayFromFrequentlyVisitedLOI:]";
        v10 = 2117;
        v11 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, awayFromFrequentlyVisitedLOI, %{sensitive}@", &v8, 0x16u);
      }
    }

    metrics = [(RTIntermittentGNSSManager *)self metrics];
    [metrics processSignalSwitch:4];

    [(RTIntermittentGNSSManager *)self _considerRegisteringForIntermittentGNSS];
  }
}

- (void)setCurrentSignalEnvironment:(int)environment
{
  v14 = *MEMORY[0x277D85DE8];
  [(RTIntermittentGNSSManager *)self _completeRemoteStatusChecklistItem:1];
  currentSignalEnvironment = self->_currentSignalEnvironment;
  if (currentSignalEnvironment != environment)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = self->_currentSignalEnvironment;
        v8 = 136315650;
        v9 = "[RTIntermittentGNSSManager setCurrentSignalEnvironment:]";
        v10 = 1024;
        v11 = v7;
        v12 = 1024;
        environmentCopy = environment;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, signal environment change detected, from, %d, to, %d", &v8, 0x18u);
      }

      currentSignalEnvironment = self->_currentSignalEnvironment;
    }

    [(RTIntermittentGNSSManager *)self setPreviousSignalEnvironment:currentSignalEnvironment];
    self->_currentSignalEnvironment = environment;
  }
}

- (void)setRegisteredForIntermittentGNSS:(BOOL)s
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_registeredForIntermittentGNSS != s)
  {
    self->_registeredForIntermittentGNSS = s;
    date = [MEMORY[0x277CBEAA8] date];
    lastRegisteredForIntermittentGNSSVariableFlipDate = self->_lastRegisteredForIntermittentGNSSVariableFlipDate;
    self->_lastRegisteredForIntermittentGNSSVariableFlipDate = date;

    notify_post([@"RTIntermittentGNSSRegistrationStateDidChangeNotification" UTF8String]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if (self->_registeredForIntermittentGNSS)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        v14 = 136315394;
        v15 = "[RTIntermittentGNSSManager setRegisteredForIntermittentGNSS:]";
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, register for intermittent gnss, %@", &v14, 0x16u);
      }
    }

    if (self->_registeredForIntermittentGNSS)
    {
      [(RTIntermittentGNSSManager *)self _registerForRhythmicNonWakingLocation];
    }

    else
    {
      metrics = [(RTIntermittentGNSSManager *)self metrics];
      getLastRegistrationDate = [metrics getLastRegistrationDate];

      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceDate:getLastRegistrationDate];
      v12 = v11;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = 136315394;
          v15 = "[RTIntermittentGNSSManager setRegisteredForIntermittentGNSS:]";
          v16 = 2048;
          v17 = v12;
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, intermittent gnss duration, %.2f", &v14, 0x16u);
        }
      }

      [(RTIntermittentGNSSManager *)self _unregisterForRhythmicNonWakingLocation];
    }
  }
}

- (void)setSignalEnvironmentAtRisk:(BOOL)risk
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_signalEnvironmentAtRisk != risk)
  {
    riskCopy = risk;
    self->_signalEnvironmentAtRisk = risk;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (riskCopy)
        {
          v6 = @"YES";
        }

        v8 = 136315394;
        v9 = "[RTIntermittentGNSSManager setSignalEnvironmentAtRisk:]";
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, signalEnvironmentAtRisk, %@", &v8, 0x16u);
      }
    }

    metrics = [(RTIntermittentGNSSManager *)self metrics];
    [metrics processSignalSwitch:3];

    [(RTIntermittentGNSSManager *)self _considerRegisteringForIntermittentGNSS];
  }
}

- (void)setWifiLocationStarved:(BOOL)starved
{
  starvedCopy = starved;
  v12 = *MEMORY[0x277D85DE8];
  [(RTIntermittentGNSSManager *)self _completeRemoteStatusChecklistItem:4];
  if (self->_wifiLocationStarved != starvedCopy)
  {
    self->_wifiLocationStarved = starvedCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (starvedCopy)
        {
          v6 = @"YES";
        }

        v8 = 136315394;
        v9 = "[RTIntermittentGNSSManager setWifiLocationStarved:]";
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, wifiLocationStarved, %@", &v8, 0x16u);
      }
    }

    metrics = [(RTIntermittentGNSSManager *)self metrics];
    [metrics processSignalSwitch:5];

    [(RTIntermittentGNSSManager *)self _considerRegisteringForIntermittentGNSS];
  }
}

- (void)_checkWifiDenseArea
{
  v17 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  timerManager = [(RTIntermittentGNSSManager *)self timerManager];
  queue = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__RTIntermittentGNSSManager__checkWifiDenseArea__block_invoke;
  v12[3] = &unk_2788CF820;
  objc_copyWeak(v13, &location);
  v13[1] = a2;
  v6 = [timerManager timerWithIdentifier:@"RTIntermittentGNSSWifiScanTimer" queue:queue handler:v12];
  [(RTIntermittentGNSSManager *)self setWifiScanTimer:v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, scheduling active wifi scan", buf, 0xCu);
    }
  }

  wifiManager = [(RTIntermittentGNSSManager *)self wifiManager];
  [wifiManager scheduleScanWithChannels:&unk_2845A1700];

  [(RTIntermittentGNSSManager *)self setActiveWifiScan:1];
  wifiScanTimer = [(RTIntermittentGNSSManager *)self wifiScanTimer];
  [wifiScanTimer fireAfterDelay:1.0];

  wifiScanTimer2 = [(RTIntermittentGNSSManager *)self wifiScanTimer];
  [wifiScanTimer2 resume];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __48__RTIntermittentGNSSManager__checkWifiDenseArea__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained wifiScanTimer];
  [v3 invalidate];

  [WeakRetained setWifiScanTimer:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, active wifi scan timer expiry", &v6, 0xCu);
    }
  }

  [WeakRetained _processWifiScanResults];
}

- (BOOL)_frequentlyVisitedLocationOfInterest:(id)interest
{
  v53 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  v4 = interestCopy;
  if (interestCopy)
  {
    location = [interestCopy location];
    v5Location = [location location];
    [v5Location horizontalUncertainty];
    v8 = v7;

    if (v8 <= 250.0)
    {
      visits = [v4 visits];
      date = [MEMORY[0x277CBEAA8] date];
      firstObject = [visits firstObject];
      entryDate = [firstObject entryDate];
      v14 = [date dateByAddingTimeInterval:-604800.0];
      [entryDate timeIntervalSinceDate:v14];
      if (v15 <= 0.0)
      {
        v16 = [visits count];

        if (v16)
        {
          firstObject2 = [visits firstObject];
          entryDate2 = [firstObject2 entryDate];

          v36 = date;
          v19 = [date dateByAddingTimeInterval:-2419200.0];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v37 = visits;
          v20 = visits;
          v21 = [v20 countByEnumeratingWithState:&v38 objects:v52 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v39;
            v24 = 1.0;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v39 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = *(*(&v38 + 1) + 8 * i);
                entryDate3 = [v26 entryDate];
                v28 = [entryDate3 isBeforeDate:v19];

                if ((v28 & 1) == 0)
                {
                  entryDate4 = [v26 entryDate];
                  [entryDate4 timeIntervalSinceDate:entryDate2];
                  v31 = v30;

                  if (v31 >= 14400.0)
                  {
                    v24 = v24 + 1.0;
                    entryDate5 = [v26 entryDate];

                    entryDate2 = entryDate5;
                  }
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v38 objects:v52 count:16];
            }

            while (v22);
          }

          else
          {
            v24 = 1.0;
          }

          date = v36;
          visits = v37;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              stringFromDate = [v19 stringFromDate];
              *buf = 136316163;
              v43 = "[RTIntermittentGNSSManager _frequentlyVisitedLocationOfInterest:]";
              v44 = 2117;
              v45 = v4;
              v46 = 2112;
              v47 = stringFromDate;
              v48 = 2048;
              v49 = v24 * 0.25;
              v50 = 2048;
              v51 = v24;
              _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%s, loi, %{sensitive}@, lookbackWindowStartDate, %@, visitDensityPastFourWeeks, %.2f, numVisitsPastFourWeeks, %.2f", buf, 0x34u);
            }
          }

          v9 = v24 * 0.25 >= 0.75;

          goto LABEL_25;
        }
      }

      else
      {
      }

      v9 = 0;
LABEL_25:

      goto LABEL_26;
    }
  }

  v9 = 0;
LABEL_26:

  return v9;
}

- (id)_locationsOfInterestNearLocation:(id)location error:(id *)error
{
  aSelector = a2;
  v62[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__187;
  v53 = __Block_byref_object_dispose__187;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__187;
  v47 = __Block_byref_object_dispose__187;
  v48 = 0;
  v7 = dispatch_semaphore_create(0);
  learnedLocationManager = [(RTIntermittentGNSSManager *)self learnedLocationManager];
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __68__RTIntermittentGNSSManager__locationsOfInterestNearLocation_error___block_invoke;
  v39 = &unk_2788C4490;
  v41 = &v49;
  v42 = &v43;
  v9 = v7;
  v40 = v9;
  [learnedLocationManager fetchLocationsOfInterestWithinDistance:locationCopy ofLocation:&v36 handler:1000.0];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_147];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v62[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v62 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;

      v26 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = 1;
LABEL_8:

  v27 = v24;
  if ((v26 & 1) == 0)
  {
    objc_storeStrong(v44 + 5, v24);
  }

  if (v44[5])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v34 = NSStringFromSelector(aSelector);
        *buf = 136315394;
        *&buf[4] = "[RTIntermittentGNSSManager _locationsOfInterestNearLocation:error:]";
        v56 = 2112;
        v57 = v34;
        _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "%s, error, %@", buf, 0x16u);
      }
    }

    v29 = 0;
    if (error)
    {
      *error = v44[5];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v50[5] count];
        v32 = v50[5];
        *buf = 136315907;
        *&buf[4] = "[RTIntermittentGNSSManager _locationsOfInterestNearLocation:error:]";
        v56 = 2117;
        v57 = locationCopy;
        v58 = 2048;
        v59 = v31;
        v60 = 2117;
        v61 = v32;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%s, location, %{sensitive}@, loi count, %lu, LOIs, %{sensitive}@", buf, 0x2Au);
      }
    }

    v29 = v50[5];
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  return v29;
}

void __68__RTIntermittentGNSSManager__locationsOfInterestNearLocation_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_motionActivityConditionsSatisifed:(id)satisifed
{
  satisifedCopy = satisifed;
  v5 = satisifedCopy;
  if (satisifedCopy)
  {
    if ([satisifedCopy type] == 2 || objc_msgSend(v5, "type") == 3 || objc_msgSend(v5, "type") == 5)
    {
      v6 = [v5 confidence] == 2 || objc_msgSend(v5, "confidence") == 3 || -[RTIntermittentGNSSManager motionActivityTypeSatisfied](self, "motionActivityTypeSatisfied") || -[RTIntermittentGNSSManager currentDominantMotionType](self, "currentDominantMotionType") == 6;
    }

    else
    {
      v6 = [v5 type] == 6 && -[RTIntermittentGNSSManager motionActivityTypeSatisfied](self, "motionActivityTypeSatisfied");
    }

    -[RTIntermittentGNSSManager setCurrentDominantMotionType:](self, "setCurrentDominantMotionType:", [v5 type]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_processWifiScanResults
{
  v10 = *MEMORY[0x277D85DE8];
  _wifiDenseConditionsMet = [(RTIntermittentGNSSManager *)self _wifiDenseConditionsMet];
  accessPoints = [(RTIntermittentGNSSManager *)self accessPoints];
  [accessPoints removeAllObjects];

  if (_wifiDenseConditionsMet)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    [(RTIntermittentGNSSManager *)self setLastDenseWifiScanResultDate:v5];
  }

  [(RTIntermittentGNSSManager *)self setCompletedInitialWifiScan:1];
  if ([(RTIntermittentGNSSManager *)self activeWifiScan])
  {
    if (!_wifiDenseConditionsMet)
    {
      [(RTIntermittentGNSSManager *)self setWifiLocationStarved:1];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "[RTIntermittentGNSSManager _processWifiScanResults]";
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, Cancelling wifi scan", &v8, 0xCu);
      }
    }

    wifiManager = [(RTIntermittentGNSSManager *)self wifiManager];
    [wifiManager cancelScan];

    [(RTIntermittentGNSSManager *)self setActiveWifiScan:0];
  }
}

- (void)_updateLocationNearLOI:(id)i
{
  v33 = *MEMORY[0x277D85DE8];
  iCopy = i;
  unsettled = self->_unsettled;
  if (!unsettled)
  {
    lastSettledStateChangeDate = self->_lastSettledStateChangeDate;
    lastLOINearbyCheckDate = [(RTIntermittentGNSSManager *)self lastLOINearbyCheckDate];
    [(NSDate *)lastSettledStateChangeDate timeIntervalSinceDate:lastLOINearbyCheckDate];
    if (v8 < 0.0)
    {

      goto LABEL_26;
    }
  }

  v9 = [MEMORY[0x277CBEAA8] now];
  lastLOINearbyCheckDate2 = [(RTIntermittentGNSSManager *)self lastLOINearbyCheckDate];
  [v9 timeIntervalSinceDate:lastLOINearbyCheckDate2];
  v12 = v11;

  if (!unsettled)
  {
  }

  if (v12 >= 300.0)
  {
    v27 = 0;
    v13 = [(RTIntermittentGNSSManager *)self _locationsOfInterestNearLocation:iCopy error:&v27];
    v14 = v27;
    if (v14)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_25:

        goto LABEL_26;
      }

      date2 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(date2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v30 = "[RTIntermittentGNSSManager _updateLocationNearLOI:]";
        v31 = 2112;
        v32 = v14;
        _os_log_debug_impl(&dword_2304B3000, date2, OS_LOG_TYPE_DEBUG, "%s, loi fetch error, %@", buf, 0x16u);
      }
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      date2 = v13;
      v16 = [date2 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(date2);
            }

            v20 = *(*(&v23 + 1) + 8 * i);
            if ([(RTIntermittentGNSSManager *)self _frequentlyVisitedLocationOfInterest:v20, v23])
            {
              [(RTIntermittentGNSSManager *)self setAwayFromFrequentlyVisitedLOI:0];
              date = [iCopy date];
              [(RTIntermittentGNSSManager *)self setLastLOINearbyCheckDate:date];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v22 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315395;
                  v30 = "[RTIntermittentGNSSManager _updateLocationNearLOI:]";
                  v31 = 2117;
                  v32 = v20;
                  _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%s, near frequently visited LOI, %{sensitive}@", buf, 0x16u);
                }
              }

              goto LABEL_24;
            }
          }

          v17 = [date2 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      [(RTIntermittentGNSSManager *)self setAwayFromFrequentlyVisitedLOI:1];
      date2 = [iCopy date];
      [(RTIntermittentGNSSManager *)self setLastLOINearbyCheckDate:date2];
    }

LABEL_24:

    goto LABEL_25;
  }

LABEL_26:
}

- (void)_updateSignalEnvironmentRiskStatus:(int)status
{
  [(RTIntermittentGNSSManager *)self setCurrentSignalEnvironment:?];
  signalEnvironmentAtRisk = 1;
  if ((status - 1) >= 2 && status != 6)
  {
    if (status)
    {
      signalEnvironmentAtRisk = 0;
    }

    else
    {
      signalEnvironmentAtRisk = [(RTIntermittentGNSSManager *)self signalEnvironmentAtRisk];
    }
  }

  [(RTIntermittentGNSSManager *)self setSignalEnvironmentAtRisk:signalEnvironmentAtRisk];
}

- (void)_updateWifiLocationAvailabilityStatus:(id)status
{
  v27 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [statusCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (!v5)
  {
    goto LABEL_23;
  }

  v7 = v5;
  v8 = 0;
  v9 = *v19;
  *&v6 = 136315395;
  v17 = v6;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(statusCopy);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      if ([objc_opt_class() validLocation:v11])
      {
        if ([v11 type] == 4 || objc_msgSend(v11, "type") == 11 || objc_msgSend(v11, "type") == 13)
        {
          if (!self->_lastWifiLocationDate || ([v11 timestamp], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "timeIntervalSinceDate:", self->_lastWifiLocationDate), v14 = v13, v12, v14 >= 0.0))
          {
            [v11 timestamp];
            v8 = v15 = v8;
LABEL_18:

            continue;
          }
        }

        if (([v11 type] == 1 || objc_msgSend(v11, "type") == 9) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            toString = [v11 toString];
            *buf = v17;
            v23 = "[RTIntermittentGNSSManager _updateWifiLocationAvailabilityStatus:]";
            v24 = 2117;
            v25 = toString;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, gps location received, %{sensitive}@", buf, 0x16u);
          }

          goto LABEL_18;
        }
      }
    }

    v7 = [statusCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  }

  while (v7);
  if (v8)
  {
    [(RTIntermittentGNSSManager *)self setLastWifiLocationDate:v8];
  }

LABEL_23:
}

- (BOOL)_wifiDenseConditionsMet
{
  v32 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  accessPoints = [(RTIntermittentGNSSManager *)self accessPoints];
  v5 = [accessPoints countByEnumeratingWithState:&v17 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(accessPoints);
        }

        if ([*(*(&v17 + 1) + 8 * i) rssi] > -96)
        {
          ++v7;
        }
      }

      v6 = [accessPoints countByEnumeratingWithState:&v17 objects:v31 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      if (v7 <= 5)
      {
        v12 = @"NO";
      }

      else
      {
        v12 = @"YES";
      }

      accessPoints2 = [(RTIntermittentGNSSManager *)self accessPoints];
      v14 = [accessPoints2 count];
      accessPoints3 = [(RTIntermittentGNSSManager *)self accessPoints];
      *buf = 138413315;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v14;
      v29 = 2117;
      v30 = accessPoints3;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, wifiDense, %@, strong access points count, %lu/%lu, accessPoints, %{sensitive}@", buf, 0x34u);
    }
  }

  return v7 > 5;
}

+ (BOOL)validLocation:(id)location
{
  locationCopy = location;
  v4 = locationCopy;
  if (locationCopy && ([locationCopy horizontalAccuracy], v5 >= 0.0))
  {
    [v4 horizontalAccuracy];
    v6 = v7 <= 250.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)supportsNotificationName:(id)name
{
  nameCopy = name;
  v4 = +[(RTNotification *)RTIntermittentGNSSNotificationRemoteStatusUpdated];
  v5 = [v4 isEqualToString:nameCopy];

  return v5;
}

- (void)onDailyMetricsNotification:(id)notification
{
  metrics = [(RTIntermittentGNSSManager *)self metrics];
  [metrics submitDailyMetricsToCoreAnalytics];
}

- (void)onLeechedLocationNotification:(id)notification
{
  notificationCopy = notification;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __59__RTIntermittentGNSSManager_onLeechedLocationNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  v6 = _Block_copy(&v8);
  v7 = [(RTNotifier *)self queue:v8];
  dispatch_async(v7, v6);
}

void __59__RTIntermittentGNSSManager_onLeechedLocationNotification___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [*(a1 + 32) leechedLocations];
    v2 = [*(a1 + 40) metrics];
    [v2 updateSessionLocationCount:{objc_msgSend(v10, "count")}];

    [*(a1 + 40) _updateWifiLocationAvailabilityStatus:v10];
    v3 = *(a1 + 40);
    v4 = [v10 lastObject];
    [v3 _updateSignalEnvironmentRiskStatus:{objc_msgSend(v4, "signalEnvironmentType")}];

    v5 = *(a1 + 40);
    v6 = objc_alloc(MEMORY[0x277D01160]);
    v7 = [v10 lastObject];
    v8 = [v6 initWithCLLocation:v7];
    [v5 _updateLocationNearLOI:v8];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [notification isKindOfClass:[RTLocationManagerNotificationLocationsLeeched class]]", buf, 2u);
    }
  }
}

- (void)onMotionActivityManagerNotification:(id)notification
{
  notificationCopy = notification;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __65__RTIntermittentGNSSManager_onMotionActivityManagerNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  v6 = _Block_copy(&v8);
  v7 = [(RTNotifier *)self queue:v8];
  dispatch_async(v7, v6);
}

void __65__RTIntermittentGNSSManager_onMotionActivityManagerNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
  v4 = [v2 isEqualToString:v3];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 settledState];
    if (v6 == 1)
    {
      v7 = *(a1 + 40);
      v8 = 1;
    }

    else
    {
      if (v6 != 2)
      {
        return;
      }

      v7 = *(a1 + 40);
      v8 = 0;
    }

    [v7 setUnsettled:v8];
  }

  else
  {
    v9 = [v5 name];
    v10 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [*(a1 + 32) dominantMotionActivity];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = 136315394;
          v15 = "[RTIntermittentGNSSManager onMotionActivityManagerNotification:]_block_invoke";
          v16 = 2112;
          v17 = v12;
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, dominantMotionActivityNotification activity, %@", &v14, 0x16u);
        }
      }

      [*(a1 + 40) setMotionActivityTypeSatisfied:{objc_msgSend(*(a1 + 40), "_motionActivityConditionsSatisifed:", v12)}];
    }
  }
}

- (void)onVehicleEventNotification:(id)notification
{
  notificationCopy = notification;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __56__RTIntermittentGNSSManager_onVehicleEventNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  v6 = _Block_copy(&v8);
  v7 = [(RTNotifier *)self queue:v8];
  dispatch_async(v7, v6);
}

void __56__RTIntermittentGNSSManager_onVehicleEventNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTVehicleEventNotification];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 vehicleEvents];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 date];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v8 stringFromDate];
        v15 = 136315394;
        v16 = "[RTIntermittentGNSSManager onVehicleEventNotification:]_block_invoke";
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, received vehicle event with date, %@, ", &v15, 0x16u);
      }
    }

    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSinceDate:v8];
    if (v12 <= 600.0)
    {
      v14 = [*(a1 + 40) wifiLocationStarved];

      if ((v14 & 1) == 0)
      {
        [*(a1 + 40) _checkWifiDenseArea];
      }
    }

    else
    {
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 32) name];
      v15 = 136315394;
      v16 = "[RTIntermittentGNSSManager onVehicleEventNotification:]_block_invoke";
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, notification not supported, %@", &v15, 0x16u);
    }
  }
}

- (void)onWifiScanResultsNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__RTIntermittentGNSSManager_onWifiScanResultsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __59__RTIntermittentGNSSManager_onWifiScanResultsNotification___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) scanResults];
    v2 = [*(a1 + 40) accessPoints];
    [v2 addObjectsFromArray:v3];

    [*(a1 + 40) _processWifiScanResults];
  }
}

+ (id)overrideStateToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"RTIntermittentGNSSManagerRegistrationOverrideUnsupported";
  }

  else
  {
    return off_2788D2580[string];
  }
}

- (void)fetchIntermittentGNSSRegistrationStateWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__RTIntermittentGNSSManager_fetchIntermittentGNSSRegistrationStateWithHandler___block_invoke;
    v7[3] = &unk_2788C4D38;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);

    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)updateIntermittentGNSSRegistrationOverrideState:(unint64_t)state handler:(id)handler
{
  v18[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (state < 3)
    {
      queue = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__RTIntermittentGNSSManager_updateIntermittentGNSSRegistrationOverrideState_handler___block_invoke;
      block[3] = &unk_2788C6300;
      block[4] = self;
      stateCopy = state;
      v14 = handlerCopy;
      dispatch_async(queue, block);
    }

    else
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D01448];
      v17 = *MEMORY[0x277CCA450];
      v18[0] = @"intermittent gnss override state out of range.";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v10 = [v7 errorWithDomain:v8 code:7 userInfo:v9];
      (*(handlerCopy + 2))(handlerCopy, v10);
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

uint64_t __85__RTIntermittentGNSSManager_updateIntermittentGNSSRegistrationOverrideState_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platform];
  v3 = [v2 internalInstall];

  if (v3)
  {
    *(*(a1 + 32) + 256) = *(a1 + 48);
    [*(a1 + 32) _considerRegisteringForIntermittentGNSS];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __64__RTIntermittentGNSSManager__initializeWifiLocationStarvedTimer__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      [v2 timeIntervalSinceDate:*(a1 + 32)];
      v5 = v4;
      v6 = [*(a1 + 40) lastWifiLocationDate];
      [v2 timeIntervalSinceDate:v6];
      v9 = 136315906;
      v10 = "[RTIntermittentGNSSManager _initializeWifiLocationStarvedTimer]_block_invoke";
      v11 = 2112;
      v12 = @"RTIntermittentGNSSLocationStarvedTimer";
      v13 = 2048;
      v14 = v5;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, location starved timer fired, timerIdentifier, %@,  %.2f since created, %.2f since lastWifiLocationDate", &v9, 0x2Au);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _onLocationStarvedTimerExpiry];
}

- (BOOL)_dutyCyclingConditionMet
{
  v52 = *MEMORY[0x277D85DE8];
  platform = [(RTIntermittentGNSSManager *)self platform];
  internalInstall = [platform internalInstall];

  if (!internalInstall)
  {
    goto LABEL_36;
  }

  defaultsManager = [(RTIntermittentGNSSManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsIntermittentGNSSBypassAllSignals"];
  if (v6)
  {

    goto LABEL_5;
  }

  v7 = _os_feature_enabled_impl();

  if (v7)
  {
LABEL_5:
    v8 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v38 = 136315138;
        v39 = "[RTIntermittentGNSSManager _dutyCyclingConditionMet]";
        v10 = "%s, defaults override: bypassing all signals, should register for intermittent gnss";
LABEL_40:
        v27 = v9;
        v28 = 12;
LABEL_41:
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, v10, &v38, v28);
        goto LABEL_73;
      }

      goto LABEL_73;
    }

    return v8;
  }

  defaultsManager2 = [(RTIntermittentGNSSManager *)self defaultsManager];
  v12 = [defaultsManager2 objectForKey:@"RTDefaultsIntermittentGNSSBypassDominantMotionCheck"];
  if (v12)
  {
  }

  else
  {
    v13 = _os_feature_enabled_impl();

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  self->_motionActivityTypeSatisfied = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v38 = 136315138;
      v39 = "[RTIntermittentGNSSManager _dutyCyclingConditionMet]";
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, defaults override: bypassing dominant motion check", &v38, 0xCu);
    }
  }

LABEL_15:
  defaultsManager3 = [(RTIntermittentGNSSManager *)self defaultsManager];
  v16 = [defaultsManager3 objectForKey:@"RTDefaultsIntermittentGNSSBypassSettledStateCheck"];
  if (v16)
  {
  }

  else
  {
    v17 = _os_feature_enabled_impl();

    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  self->_unsettled = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v38 = 136315138;
      v39 = "[RTIntermittentGNSSManager _dutyCyclingConditionMet]";
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%s, defaults override: bypassing settled state check", &v38, 0xCu);
    }
  }

LABEL_22:
  defaultsManager4 = [(RTIntermittentGNSSManager *)self defaultsManager];
  v20 = [defaultsManager4 objectForKey:@"RTDefaultsIntermittentGNSSBypassFrequentLOICheck"];
  if (v20)
  {

    goto LABEL_25;
  }

  v21 = _os_feature_enabled_impl();

  if (v21)
  {
LABEL_25:
    self->_awayFromFrequentlyVisitedLOI = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v38 = 136315138;
        v39 = "[RTIntermittentGNSSManager _dutyCyclingConditionMet]";
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%s, defaults override: bypassing frequent LOI check", &v38, 0xCu);
      }
    }
  }

  defaultsManager5 = [(RTIntermittentGNSSManager *)self defaultsManager];
  v24 = [defaultsManager5 objectForKey:@"RTDefaultsIntermittentGNSSBypassWifiAvailabilityCheck"];
  if (v24)
  {
  }

  else
  {
    v25 = _os_feature_enabled_impl();

    if ((v25 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  self->_wifiLocationStarved = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v38 = 136315138;
      v39 = "[RTIntermittentGNSSManager _dutyCyclingConditionMet]";
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%s, defaults override: bypassing wifi availability check", &v38, 0xCu);
    }
  }

LABEL_36:
  if ([(RTIntermittentGNSSManager *)self intermittentGNSSOverrideState]== 1)
  {
    v8 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v38 = 136315138;
        v39 = "[RTIntermittentGNSSManager _dutyCyclingConditionMet]";
        v10 = "%s, ignoring conditions, user set intermittent gnss to ON until further user action";
        goto LABEL_40;
      }

LABEL_73:
    }
  }

  else
  {
    if ([(RTIntermittentGNSSManager *)self intermittentGNSSOverrideState]== 2)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v9 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v38 = 136315138;
        v39 = "[RTIntermittentGNSSManager _dutyCyclingConditionMet]";
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, ignoring conditions, user set intermittent gnss to OFF until further user action", &v38, 0xCu);
      }

      v8 = 0;
      goto LABEL_73;
    }

    v8 = self->_motionActivityTypeSatisfied && self->_unsettled && self->_signalEnvironmentAtRisk && self->_awayFromFrequentlyVisitedLOI && self->_wifiLocationStarved;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_73;
      }

      v29 = @"NO";
      if (v8)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      if (self->_motionActivityTypeSatisfied)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      awayFromFrequentlyVisitedLOI = self->_awayFromFrequentlyVisitedLOI;
      if (self->_unsettled)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      wifiLocationStarved = self->_wifiLocationStarved;
      if (self->_signalEnvironmentAtRisk)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      v38 = 136316675;
      v39 = "[RTIntermittentGNSSManager _dutyCyclingConditionMet]";
      if (awayFromFrequentlyVisitedLOI)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v40 = 2112;
      if (wifiLocationStarved)
      {
        v29 = @"YES";
      }

      v41 = v30;
      v42 = 2112;
      v43 = v31;
      v44 = 2112;
      v45 = v33;
      v46 = 2112;
      v47 = v35;
      v48 = 2117;
      v49 = v36;
      v50 = 2112;
      v51 = v29;
      v10 = "%s, conditions satisfied, %@, motionActivityTypeSatisfied, %@, unsettled, %@, signalEnvironmentAtRisk, %@, awayFromFrequentlyVisitedLOI, %{sensitive}@, locationStarved, %@";
      v27 = v9;
      v28 = 72;
      goto LABEL_41;
    }
  }

  return v8;
}

- (void)_considerRegisteringForIntermittentGNSS
{
  v33 = *MEMORY[0x277D85DE8];
  conditionCheckTimer = [(RTIntermittentGNSSManager *)self conditionCheckTimer];

  if (!conditionCheckTimer)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastRegisteredForIntermittentGNSSVariableFlipDate = [(RTIntermittentGNSSManager *)self lastRegisteredForIntermittentGNSSVariableFlipDate];
    [date timeIntervalSinceDate:lastRegisteredForIntermittentGNSSVariableFlipDate];
    v7 = v6;

    v8 = fmax(v7, 0.0);
    if (v8 >= 120.0)
    {
      _dutyCyclingConditionMet = [(RTIntermittentGNSSManager *)self _dutyCyclingConditionMet];

      [(RTIntermittentGNSSManager *)self setRegisteredForIntermittentGNSS:_dutyCyclingConditionMet];
    }

    else
    {
      v9 = fmax(120.0 - v8, 1.0);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          lastRegisteredForIntermittentGNSSVariableFlipDate2 = [(RTIntermittentGNSSManager *)self lastRegisteredForIntermittentGNSSVariableFlipDate];
          stringFromDate = [lastRegisteredForIntermittentGNSSVariableFlipDate2 stringFromDate];
          *buf = 136315906;
          v26 = "[RTIntermittentGNSSManager _considerRegisteringForIntermittentGNSS]";
          v27 = 2048;
          v28 = 0x405E000000000000;
          v29 = 2112;
          v30 = stringFromDate;
          v31 = 2048;
          v32 = v9;
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, minimum required time for gnss registration flip not met, RTIntermittentGNSSDutyCycleMinFlipTime, %.2f, lastDutyCyclingConditionCheckDate, %@, time until next allowed flip, %.2f", buf, 0x2Au);
        }
      }

      objc_initWeak(buf, self);
      timerManager = [(RTIntermittentGNSSManager *)self timerManager];
      queue = [(RTNotifier *)self queue];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __68__RTIntermittentGNSSManager__considerRegisteringForIntermittentGNSS__block_invoke;
      v22 = &unk_2788C57F8;
      objc_copyWeak(&v24, buf);
      selfCopy = self;
      v15 = [timerManager timerWithIdentifier:@"RTIntermittentGNSSConditionCheckTimer" queue:queue handler:&v19];
      [(RTIntermittentGNSSManager *)self setConditionCheckTimer:v15, v19, v20, v21, v22];

      conditionCheckTimer2 = [(RTIntermittentGNSSManager *)self conditionCheckTimer];
      [conditionCheckTimer2 fireAfterDelay:v9];

      conditionCheckTimer3 = [(RTIntermittentGNSSManager *)self conditionCheckTimer];
      [conditionCheckTimer3 resume];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

void __68__RTIntermittentGNSSManager__considerRegisteringForIntermittentGNSS__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained conditionCheckTimer];
  [v3 invalidate];

  [WeakRetained setConditionCheckTimer:0];
  [*(a1 + 32) setRegisteredForIntermittentGNSS:{objc_msgSend(WeakRetained, "_dutyCyclingConditionMet")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (*(*(a1 + 32) + 34))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = 136315394;
      v7 = "[RTIntermittentGNSSManager _considerRegisteringForIntermittentGNSS]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, condition check timer expired and conditions for intermittentGNSS registration checked, registeredForIntermittentGNSS, %@", &v6, 0x16u);
    }
  }
}

- (void)_registerForRhythmicNonWakingLocation
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(RTIntermittentGNSSManager *)self platformSupported])
  {
    locationManager = [(RTIntermittentGNSSManager *)self locationManager];
    v4 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
    [locationManager addObserver:self selector:sel_onNoOpLocationNotification_ name:v4];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    locationManager = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(locationManager, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[RTIntermittentGNSSManager _registerForRhythmicNonWakingLocation]";
      _os_log_impl(&dword_2304B3000, locationManager, OS_LOG_TYPE_INFO, "%s, platform not supported, skipping actual registration for rhythmic location", &v6, 0xCu);
    }
  }

LABEL_7:
  metrics = [(RTIntermittentGNSSManager *)self metrics];
  [metrics updateMetricsForKey:@"register"];
}

- (void)_unregisterForRhythmicNonWakingLocation
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(RTIntermittentGNSSManager *)self platformSupported])
  {
    locationManager = [(RTIntermittentGNSSManager *)self locationManager];
    v4 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
    [locationManager removeObserver:self fromNotification:v4];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    locationManager = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(locationManager, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[RTIntermittentGNSSManager _unregisterForRhythmicNonWakingLocation]";
      _os_log_impl(&dword_2304B3000, locationManager, OS_LOG_TYPE_INFO, "%s, platform not supported, skipping actual unregistration for rhythmic location since no registration occurred", &v6, 0xCu);
    }
  }

LABEL_7:
  metrics = [(RTIntermittentGNSSManager *)self metrics];
  [metrics updateMetricsForKey:@"unregister"];
}

- (void)fetchRemoteStatusWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__RTIntermittentGNSSManager_fetchRemoteStatusWithHandler___block_invoke;
    aBlock[3] = &unk_2788C4D38;
    aBlock[4] = self;
    v15 = handlerCopy;
    v7 = _Block_copy(aBlock);
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__RTIntermittentGNSSManager_fetchRemoteStatusWithHandler___block_invoke_2;
    block[3] = &unk_2788C6300;
    block[4] = self;
    v12 = v7;
    v13 = a2;
    v9 = v7;
    dispatch_async(queue, block);

    v10 = v15;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

uint64_t __58__RTIntermittentGNSSManager_fetchRemoteStatusWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _remoteStatusForCurrentState];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __58__RTIntermittentGNSSManager_fetchRemoteStatusWithHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) remoteStatusChecklist] == 15)
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) remoteStatusDispatcher];
    if (v3)
    {
      v4 = v3;
      v5 = @"NO";
    }

    else
    {
      v6 = [RTInvocationDispatcher alloc];
      v7 = [*(a1 + 32) queue];
      v4 = [(RTInvocationDispatcher *)v6 initWithQueue:v7];

      [*(a1 + 32) setRemoteStatusDispatcher:v4];
      if (([*(a1 + 32) completedInitialWifiScan] & 1) == 0)
      {
        v8 = [*(a1 + 32) wifiManager];
        [v8 scheduleScan];
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__RTIntermittentGNSSManager_fetchRemoteStatusWithHandler___block_invoke_3;
      aBlock[3] = &unk_2788C4EA0;
      aBlock[4] = *(a1 + 32);
      v9 = _Block_copy(aBlock);
      v10 = [*(a1 + 32) timerManager];
      v11 = [*(a1 + 32) queue];
      v12 = [v10 timerWithIdentifier:@"RTIntermittentGNSSFetchRemoteStatusTimeoutTimer" queue:v11 handler:v9];

      [v12 fireAfterDelay:660.0];
      [v12 resume];
      [*(a1 + 32) setRemoteStatusTimeoutTimer:v12];

      v5 = @"YES";
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "[RTIntermittentGNSSManager fetchRemoteStatusWithHandler:]_block_invoke";
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, enqueueing handler, created dispatcher? %@", buf, 0x16u);
      }
    }

    v14 = *(a1 + 40);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(*(a1 + 48));
    [(RTInvocationDispatcher *)v4 enqueueBlock:v14 description:@"%@-%@", v16, v17];
  }
}

void __58__RTIntermittentGNSSManager_fetchRemoteStatusWithHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remoteStatusDispatcher];

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v5 = 136315138;
        v6 = "[RTIntermittentGNSSManager fetchRemoteStatusWithHandler:]_block_invoke_3";
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, timing out enqueued handlers", &v5, 0xCu);
      }
    }

    v4 = [*(a1 + 32) remoteStatusDispatcher];
    [v4 dispatchPendingInvocations];

    [*(a1 + 32) setRemoteStatusDispatcher:0];
    [*(a1 + 32) setRemoteStatusTimeoutTimer:0];
  }
}

- (void)_completeRemoteStatusChecklistItem:(unint64_t)item
{
  v20 = *MEMORY[0x277D85DE8];
  remoteStatusChecklist = [(RTIntermittentGNSSManager *)self remoteStatusChecklist];
  [(RTIntermittentGNSSManager *)self setRemoteStatusChecklist:[(RTIntermittentGNSSManager *)self remoteStatusChecklist]| item];
  if ([(RTIntermittentGNSSManager *)self remoteStatusChecklist]== 15)
  {
    if (remoteStatusChecklist != 15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[RTIntermittentGNSSManager _completeRemoteStatusChecklistItem:]";
        v16 = 2048;
        itemCopy2 = item;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, completed %lu which completes the checklist", &v14, 0x16u);
      }
    }

    _remoteStatusForCurrentState = [(RTIntermittentGNSSManager *)self _remoteStatusForCurrentState];
    if (_remoteStatusForCurrentState != [(RTIntermittentGNSSManager *)self lastRemoteStatus])
    {
      v8 = [[RTIntermittentGNSSNotificationRemoteStatusUpdated alloc] initWithRemoteStatus:_remoteStatusForCurrentState];
      [(RTNotifier *)self postNotification:v8];
      [(RTIntermittentGNSSManager *)self setLastRemoteStatus:_remoteStatusForCurrentState];
    }

    remoteStatusDispatcher = [(RTIntermittentGNSSManager *)self remoteStatusDispatcher];

    if (remoteStatusDispatcher)
    {
      remoteStatusTimeoutTimer = [(RTIntermittentGNSSManager *)self remoteStatusTimeoutTimer];
      [remoteStatusTimeoutTimer invalidate];

      [(RTIntermittentGNSSManager *)self setRemoteStatusTimeoutTimer:0];
      remoteStatusDispatcher2 = [(RTIntermittentGNSSManager *)self remoteStatusDispatcher];
      [remoteStatusDispatcher2 dispatchPendingInvocations];

      [(RTIntermittentGNSSManager *)self setRemoteStatusDispatcher:0];
    }
  }

  else
  {
    remoteStatusChecklist2 = [(RTIntermittentGNSSManager *)self remoteStatusChecklist];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 136315650;
        v15 = "[RTIntermittentGNSSManager _completeRemoteStatusChecklistItem:]";
        v16 = 2048;
        itemCopy2 = item;
        v18 = 2048;
        v19 = ~remoteStatusChecklist2 & 0xF;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, completed %lu, still waiting on %lu", &v14, 0x20u);
      }
    }
  }
}

@end