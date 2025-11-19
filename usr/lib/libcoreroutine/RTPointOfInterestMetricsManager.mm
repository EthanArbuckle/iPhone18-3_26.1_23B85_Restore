@interface RTPointOfInterestMetricsManager
- (BOOL)_shouldCollectQueriesForMapItem:(id)a3;
- (BOOL)submitMetricsWithError:(id *)a3;
- (RTPointOfInterestMetricsManager)initWithBatteryManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 learnedLocationStore:(id)a6 locationManager:(id)a7 mapServiceManager:(id)a8 navigationManager:(id)a9 placeInferenceQueryStore:(id)a10 pointOfInterestSampler:(id)a11 scenarioTriggerManager:(id)a12 timerManager:(id)a13 visitManager:(id)a14;
- (id)collectMetricsWithError:(id *)a3;
- (id)processQueries:(id)a3 visitEntryDate:(id)a4 poiIdentifier:(unint64_t)a5;
- (unint64_t)getTruthPointOfInterestIdentifier;
- (void)_onLearnedLocationStoreNotification:(id)a3;
- (void)_onLeechedLocationNotification:(id)a3;
- (void)_onNavigationNotification:(id)a3;
- (void)_onVisitManagerVisitIncidentNotification:(id)a3;
- (void)_registerForNotifications;
- (void)_setup;
- (void)_shutdown;
- (void)_unRegisterForNotifications;
- (void)_updateLocationDenyList;
- (void)onLearnedLocationStoreNotification:(id)a3;
- (void)onLeechedLocationNotification:(id)a3;
- (void)onNavigationNotification:(id)a3;
- (void)onSettledNotification:(id)a3;
- (void)onUnsettledNotification:(id)a3;
- (void)onVisitManagerVisitIncidentNotification:(id)a3;
- (void)setSamplingPointOfInterest:(BOOL)a3;
- (void)setSettledState:(unint64_t)a3;
- (void)shutdownWithHandler:(id)a3;
@end

@implementation RTPointOfInterestMetricsManager

- (RTPointOfInterestMetricsManager)initWithBatteryManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 learnedLocationStore:(id)a6 locationManager:(id)a7 mapServiceManager:(id)a8 navigationManager:(id)a9 placeInferenceQueryStore:(id)a10 pointOfInterestSampler:(id)a11 scenarioTriggerManager:(id)a12 timerManager:(id)a13 visitManager:(id)a14
{
  v53 = a3;
  v42 = a4;
  v19 = a4;
  v43 = a5;
  v50 = a5;
  v44 = a6;
  v48 = a6;
  v45 = a7;
  v47 = a7;
  v46 = a8;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v52 = a13;
  v25 = a14;
  v49 = v25;
  if (v53)
  {
    v26 = v19;
    if (v19)
    {
      v27 = v50;
      v29 = v47;
      v28 = v48;
      if (v50)
      {
        if (v48)
        {
          if (v47)
          {
            if (v20)
            {
              if (v21)
              {
                if (v22)
                {
                  if (v23)
                  {
                    if (v24)
                    {
                      if (v52)
                      {
                        if (v25)
                        {
                          v54.receiver = self;
                          v54.super_class = RTPointOfInterestMetricsManager;
                          v30 = [(RTNotifier *)&v54 init];
                          v31 = v30;
                          if (v30)
                          {
                            objc_storeStrong(&v30->_batteryManager, a3);
                            objc_storeStrong(&v31->_defaultsManager, v42);
                            objc_storeStrong(&v31->_distanceCalculator, v43);
                            objc_storeStrong(&v31->_learnedLocationStore, v44);
                            objc_storeStrong(&v31->_locationManager, v45);
                            objc_storeStrong(&v31->_mapServiceManager, v46);
                            objc_storeStrong(&v31->_navigationManager, a9);
                            objc_storeStrong(&v31->_placeInferenceQueryStore, a10);
                            objc_storeStrong(&v31->_pointOfInterestSampler, a11);
                            objc_storeStrong(&v31->_scenarioTriggerManager, a12);
                            objc_storeStrong(&v31->_timerManager, a13);
                            objc_storeStrong(&v31->_visitManager, a14);
                            v32 = objc_opt_new();
                            locationDenyList = v31->_locationDenyList;
                            v31->_locationDenyList = v32;

                            v31->_samplingPointOfInterest = 0;
                            v31->_settledState = 0;
                            samplingTimer = v31->_samplingTimer;
                            v31->_samplingTimer = 0;

                            v31->_currentSignalEnvironmentType = 0;
                            navigationDestination = v31->_navigationDestination;
                            v31->_navigationDestination = 0;
                          }

                          [(RTService *)v31 setup];
                          v36 = v31;
                          self = v36;
                          goto LABEL_43;
                        }

                        v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          v39 = "Invalid parameter not satisfying: visitManager";
                          goto LABEL_41;
                        }

LABEL_42:

                        v36 = 0;
                        goto LABEL_43;
                      }

                      v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_42;
                      }

                      *buf = 0;
                      v39 = "Invalid parameter not satisfying: timerManger";
                    }

                    else
                    {
                      v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_42;
                      }

                      *buf = 0;
                      v39 = "Invalid parameter not satisfying: scenarioTriggerManager";
                    }
                  }

                  else
                  {
                    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_42;
                    }

                    *buf = 0;
                    v39 = "Invalid parameter not satisfying: pointOfInterestSampler";
                  }
                }

                else
                {
                  v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_42;
                  }

                  *buf = 0;
                  v39 = "Invalid parameter not satisfying: placeInferenceQueryStore";
                }
              }

              else
              {
                v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_42;
                }

                *buf = 0;
                v39 = "Invalid parameter not satisfying: navigationManager";
              }
            }

            else
            {
              v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_42;
              }

              *buf = 0;
              v39 = "Invalid parameter not satisfying: mapServiceManager";
            }
          }

          else
          {
            v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_42;
            }

            *buf = 0;
            v39 = "Invalid parameter not satisfying: locationManager";
          }
        }

        else
        {
          v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_42;
          }

          *buf = 0;
          v39 = "Invalid parameter not satisfying: learnedLocationStore";
        }
      }

      else
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 0;
        v39 = "Invalid parameter not satisfying: distanceCalculator";
      }
    }

    else
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v27 = v50;
      v29 = v47;
      v28 = v48;
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v39 = "Invalid parameter not satisfying: defaultsManager";
    }

LABEL_41:
    _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, v39, buf, 2u);
    goto LABEL_42;
  }

  v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: batteryManager", buf, 2u);
  }

  v36 = 0;
  v26 = v19;
  v27 = v50;
  v29 = v47;
  v28 = v48;
LABEL_43:

  return v36;
}

- (void)_setup
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D36B80] sharedInstance];
  v5 = [v4 optInApple];

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [v7 initWithCString:RTAnalyticsEventBluePoiMetrics encoding:1];
  v9 = [v6 stringWithFormat:@"com.apple.%@", v8];
  IsEventUsed = AnalyticsIsEventUsed();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      v13 = v12;
      v14 = @"NO";
      if (v5)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      *buf = 138412802;
      v17 = v12;
      v19 = v15;
      v18 = 2112;
      if (IsEventUsed)
      {
        v14 = @"YES";
      }

      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, optInApple, %@, sampled, %@", buf, 0x20u);
    }
  }

  if ((v5 & IsEventUsed) == 1)
  {
    [(RTPointOfInterestMetricsManager *)self _registerForNotifications];
  }
}

- (void)_registerForNotifications
{
  v3 = [(RTPointOfInterestMetricsManager *)self navigationManager];
  v4 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
  [v3 addObserver:self selector:sel_onNavigationNotification_ name:v4];

  v5 = [(RTPointOfInterestMetricsManager *)self navigationManager];
  v6 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  [v5 addObserver:self selector:sel_onNavigationNotification_ name:v6];

  v7 = [(RTPointOfInterestMetricsManager *)self learnedLocationStore];
  v8 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  [v7 addObserver:self selector:sel_onLearnedLocationStoreNotification_ name:v8];

  v10 = [(RTPointOfInterestMetricsManager *)self locationManager];
  v9 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [v10 addObserver:self selector:sel_onLeechedLocationNotification_ name:v9];
}

- (void)shutdownWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTPointOfInterestMetricsManager_shutdownWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __55__RTPointOfInterestMetricsManager_shutdownWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _shutdown];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_shutdown
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = self;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@ %@", &v7, 0x16u);
    }
  }

  [(RTTimer *)self->_samplingTimer invalidate];
  samplingTimer = self->_samplingTimer;
  self->_samplingTimer = 0;

  [(RTPointOfInterestMetricsManager *)self _unRegisterForNotifications];
}

- (void)_unRegisterForNotifications
{
  v3 = [(RTPointOfInterestMetricsManager *)self navigationManager];
  v4 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
  [v3 removeObserver:self fromNotification:v4];

  v5 = [(RTPointOfInterestMetricsManager *)self scenarioTriggerManager];
  v6 = +[(RTNotification *)RTScenarioTriggerManagerNotificationSettled];
  [v5 removeObserver:self fromNotification:v6];

  v7 = [(RTPointOfInterestMetricsManager *)self scenarioTriggerManager];
  v8 = +[(RTNotification *)RTScenarioTriggerManagerNotificationUnsettled];
  [v7 removeObserver:self fromNotification:v8];

  v9 = [(RTPointOfInterestMetricsManager *)self visitManager];
  v10 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  [v9 removeObserver:self fromNotification:v10];

  v12 = [(RTPointOfInterestMetricsManager *)self locationManager];
  v11 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [v12 removeObserver:self fromNotification:v11];
}

- (void)setSamplingPointOfInterest:(BOOL)a3
{
  v47 = *MEMORY[0x277D85DE8];
  if (self->_samplingPointOfInterest != a3)
  {
    v3 = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        v8 = v7;
        v9 = @"NO";
        if (self->_samplingPointOfInterest)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        *buf = 138412802;
        v42 = v7;
        v44 = v10;
        v43 = 2112;
        if (v3)
        {
          v9 = @"YES";
        }

        v45 = 2112;
        v46 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, samplingPointOfInterest transitioned from, %@, to, %@", buf, 0x20u);
      }
    }

    self->_samplingPointOfInterest = v3;
    if (v3)
    {
      [(RTPointOfInterestMetricsManager *)self setSettledState:0];
      v11 = [(RTPointOfInterestMetricsManager *)self pointOfInterestSampler];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [v11 startSamplingPointOfInterestFromRequester:v13 samplingInterval:30.0];

      v14 = [(RTPointOfInterestMetricsManager *)self scenarioTriggerManager];
      v15 = +[(RTNotification *)RTScenarioTriggerManagerNotificationSettled];
      [v14 addObserver:self selector:sel_onSettledNotification_ name:v15];

      v16 = [(RTPointOfInterestMetricsManager *)self scenarioTriggerManager];
      v17 = +[(RTNotification *)RTScenarioTriggerManagerNotificationUnsettled];
      [v16 addObserver:self selector:sel_onUnsettledNotification_ name:v17];

      v18 = [(RTPointOfInterestMetricsManager *)self visitManager];
      v19 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
      [v18 addObserver:self selector:sel_onVisitManagerVisitIncidentNotification_ name:v19];

      v20 = [(RTPointOfInterestMetricsManager *)self timerManager];
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v21 stringWithFormat:@"%@.samplingTimer", v23];
      v25 = [(RTNotifier *)self queue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __62__RTPointOfInterestMetricsManager_setSamplingPointOfInterest___block_invoke;
      v40[3] = &unk_2788C52E8;
      v40[4] = self;
      v40[5] = a2;
      v26 = [v20 timerWithIdentifier:v24 queue:v25 handler:v40];
      [(RTPointOfInterestMetricsManager *)self setSamplingTimer:v26];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = NSStringFromSelector(a2);
          *buf = 138412290;
          v42 = v28;
          _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, samplingTimer start", buf, 0xCu);
        }
      }

      v29 = [(RTPointOfInterestMetricsManager *)self samplingTimer];
      [v29 fireAfterDelay:7200.0 interval:INFINITY];

      v30 = [(RTPointOfInterestMetricsManager *)self samplingTimer];
      [v30 resume];
    }

    else
    {
      v31 = [(RTPointOfInterestMetricsManager *)self scenarioTriggerManager];
      v32 = +[(RTNotification *)RTScenarioTriggerManagerNotificationSettled];
      [v31 removeObserver:self fromNotification:v32];

      v33 = [(RTPointOfInterestMetricsManager *)self scenarioTriggerManager];
      v34 = +[(RTNotification *)RTScenarioTriggerManagerNotificationUnsettled];
      [v33 removeObserver:self fromNotification:v34];

      v35 = [(RTPointOfInterestMetricsManager *)self visitManager];
      v36 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
      [v35 removeObserver:self fromNotification:v36];

      v37 = [(RTPointOfInterestMetricsManager *)self pointOfInterestSampler];
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      [v37 stopSamplingPointOfInterestFromRequester:v39];
    }
  }
}

uint64_t __62__RTPointOfInterestMetricsManager_setSamplingPointOfInterest___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, samplingTimer expiry", &v6, 0xCu);
    }
  }

  v4 = [*(a1 + 32) samplingTimer];
  [v4 invalidate];

  [*(a1 + 32) setSamplingTimer:0];
  return [*(a1 + 32) setSamplingPointOfInterest:0];
}

- (BOOL)_shouldCollectQueriesForMapItem:(id)a3
{
  v78[1] = *MEMORY[0x277D85DE8];
  v57 = a3;
  if ([v57 validMUID])
  {
    log = [MEMORY[0x277CBEAA8] now];
    v51 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:log sinceDate:-2592000.0];
    v4 = [(RTPointOfInterestMetricsManager *)self defaultsManager];
    v54 = [v4 objectForKey:@"PointOfInterestMetricsManagerQueryCollectionDate"];

    v5 = v54;
    if (v54 && [v54 isAfterDate:v51])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = 0;
LABEL_54:

LABEL_55:
        goto LABEL_56;
      }

      oslog = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(a2);
        v7 = [v54 stringFromDate];
        v8 = [log stringFromDate];
        *buf = 138412802;
        *&buf[4] = v6;
        v71 = 2112;
        v72 = v7;
        v73 = 2112;
        v74 = v8;
        _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_INFO, "%@, skip collect queries, last query collection date, %@, current date, %@", buf, 0x20u);
      }

      v9 = 0;
LABEL_53:

      v5 = v54;
      goto LABEL_54;
    }

    v11 = dispatch_semaphore_create(0);
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v12 = [(RTPointOfInterestMetricsManager *)self batteryManager];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __67__RTPointOfInterestMetricsManager__shouldCollectQueriesForMapItem___block_invoke;
    v63[3] = &unk_2788C7318;
    v65 = &v66;
    v13 = v11;
    v64 = v13;
    [v12 fetchCurrentBatteryPercent:v63];

    dsema = v13;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_21];
      v21 = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [v21 filteredArrayUsingPredicate:v20];
      v23 = [v22 firstObject];

      [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v78[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v78 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v29 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 1;
LABEL_20:

    v30 = v27;
    v31 = v30;
    if (v29)
    {
      oslog = 0;
    }

    else
    {
      oslog = v30;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = NSStringFromSelector(a2);
        v34 = v67[6];
        *buf = 138412802;
        *&buf[4] = v33;
        v71 = 2048;
        v72 = v34;
        v73 = 2112;
        v74 = oslog;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, battery percent, %lu, error, %@", buf, 0x20u);
      }
    }

    if (oslog || v67[6] <= 19)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = 0;
LABEL_52:

        _Block_object_dispose(&v66, 8);
        goto LABEL_53;
      }

      v35 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = NSStringFromSelector(a2);
        *buf = 138412290;
        *&buf[4] = v36;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, skip collect queries due to low battery", buf, 0xCu);
      }

LABEL_50:
      v9 = 0;
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v35 = [(RTPointOfInterestMetricsManager *)self locationDenyList];
      v37 = [v35 countByEnumeratingWithState:&v59 objects:v77 count:16];
      if (v37)
      {
        v38 = *v60;
        while (2)
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v60 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v59 + 1) + 8 * i);
            v41 = [(RTPointOfInterestMetricsManager *)self distanceCalculator];
            v42 = [v57 location];
            v58 = 0;
            [v41 distanceFromLocation:v42 toLocation:v40 error:&v58];
            v44 = v43;
            v45 = v58;

            if (!v45 && v44 < 1000.0)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v47 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  v48 = NSStringFromSelector(a2);
                  v49 = [v57 location];
                  *buf = 138413059;
                  *&buf[4] = v48;
                  v71 = 2117;
                  v72 = v49;
                  v73 = 2117;
                  v74 = v40;
                  v75 = 2048;
                  v76 = v44;
                  _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "%@, skip collect queries, current location, %{sensitive}@, denied location, %{sensitive}@, distance, %.2f", buf, 0x2Au);
                }
              }

              goto LABEL_50;
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v59 objects:v77 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }
      }

      v9 = 1;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_52;
      }

      v35 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v46 = NSStringFromSelector(a2);
        *buf = 138412547;
        *&buf[4] = v46;
        v71 = 2117;
        v72 = v57;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, should collect queries, YES, mapItem, %{sensitive}@", buf, 0x16u);

        v9 = 1;
      }
    }

    goto LABEL_52;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    log = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_INFO, "%@, skip collect queries due to invalid MUID", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_55;
  }

  v9 = 0;
LABEL_56:

  return v9;
}

- (void)setSettledState:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_settledState != a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        v8 = [RTScenarioTriggerManager settledStateName:self->_settledState];
        v9 = [RTScenarioTriggerManager settledStateName:a3];
        v10 = [(RTPointOfInterestMetricsManager *)self samplingPointOfInterest];
        v11 = @"NO";
        *v17 = 138413059;
        *&v17[4] = v7;
        *&v17[12] = 2112;
        if (v10)
        {
          v11 = @"YES";
        }

        *&v17[14] = v8;
        v18 = 2112;
        v19 = v9;
        v20 = 2117;
        v21 = v11;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, settled state transitioned from, %@, to, %@, samplingPointOfInterest, %{sensitive}@", v17, 0x2Au);
      }
    }

    self->_settledState = a3;
    if ([(RTPointOfInterestMetricsManager *)self samplingPointOfInterest])
    {
      settledState = self->_settledState;
      v13 = [(RTPointOfInterestMetricsManager *)self pointOfInterestSampler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 300.0;
      if (settledState != 1)
      {
        v16 = 30.0;
      }

      [v13 startSamplingPointOfInterestFromRequester:v15 samplingInterval:v16];
    }
  }
}

- (void)_updateLocationDenyList
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = [(RTPointOfInterestMetricsManager *)self locationDenyList];
  [v4 removeAllObjects];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [(RTPointOfInterestMetricsManager *)self learnedLocationStore];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __58__RTPointOfInterestMetricsManager__updateLocationDenyList__block_invoke;
  v27[3] = &unk_2788C52C0;
  v30 = a2;
  v9 = v5;
  v28 = v9;
  v10 = v7;
  v29 = v10;
  [v8 fetchLocationsOfInterestWithPlaceType:1 handler:v27];

  dispatch_group_enter(v10);
  v11 = [(RTPointOfInterestMetricsManager *)self learnedLocationStore];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __58__RTPointOfInterestMetricsManager__updateLocationDenyList__block_invoke_357;
  v23 = &unk_2788C52C0;
  v26 = a2;
  v12 = v6;
  v24 = v12;
  v13 = v10;
  v25 = v13;
  [v11 fetchLocationsOfInterestWithPlaceType:2 handler:&v20];

  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = [(RTPointOfInterestMetricsManager *)self locationDenyList:v20];
  [v14 addObjectsFromArray:v9];

  v15 = [(RTPointOfInterestMetricsManager *)self locationDenyList];
  [v15 addObjectsFromArray:v12];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      v18 = [(RTPointOfInterestMetricsManager *)self locationDenyList];
      v19 = [v18 count];
      *buf = 138412546;
      v32 = v17;
      v33 = 2048;
      v34 = v19;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, locationDenyList size, %lu", buf, 0x16u);
    }
  }
}

void __58__RTPointOfInterestMetricsManager__updateLocationDenyList__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v38 = v8;
      v39 = 2048;
      v40 = [v5 count];
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetched home loi count, %lu, error, %@", buf, 0x20u);
    }
  }

  if (!v6 && [v5 count])
  {
    v29 = 0;
    v30 = v5;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      v13 = MEMORY[0x277D86220];
      do
      {
        v14 = 0;
        v31 = v11;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v32 + 1) + 8 * v14);
          v16 = [v15 location];
          v17 = [v16 location];

          if (v17)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v18 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = NSStringFromSelector(*(a1 + 48));
                v20 = [v15 location];
                [v20 location];
                v21 = v12;
                v22 = v9;
                v23 = a1;
                v25 = v24 = v13;
                *buf = 138412547;
                v38 = v19;
                v39 = 2117;
                v40 = v25;
                _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, add home loi location, %{sensitive}@", buf, 0x16u);

                v13 = v24;
                a1 = v23;
                v9 = v22;
                v12 = v21;
                v11 = v31;
              }
            }

            v26 = *(a1 + 32);
            v27 = [v15 location];
            v28 = [v27 location];
            [v26 addObject:v28];
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);
    }

    v6 = v29;
    v5 = v30;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __58__RTPointOfInterestMetricsManager__updateLocationDenyList__block_invoke_357(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v38 = v8;
      v39 = 2048;
      v40 = [v5 count];
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetched work loi count, %lu, error, %@", buf, 0x20u);
    }
  }

  if (!v6 && [v5 count])
  {
    v29 = 0;
    v30 = v5;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      v13 = MEMORY[0x277D86220];
      do
      {
        v14 = 0;
        v31 = v11;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v32 + 1) + 8 * v14);
          v16 = [v15 location];
          v17 = [v16 location];

          if (v17)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v18 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = NSStringFromSelector(*(a1 + 48));
                v20 = [v15 location];
                [v20 location];
                v21 = v12;
                v22 = v9;
                v23 = a1;
                v25 = v24 = v13;
                *buf = 138412547;
                v38 = v19;
                v39 = 2117;
                v40 = v25;
                _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, add work loi location, %{sensitive}@", buf, 0x16u);

                v13 = v24;
                a1 = v23;
                v9 = v22;
                v12 = v21;
                v11 = v31;
              }
            }

            v26 = *(a1 + 32);
            v27 = [v15 location];
            v28 = [v27 location];
            [v26 addObject:v28];
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);
    }

    v6 = v29;
    v5 = v30;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)onSettledNotification:(id)a3
{
  v4 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTPointOfInterestMetricsManager_onSettledNotification___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)onUnsettledNotification:(id)a3
{
  v4 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTPointOfInterestMetricsManager_onUnsettledNotification___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)onNavigationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTPointOfInterestMetricsManager_onNavigationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onNavigationNotification:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412802;
        v19 = v11;
        v20 = 2112;
        v21 = v9;
        v22 = 2048;
        v23 = [v9 state];
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, received navigation notification, %@, state, %lu", buf, 0x20u);
      }
    }

    if ([v9 state]== 6 && ![(RTPointOfInterestMetricsManager *)self samplingPointOfInterest])
    {
      v12 = [(RTPointOfInterestMetricsManager *)self navigationManager];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__RTPointOfInterestMetricsManager__onNavigationNotification___block_invoke;
      v17[3] = &unk_2788C4C98;
      v17[4] = self;
      v17[5] = a2;
      [v12 fetchNavigationRouteSummaryWithHandler:v17];
    }

LABEL_15:

    goto LABEL_16;
  }

  v13 = [v5 name];
  v14 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  v15 = [v13 isEqualToString:v14];

  if (!v15)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v5;
      v20 = 2080;
      v21 = "[RTPointOfInterestMetricsManager _onNavigationNotification:]";
      v22 = 1024;
      LODWORD(v23) = 553;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      v19 = v16;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, received route summary, no op", buf, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:
}

void __61__RTPointOfInterestMetricsManager__onNavigationNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTPointOfInterestMetricsManager__onNavigationNotification___block_invoke_2;
  block[3] = &unk_2788C5020;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void __61__RTPointOfInterestMetricsManager__onNavigationNotification___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) firstObject];
    v3 = [v2 destinationMapItem];

    [*(a1 + 40) setNavigationDestination:v3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(*(a1 + 48));
        v14 = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, navigation destination, %@", &v14, 0x16u);
      }
    }

    if ([*(a1 + 40) _shouldCollectQueriesForMapItem:v3])
    {
      v6 = [*(a1 + 40) defaultsManager];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "muid")}];
      [v6 setObject:v7 forKey:@"PointOfInterestMetricsManagerTruthLabelIdentifier"];

      v8 = [*(a1 + 40) defaultsManager];
      v9 = [MEMORY[0x277CBEAA8] now];
      [v8 setObject:v9 forKey:@"PointOfInterestMetricsManagerNavSessionEndDate"];

      v10 = [*(a1 + 40) defaultsManager];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "currentSignalEnvironmentType")}];
      [v10 setObject:v11 forKey:@"PointOfInterestMetricsManagerSignalEnvironment"];

      v12 = [*(a1 + 40) defaultsManager];
      v13 = [MEMORY[0x277CBEAA8] now];
      [v12 setObject:v13 forKey:@"PointOfInterestMetricsManagerQueryCollectionDate"];

      [*(a1 + 40) setSamplingPointOfInterest:1];
    }
  }
}

- (void)onLearnedLocationStoreNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__RTPointOfInterestMetricsManager_onLearnedLocationStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onLearnedLocationStoreNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        v12 = [v9 availability];
        v13 = @"YES";
        if (!v12)
        {
          v13 = @"NO";
        }

        v14 = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, learned store available, %@", &v14, 0x16u);
      }
    }

    if ([v9 availability]== 2)
    {
      [(RTPointOfInterestMetricsManager *)self _updateLocationDenyList];
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412802;
      v15 = v5;
      v16 = 2080;
      v17 = "[RTPointOfInterestMetricsManager _onLearnedLocationStoreNotification:]";
      v18 = 1024;
      v19 = 578;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v14, 0x1Cu);
    }
  }
}

- (void)_onVisitManagerVisitIncidentNotification:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = v5;
    v10 = [v9 visitIncident];
    if ([v10 type] == 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = NSStringFromSelector(a2);
          *buf = 138412546;
          v22 = v12;
          v23 = 2112;
          v24 = v10;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, received visit exit, %@", buf, 0x16u);
        }
      }

      v13 = [(RTPointOfInterestMetricsManager *)self distanceCalculator];
      v14 = [(RTPointOfInterestMetricsManager *)self navigationDestination];
      v15 = [v14 location];
      v16 = [v10 location];
      v20 = 0;
      [v13 distanceFromLocation:v15 toLocation:v16 error:&v20];
      v18 = v17;
      v19 = v20;

      if (!v19 && v18 < 1000.0)
      {
        [(RTPointOfInterestMetricsManager *)self setSamplingPointOfInterest:0];
        [(RTPointOfInterestMetricsManager *)self setNavigationDestination:0];
      }
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v22 = v5;
      v23 = 2080;
      v24 = "[RTPointOfInterestMetricsManager _onVisitManagerVisitIncidentNotification:]";
      v25 = 1024;
      v26 = 604;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)onLeechedLocationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__RTPointOfInterestMetricsManager_onLeechedLocationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onLeechedLocationNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v5 leechedLocations];
    if ([v9 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = NSStringFromSelector(a2);
          v12 = [v9 lastObject];
          v14 = 138412546;
          v15 = v11;
          v16 = 2048;
          v17 = [v12 signalEnvironmentType];
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, update current signal environment type, %lu", &v14, 0x16u);
        }
      }

      v13 = [v9 lastObject];
      -[RTPointOfInterestMetricsManager setCurrentSignalEnvironmentType:](self, "setCurrentSignalEnvironmentType:", [v13 signalEnvironmentType]);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412802;
      v15 = v5;
      v16 = 2080;
      v17 = "[RTPointOfInterestMetricsManager _onLeechedLocationNotification:]";
      v18 = 1024;
      v19 = 629;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v14, 0x1Cu);
    }
  }
}

- (void)onVisitManagerVisitIncidentNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__RTPointOfInterestMetricsManager_onVisitManagerVisitIncidentNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)collectMetricsWithError:(id *)a3
{
  v280[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, collecting point of interest metrics", buf, 0xCu);
    }
  }

  v6 = [(RTPointOfInterestMetricsManager *)self getTruthPointOfInterestIdentifier];
  if (v6)
  {
    oslog = objc_opt_new();
    v243 = 0;
    v244 = &v243;
    v245 = 0x3032000000;
    v246 = __Block_byref_object_copy__26;
    v247 = __Block_byref_object_dispose__26;
    v248 = 0;
    v7 = dispatch_semaphore_create(0);
    v237 = 0;
    v238 = &v237;
    v239 = 0x3032000000;
    v240 = __Block_byref_object_copy__26;
    v241 = __Block_byref_object_dispose__26;
    v242 = 0;
    v8 = objc_alloc(MEMORY[0x277D011B0]);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v209 = [v8 initWithUseBackgroundTraits:1 analyticsIdentifier:v10 clientIdentifier:@"com.apple.CoreRoutine.PoiMetrics"];

    v11 = [(RTPointOfInterestMetricsManager *)self mapServiceManager];
    v233[0] = MEMORY[0x277D85DD0];
    v233[1] = 3221225472;
    v233[2] = __59__RTPointOfInterestMetricsManager_collectMetricsWithError___block_invoke;
    v233[3] = &unk_2788C7340;
    v235 = &v237;
    v236 = &v243;
    v12 = v7;
    v234 = v12;
    [v11 fetchPointOfInterestAttributesWithIdentifier:v6 options:v209 handler:v233];

    dsema = v12;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_21];
      v20 = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [v20 filteredArrayUsingPredicate:v19];
      v22 = [v21 firstObject];

      [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v269 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v269 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        v28 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 1;
LABEL_17:

    v206 = v26;
    if ((v28 & 1) == 0)
    {
      objc_storeStrong(v244 + 5, v26);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = NSStringFromSelector(a2);
        v33 = v238[5];
        v34 = v244[5];
        *buf = 138412802;
        *&buf[4] = v32;
        *&buf[12] = 2112;
        *&buf[14] = v33;
        *&buf[22] = 2112;
        v276 = v34;
        _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, fetched POI attributes, %@, error, %@", buf, 0x20u);
      }
    }

    v35 = v244[5];
    if (v35)
    {
      if (a3)
      {
        *a3 = v35;
      }

      v30 = MEMORY[0x277CBEC10];
      goto LABEL_122;
    }

    [oslog setObject:&unk_28459CDB0 forKeyedSubscript:@"poiCategory"];
    v36 = [v238[5] category];
    v37 = [&unk_2845A23D8 objectForKey:v36];

    if (v37)
    {
      v38 = [v238[5] category];
      v39 = [&unk_2845A2400 objectForKey:v38];
      [oslog setObject:v39 forKeyedSubscript:@"poiCategory"];
    }

    v40 = MEMORY[0x277CCABB0];
    if ([v238[5] applePaySupport])
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    v42 = [v40 numberWithInt:v41];
    [oslog setObject:v42 forKeyedSubscript:@"applePaySupport"];

    v43 = [MEMORY[0x277CCABB0] numberWithDouble:{ceil(objc_msgSend(v238[5], "nearbyPoiCount") / 10.0)}];
    [oslog setObject:v43 forKeyedSubscript:@"nearbyPoiCountBucketed"];

    v44 = [(RTPointOfInterestMetricsManager *)self defaultsManager];
    v45 = [v44 objectForKey:@"PointOfInterestMetricsManagerSignalEnvironment"];
    v46 = v45;
    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = &unk_28459CDC8;
    }

    [oslog setObject:v47 forKeyedSubscript:@"signalEnvironment"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v48 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v129 = NSStringFromSelector(a2);
        v130 = [oslog objectForKeyedSubscript:@"poiCategory"];
        v131 = [oslog objectForKeyedSubscript:@"applePaySupport"];
        v132 = [oslog objectForKeyedSubscript:@"nearbyPoiCountBucketed"];
        v133 = [oslog objectForKeyedSubscript:@"signalEnvironment"];
        *buf = 138413570;
        *&buf[4] = v129;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v276 = v130;
        *v277 = 2112;
        *&v277[2] = v131;
        *&v277[10] = 2112;
        *&v277[12] = v132;
        v278 = 2112;
        v279 = v133;
        _os_log_debug_impl(&dword_2304B3000, v48, OS_LOG_TYPE_DEBUG, "%@, muid, %lu, poi category, %@, applePay support, %@, bucketed nearby point count, %@, signal enviroment, %@", buf, 0x3Eu);
      }
    }

    v49 = [(RTPointOfInterestMetricsManager *)self defaultsManager];
    v205 = [v49 objectForKey:@"PointOfInterestMetricsManagerNavSessionEndDate"];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v276 = __Block_byref_object_copy__26;
    *v277 = __Block_byref_object_dispose__26;
    *&v277[8] = 0;
    v269 = 0;
    v270 = &v269;
    v271 = 0x3032000000;
    v272 = __Block_byref_object_copy__26;
    v273 = __Block_byref_object_dispose__26;
    v274 = 0;
    v50 = dispatch_semaphore_create(0);
    v51 = [(RTPointOfInterestMetricsManager *)self learnedLocationStore];
    v202 = [v51 predicateForObjectsFromCurrentDevice];

    v204 = [v205 dateByAddingTimeInterval:-300.0];
    v203 = [MEMORY[0x277CBEAA8] date];
    v201 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v204 endDate:v203];
    v52 = [(RTPointOfInterestMetricsManager *)self learnedLocationStore];
    v229[0] = MEMORY[0x277D85DD0];
    v229[1] = 3221225472;
    v229[2] = __59__RTPointOfInterestMetricsManager_collectMetricsWithError___block_invoke_387;
    v229[3] = &unk_2788C4490;
    v231 = buf;
    v232 = &v269;
    v53 = v50;
    v230 = v53;
    [v52 fetchVisitsWithPredicate:v202 ascending:1 dateInterval:v201 limit:&unk_28459CDE0 handler:v229];

    v208 = v53;
    v54 = [MEMORY[0x277CBEAA8] now];
    v55 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v208, v55))
    {
      v56 = [MEMORY[0x277CBEAA8] now];
      [v56 timeIntervalSinceDate:v54];
      v58 = v57;
      v59 = objc_opt_new();
      v60 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_21];
      v61 = [MEMORY[0x277CCACC8] callStackSymbols];
      v62 = [v61 filteredArrayUsingPredicate:v60];
      v63 = [v62 firstObject];

      [v59 submitToCoreAnalytics:v63 type:1 duration:v58];
      v64 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        *v266 = 0;
        _os_log_fault_impl(&dword_2304B3000, v64, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v266, 2u);
      }

      v65 = MEMORY[0x277CCA9B8];
      *v263 = *MEMORY[0x277CCA450];
      *v266 = @"semaphore wait timeout";
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v266 forKeys:v263 count:1];
      v67 = [v65 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v66];

      if (v67)
      {
        v68 = v67;

        v69 = 0;
        goto LABEL_47;
      }
    }

    else
    {
      v67 = 0;
    }

    v69 = 1;
LABEL_47:

    v200 = v67;
    if ((v69 & 1) == 0)
    {
      objc_storeStrong(v270 + 5, v67);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v70 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v71 = NSStringFromSelector(a2);
        v72 = *(*&buf[8] + 40);
        v73 = v270[5];
        *v266 = 138413059;
        *&v266[4] = v71;
        *&v266[12] = 2117;
        *&v266[14] = v72;
        *&v266[22] = 2112;
        v267 = v205;
        LOWORD(v268) = 2112;
        *(&v268 + 2) = v73;
        _os_log_impl(&dword_2304B3000, v70, OS_LOG_TYPE_INFO, "%@, fetched learned visit, %{sensitive}@, nav session end date, %@, error, %@", v266, 0x2Au);
      }
    }

    v74 = v270[5];
    if (v74 || !*(*&buf[8] + 40))
    {
      if (a3)
      {
        *a3 = v74;
      }

      v30 = MEMORY[0x277CBEC10];
      goto LABEL_121;
    }

    v75 = MEMORY[0x277CCABB0];
    [*(*&buf[8] + 40) duration];
    v77 = [v75 numberWithDouble:round(v76)];
    [oslog setObject:v77 forKeyedSubscript:@"visitDuration"];

    v78 = MEMORY[0x277CCABB0];
    v79 = [*(*&buf[8] + 40) entryDate];
    [v205 timeIntervalSinceDate:v79];
    v81 = [v78 numberWithDouble:round(v80)];
    [oslog setObject:v81 forKeyedSubscript:@"navigationTimeOffset"];

    v82 = [MEMORY[0x277CBEAA8] now];
    if ([v205 isBeforeDate:v82])
    {
      v83 = [v205 dateByAddingTimeInterval:-300.0];
    }

    else
    {
      v83 = v82;
    }

    v84 = v83;
    v85 = v82;
    v199 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v84 endDate:v85];
    v86 = objc_alloc(MEMORY[0x277D01340]);
    v87 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
    v88 = [MEMORY[0x277CBEB98] setWithObject:&unk_28459CDF8];
    v198 = [v86 initWithAscending:1 confidence:v87 dateInterval:v199 labelVisit:0 limit:0 sources:v88];

    *v266 = 0;
    *&v266[8] = v266;
    *&v266[16] = 0x3032000000;
    v267 = __Block_byref_object_copy__26;
    *&v268 = __Block_byref_object_dispose__26;
    *(&v268 + 1) = 0;
    v89 = v270[5];
    v270[5] = 0;

    v90 = dispatch_semaphore_create(0);
    v91 = [(RTPointOfInterestMetricsManager *)self visitManager];
    v223[0] = MEMORY[0x277D85DD0];
    v223[1] = 3221225472;
    v223[2] = __59__RTPointOfInterestMetricsManager_collectMetricsWithError___block_invoke_393;
    v223[3] = &unk_2788C7368;
    v227 = &v269;
    v196 = v84;
    v224 = v196;
    v197 = v85;
    v225 = v197;
    v228 = v266;
    v92 = v90;
    v226 = v92;
    [v91 fetchStoredVisitsWithOptions:v198 handler:v223];

    v208 = v92;
    v93 = [MEMORY[0x277CBEAA8] now];
    v94 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v208, v94))
    {
      v95 = [MEMORY[0x277CBEAA8] now];
      [v95 timeIntervalSinceDate:v93];
      v97 = v96;
      v98 = objc_opt_new();
      v99 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_21];
      v100 = [MEMORY[0x277CCACC8] callStackSymbols];
      v101 = [v100 filteredArrayUsingPredicate:v99];
      v102 = [v101 firstObject];

      [v98 submitToCoreAnalytics:v102 type:1 duration:v97];
      v103 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        *v263 = 0;
        _os_log_fault_impl(&dword_2304B3000, v103, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v263, 2u);
      }

      v104 = MEMORY[0x277CCA9B8];
      v257 = *MEMORY[0x277CCA450];
      *v263 = @"semaphore wait timeout";
      v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v263 forKeys:&v257 count:1];
      v106 = [v104 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v105];

      if (v106)
      {
        v107 = v106;

        v108 = 0;
        goto LABEL_68;
      }
    }

    else
    {
      v106 = 0;
    }

    v108 = 1;
LABEL_68:

    v200 = v106;
    if ((v108 & 1) == 0)
    {
      objc_storeStrong(v270 + 5, v106);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v109 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
      {
        v110 = NSStringFromSelector(a2);
        v111 = *(*&v266[8] + 40);
        v112 = v270[5];
        *v263 = 138413059;
        *&v263[4] = v110;
        *&v263[12] = 2117;
        *&v263[14] = v111;
        *&v263[22] = 2112;
        v264 = v205;
        LOWORD(v265) = 2112;
        *(&v265 + 2) = v112;
        _os_log_impl(&dword_2304B3000, v109, OS_LOG_TYPE_INFO, "%@, fetched realtime visit, %{sensitive}@, nav session end date, %@, error, %@", v263, 0x2Au);
      }
    }

    v113 = v270[5];
    if (v113 || !*(*&v266[8] + 40))
    {
      if (a3)
      {
        *a3 = v113;
      }

      v30 = MEMORY[0x277CBEC10];
      goto LABEL_120;
    }

    v114 = MEMORY[0x277CCABB0];
    v115 = [*(*&v266[8] + 40) entry];
    v116 = [*(*&buf[8] + 40) entryDate];
    [v115 timeIntervalSinceDate:v116];
    v118 = [v114 numberWithDouble:round(v117)];
    [oslog setObject:v118 forKeyedSubscript:@"realtimeVisitEntryTimeOffset"];

    v119 = MEMORY[0x277CCABB0];
    v120 = [*(*&v266[8] + 40) exit];
    v121 = [*(*&buf[8] + 40) entryDate];
    [v120 timeIntervalSinceDate:v121];
    v123 = [v119 numberWithDouble:round(v122)];
    [oslog setObject:v123 forKeyedSubscript:@"realtimeVisitExitTimeOffset"];

    *v263 = 0;
    *&v263[8] = v263;
    *&v263[16] = 0x3032000000;
    v264 = __Block_byref_object_copy__26;
    *&v265 = __Block_byref_object_dispose__26;
    *(&v265 + 1) = 0;
    v257 = 0;
    v258 = &v257;
    v259 = 0x3032000000;
    v260 = __Block_byref_object_copy__26;
    v261 = __Block_byref_object_dispose__26;
    v262 = 0;
    v191 = dispatch_semaphore_create(0);
    v194 = v205;
    v124 = [*(*&buf[8] + 40) exitDate];
    v195 = [v124 dateByAddingTimeInterval:300.0];

    if ([v194 isAfterDate:v195])
    {
      v125 = objc_alloc(MEMORY[0x277CCA9B8]);
      v255 = *MEMORY[0x277CCA450];
      v126 = [MEMORY[0x277CCACA8] stringWithFormat:@"placeInferenceQueryStartDate cannot be after placeInferenceQueryEndDate"];
      v256 = v126;
      v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v256 forKeys:&v255 count:1];
      v192 = [v125 initWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v127];

      if (a3)
      {
        v128 = v192;
        *a3 = v192;
      }

      v30 = MEMORY[0x277CBEC10];
LABEL_119:

      _Block_object_dispose(&v257, 8);
      _Block_object_dispose(v263, 8);

LABEL_120:
      _Block_object_dispose(v266, 8);

LABEL_121:
      _Block_object_dispose(&v269, 8);

      _Block_object_dispose(buf, 8);
LABEL_122:

      _Block_object_dispose(&v237, 8);
      _Block_object_dispose(&v243, 8);

      goto LABEL_123;
    }

    v190 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v194 endDate:v195];
    v134 = [(RTPointOfInterestMetricsManager *)self placeInferenceQueryStore];
    v219[0] = MEMORY[0x277D85DD0];
    v219[1] = 3221225472;
    v219[2] = __59__RTPointOfInterestMetricsManager_collectMetricsWithError___block_invoke_399;
    v219[3] = &unk_2788C4490;
    v221 = v263;
    v222 = &v257;
    v135 = v191;
    v220 = v135;
    [v134 fetchPlaceInferenceQueriesWithDateInterval:v190 ascending:1 handler:v219];

    v193 = v135;
    v136 = [MEMORY[0x277CBEAA8] now];
    v137 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v193, v137))
    {
      v138 = [MEMORY[0x277CBEAA8] now];
      [v138 timeIntervalSinceDate:v136];
      v140 = v139;
      v141 = objc_opt_new();
      v142 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_21];
      v143 = [MEMORY[0x277CCACC8] callStackSymbols];
      v144 = [v143 filteredArrayUsingPredicate:v142];
      v145 = [v144 firstObject];

      [v141 submitToCoreAnalytics:v145 type:1 duration:v140];
      v146 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_FAULT))
      {
        *v250 = 0;
        _os_log_fault_impl(&dword_2304B3000, v146, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v250, 2u);
      }

      v147 = MEMORY[0x277CCA9B8];
      v280[0] = *MEMORY[0x277CCA450];
      *v250 = @"semaphore wait timeout";
      v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v250 forKeys:v280 count:1];
      v149 = [v147 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v148];

      if (v149)
      {
        v150 = v149;

        v151 = 0;
LABEL_90:

        v192 = v149;
        if ((v151 & 1) == 0)
        {
          objc_storeStrong(v258 + 5, v149);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v152 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
          {
            v153 = NSStringFromSelector(a2);
            v154 = [*(*&v263[8] + 40) count];
            v155 = v258[5];
            *v250 = 138412802;
            *&v250[4] = v153;
            v251 = 2048;
            v252 = v154;
            v253 = 2112;
            v254 = v155;
            _os_log_impl(&dword_2304B3000, v152, OS_LOG_TYPE_INFO, "%@, fetched place inference queries, %lu, error, %@", v250, 0x20u);
          }
        }

        v156 = v258[5];
        if (v156)
        {
          if (a3)
          {
            *a3 = v156;
          }

          v30 = MEMORY[0x277CBEC10];
        }

        else
        {
          v157 = [MEMORY[0x277CCABB0] numberWithDouble:-1.0];
          [oslog setObject:v157 forKeyedSubscript:@"distanceBetweenQueryAndRealtimeVisit"];

          v158 = [MEMORY[0x277CCABB0] numberWithDouble:-1.0];
          [oslog setObject:v158 forKeyedSubscript:@"distanceBetweenQueryAndLearnedVisit"];

          if ([*(*&v263[8] + 40) count])
          {
            v159 = [*(*&v263[8] + 40) firstObject];
            v160 = [(RTPointOfInterestMetricsManager *)self distanceCalculator];
            v161 = [v159 placeInference];
            v162 = [v161 referenceLocation];
            v163 = [*(*&v266[8] + 40) location];
            v218 = 0;
            [v160 distanceFromLocation:v162 toLocation:v163 error:&v218];
            v165 = v164;
            v166 = v218;

            if (!v166)
            {
              v167 = [MEMORY[0x277CCABB0] numberWithDouble:round(v165)];
              [oslog setObject:v167 forKeyedSubscript:@"distanceBetweenQueryAndRealtimeVisit"];
            }

            v168 = [(RTPointOfInterestMetricsManager *)self distanceCalculator];
            v169 = [v159 placeInference];
            v170 = [v169 referenceLocation];
            v171 = [*(*&buf[8] + 40) location];
            v172 = [v171 location];
            v217 = 0;
            [v168 distanceFromLocation:v170 toLocation:v172 error:&v217];
            v174 = v173;
            v175 = v217;

            if (!v175)
            {
              v176 = [MEMORY[0x277CCABB0] numberWithDouble:round(v174)];
              [oslog setObject:v176 forKeyedSubscript:@"distanceBetweenQueryAndLearnedVisit"];
            }
          }

          v177 = *(*&v263[8] + 40);
          v178 = [*(*&buf[8] + 40) entryDate];
          v179 = [(RTPointOfInterestMetricsManager *)self processQueries:v177 visitEntryDate:v178 poiIdentifier:v6];

          v215 = 0u;
          v216 = 0u;
          v213 = 0u;
          v214 = 0u;
          v180 = v179;
          v181 = [v180 countByEnumeratingWithState:&v213 objects:v249 count:16];
          if (v181)
          {
            v182 = *v214;
            v183 = MEMORY[0x277D86220];
            do
            {
              for (i = 0; i != v181; ++i)
              {
                if (*v214 != v182)
                {
                  objc_enumerationMutation(v180);
                }

                v185 = *(*(&v213 + 1) + 8 * i);
                v186 = [v180 objectForKeyedSubscript:v185];
                if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
                {
                  v187 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
                  if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
                  {
                    v188 = NSStringFromSelector(a2);
                    *v250 = 138412802;
                    *&v250[4] = v188;
                    v251 = 2112;
                    v252 = v185;
                    v253 = 2112;
                    v254 = v186;
                    _os_log_debug_impl(&dword_2304B3000, v187, OS_LOG_TYPE_DEBUG, "%@, Key: %@, Value: %@", v250, 0x20u);
                  }
                }
              }

              v181 = [v180 countByEnumeratingWithState:&v213 objects:v249 count:16];
            }

            while (v181);
          }

          [oslog addEntriesFromDictionary:v180];
          v30 = oslog;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v149 = 0;
    }

    v151 = 1;
    goto LABEL_90;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = MEMORY[0x277CBEC10];
    goto LABEL_124;
  }

  oslog = _rt_log_facility_get_os_log(RTLogFacilityMetric);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v29 = NSStringFromSelector(a2);
    *buf = 138412290;
    *&buf[4] = v29;
    _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_INFO, "%@, invalid truth POI identifier, skip metrics collection", buf, 0xCu);
  }

  v30 = MEMORY[0x277CBEC10];
LABEL_123:

LABEL_124:

  return v30;
}

void __59__RTPointOfInterestMetricsManager_collectMetricsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __59__RTPointOfInterestMetricsManager_collectMetricsWithError___block_invoke_387(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __59__RTPointOfInterestMetricsManager_collectMetricsWithError___block_invoke_393(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 exit];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 exit];
          if ([v14 isAfterDate:*(a1 + 32)])
          {
            v15 = [v11 exit];
            v16 = [v15 isBeforeDate:*(a1 + 40)];

            if (v16)
            {
              objc_storeStrong((*(*(a1 + 64) + 8) + 40), v11);
              goto LABEL_13;
            }
          }

          else
          {
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

LABEL_13:

  dispatch_semaphore_signal(*(a1 + 48));
}

void __59__RTPointOfInterestMetricsManager_collectMetricsWithError___block_invoke_399(uint64_t a1, void *a2, void *a3)
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

- (BOOL)submitMetricsWithError:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = [(RTPointOfInterestMetricsManager *)self collectMetricsWithError:?];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v9 = [v6 count];
      v10 = *a3;
      *buf = 138412802;
      v20 = v8;
      v21 = 2048;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, metric count, %lu, error, %@", buf, 0x20u);
    }
  }

  if (*a3 || ![v6 count])
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = 1;
    v13 = [v12 initWithCString:RTAnalyticsEventBluePoiMetrics encoding:1];
    log_analytics_submission(v13, v6);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v13];
    AnalyticsSendEvent();

    v15 = [(RTPointOfInterestMetricsManager *)self defaultsManager];
    [v15 setObject:&unk_28459CDB0 forKey:@"PointOfInterestMetricsManagerTruthLabelIdentifier"];

    v16 = [(RTPointOfInterestMetricsManager *)self defaultsManager];
    [v16 setObject:0 forKey:@"PointOfInterestMetricsManagerNavSessionEndDate"];

    v17 = [(RTPointOfInterestMetricsManager *)self defaultsManager];
    [v17 setObject:0 forKey:@"PointOfInterestMetricsManagerSignalEnvironment"];
  }

  return v11;
}

- (id)processQueries:(id)a3 visitEntryDate:(id)a4 poiIdentifier:(unint64_t)a5
{
  v319 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v261 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138413058;
      v312 = v8;
      v313 = 2048;
      v314 = [v6 count];
      v315 = 2112;
      v316 = v261;
      v317 = 2048;
      v318 = a5;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, query count, %lu, visit entry date, %@, poi muid, %lu", buf, 0x2Au);
    }
  }

  v9 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v11 = objc_opt_new();
  v260 = v6;
  if ([v6 count])
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      if ((v12 & 1) == 0)
      {
        v14 = [v6 objectAtIndexedSubscript:v13];
        v15 = [v14 placeInference];
        v16 = [v15 mapItem];

        if (!v16)
        {
          break;
        }
      }

      v17 = [v6 objectAtIndexedSubscript:v13];
      [v10 addObject:v17];

      if (v13 == [v6 count] - 1 || (objc_msgSend(v6, "objectAtIndexedSubscript:", v13 + 1), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "date"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectAtIndexedSubscript:", v13), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "date"), v21 = v10, v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "timeIntervalSinceDate:", v22), v24 = v23, v22, v10 = v21, v20, v6 = v260, v19, v18, v24 > 1.0))
      {
        [v9 addObject:v10];
        v25 = v10;
        v12 = 1;
        v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
LABEL_14:

        ++v13;
        goto LABEL_15;
      }

      v12 = 1;
      ++v13;
LABEL_15:
      if (v13 >= [v6 count])
      {
        goto LABEL_16;
      }
    }

    v25 = [v6 objectAtIndexedSubscript:v13];
    [v11 addObject:v25];
    v12 = 0;
    goto LABEL_14;
  }

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = NSStringFromSelector(a2);
      v28 = [v9 count];
      *buf = 138412546;
      v312 = v27;
      v313 = 2048;
      v314 = v28;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, query group count, %lu", buf, 0x16u);
    }
  }

  v255 = v10;
  v306[0] = MEMORY[0x277D85DD0];
  v306[1] = 3221225472;
  v306[2] = __79__RTPointOfInterestMetricsManager_processQueries_visitEntryDate_poiIdentifier___block_invoke;
  v306[3] = &__block_descriptor_40_e24_v32__0__NSArray_8Q16_B24l;
  v306[4] = a2;
  [v9 enumerateObjectsUsingBlock:v306];
  v29 = objc_opt_new();
  v30 = 0x277CCA000uLL;
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  [v29 setObject:v31 forKeyedSubscript:@"queryCount"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count") + objc_msgSend(v9, "count")}];
  [v29 setObject:v32 forKeyedSubscript:@"queryTotalCount"];

  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a5];
  v276 = v29;
  [v29 setObject:v33 forKeyedSubscript:@"muid"];

  v304 = 0u;
  v305 = 0u;
  v302 = 0u;
  v303 = 0u;
  obj = v11;
  v34 = [obj countByEnumeratingWithState:&v302 objects:v310 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v37 = 0;
    v38 = *v303;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v303 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v302 + 1) + 8 * i);
        if ([v40 errorCode] != -1)
        {
          if ([v40 errorCode] == 7)
          {
            ++v36;
          }

          ++v37;
        }
      }

      v35 = [obj countByEnumeratingWithState:&v302 objects:v310 count:16];
    }

    while (v35);
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v300 = 0u;
  v301 = 0u;
  v298 = 0u;
  v299 = 0u;
  v41 = v9;
  v42 = [v41 countByEnumeratingWithState:&v298 objects:v309 count:16];
  v287 = v41;
  if (v42)
  {
    v43 = v42;
    v44 = *v299;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v299 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v298 + 1) + 8 * j);
        if ([v46 count])
        {
          v47 = [v46 firstObject];
          v48 = [v47 errorCode];

          if (v48 != -1)
          {
            v49 = [v46 firstObject];
            v50 = [v49 errorCode];

            if (v50 == 7)
            {
              ++v36;
            }

            ++v37;
          }

          v41 = v287;
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v298 objects:v309 count:16];
    }

    while (v43);
  }

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
  v52 = v276;
  [v276 setObject:v51 forKeyedSubscript:@"queryErrorCount"];

  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36];
  [v276 setObject:v53 forKeyedSubscript:@"emptyWiFiScanCount"];

  if (![v41 count])
  {
    v296[0] = MEMORY[0x277D85DD0];
    v296[1] = 3221225472;
    v296[2] = __79__RTPointOfInterestMetricsManager_processQueries_visitEntryDate_poiIdentifier___block_invoke_404;
    v296[3] = &unk_2788C73B0;
    v297 = v41;
    [obj enumerateObjectsUsingBlock:v296];
  }

  v270 = objc_opt_new();
  v269 = objc_opt_new();
  v264 = objc_opt_new();
  if ([v41 count])
  {
    v54 = 0;
    v263 = 1;
    while (1)
    {
      v55 = [v41 objectAtIndexedSubscript:v54];
      v56 = [v55 count];

      if (v56)
      {
        v57 = [v41 objectAtIndexedSubscript:v54];
        v58 = [v57 firstObject];
        [v58 date];
        v59 = v273 = v54;
        [v59 timeIntervalSinceDate:v261];
        v61 = llround(v60);

        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@", @"visitEntryQuery", v273 + 1, @"TimeOffset"];
        v63 = [*(v30 + 2992) numberWithInteger:v61];
        v265 = v62;
        [v52 setObject:v63 forKeyedSubscript:v62];

        v271 = v273 + 1;
        v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@", @"visitEntryQuery", v273 + 1, @"ErrorCode"];
        v65 = *(v30 + 2992);
        v66 = [v41 objectAtIndexedSubscript:v273];
        v67 = [v66 firstObject];
        v68 = [v65 numberWithInteger:{objc_msgSend(v67, "errorCode")}];
        v262 = v64;
        [v52 setObject:v68 forKeyedSubscript:v64];

        v69 = v273;
        v70 = [v41 objectAtIndexedSubscript:v273];
        v71 = [v70 count];

        if (v71)
        {
          v72 = 0;
          while (1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v73 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
                v74 = NSStringFromSelector(a2);
                v75 = [v41 objectAtIndexedSubscript:v69];
                v76 = [v75 objectAtIndexedSubscript:v72];
                *buf = 138413058;
                v312 = v74;
                v313 = 2048;
                v314 = v69;
                v315 = 2048;
                v316 = v72;
                v317 = 2112;
                v318 = v76;
                _os_log_impl(&dword_2304B3000, v73, OS_LOG_TYPE_INFO, "%@, group idx, %lu, result idx, %lu, query, %@", buf, 0x2Au);
              }
            }

            v77 = [v41 objectAtIndexedSubscript:v69];
            v78 = [v77 objectAtIndexedSubscript:v72];
            v79 = [v78 placeInference];
            v80 = [v79 mapItem];
            v282 = v72;
            if (v80)
            {
              v81 = [v41 objectAtIndexedSubscript:v69];
              v82 = [v81 objectAtIndexedSubscript:v72];
              v83 = [v82 placeInference];
              v84 = [v83 mapItem];
              v85 = [v84 muid];

              v30 = 0x277CCA000;
              v72 = v282;

              v41 = v287;
            }

            else
            {
              v85 = 0;
            }

            v86 = [v41 objectAtIndexedSubscript:v69];
            v87 = [v86 objectAtIndexedSubscript:v72];
            v88 = [v87 placeInference];
            [v88 confidence];
            v90 = v89;

            if (v85 == a5)
            {
              v277 = 1;
              goto LABEL_67;
            }

            v91 = [*(v30 + 2992) numberWithUnsignedInteger:v85];
            v92 = [v270 objectForKey:v91];

            if (v92)
            {
              break;
            }

            if (v85)
            {
              v93 = [*(v30 + 2992) numberWithUnsignedInteger:v263 + 1];
              v94 = [*(v30 + 2992) numberWithUnsignedInteger:v85];
              [v270 setObject:v93 forKey:v94];
              v277 = ++v263;
              goto LABEL_66;
            }

            v277 = 0;
LABEL_67:
            v95 = [v41 objectAtIndexedSubscript:v69];
            v96 = [v95 objectAtIndexedSubscript:v72];
            v97 = [v96 placeInference];
            v98 = v41;
            v99 = [v97 placeType];

            if (v99 == 3)
            {
              v100 = [*(v30 + 2992) numberWithUnsignedInteger:v85];
              v101 = v269;
              v102 = [v269 objectForKey:v100];

              v103 = 1;
              v104 = 1;
              if (!v102)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v111 = [v98 objectAtIndexedSubscript:v69];
              v112 = [v111 objectAtIndexedSubscript:v72];
              v113 = [v112 placeInference];
              v103 = [v113 placeType];

              if (v103 != 2)
              {
                v279 = 0;
                goto LABEL_75;
              }

              v114 = [*(v30 + 2992) numberWithUnsignedInteger:v85];
              v101 = v264;
              v115 = [v264 objectForKey:v114];

              v104 = 2;
              if (!v115)
              {
LABEL_69:
                v105 = [*(v30 + 2992) numberWithUnsignedInteger:v85];
                [v101 setObject:&unk_28459CDC8 forKey:v105];

                v104 = v103;
              }
            }

            v279 = v104;
            v106 = *(v30 + 2992);
            v107 = [v106 numberWithUnsignedInteger:v85];
            v108 = [v101 objectForKeyedSubscript:v107];
            v109 = [v106 numberWithUnsignedInteger:{objc_msgSend(v108, "unsignedIntegerValue") + 1}];
            v110 = [*(v30 + 2992) numberWithUnsignedInteger:v85];
            [v101 setObject:v109 forKey:v110];

LABEL_75:
            v72 = v282 + 1;
            v283 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@%lu%@", @"visitEntryQuery", v271, @"Result", v282 + 1, @"Muid"];
            v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v85];
            [v276 setObject:v116 forKeyedSubscript:v283];

            v117 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@%lu%@", @"visitEntryQuery", v271, @"Result", v72, @"Match"];
            v118 = [*(v30 + 2992) numberWithUnsignedInteger:v277];
            [v276 setObject:v118 forKeyedSubscript:v117];

            v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@%lu%@", @"visitEntryQuery", v271, @"Result", v72, @"Confidence"];
            v120 = [*(v30 + 2992) numberWithUnsignedInteger:vcvtad_u64_f64(v90 * 10000.0)];
            [v276 setObject:v120 forKeyedSubscript:v119];

            v121 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@%lu%@", @"visitEntryQuery", v271, @"Result", v72, @"PoiSize"];
            v122 = [*(v30 + 2992) numberWithUnsignedInteger:v279];
            [v276 setObject:v122 forKeyedSubscript:v121];

            v41 = v287;
            v69 = v273;
            v123 = [v287 objectAtIndexedSubscript:v273];
            v124 = [v123 count];

            v125 = 3;
            if (v124 < 3)
            {
              v125 = v124;
            }

            if (v72 >= v125)
            {
              goto LABEL_80;
            }
          }

          v93 = [*(v30 + 2992) numberWithUnsignedInteger:v85];
          v94 = [v270 objectForKey:v93];
          v277 = [v94 unsignedIntegerValue];
LABEL_66:

          goto LABEL_67;
        }

LABEL_80:

        v52 = v276;
        v126 = v273 + 1;
      }

      else
      {
        v126 = v54 + 1;
      }

      v127 = [v41 count];
      v128 = 10;
      if (v127 < 0xA)
      {
        v128 = v127;
      }

      v54 = v126;
      if (v126 >= v128)
      {
        goto LABEL_87;
      }
    }
  }

  v263 = 1;
LABEL_87:
  if ([v41 count] > 0xA)
  {
    v129 = [v41 count];
    if ((v129 - 10) / 0xAuLL <= 1)
    {
      v130 = 1;
    }

    else
    {
      v130 = (v129 - 10) / 0xAuLL;
    }

    v131 = [v41 count];
    v132 = 10 * v130 + 10;
    if (v131 < v132)
    {
      v132 = v131;
    }

    v256 = v132;
    v257 = v130;
    if (v132 >= 0xB)
    {
      v267 = 1;
      v133 = 10;
      do
      {
        v134 = [v41 objectAtIndexedSubscript:v133];
        v135 = [v134 count];

        v272 = v133;
        if (v135)
        {
          v136 = [v41 objectAtIndexedSubscript:v133];
          v137 = [v136 firstObject];
          v138 = [v137 date];
          [v138 timeIntervalSinceDate:v261];
          v140 = llround(v139);

          v141 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@", @"visitDwellQuery", v267, @"TimeOffset"];
          v142 = [*(v30 + 2992) numberWithInteger:v140];
          v259 = v141;
          [v52 setObject:v142 forKeyedSubscript:v141];

          v266 = v133 + 1;
          v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@", @"visitDwellQuery", v133 + 1, @"ErrorCode"];
          v144 = *(v30 + 2992);
          v145 = [v41 objectAtIndexedSubscript:v133];
          v146 = [v145 firstObject];
          v147 = [v144 numberWithInteger:{objc_msgSend(v146, "errorCode")}];
          v258 = v143;
          [v52 setObject:v147 forKeyedSubscript:v143];

          v148 = [v41 objectAtIndexedSubscript:v133];
          v149 = [v148 count];

          if (v149)
          {
            v150 = v133;
            v284 = 0;
            while (1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v151 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
                if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
                {
                  v152 = NSStringFromSelector(a2);
                  v153 = [v41 objectAtIndexedSubscript:v150];
                  v154 = [v153 objectAtIndexedSubscript:v284];
                  *buf = 138413058;
                  v312 = v152;
                  v313 = 2048;
                  v314 = v150;
                  v315 = 2048;
                  v316 = v284;
                  v317 = 2112;
                  v318 = v154;
                  _os_log_impl(&dword_2304B3000, v151, OS_LOG_TYPE_INFO, "%@, group idx, %lu, result idx, %lu, query, %@", buf, 0x2Au);
                }
              }

              v155 = [v41 objectAtIndexedSubscript:v150];
              v156 = [v155 objectAtIndexedSubscript:v284];
              v157 = [v156 placeInference];
              [v157 mapItem];
              v159 = v158 = v150;
              if (v159)
              {
                v160 = [v41 objectAtIndexedSubscript:v158];
                v161 = [v160 objectAtIndexedSubscript:v284];
                v162 = [v161 placeInference];
                v163 = [v162 mapItem];
                v164 = [v163 muid];

                v41 = v287;
                v165 = v164;
              }

              else
              {
                v165 = 0;
              }

              v166 = [v41 objectAtIndexedSubscript:v158];
              v167 = [v166 objectAtIndexedSubscript:v284];
              v168 = [v167 placeInference];
              [v168 confidence];
              v170 = v169;

              if (v165 == a5)
              {
                v171 = v165;
                v278 = 1;
                v172 = v276;
                v173 = 0x277CCA000;
                goto LABEL_112;
              }

              v173 = 0x277CCA000uLL;
              v174 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v165];
              v175 = [v270 objectForKey:v174];

              if (v175)
              {
                break;
              }

              v178 = v165;
              v172 = v276;
              if (v178)
              {
                v176 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v263 + 1];
                v171 = v178;
                v177 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v178];
                [v270 setObject:v176 forKey:v177];
                v278 = ++v263;
                goto LABEL_111;
              }

              v171 = 0;
              v278 = 0;
LABEL_112:
              v179 = [v41 objectAtIndexedSubscript:v158];
              v180 = [v179 objectAtIndexedSubscript:v284];
              v181 = [v180 placeInference];
              v182 = v41;
              v183 = [v181 placeType];

              if (v183 == 3)
              {
                v184 = v172;
                v185 = v171;
                v186 = [*(v173 + 2992) numberWithUnsignedInteger:v171];
                v187 = v269;
                v188 = [v269 objectForKey:v186];

                v189 = 1;
                v190 = v173;
                v191 = 1;
                if (!v188)
                {
                  goto LABEL_114;
                }
              }

              else
              {
                v199 = [v182 objectAtIndexedSubscript:v158];
                v200 = [v199 objectAtIndexedSubscript:v284];
                v201 = [v200 placeInference];
                v189 = [v201 placeType];

                if (v189 != 2)
                {
                  v184 = v172;
                  v190 = v173;
                  v280 = 0;
                  v198 = v171;
                  goto LABEL_120;
                }

                v184 = v172;
                v185 = v171;
                v202 = [*(v173 + 2992) numberWithUnsignedInteger:v171];
                v187 = v264;
                v203 = [v264 objectForKey:v202];

                v190 = v173;
                v191 = 2;
                if (!v203)
                {
LABEL_114:
                  v192 = [*(v190 + 2992) numberWithUnsignedInteger:v185];
                  [v187 setObject:&unk_28459CDC8 forKey:v192];

                  v191 = v189;
                }
              }

              v280 = v191;
              v193 = *(v190 + 2992);
              v194 = [v193 numberWithUnsignedInteger:v185];
              v195 = [v187 objectForKeyedSubscript:v194];
              v196 = [v193 numberWithUnsignedInteger:{objc_msgSend(v195, "unsignedIntegerValue") + 1}];
              v197 = [*(v190 + 2992) numberWithUnsignedInteger:v185];
              [v187 setObject:v196 forKey:v197];

              v198 = v185;
LABEL_120:
              v204 = (v284 + 1);
              v285 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@%lu%@", @"visitDwellQuery", v266, @"Result", v284 + 1, @"Muid"];
              v205 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v198];
              v52 = v184;
              [v184 setObject:v205 forKeyedSubscript:v285];

              v206 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@%lu%@", @"visitDwellQuery", v267, @"Result", v204, @"Match"];
              v207 = [*(v190 + 2992) numberWithUnsignedInteger:v278];
              [v52 setObject:v207 forKeyedSubscript:v206];

              v208 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@%lu%@", @"visitDwellQuery", v267, @"Result", v204, @"Confidence"];
              v209 = [*(v190 + 2992) numberWithUnsignedInteger:vcvtad_u64_f64(v170 * 10000.0)];
              [v52 setObject:v209 forKeyedSubscript:v208];

              v210 = v204;
              v211 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu%@%lu%@", @"visitDwellQuery", v267, @"Result", v204, @"PoiSize"];
              v212 = [*(v190 + 2992) numberWithUnsignedInteger:v280];
              [v52 setObject:v212 forKeyedSubscript:v211];

              v41 = v287;
              v150 = v272;
              v213 = [v287 objectAtIndexedSubscript:v272];
              v214 = [v213 count];

              v215 = 3;
              if (v214 < 3)
              {
                v215 = v214;
              }

              v284 = v210;
              if (v210 >= v215)
              {
                goto LABEL_125;
              }
            }

            v171 = v165;
            v176 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v165];
            v177 = [v270 objectForKey:v176];
            v278 = [v177 unsignedIntegerValue];
            v172 = v276;
LABEL_111:

            goto LABEL_112;
          }

LABEL_125:
          ++v267;

          v30 = 0x277CCA000;
        }

        v133 = v272 + v257;
      }

      while (v272 + v257 < v256);
    }
  }

  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v216 = v269;
  v217 = [v216 countByEnumeratingWithState:&v292 objects:v308 count:16];
  v286 = v216;
  if (v217)
  {
    v218 = v217;
    v219 = 0;
    v220 = 0;
    v221 = *v293;
    v222 = MEMORY[0x277D86220];
    do
    {
      for (k = 0; k != v218; ++k)
      {
        if (*v293 != v221)
        {
          objc_enumerationMutation(v216);
        }

        v224 = *(*(&v292 + 1) + 8 * k);
        v225 = [v216 objectForKeyedSubscript:v224];
        v226 = [v225 unsignedIntegerValue];

        if (v226 > v220)
        {
          v219 = [v224 unsignedIntegerValue];
          v220 = v226;
        }

        if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
        {
          v227 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v227, OS_LOG_TYPE_DEBUG))
          {
            v228 = NSStringFromSelector(a2);
            *buf = 138413058;
            v312 = v228;
            v313 = 2112;
            v314 = v224;
            v315 = 2048;
            v316 = v226;
            v317 = 2048;
            v318 = v220;
            _os_log_debug_impl(&dword_2304B3000, v227, OS_LOG_TYPE_DEBUG, "%@, POI label, %@, count, %lu, max count, %lu", buf, 0x2Au);
          }

          v216 = v286;
        }
      }

      v218 = [v216 countByEnumeratingWithState:&v292 objects:v308 count:16];
    }

    while (v218);
  }

  else
  {
    v219 = 0;
    v220 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v229 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
    {
      v230 = NSStringFromSelector(a2);
      *buf = 138412802;
      v312 = v230;
      v313 = 2048;
      v314 = v219;
      v315 = 2048;
      v316 = v220;
      _os_log_impl(&dword_2304B3000, v229, OS_LOG_TYPE_INFO, "%@, aggregated POI label, %lu, count, %lu", buf, 0x20u);
    }
  }

  v231 = 1;
  if (v219 != a5)
  {
    v231 = 2;
  }

  if (v219)
  {
    v232 = v231;
  }

  else
  {
    v232 = 0;
  }

  v233 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v232];
  [v276 setObject:v233 forKeyedSubscript:@"aggregatedResult1Match"];

  [v276 setObject:&unk_28459CDE0 forKeyedSubscript:@"aggregatedResult1PoiSize"];
  v290 = 0u;
  v291 = 0u;
  v288 = 0u;
  v289 = 0u;
  v234 = v264;
  v235 = [v234 countByEnumeratingWithState:&v288 objects:v307 count:16];
  if (v235)
  {
    v236 = v235;
    v237 = 0;
    v238 = 0;
    v239 = *v289;
    v240 = MEMORY[0x277D86220];
    do
    {
      for (m = 0; m != v236; ++m)
      {
        if (*v289 != v239)
        {
          objc_enumerationMutation(v234);
        }

        v242 = *(*(&v288 + 1) + 8 * m);
        v243 = [v234 objectForKeyedSubscript:v242];
        v244 = [v243 unsignedIntegerValue];

        if (v244 > v238)
        {
          v237 = [v242 unsignedIntegerValue];
          v238 = v244;
        }

        if (os_log_type_enabled(v240, OS_LOG_TYPE_DEBUG))
        {
          v245 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG))
          {
            NSStringFromSelector(a2);
            v246 = v281 = v237;
            *buf = 138413058;
            v312 = v246;
            v313 = 2112;
            v314 = v242;
            v315 = 2048;
            v316 = v244;
            v317 = 2048;
            v318 = v238;
            _os_log_debug_impl(&dword_2304B3000, v245, OS_LOG_TYPE_DEBUG, "%@, AOI label, %@, count, %lu, max count, %lu", buf, 0x2Au);

            v237 = v281;
          }
        }
      }

      v236 = [v234 countByEnumeratingWithState:&v288 objects:v307 count:16];
    }

    while (v236);
  }

  else
  {
    v237 = 0;
    v238 = 0;
  }

  v247 = v287;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v248 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v248, OS_LOG_TYPE_INFO))
    {
      v249 = NSStringFromSelector(a2);
      *buf = 138412802;
      v312 = v249;
      v313 = 2048;
      v314 = v237;
      v315 = 2048;
      v316 = v238;
      _os_log_impl(&dword_2304B3000, v248, OS_LOG_TYPE_INFO, "%@, aggregated AOI label, %lu, count, %lu", buf, 0x20u);

      v247 = v287;
    }
  }

  v250 = 1;
  if (v237 != a5)
  {
    v250 = 2;
  }

  if (v237)
  {
    v251 = v250;
  }

  else
  {
    v251 = 0;
  }

  v252 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v251];
  [v276 setObject:v252 forKeyedSubscript:@"aggregatedResult2Match"];

  [v276 setObject:&unk_28459CE10 forKeyedSubscript:@"aggregatedResult2PoiSize"];
  v253 = v276;

  return v276;
}

void __79__RTPointOfInterestMetricsManager_processQueries_visitEntryDate_poiIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412802;
      v9 = v7;
      v10 = 2048;
      v11 = a3;
      v12 = 2048;
      v13 = [v5 count];
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, group idx, %lu, query count, %lu", &v8, 0x20u);
    }
  }
}

void __79__RTPointOfInterestMetricsManager_processQueries_visitEntryDate_poiIdentifier___block_invoke_404(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v2 addObject:{v5, v6, v7}];
}

- (unint64_t)getTruthPointOfInterestIdentifier
{
  v2 = [(RTPointOfInterestMetricsManager *)self defaultsManager];
  v3 = [v2 objectForKey:@"PointOfInterestMetricsManagerTruthLabelIdentifier"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end