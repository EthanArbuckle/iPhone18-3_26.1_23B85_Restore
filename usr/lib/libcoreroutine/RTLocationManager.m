@interface RTLocationManager
+ (BOOL)isValidIdentifier:(id)a3;
+ (BOOL)isValidLocation:(id)a3 options:(id)a4;
+ (BOOL)supportsNotificationName:(id)a3;
+ (id)clientRegionForRegion:(id)a3 clientIdentifierPrefix:(id)a4;
+ (id)defaultLocationRequestOptions;
+ (id)errorDuplicateClientIdentifier:(id)a3;
+ (id)errorUnregisteredClientIdentifier:(id)a3;
+ (id)errorUsedDelimiter;
+ (id)regionWithModifiedIdentifier:(id)a3 forRegion:(id)a4;
+ (id)stringForRegionCallbackType:(int64_t)a3;
+ (id)vendedClasses;
- (BOOL)_considerInUse;
- (BOOL)_isClientIdentifierAvailable:(id)a3;
- (BOOL)_isMonitoringForRegionWithClientIdentifier:(id)a3 regionIdentifier:(id)a4;
- (BOOL)_performCallbackForClientRegion:(id)a3 clientIdentifier:(id)a4 regionEvent:(int64_t)a5 callbackError:(id)a6 handler:(id)a7;
- (BOOL)_performCallbackForRegion:(id)a3 regionEvent:(int64_t)a4 callbackError:(id)a5 handler:(id)a6;
- (BOOL)_stopMonitoringAllRegionsForClientIdentifier:(id)a3 error:(id *)a4;
- (BOOL)isMonitoringForRegionWithClientIdentifier:(id)a3 regionIdentifier:(id)a4;
- (BOOL)startMonitoringForRegion:(id)a3 clientIdentifier:(id)a4 error:(id *)a5;
- (BOOL)stopMonitoringAllRegionsForClientIdentifier:(id)a3 error:(id *)a4;
- (BOOL)stopMonitoringForRegion:(id)a3 clientIdentifier:(id)a4 error:(id *)a5;
- (RTLocationManager)initWithAuthorizationManager:(id)a3 defaultsManager:(id)a4 locationSmoother:(id)a5 locationStore:(id)a6 platform:(id)a7 routineLocationManager:(id)a8 timerManager:(id)a9 effectiveLocationBundlePath:(id)a10;
- (double)_activeLocationRequestsMinDesiredAccuracy;
- (id)_activeLocationRequestTimerExpiryDate;
- (id)_clientIdentifierForRegion:(id)a3;
- (id)_fullIdentifierForClientIdentifier:(id)a3 regionIdentifier:(id)a4 error:(id *)a5;
- (id)_prefixForClientIdentifier:(id)a3 error:(id *)a4;
- (id)_regionForClientRegion:(id)a3 clientIdentifier:(id)a4 error:(id *)a5;
- (id)preprocessLocationsForStorage:(id)a3;
- (void)_createLocationManager;
- (void)_fetchEstimatedLocationAtDate:(id)a3 options:(id)a4 handler:(id)a5;
- (void)_fetchLocationsFromCoreLocationWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7;
- (void)_fetchStoredLocationsWithContext:(id)a3 handler:(id)a4;
- (void)_fetchStoredLocationsWithContext:(id)a3 limit:(unint64_t)a4 referenceDate:(id)a5 handler:(id)a6;
- (void)_fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4;
- (void)_handleExpiredLocationRequestsWithIndexes:(id)a3;
- (void)_registerForRegionEventsWithClientIdentifier:(id)a3 handler:(id)a4;
- (void)_registerNotifications;
- (void)_removeLocationsPredating:(id)a3 handler:(id)a4;
- (void)_reviewActiveLocationRequests;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_storeLocations:(id)a3 handler:(id)a4;
- (void)_unregisterForRegionEventsWithClientIdentifier:(id)a3 handler:(id)a4;
- (void)_unregisterNotifications;
- (void)fetchCachedLocationWithHandler:(id)a3;
- (void)fetchCachedLocationWithOptions:(id)a3 handler:(id)a4;
- (void)fetchCurrentLocationWithHandler:(id)a3;
- (void)fetchCurrentLocationWithOptions:(id)a3 handler:(id)a4;
- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5;
- (void)fetchEstimatedLocationAtDate:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchLastLocationWithHandler:(id)a3;
- (void)fetchLocationsFromCoreLocationWithOptions:(id)a3 handler:(id)a4;
- (void)fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7;
- (void)fetchStoredLocationsWithContext:(id)a3 handler:(id)a4;
- (void)fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4;
- (void)injectLocations:(id)a3 handler:(id)a4;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4 completion:(id)a5;
- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
- (void)onActiveLocationRequestTimerExpiry;
- (void)onAuthorizationNotification:(id)a3;
- (void)onLocationStoreNotification:(id)a3;
- (void)onUserSessionChangeNotification:(id)a3;
- (void)performCallbackForRegion:(id)a3 regionEvent:(int64_t)a4 callbackError:(id)a5 handler:(id)a6;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)registerForRegionEventsWithClientIdentifier:(id)a3 handler:(id)a4;
- (void)setLastLocation:(id)a3;
- (void)setLeechingLocations:(BOOL)a3;
- (void)setLocationStoreAvailable:(BOOL)a3;
- (void)setMonitoringLocations:(BOOL)a3;
- (void)setMonitoringRhythmicLocations:(BOOL)a3;
- (void)setPersistingLocations:(BOOL)a3;
- (void)shouldLeechLocations;
- (void)shouldMonitorLocations;
- (void)shouldMonitorRhythmicLocations;
- (void)shouldPersistLocations;
- (void)submitHarvestSample:(id)a3 handler:(id)a4;
- (void)unregisterForRegionEventsWithClientIdentifier:(id)a3 handler:(id)a4;
@end

@implementation RTLocationManager

+ (id)vendedClasses
{
  v2 = vendedClasses_vendedClasses_1;
  if (!vendedClasses_vendedClasses_1)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v4 = vendedClasses_vendedClasses_1;
    vendedClasses_vendedClasses_1 = v3;

    v2 = vendedClasses_vendedClasses_1;
  }

  return v2;
}

+ (id)defaultLocationRequestOptions
{
  v2 = [RTLocationRequestOptions alloc];
  v3 = [(RTLocationRequestOptions *)v2 initWithDesiredAccuracy:1 horizontalAccuracy:0 maxAge:*MEMORY[0x277CE4228] yieldLastLocation:100.0 timeout:3.0 fallback:30.0 fallbackHorizontalAccuracy:3000.0 fallbackMaxAge:0.0];

  return v3;
}

- (void)_reviewActiveLocationRequests
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v5 = [(RTLocationManager *)self currentLocationRequests];
      *buf = 136315650;
      v23 = "[RTLocationManager _reviewActiveLocationRequests]";
      v24 = 2112;
      v25 = locationBundlePathShortname;
      v26 = 1024;
      v27 = [v5 count];
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, %@, #location requests, %d", buf, 0x1Cu);
    }
  }

  activeLocationRequestTimer = self->_activeLocationRequestTimer;
  if (activeLocationRequestTimer)
  {
    [(RTTimer *)activeLocationRequestTimer invalidate];
    v7 = self->_activeLocationRequestTimer;
    self->_activeLocationRequestTimer = 0;
  }

  [(RTLocationManager *)self shouldMonitorLocations];
  v8 = [(RTLocationManager *)self currentLocationRequests];
  v9 = [v8 count] == 0;

  if (!v9)
  {
    v10 = [(RTLocationManager *)self _activeLocationRequestTimerExpiryDate];
    objc_initWeak(buf, self);
    timerManager = self->_timerManager;
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"%@.activeLocationRequestTimer", v14];
    v16 = [(RTNotifier *)self queue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__RTLocationManager__reviewActiveLocationRequests__block_invoke;
    v20[3] = &unk_2788C5908;
    objc_copyWeak(&v21, buf);
    v17 = [(RTTimerManager *)timerManager timerWithIdentifier:v15 queue:v16 handler:v20];
    v18 = self->_activeLocationRequestTimer;
    self->_activeLocationRequestTimer = v17;

    v19 = self->_activeLocationRequestTimer;
    [v10 timeIntervalSinceNow];
    [RTTimer fireWithInterval:v19 leeway:"fireWithInterval:leeway:"];
    [(RTTimer *)self->_activeLocationRequestTimer resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

void __58__RTLocationManager__activeLocationRequestTimerExpiryDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v12 = v3;
  if (!v4 || ([v3 expiryDate], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "laterDate:", v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToDate:", *(*(*(a1 + 32) + 8) + 40)), v6, v5, v8 = v12, v7))
  {
    v9 = [v12 expiryDate];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = v12;
  }
}

void __62__RTLocationManager__activeLocationRequestsMinDesiredAccuracy__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = [a2 options];
  [v4 desiredAccuracy];
  v6 = v5;

  if (v3 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
}

- (void)shouldMonitorLocations
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  v4 = [(RTNotifier *)self getNumberOfObservers:v3];

  if (v4)
  {
    v5 = *MEMORY[0x277CE4208];
    v6 = 1;
    v7 = 2;
  }

  else
  {
    v5 = *MEMORY[0x277CE4228];
    v8 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
    v9 = [(RTNotifier *)self getNumberOfObservers:v8];

    v6 = v9 != 0;
    v7 = 1;
  }

  v10 = [(RTLocationManager *)self currentLocationRequests];
  v11 = [v10 count];

  if (v11)
  {
    [(RTLocationManager *)self _activeLocationRequestsMinDesiredAccuracy];
    if (v5 >= v12)
    {
      v5 = v12;
    }

    v6 = 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v15 = @"NO";
      *&v29[4] = "[RTLocationManager shouldMonitorLocations]";
      *v29 = 136315906;
      if (v6)
      {
        v15 = @"YES";
      }

      *&v29[12] = 2112;
      *&v29[14] = locationBundlePathShortname;
      v30 = 2048;
      v31 = v5;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, %@, desiredAccuracy, %.2f, shouldMonitor, %@", v29, 0x2Au);
    }
  }

  v16 = [(RTLocationManager *)self locationManager];
  [v16 desiredAccuracy];
  v18 = v17;

  if (v5 != v18)
  {
    v19 = [(RTLocationManager *)self locationManager];
    [v19 setDesiredAccuracy:v5];
  }

  v20 = [(RTLocationManager *)self powerAssertion];

  if (v4)
  {
    if (!v20)
    {
      v21 = [[RTPowerAssertion alloc] initWithIdentifier:@"com.apple.routined.location" timeout:20.0];
      [(RTLocationManager *)self setPowerAssertion:v21];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = self->_locationBundlePathShortname;
          v24 = [(RTLocationManager *)self powerAssertion];
          *v29 = 138412546;
          *&v29[4] = v23;
          *&v29[12] = 1024;
          *&v29[14] = v24 != 0;
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, Taking power assertion, success, %d", v29, 0x12u);
        }

LABEL_25:
      }
    }
  }

  else if (v20)
  {
    [(RTLocationManager *)self setPowerAssertion:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = self->_locationBundlePathShortname;
        *v29 = 138412290;
        *&v29[4] = v25;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, Releasing power assertion", v29, 0xCu);
      }

      goto LABEL_25;
    }
  }

  v26 = [(RTLocationManager *)self locationManager];
  v27 = [v26 activityType];

  if (v7 != v27)
  {
    v28 = [(RTLocationManager *)self locationManager];
    [v28 setActivityType:v7];
  }

  [(RTLocationManager *)self setMonitoringLocations:v6];
}

- (id)_activeLocationRequestTimerExpiryDate
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__87;
  v16 = __Block_byref_object_dispose__87;
  v17 = 0;
  v3 = [(RTLocationManager *)self currentLocationRequests];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__RTLocationManager__activeLocationRequestTimerExpiryDate__block_invoke;
  v11[3] = &unk_2788CC148;
  v11[4] = &v12;
  [v3 enumerateObjectsUsingBlock:v11];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v6 = [(RTLocationManager *)self currentLocationRequests];
      v7 = [v6 count];
      v8 = v13[5];
      *buf = 136315906;
      v19 = "[RTLocationManager _activeLocationRequestTimerExpiryDate]";
      v20 = 2112;
      v21 = locationBundlePathShortname;
      v22 = 1024;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, %@, #requests, %d, min expiryDate, %@", buf, 0x26u);
    }
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (double)_activeLocationRequestsMinDesiredAccuracy
{
  v25 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v3 = *MEMORY[0x277CE4270];
  v15 = 0x2020000000;
  v16 = v3;
  v4 = [(RTLocationManager *)self currentLocationRequests];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__RTLocationManager__activeLocationRequestsMinDesiredAccuracy__block_invoke;
  v12[3] = &unk_2788CC148;
  v12[4] = &v13;
  [v4 enumerateObjectsUsingBlock:v12];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v7 = [(RTLocationManager *)self currentLocationRequests];
      v8 = [v7 count];
      v9 = *(v14 + 3);
      *buf = 136315906;
      v18 = "[RTLocationManager _activeLocationRequestsMinDesiredAccuracy]";
      v19 = 2112;
      v20 = locationBundlePathShortname;
      v21 = 1024;
      v22 = v8;
      v23 = 2048;
      v24 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %@, #requests, %d, min desired accuracy, %.2f", buf, 0x26u);
    }
  }

  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

+ (id)stringForRegionCallbackType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CC2A8[a3 - 1];
  }
}

- (RTLocationManager)initWithAuthorizationManager:(id)a3 defaultsManager:(id)a4 locationSmoother:(id)a5 locationStore:(id)a6 platform:(id)a7 routineLocationManager:(id)a8 timerManager:(id)a9 effectiveLocationBundlePath:(id)a10
{
  v48 = a3;
  v16 = a4;
  v17 = a5;
  v51 = a6;
  v50 = a7;
  v46 = a8;
  v49 = a9;
  v18 = a10;
  v43 = v16;
  v45 = v17;
  v47 = v18;
  if (!v16)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_29;
  }

  if (!v17)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: locationSmoother";
    goto LABEL_29;
  }

  if (!v51)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: locationStore";
    goto LABEL_29;
  }

  if (!v50)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: platform";
    goto LABEL_29;
  }

  if (!v49)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_29;
  }

  if (!v18)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: effectiveBundlePath";
    goto LABEL_29;
  }

  if ([v18 isEqualToString:@"/System/Library/LocationBundles/Routine.bundle"])
  {
    if (v48)
    {
      if (v46)
      {
        goto LABEL_10;
      }

      v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v41 = "Invalid parameter not satisfying: routineLocationManager";
        goto LABEL_29;
      }

LABEL_30:

      v39 = 0;
      v38 = self;
      goto LABEL_31;
    }

    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: authorizationManager";
LABEL_29:
    _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, v41, buf, 2u);
    goto LABEL_30;
  }

LABEL_10:
  v52.receiver = self;
  v52.super_class = RTLocationManager;
  v19 = [(RTNotifier *)&v52 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_authorizationManager, a3);
    objc_storeStrong(&v20->_defaultsManager, a4);
    objc_storeStrong(&v20->_locationSmoother, a5);
    objc_storeStrong(&v20->_locationStore, a6);
    objc_storeStrong(&v20->_platform, a7);
    objc_storeStrong(&v20->_locationManagerRoutine, a8);
    [(CLLocationManagerRoutine *)v20->_locationManagerRoutine setDelegate:v20];
    objc_storeStrong(&v20->_timerManager, a9);
    objc_storeStrong(&v20->_effectiveLocationBundlePath, a10);
    v21 = [v47 componentsSeparatedByString:@"/"];
    v22 = [v21 lastObject];
    locationBundlePathShortname = v20->_locationBundlePathShortname;
    v20->_locationBundlePathShortname = v22;

    v24 = objc_opt_new();
    currentLocationRequests = v20->_currentLocationRequests;
    v20->_currentLocationRequests = v24;

    v26 = [RTInvocationDispatcher alloc];
    v27 = [(RTNotifier *)v20 queue];
    v28 = [(RTInvocationDispatcher *)v26 initWithQueue:v27];
    dispatcher = v20->_dispatcher;
    v20->_dispatcher = v28;

    v30 = [RTInvocationDispatcher alloc];
    v31 = [(RTNotifier *)v20 queue];
    v32 = [(RTInvocationDispatcher *)v30 initWithQueue:v31];
    regionEventDispatcher = v20->_regionEventDispatcher;
    v20->_regionEventDispatcher = v32;

    v34 = objc_opt_new();
    regionEventHandlerDictionary = v20->_regionEventHandlerDictionary;
    v20->_regionEventHandlerDictionary = v34;

    v36 = objc_alloc_init(RTTrustedTimeCache);
    trustedTimeCache = v20->_trustedTimeCache;
    v20->_trustedTimeCache = v36;

    [(RTService *)v20 setup];
  }

  v38 = v20;
  v39 = v38;
LABEL_31:

  return v39;
}

- (void)_registerNotifications
{
  v3 = [(RTLocationManager *)self authorizationManager];
  v4 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  [v3 addObserver:self selector:sel_onAuthorizationNotification_ name:v4];

  v5 = [(RTLocationManager *)self locationStore];
  v6 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  [v5 addObserver:self selector:sel_onLocationStoreNotification_ name:v6];

  v8 = [(RTLocationManager *)self authorizationManager];
  v7 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
  [v8 addObserver:self selector:sel_onUserSessionChangeNotification_ name:v7];
}

- (void)_unregisterNotifications
{
  v3 = [(RTLocationManager *)self authorizationManager];
  [v3 removeObserver:self];

  v4 = [(RTLocationManager *)self locationStore];
  [v4 removeObserver:self];
}

- (void)_createLocationManager
{
  v3 = objc_alloc(MEMORY[0x277CBFC10]);
  v4 = [(RTLocationManager *)self effectiveLocationBundlePath];
  v5 = [(RTNotifier *)self queue];
  v6 = [v3 initWithEffectiveBundlePath:v4 delegate:self onQueue:v5];
  locationManager = self->_locationManager;
  self->_locationManager = v6;

  [(CLLocationManager *)self->_locationManager setDesiredAccuracy:*MEMORY[0x277CE4228]];
  v8 = objc_alloc(MEMORY[0x277CBFC10]);
  v9 = [(RTLocationManager *)self effectiveLocationBundlePath];
  v10 = [(RTNotifier *)self queue];
  v11 = [v8 initWithEffectiveBundlePath:v9 delegate:self onQueue:v10];
  rhythmicLocationManager = self->_rhythmicLocationManager;
  self->_rhythmicLocationManager = v11;

  v13 = *MEMORY[0x277CE4260];
  v14 = self->_rhythmicLocationManager;

  [(CLLocationManager *)v14 setDesiredAccuracy:v13];
}

- (void)_setup
{
  [(RTLocationManager *)self _createLocationManager];
  [(RTLocationManager *)self _registerNotifications];
  v3 = [(RTLocationManager *)self authorizationManager];

  if (v3)
  {
    v4 = [(RTLocationManager *)self authorizationManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __27__RTLocationManager__setup__block_invoke;
    v10[3] = &unk_2788C9890;
    v10[4] = self;
    [v4 fetchRoutineEnabledWithHandler:v10];

    v5 = [(RTLocationManager *)self authorizationManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__RTLocationManager__setup__block_invoke_3;
    v9[3] = &unk_2788C9890;
    v9[4] = self;
    [v5 fetchRoutineSupportedWithHandler:v9];
  }

  else
  {
    [(RTLocationManager *)self setSupported:1];
    v6 = [(RTLocationManager *)self locationManager];
    -[RTLocationManager setEnabled:](self, "setEnabled:", [v6 authorizationStatus] == 3);

    [(RTLocationManager *)self shouldLeechLocations];
    [(RTLocationManager *)self shouldPersistLocations];
  }

  v7 = [(RTLocationManager *)self locationStore];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__RTLocationManager__setup__block_invoke_5;
  v8[3] = &unk_2788CC0D0;
  v8[4] = self;
  [v7 fetchLastLocationWithHandler:v8];
}

void __27__RTLocationManager__setup__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__RTLocationManager__setup__block_invoke_2;
  v5[3] = &unk_2788C5070;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

uint64_t __27__RTLocationManager__setup__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEnabled:*(a1 + 40)];
  [*(a1 + 32) shouldLeechLocations];
  v2 = *(a1 + 32);

  return [v2 shouldPersistLocations];
}

void __27__RTLocationManager__setup__block_invoke_3(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__RTLocationManager__setup__block_invoke_4;
  v5[3] = &unk_2788C5070;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

uint64_t __27__RTLocationManager__setup__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setSupported:*(a1 + 40)];
  [*(a1 + 32) shouldLeechLocations];
  v2 = *(a1 + 32);

  return [v2 shouldPersistLocations];
}

void __27__RTLocationManager__setup__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__RTLocationManager__setup__block_invoke_6;
  v6[3] = &unk_2788C4A70;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __27__RTLocationManager__setup__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) lastLocation];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 setLastLocation:v4];
  }
}

- (void)_shutdownWithHandler:(id)a3
{
  v10 = a3;
  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  locationManager = self->_locationManager;
  self->_locationManager = 0;

  activeLocationRequestTimer = self->_activeLocationRequestTimer;
  if (activeLocationRequestTimer)
  {
    [(RTTimer *)activeLocationRequestTimer invalidate];
    v6 = self->_activeLocationRequestTimer;
    self->_activeLocationRequestTimer = 0;
  }

  [(RTLocationManager *)self _unregisterNotifications];
  v7 = [(RTLocationManager *)self dispatcher];
  [v7 shutdown];

  v8 = [(RTLocationManager *)self regionEventDispatcher];
  [v8 shutdown];

  [(RTLocationManager *)self setPowerAssertion:0];
  v9 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 0);
    v9 = v10;
  }
}

- (void)shouldLeechLocations
{
  v5 = 0;
  if ([(RTLocationManager *)self supported])
  {
    v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
    v4 = [(RTNotifier *)self getNumberOfObservers:v3];

    if (v4)
    {
      v5 = 1;
    }
  }

  [(RTLocationManager *)self setLeechingLocations:v5];
}

- (void)setLeechingLocations:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_leechingLocations != a3)
  {
    v3 = a3;
    self->_leechingLocations = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        locationBundlePathShortname = self->_locationBundlePathShortname;
        if (self->_leechingLocations)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        v9 = 138412546;
        v10 = locationBundlePathShortname;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, leech locations, %@", &v9, 0x16u);
      }

      if (!self->_leechingLocations)
      {
        goto LABEL_9;
      }
    }

    else if (!v3)
    {
LABEL_9:
      v8 = [(RTLocationManager *)self locationManagerRoutine];
      [v8 stopUpdatingLocation];
LABEL_12:

      return;
    }

    v8 = [(RTLocationManager *)self locationManagerRoutine];
    [v8 startUpdatingLocation];
    goto LABEL_12;
  }
}

- (void)setMonitoringLocations:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_monitoringLocations != a3)
  {
    v3 = a3;
    self->_monitoringLocations = a3;
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          locationBundlePathShortname = self->_locationBundlePathShortname;
          v8 = [(RTLocationManager *)self locationManager];
          [v8 desiredAccuracy];
          v13 = 138412546;
          v14 = locationBundlePathShortname;
          v15 = 2048;
          v16 = v9;
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, start monitoring locations, desiredAccuracy, %f", &v13, 0x16u);
        }
      }

      v10 = [(RTLocationManager *)self locationManager];
      [v10 startUpdatingLocation];
    }

    else
    {
      if (v5)
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = self->_locationBundlePathShortname;
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, stop monitoring locations", &v13, 0xCu);
        }
      }

      v10 = [(RTLocationManager *)self locationManager];
      [v10 stopUpdatingLocation];
    }
  }
}

- (void)shouldMonitorRhythmicLocations
{
  v3 = *MEMORY[0x277CE4260];
  v4 = [(RTLocationManager *)self rhythmicLocationManager];
  [v4 setDesiredAccuracy:v3];

  if ([(RTLocationManager *)self supported])
  {
    v5 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicWaking];
    v6 = [(RTNotifier *)self getNumberOfObservers:v5];

    if (v6)
    {
      v7 = *MEMORY[0x277CE4268];
      v8 = [(RTLocationManager *)self rhythmicLocationManager];
      [v8 setDesiredAccuracy:v7];

LABEL_6:
      v11 = 1;
      goto LABEL_8;
    }
  }

  if ([(RTLocationManager *)self supported])
  {
    v9 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
    v10 = [(RTNotifier *)self getNumberOfObservers:v9];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_8:

  [(RTLocationManager *)self setMonitoringRhythmicLocations:v11];
}

- (void)setMonitoringRhythmicLocations:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_monitoringRhythmicLocations != a3)
  {
    v3 = a3;
    self->_monitoringRhythmicLocations = a3;
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          locationBundlePathShortname = self->_locationBundlePathShortname;
          v11 = 138412290;
          v12 = locationBundlePathShortname;
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, start monitoring rhythmic locations", &v11, 0xCu);
        }
      }

      v8 = [(RTLocationManager *)self rhythmicLocationManager];
      [v8 startUpdatingLocation];
    }

    else
    {
      if (v5)
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = self->_locationBundlePathShortname;
          v11 = 138412290;
          v12 = v10;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, stop monitoring rhythmic locations", &v11, 0xCu);
        }
      }

      v8 = [(RTLocationManager *)self rhythmicLocationManager];
      [v8 stopUpdatingLocation];
    }
  }
}

- (void)shouldPersistLocations
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v5 = [(RTAuthorizationManager *)self->_authorizationManager shouldPersistLocations];
      v10 = 138413058;
      v11 = locationBundlePathShortname;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = [(RTLocationManager *)self supported];
      v16 = 1024;
      v17 = [(RTLocationManager *)self enabled];
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, shouldPersistLocations %d, supported %d, enabled %d", &v10, 0x1Eu);
    }
  }

  v6 = [(RTLocationManager *)self authorizationManager];
  if (v6)
  {
    v7 = [(RTAuthorizationManager *)self->_authorizationManager shouldPersistLocations];
  }

  else
  {
    v7 = [(RTLocationManager *)self enabled];
  }

  v8 = v7;

  v9 = [(RTLocationManager *)self supported]&& [(RTLocationManager *)self enabled]&& v8;
  [(RTLocationManager *)self setPersistingLocations:v9];
}

- (void)setPersistingLocations:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_persistingLocations != a3)
  {
    self->_persistingLocations = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        locationBundlePathShortname = self->_locationBundlePathShortname;
        if (self->_persistingLocations)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v7 = 138412546;
        v8 = locationBundlePathShortname;
        v9 = 2112;
        v10 = v6;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, persist locations, %@", &v7, 0x16u);
      }
    }
  }
}

- (id)preprocessLocationsForStorage:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTLocationManager *)self effectiveLocationBundlePath];
  v6 = [v5 isEqualToString:@"/System/Library/LocationBundles/Routine.bundle"];

  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        v55 = NSStringFromSelector(a2);
        v56 = [(RTLocationManager *)self effectiveLocationBundlePath];
        *buf = 138412802;
        *&buf[4] = v54;
        *&buf[12] = 2112;
        *&buf[14] = v55;
        *&buf[22] = 2112;
        *&buf[24] = v56;
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, %@, bypassing preprocessor, effectiveLocationBundlePath, %@", buf, 0x20u);
      }
    }

    goto LABEL_12;
  }

  v7 = [(RTLocationManager *)self platform];
  if ([v7 internalInstall])
  {
    v8 = [(RTLocationManager *)self defaultsManager];
    v9 = [v8 objectForKey:@"RTDefaultsLocationManagerBypassPreprocessor"];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v57 = objc_opt_class();
          v58 = NSStringFromClass(v57);
          v59 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v58;
          *&buf[12] = 2112;
          *&buf[14] = v59;
          *&buf[22] = 2112;
          *&buf[24] = @"RTDefaultsLocationManagerBypassPreprocessor";
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, %@, bypassing preprocessor, disable: defaults delete com.apple.routined %@", buf, 0x20u);
        }
      }

LABEL_12:
      v64 = v4;
      goto LABEL_51;
    }
  }

  else
  {
  }

  v13 = [(RTLocationManager *)self trustedDate];
  v64 = [MEMORY[0x277CBEB18] array];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v60 = v4;
  obj = v4;
  v66 = [obj countByEnumeratingWithState:&v67 objects:v87 count:16];
  if (!v66)
  {
    goto LABEL_50;
  }

  v65 = *v68;
  v63 = *MEMORY[0x277CE4290];
  v14 = self;
  do
  {
    v15 = 0;
    do
    {
      if (*v68 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v67 + 1) + 8 * v15);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = NSStringFromSelector(a2);
          locationBundlePathShortname = v14->_locationBundlePathShortname;
          v46 = [v16 integrity];
          *buf = 138413315;
          *&buf[4] = v43;
          *&buf[12] = 2112;
          *&buf[14] = v44;
          *&buf[22] = 2112;
          *&buf[24] = locationBundlePathShortname;
          self = v14;
          LOWORD(v80) = 2117;
          *(&v80 + 2) = v16;
          WORD5(v80) = 1029;
          HIDWORD(v80) = v46;
          _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@,%@, %@, processing location, %{sensitive}@, integrity %{sensitive}d", buf, 0x30u);
        }
      }

      v18 = [(RTLocationManager *)self defaultsManager];
      v19 = [v18 objectForKey:@"SimulatedLocationsTestMode"];
      if (([v19 BOOLValue] & 1) != 0 || (objc_msgSend(v16, "sourceInformation"), (v20 = objc_claimAutoreleasedReturnValue()) == 0))
      {

LABEL_30:
        v26 = v16;
        v27 = v26;
        if (v13 && (-[NSObject timestamp](v26, "timestamp"), v28 = objc_claimAutoreleasedReturnValue(), [v13 timeIntervalSinceDate:v28], v30 = fabs(v29), v28, v30 <= 600.0))
        {
          self = v14;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v39 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v47 = objc_opt_class();
              v48 = NSStringFromClass(v47);
              v49 = NSStringFromSelector(a2);
              v50 = v14->_locationBundlePathShortname;
              v51 = [v27 integrity];
              *buf = 138413315;
              *&buf[4] = v48;
              *&buf[12] = 2112;
              *&buf[14] = v49;
              *&buf[22] = 2112;
              *&buf[24] = v50;
              self = v14;
              LOWORD(v80) = 2117;
              *(&v80 + 2) = v27;
              WORD5(v80) = 1026;
              HIDWORD(v80) = v51;
              _os_log_debug_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEBUG, "%@,%@, %@, processed location, no integrity downgrade, %{sensitive}@, integrity, %{public}d.", buf, 0x30u);
            }
          }

          v24 = v27;
        }

        else
        {
          v85 = 0u;
          memset(v86, 0, 28);
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0u;
          memset(buf, 0, sizeof(buf));
          self = v14;
          if (v27)
          {
            [v27 clientLocation];
          }

          LODWORD(v86[0]) = v63;
          v31 = objc_alloc(MEMORY[0x277CE41F8]);
          v76 = v84;
          v77 = v85;
          v78[0] = v86[0];
          *(v78 + 12) = *(v86 + 12);
          v72 = v80;
          v73 = v81;
          v74 = v82;
          v75 = v83;
          *v71 = *buf;
          *&v71[16] = *&buf[16];
          v24 = [v31 initWithClientLocation:v71];

          v32 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v33)
            {
              v34 = v14->_locationBundlePathShortname;
              v35 = [v24 integrity];
              *v71 = 138413059;
              *&v71[4] = v34;
              *&v71[12] = 2112;
              *&v71[14] = v13;
              *&v71[22] = 2117;
              *&v71[24] = v24;
              LOWORD(v72) = 1026;
              *(&v72 + 2) = v35;
              v36 = v32;
              v37 = "%@, downgrading leeched location integrity because user-time to trusted-time offset is too large: %@, %{sensitive}@, integrity, %{public}d.";
              v38 = 38;
              goto LABEL_44;
            }
          }

          else if (v33)
          {
            v40 = v14->_locationBundlePathShortname;
            v41 = [v24 integrity];
            *v71 = 138412803;
            *&v71[4] = v40;
            *&v71[12] = 2117;
            *&v71[14] = v24;
            *&v71[22] = 1026;
            *&v71[24] = v41;
            v36 = v32;
            v37 = "%@, downgrading leeched location integrity because trusted-time is unavailable, %{sensitive}@, integrity, %{public}d.";
            v38 = 28;
LABEL_44:
            _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_DEFAULT, v37, v71, v38);
          }
        }

        [v64 addObject:v24];
        goto LABEL_47;
      }

      v21 = v20;
      v22 = [v16 sourceInformation];
      v23 = [v22 isSimulatedBySoftware];

      if (!v23)
      {
        goto LABEL_30;
      }

      self = v14;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v24 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = v14->_locationBundlePathShortname;
        *buf = 138412547;
        *&buf[4] = v25;
        *&buf[12] = 2117;
        *&buf[14] = v16;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, dropping leeched location that is simulated by software, %{sensitive}@.", buf, 0x16u);
      }

LABEL_47:

LABEL_48:
      ++v15;
    }

    while (v66 != v15);
    v66 = [obj countByEnumeratingWithState:&v67 objects:v87 count:16];
  }

  while (v66);
LABEL_50:

  v4 = v60;
LABEL_51:

  return v64;
}

- (void)_storeLocations:(id)a3 handler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(RTPlatform *)self->_platform internalInstall])
  {
    v9 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"BypassPersistRawLocations"];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          locationBundlePathShortname = self->_locationBundlePathShortname;
          *buf = 138412290;
          v34 = locationBundlePathShortname;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, dropping leeched locations because override default is set.", buf, 0xCu);
        }
      }

      goto LABEL_14;
    }
  }

  if ([(RTLocationManager *)self persistingLocations])
  {
    if ([v7 count])
    {
      if ([(RTLocationManager *)self locationStoreAvailable])
      {
        v13 = [(RTLocationManager *)self locationStore];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __45__RTLocationManager__storeLocations_handler___block_invoke_159;
        v23[3] = &unk_2788C48C0;
        v24 = v8;
        [v13 storeLocations:v7 handler:v23];

        v14 = v24;
      }

      else
      {
        v19 = [(RTLocationManager *)self dispatcher];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __45__RTLocationManager__storeLocations_handler___block_invoke;
        v28[3] = &unk_2788C4500;
        v28[4] = self;
        v29 = v7;
        v30 = v8;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __45__RTLocationManager__storeLocations_handler___block_invoke_2;
        v25[3] = &unk_2788C6300;
        v25[4] = self;
        v27 = a2;
        v26 = v30;
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        [v19 enqueueBlock:v28 failureBlock:v25 description:{@"%@-%@", v21, v22}];

        v14 = v29;
      }
    }

    else if (v8)
    {
LABEL_14:
      (*(v8 + 2))(v8, 0);
    }
  }

  else if (v8)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Service has been disabled by user.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v18 = [v15 errorWithDomain:v16 code:2 userInfo:v17];
    (*(v8 + 2))(v8, v18);
  }
}

void __45__RTLocationManager__storeLocations_handler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = *(*(a1 + 32) + 56);
    *buf = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@", buf, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15 = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v9 errorWithDomain:v10 code:0 userInfo:v11];
    (*(v8 + 16))(v8, v12);
  }
}

uint64_t __45__RTLocationManager__storeLocations_handler___block_invoke_159(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_considerInUse
{
  if ([(RTLocationManager *)self monitoringLocations])
  {
    return 1;
  }

  return [(RTLocationManager *)self monitoringRhythmicLocations];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTLocationManager_locationManager_didUpdateLocations_completion___block_invoke;
  block[3] = &unk_2788C5110;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v20 = v11;
  v21 = a2;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_async(v12, block);
}

void __67__RTLocationManager_locationManager_didUpdateLocations_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v3 = [*(a1 + 40) locationManagerRoutine];
    if (v3)
    {
      v4 = *(a1 + 48);
      v1 = [*(a1 + 40) locationManagerRoutine];
      if ([v4 isEqual:v1])
      {

        goto LABEL_11;
      }
    }

    v5 = [*(a1 + 40) locationManagerRoutine];
    if (v5)
    {

      if (v3)
      {
      }
    }

    else
    {
      v6 = [*(a1 + 40) _considerInUse];
      if (v3)
      {
      }

      if (v6)
      {
LABEL_11:
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __67__RTLocationManager_locationManager_didUpdateLocations_completion___block_invoke_2;
        v46[3] = &unk_2788C8170;
        v7 = *(a1 + 32);
        v46[4] = *(a1 + 40);
        [v7 enumerateObjectsUsingBlock:v46];
        v8 = [*(a1 + 32) sortedArrayUsingComparator:&__block_literal_global_165_0];
        v9 = [*(a1 + 40) preprocessLocationsForStorage:v8];

        v10 = *(a1 + 40);
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __67__RTLocationManager_locationManager_didUpdateLocations_completion___block_invoke_2_166;
        v43[3] = &unk_2788C8A48;
        v45 = *(a1 + 64);
        v43[4] = v10;
        v44 = *(a1 + 32);
        [v10 _storeLocations:v9 handler:v43];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __67__RTLocationManager_locationManager_didUpdateLocations_completion___block_invoke_167;
        v42[3] = &unk_2788C8170;
        v42[4] = *(a1 + 40);
        [v9 enumerateObjectsUsingBlock:v42];
        v11 = [v9 lastObject];
        v12 = [v11 timestamp];
        v13 = [*(a1 + 40) lastLocation];
        v14 = [v13 timestamp];
        v15 = [v12 isOnOrAfter:v14];

        if (v15)
        {
          v16 = [v9 lastObject];
          [*(a1 + 40) setLastLocation:v16];
        }

        v17 = *(a1 + 40);
        v18 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
        if (![v17 getNumberOfObservers:v18])
        {
          v19 = *(a1 + 40);
          v20 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
          if (![v19 getNumberOfObservers:v20])
          {
            v39 = *(a1 + 40);
            v40 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
            v41 = [v39 getNumberOfObservers:v40];

            if (!v41)
            {
LABEL_23:
              v36 = *(a1 + 56);
              if (v36)
              {
                (*(v36 + 16))();
              }

              return;
            }

LABEL_17:
            v21 = *(a1 + 40);
            v22 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
            v23 = [v21 getNumberOfObservers:v22];

            if (v23)
            {
              v24 = *(a1 + 40);
              v25 = [[RTLocationManagerNotificationLocationsLeeched alloc] initWithLocations:v9];
              [v24 postNotification:v25];
            }

            v26 = *(a1 + 40);
            v27 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
            v28 = [v26 getNumberOfObservers:v27];

            if (v28)
            {
              v29 = *(a1 + 40);
              v30 = [[RTLocationManagerNotificationLocationsAccuracyHundredMeters alloc] initWithLocations:v9];
              [v29 postNotification:v30];
            }

            v31 = *(a1 + 40);
            v32 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
            v33 = [v31 getNumberOfObservers:v32];

            if (v33)
            {
              v34 = *(a1 + 40);
              v35 = [[RTLocationManagerNotificationLocationsAccuracyBest alloc] initWithLocations:v9];
              [v34 postNotification:v35];
            }

            goto LABEL_23;
          }
        }

        goto LABEL_17;
      }
    }
  }

  v37 = *(a1 + 56);
  if (v37)
  {
    v38 = *(v37 + 16);

    v38();
  }
}

void __67__RTLocationManager_locationManager_didUpdateLocations_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 type] == 13)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = *(*(a1 + 32) + 56);
      v6 = 138412547;
      v7 = v5;
      v8 = 2117;
      v9 = v3;
      _os_log_fault_impl(&dword_2304B3000, v4, OS_LOG_TYPE_FAULT, "%@, received location of LoiOverride type, location, %{sensitive}@", &v6, 0x16u);
    }
  }
}

uint64_t __67__RTLocationManager_locationManager_didUpdateLocations_completion___block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

void __67__RTLocationManager_locationManager_didUpdateLocations_completion___block_invoke_2_166(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 2)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 56);
      v9 = 138413058;
      v10 = v6;
      v11 = 2112;
      v12 = v8;
      v13 = 2048;
      v14 = [v7 count];
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%@, %@, encountered error storing %lu locations, error, %@", &v9, 0x2Au);
    }
  }
}

void __67__RTLocationManager_locationManager_didUpdateLocations_completion___block_invoke_167(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 56);
      v6 = [v3 toString];
      v19 = 138412547;
      v20 = v5;
      v21 = 2117;
      v22 = v6;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, received location, %{sensitive}@", &v19, 0x16u);
    }
  }

  v7 = [v3 timestamp];
  v8 = [*(a1 + 32) lastLocation];
  v9 = [v8 timestamp];
  v10 = [v7 isBeforeDate:v9];

  if (v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = v12[7];
      v14 = [v12 lastLocation];
      v15 = [*(a1 + 32) lastLocation];
      v16 = [v15 timestamp];
      v17 = [v3 timestamp];
      [v16 timeIntervalSinceDate:v17];
      v19 = 138413059;
      v20 = v13;
      v21 = 2117;
      v22 = v3;
      v23 = 2117;
      v24 = v14;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, current location, %{sensitive}@, predates last location, %{sensitive}@, interval, %.2f", &v19, 0x2Au);
    }
  }
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v12 = 138412546;
      v13 = locationBundlePathShortname;
      v14 = 2048;
      v15 = a4;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, didChangeAuthorizationStatus, %ld", &v12, 0x16u);
    }
  }

  v9 = [(RTLocationManager *)self authorizationManager];
  [v9 updateRoutineEnabled:a4 == 3];

  v10 = [(RTLocationManager *)self effectiveLocationBundlePath];
  LOBYTE(v9) = [v10 isEqualToString:@"/System/Library/LocationBundles/Routine.bundle"];

  if ((v9 & 1) == 0)
  {
    v11 = [(RTLocationManager *)self locationManager];
    -[RTLocationManager setEnabled:](self, "setEnabled:", [v11 authorizationStatus] == 3);

    [(RTLocationManager *)self shouldLeechLocations];
    [(RTLocationManager *)self shouldPersistLocations];
  }
}

- (void)setLastLocation:(id)a3
{
  v5 = a3;
  v6 = [(CLLocation *)self->_lastLocation timestamp];
  v7 = [v5 timestamp];
  v8 = [v6 laterDate:v7];
  v9 = [(CLLocation *)self->_lastLocation timestamp];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    objc_storeStrong(&self->_lastLocation, a3);
    [v5 horizontalAccuracy];
    if (v11 >= 0.0)
    {
      [v5 horizontalAccuracy];
      if (v12 <= *MEMORY[0x277CE4270])
      {
        v13 = [(RTLocationManager *)self currentLocationRequests];
        v14 = [v13 count];

        if (v14)
        {
          v15 = [(RTLocationManager *)self currentLocationRequests];
          v16 = MEMORY[0x277D85DD0];
          v17 = 3221225472;
          v18 = __37__RTLocationManager_setLastLocation___block_invoke;
          v19 = &unk_2788CC0F8;
          v20 = self;
          v21 = v5;
          [v15 enumerateObjectsUsingBlock:&v16];

          [(RTLocationManager *)self _reviewActiveLocationRequests:v16];
        }
      }
    }
  }
}

void __37__RTLocationManager_setLastLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  v8 = [v5 options];
  LODWORD(v6) = [v6 isValidLocation:v7 options:v8];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        v11 = *(*(a1 + 32) + 56);
        v12 = [v10 timestamp];
        v13 = [v5 startDate];
        [v12 timeIntervalSinceDate:v13];
        v17 = 136316163;
        v18 = "[RTLocationManager setLastLocation:]_block_invoke";
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v5;
        v23 = 2117;
        v24 = v10;
        v25 = 2048;
        v26 = v14;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, %@, fulfilled request, %@, location, %{sensitive}@, delta, %.2f", &v17, 0x34u);
      }
    }

    v15 = [v5 handler];
    v15[2](v15, *(a1 + 40), 0);

    v16 = [*(a1 + 32) currentLocationRequests];
    [v16 removeObjectAtIndex:a3];
  }
}

- (void)fetchLastLocationWithHandler:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__RTLocationManager_fetchLastLocationWithHandler___block_invoke;
    block[3] = &unk_2788C6300;
    block[4] = self;
    v9 = a2;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __50__RTLocationManager_fetchLastLocationWithHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) enabled])
  {
    v2 = *(a1 + 40);
    v12 = [*(a1 + 32) lastLocation];
    (*(v2 + 16))(v2);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = NSStringFromSelector(*(a1 + 48));
        v5 = *(*(a1 + 32) + 56);
        *buf = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, doesn't have location authorization", buf, 0x16u);
      }
    }

    v6 = *(a1 + 40);
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D01448];
    v13 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"no authorization"];
    v14 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = [v7 errorWithDomain:v8 code:2 userInfo:v10];
    (*(v6 + 16))(v6, 0, v11);
  }
}

- (void)fetchCurrentLocationWithOptions:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: options";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_11;
  }

  if (!v7)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: handler";
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      *buf = 136315650;
      v18 = "[RTLocationManager fetchCurrentLocationWithOptions:handler:]";
      v19 = 2112;
      v20 = locationBundlePathShortname;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, %@, options, %@", buf, 0x20u);
    }
  }

  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTLocationManager_fetchCurrentLocationWithOptions_handler___block_invoke;
  block[3] = &unk_2788C67D8;
  block[4] = self;
  v16 = v8;
  v15 = v6;
  dispatch_async(v11, block);

LABEL_12:
}

void __61__RTLocationManager_fetchCurrentLocationWithOptions_handler___block_invoke(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([a1[4] enabled])
  {
    if ([a1[5] yieldLastLocation])
    {
      v3 = a1[4];
      v2 = a1[5];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__RTLocationManager_fetchCurrentLocationWithOptions_handler___block_invoke_172;
      v16[3] = &unk_2788CC120;
      v16[4] = v3;
      v17 = v2;
      v18 = a1[6];
      [v3 fetchCachedLocationWithOptions:v17 handler:v16];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1[4] + 7);
          *buf = 136315394;
          v22 = "[RTLocationManager fetchCurrentLocationWithOptions:handler:]_block_invoke";
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, %@, yieldLastLocation, NO, forwarding request to CL.", buf, 0x16u);
        }
      }

      v14 = [[RTLocationManagerLocationRequest alloc] initWithOptions:a1[5] handler:a1[6]];
      v15 = [a1[4] currentLocationRequests];
      [v15 addObject:v14];

      [a1[4] _reviewActiveLocationRequests];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1[4] + 7);
        *buf = 136315394;
        v22 = "[RTLocationManager fetchCurrentLocationWithOptions:handler:]_block_invoke";
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, %@, doesn't have location authorization", buf, 0x16u);
      }
    }

    v6 = a1[6];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"no authorization"];
    v20 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [v7 errorWithDomain:v8 code:2 userInfo:v10];
    v6[2](v6, 0, v11);
  }
}

void __61__RTLocationManager_fetchCurrentLocationWithOptions_handler___block_invoke_172(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(*(a1 + 32) + 56);
        v10 = [[RTLocationManagerLocationRequest alloc] initWithOptions:*(a1 + 40) handler:*(a1 + 48)];
        v11 = [v5 timestamp];
        [v11 timeIntervalSinceNow];
        v17 = 136316163;
        v18 = "[RTLocationManager fetchCurrentLocationWithOptions:handler:]_block_invoke";
        v19 = 2112;
        v20 = v9;
        v21 = 2112;
        v22 = v10;
        v23 = 2117;
        v24 = v5;
        v25 = 2048;
        v26 = v12;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, %@, fulfilled request, %@, location, %{sensitive}@, delta, %.2f", &v17, 0x34u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v7)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(*(a1 + 32) + 56);
        v17 = 136315394;
        v18 = "[RTLocationManager fetchCurrentLocationWithOptions:handler:]_block_invoke";
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, %@, yieldLastLocation, YES, doesn't have a current location, forwarding request to CL.", &v17, 0x16u);
      }
    }

    v15 = [[RTLocationManagerLocationRequest alloc] initWithOptions:*(a1 + 40) handler:*(a1 + 48)];
    v16 = [*(a1 + 32) currentLocationRequests];
    [v16 addObject:v15];

    [*(a1 + 32) _reviewActiveLocationRequests];
  }
}

- (void)fetchCachedLocationWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v11 = "Invalid parameter not satisfying: options";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    goto LABEL_7;
  }

  if (!v7)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v11 = "Invalid parameter not satisfying: handler";
    goto LABEL_10;
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTLocationManager_fetchCachedLocationWithOptions_handler___block_invoke;
  block[3] = &unk_2788C67D8;
  block[4] = self;
  v14 = v8;
  v13 = v6;
  dispatch_async(v9, block);

LABEL_8:
}

void __60__RTLocationManager_fetchCachedLocationWithOptions_handler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) enabled])
  {
    v2 = [*(a1 + 32) lastLocation];
    if (v2 && (v3 = v2, v4 = objc_opt_class(), [*(a1 + 32) lastLocation], v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "isValidLocation:options:", v5, *(a1 + 40)), v5, v3, v4) && (objc_msgSend(*(a1 + 32), "lastLocation"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(*(a1 + 32) + 56);
          *buf = 136315394;
          v26 = "[RTLocationManager fetchCachedLocationWithOptions:handler:]_block_invoke";
          v27 = 2112;
          v28 = v16;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, %@, doesn't have a valid cached location", buf, 0x16u);
        }
      }

      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"no cached location", *MEMORY[0x277CCA450]];
      v22 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v8 = [v17 errorWithDomain:v18 code:6 userInfo:v20];

      v7 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(*(a1 + 32) + 56);
        *buf = 136315394;
        v26 = "[RTLocationManager fetchCachedLocationWithOptions:handler:]_block_invoke";
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, %@, doesn't have location authorization", buf, 0x16u);
      }
    }

    v11 = *(a1 + 48);
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"no authorization"];
    v24 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [v12 errorWithDomain:v13 code:2 userInfo:v8];
    (*(v11 + 16))(v11, 0, v14);
  }
}

void __50__RTLocationManager__reviewActiveLocationRequests__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onActiveLocationRequestTimerExpiry];
}

+ (BOOL)isValidLocation:(id)a3 options:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAA8] now];
  [v5 horizontalAccuracy];
  if (v8 > 0.0 && ([v5 horizontalAccuracy], v10 = v9, objc_msgSend(v6, "horizontalAccuracy"), v10 <= v11))
  {
    v13 = [v5 timestamp];
    v14 = [v7 laterDate:v13];
    if ([v14 isEqualToDate:v7])
    {
      v15 = [v5 timestamp];
      [v7 timeIntervalSinceDate:v15];
      v17 = v16;
      [v6 maxAge];
      v12 = v17 <= v18;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      v23 = "+[RTLocationManager isValidLocation:options:]";
      v24 = 2117;
      v22 = 136315907;
      v25 = v5;
      if (v12)
      {
        v20 = @"YES";
      }

      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%s, location, %{sensitive}@, options, %@, isValid, %@", &v22, 0x2Au);
    }
  }

  return v12;
}

- (void)fetchCurrentLocationWithHandler:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [objc_opt_class() defaultLocationRequestOptions];
    [(RTLocationManager *)self fetchCurrentLocationWithOptions:v5 handler:v4];
  }
}

- (void)fetchCachedLocationWithHandler:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [objc_opt_class() defaultLocationRequestOptions];
    [(RTLocationManager *)self fetchCachedLocationWithOptions:v5 handler:v4];
  }
}

- (void)_fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_9:
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[RTLocationManager _fetchStoredLocationsCountFromDate:toDate:uncertainty:limit:handler:]";
      v35 = 1024;
      v36 = 1112;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: toDate (in %s:%d)", buf, 0x12u);
    }

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v34 = "[RTLocationManager _fetchStoredLocationsCountFromDate:toDate:uncertainty:limit:handler:]";
    v35 = 1024;
    v36 = 1111;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fromDate (in %s:%d)", buf, 0x12u);
  }

  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v15)
  {
LABEL_4:
    if ([(RTLocationManager *)self enabled])
    {
      v16 = [(RTLocationManager *)self locationStore];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __89__RTLocationManager__fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke;
      v24[3] = &unk_2788CBAF0;
      v28 = a2;
      v24[4] = self;
      v25 = v13;
      v26 = v14;
      v29 = a5;
      v30 = a6;
      v27 = v15;
      [v16 fetchStoredLocationsCountFromDate:v25 toDate:v26 uncertainty:a6 limit:v24 handler:a5];
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01448];
      v31 = *MEMORY[0x277CCA450];
      v32 = @"Service has been disabled by user.";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v23 = [v20 errorWithDomain:v21 code:2 userInfo:v22];
      (*(v15 + 2))(v15, 0, v23);
    }

    goto LABEL_16;
  }

LABEL_12:
  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v34 = "[RTLocationManager _fetchStoredLocationsCountFromDate:toDate:uncertainty:limit:handler:]";
    v35 = 1024;
    v36 = 1113;
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_16:
}

void __89__RTLocationManager__fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 64));
      v8 = *(*(a1 + 32) + 56);
      v9 = [*(a1 + 40) stringFromDate];
      v10 = [*(a1 + 48) stringFromDate];
      v11 = *(a1 + 72);
      v12 = *(a1 + 80);
      v13 = 138413826;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2048;
      v18 = a2;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, fetched %ld locations from date, %@, to date, %@, uncertainty, %.2f, limit, %lu", &v13, 0x48u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(RTNotifier *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__RTLocationManager_fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke;
  v19[3] = &unk_2788C54B8;
  v19[4] = self;
  v20 = v12;
  v23 = a5;
  v24 = a6;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, v19);
}

- (void)_fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTLocationManager _fetchStoredLocationsWithOptions:handler:]";
      v12 = 1024;
      v13 = 1165;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01318]) initWithEnumerationOptions:v6];
  [(RTLocationManager *)self _fetchStoredLocationsWithContext:v9 handler:v7];
}

- (void)fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTLocationManager_fetchStoredLocationsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredLocationsWithContext:(id)a3 handler:(id)a4
{
  v59[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if ([(RTLocationManager *)self enabled])
    {
      if (self->_locationStore)
      {
        v9 = [v7 options];
        v10 = [v9 downsampleRequired];

        if (v10)
        {
          v11 = [v7 options];
          v12 = [v11 smoothingRequired];

          if (v12)
          {
            v37 = objc_opt_new();
          }

          else
          {
            v37 = 0;
          }

          v21 = [v7 copy];
          v22 = [v21 options];
          [v22 setBatchSize:0];

          v36 = [MEMORY[0x277D01168] createErrorFunctionWithPerpendicularDistance];
          v23 = [v7 options];
          [v23 smoothingErrorThreshold];
          v25 = v24;

          if (v25 <= *MEMORY[0x277D01480])
          {
            v25 = 5.0;
          }

          v26 = [v7 options];
          v27 = [v26 batchSize];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v28 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = NSStringFromSelector(a2);
              locationBundlePathShortname = self->_locationBundlePathShortname;
              *buf = 138413058;
              *&buf[4] = v29;
              *&buf[12] = 2112;
              *&buf[14] = locationBundlePathShortname;
              *&buf[22] = 2112;
              v54 = v7;
              LOWORD(v55) = 2048;
              *(&v55 + 2) = v25;
              _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, %@, context, %@, smoothing error threshold, %f", buf, 0x2Au);
            }
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v54 = __Block_byref_object_copy__87;
          *&v55 = __Block_byref_object_dispose__87;
          *(&v55 + 1) = objc_opt_new();
          v48[0] = 0;
          v48[1] = v48;
          v48[2] = 0x2020000000;
          v48[3] = 0;
          locationStore = self->_locationStore;
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __62__RTLocationManager__fetchStoredLocationsWithContext_handler___block_invoke_189;
          v38[3] = &unk_2788CC170;
          v45 = a2;
          v38[4] = self;
          v41 = v8;
          v43 = v48;
          v44 = buf;
          v46 = v27;
          v32 = v36;
          v42 = v32;
          v47 = v25;
          v33 = v37;
          v39 = v33;
          v40 = v7;
          [(RTLocationStoreProtocol *)locationStore enumerateStoredLocationsWithContext:v21 usingBlock:v38];

          _Block_object_dispose(v48, 8);
          _Block_object_dispose(buf, 8);
        }

        else
        {
          v20 = self->_locationStore;
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __62__RTLocationManager__fetchStoredLocationsWithContext_handler___block_invoke;
          v49[3] = &unk_2788C5A70;
          v52 = a2;
          v49[4] = self;
          v50 = v7;
          v51 = v8;
          [(RTLocationStoreProtocol *)v20 fetchStoredLocationsWithContext:v50 handler:v49];
        }
      }

      else
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v35 = self->_locationBundlePathShortname;
          *buf = 138412290;
          *&buf[4] = v35;
          _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, LocationStore was nil.", buf, 0xCu);
        }

        (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], 0);
      }
    }

    else
    {
      v56 = *MEMORY[0x277CCA450];
      v57 = @"Service has been disabled by user.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:v17];
      (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], v18);
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTLocationManager _fetchStoredLocationsWithContext:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 1185;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v58 = *MEMORY[0x277CCA450];
    v59[0] = @"A completion handler is a required parameter.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];
    v16 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v34 = self->_locationBundlePathShortname;
      *buf = 138412546;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@, A completion handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __62__RTLocationManager__fetchStoredLocationsWithContext_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v20 = *(*(a1 + 32) + 56);
      v18 = [v5 count];
      v19 = *(a1 + 40);
      v21 = [v5 firstObject];
      v9 = [v21 timestamp];
      v10 = [v9 stringFromDate];
      v11 = [v5 lastObject];
      v12 = [v11 timestamp];
      v13 = [v12 stringFromDate];
      *buf = 138413571;
      v23 = v8;
      v24 = 2112;
      v25 = v20;
      v26 = 2048;
      v27 = v18;
      v28 = 2117;
      v29 = v19;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, fetched %ld locations, context, %{sensitive}@, first location date, %@, last location date, %@", buf, 0x3Eu);
    }
  }

  v14 = [*(a1 + 40) options];
  v15 = [v14 smoothingRequired];

  if (v15)
  {
    v16 = objc_opt_new();
    v17 = [v16 smoothLocations:v5];

    v5 = v17;
  }

  (*(*(a1 + 48) + 16))();
}

void __62__RTLocationManager__fetchStoredLocationsWithContext_handler___block_invoke_189(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      v46 = *(*(a1 + 32) + 56);
      v52 = v8;
      v11 = [v7 count];
      v48 = [v7 firstObject];
      [v48 timestamp];
      v50 = a4;
      v13 = v12 = v7;
      v14 = [v13 stringFromDate];
      v15 = [v12 lastObject];
      v16 = [v15 timestamp];
      v17 = [v16 stringFromDate];
      *buf = 138413314;
      v55 = v10;
      v56 = 2112;
      v57 = v46;
      v58 = 2048;
      v59 = v11;
      v8 = v52;
      v60 = 2112;
      v61 = v14;
      v62 = 2112;
      v63 = v17;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, fetched %ld locations, first location date, %@, last location date, %@, decimated, YES", buf, 0x34u);

      v7 = v12;
      a4 = v50;
    }
  }

  if (v8)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v43 = *(*(a1 + 32) + 56);
      *buf = 138412546;
      v55 = v43;
      v56 = 2112;
      v57 = v8;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%@, received error while fetching stored locations, %@, breaking out.", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
    *a4 = 1;
  }

  else
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    v19 = *(a1 + 96);
    v20 = *(*(*(a1 + 72) + 8) + 24);
    if ([v7 count] && (v21 = v19 / v20) != 0)
    {
      v22 = [v7 count];
      v23 = [MEMORY[0x277D01168] filterConvergingLocations:v7];

      v24 = [v23 count];
      v25 = *(a1 + 40);
      if (v25)
      {
        v7 = [v25 smoothLocations:v23];
      }

      else
      {
        v7 = v23;
      }

      v35 = [MEMORY[0x277D01168] downsampleLocations:v7 errorFunction:*(a1 + 64) errorThreshold:v21 outputSize:*(a1 + 104)];
      [*(*(*(a1 + 80) + 8) + 40) addObjectsFromArray:v35];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v36 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = NSStringFromSelector(*(a1 + 88));
          v45 = *(*(a1 + 32) + 56);
          v47 = v37;
          v44 = *(*(*(a1 + 72) + 8) + 24);
          v49 = *(a1 + 96);
          v51 = [*(a1 + 48) options];
          if ([v51 smoothingRequired])
          {
            v38 = @"YES";
          }

          else
          {
            v38 = @"NO";
          }

          v39 = [v7 count];
          v40 = v7;
          v41 = [v35 count];
          v42 = [*(*(*(a1 + 80) + 8) + 40) count];
          *buf = 138414850;
          v55 = v47;
          v56 = 2112;
          v57 = v45;
          v58 = 2048;
          v59 = v44;
          v60 = 2048;
          v61 = v49;
          v62 = 2048;
          v63 = v21;
          v64 = 2048;
          v65 = v22;
          v66 = 2048;
          v67 = v24;
          v68 = 2112;
          v69 = v38;
          v70 = 2048;
          v71 = v39;
          v72 = 2048;
          v73 = v41;
          v7 = v40;
          v74 = 2048;
          v75 = v42;
          _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, %@, itr, %lu, target output size, %lu, target sample size for itr, %lu, fetched location count, %lu, pre-filtered location count, %lu, location smoothed, %@, before downssampling location count, %lu, after downsampling count, %lu, cached location count, %lu", buf, 0x70u);

          v8 = 0;
        }
      }
    }

    else
    {
      v26 = [MEMORY[0x277D01168] downsampleLocations:*(*(*(a1 + 80) + 8) + 40) errorFunction:*(a1 + 64) errorThreshold:*(a1 + 96) outputSize:*(a1 + 104)];
      (*(*(a1 + 56) + 16))();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = NSStringFromSelector(*(a1 + 88));
          v29 = a4;
          v30 = *(*(a1 + 32) + 56);
          v31 = *(*(*(a1 + 72) + 8) + 24);
          v53 = *(a1 + 96);
          v32 = [v7 count];
          v33 = [*(*(*(a1 + 80) + 8) + 40) count];
          v34 = [v26 count];
          *buf = 138413826;
          v55 = v28;
          v56 = 2112;
          v57 = v30;
          a4 = v29;
          v58 = 2048;
          v59 = v31;
          v60 = 2048;
          v61 = v53;
          v62 = 2048;
          v63 = v32;
          v64 = 2048;
          v65 = v33;
          v66 = 2048;
          v67 = v34;
          _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, no more stored locations to enumerate, breaking out, itr, %lu, target output size, %lu, fetched location count, %lu, cached location count, %lu, output location count, %lu", buf, 0x48u);
        }
      }

      *a4 = 1;
    }
  }
}

- (void)fetchStoredLocationsWithContext:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTLocationManager_fetchStoredLocationsWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchEstimatedLocationAtDate:(id)a3 options:(id)a4 handler:(id)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v10)
    {
LABEL_3:
      v12 = [(RTNotifier *)self queue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__RTLocationManager_fetchEstimatedLocationAtDate_options_handler___block_invoke;
      v19[3] = &unk_2788C5530;
      v20 = v9;
      v21 = self;
      v22 = v8;
      v23 = v11;
      dispatch_async(v12, v19);

      v13 = v20;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTLocationManager fetchEstimatedLocationAtDate:options:handler:]";
      v26 = 1024;
      LODWORD(v27) = 1337;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "[RTLocationManager fetchEstimatedLocationAtDate:options:handler:]";
    v26 = 1024;
    LODWORD(v27) = 1338;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

  v28 = *MEMORY[0x277CCA450];
  v29[0] = @"A completion handler is a required parameter.";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v13];
  v17 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    locationBundlePathShortname = self->_locationBundlePathShortname;
    *buf = 138412546;
    v25 = locationBundlePathShortname;
    v26 = 2112;
    v27 = v16;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, A completion handler is a required parameter, %@", buf, 0x16u);
  }

LABEL_12:
}

void __66__RTLocationManager_fetchEstimatedLocationAtDate_options_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!*(a1 + 32))
  {
    v5 = v2;
    v4 = objc_alloc_init(MEMORY[0x277D010F0]);

    v3 = v4;
  }

  v6 = v3;
  [*(a1 + 40) _fetchEstimatedLocationAtDate:*(a1 + 48) options:v3 handler:*(a1 + 56)];
}

- (void)_fetchEstimatedLocationAtDate:(id)a3 options:(id)a4 handler:(id)a5
{
  v113[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTLocationManager _fetchEstimatedLocationAtDate:options:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 1363;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v9)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTLocationManager _fetchEstimatedLocationAtDate:options:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 1364;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v10)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTLocationManager _fetchEstimatedLocationAtDate:options:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 1365;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if ([(RTLocationManager *)self enabled])
  {
    if (self->_locationStore)
    {
      if ([(RTLocationManager *)self locationStoreAvailable])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = NSStringFromSelector(a2);
            locationBundlePathShortname = self->_locationBundlePathShortname;
            *buf = 138413058;
            *&buf[4] = v15;
            *&buf[12] = 2112;
            *&buf[14] = locationBundlePathShortname;
            *&buf[22] = 2112;
            v105 = v8;
            LOWORD(v106) = 2112;
            *(&v106 + 2) = v9;
            _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, date, %@, options, %@", buf, 0x2Au);
          }
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v105 = __Block_byref_object_copy__87;
        *&v106 = __Block_byref_object_dispose__87;
        *(&v106 + 1) = 0;
        v88 = 0;
        v89 = &v88;
        v90 = 0x3032000000;
        v91 = __Block_byref_object_copy__87;
        v92 = __Block_byref_object_dispose__87;
        v93 = 0;
        v17 = dispatch_semaphore_create(0);
        [v9 timeInterval];
        if (v18 >= 0.0)
        {
          v19 = v18;
        }

        else
        {
          v19 = 30.0;
        }

        v20 = objc_alloc(MEMORY[0x277CCA970]);
        v21 = [v8 dateByAddingTimeInterval:-v19];
        v22 = [v8 dateByAddingTimeInterval:v19];
        v76 = [v20 initWithStartDate:v21 endDate:v22];

        v23 = objc_alloc(MEMORY[0x277D01320]);
        v75 = [v23 initWithDateInterval:v76 horizontalAccuracy:100 batchSize:0 boundingBoxLocation:*MEMORY[0x277CE4228]];
        v74 = [objc_alloc(MEMORY[0x277D01318]) initWithEnumerationOptions:v75];
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __67__RTLocationManager__fetchEstimatedLocationAtDate_options_handler___block_invoke;
        v83[3] = &unk_2788C8930;
        v85 = &v88;
        v86 = buf;
        v87 = a2;
        v83[4] = self;
        v24 = v17;
        v84 = v24;
        [(RTLocationManager *)self _fetchStoredLocationsWithContext:v74 limit:50 referenceDate:v8 handler:v83];
        v25 = (*&buf[8] + 40);
        obj = *(*&buf[8] + 40);
        dsema = v24;
        v73 = [MEMORY[0x277CBEAA8] now];
        v26 = dispatch_time(0, 3600000000000);
        if (!dispatch_semaphore_wait(dsema, v26))
        {
          goto LABEL_35;
        }

        v72 = [MEMORY[0x277CBEAA8] now];
        [v72 timeIntervalSinceDate:v73];
        v28 = v27;
        v29 = objc_opt_new();
        v30 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_620];
        v31 = [MEMORY[0x277CCACC8] callStackSymbols];
        v32 = [v31 filteredArrayUsingPredicate:v30];
        v33 = [v32 firstObject];

        [v29 submitToCoreAnalytics:v33 type:1 duration:v28];
        v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          *v94 = 0;
          _os_log_fault_impl(&dword_2304B3000, v34, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v94, 2u);
        }

        v35 = MEMORY[0x277CCA9B8];
        v113[0] = *MEMORY[0x277CCA450];
        *v97 = @"semaphore wait timeout";
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v113 count:1];
        v37 = [v35 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v36];

        if (v37)
        {
          v38 = v37;

          objc_storeStrong(v25, v37);
          v39 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v68 = NSStringFromSelector(a2);
            v69 = self->_locationBundlePathShortname;
            v70 = *(*&buf[8] + 40);
            *v97 = 138412802;
            *&v97[4] = v68;
            v98 = 2112;
            v99 = v69;
            v100 = 2112;
            v101 = v70;
            _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, %@, error, %@", v97, 0x20u);
          }
        }

        else
        {
LABEL_35:

          objc_storeStrong(v25, obj);
          if ([v89[5] count])
          {
            v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v89[5], "count")}];
            v48 = v89[5];
            v79[0] = MEMORY[0x277D85DD0];
            v79[1] = 3221225472;
            v79[2] = __67__RTLocationManager__fetchEstimatedLocationAtDate_options_handler___block_invoke_200;
            v79[3] = &unk_2788CC198;
            v49 = v47;
            v81 = self;
            v82 = a2;
            v80 = v49;
            [v48 enumerateObjectsUsingBlock:v79];
            v50 = [MEMORY[0x277CBEB38] dictionary];
            [v9 averageSpeed];
            if (v51 >= 0.0)
            {
              v52 = MEMORY[0x277CCABB0];
              [v9 averageSpeed];
              v53 = [v52 numberWithDouble:?];
              [v50 setObject:v53 forKey:@"kRTLocationSmootherAverageMovingSpeed"];
            }

            if ([v9 enableFallbackModel])
            {
              [v50 setObject:MEMORY[0x277CBEC38] forKey:@"kRTLocationSmootherEnableFallbackModel"];
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v54 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                v55 = NSStringFromSelector(a2);
                v56 = self->_locationBundlePathShortname;
                v57 = [v8 stringFromDate];
                *v97 = 138413058;
                *&v97[4] = v55;
                v98 = 2112;
                v99 = v56;
                v100 = 2112;
                v101 = v57;
                v102 = 2112;
                v103 = v50;
                _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "%@, %@, date, %@, parameters, %@", v97, 0x2Au);
              }
            }

            v58 = [(RTLocationManager *)self locationSmoother];
            [v8 timeIntervalSinceReferenceDate];
            v59 = [v58 estimateLocationWithLocations:v49 timestamp:v50 parameters:0 meta:?];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v60 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                v61 = NSStringFromSelector(a2);
                v62 = self->_locationBundlePathShortname;
                v63 = [v8 stringFromDate];
                *v97 = 138413059;
                *&v97[4] = v61;
                v98 = 2112;
                v99 = v62;
                v100 = 2117;
                v101 = v59;
                v102 = 2112;
                v103 = v63;
                _os_log_impl(&dword_2304B3000, v60, OS_LOG_TYPE_INFO, "%@, %@, estimated location, %{sensitive}@, on date, %@", v97, 0x2Au);
              }
            }

            if (v59 && ([v59 horizontalAccuracy], v64 > 0.0))
            {
              v10[2](v10, v59, 0);
            }

            else
            {
              v95 = *MEMORY[0x277CCA450];
              v96 = @"Failed to estimate a location.";
              v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              v66 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:6 userInfo:v65];
              (v10)[2](v10, 0, v66);
            }

            goto LABEL_54;
          }
        }

        v10[2](v10, 0, *(*&buf[8] + 40));
LABEL_54:

        _Block_object_dispose(&v88, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_55;
      }

      v107 = *MEMORY[0x277CCA450];
      v108 = @"resource temporarily unavailable.";
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v46 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v45];
      (v10)[2](v10, 0, v46);
    }

    else
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v67 = self->_locationBundlePathShortname;
        *buf = 138412290;
        *&buf[4] = v67;
        _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, LocationStore was nil.", buf, 0xCu);
      }

      v109 = *MEMORY[0x277CCA450];
      v110 = @"Service error: location store is nil.";
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v44 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:v43];
      (v10)[2](v10, 0, v44);
    }
  }

  else
  {
    v111 = *MEMORY[0x277CCA450];
    v112 = @"Service has been disabled by user.";
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:v40];
    (v10)[2](v10, 0, v41);
  }

LABEL_55:
}

void __67__RTLocationManager__fetchEstimatedLocationAtDate_options_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = *(*(a1 + 32) + 56);
      v11 = [v6 count];
      v12 = *(*(*(a1 + 56) + 8) + 40);
      v13 = 138413058;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, stored locations, %ld, error, %@", &v13, 0x2Au);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __67__RTLocationManager__fetchEstimatedLocationAtDate_options_handler___block_invoke_200(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [v5 horizontalAccuracy];
  if (v6 <= 30.0)
  {
    v8 = 1;
  }

  else
  {
    [v5 horizontalAccuracy];
    if (v7 <= 165.0)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }
  }

  memset(v15, 0, 28);
  v14 = 0u;
  if (v5)
  {
    [v5 clientLocation];
  }

  LODWORD(v14) = v8;
  v9 = objc_alloc(MEMORY[0x277CE41F8]);
  v21 = v14;
  v22 = 0u;
  v23[0] = v15[0];
  *(v23 + 12) = *(v15 + 12);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = [v9 initWithClientLocation:buf];
  [*(a1 + 32) addObject:v10];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = *(*(a1 + 40) + 56);
      *buf = 138413059;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      *&buf[22] = 2117;
      *&buf[24] = v10;
      LOWORD(v17) = 2048;
      *(&v17 + 2) = a3;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, %@, input location, %{sensitive}@, idx, %ld", buf, 0x2Au);
    }
  }
}

- (void)fetchLocationsFromCoreLocationWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTLocationManager_fetchLocationsFromCoreLocationWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchLocationsFromCoreLocationWithOptions:(id)a3 handler:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: options";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_29;
  }

  if (!v8)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: handler";
    goto LABEL_13;
  }

  v10 = [v7 date];

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        v15 = [v7 date];
        v16 = [v15 stringFromDate];
        *buf = 138412802;
        v52 = v13;
        v53 = 2112;
        v54 = v14;
        v55 = 2112;
        v56 = v16;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "#fetchLocFromCL, %@, %@, invoked, date, %@", buf, 0x20u);
      }
    }

    v17 = [(RTLocationManager *)self locationManagerRoutine];
    v18 = [v7 date];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __72__RTLocationManager__fetchLocationsFromCoreLocationWithOptions_handler___block_invoke;
    v49[3] = &unk_2788CC1C0;
    v50 = v9;
    [v17 fetchLocationAtDate:v18 withHandler:v49];

    v19 = v50;
  }

  else
  {
    v21 = [v7 machContinuousTimeSec];

    if (v21)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = NSStringFromSelector(a2);
          v26 = [v7 machContinuousTimeSec];
          [v26 doubleValue];
          *buf = 138412802;
          v52 = v24;
          v53 = 2112;
          v54 = v25;
          v55 = 2050;
          v56 = v27;
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "#fetchLocFromCL, %@, %@, invoked, machContinuousTimeSec, %{public}.3f", buf, 0x20u);
        }
      }

      v28 = [(RTLocationManager *)self locationManagerRoutine];
      v29 = [v7 machContinuousTimeSec];
      [v29 doubleValue];
      v31 = v30;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __72__RTLocationManager__fetchLocationsFromCoreLocationWithOptions_handler___block_invoke_207;
      v47[3] = &unk_2788CC1C0;
      v48 = v9;
      [v28 fetchLocationAtMachContinuousTime:v47 withHandler:v31];

      v19 = v48;
    }

    else
    {
      v32 = [v7 numberOfSeconds];

      if (v32)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = NSStringFromSelector(a2);
            v37 = [v7 numberOfSeconds];
            *buf = 138412802;
            v52 = v35;
            v53 = 2112;
            v54 = v36;
            v55 = 1026;
            LODWORD(v56) = [v37 unsignedIntValue];
            _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "#fetchLocFromCL, %@, %@, invoked, numberOfSeconds, %{public}u", buf, 0x1Cu);
          }
        }

        v38 = [(RTLocationManager *)self locationManagerRoutine];
        v39 = [v7 numberOfSeconds];
        v40 = [v39 unsignedIntValue];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __72__RTLocationManager__fetchLocationsFromCoreLocationWithOptions_handler___block_invoke_208;
        v45[3] = &unk_2788C6D60;
        v46 = v9;
        [v38 fetchLocationsInLastSeconds:v40 withHandler:v45];

        v19 = v46;
      }

      else
      {
        v41 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = NSStringFromSelector(a2);
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          *buf = 138412546;
          v52 = v42;
          v53 = 2112;
          v54 = v44;
          _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "%@, %@ invalid options.", buf, 0x16u);
        }

        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:0];
        (v9)[2](v9, 0, v19);
      }
    }
  }

LABEL_29:
}

void __72__RTLocationManager__fetchLocationsFromCoreLocationWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 systemTimeNotUserTime];
      [v5 machContinuousTimeSec];
      v10 = v9;
      v11 = [v5 location];
      [v11 horizontalAccuracy];
      *buf = 138412802;
      v17 = v8;
      v18 = 2048;
      v19 = v10;
      v20 = 2050;
      v21 = v12;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#fetchLocFromCL, CLLocationExtendedTimestamps, systemTimeNotUserTime, %@, machContinuousTimeSec, %.3f, horizontalAccuracy, %{public}.3f", buf, 0x20u);
    }
  }

  v13 = *(a1 + 32);
  if (v5)
  {
    v15 = v5;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    (*(v13 + 16))(v13, v14, v6);
  }

  else
  {
    (*(v13 + 16))(v13, 0, v6);
  }
}

void __72__RTLocationManager__fetchLocationsFromCoreLocationWithOptions_handler___block_invoke_207(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 systemTimeNotUserTime];
      [v5 machContinuousTimeSec];
      v10 = v9;
      v11 = [v5 location];
      [v11 horizontalAccuracy];
      v15 = 138412802;
      v16 = v8;
      v17 = 2048;
      v18 = v10;
      v19 = 2050;
      v20 = v12;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#fetchLocFromCL, CLLocationExtendedTimestamps, systemTimeNotUserTime, %@, machContinuousTimeSec, %.3f, horizontalAccuracy, %{public}.3f", &v15, 0x20u);
    }
  }

  v13 = *(a1 + 32);
  if (v5)
  {
    v14 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    (*(v13 + 16))(v13, v14, v6);
  }

  else
  {
    (*(v13 + 16))(v13, 0, v6);
  }
}

void __72__RTLocationManager__fetchLocationsFromCoreLocationWithOptions_handler___block_invoke_208(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v5 objectAtIndexedSubscript:0];
        v11 = [v10 systemTimeNotUserTime];
        v12 = [v5 objectAtIndexedSubscript:0];
        [v12 machContinuousTimeSec];
        v14 = v13;
        v15 = [v5 objectAtIndexedSubscript:0];
        v16 = [v15 location];
        [v16 horizontalAccuracy];
        v28 = 67109890;
        v29 = 0;
        v30 = 2112;
        v31 = v11;
        v32 = 2048;
        v33 = v14;
        v34 = 2050;
        v35 = v17;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#fetchLocFromCL, CLLocationExtendedTimestamps[%d], systemTimeNotUserTime, %@, machContinuousTimeSec, %.3f, horizontalAccuracy, %{public}.3f", &v28, 0x26u);
      }
    }

    v18 = v8 - 1;
    if (v8 != 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v5 objectAtIndexedSubscript:v18];
        v21 = [v20 systemTimeNotUserTime];
        v22 = [v5 objectAtIndexedSubscript:v18];
        [v22 machContinuousTimeSec];
        v24 = v23;
        v25 = [v5 objectAtIndexedSubscript:v18];
        v26 = [v25 location];
        [v26 horizontalAccuracy];
        v28 = 67109890;
        v29 = v18;
        v30 = 2112;
        v31 = v21;
        v32 = 2048;
        v33 = v24;
        v34 = 2050;
        v35 = v27;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "#fetchLocFromCL, CLLocationExtendedTimestamps[%d], systemTimeNotUserTime, %@, machContinuousTimeSec, %.3f, horizontalAccuracy, %{public}.3f", &v28, 0x26u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_fetchStoredLocationsWithContext:(id)a3 limit:(unint64_t)a4 referenceDate:(id)a5 handler:(id)a6
{
  v105[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v57 = a5;
  v49 = a6;
  v58 = v8;
  v9 = [v8 options];
  v50 = [v9 batchSize];

  v56 = objc_opt_new();
  v55 = objc_opt_new();
  v52 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__87;
  v82 = __Block_byref_object_dispose__87;
  v83 = 0;
  v53 = *MEMORY[0x277D01448];
  v54 = *MEMORY[0x277CCA450];
  do
  {
    context = objc_autoreleasePoolPush();
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v10 = dispatch_semaphore_create(0);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__RTLocationManager__fetchStoredLocationsWithContext_limit_referenceDate_handler___block_invoke;
    aBlock[3] = &unk_2788CC1E8;
    v70 = &v78;
    v71 = &v84;
    v59 = v57;
    v66 = v59;
    v62 = v56;
    v67 = v62;
    v11 = v55;
    v72 = &v74;
    v73 = a4;
    v61 = v11;
    v68 = v11;
    v12 = v10;
    v69 = v12;
    v13 = _Block_copy(aBlock);
    v14 = objc_alloc(MEMORY[0x277D01318]);
    v15 = [v58 options];
    v16 = [v14 initWithEnumerationOptions:v15 offset:v85[3]];

    [(RTLocationManager *)self _fetchStoredLocationsWithContext:v16 handler:v13];
    v17 = v12;
    v18 = [MEMORY[0x277CBEAA8] now];
    v19 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v17, v19))
    {
      v20 = [MEMORY[0x277CBEAA8] now];
      [v20 timeIntervalSinceDate:v18];
      v22 = v21;
      v23 = objc_opt_new();
      v24 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_620];
      v25 = [MEMORY[0x277CCACC8] callStackSymbols];
      v26 = [v25 filteredArrayUsingPredicate:v24];
      v27 = [v26 firstObject];

      [v23 submitToCoreAnalytics:v27 type:1 duration:v22];
      v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v29 = MEMORY[0x277CCA9B8];
      v105[0] = v54;
      *buf = @"semaphore wait timeout";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v105 count:1];
      v31 = [v29 errorWithDomain:v53 code:15 userInfo:v30];

      if (v31)
      {
        v32 = v31;

        v33 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v31 = 0;
    }

    v33 = 1;
LABEL_9:

    v34 = v31;
    if ((v33 & 1) == 0)
    {
      objc_storeStrong(v79 + 5, v31);
    }

    if (v79[5])
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(a2);
        locationBundlePathShortname = self->_locationBundlePathShortname;
        v48 = v79[5];
        *buf = 138412802;
        *&buf[4] = v46;
        v89 = 2112;
        v90 = locationBundlePathShortname;
        v91 = 2112;
        v92 = v48;
        _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, %@, stop fetching due to error, %@", buf, 0x20u);
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = NSStringFromSelector(a2);
        v39 = self->_locationBundlePathShortname;
        v40 = [v59 stringFromDate];
        v41 = v85[3];
        v42 = [v62 count];
        v43 = [v61 count];
        *buf = 138414338;
        *&buf[4] = v38;
        v89 = 2112;
        v90 = v39;
        v91 = 2112;
        v92 = v40;
        v93 = 2048;
        v94 = v50;
        v95 = 2048;
        v96 = a4;
        v97 = 2048;
        v98 = v41;
        v99 = 2048;
        v100 = v42;
        v101 = 2048;
        v102 = v43;
        v103 = 2048;
        v104 = ++v52;
        _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, %@, date, %@, batchSize, %lu, limit, %lu, offset, %lu, locs.before.date, %lu, locs.after.date, %lu, idx, %lu", buf, 0x5Cu);
      }
    }

    if ((v75[3] & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v35 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v44 = NSStringFromSelector(a2);
        v45 = self->_locationBundlePathShortname;
        *buf = 138412546;
        *&buf[4] = v44;
        v89 = 2112;
        v90 = v45;
        _os_log_debug_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEBUG, "%@, %@, no more locations to fetch.", buf, 0x16u);
      }

LABEL_14:

LABEL_15:
      v36 = 0;
      goto LABEL_16;
    }

    v36 = 1;
LABEL_16:

    _Block_object_dispose(&v74, 8);
    objc_autoreleasePoolPop(context);
  }

  while ((v36 & 1) != 0);
  [v62 addObjectsFromArray:v61];
  (v49)[2](v49, v62, v79[5]);
  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(&v84, 8);
}

void __82__RTLocationManager__fetchStoredLocationsWithContext_limit_referenceDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v7 = [v5 count];
  *(*(*(a1 + 72) + 8) + 24) += v7;
  if (v7)
  {
    v19 = v6;
    v21 = v5;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 timestamp];
          v15 = [v14 isBeforeDate:*(a1 + 32)];

          if (v15)
          {
            v16 = 40;
          }

          else
          {
            v16 = 48;
          }

          [*(a1 + v16) addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    if ([*(a1 + 40) count] > *(a1 + 88))
    {
      [*(a1 + 40) removeObjectsInRange:{0, objc_msgSend(*(a1 + 40), "count") - *(a1 + 88)}];
    }

    v17 = [*(a1 + 48) count];
    v18 = *(a1 + 88);
    v6 = v20;
    if (v17 > v18)
    {
      [*(a1 + 48) removeObjectsInRange:{v18, objc_msgSend(*(a1 + 48), "count") - *(a1 + 88)}];
    }

    *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 48) count] != *(a1 + 88);
    v5 = v21;
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (void)onActiveLocationRequestTimerExpiry
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v5 = [(RTLocationManager *)self currentLocationRequests];
      *buf = 136315650;
      v14 = "[RTLocationManager onActiveLocationRequestTimerExpiry]";
      v15 = 2112;
      v16 = locationBundlePathShortname;
      v17 = 1024;
      v18 = [v5 count];
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, %@, #location requests, %d", buf, 0x1Cu);
    }
  }

  v6 = [(RTLocationManager *)self activeLocationRequestTimer];

  if (v6)
  {
    v7 = [(RTLocationManager *)self activeLocationRequestTimer];
    [v7 invalidate];

    [(RTLocationManager *)self setActiveLocationRequestTimer:0];
  }

  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v9 = [(RTLocationManager *)self currentLocationRequests];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__RTLocationManager_onActiveLocationRequestTimerExpiry__block_invoke;
  v11[3] = &unk_2788CC210;
  v12 = v8;
  v10 = v8;
  [v9 enumerateObjectsUsingBlock:v11];

  [(RTLocationManager *)self _handleExpiredLocationRequestsWithIndexes:v10];
  [(RTLocationManager *)self _reviewActiveLocationRequests];
}

void __55__RTLocationManager_onActiveLocationRequestTimerExpiry__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 expiryDate];
  [v5 timeIntervalSinceNow];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v8 = *(a1 + 32);

    [v8 addIndex:a3];
  }
}

- (void)_handleExpiredLocationRequestsWithIndexes:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      *buf = 136315650;
      v10 = "[RTLocationManager _handleExpiredLocationRequestsWithIndexes:]";
      v11 = 2112;
      v12 = locationBundlePathShortname;
      v13 = 1024;
      v14 = [v4 count];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %@, #expired requests, %d", buf, 0x1Cu);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__RTLocationManager__handleExpiredLocationRequestsWithIndexes___block_invoke;
  v8[3] = &unk_2788CC238;
  v8[4] = self;
  [v4 enumerateIndexesUsingBlock:v8];
  v7 = [(RTLocationManager *)self currentLocationRequests];
  [v7 removeObjectsAtIndexes:v4];
}

void __63__RTLocationManager__handleExpiredLocationRequestsWithIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) currentLocationRequests];
  v5 = [v4 objectAtIndex:a2];

  v6 = [v5 options];
  v7 = [v6 fallback];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCA970]);
    v9 = MEMORY[0x277CBEAA8];
    v10 = [v5 options];
    [v10 fallbackMaxAge];
    v12 = [v9 dateWithTimeIntervalSinceNow:-v11];
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = [v8 initWithStartDate:v12 endDate:v13];

    v15 = objc_alloc(MEMORY[0x277D01320]);
    v16 = [v5 options];
    [v16 fallbackHorizontalAccuracy];
    v17 = [v15 initWithDateInterval:v14 horizontalAccuracy:1 batchSize:0 ascending:?];

    v18 = *(a1 + 32);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__RTLocationManager__handleExpiredLocationRequestsWithIndexes___block_invoke_2;
    v27[3] = &unk_2788C99C0;
    v27[4] = v18;
    v28 = v5;
    [v18 _fetchStoredLocationsWithOptions:v17 handler:v27];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = *(*(a1 + 32) + 56);
        v21 = [v5 startDate];
        [v21 timeIntervalSinceNow];
        *buf = 136315906;
        v32 = "[RTLocationManager _handleExpiredLocationRequestsWithIndexes:]_block_invoke";
        v33 = 2112;
        v34 = v20;
        v35 = 2112;
        v36 = v5;
        v37 = 2048;
        v38 = v22;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%s, %@, fulfilled request, %@, location, nil, delta, %.2f", buf, 0x2Au);
      }
    }

    v14 = [v5 handler];
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277D01448];
    v29 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not get current location"];
    v30 = v17;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v26 = [v23 errorWithDomain:v24 code:6 userInfo:v25];
    (v14)[2](v14, 0, v26);
  }
}

void __63__RTLocationManager__handleExpiredLocationRequestsWithIndexes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTLocationManager__handleExpiredLocationRequestsWithIndexes___block_invoke_3;
  block[3] = &unk_2788C76F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __63__RTLocationManager__handleExpiredLocationRequestsWithIndexes___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) firstObject];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 48);
        v5 = *(*(a1 + 40) + 56);
        v6 = [v2 timestamp];
        v7 = [*(a1 + 48) startDate];
        [v6 timeIntervalSinceDate:v7];
        *buf = 136316163;
        v22 = "[RTLocationManager _handleExpiredLocationRequestsWithIndexes:]_block_invoke_3";
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = v4;
        v27 = 2117;
        v28 = v2;
        v29 = 2048;
        v30 = v8;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, %@, fulfilled request, %@, location, %{sensitive}@, delta, %.2f", buf, 0x34u);
      }
    }

    v9 = [*(a1 + 48) handler];
    v9[2](v9, v2, 0);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 48);
        v12 = *(*(a1 + 40) + 56);
        v13 = [v11 startDate];
        [v13 timeIntervalSinceNow];
        *buf = 136315906;
        v22 = "[RTLocationManager _handleExpiredLocationRequestsWithIndexes:]_block_invoke";
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = v11;
        v27 = 2048;
        v28 = v14;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, %@, fulfilled request, %@, location, nil, delta, %.2f", buf, 0x2Au);
      }
    }

    v2 = [*(a1 + 48) handler];
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not get any locations after fallback", *MEMORY[0x277CCA450]];
    v20 = v9;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18 = [v15 errorWithDomain:v16 code:6 userInfo:v17];
    (v2)[2](v2, 0, v18);
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (([objc_opt_class() supportsNotificationName:v5] & 1) == 0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v16 = 138412546;
      v17 = locationBundlePathShortname;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, unsupported notification, %@", &v16, 0x16u);
    }
  }

  v7 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    [(RTLocationManager *)self shouldLeechLocations];
  }

  v9 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  if ([v5 isEqualToString:v9])
  {
  }

  else
  {
    v10 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
    v11 = [v5 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  [(RTLocationManager *)self shouldMonitorLocations];
LABEL_11:
  v12 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
  if ([v5 isEqualToString:v12])
  {

LABEL_14:
    [(RTLocationManager *)self shouldMonitorRhythmicLocations];
    goto LABEL_15;
  }

  v13 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicWaking];
  v14 = [v5 isEqualToString:v13];

  if (v14)
  {
    goto LABEL_14;
  }

LABEL_15:
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (([objc_opt_class() supportsNotificationName:v5] & 1) == 0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v16 = 138412546;
      v17 = locationBundlePathShortname;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, unsupported notification, %@", &v16, 0x16u);
    }
  }

  v7 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    [(RTLocationManager *)self shouldLeechLocations];
  }

  v9 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  if ([v5 isEqualToString:v9])
  {
  }

  else
  {
    v10 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
    v11 = [v5 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  [(RTLocationManager *)self shouldMonitorLocations];
LABEL_11:
  v12 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
  if ([v5 isEqualToString:v12])
  {

LABEL_14:
    [(RTLocationManager *)self shouldMonitorRhythmicLocations];
    goto LABEL_15;
  }

  v13 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicWaking];
  v14 = [v5 isEqualToString:v13];

  if (v14)
  {
    goto LABEL_14;
  }

LABEL_15:
}

+ (BOOL)supportsNotificationName:(id)a3
{
  v3 = a3;
  v4 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
    if ([v3 isEqualToString:v6])
    {
      v5 = 1;
    }

    else
    {
      v7 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
      if ([v3 isEqualToString:v7])
      {
        v5 = 1;
      }

      else
      {
        v8 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
        if ([v3 isEqualToString:v8])
        {
          v5 = 1;
        }

        else
        {
          v9 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicWaking];
          if ([v3 isEqualToString:v9])
          {
            v5 = 1;
          }

          else
          {
            v10 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
            v5 = [v3 isEqualToString:v10];
          }
        }
      }
    }
  }

  return v5;
}

- (void)_removeLocationsPredating:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(RTLocationManager *)self locationStoreAvailable])
  {
    v9 = [(RTLocationManager *)self locationStore];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__RTLocationManager__removeLocationsPredating_handler___block_invoke_218;
    v15[3] = &unk_2788C48C0;
    v16 = v8;
    [v9 removeLocationsPredating:v7 handler:v15];

    v10 = v16;
  }

  else
  {
    v11 = [(RTLocationManager *)self dispatcher];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__RTLocationManager__removeLocationsPredating_handler___block_invoke;
    v20[3] = &unk_2788C4500;
    v20[4] = self;
    v21 = v7;
    v22 = v8;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__RTLocationManager__removeLocationsPredating_handler___block_invoke_2;
    v17[3] = &unk_2788C6300;
    v17[4] = self;
    v19 = a2;
    v18 = v22;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    [v11 enqueueBlock:v20 failureBlock:v17 description:{@"%@-%@", v13, v14}];

    v10 = v21;
  }
}

void __55__RTLocationManager__removeLocationsPredating_handler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = *(*(a1 + 32) + 56);
    *buf = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@", buf, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15 = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v9 errorWithDomain:v10 code:0 userInfo:v11];
    (*(v8 + 16))(v8, v12);
  }
}

uint64_t __55__RTLocationManager__removeLocationsPredating_handler___block_invoke_218(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setLocationStoreAvailable:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_locationStoreAvailable != a3)
  {
    self->_locationStoreAvailable = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        locationBundlePathShortname = self->_locationBundlePathShortname;
        if (self->_locationStoreAvailable)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v10 = 138412546;
        v11 = locationBundlePathShortname;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, locationStore available, %@", &v10, 0x16u);
      }
    }

    v7 = [(RTLocationManager *)self dispatcher];
    v8 = [v7 invocationsPending];

    if (v8)
    {
      v9 = [(RTLocationManager *)self dispatcher];
      [v9 dispatchPendingInvocations];
    }
  }
}

- (void)onLocationStoreNotification:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTLocationManager_onLocationStoreNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = v5;
  v10 = self;
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

void __49__RTLocationManager_onLocationStoreNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) availability] == 2;
    v6 = *(a1 + 40);

    [v6 setLocationStoreAvailable:v5];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = *(*(a1 + 40) + 56);
      v10 = [*(a1 + 32) name];
      v11 = 138413314;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2080;
      v18 = "[RTLocationManager onLocationStoreNotification:]_block_invoke";
      v19 = 1024;
      v20 = 1958;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@, unhandled notification, %@ (in %s:%d)", &v11, 0x30u);
    }
  }
}

- (void)onUserSessionChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTLocationManager_onUserSessionChangeNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__RTLocationManager_onUserSessionChangeNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 40) + 56);
        v7 = [*(a1 + 32) activeUser];
        v10 = 138412546;
        v11 = v6;
        v12 = 1024;
        LODWORD(v13) = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, active user did change: is active user: %d", &v10, 0x12u);
      }
    }

    [*(a1 + 40) shouldPersistLocations];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) name];
      v10 = 138412802;
      v11 = v9;
      v12 = 2080;
      v13 = "[RTLocationManager onUserSessionChangeNotification:]_block_invoke";
      v14 = 1024;
      v15 = 1972;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unhandled notification name, %@ (in %s:%d)", &v10, 0x1Cu);
    }
  }
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTLocationManager_performPurgeOfType_referenceDate_completion___block_invoke;
  block[3] = &unk_2788C6C20;
  v15 = v9;
  v16 = self;
  v18 = a3;
  v19 = a2;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
}

void __65__RTLocationManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 2uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__RTLocationManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v7[3] = &unk_2788C59D0;
    v10 = *(a1 + 64);
    v7[4] = v4;
    v8 = v2;
    v9 = *(a1 + 48);
    v5 = v3;
    [v4 _removeLocationsPredating:v5 handler:v7];
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

void __65__RTLocationManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      v6 = *(*(a1 + 32) + 56);
      v7 = [*(a1 + 40) stringFromDate];
      v8 = 138413058;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, purged locations predating, %@, %@", &v8, 0x2Au);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)onAuthorizationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RTLocationManager_onAuthorizationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__RTLocationManager_onAuthorizationNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    [*(a1 + 40) setEnabled:{objc_msgSend(*(a1 + 32), "enabled")}];
    v5 = *(a1 + 40);

    [v5 shouldPersistLocations];
  }
}

- (void)submitHarvestSample:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__RTLocationManager_submitHarvestSample_handler___block_invoke;
  v11[3] = &unk_2788C4938;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __49__RTLocationManager_submitHarvestSample_handler___block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 submitSample:*(a1 + 32)];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }
}

+ (id)errorUsedDelimiter
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Region monitoring Requires an identifier not containing character with ascii value: %02X", 31];
  v3 = objc_alloc(MEMORY[0x277CCA9B8]);
  v4 = *MEMORY[0x277D01448];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 initWithDomain:v4 code:7 userInfo:v5];

  return v6;
}

+ (id)errorDuplicateClientIdentifier:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x277D01448];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Given region monitoring client identifier:%@ is already in use.", v4, *MEMORY[0x277CCA450]];

  v12[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 initWithDomain:v6 code:7 userInfo:v8];

  return v9;
}

+ (id)errorUnregisteredClientIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Client Identifier: %@ received is not registered", buf, 0xCu);
    }
  }

  v5 = objc_alloc(MEMORY[0x277CCA9B8]);
  v6 = *MEMORY[0x277D01448];
  v11 = *MEMORY[0x277CCA450];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Given region monitoring client identifier:%@ is not registered.", v3];
  v12 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v5 initWithDomain:v6 code:7 userInfo:v8];

  return v9;
}

+ (BOOL)isValidIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_opt_class() regionIdentifierDelimiterString];
    LODWORD(v5) = [v3 containsString:v4] ^ 1;
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", v7, 2u);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)regionWithModifiedIdentifier:(id)a3 forRegion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      goto LABEL_9;
    }

    LOWORD(v27) = 0;
    v11 = "Invalid parameter not satisfying: identifier";
LABEL_23:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v11, &v27, 2u);
    goto LABEL_8;
  }

  if (!v7)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    LOWORD(v27) = 0;
    v11 = "Invalid parameter not satisfying: region";
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x277CBFBC8];
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = MEMORY[0x277CBFCD0];
      v13 = v8;
      v23 = [v22 alloc];
      v24 = [v13 vertices];
      v12 = [v23 initWithVertices:v24 identifier:v6];

      goto LABEL_13;
    }

    v25 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v26 = NSStringFromSelector(a2);
      v27 = 138412546;
      v28 = v26;
      v29 = 2112;
      v30 = objc_opt_class();
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "%@, received region class of type: %@", &v27, 0x16u);
    }

LABEL_9:
    v12 = 0;
    goto LABEL_14;
  }

  v9 = MEMORY[0x277CBFCD8];
LABEL_12:
  v13 = v8;
  v14 = [v9 alloc];
  [v13 center];
  v16 = v15;
  v18 = v17;
  [v13 radius];
  v12 = [v14 initForLowPowerWithCenter:v6 radius:v16 identifier:{v18, v19}];
LABEL_13:
  [v12 setNotifyOnEntry:{objc_msgSend(v13, "notifyOnEntry")}];
  [v12 setNotifyOnExit:{objc_msgSend(v13, "notifyOnExit")}];
  [v12 setGeoReferenceFrame:{objc_msgSend(v13, "geoReferenceFrame")}];
  v20 = [v13 conservativeEntry];

  [v12 setConservativeEntry:v20];
LABEL_14:

  return v12;
}

+ (id)clientRegionForRegion:(id)a3 clientIdentifierPrefix:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      goto LABEL_10;
    }

    LOWORD(v18) = 0;
    v14 = "Invalid parameter not satisfying: region";
LABEL_18:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, &v18, 2u);
    goto LABEL_9;
  }

  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    LOWORD(v18) = 0;
    v14 = "Invalid parameter not satisfying: clientIdentifierPrefix";
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = objc_opt_class();
    v10 = [v6 identifier];
    v11 = [v10 substringFromIndex:{objc_msgSend(v8, "length")}];
    v12 = [v9 regionWithModifiedIdentifier:v11 forRegion:v6];

    goto LABEL_11;
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    v17 = NSStringFromSelector(a2);
    v18 = 138412546;
    v19 = v17;
    v20 = 2112;
    v21 = objc_opt_class();
    _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "%@, received region class of type: %@", &v18, 0x16u);
  }

LABEL_10:
  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)_isClientIdentifierAvailable:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_regionEventHandlerDictionary objectForKey:a3];

  return v3 == 0;
}

- (id)_prefixForClientIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clientIdentifier", v11, 2u);
    }

LABEL_8:
    v7 = 0;
    goto LABEL_10;
  }

  if ([(RTLocationManager *)self _isClientIdentifierAvailable:v6])
  {
    if (a4)
    {
      [objc_opt_class() errorUnregisteredClientIdentifier:v6];
      *a4 = v7 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = [objc_opt_class() regionIdentifierDelimiterString];
  v7 = [v6 stringByAppendingString:v9];

LABEL_10:

  return v7;
}

- (id)_fullIdentifierForClientIdentifier:(id)a3 regionIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(RTLocationManager *)self _prefixForClientIdentifier:a3 error:a5];
  v10 = [v9 stringByAppendingString:v8];

  return v10;
}

- (id)_regionForClientRegion:(id)a3 clientIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

LABEL_14:
      v17 = 0;
      goto LABEL_15;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: clientRegion";
LABEL_23:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_10;
  }

  if (!v9)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: clientIdentifier";
    goto LABEL_23;
  }

  v11 = objc_opt_class();
  v12 = [v8 identifier];
  LOBYTE(v11) = [v11 isValidIdentifier:v12];

  if ((v11 & 1) == 0)
  {
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__87;
    v28 = __Block_byref_object_dispose__87;
    v29 = 0;
    v20 = [objc_opt_class() errorUsedDelimiter];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__RTLocationManager__regionForClientRegion_clientIdentifier_error___block_invoke;
    v23[3] = &unk_2788C95B8;
    v23[4] = buf;
    [(RTLocationManager *)self _performCallbackForClientRegion:v8 clientIdentifier:v10 regionEvent:4 callbackError:v20 handler:v23];

    if (a5)
    {
      *a5 = *(v25 + 5);
    }

    _Block_object_dispose(buf, 8);

    goto LABEL_14;
  }

  v13 = [v8 identifier];
  v22 = 0;
  v14 = [(RTLocationManager *)self _fullIdentifierForClientIdentifier:v10 regionIdentifier:v13 error:&v22];
  v15 = v22;

  if (v15)
  {
    if (!a5)
    {
      v17 = 0;
      goto LABEL_21;
    }

    v16 = v15;
    v17 = 0;
    goto LABEL_19;
  }

  v17 = [objc_opt_class() regionWithModifiedIdentifier:v14 forRegion:v8];
  if (a5)
  {
LABEL_19:
    *a5 = v15;
  }

LABEL_21:

LABEL_15:

  return v17;
}

- (id)_clientIdentifierForRegion:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = a3;
  if (v17)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [(NSMutableDictionary *)self->_regionEventHandlerDictionary allKeys];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v18 = 0;
          v10 = [(RTLocationManager *)self _prefixForClientIdentifier:v9 error:&v18];
          v11 = v18;
          if (!v11)
          {
            v12 = [v17 identifier];
            v13 = [v12 hasPrefix:v10];

            if (v13)
            {
              v15 = v9;

              goto LABEL_18;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      goto LABEL_19;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      regionEventHandlerDictionary = self->_regionEventHandlerDictionary;
      *buf = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = regionEventHandlerDictionary;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Region: %@ received does not contain any of the registered client identifier prefixes: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: region", buf, 2u);
    }
  }

  v15 = 0;
LABEL_18:

LABEL_19:

  return v15;
}

- (void)performCallbackForRegion:(id)a3 regionEvent:(int64_t)a4 callbackError:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTLocationManager_performCallbackForRegion_regionEvent_callbackError_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (BOOL)_performCallbackForRegion:(id)a3 regionEvent:(int64_t)a4 callbackError:(id)a5 handler:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Invalid parameter not satisfying: region";
      goto LABEL_18;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_16;
  }

  if (a4 >= 6)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Invalid parameter not satisfying: callbackType >= RTRegionCallbackTypeFirst() && callbackType <= RTRegionCallbackTypeLast()";
LABEL_18:
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v14 = [(RTLocationManager *)self _clientIdentifierForRegion:v11];
  if (v14)
  {
    v29 = 0;
    v17 = [(RTLocationManager *)self _prefixForClientIdentifier:v14 error:&v29];
    v18 = v29;
    if (v18)
    {
      v13[2](v13, v18);
    }

    v19 = [objc_opt_class() clientRegionForRegion:v11 clientIdentifierPrefix:v17];
    v16 = [(RTLocationManager *)self _performCallbackForClientRegion:v19 clientIdentifier:v14 regionEvent:a4 callbackError:v12 handler:v13];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = NSStringFromSelector(a2);
        locationBundlePathShortname = self->_locationBundlePathShortname;
        v23 = [objc_opt_class() stringForRegionCallbackType:a4];
        *buf = 138413059;
        v39 = v21;
        v40 = 2112;
        v41 = locationBundlePathShortname;
        v42 = 2117;
        v43 = v11;
        v44 = 2112;
        v45 = v23;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, defer callback until client registers, region, %{sensitive}@, regionEvent, %@", buf, 0x2Au);
      }
    }

    objc_initWeak(buf, self);
    v24 = [(RTLocationManager *)self regionEventDispatcher];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __81__RTLocationManager__performCallbackForRegion_regionEvent_callbackError_handler___block_invoke;
    v33[3] = &unk_2788CC260;
    objc_copyWeak(v37, buf);
    v34 = v11;
    v37[1] = a4;
    v35 = v12;
    v36 = v13;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __81__RTLocationManager__performCallbackForRegion_regionEvent_callbackError_handler___block_invoke_2;
    v30[3] = &unk_2788C6300;
    v30[4] = self;
    v32 = a2;
    v31 = v36;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    [v24 enqueueBlock:v33 failureBlock:v30 description:{@"%@-%@", v26, v27}];

    objc_destroyWeak(v37);
    objc_destroyWeak(buf);
    v14 = 0;
    v16 = 1;
  }

LABEL_16:

  return v16;
}

void __81__RTLocationManager__performCallbackForRegion_regionEvent_callbackError_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _performCallbackForRegion:*(a1 + 32) regionEvent:*(a1 + 64) callbackError:*(a1 + 40) handler:*(a1 + 48)];
}

void __81__RTLocationManager__performCallbackForRegion_regionEvent_callbackError_handler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D01448];
    v13 = *MEMORY[0x277CCA450];
    v14 = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];
    (*(v8 + 16))(v8, v12);
  }
}

- (BOOL)_performCallbackForClientRegion:(id)a3 clientIdentifier:(id)a4 regionEvent:(int64_t)a5 callbackError:(id)a6 handler:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      v18 = "Invalid parameter not satisfying: clientRegion";
      goto LABEL_7;
    }

LABEL_15:
    v24 = 0;
    goto LABEL_16;
  }

  if (a5 >= 6)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      v18 = "Invalid parameter not satisfying: callbackType >= RTRegionCallbackTypeFirst() && callbackType <= RTRegionCallbackTypeLast()";
LABEL_7:
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, &v27, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(a2);
      locationBundlePathShortname = self->_locationBundlePathShortname;
      v22 = [objc_opt_class() stringForRegionCallbackType:a5];
      v27 = 138413571;
      v28 = v20;
      v29 = 2112;
      v30 = locationBundlePathShortname;
      v31 = 2117;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      v35 = 2112;
      v36 = v22;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, region, %{sensitive}@, identifier, %@, regionEvent, %@, error, %@", &v27, 0x3Eu);
    }
  }

  v23 = [(NSMutableDictionary *)self->_regionEventHandlerDictionary objectForKey:v14];
  v17 = v23;
  if (!v23)
  {
    v25 = [objc_opt_class() errorUnregisteredClientIdentifier:v14];
    v16[2](v16, v25);

    goto LABEL_15;
  }

  (*(v23 + 16))(v23, v13, a5, v15);
  v16[2](v16, 0);
  v24 = 1;
LABEL_16:

  return v24;
}

- (void)registerForRegionEventsWithClientIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__RTLocationManager_registerForRegionEventsWithClientIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_registerForRegionEventsWithClientIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = 0;
    v12 = "Invalid parameter not satisfying: clientIdentifier";
    v13 = &v20;
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    goto LABEL_13;
  }

  if (!v7)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: handler";
    v13 = buf;
    goto LABEL_10;
  }

  if (([objc_opt_class() isValidIdentifier:v6] & 1) == 0)
  {
    v10 = [objc_opt_class() errorUsedDelimiter];
    goto LABEL_12;
  }

  v9 = [(NSMutableDictionary *)self->_regionEventHandlerDictionary objectForKey:v6];

  if (v9)
  {
    v10 = [objc_opt_class() errorDuplicateClientIdentifier:v6];
LABEL_12:
    v11 = v10;
    v8[2](v8, 0, 3, v10);
    goto LABEL_13;
  }

  v14 = [(NSMutableDictionary *)self->_regionEventHandlerDictionary objectForKey:v6];

  if (v14)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v18 = 0;
    v12 = "Invalid parameter not satisfying: [_regionEventHandlerDictionary objectForKey:clientIdentifier] == nil";
    v13 = &v18;
    goto LABEL_10;
  }

  regionEventHandlerDictionary = self->_regionEventHandlerDictionary;
  v16 = _Block_copy(v8);
  [(NSMutableDictionary *)regionEventHandlerDictionary setObject:v16 forKey:v6];

  v17 = [(RTLocationManager *)self regionEventDispatcher];
  LODWORD(v16) = [v17 invocationsPending];

  if (!v16)
  {
    goto LABEL_14;
  }

  v11 = [(RTLocationManager *)self regionEventDispatcher];
  [v11 dispatchPendingInvocations];
LABEL_13:

LABEL_14:
}

- (void)unregisterForRegionEventsWithClientIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTLocationManager_unregisterForRegionEventsWithClientIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_unregisterForRegionEventsWithClientIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = 0;
    v11 = "Invalid parameter not satisfying: clientIdentifier";
    v12 = &v14;
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_13;
  }

  if (!v7)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 0;
    v11 = "Invalid parameter not satisfying: handler";
    v12 = &v13;
    goto LABEL_10;
  }

  if ([objc_opt_class() isValidIdentifier:v6])
  {
    if (![(RTLocationManager *)self _isClientIdentifierAvailable:v6])
    {
      [(NSMutableDictionary *)self->_regionEventHandlerDictionary removeObjectForKey:v6];
      v8[2](v8, 0);
      goto LABEL_14;
    }

    v9 = [objc_opt_class() errorUnregisteredClientIdentifier:v6];
  }

  else
  {
    v9 = [objc_opt_class() errorUsedDelimiter];
  }

  v10 = v9;
  v8[2](v8, v9);
LABEL_13:

LABEL_14:
}

- (BOOL)startMonitoringForRegion:(id)a3 clientIdentifier:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clientRegion", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!v10)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clientIdentifier", buf, 2u);
    }

LABEL_15:

    v16 = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      locationBundlePathShortname = self->_locationBundlePathShortname;
      *buf = 138413059;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = locationBundlePathShortname;
      *&buf[22] = 2117;
      v27 = v9;
      LOWORD(v28) = 2112;
      *(&v28 + 2) = v11;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, region, %{sensitive}@, clientIdentifier, %@", buf, 0x2Au);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy__87;
  *&v28 = __Block_byref_object_dispose__87;
  *(&v28 + 1) = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__87;
  v24[4] = __Block_byref_object_dispose__87;
  v25 = 0;
  v15 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTLocationManager_startMonitoringForRegion_clientIdentifier_error___block_invoke;
  block[3] = &unk_2788CC288;
  v22 = v24;
  block[4] = self;
  v20 = v9;
  v21 = v11;
  v23 = buf;
  dispatch_sync(v15, block);

  if (a5)
  {
    *a5 = *(*&buf[8] + 40);
  }

  v16 = *(*&buf[8] + 40) == 0;

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(buf, 8);

LABEL_16:
  return v16;
}

void __69__RTLocationManager_startMonitoringForRegion_clientIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _regionForClientRegion:v3 clientIdentifier:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v9 = [*(a1 + 32) locationManager];
    [v9 startMonitoringForRegion:*(*(*(a1 + 56) + 8) + 40)];
  }
}

- (BOOL)stopMonitoringForRegion:(id)a3 clientIdentifier:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clientRegion", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!v10)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clientIdentifier", buf, 2u);
    }

LABEL_15:

    v16 = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      locationBundlePathShortname = self->_locationBundlePathShortname;
      *buf = 138413059;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = locationBundlePathShortname;
      *&buf[22] = 2117;
      v27 = v9;
      LOWORD(v28) = 2112;
      *(&v28 + 2) = v11;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, region %{sensitive}@, clientIdentifier, %@", buf, 0x2Au);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy__87;
  *&v28 = __Block_byref_object_dispose__87;
  *(&v28 + 1) = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__87;
  v24[4] = __Block_byref_object_dispose__87;
  v25 = 0;
  v15 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTLocationManager_stopMonitoringForRegion_clientIdentifier_error___block_invoke;
  block[3] = &unk_2788CC288;
  v22 = v24;
  block[4] = self;
  v20 = v9;
  v21 = v11;
  v23 = buf;
  dispatch_sync(v15, block);

  if (a5)
  {
    *a5 = *(*&buf[8] + 40);
  }

  v16 = *(*&buf[8] + 40) == 0;

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(buf, 8);

LABEL_16:
  return v16;
}

void __68__RTLocationManager_stopMonitoringForRegion_clientIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _regionForClientRegion:v3 clientIdentifier:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v9 = [*(a1 + 32) locationManager];
    [v9 stopMonitoringForRegion:*(*(*(a1 + 56) + 8) + 40)];
  }
}

- (BOOL)stopMonitoringAllRegionsForClientIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__87;
    v18 = __Block_byref_object_dispose__87;
    v19 = 0;
    v7 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__RTLocationManager_stopMonitoringAllRegionsForClientIdentifier_error___block_invoke;
    block[3] = &unk_2788C51F0;
    block[4] = self;
    v12 = v6;
    v13 = buf;
    dispatch_sync(v7, block);

    if (a4)
    {
      *a4 = *(v15 + 5);
    }

    v8 = *(v15 + 5) == 0;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clientIdentifier", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

void __71__RTLocationManager_stopMonitoringAllRegionsForClientIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 _stopMonitoringAllRegionsForClientIdentifier:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (BOOL)_stopMonitoringAllRegionsForClientIdentifier:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      locationBundlePathShortname = self->_locationBundlePathShortname;
      *buf = 138412802;
      v31 = v9;
      v32 = 2112;
      v33 = locationBundlePathShortname;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, clientIdentifier, %@", buf, 0x20u);
    }
  }

  v11 = [(RTLocationManager *)self _isClientIdentifierAvailable:v7];
  if (v11)
  {
    if (a4)
    {
      v12 = [objc_opt_class() errorUnregisteredClientIdentifier:v7];
LABEL_19:
      *a4 = v12;
    }
  }

  else
  {
    v24 = a4;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [(RTLocationManager *)self locationManager];
    v14 = [v13 monitoredRegions];

    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [(RTLocationManager *)self _clientIdentifierForRegion:v19];
          v21 = [v20 isEqualToString:v7];

          if (v21)
          {
            v22 = [(RTLocationManager *)self locationManager];
            [v22 stopMonitoringForRegion:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    a4 = v24;
    if (v24)
    {
      v12 = 0;
      goto LABEL_19;
    }
  }

  return !v11;
}

- (BOOL)isMonitoringForRegionWithClientIdentifier:(id)a3 regionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      v10 = 0;
      goto LABEL_8;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: clientIdentifier";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_7;
  }

  if (!v7)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: regionIdentifier";
    goto LABEL_10;
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [(RTNotifier *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__RTLocationManager_isMonitoringForRegionWithClientIdentifier_regionIdentifier___block_invoke;
  v14[3] = &unk_2788C5DA0;
  v17 = buf;
  v14[4] = self;
  v15 = v6;
  v16 = v8;
  dispatch_sync(v9, v14);

  v10 = v19[24];
  _Block_object_dispose(buf, 8);
LABEL_8:

  return v10 & 1;
}

uint64_t __80__RTLocationManager_isMonitoringForRegionWithClientIdentifier_regionIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isMonitoringForRegionWithClientIdentifier:*(a1 + 40) regionIdentifier:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)_isMonitoringForRegionWithClientIdentifier:(id)a3 regionIdentifier:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      locationBundlePathShortname = self->_locationBundlePathShortname;
      *buf = 138412802;
      v31 = v10;
      v32 = 2112;
      v33 = locationBundlePathShortname;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, clientIdentifier, %@", buf, 0x20u);
    }
  }

  if ([(RTLocationManager *)self _isClientIdentifierAvailable:v7])
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_opt_class() errorUnregisteredClientIdentifier:v7];
      *buf = 136315394;
      v31 = "[RTLocationManager _isMonitoringForRegionWithClientIdentifier:regionIdentifier:]";
      v32 = 2112;
      v33 = v13;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%s, failed with error, %@", buf, 0x16u);
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [(RTLocationManager *)self locationManager];
    v12 = [v14 monitoredRegions];

    v15 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [(RTLocationManager *)self _clientIdentifierForRegion:v19];
          if ([v20 isEqualToString:v7])
          {
            v21 = [v19 identifier];
            v22 = [v21 containsString:v8];

            if (v22)
            {
              v23 = 1;
              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v16 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }
  }

  v23 = 0;
LABEL_20:

  return v23;
}

- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9 || (-[RTLocationManager locationManager](self, "locationManager"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v9 isEqual:v12], v12, v13))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = NSStringFromSelector(a2);
        locationBundlePathShortname = self->_locationBundlePathShortname;
        *buf = 138413059;
        v21 = v15;
        v22 = 2112;
        v23 = locationBundlePathShortname;
        v24 = 2117;
        v25 = v10;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, region, %{sensitive}@, error, %@", buf, 0x2Au);
      }
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__RTLocationManager_locationManager_monitoringDidFailForRegion_withError___block_invoke;
    v17[3] = &unk_2788C8A48;
    v19 = a2;
    v17[4] = self;
    v18 = v10;
    [(RTLocationManager *)self performCallbackForRegion:v18 regionEvent:4 callbackError:v11 handler:v17];
  }
}

void __74__RTLocationManager_locationManager_monitoringDidFailForRegion_withError___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 56);
      v8 = [objc_opt_class() stringForRegionCallbackType:4];
      v9 = 138413315;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      v13 = 2117;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, performCallback, region, %{sensitive}@, regionEvent, %@, error, %@", &v9, 0x34u);
    }
  }
}

- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7 || (-[RTLocationManager locationManager](self, "locationManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v7 isEqual:v9], v9, v10))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = NSStringFromSelector(a2);
        locationBundlePathShortname = self->_locationBundlePathShortname;
        *buf = 138412803;
        v18 = v12;
        v19 = 2112;
        v20 = locationBundlePathShortname;
        v21 = 2117;
        v22 = v8;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, region, %{sensitive}@", buf, 0x20u);
      }
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__RTLocationManager_locationManager_didStartMonitoringForRegion___block_invoke;
    v14[3] = &unk_2788C8A48;
    v16 = a2;
    v14[4] = self;
    v15 = v8;
    [(RTLocationManager *)self performCallbackForRegion:v15 regionEvent:5 callbackError:0 handler:v14];
  }
}

void __65__RTLocationManager_locationManager_didStartMonitoringForRegion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 56);
      v8 = [objc_opt_class() stringForRegionCallbackType:5];
      v9 = 138413315;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      v13 = 2117;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, performCallback, region, %{sensitive}@, regionEvent, %@, error, %@", &v9, 0x34u);
    }
  }
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (!v9 || (-[RTLocationManager locationManager](self, "locationManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, v12))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromSelector(a2);
        v15 = v14;
        locationBundlePathShortname = self->_locationBundlePathShortname;
        v17 = @"Unknown";
        if (a4 == 2)
        {
          v17 = @"Outside";
        }

        *buf = 138413059;
        v32 = v14;
        v34 = locationBundlePathShortname;
        v33 = 2112;
        if (a4 == 1)
        {
          v17 = @"Inside";
        }

        v35 = 2112;
        v36 = v17;
        v37 = 2117;
        v38 = v10;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, state, %@, region, %{sensitive}@", buf, 0x2Au);
      }
    }

    if (a4 == 2)
    {
      if ([v10 notifyOnExit])
      {
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __65__RTLocationManager_locationManager_didDetermineState_forRegion___block_invoke_241;
        v26 = &unk_2788C8A48;
        v28[1] = a2;
        v27 = self;
        v18 = v28;
        v19 = v10;
        v28[0] = v19;
        v20 = &v23;
        v21 = self;
        v22 = 2;
        goto LABEL_17;
      }
    }

    else if (a4 == 1 && [v10 notifyOnEntry])
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __65__RTLocationManager_locationManager_didDetermineState_forRegion___block_invoke;
      v29[3] = &unk_2788C8A48;
      v30[1] = a2;
      v29[4] = self;
      v18 = v30;
      v19 = v10;
      v30[0] = v19;
      v20 = v29;
      v21 = self;
      v22 = 1;
LABEL_17:
      [(RTLocationManager *)v21 performCallbackForRegion:v19 regionEvent:v22 callbackError:0 handler:v20, v23, v24, v25, v26, v27, v28[0]];
    }
  }
}

void __65__RTLocationManager_locationManager_didDetermineState_forRegion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 56);
      v8 = [objc_opt_class() stringForRegionCallbackType:1];
      v9 = 138413315;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      v13 = 2117;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, performCallback, region, %{sensitive}@, regionEvent, %@, error, %@", &v9, 0x34u);
    }
  }
}

void __65__RTLocationManager_locationManager_didDetermineState_forRegion___block_invoke_241(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 56);
      v8 = [objc_opt_class() stringForRegionCallbackType:2];
      v9 = 138413315;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      v13 = 2117;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, performCallback, region, %{sensitive}@, regionEvent, %@, error, %@", &v9, 0x34u);
    }
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    locationBundlePathShortname = self->_locationBundlePathShortname;
    v8 = 138412546;
    v9 = locationBundlePathShortname;
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, locationManager didFailWithError: %@", &v8, 0x16u);
  }
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
    v12[2] = __70__RTLocationManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
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

void __70__RTLocationManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"options cannot be nil";
    v8 = MEMORY[0x277CBEAC0];
    v9 = v24;
    v10 = &v23;
LABEL_9:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = v6;
    v13 = v7;
    v14 = 7;
LABEL_11:
    v17 = [v12 errorWithDomain:v13 code:v14 userInfo:v11];

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
    v21 = *MEMORY[0x277CCA450];
    v22 = @"the type specified by options is not vended by this manager";
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v22;
    v10 = &v21;
    goto LABEL_9;
  }

  if (([*(a1 + 40) locationStoreAvailable] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"store is not available";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = v15;
    v13 = v16;
    v14 = 5;
    goto LABEL_11;
  }

  v18 = [*(a1 + 40) locationStore];
  [v18 fetchEnumerableObjectsWithOptions:*(a1 + 32) offset:*(a1 + 56) handler:*(a1 + 48)];
}

- (void)injectLocations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTLocationManager_Evaluation__injectLocations_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __57__RTLocationManager_Evaluation__injectLocations_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locationStore];
  [v2 storeLocations:*(a1 + 40) handler:*(a1 + 48)];
}

@end