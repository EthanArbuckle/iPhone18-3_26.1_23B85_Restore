@interface RTPointOfInterestMonitor
- (BOOL)_exceedPowerBudget;
- (BOOL)_setupPolygonalRegionsForLocations:(id)locations error:(id *)error;
- (BOOL)_shouldMonitorLocation:(id)location;
- (BOOL)_shouldRequestHighAccuracyLocationsForMonitoringRegionLocations:(id)locations;
- (BOOL)_startMonitoringLocation:(id)location error:(id *)error;
- (RTPointOfInterestMonitor)initWithAppClipManager:(id)manager buildingPolygonManager:(id)polygonManager dailyMetrics:(id)metrics defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator eventMetrics:(id)eventMetrics learnedLocationManager:(id)locationManager locationManager:(id)self0 mapServiceManager:(id)self1 motionActivityManager:(id)self2 navigationManager:(id)self3 platform:(id)self4 timerManager:(id)self5 vehicleLocationProvider:(id)self6 visitLabeler:(id)self7 visitStore:(id)self8;
- (RTPointOfInterestMonitor)initWithAppClipManager:(id)manager buildingPolygonManager:(id)polygonManager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator learnedLocationManager:(id)locationManager locationManager:(id)a8 mapServiceManager:(id)serviceManager motionActivityManager:(id)self0 navigationManager:(id)self1 platform:(id)self2 vehicleLocationProvider:(id)self3 visitLabeler:(id)self4 visitStore:(id)self5;
- (id)_polygonalRegionWithRegionIdentifier:(id)identifier polygon:(id)polygon;
- (id)_regionMonitoringLocationsForLocation:(id)location error:(id *)error;
- (void)_onActivityAlarmNotification:(id)notification;
- (void)_onDailyMetricsNotification:(id)notification;
- (void)_onLearnedLocationManagerNotification:(id)notification;
- (void)_onNavigationNotification:(id)notification;
- (void)_onVehicleEventNotification:(id)notification;
- (void)_registerForNotifications;
- (void)_registerForPolygonalRegionEvents;
- (void)_setup;
- (void)_shutdown;
- (void)_startEventMetricsSubmissionTimer;
- (void)_startHighAccuracyLocationRequest;
- (void)_stopHighAccuracyLocationRequest;
- (void)_stopMonitoringAllRegionsIfNeeded;
- (void)_unRegisterForNotifications;
- (void)_unRegisterForPolygonalRegionEvents;
- (void)_updateMonitoringLocationDenyList;
- (void)handlePolygonalRegionCallback:(int64_t)callback region:(id)region clientIdentifier:(id)identifier;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)onActivityAlarmNotification:(id)notification;
- (void)onDailyMetricsNotification:(id)notification;
- (void)onLearnedLocationManagerNotification:(id)notification;
- (void)onNavigationNotification:(id)notification;
- (void)onVehicleEventNotification:(id)notification;
- (void)shutdownWithHandler:(id)handler;
@end

@implementation RTPointOfInterestMonitor

- (RTPointOfInterestMonitor)initWithAppClipManager:(id)manager buildingPolygonManager:(id)polygonManager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator learnedLocationManager:(id)locationManager locationManager:(id)a8 mapServiceManager:(id)serviceManager motionActivityManager:(id)self0 navigationManager:(id)self1 platform:(id)self2 vehicleLocationProvider:(id)self3 visitLabeler:(id)self4 visitStore:(id)self5
{
  storeCopy = store;
  labelerCopy = labeler;
  providerCopy = provider;
  platformCopy = platform;
  navigationManagerCopy = navigationManager;
  activityManagerCopy = activityManager;
  serviceManagerCopy = serviceManager;
  v39 = a8;
  locationManagerCopy = locationManager;
  calculatorCopy = calculator;
  defaultsManagerCopy = defaultsManager;
  polygonManagerCopy = polygonManager;
  managerCopy = manager;
  v24 = [[RTPointOfInterestMonitorDailyMetrics alloc] initWithDefaultsManager:defaultsManagerCopy];
  v21 = [[RTPointOfInterestMonitorEventMetrics alloc] initWithDistanceCalculator:calculatorCopy];
  v26 = objc_opt_new();
  v33 = [(RTPointOfInterestMonitor *)self initWithAppClipManager:managerCopy buildingPolygonManager:polygonManagerCopy dailyMetrics:v24 defaultsManager:defaultsManagerCopy distanceCalculator:calculatorCopy eventMetrics:v21 learnedLocationManager:locationManagerCopy locationManager:v39 mapServiceManager:serviceManagerCopy motionActivityManager:activityManagerCopy navigationManager:navigationManagerCopy platform:platformCopy timerManager:v26 vehicleLocationProvider:providerCopy visitLabeler:labelerCopy visitStore:storeCopy];

  return v33;
}

- (RTPointOfInterestMonitor)initWithAppClipManager:(id)manager buildingPolygonManager:(id)polygonManager dailyMetrics:(id)metrics defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator eventMetrics:(id)eventMetrics learnedLocationManager:(id)locationManager locationManager:(id)self0 mapServiceManager:(id)self1 motionActivityManager:(id)self2 navigationManager:(id)self3 platform:(id)self4 timerManager:(id)self5 vehicleLocationProvider:(id)self6 visitLabeler:(id)self7 visitStore:(id)self8
{
  managerCopy = manager;
  polygonManagerCopy = polygonManager;
  polygonManagerCopy2 = polygonManager;
  metricsCopy = metrics;
  defaultsManagerCopy = defaultsManager;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  eventMetricsCopy = eventMetrics;
  locationManagerCopy = locationManager;
  v54 = a10;
  serviceManagerCopy = serviceManager;
  activityManagerCopy = activityManager;
  navigationManagerCopy = navigationManager;
  platformCopy = platform;
  timerManagerCopy = timerManager;
  providerCopy = provider;
  labelerCopy = labeler;
  storeCopy = store;
  v58 = storeCopy;
  if (!managerCopy)
  {
    v26 = polygonManagerCopy2;
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: appClipManager", buf, 2u);
    }

    v42 = 0;
    v27 = metricsCopy;
    v28 = eventMetricsCopy;
    v29 = defaultsManagerCopy;
    v44 = calculatorCopy2;
    v31 = v54;
    v30 = locationManagerCopy;
    goto LABEL_56;
  }

  v26 = polygonManagerCopy2;
  if (polygonManagerCopy2)
  {
    v27 = metricsCopy;
    v28 = eventMetricsCopy;
    v29 = defaultsManagerCopy;
    v31 = v54;
    v30 = locationManagerCopy;
    if (metricsCopy)
    {
      if (defaultsManagerCopy)
      {
        if (calculatorCopy2)
        {
          if (eventMetricsCopy)
          {
            if (locationManagerCopy)
            {
              if (v54)
              {
                if (serviceManagerCopy)
                {
                  if (activityManagerCopy)
                  {
                    if (navigationManagerCopy)
                    {
                      if (platformCopy)
                      {
                        if (timerManagerCopy)
                        {
                          if (providerCopy)
                          {
                            if (labelerCopy)
                            {
                              if (storeCopy)
                              {
                                v70.receiver = self;
                                v70.super_class = RTPointOfInterestMonitor;
                                v61 = [(RTNotifier *)&v70 init];
                                if (v61)
                                {
                                  objc_storeStrong(&v61->_appClipManager, manager);
                                  objc_storeStrong(&v61->_buildingPolygonManager, polygonManagerCopy);
                                  objc_storeStrong(&v61->_defaultsManager, defaultsManager);
                                  objc_storeStrong(&v61->_dailyMetrics, metrics);
                                  objc_storeStrong(&v61->_distanceCalculator, calculatorCopy);
                                  objc_storeStrong(&v61->_eventMetrics, eventMetrics);
                                  objc_storeStrong(&v61->_learnedLocationManager, locationManager);
                                  objc_storeStrong(&v61->_locationManager, a10);
                                  objc_storeStrong(&v61->_motionActivityManager, activityManager);
                                  objc_storeStrong(&v61->_mapServiceManager, serviceManager);
                                  objc_storeStrong(&v61->_navigationManager, navigationManager);
                                  objc_storeStrong(&v61->_platform, platform);
                                  objc_storeStrong(&v61->_vehicleLocationProvider, provider);
                                  objc_storeStrong(&v61->_timerManager, timerManager);
                                  objc_storeStrong(&v61->_visitLabeler, labeler);
                                  objc_storeStrong(&v61->_visitStore, store);
                                  v32 = objc_opt_class();
                                  v33 = NSStringFromClass(v32);
                                  regionMonitoringClientIdentifer = v61->_regionMonitoringClientIdentifer;
                                  v61->_regionMonitoringClientIdentifer = v33;

                                  lastMonitoringDate = v61->_lastMonitoringDate;
                                  v61->_lastMonitoringDate = 0;

                                  locationRequestTimer = v61->_locationRequestTimer;
                                  v61->_locationRequestTimer = 0;

                                  metricsSubmissionTimer = v61->_metricsSubmissionTimer;
                                  v61->_metricsSubmissionTimer = 0;

                                  regionMonitorTimer = v61->_regionMonitorTimer;
                                  v61->_regionMonitorTimer = 0;

                                  v61->_requestingHighAccuracyLocation = 0;
                                  navigationDestination = v61->_navigationDestination;
                                  v61->_navigationDestination = 0;

                                  v61->_registeredForRegionEvents = 0;
                                  v40 = objc_opt_new();
                                  monitoringLocationDenyList = v61->_monitoringLocationDenyList;
                                  v61->_monitoringLocationDenyList = v40;
                                }

                                [(RTService *)v61 setup];
                                v42 = v61;
                                self = v42;
                                goto LABEL_55;
                              }

                              v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                              v46 = serviceManagerCopy;
                              v44 = calculatorCopy2;
                              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 0;
                                v49 = "Invalid parameter not satisfying: visitStore";
                                goto LABEL_38;
                              }

                              goto LABEL_24;
                            }

                            v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 0;
                              v48 = "Invalid parameter not satisfying: visitLabeler";
                              goto LABEL_53;
                            }

LABEL_54:

                            v42 = 0;
LABEL_55:
                            v44 = calculatorCopy2;
LABEL_56:
                            v46 = serviceManagerCopy;
                            goto LABEL_57;
                          }

                          v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                          if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_54;
                          }

                          *buf = 0;
                          v48 = "Invalid parameter not satisfying: vehicleLocationProvider";
                        }

                        else
                        {
                          v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                          if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_54;
                          }

                          *buf = 0;
                          v48 = "Invalid parameter not satisfying: timerManager";
                        }
                      }

                      else
                      {
                        v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_54;
                        }

                        *buf = 0;
                        v48 = "Invalid parameter not satisfying: platform";
                      }
                    }

                    else
                    {
                      v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_54;
                      }

                      *buf = 0;
                      v48 = "Invalid parameter not satisfying: navigationManager";
                    }
                  }

                  else
                  {
                    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_54;
                    }

                    *buf = 0;
                    v48 = "Invalid parameter not satisfying: motionActivityManager";
                  }
                }

                else
                {
                  v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_54;
                  }

                  *buf = 0;
                  v48 = "Invalid parameter not satisfying: mapServiceManager";
                }
              }

              else
              {
                v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_54;
                }

                *buf = 0;
                v48 = "Invalid parameter not satisfying: locationManager";
              }
            }

            else
            {
              v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_54;
              }

              *buf = 0;
              v48 = "Invalid parameter not satisfying: learnedLocationManager";
            }
          }

          else
          {
            v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_54;
            }

            *buf = 0;
            v48 = "Invalid parameter not satisfying: eventMetrics";
          }
        }

        else
        {
          v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_54;
          }

          *buf = 0;
          v48 = "Invalid parameter not satisfying: distanceCalculator";
        }
      }

      else
      {
        v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_54;
        }

        *buf = 0;
        v48 = "Invalid parameter not satisfying: defaultsManager";
      }
    }

    else
    {
      v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      *buf = 0;
      v48 = "Invalid parameter not satisfying: dailyMetrics";
    }

LABEL_53:
    _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, v48, buf, 2u);
    goto LABEL_54;
  }

  v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  v27 = metricsCopy;
  v28 = eventMetricsCopy;
  v29 = defaultsManagerCopy;
  v46 = serviceManagerCopy;
  v44 = calculatorCopy2;
  v31 = v54;
  v30 = locationManagerCopy;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v49 = "Invalid parameter not satisfying: buildingPolygonManager";
LABEL_38:
    _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, v49, buf, 2u);
  }

LABEL_24:

  v42 = 0;
LABEL_57:

  return v42;
}

- (void)_setup
{
  if (_os_feature_enabled_impl())
  {
    platform = [(RTPointOfInterestMonitor *)self platform];
    iPhoneDevice = [platform iPhoneDevice];

    if (iPhoneDevice)
    {
      eventMetrics = [(RTPointOfInterestMonitor *)self eventMetrics];
      [eventMetrics reset];

      [(RTPointOfInterestMonitor *)self _registerForNotifications];
      [(RTPointOfInterestMonitor *)self _registerForPolygonalRegionEvents];

      [(RTPointOfInterestMonitor *)self _stopMonitoringAllRegionsIfNeeded];
    }
  }
}

- (void)_registerForNotifications
{
  navigationManager = [(RTPointOfInterestMonitor *)self navigationManager];
  v4 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
  [navigationManager addObserver:self selector:sel_onNavigationNotification_ name:v4];

  navigationManager2 = [(RTPointOfInterestMonitor *)self navigationManager];
  v6 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  [navigationManager2 addObserver:self selector:sel_onNavigationNotification_ name:v6];

  vehicleLocationProvider = [(RTPointOfInterestMonitor *)self vehicleLocationProvider];
  v8 = +[(RTNotification *)RTVehicleEventNotification];
  [vehicleLocationProvider addObserver:self selector:sel_onVehicleEventNotification_ name:v8];

  motionActivityManager = [(RTPointOfInterestMonitor *)self motionActivityManager];
  v10 = +[(RTNotification *)RTMotionActivityManagerNotificationActivityAlarm];
  [motionActivityManager addObserver:self selector:sel_onActivityAlarmNotification_ name:v10];

  learnedLocationManager = [(RTPointOfInterestMonitor *)self learnedLocationManager];
  v12 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
  [learnedLocationManager addObserver:self selector:sel_onLearnedLocationManagerNotification_ name:v12];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

- (void)_registerForPolygonalRegionEvents
{
  locationManager = [(RTPointOfInterestMonitor *)self locationManager];
  regionMonitoringClientIdentifer = self->_regionMonitoringClientIdentifer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__RTPointOfInterestMonitor__registerForPolygonalRegionEvents__block_invoke;
  v6[3] = &unk_2788C5298;
  v6[4] = self;
  v6[5] = a2;
  [locationManager registerForRegionEventsWithClientIdentifier:regionMonitoringClientIdentifer handler:v6];

  [(RTPointOfInterestMonitor *)self setRegisteredForRegionEvents:1];
}

void __61__RTPointOfInterestMonitor__registerForPolygonalRegionEvents__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3 == 4)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 40));
      v12 = [RTLocationManager stringForRegionCallbackType:4];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      v13 = "%@, regionMonitoring failure, %@, error, %@";
      goto LABEL_10;
    }
  }

  else if (a3 == 3)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 40));
      v12 = [RTLocationManager stringForRegionCallbackType:3];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      v13 = "%@, regionMonitoring client registration failure, %@, error, %@";
LABEL_10:
      _os_log_fault_impl(&dword_2304B3000, v10, OS_LOG_TYPE_FAULT, v13, &v14, 0x20u);
    }
  }

  else
  {
    if (!v8)
    {
      [*(a1 + 32) handlePolygonalRegionCallback:a3 region:v7 clientIdentifier:*(*(a1 + 32) + 168)];
      goto LABEL_12;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 40));
      v12 = [RTLocationManager stringForRegionCallbackType:a3];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      v13 = "%@, regionMonitoring %@, error, %@";
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)_stopMonitoringAllRegionsIfNeeded
{
  v25 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTPointOfInterestMonitor *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"InstantPOILastFenceSetupDate"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1800.0];
    v7 = [v5 isBeforeDate:v6];
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      stringFromDate = [v5 stringFromDate];
      v11 = stringFromDate;
      v12 = @"NO";
      *buf = 138412802;
      v20 = v9;
      v21 = 2112;
      if (v7)
      {
        v12 = @"YES";
      }

      v22 = stringFromDate;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, last fence setup date, %@, shouldStopMonitoringAllRegions, %@", buf, 0x20u);
    }
  }

  if (v7)
  {
    locationManager = [(RTPointOfInterestMonitor *)self locationManager];
    regionMonitoringClientIdentifer = [(RTPointOfInterestMonitor *)self regionMonitoringClientIdentifer];
    v18 = 0;
    [locationManager stopMonitoringAllRegionsForClientIdentifier:regionMonitoringClientIdentifer error:&v18];
    v15 = v18;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = NSStringFromSelector(a2);
        *buf = 138412546;
        v20 = v17;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, stop monitoring all regions, error, %@", buf, 0x16u);
      }
    }
  }
}

- (void)_updateMonitoringLocationDenyList
{
  v35 = *MEMORY[0x277D85DE8];
  monitoringLocationDenyList = [(RTPointOfInterestMonitor *)self monitoringLocationDenyList];
  [monitoringLocationDenyList removeAllObjects];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  learnedLocationManager = [(RTPointOfInterestMonitor *)self learnedLocationManager];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__RTPointOfInterestMonitor__updateMonitoringLocationDenyList__block_invoke;
  v27[3] = &unk_2788C52C0;
  v30 = a2;
  v9 = v5;
  v28 = v9;
  v10 = v7;
  v29 = v10;
  [learnedLocationManager fetchLocationsOfInterestWithPlaceType:1 handler:v27];

  dispatch_group_enter(v10);
  learnedLocationManager2 = [(RTPointOfInterestMonitor *)self learnedLocationManager];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __61__RTPointOfInterestMonitor__updateMonitoringLocationDenyList__block_invoke_60;
  v23 = &unk_2788C52C0;
  v26 = a2;
  v12 = v6;
  v24 = v12;
  v13 = v10;
  v25 = v13;
  [learnedLocationManager2 fetchLocationsOfInterestWithPlaceType:2 handler:&v20];

  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = [(RTPointOfInterestMonitor *)self monitoringLocationDenyList:v20];
  [v14 addObjectsFromArray:v9];

  monitoringLocationDenyList2 = [(RTPointOfInterestMonitor *)self monitoringLocationDenyList];
  [monitoringLocationDenyList2 addObjectsFromArray:v12];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      monitoringLocationDenyList3 = [(RTPointOfInterestMonitor *)self monitoringLocationDenyList];
      v19 = [monitoringLocationDenyList3 count];
      *buf = 138412546;
      v32 = v17;
      v33 = 2048;
      v34 = v19;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, monitoringLocationDenyList size, %lu", buf, 0x16u);
    }
  }
}

void __61__RTPointOfInterestMonitor__updateMonitoringLocationDenyList__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
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
              v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
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

void __61__RTPointOfInterestMonitor__updateMonitoringLocationDenyList__block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
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
              v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
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

- (void)shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__RTPointOfInterestMonitor_shutdownWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __48__RTPointOfInterestMonitor_shutdownWithHandler___block_invoke(uint64_t a1)
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
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@ %@", &v9, 0x16u);
    }
  }

  [(RTTimer *)self->_locationRequestTimer invalidate];
  locationRequestTimer = self->_locationRequestTimer;
  self->_locationRequestTimer = 0;

  [(RTTimer *)self->_regionMonitorTimer invalidate];
  regionMonitorTimer = self->_regionMonitorTimer;
  self->_regionMonitorTimer = 0;

  [(RTTimer *)self->_metricsSubmissionTimer invalidate];
  metricsSubmissionTimer = self->_metricsSubmissionTimer;
  self->_metricsSubmissionTimer = 0;

  [(RTPointOfInterestMonitor *)self _unRegisterForNotifications];
  if ([(RTPointOfInterestMonitor *)self registeredForRegionEvents])
  {
    [(RTPointOfInterestMonitor *)self _unRegisterForPolygonalRegionEvents];
  }
}

- (void)_unRegisterForNotifications
{
  navigationManager = [(RTPointOfInterestMonitor *)self navigationManager];
  v4 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
  [navigationManager removeObserver:self fromNotification:v4];

  vehicleLocationProvider = [(RTPointOfInterestMonitor *)self vehicleLocationProvider];
  v6 = +[(RTNotification *)RTVehicleEventNotification];
  [vehicleLocationProvider removeObserver:self fromNotification:v6];

  locationManager = [(RTPointOfInterestMonitor *)self locationManager];
  v7 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  [locationManager removeObserver:self fromNotification:v7];
}

- (void)_unRegisterForPolygonalRegionEvents
{
  locationManager = [(RTPointOfInterestMonitor *)self locationManager];
  regionMonitoringClientIdentifer = self->_regionMonitoringClientIdentifer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__RTPointOfInterestMonitor__unRegisterForPolygonalRegionEvents__block_invoke;
  v6[3] = &unk_2788C4D10;
  v6[4] = self;
  v6[5] = a2;
  [locationManager unregisterForRegionEventsWithClientIdentifier:regionMonitoringClientIdentifer handler:v6];
}

void __63__RTPointOfInterestMonitor__unRegisterForPolygonalRegionEvents__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_3;
    }

    v5 = NSStringFromSelector(*(a1 + 40));
    v7 = *(*(a1 + 32) + 168);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_fault_impl(&dword_2304B3000, v4, OS_LOG_TYPE_FAULT, "%@, regionMonitoring unregistration failure, client, %@, error, %@", &v8, 0x20u);
LABEL_9:

    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = *(*(a1 + 32) + 168);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = 0;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, client, %@, error, %@", &v8, 0x20u);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
}

- (void)handlePolygonalRegionCallback:(int64_t)callback region:(id)region clientIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (regionCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "[RTPointOfInterestMonitor handlePolygonalRegionCallback:region:clientIdentifier:]";
    v23 = 1024;
    LODWORD(v24) = 426;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: region (in %s:%d)", buf, 0x12u);
  }

  if (!v11)
  {
LABEL_7:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTPointOfInterestMonitor handlePolygonalRegionCallback:region:clientIdentifier:]";
      v23 = 1024;
      LODWORD(v24) = 427;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clientIdentifier (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(a2);
      v16 = [RTLocationManager stringForRegionCallbackType:callback];
      *buf = 138413059;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2117;
      v26 = regionCopy;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, callbackType, %@, region, %{sensitive}@, clientIdentifier, %@", buf, 0x2Au);
    }
  }

  if (callback == 1)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__RTPointOfInterestMonitor_handlePolygonalRegionCallback_region_clientIdentifier___block_invoke;
    block[3] = &unk_2788C5020;
    block[4] = self;
    v19 = regionCopy;
    v20 = a2;
    dispatch_async(queue, block);
  }
}

void __82__RTPointOfInterestMonitor_handlePolygonalRegionCallback_region_clientIdentifier___block_invoke(uint64_t a1)
{
  v107 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) eventMetrics];
  [v2 setObject:MEMORY[0x277CBEC38] forKey:@"isFenceBreak"];

  v3 = [*(a1 + 32) eventMetrics];
  v4 = [v3 highAccuracyLocationRequestStartDate];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    v6 = [*(a1 + 32) eventMetrics];
    v7 = [v6 highAccuracyLocationRequestStartDate];
    [v5 timeIntervalSinceDate:v7];
    v9 = v8;

    if (v9 <= 60.0)
    {
      v10 = [*(a1 + 32) eventMetrics];
      [v10 setObject:MEMORY[0x277CBEC38] forKey:@"isGPSRunningWhenFenceBreak"];
    }
  }

  v11 = [*(a1 + 32) eventMetrics];
  v12 = [*(a1 + 40) identifier];
  [v11 updateBuildingPolygonMetricsForRegionIdentifer:v12];

  v13 = [*(a1 + 32) eventMetrics];
  v14 = [v13 arrivalEventDate];

  if (v14)
  {
    v15 = [*(a1 + 32) eventMetrics];
    v16 = MEMORY[0x277CCABB0];
    v17 = [MEMORY[0x277CBEAA8] now];
    v18 = [*(a1 + 32) eventMetrics];
    v19 = [v18 arrivalEventDate];
    [v17 timeIntervalSinceDate:v19];
    v21 = [v16 numberWithUnsignedInteger:vcvtad_u64_f64(v20)];
    [v15 setObject:v21 forKey:@"fenceBreakLatency"];
  }

  v22 = [*(a1 + 32) locationRequestTimer];
  [v22 invalidate];

  [*(a1 + 32) setLocationRequestTimer:0];
  [*(a1 + 32) _stopHighAccuracyLocationRequest];
  v23 = [*(a1 + 32) locationManager];
  v24 = [v23 lastLocation];

  v25 = [*(a1 + 32) eventMetrics];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v24, "signalEnvironmentType")}];
  [v25 setObject:v26 forKey:@"signalEnvironment"];

  v27 = objc_alloc(MEMORY[0x277D01160]);
  [v24 coordinate];
  v29 = v28;
  [v24 coordinate];
  v31 = v30;
  [v24 horizontalAccuracy];
  v33 = v32;
  v34 = [v24 timestamp];
  v35 = [v27 initWithLatitude:v34 longitude:v29 horizontalUncertainty:v31 date:v33];

  v36 = [MEMORY[0x277CBEAA8] now];
  v37 = objc_alloc(MEMORY[0x277D01428]);
  v91 = v35;
  v38 = [v37 initWithDate:v36 type:1 location:v35 entry:v36 exit:0 dataPointCount:0 confidence:*MEMORY[0x277D01470] placeInference:0 source:2];
  v39 = [*(a1 + 32) visitLabeler];
  v100 = 0;
  [v39 labelVisit:v38 clientIdentifier:@"com.apple.CoreRoutine.instantPOI" policy:32 error:&v100];
  v40 = v100;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412803;
      v102 = v42;
      v103 = 2117;
      v104 = v38;
      v105 = 2112;
      v106 = v40;
      _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%@, labeled visit, %{sensitive}@, error, %@", buf, 0x20u);
    }
  }

  v43 = [*(a1 + 32) defaultsManager];
  v44 = [v43 objectForKey:@"InstantPOIEvalMode"];
  v45 = [v44 BOOLValue];

  if (v45)
  {
    v46 = [[RTPointOfInterestMonitorVisitNotification alloc] initWithVisit:v38];
    [*(a1 + 32) postNotification:v46];
  }

  v92 = v40;
  v47 = [MEMORY[0x277CBEAA8] now];
  [v47 timeIntervalSinceDate:v36];
  v49 = v48;

  v50 = [*(a1 + 32) eventMetrics];
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtad_u64_f64(v49)];
  [v50 setObject:v51 forKey:@"bluePOILatency"];

  v52 = [*(a1 + 32) eventMetrics];
  v53 = [v52 arrivalEventDate];

  if (v53)
  {
    v54 = [MEMORY[0x277CBEAA8] now];
    v55 = [*(a1 + 32) eventMetrics];
    v56 = [v55 arrivalEventDate];
    [v54 timeIntervalSinceDate:v56];
    v58 = v57;

    v59 = [*(a1 + 32) eventMetrics];
    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtad_u64_f64(v58)];
    [v59 setObject:v60 forKey:@"pOIVisitDetectionLatency"];
  }

  v61 = vcvtad_u64_f64(v49 / 5.0);
  if (v61 >= 2)
  {
    v62 = 2;
  }

  else
  {
    v62 = v61;
  }

  v63 = [*(a1 + 32) eventMetrics];
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62];
  [v63 setObject:v64 forKey:@"BluePOIQueryCount"];

  if (v61)
  {
    do
    {
      v65 = [*(a1 + 32) dailyMetrics];
      [v65 increaseCountForKey:@"InstantPOIMetricsBluePOIQueryCount"];

      --v62;
    }

    while (v62);
  }

  v66 = v92;
  if (v92 || ([v38 placeInference], v68 = objc_claimAutoreleasedReturnValue(), v68, !v68))
  {
    v67 = [*(a1 + 32) eventMetrics];
    [v67 submit];
  }

  else
  {
    v69 = [*(a1 + 32) regionMonitorTimer];
    [v69 invalidate];

    [*(a1 + 32) setRegionMonitorTimer:0];
    v70 = [*(a1 + 32) locationManager];
    v71 = *(*(a1 + 32) + 168);
    v99 = 0;
    [v70 stopMonitoringAllRegionsForClientIdentifier:v71 error:&v99];
    v67 = v99;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v72 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v102 = v73;
        v103 = 2112;
        v104 = v67;
        _os_log_impl(&dword_2304B3000, v72, OS_LOG_TYPE_INFO, "%@, stop monitor all regions, error, %@", buf, 0x16u);
      }
    }

    v74 = [*(a1 + 32) visitStore];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __82__RTPointOfInterestMonitor_handlePolygonalRegionCallback_region_clientIdentifier___block_invoke_74;
    v96[3] = &unk_2788C4D10;
    v98 = *(a1 + 48);
    v75 = v38;
    v97 = v75;
    [v74 storeVisit:v75 handler:v96];

    v76 = [*(a1 + 32) eventMetrics];
    [v76 setObject:MEMORY[0x277CBEC38] forKey:@"bluePOIHasResult"];

    v77 = [*(a1 + 32) eventMetrics];
    v78 = MEMORY[0x277CCABB0];
    v79 = [v75 placeInference];
    [v79 confidence];
    v81 = [v78 numberWithUnsignedInteger:(v80 * 100.0)];
    [v77 setObject:v81 forKey:@"bluePOIConfidenceScore"];

    v82 = [*(a1 + 32) dailyMetrics];
    [v82 increaseCountForKey:@"InstantPOIMetricsVisitCount"];

    v83 = objc_alloc(MEMORY[0x277D011B0]);
    v84 = objc_opt_class();
    v85 = NSStringFromClass(v84);
    v86 = [v83 initWithUseBackgroundTraits:1 analyticsIdentifier:v85 clientIdentifier:@"com.apple.CoreRoutine.instantPOI"];

    v87 = [*(a1 + 32) mapServiceManager];
    v88 = [v75 placeInference];
    v89 = [v88 mapItem];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __82__RTPointOfInterestMonitor_handlePolygonalRegionCallback_region_clientIdentifier___block_invoke_79;
    v93[3] = &unk_2788C52C0;
    v90 = *(a1 + 48);
    v93[4] = *(a1 + 32);
    v95 = v90;
    v94 = v75;
    [v87 fetchAppClipURLsForMapItem:v89 options:v86 handler:v93];

    v66 = 0;
  }
}

void __82__RTPointOfInterestMonitor_handlePolygonalRegionCallback_region_clientIdentifier___block_invoke_74(uint64_t a1, void *a2)
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

void __82__RTPointOfInterestMonitor_handlePolygonalRegionCallback_region_clientIdentifier___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__RTPointOfInterestMonitor_handlePolygonalRegionCallback_region_clientIdentifier___block_invoke_2;
  block[3] = &unk_2788C50E8;
  v8 = *(a1 + 40);
  v16 = *(a1 + 48);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v15 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __82__RTPointOfInterestMonitor_handlePolygonalRegionCallback_region_clientIdentifier___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = [*(a1 + 32) count];
      v5 = [*(a1 + 40) placeInference];
      v6 = [v5 mapItem];
      v7 = *(a1 + 48);
      v10 = 138413059;
      v11 = v3;
      v12 = 2048;
      v13 = v4;
      v14 = 2117;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, app clip count, %lu, mapItem, %{sensitive}@, error, %@", &v10, 0x2Au);
    }
  }

  if ([*(a1 + 32) count])
  {
    v8 = [*(a1 + 56) eventMetrics];
    [v8 setObject:MEMORY[0x277CBEC38] forKey:@"pOIHasAppClip"];
  }

  v9 = [*(a1 + 56) eventMetrics];
  [v9 submit];
}

- (id)_polygonalRegionWithRegionIdentifier:(id)identifier polygon:(id)polygon
{
  v55 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  polygonCopy = polygon;
  v7 = polygonCopy;
  if (!identifierCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Invalid parameter not satisfying: regionIdentifier";
      goto LABEL_27;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_23;
  }

  vertices = [polygonCopy vertices];
  v9 = [vertices count];

  if (v9 <= 2)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Invalid parameter not satisfying: polygon.vertices.count >= kRTBuildingPolygonManagerMinimumNumberOfVertices";
LABEL_27:
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v10 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      vertices2 = [v7 vertices];
      *buf = 138412802;
      v50 = v14;
      v51 = 2112;
      v52 = identifierCopy;
      v53 = 2048;
      v54 = [vertices2 count];
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, region identifier, %@, polygon vertices count, %lu", buf, 0x20u);
    }
  }

  v41 = identifierCopy;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  vertices3 = [v7 vertices];
  v17 = [vertices3 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = MEMORY[0x277D86220];
    v21 = *v45;
    v22 = RTLogFacilityVisit;
    do
    {
      v23 = 0;
      v43 = v18;
      do
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(vertices3);
        }

        v24 = *(*(&v44 + 1) + 8 * v23);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v25 = _rt_log_facility_get_os_log(v22);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            NSStringFromSelector(a2);
            v26 = v21;
            v27 = v22;
            v28 = v20;
            v29 = vertices3;
            v31 = v30 = v10;
            *buf = 138412802;
            v50 = v31;
            v51 = 2048;
            v52 = v19;
            v53 = 2112;
            v54 = v24;
            _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, vertex idx, %lu, coordinate, %@", buf, 0x20u);

            v10 = v30;
            vertices3 = v29;
            v20 = v28;
            v22 = v27;
            v21 = v26;
            v18 = v43;
          }
        }

        v32 = objc_alloc(MEMORY[0x277CBFCE0]);
        [v24 latitude];
        v34 = v33;
        [v24 longitude];
        v36 = CLLocationCoordinate2DMake(v34, v35);
        v37 = [v32 initWithCoordinate:{v36.latitude, v36.longitude}];
        [v10 addObject:v37];
        ++v19;

        ++v23;
      }

      while (v18 != v23);
      v18 = [vertices3 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v18);
  }

  firstObject = [v10 firstObject];
  [v10 addObject:firstObject];

  identifierCopy = v41;
  v12 = [objc_alloc(MEMORY[0x277CBFCD0]) initWithVertices:v10 identifier:v41];
  [v12 setNotifyOnEntry:1];
  [v12 setNotifyOnExit:0];
  v7 = v40;
LABEL_23:

  return v12;
}

- (void)_startHighAccuracyLocationRequest
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(RTPointOfInterestMonitor *)self requestingHighAccuracyLocation])
  {
    [(RTPointOfInterestMonitor *)self setRequestingHighAccuracyLocation:1];
    defaultsManager = [(RTPointOfInterestMonitor *)self defaultsManager];
    v5 = [defaultsManager objectForKey:@"InstantPOIHighAccuracyLocationRequestCount"];
    unsignedIntValue = [v5 unsignedIntValue];

    defaultsManager2 = [(RTPointOfInterestMonitor *)self defaultsManager];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue + 1];
    [defaultsManager2 setObject:v8 forKey:@"InstantPOIHighAccuracyLocationRequestCount"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412290;
        v29 = v10;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, start high accuracy location request", buf, 0xCu);
      }
    }

    locationManager = [(RTPointOfInterestMonitor *)self locationManager];
    v12 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
    [locationManager addObserver:self selector:sel__onNoOpLocationNotification_ name:v12];

    timerManager = [(RTPointOfInterestMonitor *)self timerManager];
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@.locationRequestTimer", v16];
    queue = [(RTNotifier *)self queue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__RTPointOfInterestMonitor__startHighAccuracyLocationRequest__block_invoke;
    v27[3] = &unk_2788C52E8;
    v27[4] = self;
    v27[5] = a2;
    v19 = [timerManager timerWithIdentifier:v17 queue:queue handler:v27];
    [(RTPointOfInterestMonitor *)self setLocationRequestTimer:v19];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = NSStringFromSelector(a2);
        *buf = 138412290;
        v29 = v21;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, locationRequestTimer start", buf, 0xCu);
      }
    }

    locationRequestTimer = [(RTPointOfInterestMonitor *)self locationRequestTimer];
    [locationRequestTimer fireAfterDelay:60.0 interval:INFINITY leeway:1.0];

    locationRequestTimer2 = [(RTPointOfInterestMonitor *)self locationRequestTimer];
    [locationRequestTimer2 resume];

    v24 = [MEMORY[0x277CBEAA8] now];
    eventMetrics = [(RTPointOfInterestMonitor *)self eventMetrics];
    [eventMetrics setHighAccuracyLocationRequestStartDate:v24];

    dailyMetrics = [(RTPointOfInterestMonitor *)self dailyMetrics];
    [dailyMetrics increaseCountForKey:@"InstantPOIMetricsHighAccuracyLocationRequestCount"];
  }
}

uint64_t __61__RTPointOfInterestMonitor__startHighAccuracyLocationRequest__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, locationRequestTimer expiry", &v6, 0xCu);
    }
  }

  v4 = [*(a1 + 32) locationRequestTimer];
  [v4 invalidate];

  [*(a1 + 32) setLocationRequestTimer:0];
  return [*(a1 + 32) _stopHighAccuracyLocationRequest];
}

- (void)_stopHighAccuracyLocationRequest
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(RTPointOfInterestMonitor *)self requestingHighAccuracyLocation])
  {
    [(RTPointOfInterestMonitor *)self setRequestingHighAccuracyLocation:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(a2);
        v17 = 138412290;
        v18 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, stop high accuracy location request", &v17, 0xCu);
      }
    }

    locationManager = [(RTPointOfInterestMonitor *)self locationManager];
    v7 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
    [locationManager removeObserver:self fromNotification:v7];

    eventMetrics = [(RTPointOfInterestMonitor *)self eventMetrics];
    highAccuracyLocationRequestStartDate = [eventMetrics highAccuracyLocationRequestStartDate];

    if (highAccuracyLocationRequestStartDate)
    {
      eventMetrics2 = [(RTPointOfInterestMonitor *)self eventMetrics];
      v11 = MEMORY[0x277CCABB0];
      v12 = [MEMORY[0x277CBEAA8] now];
      eventMetrics3 = [(RTPointOfInterestMonitor *)self eventMetrics];
      highAccuracyLocationRequestStartDate2 = [eventMetrics3 highAccuracyLocationRequestStartDate];
      [v12 timeIntervalSinceDate:highAccuracyLocationRequestStartDate2];
      v16 = [v11 numberWithUnsignedInteger:vcvtad_u64_f64(v15)];
      [eventMetrics2 setObject:v16 forKey:@"highAccuracyLocationRequestDuration"];
    }
  }
}

- (BOOL)_shouldMonitorLocation:(id)location
{
  v44 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v6 sinceDate:-300.0];
  lastMonitoringDate = [(RTPointOfInterestMonitor *)self lastMonitoringDate];
  v9 = [lastMonitoringDate isAfterDate:v7];

  if (!v9)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    monitoringLocationDenyList = [(RTPointOfInterestMonitor *)self monitoringLocationDenyList];
    v15 = [monitoringLocationDenyList countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (!v15)
    {
      v24 = 1;
      goto LABEL_24;
    }

    v16 = v15;
    aSelector = a2;
    v29 = v7;
    v17 = *v32;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v32 != v17)
      {
        objc_enumerationMutation(monitoringLocationDenyList);
      }

      v19 = *(*(&v31 + 1) + 8 * v18);
      distanceCalculator = [(RTPointOfInterestMonitor *)self distanceCalculator];
      v30 = 0;
      [distanceCalculator distanceFromLocation:locationCopy toLocation:v19 error:&v30];
      v22 = v21;
      v23 = v30;

      if (!v23 && v22 < 250.0)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [monitoringLocationDenyList countByEnumeratingWithState:&v31 objects:v43 count:16];
        v24 = 1;
        if (v16)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = 0;
LABEL_23:
      v7 = v29;
      goto LABEL_24;
    }

    v25 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    v7 = v29;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = NSStringFromSelector(aSelector);
      *buf = 138413059;
      v36 = v26;
      v37 = 2117;
      v38 = locationCopy;
      v39 = 2117;
      v40 = v19;
      v41 = 2048;
      v42 = v22;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, skip monitor location, current location, %{sensitive}@, denied location, %{sensitive}@, distance, %.2f", buf, 0x2Au);
    }

LABEL_19:
    v24 = 0;
LABEL_24:

    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    monitoringLocationDenyList = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(monitoringLocationDenyList, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      lastMonitoringDate2 = [(RTPointOfInterestMonitor *)self lastMonitoringDate];
      stringFromDate = [lastMonitoringDate2 stringFromDate];
      stringFromDate2 = [v6 stringFromDate];
      *buf = 138412802;
      v36 = v11;
      v37 = 2112;
      v38 = stringFromDate;
      v39 = 2112;
      v40 = stringFromDate2;
      _os_log_impl(&dword_2304B3000, monitoringLocationDenyList, OS_LOG_TYPE_INFO, "%@, skip monitor location, last monitor date, %@, current date, %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  v24 = 0;
LABEL_25:

  return v24;
}

- (BOOL)_startMonitoringLocation:(id)location error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412547;
      v30 = v9;
      v31 = 2117;
      v32 = locationCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, start monitor location, %{sensitive}@", buf, 0x16u);
    }
  }

  v10 = [MEMORY[0x277CBEAA8] now];
  [(RTPointOfInterestMonitor *)self setLastMonitoringDate:v10];

  v28 = 0;
  v11 = [(RTPointOfInterestMonitor *)self _regionMonitoringLocationsForLocation:locationCopy error:&v28];
  v12 = v28;
  if (v12 || ![v11 count])
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v25 = [v11 count];
      *buf = 138412802;
      v30 = v18;
      v31 = 2048;
      v32 = v25;
      v33 = 2112;
      v34 = v12;
      v19 = "%@, monitor location count, %lu, error, %@";
      v20 = v13;
      v21 = 32;
      goto LABEL_19;
    }
  }

  else
  {
    v27 = 0;
    [(RTPointOfInterestMonitor *)self _setupPolygonalRegionsForLocations:v11 error:&v27];
    v17 = v27;
    if (!v17)
    {
      defaultsManager = [(RTPointOfInterestMonitor *)self defaultsManager];
      lastMonitoringDate = [(RTPointOfInterestMonitor *)self lastMonitoringDate];
      [defaultsManager setObject:lastMonitoringDate forKey:@"InstantPOILastFenceSetupDate"];

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __59__RTPointOfInterestMonitor__startMonitoringLocation_error___block_invoke;
      v26[3] = &__block_descriptor_40_e27_v32__0__RTLocation_8Q16_B24l;
      v26[4] = a2;
      [v11 enumerateObjectsUsingBlock:v26];
      v16 = 0;
      v12 = 0;
      v15 = 1;
      if (!error)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    v12 = v17;
    v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412546;
      v30 = v18;
      v31 = 2112;
      v32 = v12;
      v19 = "%@, error, %@";
      v20 = v13;
      v21 = 22;
LABEL_19:
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }
  }

  if (!error)
  {
    v15 = 0;
    goto LABEL_15;
  }

  v14 = v12;
  v15 = 0;
  v16 = v12;
LABEL_9:
  *error = v16;
  v12 = v16;
LABEL_15:

  return v15;
}

void __59__RTPointOfInterestMonitor__startMonitoringLocation_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3;
      v12 = 2117;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, region monitoring location idx, %lu, location, %{sensitive}@", &v8, 0x20u);
    }
  }
}

- (id)_regionMonitoringLocationsForLocation:(id)location error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (locationCopy)
  {
    defaultsManager = [(RTPointOfInterestMonitor *)self defaultsManager];
    v8 = [defaultsManager objectForKey:@"InstantPOIPowerMode"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      if (error)
      {
        *error = 0;
      }

      v56 = locationCopy;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    }

    else
    {
      v15 = objc_opt_new();
      v50 = 0;
      v51 = &v50;
      v52 = 0x3032000000;
      v53 = __Block_byref_object_copy__9;
      v54 = __Block_byref_object_dispose__9;
      v55 = 0;
      v16 = dispatch_semaphore_create(0);
      appClipManager = [(RTPointOfInterestMonitor *)self appClipManager];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __72__RTPointOfInterestMonitor__regionMonitoringLocationsForLocation_error___block_invoke;
      v46[3] = &unk_2788C5330;
      v45 = v15;
      v47 = v45;
      v49 = &v50;
      v18 = v16;
      v48 = v18;
      [appClipManager fetchNearbyAppClipLocationsFromLocation:locationCopy radius:10 limit:v46 handler:300.0];

      v19 = v18;
      v20 = [MEMORY[0x277CBEAA8] now];
      v21 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v19, v21))
      {
        v44 = [MEMORY[0x277CBEAA8] now];
        [v44 timeIntervalSinceDate:v20];
        v23 = v22;
        v24 = objc_opt_new();
        v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_7];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v27 = [callStackSymbols filteredArrayUsingPredicate:v25];
        firstObject = [v27 firstObject];

        [v24 submitToCoreAnalytics:firstObject type:1 duration:v23];
        v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v29, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v30 = MEMORY[0x277CCA9B8];
        v59 = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v59 count:1];
        v32 = [v30 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v31];

        if (v32)
        {
          v33 = v32;
        }
      }

      else
      {
        v32 = 0;
      }

      v34 = v32;
      if (v34)
      {
        objc_storeStrong(v51 + 5, v32);
      }

      if (!v51[5])
      {
        eventMetrics = [(RTPointOfInterestMonitor *)self eventMetrics];
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v45, "count")}];
        [eventMetrics setObject:v36 forKey:@"nearbyAppClipCount"];

        eventMetrics2 = [(RTPointOfInterestMonitor *)self eventMetrics];
        [eventMetrics2 calculateMinimumDistanceFromLocation:locationCopy toLocations:v45];
        v39 = v38;

        if (v39 != 1.79769313e308)
        {
          eventMetrics3 = [(RTPointOfInterestMonitor *)self eventMetrics];
          v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtad_u64_f64(v39)];
          [eventMetrics3 setObject:v41 forKey:@"distanceFromArrivalLocationToClosestAppClipLocation"];
        }
      }

      if (_os_feature_enabled_impl() && ![v45 count])
      {
        [v45 addObject:locationCopy];
      }

      if (error)
      {
        *error = v51[5];
      }

      v42 = v48;
      v10 = v45;

      _Block_object_dispose(&v50, 8);
    }
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA450];
    v58 = @"location cannot be nil";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v13 = [v11 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v12];

    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    v10 = 0;
  }

  return v10;
}

void __72__RTPointOfInterestMonitor__regionMonitoringLocationsForLocation_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (!v5 && [v9 count])
  {
    [*(a1 + 32) addObjectsFromArray:v9];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_exceedPowerBudget
{
  v32 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTPointOfInterestMonitor *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"InstantPOIPowerMode"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    defaultsManager2 = [(RTPointOfInterestMonitor *)self defaultsManager];
    v9 = [defaultsManager2 objectForKey:@"InstantPOILastPowerBudgetResetDate"];

    defaultsManager3 = [(RTPointOfInterestMonitor *)self defaultsManager];
    v11 = [defaultsManager3 objectForKey:@"InstantPOIHighAccuracyLocationRequestCount"];
    unsignedIntValue = [v11 unsignedIntValue];

    if (v9 && ([MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v9, "isBeforeDate:", v13), v13, !v14))
    {
      v7 = unsignedIntValue > 1;
    }

    else
    {
      defaultsManager4 = [(RTPointOfInterestMonitor *)self defaultsManager];
      date = [MEMORY[0x277CBEAA8] date];
      [defaultsManager4 setObject:date forKey:@"InstantPOILastPowerBudgetResetDate"];

      defaultsManager5 = [(RTPointOfInterestMonitor *)self defaultsManager];
      [defaultsManager5 setObject:&unk_28459C6D8 forKey:@"InstantPOIHighAccuracyLocationRequestCount"];

      v7 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = NSStringFromSelector(a2);
        stringFromDate = [v9 stringFromDate];
        v21 = stringFromDate;
        v22 = @"NO";
        v24 = 138413058;
        v26 = 2048;
        v25 = v19;
        if (v7)
        {
          v22 = @"YES";
        }

        v27 = unsignedIntValue;
        v28 = 2112;
        v29 = stringFromDate;
        v30 = 2112;
        v31 = v22;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, high accuracy request count, %lu, last power budget reset date, %@, exceed power budget, %@", &v24, 0x2Au);
      }
    }
  }

  return v7;
}

- (BOOL)_shouldRequestHighAccuracyLocationsForMonitoringRegionLocations:(id)locations
{
  aSelector = a2;
  v78[1] = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  _exceedPowerBudget = [(RTPointOfInterestMonitor *)self _exceedPowerBudget];
  selfCopy = self;
  eventMetrics = [(RTPointOfInterestMonitor *)self eventMetrics];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:_exceedPowerBudget];
  [eventMetrics setObject:v6 forKey:@"exceedDailyPowerBudget"];

  v7 = locationsCopy;
  if ([locationsCopy count] != 0 && !_exceedPowerBudget)
  {
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v75 = __Block_byref_object_copy__9;
    v76 = __Block_byref_object_dispose__9;
    v77 = 0;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = locationsCopy;
    v13 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    v14 = 0;
    v8 = 0;
    if (v13)
    {
      v53 = *v62;
      v49 = *MEMORY[0x277D01448];
      v50 = *MEMORY[0x277CCA450];
      while (2)
      {
        v52 = v13;
        v15 = 0;
        v56 = v14;
        do
        {
          if (*v62 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v55 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTLocation:{*(*(&v61 + 1) + 8 * v15), aSelector}];
          v16 = objc_alloc(MEMORY[0x277D011E0]);
          v72 = v55;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
          v18 = [v16 initWithFidelityPolicy:0 locations:v17 accessPoints:MEMORY[0x277CBEBF8] clientIdentifier:@"com.apple.CoreRoutine.instantPOI"];

          v19 = dispatch_semaphore_create(0);
          visitLabeler = [(RTPointOfInterestMonitor *)selfCopy visitLabeler];
          placeInferenceManager = [visitLabeler placeInferenceManager];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __92__RTPointOfInterestMonitor__shouldRequestHighAccuracyLocationsForMonitoringRegionLocations___block_invoke;
          v57[3] = &unk_2788C4490;
          v59 = buf;
          v60 = &v65;
          v22 = v19;
          v58 = v22;
          [placeInferenceManager fetchPlaceInferencesForOptions:v18 handler:v57];

          v8 = v22;
          v23 = [MEMORY[0x277CBEAA8] now];
          v24 = dispatch_time(0, 3600000000000);
          v25 = v56;
          if (dispatch_semaphore_wait(v8, v24))
          {
            v26 = [MEMORY[0x277CBEAA8] now];
            [v26 timeIntervalSinceDate:v23];
            v28 = v27;
            v29 = objc_opt_new();
            v30 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_7];
            callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
            v32 = [callStackSymbols filteredArrayUsingPredicate:v30];
            firstObject = [v32 firstObject];

            [v29 submitToCoreAnalytics:firstObject type:1 duration:v28];
            v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              *v69 = 0;
              _os_log_fault_impl(&dword_2304B3000, v34, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v69, 2u);
            }

            v35 = MEMORY[0x277CCA9B8];
            v78[0] = v50;
            *v69 = @"semaphore wait timeout";
            v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v78 count:1];
            v37 = [v35 errorWithDomain:v49 code:15 userInfo:v36];

            v25 = v56;
            if (v37)
            {
              v38 = v37;

              v25 = v37;
            }
          }

          v14 = v25;
          if (v14)
          {
            objc_storeStrong((*&buf[8] + 40), v25);
          }

          if (*(*&buf[8] + 40))
          {

            goto LABEL_27;
          }

          v39 = *(v66 + 24);

          if (v39)
          {
            goto LABEL_27;
          }

          ++v15;
          v56 = v14;
        }

        while (v52 != v15);
        v13 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = NSStringFromSelector(aSelector);
        v42 = v41;
        if (*(v66 + 24))
        {
          v43 = @"YES";
        }

        else
        {
          v43 = @"NO";
        }

        *v69 = 138412546;
        *&v69[4] = v41;
        v70 = 2112;
        v71 = v43;
        _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, should request high accuracy locations, %@", v69, 0x16u);
      }
    }

    eventMetrics2 = [(RTPointOfInterestMonitor *)selfCopy eventMetrics];
    v45 = [MEMORY[0x277CCABB0] numberWithBool:*(v66 + 24)];
    [eventMetrics2 setObject:v45 forKey:@"shouldRequestGPS"];

    v12 = *(v66 + 24);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v65, 8);
    goto LABEL_35;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(aSelector);
      v10 = [locationsCopy count];
      v11 = @"NO";
      *buf = 138412802;
      *&buf[4] = v9;
      if (_exceedPowerBudget)
      {
        v11 = @"YES";
      }

      *&buf[12] = 2048;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v75 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, should request high accuracy locations, NO, location count, %lu, exceed power budget, %@", buf, 0x20u);
    }

    v12 = 0;
LABEL_35:

    v7 = locationsCopy;
    goto LABEL_36;
  }

  v12 = 0;
LABEL_36:

  return v12 & 1;
}

void __92__RTPointOfInterestMonitor__shouldRequestHighAccuracyLocationsForMonitoringRegionLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else if (![a2 count])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_setupPolygonalRegionsForLocations:(id)locations error:(id *)error
{
  v110[1] = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    v6 = dispatch_semaphore_create(0);
    v94 = 0;
    v95 = &v94;
    v96 = 0x3032000000;
    v97 = __Block_byref_object_copy__9;
    v98 = __Block_byref_object_dispose__9;
    v99 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy__9;
    v92 = __Block_byref_object_dispose__9;
    v93 = 0;
    selfCopy = self;
    buildingPolygonManager = [(RTPointOfInterestMonitor *)self buildingPolygonManager];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __69__RTPointOfInterestMonitor__setupPolygonalRegionsForLocations_error___block_invoke;
    v84[3] = &unk_2788C4490;
    v86 = &v94;
    v87 = &v88;
    v8 = v6;
    v85 = v8;
    [buildingPolygonManager fetchClosestBuildingPolygonsFromLocations:locationsCopy radius:10 limit:v84 handler:200.0];

    dsema = v8;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v10))
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      [v11 timeIntervalSinceDate:v9];
      v13 = v12;
      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_7];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
      firstObject = [v17 firstObject];

      [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v110[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v110 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

      if (v22)
      {
        v23 = v22;
      }
    }

    else
    {
      v22 = 0;
    }

    oslog = v22;
    if (oslog)
    {
      objc_storeStrong(v89 + 5, v22);
    }

    v24 = v89[5];
    v69 = v24 == 0;
    if (v24)
    {
      if (error)
      {
        *error = v24;
      }
    }

    else
    {
      eventMetrics = [(RTPointOfInterestMonitor *)selfCopy eventMetrics];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v95[5], "count")}];
      [eventMetrics setObject:v26 forKey:@"buildingFenceCount"];

      eventMetrics2 = [(RTPointOfInterestMonitor *)selfCopy eventMetrics];
      [eventMetrics2 saveBuildingPolygons:v95[5]];

      eventMetrics3 = [(RTPointOfInterestMonitor *)selfCopy eventMetrics];
      [eventMetrics3 updateBuildingPolygonMetricsForRegionIdentifer:@"POIEntry-0"];

      dailyMetrics = [(RTPointOfInterestMonitor *)selfCopy dailyMetrics];
      [dailyMetrics increaseCountForKey:@"InstantPOIMetricsBuildingFenceSetupCount"];

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = v95[5];
      v30 = [obj countByEnumeratingWithState:&v80 objects:v109 count:16];
      if (v30)
      {
        v31 = 0;
        v32 = 0;
        v75 = *v81;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v81 != v75)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v80 + 1) + 8 * i);
            v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lu", @"POIEntry", v32];
            v36 = [(RTPointOfInterestMonitor *)selfCopy _polygonalRegionWithRegionIdentifier:v35 polygon:v34];

            locationManager = [(RTPointOfInterestMonitor *)selfCopy locationManager];
            regionMonitoringClientIdentifer = selfCopy->_regionMonitoringClientIdentifer;
            v79 = 0;
            [locationManager startMonitoringForRegion:v36 clientIdentifier:regionMonitoringClientIdentifer error:&v79];
            v39 = v79;

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v40 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                v41 = NSStringFromSelector(a2);
                v42 = selfCopy->_regionMonitoringClientIdentifer;
                centroid = [v34 centroid];
                *buf = 138413315;
                *&buf[4] = v41;
                v101 = 2112;
                v102 = v42;
                v103 = 2117;
                v104 = v36;
                v105 = 2112;
                v106 = centroid;
                v107 = 2112;
                v108 = v39;
                _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, clientIdentifier, %@, start monitoring for region, %{sensitive}@, polygon centroid, %@, error, %@", buf, 0x34u);
              }
            }

            if (!v39)
            {
              ++v31;
            }

            ++v32;
          }

          v30 = [obj countByEnumeratingWithState:&v80 objects:v109 count:16];
        }

        while (v30);

        if (v31)
        {
          v44 = MEMORY[0x277CCACA8];
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          v47 = [v44 stringWithFormat:@"%@.regionMonitorTimer", v46];

          timerManager = [(RTPointOfInterestMonitor *)selfCopy timerManager];
          queue = [(RTNotifier *)selfCopy queue];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __69__RTPointOfInterestMonitor__setupPolygonalRegionsForLocations_error___block_invoke_121;
          v78[3] = &unk_2788C52E8;
          v78[4] = selfCopy;
          v78[5] = a2;
          v50 = [timerManager timerWithIdentifier:v47 queue:queue handler:v78];
          [(RTPointOfInterestMonitor *)selfCopy setRegionMonitorTimer:v50];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v51 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = NSStringFromSelector(a2);
              *buf = 138412290;
              *&buf[4] = v52;
              _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, regionMonitorTimer start", buf, 0xCu);
            }
          }

          regionMonitorTimer = [(RTPointOfInterestMonitor *)selfCopy regionMonitorTimer];
          [regionMonitorTimer fireAfterDelay:1800.0 interval:INFINITY leeway:60.0];

          regionMonitorTimer2 = [(RTPointOfInterestMonitor *)selfCopy regionMonitorTimer];
          [regionMonitorTimer2 resume];

          if ([(RTPointOfInterestMonitor *)selfCopy _shouldRequestHighAccuracyLocationsForMonitoringRegionLocations:locationsCopy])
          {
            timerManager2 = [(RTPointOfInterestMonitor *)selfCopy timerManager];
            v56 = MEMORY[0x277CCACA8];
            v57 = objc_opt_class();
            v58 = NSStringFromClass(v57);
            v59 = [v56 stringWithFormat:@"%@.locationRequestTimer", v58];
            queue2 = [(RTNotifier *)selfCopy queue];
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __69__RTPointOfInterestMonitor__setupPolygonalRegionsForLocations_error___block_invoke_122;
            v77[3] = &unk_2788C52E8;
            v77[4] = selfCopy;
            v77[5] = a2;
            v61 = [timerManager2 timerWithIdentifier:v59 queue:queue2 handler:v77];
            [(RTPointOfInterestMonitor *)selfCopy setLocationRequestTimer:v61];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v62 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
              {
                v63 = NSStringFromSelector(a2);
                *buf = 138412290;
                *&buf[4] = v63;
                _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "%@, locationRequestTimer start", buf, 0xCu);
              }
            }

            locationRequestTimer = [(RTPointOfInterestMonitor *)selfCopy locationRequestTimer];
            [locationRequestTimer fireAfterDelay:60.0 interval:INFINITY leeway:1.0];

            locationRequestTimer2 = [(RTPointOfInterestMonitor *)selfCopy locationRequestTimer];
            [locationRequestTimer2 resume];

            v66 = [MEMORY[0x277CBEAA8] now];
            eventMetrics4 = [(RTPointOfInterestMonitor *)selfCopy eventMetrics];
            [eventMetrics4 setLocationRequestTimerStartDate:v66];
          }
        }
      }

      else
      {
      }
    }

    _Block_object_dispose(&v88, 8);
    _Block_object_dispose(&v94, 8);
  }

  else
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations.count>0", buf, 2u);
    }

    v69 = 0;
  }

  return v69;
}

void __69__RTPointOfInterestMonitor__setupPolygonalRegionsForLocations_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __69__RTPointOfInterestMonitor__setupPolygonalRegionsForLocations_error___block_invoke_121(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, regionMonitorTimer expiry", buf, 0xCu);
    }
  }

  v4 = [*(a1 + 32) regionMonitorTimer];
  [v4 invalidate];

  [*(a1 + 32) setRegionMonitorTimer:0];
  v5 = [*(a1 + 32) locationRequestTimer];
  [v5 invalidate];

  [*(a1 + 32) setLocationRequestTimer:0];
  v6 = [*(a1 + 32) locationManager];
  v7 = *(*(a1 + 32) + 168);
  v11 = 0;
  [v6 stopMonitoringAllRegionsForClientIdentifier:v7 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v8;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, failed to stop monitoring all regions, error, %@", buf, 0x16u);
    }
  }
}

void __69__RTPointOfInterestMonitor__setupPolygonalRegionsForLocations_error___block_invoke_122(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, locationRequestTimer expiry", &v12, 0xCu);
    }
  }

  v4 = [*(a1 + 32) locationRequestTimer];
  [v4 invalidate];

  [*(a1 + 32) setLocationRequestTimer:0];
  [*(a1 + 32) _startHighAccuracyLocationRequest];
  v5 = [*(a1 + 32) eventMetrics];
  v6 = MEMORY[0x277CCABB0];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [*(a1 + 32) eventMetrics];
  v9 = [v8 locationRequestTimerStartDate];
  [v7 timeIntervalSinceDate:v9];
  v11 = [v6 numberWithUnsignedInteger:vcvtad_u64_f64(v10)];
  [v5 setObject:v11 forKey:@"highAccuracyLocationRequestLatency"];
}

- (void)_startEventMetricsSubmissionTimer
{
  v22 = *MEMORY[0x277D85DE8];
  metricsSubmissionTimer = [(RTPointOfInterestMonitor *)self metricsSubmissionTimer];

  if (metricsSubmissionTimer)
  {
    metricsSubmissionTimer2 = [(RTPointOfInterestMonitor *)self metricsSubmissionTimer];
    [metricsSubmissionTimer2 invalidate];

    [(RTPointOfInterestMonitor *)self setMetricsSubmissionTimer:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, stop running metricsSubmissionTimer", buf, 0xCu);
      }
    }
  }

  timerManager = [(RTPointOfInterestMonitor *)self timerManager];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"%@.metricsSubmissionTimer", v11];
  queue = [(RTNotifier *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__RTPointOfInterestMonitor__startEventMetricsSubmissionTimer__block_invoke;
  v19[3] = &unk_2788C52E8;
  v19[4] = self;
  v19[5] = a2;
  v14 = [timerManager timerWithIdentifier:v12 queue:queue handler:v19];
  [(RTPointOfInterestMonitor *)self setMetricsSubmissionTimer:v14];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, start metricsSubmissionTimer", buf, 0xCu);
    }
  }

  metricsSubmissionTimer3 = [(RTPointOfInterestMonitor *)self metricsSubmissionTimer];
  [metricsSubmissionTimer3 fireAfterDelay:1800.0 interval:INFINITY leeway:60.0];

  metricsSubmissionTimer4 = [(RTPointOfInterestMonitor *)self metricsSubmissionTimer];
  [metricsSubmissionTimer4 resume];
}

void __61__RTPointOfInterestMonitor__startEventMetricsSubmissionTimer__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, metricsSubmissionTimer expiry", &v6, 0xCu);
    }
  }

  v4 = [*(a1 + 32) metricsSubmissionTimer];
  [v4 invalidate];

  [*(a1 + 32) setMetricsSubmissionTimer:0];
  v5 = [*(a1 + 32) eventMetrics];
  [v5 submit];
}

- (void)_onNavigationNotification:(id)notification
{
  v54 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        state = [v9 state];
        navigationDestination = [(RTPointOfInterestMonitor *)self navigationDestination];
        *buf = 138412802;
        v49 = v11;
        v50 = 2048;
        v51 = state;
        v52 = 2112;
        v53 = navigationDestination;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, received navigation state, %lu, destination, %@", buf, 0x20u);
      }
    }

    if ([v9 state]== 6)
    {
      navigationDestination2 = [(RTPointOfInterestMonitor *)self navigationDestination];
      if (navigationDestination2)
      {
        v15 = navigationDestination2;
        navigationDestination3 = [(RTPointOfInterestMonitor *)self navigationDestination];
        v17 = [(RTPointOfInterestMonitor *)self _shouldMonitorLocation:navigationDestination3];

        if (v17)
        {
          eventMetrics = [(RTPointOfInterestMonitor *)self eventMetrics];
          [eventMetrics reset];

          eventMetrics2 = [(RTPointOfInterestMonitor *)self eventMetrics];
          [eventMetrics2 setObject:&unk_28459C6F0 forKey:@"arrivalEvent"];

          v20 = [MEMORY[0x277CBEAA8] now];
          eventMetrics3 = [(RTPointOfInterestMonitor *)self eventMetrics];
          [eventMetrics3 setArrivalEventDate:v20];

          navigationDestination4 = [(RTPointOfInterestMonitor *)self navigationDestination];
          eventMetrics4 = [(RTPointOfInterestMonitor *)self eventMetrics];
          [eventMetrics4 setArrivalEventLocation:navigationDestination4];

          [(RTPointOfInterestMonitor *)self _startEventMetricsSubmissionTimer];
          regionMonitorTimer = [(RTPointOfInterestMonitor *)self regionMonitorTimer];
          [regionMonitorTimer invalidate];

          [(RTPointOfInterestMonitor *)self setRegionMonitorTimer:0];
          locationRequestTimer = [(RTPointOfInterestMonitor *)self locationRequestTimer];
          [locationRequestTimer invalidate];

          [(RTPointOfInterestMonitor *)self setLocationRequestTimer:0];
          locationManager = [(RTPointOfInterestMonitor *)self locationManager];
          regionMonitoringClientIdentifer = self->_regionMonitoringClientIdentifer;
          v47 = 0;
          [locationManager stopMonitoringAllRegionsForClientIdentifier:regionMonitoringClientIdentifer error:&v47];
          v28 = v47;

          if (v28)
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
LABEL_20:

LABEL_21:
              goto LABEL_22;
            }

            v30 = NSStringFromSelector(a2);
            *buf = 138412546;
            v49 = v30;
            v50 = 2112;
            v51 = v28;
            _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, failed to stop monitoring all regions, error, %@", buf, 0x16u);
          }

          else
          {
            navigationDestination5 = [(RTPointOfInterestMonitor *)self navigationDestination];
            v46 = 0;
            [(RTPointOfInterestMonitor *)self _startMonitoringLocation:navigationDestination5 error:&v46];
            v28 = v46;

            if (!v28)
            {
              dailyMetrics = [(RTPointOfInterestMonitor *)self dailyMetrics];
              [dailyMetrics increaseCountForKey:@"InstantPOIMetricsArrivalEventCount"];

              goto LABEL_22;
            }

            v29 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }

            v30 = NSStringFromSelector(a2);
            navigationDestination6 = [(RTPointOfInterestMonitor *)self navigationDestination];
            *buf = 138412803;
            v49 = v30;
            v50 = 2117;
            v51 = navigationDestination6;
            v52 = 2112;
            v53 = v28;
            _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, failed to monitor location, %{sensitive}@, error, %@", buf, 0x20u);
          }

          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    name2 = [notificationCopy name];
    v32 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
    v33 = [name2 isEqualToString:v32];

    if (v33)
    {
      v9 = notificationCopy;
      v34 = objc_alloc(MEMORY[0x277D01160]);
      [v9 destinationLatitude];
      v36 = v35;
      [v9 destinationLongitude];
      v38 = v37;
      v39 = [MEMORY[0x277CBEAA8] now];
      v40 = [v34 initWithLatitude:v39 longitude:v36 horizontalUncertainty:v38 date:0.0];
      [(RTPointOfInterestMonitor *)self setNavigationDestination:v40];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v41 = NSStringFromSelector(a2);
          navigationDestination7 = [(RTPointOfInterestMonitor *)self navigationDestination];
          *buf = 138412546;
          v49 = v41;
          v50 = 2112;
          v51 = navigationDestination7;
          _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, received navigation destination, %@", buf, 0x16u);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v49 = notificationCopy;
        v50 = 2080;
        v51 = "[RTPointOfInterestMonitor _onNavigationNotification:]";
        v52 = 1024;
        LODWORD(v53) = 1057;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
      }
    }
  }

LABEL_22:
}

- (void)onNavigationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTPointOfInterestMonitor_onNavigationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onVehicleEventNotification:(id)notification
{
  v39 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTVehicleEventNotification];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    vehicleEvents = [v9 vehicleEvents];
    v11 = [vehicleEvents objectAtIndexedSubscript:0];
    location = [v11 location];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromSelector(a2);
        *buf = 138412547;
        v34 = v14;
        v35 = 2117;
        v36 = location;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, received vehicle location, %{sensitive}@", buf, 0x16u);
      }
    }

    if (!location || ![(RTPointOfInterestMonitor *)self _shouldMonitorLocation:location])
    {
      goto LABEL_17;
    }

    eventMetrics = [(RTPointOfInterestMonitor *)self eventMetrics];
    [eventMetrics reset];

    eventMetrics2 = [(RTPointOfInterestMonitor *)self eventMetrics];
    [eventMetrics2 setObject:&unk_28459C708 forKey:@"arrivalEvent"];

    v17 = [MEMORY[0x277CBEAA8] now];
    eventMetrics3 = [(RTPointOfInterestMonitor *)self eventMetrics];
    [eventMetrics3 setArrivalEventDate:v17];

    eventMetrics4 = [(RTPointOfInterestMonitor *)self eventMetrics];
    [eventMetrics4 setArrivalEventLocation:location];

    [(RTPointOfInterestMonitor *)self _startEventMetricsSubmissionTimer];
    regionMonitorTimer = [(RTPointOfInterestMonitor *)self regionMonitorTimer];
    [regionMonitorTimer invalidate];

    [(RTPointOfInterestMonitor *)self setRegionMonitorTimer:0];
    locationRequestTimer = [(RTPointOfInterestMonitor *)self locationRequestTimer];
    [locationRequestTimer invalidate];

    [(RTPointOfInterestMonitor *)self setLocationRequestTimer:0];
    locationManager = [(RTPointOfInterestMonitor *)self locationManager];
    regionMonitoringClientIdentifer = self->_regionMonitoringClientIdentifer;
    v32 = 0;
    [locationManager stopMonitoringAllRegionsForClientIdentifier:regionMonitoringClientIdentifer error:&v32];
    dailyMetrics = v32;

    if (dailyMetrics)
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(a2);
        *buf = 138412546;
        v34 = v26;
        v35 = 2112;
        v36 = dailyMetrics;
        v27 = "%@, failed to stop monitoring all regions, error, %@";
        v28 = v25;
        v29 = 22;
LABEL_21:
        _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
      }
    }

    else
    {
      v31 = 0;
      [(RTPointOfInterestMonitor *)self _startMonitoringLocation:location error:&v31];
      v30 = v31;
      if (!v30)
      {
        dailyMetrics = [(RTPointOfInterestMonitor *)self dailyMetrics];
        [dailyMetrics increaseCountForKey:@"InstantPOIMetricsArrivalEventCount"];
        goto LABEL_16;
      }

      dailyMetrics = v30;
      v25 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(a2);
        *buf = 138412803;
        v34 = v26;
        v35 = 2117;
        v36 = location;
        v37 = 2112;
        v38 = dailyMetrics;
        v27 = "%@, failed to monitor location, %{sensitive}@, error, %@";
        v28 = v25;
        v29 = 32;
        goto LABEL_21;
      }
    }

LABEL_16:
LABEL_17:

    goto LABEL_18;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v34 = notificationCopy;
    v35 = 2080;
    v36 = "[RTPointOfInterestMonitor _onVehicleEventNotification:]";
    v37 = 1024;
    LODWORD(v38) = 1113;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
  }

LABEL_18:
}

- (void)onVehicleEventNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTPointOfInterestMonitor_onVehicleEventNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onActivityAlarmNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTMotionActivityManagerNotificationActivityAlarm];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    if ([v9 trigger]== 10)
    {
      locationManager = [(RTPointOfInterestMonitor *)self locationManager];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __57__RTPointOfInterestMonitor__onActivityAlarmNotification___block_invoke;
      v11[3] = &unk_2788C5358;
      v11[4] = self;
      v13 = a2;
      v9 = v9;
      v12 = v9;
      [locationManager fetchCurrentLocationWithHandler:v11];
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v15 = notificationCopy;
      v16 = 2080;
      v17 = "[RTPointOfInterestMonitor _onActivityAlarmNotification:]";
      v18 = 1024;
      v19 = 1180;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

void __57__RTPointOfInterestMonitor__onActivityAlarmNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTPointOfInterestMonitor__onActivityAlarmNotification___block_invoke_2;
  block[3] = &unk_2788C50E8;
  v8 = *(a1 + 40);
  v17 = *(a1 + 48);
  v13 = v8;
  v14 = v5;
  v9 = *(a1 + 32);
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __57__RTPointOfInterestMonitor__onActivityAlarmNotification___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = +[RTMotionActivityManager activityAlarmTriggerToString:](RTMotionActivityManager, "activityAlarmTriggerToString:", [*(a1 + 32) trigger]);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 138413059;
      v28 = v3;
      v29 = 2112;
      v30 = v4;
      v31 = 2117;
      v32 = v5;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, received motion alarm, %@, location, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }

  if (!*(a1 + 48))
  {
    v7 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:*(a1 + 40)];
    if (!v7 || ![*(a1 + 56) _shouldMonitorLocation:v7])
    {
      goto LABEL_15;
    }

    v8 = [*(a1 + 56) eventMetrics];
    [v8 reset];

    v9 = [*(a1 + 56) eventMetrics];
    [v9 setObject:&unk_28459C720 forKey:@"arrivalEvent"];

    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = [*(a1 + 56) eventMetrics];
    [v11 setArrivalEventDate:v10];

    v12 = [*(a1 + 56) eventMetrics];
    [v12 setArrivalEventLocation:v7];

    [*(a1 + 56) _startEventMetricsSubmissionTimer];
    v13 = [*(a1 + 56) regionMonitorTimer];
    [v13 invalidate];

    [*(a1 + 56) setRegionMonitorTimer:0];
    v14 = [*(a1 + 56) locationRequestTimer];
    [v14 invalidate];

    [*(a1 + 56) setLocationRequestTimer:0];
    v15 = [*(a1 + 56) locationManager];
    v16 = *(*(a1 + 56) + 168);
    v26 = 0;
    [v15 stopMonitoringAllRegionsForClientIdentifier:v16 error:&v26];
    v17 = v26;

    if (v17)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = v17;
        v20 = "%@, failed to stop monitoring all regions, error, %@";
        v21 = v18;
        v22 = 22;
LABEL_19:
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
      }
    }

    else
    {
      v23 = *(a1 + 56);
      v25 = 0;
      [v23 _startMonitoringLocation:v7 error:&v25];
      v24 = v25;
      if (!v24)
      {
        v17 = [*(a1 + 56) dailyMetrics];
        [v17 increaseCountForKey:@"InstantPOIMetricsArrivalEventCount"];
        goto LABEL_14;
      }

      v17 = v24;
      v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412803;
        v28 = v19;
        v29 = 2117;
        v30 = v7;
        v31 = 2112;
        v32 = v17;
        v20 = "%@, failed to monitor location, %{sensitive}@, error, %@";
        v21 = v18;
        v22 = 32;
        goto LABEL_19;
      }
    }

LABEL_14:
LABEL_15:
  }
}

- (void)onActivityAlarmNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__RTPointOfInterestMonitor_onActivityAlarmNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onLearnedLocationManagerNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        available = [v9 available];
        v13 = @"NO";
        if (available)
        {
          v13 = @"YES";
        }

        v14 = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, learnedLocationManager available, %@", &v14, 0x16u);
      }
    }

    if ([v9 available])
    {
      [(RTPointOfInterestMonitor *)self _updateMonitoringLocationDenyList];
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412802;
      v15 = notificationCopy;
      v16 = 2080;
      v17 = "[RTPointOfInterestMonitor _onLearnedLocationManagerNotification:]";
      v18 = 1024;
      v19 = 1205;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v14, 0x1Cu);
    }
  }
}

- (void)onLearnedLocationManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__RTPointOfInterestMonitor_onLearnedLocationManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onDailyMetricsNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received notification, %@", &v9, 0x16u);
    }
  }

  dailyMetrics = [(RTPointOfInterestMonitor *)self dailyMetrics];
  [dailyMetrics submit];
}

- (void)onDailyMetricsNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTPointOfInterestMonitor_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)RTPointOfInterestMonitorVisitNotification];
  v7 = [nameCopy isEqualToString:v6];

  if ((v7 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = nameCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@", &v10, 0x16u);
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)RTPointOfInterestMonitorVisitNotification];
  v7 = [nameCopy isEqualToString:v6];

  if ((v7 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = nameCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@", &v10, 0x16u);
    }
  }
}

@end