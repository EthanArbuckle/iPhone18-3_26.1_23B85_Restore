@interface RTVisitManager
+ (id)vendedClasses;
- (BOOL)shouldFindPointOfInterestForVisit:(id)a3;
- (RTVisitManager)initWithDefaultsManager:(id)a3 deviceLocationPredictor:(id)a4 hintManager:(id)a5 learnedLocationManager:(id)a6 locationAwarenessManager:(id)a7 locationManager:(id)a8 metricManager:(id)a9 motionActivityManager:(id)a10 platform:(id)a11 pointOfInterestMonitor:(id)a12 visitLabeler:(id)a13 visitStore:(id)a14 xpcActivityManager:(id)a15;
- (id)registerForSpoofVisitIncidentOfCategory:(id)a3;
- (void)_fetchVisitsFromDate:(id)a3 toDate:(id)a4 handler:(id)a5;
- (void)_injectRealtimeVisit:(id)a3 handler:(id)a4;
- (void)_injectSyncedVisitLocation:(id)a3;
- (void)_onLowConfidenceVisitIncident:(id)a3 error:(id)a4;
- (void)_onPointOfInterestVisitNotification:(id)a3;
- (void)_onVisitIncident:(id)a3 error:(id)a4;
- (void)_onVisitStoreNotification:(id)a3;
- (void)_performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)_registerXpcActivityFindPointOfInterest;
- (void)_setup;
- (void)_setupVisitMonitorWithHandler:(id)a3;
- (void)_shutdownWithHandler:(id)a3;
- (void)_simulateVisit:(id)a3 handler:(id)a4;
- (void)_unregisterXpcActivityFindPointOfInterest;
- (void)_updateStateForLeechedVisitIncidents;
- (void)_updateStateForLowConfidenceVisitIncidents;
- (void)_updateStateForVisitIncidents;
- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5;
- (void)fetchStoredVisitsWithOptions:(id)a3 handler:(id)a4;
- (void)fetchVisitsFromDate:(id)a3 toDate:(id)a4 handler:(id)a5;
- (void)injectRealtimeVisit:(id)a3 handler:(id)a4;
- (void)injectSyncedVisitLocation:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onLowConfidenceVisitIncident:(id)a3 error:(id)a4;
- (void)onPointOfInterestVisitNotification:(id)a3;
- (void)onVisitIncident:(id)a3 error:(id)a4;
- (void)onVisitStoreNotification:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)setFindingPointOfInterest:(BOOL)a3;
- (void)setSpoofMode:(BOOL)a3;
- (void)simulateVisit:(id)a3 handler:(id)a4;
- (void)unregisterForSpoofVisitIncidentWithToken:(int)a3;
@end

@implementation RTVisitManager

+ (id)vendedClasses
{
  v2 = vendedClasses_vendedClasses_3;
  if (!vendedClasses_vendedClasses_3)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v4 = vendedClasses_vendedClasses_3;
    vendedClasses_vendedClasses_3 = v3;

    v2 = vendedClasses_vendedClasses_3;
  }

  return v2;
}

- (RTVisitManager)initWithDefaultsManager:(id)a3 deviceLocationPredictor:(id)a4 hintManager:(id)a5 learnedLocationManager:(id)a6 locationAwarenessManager:(id)a7 locationManager:(id)a8 metricManager:(id)a9 motionActivityManager:(id)a10 platform:(id)a11 pointOfInterestMonitor:(id)a12 visitLabeler:(id)a13 visitStore:(id)a14 xpcActivityManager:(id)a15
{
  v51 = a3;
  v39 = a4;
  v20 = a4;
  v40 = a5;
  v47 = a5;
  v41 = a6;
  v45 = a6;
  v42 = a7;
  v44 = a7;
  v43 = a8;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v50 = a13;
  v49 = a14;
  v26 = a15;
  v46 = v26;
  if (v51)
  {
    v27 = v20;
    if (v20)
    {
      v28 = v47;
      v29 = v44;
      v30 = v45;
      if (v47)
      {
        if (v45)
        {
          if (v44)
          {
            if (v21)
            {
              if (v22)
              {
                if (v23)
                {
                  if (v24)
                  {
                    if (v25)
                    {
                      if (v50)
                      {
                        if (v49)
                        {
                          if (v26)
                          {
                            v52.receiver = self;
                            v52.super_class = RTVisitManager;
                            v31 = [(RTNotifier *)&v52 init];
                            v32 = v31;
                            if (v31)
                            {
                              objc_storeStrong(&v31->_defaultsManager, a3);
                              objc_storeStrong(&v32->_deviceLocationPredictor, v39);
                              objc_storeStrong(&v32->_hintManager, v40);
                              objc_storeStrong(&v32->_learnedLocationManager, v41);
                              objc_storeStrong(&v32->_locationAwarenessManager, v42);
                              objc_storeStrong(&v32->_locationManager, v43);
                              objc_storeStrong(&v32->_metricManager, a9);
                              objc_storeStrong(&v32->_motionActivityManager, a10);
                              objc_storeStrong(&v32->_platform, a11);
                              objc_storeStrong(&v32->_pointOfInterestMonitor, a12);
                              objc_storeStrong(&v32->_visitLabeler, a13);
                              objc_storeStrong(&v32->_visitStore, a14);
                              objc_storeStrong(&v32->_xpcActivityManager, a15);
                              v32->_findingPointOfInterest = 0;
                              v32->_pointOfInterestUpdateEnabled = 0;
                              [(RTService *)v32 setup];
                            }

                            v33 = v32;
                            self = v33;
                            goto LABEL_46;
                          }

                          v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            v36 = "Invalid parameter not satisfying: xpcActivityManager";
                            goto LABEL_44;
                          }

LABEL_45:

                          v33 = 0;
                          goto LABEL_46;
                        }

                        v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_45;
                        }

                        *buf = 0;
                        v36 = "Invalid parameter not satisfying: visitStore";
                      }

                      else
                      {
                        v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_45;
                        }

                        *buf = 0;
                        v36 = "Invalid parameter not satisfying: visitLabeler";
                      }
                    }

                    else
                    {
                      v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_45;
                      }

                      *buf = 0;
                      v36 = "Invalid parameter not satisfying: pointOfInterestMonitor";
                    }
                  }

                  else
                  {
                    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_45;
                    }

                    *buf = 0;
                    v36 = "Invalid parameter not satisfying: platform";
                  }
                }

                else
                {
                  v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_45;
                  }

                  *buf = 0;
                  v36 = "Invalid parameter not satisfying: motionActivityManager";
                }
              }

              else
              {
                v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_45;
                }

                *buf = 0;
                v36 = "Invalid parameter not satisfying: metricManager";
              }
            }

            else
            {
              v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_45;
              }

              *buf = 0;
              v36 = "Invalid parameter not satisfying: locationManager";
            }
          }

          else
          {
            v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_45;
            }

            *buf = 0;
            v36 = "Invalid parameter not satisfying: locationAwarenessManager";
          }
        }

        else
        {
          v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          *buf = 0;
          v36 = "Invalid parameter not satisfying: learnedLocationManager";
        }
      }

      else
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        *buf = 0;
        v36 = "Invalid parameter not satisfying: hintManager";
      }
    }

    else
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v28 = v47;
      v29 = v44;
      v30 = v45;
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      *buf = 0;
      v36 = "Invalid parameter not satisfying: deviceLocationPredictor";
    }

LABEL_44:
    _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, v36, buf, 2u);
    goto LABEL_45;
  }

  v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
  }

  v33 = 0;
  v27 = v20;
  v28 = v47;
  v29 = v44;
  v30 = v45;
LABEL_46:

  return v33;
}

- (void)_setup
{
  v3 = [(RTVisitManager *)self visitStore];
  v4 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  [v3 addObserver:self selector:sel_onVisitStoreNotification_ name:v4];

  v5 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"InstantPOIEvalMode"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(RTVisitManager *)self pointOfInterestMonitor];
    v8 = +[(RTNotification *)RTPointOfInterestMonitorVisitNotification];
    [v7 addObserver:self selector:sel_onPointOfInterestVisitNotification_ name:v8];
  }

  if ([(RTPlatform *)self->_platform internalInstall])
  {
    objc_initWeak(&location, self);
    out_token = 0;
    v9 = [@"SpoofVisit" UTF8String];
    v10 = [(RTNotifier *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __24__RTVisitManager__setup__block_invoke;
    handler[3] = &unk_2788CF120;
    handler[4] = self;
    objc_copyWeak(&v19, &location);
    notify_register_dispatch(v9, &out_token, v10, handler);

    v11 = objc_opt_new();
    [(RTVisitManager *)self setSpoofVisitIncidentTokens:v11];

    v17 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __24__RTVisitManager__setup__block_invoke_90;
    aBlock[3] = &unk_2788C5F98;
    objc_copyWeak(&v16, &location);
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    v13 = [@"SpoofVisitIncidentsUpdate" UTF8String];
    v14 = [(RTNotifier *)self queue];
    notify_register_dispatch(v13, &v17, v14, v12);

    (*(v12 + 2))(v12, 0xFFFFFFFFLL);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __24__RTVisitManager__setup__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 40) objectForKey:@"SpoofVisit"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 138412546;
      v7 = @"SpoofVisit";
      v8 = 2112;
      v9 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "default, %@, %@", &v6, 0x16u);
    }
  }

  v4 = [objc_alloc(MEMORY[0x277D01428]) initWithDefaultsDictionanry:v2];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained onVisitIncident:v4 error:0];
}

void __24__RTVisitManager__setup__block_invoke_90(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 40) objectForKey:@"SpoofVisitIncidentsOn"];
  v2 = [v4 BOOLValue];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSpoofMode:v2];
}

- (void)_onVisitStoreNotification:(id)a3
{
  v7 = a3;
  v4 = [v7 name];
  v5 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v6 = [v4 isEqualToString:v5];

  if (v6 && [v7 availability] == 2)
  {
    [(RTVisitManager *)self _setupVisitMonitorWithHandler:&__block_literal_global_105];
  }
}

void __44__RTVisitManager__onVisitStoreNotification___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "setup visit monitor, error, %@", &v4, 0xCu);
    }
  }
}

- (void)onVisitStoreNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__RTVisitManager_onVisitStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onPointOfInterestVisitNotification:(id)a3
{
  v13 = a3;
  v4 = [v13 name];
  v5 = +[(RTNotification *)RTPointOfInterestMonitorVisitNotification];
  v6 = [v4 isEqualToString:v5];

  v7 = v13;
  if (v6)
  {
    v8 = v13;
    v9 = [v8 visit];

    if (v9)
    {
      v10 = [RTVisitManagerVisitIncidentNotification alloc];
      v11 = [v8 visit];
      v12 = [(RTVisitManagerVisitIncidentNotification *)v10 initWithVisitIncident:v11];

      [(RTNotifier *)self postNotification:v12];
    }

    v7 = v13;
  }
}

- (void)onPointOfInterestVisitNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTVisitManager_onPointOfInterestVisitNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)injectSyncedVisitLocation:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTVisitManager_injectSyncedVisitLocation___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_injectSyncedVisitLocation:(id)a3
{
  v4 = a3;
  v5 = [(RTVisitManager *)self locationManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__RTVisitManager__injectSyncedVisitLocation___block_invoke;
  v7[3] = &unk_2788CF148;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchCurrentLocationWithHandler:v7];
}

void __45__RTVisitManager__injectSyncedVisitLocation___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) hintManager];
    [v3 submitHintFromSource:11 location:*(a1 + 40)];
  }
}

- (void)_setupVisitMonitorWithHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__127;
  v42[4] = __Block_byref_object_dispose__127;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__127;
  v40[4] = __Block_byref_object_dispose__127;
  v41 = 0;
  dispatch_group_enter(v5);
  v6 = [(RTVisitManager *)self visitStore];
  v7 = objc_alloc(MEMORY[0x277D01340]);
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v9 = [v7 initWithAscending:0 confidence:v8 dateInterval:0 labelVisit:0 limit:&unk_28459F198];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __48__RTVisitManager__setupVisitMonitorWithHandler___block_invoke;
  v36[3] = &unk_2788C4490;
  v38 = v42;
  v39 = v40;
  v10 = v5;
  v37 = v10;
  [v6 fetchVisitsWithOptions:v9 handler:v36];

  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__127;
  v34[4] = __Block_byref_object_dispose__127;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__127;
  v32[4] = __Block_byref_object_dispose__127;
  v33 = 0;
  dispatch_group_enter(v10);
  v11 = [(RTVisitManager *)self visitStore];
  v12 = objc_alloc(MEMORY[0x277D01340]);
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01478]];
  v14 = [v12 initWithAscending:0 confidence:v13 dateInterval:0 labelVisit:0 limit:&unk_28459F198];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __48__RTVisitManager__setupVisitMonitorWithHandler___block_invoke_2;
  v28[3] = &unk_2788C4490;
  v30 = v34;
  v31 = v32;
  v15 = v10;
  v29 = v15;
  [v11 fetchVisitsWithOptions:v14 handler:v28];

  v16 = [(RTVisitManager *)self visitMonitor];

  if (v16)
  {
    dispatch_group_enter(v15);
    v17 = [(RTVisitManager *)self visitMonitor];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __48__RTVisitManager__setupVisitMonitorWithHandler___block_invoke_3;
    v26[3] = &unk_2788C4730;
    v27 = v15;
    [v17 shutdownWithHandler:v26];
  }

  v18 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RTVisitManager__setupVisitMonitorWithHandler___block_invoke_4;
  block[3] = &unk_2788CF170;
  v22 = v42;
  v23 = v34;
  block[4] = self;
  v21 = v4;
  v24 = v40;
  v25 = v32;
  v19 = v4;
  dispatch_group_notify(v15, v18, block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);
}

void __48__RTVisitManager__setupVisitMonitorWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void __48__RTVisitManager__setupVisitMonitorWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void __48__RTVisitManager__setupVisitMonitorWithHandler___block_invoke_4(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v28 = [[RTVisitMonitorState alloc] initWithLastVisit:*(*(*(a1 + 48) + 8) + 40) lastLowConfidenceVisit:*(*(*(a1 + 56) + 8) + 40)];
  v25 = [RTVisitMonitor alloc];
  v27 = [*(a1 + 32) defaultsManager];
  v26 = [*(a1 + 32) deviceLocationPredictor];
  v24 = [*(a1 + 32) hintManager];
  v2 = [*(a1 + 32) learnedLocationManager];
  v3 = [*(a1 + 32) locationAwarenessManager];
  v4 = [*(a1 + 32) locationManager];
  v5 = [*(a1 + 32) metricManager];
  v6 = [*(a1 + 32) motionActivityManager];
  v7 = [*(a1 + 32) platform];
  v8 = [*(a1 + 32) queue];
  v9 = [*(a1 + 32) visitLabeler];
  v10 = v2;
  v11 = [(RTVisitMonitor *)v25 initWithDefaultsManager:v27 deviceLocationPredictor:v26 hintManager:v24 learnedLocationManager:v2 locationAwarenessManager:v3 locationManager:v4 metricManager:v5 motionActivityManager:v6 platform:v7 queue:v8 state:v28 visitLabeler:v9];
  [*(a1 + 32) setVisitMonitor:v11];

  v12 = [*(a1 + 32) visitMonitor];

  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = [v13 visitMonitor];
    [v14 setDelegate:v13];

    [*(a1 + 32) _updateStateForVisitIncidents];
    [*(a1 + 32) _updateStateForLeechedVisitIncidents];
    [*(a1 + 32) _updateStateForLowConfidenceVisitIncidents];
    v15 = *(a1 + 32);
    v16 = objc_opt_new();
    [v15 postNotification:v16];

    v17 = 0;
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"failed to setup visit monitor.";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v17 = [v18 errorWithDomain:v19 code:5 userInfo:v20];
  }

  v21 = *(a1 + 40);
  v22 = _RTSafeArray();
  v23 = _RTMultiErrorCreate();
  (*(v21 + 16))(v21, v23);
}

- (void)_shutdownWithHandler:(id)a3
{
  v8 = a3;
  v4 = [(RTVisitManager *)self visitMonitor];
  [v4 setDelegate:0];

  v5 = [(RTVisitManager *)self visitMonitor];
  [v5 shutdownWithHandler:0];

  v6 = [(RTVisitManager *)self visitStore];
  [v6 removeObserver:self];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 0);
    v7 = v8;
  }
}

- (void)_updateStateForVisitIncidents
{
  v3 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  v4 = [(RTNotifier *)self getNumberOfObservers:v3];

  v5 = [(RTVisitManager *)self visitMonitor];
  v6 = v5;
  if (v4)
  {
    [v5 startMonitoringVisitIncidents];
  }

  else
  {
    [v5 stopMonitoringVisitIncidents];
  }
}

- (void)_updateStateForLeechedVisitIncidents
{
  v3 = +[(RTNotification *)RTVisitManagerLeechedVisitIncidentNotification];
  v4 = [(RTNotifier *)self getNumberOfObservers:v3];

  v5 = [(RTVisitManager *)self visitMonitor];
  v6 = v5;
  if (v4)
  {
    [v5 startMonitoringLeechedVisitIncidents];
  }

  else
  {
    [v5 stopMonitoringLeechedVisitIncidents];
  }
}

- (void)_updateStateForLowConfidenceVisitIncidents
{
  v3 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
  v4 = [(RTNotifier *)self getNumberOfObservers:v3];

  v5 = [(RTVisitManager *)self visitMonitor];
  v6 = v5;
  if (v4)
  {
    [v5 startMonitoringLowConfidenceVisitIncidents];
  }

  else
  {
    [v5 stopMonitoringLowConfidenceVisitIncidents];
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    [(RTVisitManager *)self _updateStateForVisitIncidents];
  }

  else
  {
    v10 = +[(RTNotification *)RTVisitManagerLeechedVisitIncidentNotification];
    v11 = [v7 isEqualToString:v10];

    if (v11)
    {
      [(RTVisitManager *)self _updateStateForLeechedVisitIncidents];
    }

    else
    {
      v12 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
      v13 = [v7 isEqualToString:v12];

      if (v13)
      {
        [(RTVisitManager *)self _updateStateForLowConfidenceVisitIncidents];
      }

      else
      {
        v14 = +[(RTNotification *)RTVisitManagerAvailableNotification];
        v15 = [v7 isEqualToString:v14];

        if (v15)
        {
          v16 = [(RTVisitManager *)self visitMonitor];

          if (v16)
          {
            v17 = objc_opt_new();
            [(RTNotifier *)self postNotification:v17 toObserver:v6];
          }
        }

        else
        {
          v18 = +[(RTNotification *)RTVisitManagerPointOfInterestUpdateNotification];
          v19 = [v7 isEqualToString:v18];

          if (v19)
          {
            [(RTVisitManager *)self setPointOfInterestUpdateEnabled:[(RTNotifier *)self getNumberOfObservers:v7]!= 0];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v20 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = 138412290;
              v22 = v7;
              _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v21, 0xCu);
            }
          }
        }
      }
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(RTVisitManager *)self _updateStateForVisitIncidents];
  }

  else
  {
    v8 = +[(RTNotification *)RTVisitManagerLeechedVisitIncidentNotification];
    v9 = [v5 isEqualToString:v8];

    if (v9)
    {
      [(RTVisitManager *)self _updateStateForLeechedVisitIncidents];
    }

    else
    {
      v10 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
      v11 = [v5 isEqualToString:v10];

      if (v11)
      {
        [(RTVisitManager *)self _updateStateForLowConfidenceVisitIncidents];
      }

      else
      {
        v12 = +[(RTNotification *)RTVisitManagerAvailableNotification];
        v13 = [v5 isEqualToString:v12];

        if ((v13 & 1) == 0)
        {
          v14 = +[(RTNotification *)RTVisitManagerPointOfInterestUpdateNotification];
          v15 = [v5 isEqualToString:v14];

          if (v15)
          {
            [(RTVisitManager *)self setPointOfInterestUpdateEnabled:[(RTNotifier *)self getNumberOfObservers:v5]!= 0];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = 138412290;
              v18 = v5;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v17, 0xCu);
            }
          }
        }
      }
    }
  }
}

- (void)_fetchVisitsFromDate:(id)a3 toDate:(id)a4 handler:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "[RTVisitManager _fetchVisitsFromDate:toDate:handler:]";
      v47 = 1024;
      v48 = 519;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: toDate (in %s:%d)", buf, 0x12u);
    }

    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v46 = "[RTVisitManager _fetchVisitsFromDate:toDate:handler:]";
    v47 = 1024;
    v48 = 518;
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fromDate (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v10)
  {
LABEL_4:
    if (v8 && v9)
    {
      if ([v8 compare:v9] == 1)
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277D01448];
        v41 = *MEMORY[0x277CCA450];
        v13 = MEMORY[0x277CCACA8];
        v14 = [v8 stringFromDate];
        v15 = [v9 stringFromDate];
        v16 = [v13 stringWithFormat:@"fromDate, %@, postdates toDate, %@", v14, v15];
        v42 = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v18 = [v11 errorWithDomain:v12 code:7 userInfo:v17];
        v10[2](v10, 0, v18);
      }

      else
      {
        v23 = [RTVisitMonitor alloc];
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v23];
        v14 = dispatch_queue_create([v24 UTF8String], 0);

        v33 = v23;
        v37 = [(RTVisitManager *)self defaultsManager];
        v36 = [(RTVisitManager *)self deviceLocationPredictor];
        v35 = [(RTVisitManager *)self hintManager];
        v32 = [(RTVisitManager *)self learnedLocationManager];
        v31 = [(RTVisitManager *)self locationAwarenessManager];
        v30 = [(RTVisitManager *)self locationManager];
        v29 = [(RTVisitManager *)self metricManager];
        v28 = [(RTVisitManager *)self motionActivityManager];
        v27 = [(RTVisitManager *)self platform];
        v25 = [[RTVisitMonitorState alloc] initWithLastVisit:0 lastLowConfidenceVisit:0];
        v26 = [(RTVisitManager *)self visitLabeler];
        v34 = [(RTVisitMonitor *)v33 initWithDefaultsManager:v37 deviceLocationPredictor:v36 hintManager:v35 learnedLocationManager:v32 locationAwarenessManager:v31 locationManager:v30 metricManager:v29 motionActivityManager:v28 platform:v27 queue:v14 state:v25 visitLabeler:v26];

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __54__RTVisitManager__fetchVisitsFromDate_toDate_handler___block_invoke;
        v38[3] = &unk_2788C4550;
        v39 = v34;
        v40 = v10;
        v15 = v34;
        [(RTVisitMonitor *)v15 fetchVisitsFromDate:v8 toDate:v9 handler:v38];
      }
    }

    else
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277D01448];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"requires valid dates.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v15 = [v21 errorWithDomain:v22 code:7 userInfo:v14];
      v10[2](v10, 0, v15);
    }

    goto LABEL_19;
  }

LABEL_14:
  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v46 = "[RTVisitManager _fetchVisitsFromDate:toDate:handler:]";
    v47 = 1024;
    v48 = 520;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_19:
}

uint64_t __54__RTVisitManager__fetchVisitsFromDate_toDate_handler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 shutdownWithHandler:0];
}

- (void)fetchVisitsFromDate:(id)a3 toDate:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__RTVisitManager_fetchVisitsFromDate_toDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)fetchStoredVisitsWithOptions:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__RTVisitManager_fetchStoredVisitsWithOptions_handler___block_invoke;
  v12[3] = &unk_2788C4C20;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __55__RTVisitManager_fetchStoredVisitsWithOptions_handler___block_invoke(uint64_t a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__127;
  v91 = __Block_byref_object_dispose__127;
  v92 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__127;
  v85 = __Block_byref_object_dispose__127;
  v86 = 0;
  v2 = dispatch_semaphore_create(0);
  v63 = a1;
  v3 = [*(a1 + 32) visitStore];
  v4 = *(v63 + 40);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __55__RTVisitManager_fetchStoredVisitsWithOptions_handler___block_invoke_2;
  v76[3] = &unk_2788C69F0;
  v77 = v4;
  v79 = &v81;
  v80 = &v87;
  v5 = v2;
  v78 = v5;
  [v3 fetchVisitsWithOptions:v77 handler:v76];

  v6 = v5;
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    [v9 timeIntervalSinceDate:v7];
    v11 = v10;
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_392];
    v14 = [MEMORY[0x277CCACC8] callStackSymbols];
    v15 = [v14 filteredArrayUsingPredicate:v13];
    v16 = [v15 firstObject];

    [v12 submitToCoreAnalytics:v16 type:1 duration:v11];
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v94 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v94 count:1];
    v20 = [v18 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v19];

    if (v20)
    {
      v21 = v20;

      v22 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = 1;
LABEL_8:

  v61 = v20;
  if ((v22 & 1) == 0)
  {
    objc_storeStrong(v88 + 5, v20);
  }

  if (v88[5])
  {
    (*(*(v63 + 48) + 16))();
  }

  else
  {
    if ([*(v63 + 40) labelVisit])
    {
      v64 = objc_opt_new();
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v82[5];
      v23 = [obj countByEnumeratingWithState:&v72 objects:v93 count:16];
      if (v23)
      {
        v65 = *v73;
        v24 = *MEMORY[0x277D01478];
        v59 = *MEMORY[0x277D01448];
        v60 = *MEMORY[0x277CCA450];
        while (2)
        {
          v66 = v23;
          for (i = 0; i != v66; ++i)
          {
            if (*v73 != v65)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v72 + 1) + 8 * i);
            if ([v26 source] == 1)
            {
              [v26 confidence];
              if (v27 > v24)
              {
                v28 = [v26 placeInference];
                v29 = [v28 mapItem];
                v30 = v29 == 0;

                if (v30)
                {
                  v54 = [*(v63 + 32) visitLabeler];
                  v71 = 0;
                  [v54 labelVisit:v26 clientIdentifier:@"com.apple.CoreRoutine.visitManager" policy:0 error:&v71];
                }

                else
                {
                  v31 = dispatch_semaphore_create(0);

                  v32 = [*(v63 + 32) learnedLocationManager];
                  v33 = [v26 placeInference];
                  v34 = [v33 mapItem];
                  v67[0] = MEMORY[0x277D85DD0];
                  v67[1] = 3221225472;
                  v67[2] = __55__RTVisitManager_fetchStoredVisitsWithOptions_handler___block_invoke_2_128;
                  v67[3] = &unk_2788CF1B8;
                  v35 = *(v63 + 56);
                  v67[4] = v26;
                  v69 = &v87;
                  v70 = v35;
                  v36 = v31;
                  v68 = v36;
                  [v32 fetchLocationOfInterestWithMapItem:v34 handler:v67];

                  v6 = v36;
                  v37 = [MEMORY[0x277CBEAA8] now];
                  v38 = dispatch_time(0, 3600000000000);
                  if (!dispatch_semaphore_wait(v6, v38))
                  {
                    goto LABEL_26;
                  }

                  v39 = [MEMORY[0x277CBEAA8] now];
                  [v39 timeIntervalSinceDate:v37];
                  v41 = v40;
                  v42 = objc_opt_new();
                  v43 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_392];
                  v44 = [MEMORY[0x277CCACC8] callStackSymbols];
                  v45 = [v44 filteredArrayUsingPredicate:v43];
                  v46 = [v45 firstObject];

                  [v42 submitToCoreAnalytics:v46 type:1 duration:v41];
                  v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_fault_impl(&dword_2304B3000, v47, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
                  }

                  v48 = MEMORY[0x277CCA9B8];
                  v94 = v60;
                  *buf = @"semaphore wait timeout";
                  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v94 count:1];
                  v50 = [v48 errorWithDomain:v59 code:15 userInfo:v49];

                  if (v50)
                  {
                    v51 = v50;

                    v52 = 0;
                  }

                  else
                  {
LABEL_26:
                    v52 = 1;
                    v50 = v61;
                  }

                  v53 = v50;
                  if ((v52 & 1) == 0)
                  {
                    objc_storeStrong(v88 + 5, v50);
                  }

                  if (v88[5])
                  {
                    (*(*(v63 + 48) + 16))();

                    v61 = v53;
                    v55 = v64;
                    goto LABEL_39;
                  }

                  v61 = v53;
                }
              }
            }

            if (v26)
            {
              [v64 addObject:v26];
            }
          }

          v23 = [obj countByEnumeratingWithState:&v72 objects:v93 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v55 = v64;
      (*(*(v63 + 48) + 16))();
    }

    else
    {
      v56 = [_RTMap alloc];
      v57 = [(_RTMap *)v56 initWithInput:v82[5]];
      v58 = [(_RTMap *)v57 withBlock:&__block_literal_global_127];

      v55 = v58;
      (*(*(v63 + 48) + 16))();
    }

LABEL_39:
  }

  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v87, 8);
}

void __55__RTVisitManager_fetchStoredVisitsWithOptions_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 count];
      v21 = [v5 firstObject];
      v9 = [v21 date];
      v10 = [v9 stringFromDate];
      v11 = [v5 lastObject];
      v12 = [v11 date];
      v13 = [v12 stringFromDate];
      v14 = *(a1 + 32);
      *buf = 134218754;
      v23 = v8;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "fetched %ld visits from detection date, %@, to, %@, options, %@", buf, 0x2Au);
    }
  }

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v5;
  v17 = v5;

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v6;
  v20 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

id __55__RTVisitManager_fetchStoredVisitsWithOptions_handler___block_invoke_124(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01428];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 date];
  v6 = [v3 type];
  v7 = [v3 location];
  v8 = [v3 entry];
  v9 = [v3 exit];
  v10 = [v3 dataPointCount];
  [v3 confidence];
  v12 = v11;
  v13 = [v3 source];
  v14 = [v3 identifier];

  v15 = [v4 initWithDate:v5 type:v6 location:v7 entry:v8 exit:v9 dataPointCount:v10 confidence:v12 placeInference:0 source:v13 identifier:v14];

  return v15;
}

void __55__RTVisitManager_fetchStoredVisitsWithOptions_handler___block_invoke_2_128(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = *(a1 + 32);
      *buf = 138413059;
      v37 = v8;
      v38 = 2117;
      v39 = v9;
      v40 = 2117;
      v41 = v5;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, visit, %{sensitive}@, LOI, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  v10 = [v5 identifier];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D011D8]);
    v34 = [*(a1 + 32) placeInference];
    v12 = [v34 mapItem];
    v33 = [*(a1 + 32) placeInference];
    v29 = [v33 finerGranularityMapItem];
    v32 = [*(a1 + 32) placeInference];
    v27 = [v32 userType];
    v31 = [*(a1 + 32) placeInference];
    v26 = [v31 userTypeSource];
    v30 = [*(a1 + 32) placeInference];
    v13 = [v30 placeType];
    v28 = [*(a1 + 32) placeInference];
    [v28 referenceLocation];
    v14 = v35 = v6;
    v25 = [*(a1 + 32) placeInference];
    [v25 confidence];
    v16 = v15;
    v17 = [*(a1 + 32) placeInference];
    [v17 finerGranularityMapItemConfidence];
    v19 = v18;
    v20 = [v5 identifier];
    [*(a1 + 32) placeInference];
    v22 = v21 = v5;
    v23 = [v22 preferredName];
    v24 = [v11 initWithMapItem:v12 finerGranularityMapItem:v29 userType:v27 userTypeSource:v26 placeType:v13 referenceLocation:v14 confidence:v16 finerGranularityMapItemConfidence:v19 loiIdentifier:v20 preferredName:v23];

    v5 = v21;
    v6 = v35;

    [*(a1 + 32) setPlaceInference:v24];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)setFindingPointOfInterest:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_findingPointOfInterest != a3)
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
        if (self->_findingPointOfInterest)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v11 = 138412802;
        v12 = v7;
        v14 = v10;
        v13 = 2112;
        if (v3)
        {
          v9 = @"YES";
        }

        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, findingPointOfInterest transitioned from, %@, to, %@", &v11, 0x20u);
      }
    }

    self->_findingPointOfInterest = v3;
    if (v3)
    {
      [(RTVisitManager *)self _registerXpcActivityFindPointOfInterest];
    }

    else
    {
      [(RTVisitManager *)self _unregisterXpcActivityFindPointOfInterest];
    }
  }
}

- (void)_registerXpcActivityFindPointOfInterest
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [(RTVisitManager *)self lastHighConfidenceVisit];
  v6 = [v5 entry];
  [v4 timeIntervalSinceDate:v6];
  v8 = 900.0 - v7;

  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v10;
      v17 = 2048;
      v18 = v8;
      v19 = 2048;
      v20 = 0x404E000000000000;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, delay, %.1f, grace period, %.1f", buf, 0x20u);
    }
  }

  LOBYTE(v13) = 1;
  v11 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:1 priority:0 requireNetworkConnectivity:1024 requireInexpensiveNetworkConnectivity:102400 networkTransferUploadSize:1 networkTransferDownloadSize:9.22337204e18 allowBattery:60.0 powerNap:v8 delay:v13 requireBatteryLevel:0];
  v12 = [(RTVisitManager *)self xpcActivityManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__RTVisitManager__registerXpcActivityFindPointOfInterest__block_invoke;
  v14[3] = &unk_2788C9518;
  v14[4] = self;
  v14[5] = a2;
  [v12 registerActivityWithIdentifier:@"com.apple.routined.visitManager.findPointOfInterest" criteria:v11 handler:v14];
}

void __57__RTVisitManager__registerXpcActivityFindPointOfInterest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTVisitManager__registerXpcActivityFindPointOfInterest__block_invoke_2;
  block[3] = &unk_2788C6300;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  block[4] = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __57__RTVisitManager__registerXpcActivityFindPointOfInterest__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v4 = [*(a1 + 32) lastHighConfidenceVisit];
      *buf = 138412547;
      v12 = v3;
      v13 = 2117;
      v14 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, finding POI for visit, %{sensitive}@", buf, 0x16u);
    }
  }

  v5 = [*(a1 + 32) visitLabeler];
  v6 = [*(a1 + 32) lastHighConfidenceVisit];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__RTVisitManager__registerXpcActivityFindPointOfInterest__block_invoke_139;
  v9[3] = &unk_2788C5D40;
  v9[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  [v5 findPointOfInterestForVisit:v6 clientIdentifier:@"com.apple.CoreRoutine.visitManager" handler:v9];
}

void __57__RTVisitManager__registerXpcActivityFindPointOfInterest__block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTVisitManager__registerXpcActivityFindPointOfInterest__block_invoke_2_140;
  block[3] = &unk_2788C5110;
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = v11;
  v16 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __57__RTVisitManager__registerXpcActivityFindPointOfInterest__block_invoke_2_140(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = [*(a1 + 48) lastHighConfidenceVisit];
      v7 = [*(a1 + 48) pointOfInterestUpdateEnabled];
      v37 = 2117;
      v8 = @"NO";
      *buf = 138413315;
      v36 = v3;
      if (v7)
      {
        v8 = @"YES";
      }

      v38 = v4;
      v39 = 2112;
      v40 = v5;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, updated visit, %{sensitive}@, error, %@, before update, %@, pointOfInterestUpdateEnabled, %@", buf, 0x34u);
    }
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 40), 0);
  }

  [*(a1 + 48) _unregisterXpcActivityFindPointOfInterest];
  v10 = [*(a1 + 48) defaultsManager];
  v11 = [v10 objectForKey:@"VisitManagerPreviousPOIVisitDates"];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v34 = 0;
  v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v14 fromData:v11 error:&v34];
  v16 = v34;
  v17 = [*(a1 + 48) defaultsManager];
  v18 = [v17 objectForKey:@"VisitManagerQueryingBluePOIMaxDailyVisitCount"];

  if (v18)
  {
    v19 = [*(a1 + 48) defaultsManager];
    v20 = [v19 objectForKey:@"VisitManagerQueryingBluePOIMaxDailyVisitCount"];
    v21 = [v20 unsignedIntegerValue];
  }

  else
  {
    v21 = 2;
  }

  if ([v15 count] > v21)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v32 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412290;
      v36 = v32;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "%@, exceed BluePOI query budget!", buf, 0xCu);
    }
  }

  v23 = [MEMORY[0x277CBEAA8] now];
  [v15 addObject:v23];

  v33 = 0;
  v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v33];
  v25 = v33;
  if (!v25)
  {
    v26 = [*(a1 + 48) defaultsManager];
    [v26 setObject:v24 forKey:@"VisitManagerPreviousPOIVisitDates"];
  }

  if ([*(a1 + 48) pointOfInterestUpdateEnabled])
  {
    v27 = [*(a1 + 32) placeInference];
    v28 = [v27 mapItem];

    if (v28)
    {
      v29 = [RTVisitManagerPointOfInterestUpdateNotification alloc];
      v30 = [*(a1 + 32) placeInference];
      v31 = [(RTVisitManagerPointOfInterestUpdateNotification *)v29 initWithPlaceInference:v30];

      [*(a1 + 48) postNotification:v31];
    }
  }
}

- (void)_unregisterXpcActivityFindPointOfInterest
{
  v42[1] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__127;
  v37 = __Block_byref_object_dispose__127;
  v38 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = [(RTVisitManager *)self xpcActivityManager];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __59__RTVisitManager__unregisterXpcActivityFindPointOfInterest__block_invoke;
  v30 = &unk_2788C4618;
  v32 = &v33;
  v6 = v4;
  v31 = v6;
  [v5 unregisterActivityWithIdentifier:@"com.apple.routined.visitManager.findPointOfInterest" handler:&v27];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_392];
    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [v15 filteredArrayUsingPredicate:v14];
    v17 = [v16 firstObject];

    [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v42[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v42 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  if (v23)
  {
    objc_storeStrong(v34 + 5, v21);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = NSStringFromSelector(a2);
      v26 = v34[5];
      *buf = 138412546;
      *&buf[4] = v25;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v33, 8);
}

void __59__RTVisitManager__unregisterXpcActivityFindPointOfInterest__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)shouldFindPointOfInterestForVisit:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  if (_os_feature_enabled_impl() && ([v5 confidence], v7 == *MEMORY[0x277D01470]) && objc_msgSend(v5, "type") == 1 && (objc_msgSend(v5, "placeInference"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "mapItem"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    v16 = [(RTVisitManager *)self defaultsManager];
    v17 = [v16 objectForKey:@"VisitManagerPreviousPOIVisitDates"];

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v42 = 0;
    v36 = v17;
    v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v20 fromData:v17 error:&v42];
    v22 = v42;
    v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __52__RTVisitManager_shouldFindPointOfInterestForVisit___block_invoke;
    v38[3] = &unk_2788CF1E0;
    v35 = v23;
    v39 = v35;
    v41 = a2;
    v24 = v6;
    v40 = v24;
    [v21 enumerateObjectsUsingBlock:v38];
    v25 = [(RTVisitManager *)self defaultsManager];
    v26 = [v25 objectForKey:@"VisitManagerQueryingBluePOIMaxDailyVisitCount"];

    if (v26)
    {
      v27 = [(RTVisitManager *)self defaultsManager];
      [v27 objectForKey:@"VisitManagerQueryingBluePOIMaxDailyVisitCount"];
      v34 = v22;
      v28 = v21;
      v30 = v29 = v20;
      v31 = [v30 unsignedIntegerValue];

      v20 = v29;
      v21 = v28;
      v22 = v34;
    }

    else
    {
      v31 = 2;
    }

    v10 = [v24 count] < v31;
    v37 = 0;
    v32 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v37];
    if (!v37)
    {
      v33 = [(RTVisitManager *)self defaultsManager];
      [v33 setObject:v32 forKey:@"VisitManagerPreviousPOIVisitDates"];
    }
  }

  else
  {
    v10 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      if (v10)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = [v6 count];
      *buf = 138413059;
      v44 = v12;
      v45 = 2112;
      v46 = v13;
      v47 = 2048;
      v48 = v14;
      v49 = 2117;
      v50 = v5;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, result, %@, filtered date count, %lu, visit, %{sensitive}@", buf, 0x2Au);
    }
  }

  return v10;
}

void __52__RTVisitManager_shouldFindPointOfInterestForVisit___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isAfterDate:*(a1 + 32)])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(*(a1 + 48));
        v8 = 138412802;
        v9 = v7;
        v10 = 2048;
        v11 = a3;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, idx, %lu, date, %@", &v8, 0x20u);
      }
    }

    [*(a1 + 40) addObject:v5];
  }
}

- (void)_onVisitIncident:(id)a3 error:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      v27 = v19;
      v28 = 2112;
      v29 = v8;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }
  }

  v10 = [(RTVisitManager *)self visitMonitor];
  if ([v10 monitoringVisitIncidents])
  {
  }

  else
  {
    v11 = [(RTVisitManager *)self spoofMode];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v12 = [[RTVisitManagerVisitIncidentNotification alloc] initWithVisitIncident:v7];
  [(RTNotifier *)self postNotification:v12];

LABEL_9:
  v13 = [(RTVisitManager *)self visitMonitor];
  if ([v13 monitoringLeechedVisitIncidents])
  {
  }

  else
  {
    v14 = [(RTVisitManager *)self spoofMode];

    if (!v14)
    {
      goto LABEL_13;
    }
  }

  v15 = [[RTVisitManagerLeechedVisitIncidentNotification alloc] initWithVisitIncident:v7];
  [(RTNotifier *)self postNotification:v15];

LABEL_13:
  v16 = [(RTVisitManager *)self visitStore];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __41__RTVisitManager__onVisitIncident_error___block_invoke;
  v23 = &unk_2788C4D10;
  v25 = a2;
  v17 = v7;
  v24 = v17;
  [v16 storeVisit:v17 handler:&v20];

  if ([(RTVisitManager *)self shouldFindPointOfInterestForVisit:v17, v20, v21, v22, v23])
  {
    [(RTVisitManager *)self setLastHighConfidenceVisit:v17];
    [(RTVisitManager *)self setFindingPointOfInterest:1];
  }

  if ([v17 type] == 3)
  {
    [v17 confidence];
    if (v18 == *MEMORY[0x277D01470])
    {
      [(RTVisitManager *)self setFindingPointOfInterest:0];
    }
  }
}

void __41__RTVisitManager__onVisitIncident_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412803;
      v8 = v5;
      v9 = 2117;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, visit, %{sensitive}@, error, %@", &v7, 0x20u);
    }
  }
}

- (void)onVisitIncident:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RTVisitManager_onVisitIncident_error___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __40__RTVisitManager_onVisitIncident_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) spoofMode];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 _onVisitIncident:v4 error:v5];
  }

  return result;
}

- (void)_onLowConfidenceVisitIncident:(id)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }
  }

  v10 = [[RTVisitManagerLowConfidenceVisitIncidentNotification alloc] initWithVisitIncident:v7];
  [(RTNotifier *)self postNotification:v10];
  v11 = [(RTVisitManager *)self visitStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__RTVisitManager__onLowConfidenceVisitIncident_error___block_invoke;
  v14[3] = &unk_2788C4D10;
  v15 = v7;
  v16 = a2;
  v12 = v7;
  [v11 storeVisit:v12 handler:v14];
}

void __54__RTVisitManager__onLowConfidenceVisitIncident_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412803;
      v8 = v5;
      v9 = 2117;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, visit, %{sensitive}@, error, %@", &v7, 0x20u);
    }
  }
}

- (void)onLowConfidenceVisitIncident:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTVisitManager_onLowConfidenceVisitIncident_error___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __53__RTVisitManager_onLowConfidenceVisitIncident_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) spoofMode];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 _onLowConfidenceVisitIncident:v4 error:v5];
  }

  return result;
}

- (void)_performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3 > 1)
  {
    (*(v9 + 2))(v9, 0);
  }

  else
  {
    v11 = [(RTVisitManager *)self visitStore];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__RTVisitManager__performPurgeOfType_referenceDate_completion___block_invoke;
    v12[3] = &unk_2788C48C0;
    v13 = v10;
    [v11 purgeVisitsPredating:v8 handler:v12];
  }
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__RTVisitManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)setSpoofMode:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  if (self->_spoofMode == a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"OFF";
      if (v3)
      {
        v5 = @"ON";
      }

      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Spoof mode remains %@.", buf, 0xCu);
    }
  }

  else
  {
    self->_spoofMode = a3;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v7)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Start spoof mode.", buf, 2u);
        }
      }

      v9 = [(RTVisitManager *)self spoofVisitIncidentTokens];
      v10 = [(RTVisitManager *)self registerForSpoofVisitIncidentOfCategory:@"SpoofVisitIncident"];
      [v9 addObject:v10];

      v11 = [(RTVisitManager *)self spoofVisitIncidentTokens];
      v12 = [(RTVisitManager *)self registerForSpoofVisitIncidentOfCategory:@"SpoofLeechedVisitIncident"];
      [v11 addObject:v12];

      v4 = [(RTVisitManager *)self spoofVisitIncidentTokens];
      v13 = [(RTVisitManager *)self registerForSpoofVisitIncidentOfCategory:@"SpoofLowConfidenceVisitIncident"];
      [v4 addObject:v13];
    }

    else
    {
      if (v7)
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "Stop spoof.", buf, 2u);
        }
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v15 = [(RTVisitManager *)self spoofVisitIncidentTokens];
      v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v21;
        do
        {
          v19 = 0;
          do
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(v15);
            }

            -[RTVisitManager unregisterForSpoofVisitIncidentWithToken:](self, "unregisterForSpoofVisitIncidentWithToken:", [*(*(&v20 + 1) + 8 * v19++) intValue]);
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v17);
      }

      v4 = [(RTVisitManager *)self spoofVisitIncidentTokens];
      [v4 removeAllObjects];
    }
  }
}

- (id)registerForSpoofVisitIncidentOfCategory:(id)a3
{
  v4 = a3;
  if ([(RTPlatform *)self->_platform internalInstall])
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__RTVisitManager_registerForSpoofVisitIncidentOfCategory___block_invoke;
    aBlock[3] = &unk_2788CF208;
    objc_copyWeak(&v14, &location);
    aBlock[4] = self;
    v5 = v4;
    v13 = v5;
    v6 = _Block_copy(aBlock);
    out_token = 0;
    v7 = [v5 UTF8String];
    v8 = [(RTNotifier *)self queue];
    notify_register_dispatch(v7, &out_token, v8, v6);

    v9 = [MEMORY[0x277CCABB0] numberWithInt:out_token];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __58__RTVisitManager_registerForSpoofVisitIncidentOfCategory___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x277D01428]) initWithDefaultsDictionanry:v3];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v5 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = *(a1 + 40);
          v8 = 138412546;
          v9 = v6;
          v10 = 2112;
          v11 = v4;
          _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Read %@ from defaults, visitIncident, %@", &v8, 0x16u);
        }
      }

      if (([*(a1 + 40) isEqualToString:@"SpoofVisitIncident"] & 1) != 0 || objc_msgSend(*(a1 + 40), "isEqualToString:", @"SpoofLeechedVisitIncident"))
      {
        [WeakRetained _onVisitIncident:v4 error:0];
      }

      else if ([*(a1 + 40) isEqualToString:@"SpoofLowConfidenceVisitIncident"])
      {
        [WeakRetained _onLowConfidenceVisitIncident:v4 error:0];
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 40);
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Cannot find %@ in defaults", &v8, 0xCu);
      }
    }

LABEL_11:
  }
}

- (void)unregisterForSpoofVisitIncidentWithToken:(int)a3
{
  if ([(RTPlatform *)self->_platform internalInstall])
  {

    notify_cancel(a3);
  }
}

- (void)_simulateVisit:(id)a3 handler:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138739971;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "simulate visit, %{sensitive}@", &buf, 0xCu);
    }
  }

  if (v7)
  {
    if (_os_feature_enabled_impl())
    {
      v10 = [(RTVisitManager *)self platform];
      v11 = [v10 iPhoneDevice];

      v12 = v11 & 1;
    }

    else
    {
      v12 = 0;
    }

    v15 = [(RTVisitManager *)self visitLabeler];
    v59 = 0;
    [v15 labelVisit:v7 clientIdentifier:@"com.apple.CoreRoutine.visitManager" policy:v12 error:&v59];
    v48 = v59;

    v16 = [[RTVisitManagerVisitIncidentNotification alloc] initWithVisitIncident:v7];
    v66[0] = v16;
    v17 = [[RTVisitManagerLeechedVisitIncidentNotification alloc] initWithVisitIncident:v7];
    v66[1] = v17;
    v18 = [[RTVisitManagerLowConfidenceVisitIncidentNotification alloc] initWithVisitIncident:v7];
    v66[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v14 = v19;
    v20 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v20)
    {
      v21 = *v56;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(v14);
          }

          [(RTNotifier *)self postNotification:*(*(&v55 + 1) + 8 * i)];
        }

        v20 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v20);
    }

    if (self->_spoofMode)
    {
      v23 = [(RTVisitManager *)self visitStore];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __41__RTVisitManager__simulateVisit_handler___block_invoke;
      v52[3] = &unk_2788C4D10;
      v54 = a2;
      v24 = v7;
      v53 = v24;
      [v23 storeVisit:v24 handler:v52];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v61 = 0x3032000000;
      v62 = __Block_byref_object_copy__127;
      v63 = __Block_byref_object_dispose__127;
      v64 = 0;
      v25 = dispatch_semaphore_create(0);
      v26 = [(RTVisitManager *)self visitStore];
      v27 = objc_alloc(MEMORY[0x277D01340]);
      v28 = MEMORY[0x277CCABB0];
      [v24 confidence];
      v29 = [v28 numberWithDouble:?];
      v30 = [v27 initWithAscending:0 confidence:v29 dateInterval:0 labelVisit:0 limit:&unk_28459F198];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __41__RTVisitManager__simulateVisit_handler___block_invoke_175;
      v49[3] = &unk_2788C45F0;
      p_buf = &buf;
      v31 = v25;
      v50 = v31;
      [v26 fetchVisitsWithOptions:v30 handler:v49];

      v32 = v31;
      v47 = [MEMORY[0x277CBEAA8] now];
      v33 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v32, v33))
      {
        v46 = [MEMORY[0x277CBEAA8] now];
        [v46 timeIntervalSinceDate:v47];
        v35 = v34;
        v45 = objc_opt_new();
        v36 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_392];
        v37 = [MEMORY[0x277CCACC8] callStackSymbols];
        v38 = [v37 filteredArrayUsingPredicate:v36];
        v39 = [v38 firstObject];

        [v45 submitToCoreAnalytics:v39 type:1 duration:v35];
        v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          *v70 = 0;
          _os_log_fault_impl(&dword_2304B3000, v40, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v70, 2u);
        }

        v41 = MEMORY[0x277CCA9B8];
        v69 = *MEMORY[0x277CCA450];
        *v70 = @"semaphore wait timeout";
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
        v43 = [v41 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v42];
      }

      v44 = [(RTVisitManager *)self visitMonitor];
      [v44 compareVisit:v24 previousVisit:*(*(&buf + 1) + 40)];

      _Block_object_dispose(&buf, 8);
    }

    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v8)
  {
    v13 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    v68 = @"requires a valid visit.";
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v14 = [v13 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v48];
LABEL_25:
    v8[2](v8);
LABEL_26:
  }
}

void __41__RTVisitManager__simulateVisit_handler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412803;
      v8 = v5;
      v9 = 2117;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, visit, %{sensitive}@, error, %@", &v7, 0x20u);
    }
  }
}

intptr_t __41__RTVisitManager__simulateVisit_handler___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (void)simulateVisit:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RTVisitManager_simulateVisit_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_injectRealtimeVisit:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138739971;
      v22 = v7;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "inject visit, %{sensitive}@", buf, 0xCu);
    }
  }

  if (v7)
  {
    v10 = [(RTVisitManager *)self visitStore];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__RTVisitManager__injectRealtimeVisit_handler___block_invoke;
    v15[3] = &unk_2788C56C0;
    v18 = a2;
    v16 = v7;
    v17 = v8;
    [v10 storeVisit:v16 handler:v15];

    v11 = v16;
LABEL_9:

    goto LABEL_10;
  }

  if (v8)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"requires a valid visit.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v12 errorWithDomain:v13 code:7 userInfo:v11];
    (*(v8 + 2))(v8, v14);

    goto LABEL_9;
  }

LABEL_10:
}

void __47__RTVisitManager__injectRealtimeVisit_handler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = *(a1 + 32);
      v8 = 138412803;
      v9 = v6;
      v10 = 2117;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, visit, %{sensitive}@, error, %@", &v8, 0x20u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

- (void)injectRealtimeVisit:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTVisitManager_injectRealtimeVisit_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__RTVisitManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
    v12[3] = &unk_2788C6940;
    v13 = v8;
    v14 = self;
    v15 = v9;
    v16 = a4;
    dispatch_async(v10, v12);

    v11 = v13;
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

void __67__RTVisitManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"options cannot be nil";
    v8 = MEMORY[0x277CBEAC0];
    v9 = v17;
    v10 = &v16;
LABEL_8:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = [v6 errorWithDomain:v7 code:7 userInfo:v11];

    (*(*(a1 + 48) + 16))();
    return;
  }

  v3 = [v2 enumeratedType];
  v4 = [objc_opt_class() vendedClasses];
  v5 = [v4 member:v3];

  if (!v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"the type specified by options is not vended by this manager";
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v15;
    v10 = &v14;
    goto LABEL_8;
  }

  v13 = [*(a1 + 40) visitStore];
  [v13 fetchEnumerableObjectsWithOptions:*(a1 + 32) offset:*(a1 + 56) handler:*(a1 + 48)];
}

@end