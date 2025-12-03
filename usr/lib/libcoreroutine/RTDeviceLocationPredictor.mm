@interface RTDeviceLocationPredictor
- (RTDeviceLocationPredictor)initWithQueue:(id)queue authorizationManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator learnedLocationManager:(id)locationManager locationManager:(id)a8 mapServiceManager:(id)serviceManager metricManager:(id)self0 platform:(id)self1 providers:(id)self2;
- (id)_dedupePredictedLocationsOfInterest:(id)interest;
- (id)_mergePredictedLocationsOfInterest:(id)interest;
- (id)_mergedLocationOfInterest:(id)interest otherLocationOfInterest:(id)ofInterest;
- (id)_sortAndDedupePredictedLocationsOfInterest:(id)interest;
- (id)_sortPredictedLocationsOfInterest:(id)interest;
- (void)_clear;
- (void)_fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval clientIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date withHandler:(id)handler;
- (void)_fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate clientIdentifier:(id)identifier withHandler:(id)handler;
- (void)_onAuthorizationNotification:(id)notification;
- (void)_onLearnedLocationManagerNotification:(id)notification;
- (void)_purgeWithReferenceDate:(id)date;
- (void)_registerForNotifications;
- (void)_setup;
- (void)_setupEvalMode;
- (void)_shutdownWithHandler:(id)handler;
- (void)_unregisterForNotifications;
- (void)_updateEvalMode;
- (void)clear;
- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval clientIdentifier:(id)identifier handler:(id)handler;
- (void)fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date withHandler:(id)handler;
- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate clientIdentifier:(id)identifier withHandler:(id)handler;
- (void)fetchPredictedLocationsOfInterestOnDate:(id)date clientIdentifier:(id)identifier withHandler:(id)handler;
- (void)onAuthorizationNotification:(id)notification;
- (void)onLearnedLocationManagerNotification:(id)notification;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)purgeWithReferenceDate:(id)date;
@end

@implementation RTDeviceLocationPredictor

- (RTDeviceLocationPredictor)initWithQueue:(id)queue authorizationManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator learnedLocationManager:(id)locationManager locationManager:(id)a8 mapServiceManager:(id)serviceManager metricManager:(id)self0 platform:(id)self1 providers:(id)self2
{
  v56 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  obj = manager;
  managerCopy = manager;
  defaultsManagerCopy = defaultsManager;
  defaultsManagerCopy2 = defaultsManager;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  locationManagerCopy = locationManager;
  locationManagerCopy2 = locationManager;
  v46 = a8;
  v22 = a8;
  serviceManagerCopy = serviceManager;
  metricManagerCopy = metricManager;
  platformCopy = platform;
  providersCopy = providers;
  v50 = managerCopy;
  if (!managerCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "[RTDeviceLocationPredictor initWithQueue:authorizationManager:defaultsManager:distanceCalculator:learnedLocationManager:locationManager:mapServiceManager:metricManager:platform:providers:]";
      v54 = 1024;
      v55 = 116;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: authorizationManager (in %s:%d)", buf, 0x12u);
    }
  }

  v27 = defaultsManagerCopy2;
  selfCopy = self;
  if (v27)
  {
    if (calculatorCopy2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "[RTDeviceLocationPredictor initWithQueue:authorizationManager:defaultsManager:distanceCalculator:learnedLocationManager:locationManager:mapServiceManager:metricManager:platform:providers:]";
      v54 = 1024;
      v55 = 117;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", buf, 0x12u);
    }

    if (calculatorCopy2)
    {
LABEL_7:
      if (locationManagerCopy2)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v53 = "[RTDeviceLocationPredictor initWithQueue:authorizationManager:defaultsManager:distanceCalculator:learnedLocationManager:locationManager:mapServiceManager:metricManager:platform:providers:]";
    v54 = 1024;
    v55 = 118;
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator (in %s:%d)", buf, 0x12u);
  }

  if (locationManagerCopy2)
  {
LABEL_8:
    if (v22)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_20:
  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v53 = "[RTDeviceLocationPredictor initWithQueue:authorizationManager:defaultsManager:distanceCalculator:learnedLocationManager:locationManager:mapServiceManager:metricManager:platform:providers:]";
    v54 = 1024;
    v55 = 119;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationManager (in %s:%d)", buf, 0x12u);
  }

  if (v22)
  {
LABEL_9:
    if (serviceManagerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_23:
  v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v53 = "[RTDeviceLocationPredictor initWithQueue:authorizationManager:defaultsManager:distanceCalculator:learnedLocationManager:locationManager:mapServiceManager:metricManager:platform:providers:]";
    v54 = 1024;
    v55 = 120;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager (in %s:%d)", buf, 0x12u);
  }

  if (serviceManagerCopy)
  {
LABEL_10:
    if (metricManagerCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_26:
  v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v53 = "[RTDeviceLocationPredictor initWithQueue:authorizationManager:defaultsManager:distanceCalculator:learnedLocationManager:locationManager:mapServiceManager:metricManager:platform:providers:]";
    v54 = 1024;
    v55 = 121;
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapServiceManager (in %s:%d)", buf, 0x12u);
  }

  if (metricManagerCopy)
  {
LABEL_11:
    if (platformCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_29:
  v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v53 = "[RTDeviceLocationPredictor initWithQueue:authorizationManager:defaultsManager:distanceCalculator:learnedLocationManager:locationManager:mapServiceManager:metricManager:platform:providers:]";
    v54 = 1024;
    v55 = 122;
    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: metricManager (in %s:%d)", buf, 0x12u);
  }

  if (platformCopy)
  {
LABEL_12:
    if (queueCopy)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

LABEL_32:
  v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v53 = "[RTDeviceLocationPredictor initWithQueue:authorizationManager:defaultsManager:distanceCalculator:learnedLocationManager:locationManager:mapServiceManager:metricManager:platform:providers:]";
    v54 = 1024;
    v55 = 123;
    _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: platform (in %s:%d)", buf, 0x12u);
  }

  if (!queueCopy)
  {
LABEL_35:
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "[RTDeviceLocationPredictor initWithQueue:authorizationManager:defaultsManager:distanceCalculator:learnedLocationManager:locationManager:mapServiceManager:metricManager:platform:providers:]";
      v54 = 1024;
      v55 = 124;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_38:
  v37 = 0;
  if (queueCopy && v50 && v27 && calculatorCopy2 && locationManagerCopy2 && v22 && serviceManagerCopy && metricManagerCopy && platformCopy)
  {
    v51.receiver = self;
    v51.super_class = RTDeviceLocationPredictor;
    v38 = [(RTNotifier *)&v51 initWithQueue:queueCopy];
    v39 = v38;
    if (v38)
    {
      objc_storeStrong(&v38->_authorizationManager, obj);
      objc_storeStrong(&v39->_defaultsManager, defaultsManagerCopy);
      objc_storeStrong(&v39->_distanceCalculator, calculatorCopy);
      objc_storeStrong(&v39->_locationManager, v46);
      objc_storeStrong(&v39->_learnedLocationManager, locationManagerCopy);
      objc_storeStrong(&v39->_mapServiceManager, serviceManager);
      objc_storeStrong(&v39->_metricManager, metricManager);
      objc_storeStrong(&v39->_platform, platform);
      v40 = [providersCopy copy];
      providers = v39->_providers;
      v39->_providers = v40;

      [(RTService *)v39 setup];
    }

    selfCopy = v39;
    v37 = selfCopy;
  }

  return v37;
}

- (void)_registerForNotifications
{
  authorizationManager = [(RTDeviceLocationPredictor *)self authorizationManager];
  v4 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  [authorizationManager addObserver:self selector:sel_onAuthorizationNotification_ name:v4];

  learnedLocationManager = [(RTDeviceLocationPredictor *)self learnedLocationManager];
  v5 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
  [learnedLocationManager addObserver:self selector:sel_onLearnedLocationManagerNotification_ name:v5];
}

- (void)_unregisterForNotifications
{
  authorizationManager = [(RTDeviceLocationPredictor *)self authorizationManager];
  [authorizationManager removeObserver:self];

  learnedLocationManager = [(RTDeviceLocationPredictor *)self learnedLocationManager];
  [learnedLocationManager removeObserver:self];

  locationManager = [(RTDeviceLocationPredictor *)self locationManager];
  [locationManager removeObserver:self];
}

- (void)_setup
{
  [(RTDeviceLocationPredictor *)self _registerForNotifications];

  [(RTDeviceLocationPredictor *)self _setupEvalMode];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTDeviceLocationPredictor *)self _unregisterForNotifications];
  nextPredictedLocationsOfInterestCache = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestCache];
  [nextPredictedLocationsOfInterestCache setDelegate:0];

  [(RTDeviceLocationPredictor *)self setNextPredictedLocationsOfInterestCache:0];
  nextPredictedLocationsOfInterestPollLocationTimer = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestPollLocationTimer];

  if (nextPredictedLocationsOfInterestPollLocationTimer)
  {
    nextPredictedLocationsOfInterestPollLocationTimer2 = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestPollLocationTimer];
    dispatch_source_cancel(nextPredictedLocationsOfInterestPollLocationTimer2);

    [(RTDeviceLocationPredictor *)self setNextPredictedLocationsOfInterestPollLocationTimer:0];
  }

  v7 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v7 = handlerCopy;
  }
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__RTDeviceLocationPredictor_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = dateCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = dateCopy;
  dispatch_async(queue, v13);
}

uint64_t __73__RTDeviceLocationPredictor_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    [*(a1 + 32) _clear];
  }

  else if (!v2)
  {
    [*(a1 + 32) _purgeWithReferenceDate:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)_clear
{
  nextPredictedLocationsOfInterestCache = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestCache];
  [nextPredictedLocationsOfInterestCache clear];
}

- (void)clear
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RTDeviceLocationPredictor_clear__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_purgeWithReferenceDate:(id)date
{
  dateCopy = date;
  nextPredictedLocationsOfInterestCache = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestCache];
  [nextPredictedLocationsOfInterestCache purgeWithReferenceDate:dateCopy];
}

- (void)purgeWithReferenceDate:(id)date
{
  dateCopy = date;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RTDeviceLocationPredictor_purgeWithReferenceDate___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(queue, v7);
}

- (id)_mergedLocationOfInterest:(id)interest otherLocationOfInterest:(id)ofInterest
{
  interestCopy = interest;
  ofInterestCopy = ofInterest;
  identifier = [interestCopy identifier];
  if (!identifier || (v8 = identifier, [ofInterestCopy identifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v10 = interestCopy, v9))
  {
    identifier2 = [ofInterestCopy identifier];
    if (!identifier2 || (v12 = identifier2, [interestCopy identifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v10 = ofInterestCopy, v13))
    {
      customLabel = [interestCopy customLabel];
      if (!customLabel || (v15 = customLabel, [ofInterestCopy customLabel], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v10 = interestCopy, v16))
      {
        customLabel2 = [ofInterestCopy customLabel];
        if (!customLabel2 || (v18 = customLabel2, [interestCopy customLabel], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v10 = ofInterestCopy, v19))
        {
          if ([interestCopy type] == -1 || (v20 = objc_msgSend(ofInterestCopy, "type"), v10 = interestCopy, v20 != -1))
          {
            if ([ofInterestCopy type] == -1 || (v21 = objc_msgSend(interestCopy, "type"), v10 = ofInterestCopy, v21 != -1))
            {
              visits = [interestCopy visits];
              v23 = [visits count];
              visits2 = [ofInterestCopy visits];
              v25 = [visits2 count];

              v10 = interestCopy;
              if (v23 <= v25)
              {
                visits3 = [ofInterestCopy visits];
                v27 = [visits3 count];
                visits4 = [interestCopy visits];
                v29 = [visits4 count];

                v10 = ofInterestCopy;
                if (v27 <= v29)
                {
                  [interestCopy confidence];
                  v31 = v30;
                  [ofInterestCopy confidence];
                  v10 = interestCopy;
                  if (v31 <= v32)
                  {
                    [ofInterestCopy confidence];
                    v34 = v33;
                    [interestCopy confidence];
                    if (v34 <= v35)
                    {
                      v10 = interestCopy;
                    }

                    else
                    {
                      v10 = ofInterestCopy;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v36 = v10;
  visits5 = [v36 visits];
  v51 = ofInterestCopy;
  if (![visits5 count])
  {
    v38 = ofInterestCopy;
    if (v36 == interestCopy || (v38 = interestCopy, v36 == ofInterestCopy))
    {
      visits6 = [v38 visits];

      visits5 = visits6;
    }
  }

  v40 = objc_alloc(MEMORY[0x277D01170]);
  location = [v36 location];
  [v36 confidence];
  v43 = v42;
  identifier3 = [v36 identifier];
  type = [v36 type];
  typeSource = [v36 typeSource];
  customLabel3 = [v36 customLabel];
  mapItem = [v36 mapItem];
  v49 = [v40 initWithLocation:location confidence:identifier3 identifier:type type:typeSource typeSource:visits5 visits:customLabel3 customLabel:v43 mapItem:mapItem];

  return v49;
}

- (id)_mergePredictedLocationsOfInterest:(id)interest
{
  interestCopy = interest;
  if ([interestCopy count])
  {
    if ([interestCopy count] == 1)
    {
      firstObject = [interestCopy firstObject];
    }

    else
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__120;
      v37 = __Block_byref_object_dispose__120;
      firstObject2 = [interestCopy firstObject];
      locationOfInterest = [firstObject2 locationOfInterest];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __64__RTDeviceLocationPredictor__mergePredictedLocationsOfInterest___block_invoke;
      v32[3] = &unk_2788CE900;
      v32[4] = self;
      v32[5] = &v33;
      [interestCopy enumerateObjectsUsingBlock:v32];
      v7 = [interestCopy valueForKeyPath:@"@max.confidence"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [interestCopy valueForKeyPath:@"@min.nextEntryTime"];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __64__RTDeviceLocationPredictor__mergePredictedLocationsOfInterest___block_invoke_2;
      v30[3] = &unk_2788CE928;
      v12 = dictionary;
      v31 = v12;
      [interestCopy enumerateObjectsUsingBlock:v30];
      v13 = [v12 objectForKeyedSubscript:&unk_28459EFB8];
      integerValue = [v13 integerValue];

      if (integerValue <= 0)
      {
        v16 = [v12 objectForKeyedSubscript:&unk_28459EFD0];
        integerValue2 = [v16 integerValue];

        if (integerValue2 <= 0)
        {
          v18 = [v12 objectForKeyedSubscript:&unk_28459EFE8];
          v15 = [v18 integerValue] > 0;
        }

        else
        {
          v15 = 3;
        }
      }

      else
      {
        v15 = 2;
      }

      v19 = objc_opt_new();
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __64__RTDeviceLocationPredictor__mergePredictedLocationsOfInterest___block_invoke_37;
      v28 = &unk_2788CE928;
      v20 = v19;
      v29 = v20;
      [interestCopy enumerateObjectsUsingBlock:&v25];
      v21 = objc_alloc(MEMORY[0x277D01270]);
      v22 = v34[5];
      if ([v20 count])
      {
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }

      firstObject = [v21 initWithLocationOfInterest:v22 confidence:v10 nextEntryTime:v15 modeOfTransportation:v23 sources:v9];

      _Block_object_dispose(&v33, 8);
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

void __64__RTDeviceLocationPredictor__mergePredictedLocationsOfInterest___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [a2 locationOfInterest];
    v6 = [v4 _mergedLocationOfInterest:v5 otherLocationOfInterest:v9];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __64__RTDeviceLocationPredictor__mergePredictedLocationsOfInterest___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "modeOfTransportation")}];
  v3 = MEMORY[0x277CCABB0];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "integerValue") + 1}];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

void __64__RTDeviceLocationPredictor__mergePredictedLocationsOfInterest___block_invoke_37(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sources];
  [v2 addObjectsFromArray:v3];
}

- (id)_dedupePredictedLocationsOfInterest:(id)interest
{
  v45 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(interestCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = interestCopy;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v29 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        locationOfInterest = [v7 locationOfInterest];
        mapItem = [locationOfInterest mapItem];
        if (mapItem)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v10 = v28;
          v11 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v34;
LABEL_9:
            v14 = 0;
            while (1)
            {
              if (*v34 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v33 + 1) + 8 * v14);
              if ([mapItem isEqualToMapItem:v15])
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
                if (v12)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            identifier2 = v15;

            if (!identifier2)
            {
              goto LABEL_18;
            }

            v17 = [v10 objectForKeyedSubscript:identifier2];
            [v17 addObject:v7];
          }

          else
          {
LABEL_15:

LABEL_18:
            v18 = objc_opt_new();
            [v10 setObject:v18 forKeyedSubscript:mapItem];

            identifier2 = [v10 objectForKeyedSubscript:mapItem];
            [identifier2 addObject:v7];
          }
        }

        else
        {
          identifier = [locationOfInterest identifier];

          if (identifier)
          {
            identifier2 = [locationOfInterest identifier];
            [dictionary setObject:v7 forKeyedSubscript:identifier2];
          }

          else
          {
            identifier2 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
            if (os_log_type_enabled(identifier2, OS_LOG_TYPE_FAULT))
            {
              *buf = 138739971;
              v43 = locationOfInterest;
              _os_log_fault_impl(&dword_2304B3000, identifier2, OS_LOG_TYPE_FAULT, "locationOfInterest %{sensitive}@, has nil identifier.", buf, 0xCu);
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v5);
  }

  array = [MEMORY[0x277CBEB18] array];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __65__RTDeviceLocationPredictor__dedupePredictedLocationsOfInterest___block_invoke;
  v30[3] = &unk_2788CE950;
  v21 = array;
  v31 = v21;
  selfCopy = self;
  [v28 enumerateKeysAndObjectsUsingBlock:v30];
  allValues = [dictionary allValues];
  [v21 addObjectsFromArray:allValues];

  v23 = v21;
  return v21;
}

void __65__RTDeviceLocationPredictor__dedupePredictedLocationsOfInterest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 count] == 1)
  {
    v7 = *(a1 + 32);
    v8 = [v6 firstObject];
    [v7 addObject:v8];
  }

  else
  {
    if ([v6 count] < 2)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = 138739971;
        v12 = v5;
        _os_log_fault_impl(&dword_2304B3000, v10, OS_LOG_TYPE_FAULT, "unexpected count of LOIs associated to mapItem, %{sensitive}@", &v11, 0xCu);
      }
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) _mergePredictedLocationsOfInterest:v6];
      [v9 addObject:v10];
    }
  }
}

- (id)_sortPredictedLocationsOfInterest:(id)interest
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = [interest sortedArrayUsingComparator:&__block_literal_global_99];
  v47 = objc_opt_new();
  v50 = objc_opt_new();
  v45 = objc_opt_new();
  v49 = objc_opt_new();
  v46 = objc_opt_new();
  v44 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v3;
  v52 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v52)
  {
    v51 = *v60;
    do
    {
      v4 = 0;
      do
      {
        if (*v60 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v4;
        v5 = *(*(&v59 + 1) + 8 * v4);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v54 = v5;
        sources = [v5 sources];
        v8 = [sources countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v56;
          do
          {
            v11 = 0;
            do
            {
              if (*v56 != v10)
              {
                objc_enumerationMutation(sources);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v12 = objc_opt_class(), NSStringFromClass(v12), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v14 = v13;
                v15 = MEMORY[0x277CCABB0];
                v16 = [dictionary objectForKeyedSubscript:v13];
                v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + 1}];
                [dictionary setObject:v17 forKeyedSubscript:v14];
              }

              else
              {
                v14 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
                {
                  v18 = objc_opt_class();
                  v19 = NSStringFromClass(v18);
                  *buf = 138740227;
                  v64 = v54;
                  v65 = 2112;
                  v66 = v19;
                  _os_log_fault_impl(&dword_2304B3000, v14, OS_LOG_TYPE_FAULT, "unhandled PLOI source, ploi, %{sensitive}@, source, %@", buf, 0x16u);
                }
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [sources countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v9);
        }

        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [dictionary objectForKeyedSubscript:v21];
        if ([v22 unsignedIntegerValue])
        {
          [v54 confidence];
          v24 = v23;

          v25 = v49;
          if (v24 > 0.0)
          {
            goto LABEL_31;
          }
        }

        else
        {
        }

        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = [dictionary objectForKeyedSubscript:v27];
        unsignedIntegerValue = [v28 unsignedIntegerValue];

        v25 = v50;
        if (!unsignedIntegerValue)
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [dictionary objectForKeyedSubscript:v31];
          unsignedIntegerValue2 = [v32 unsignedIntegerValue];

          v25 = v47;
          if (!unsignedIntegerValue2)
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = [dictionary objectForKeyedSubscript:v35];
            unsignedIntegerValue3 = [v36 unsignedIntegerValue];

            v25 = v46;
            if (!unsignedIntegerValue3)
            {
              v38 = objc_opt_class();
              v39 = NSStringFromClass(v38);
              v40 = [dictionary objectForKeyedSubscript:v39];
              unsignedIntegerValue4 = [v40 unsignedIntegerValue];

              if (unsignedIntegerValue4)
              {
                v25 = v45;
              }

              else
              {
                v25 = v44;
              }
            }
          }
        }

LABEL_31:
        [v25 addObject:v54];

        v4 = v53 + 1;
      }

      while (v53 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v52);
  }

  v42 = objc_opt_new();
  [v42 addObjectsFromArray:v49];
  [v42 addObjectsFromArray:v50];
  [v42 addObjectsFromArray:v47];
  [v42 addObjectsFromArray:v46];
  [v42 addObjectsFromArray:v45];
  [v42 addObjectsFromArray:v44];

  return v42;
}

uint64_t __63__RTDeviceLocationPredictor__sortPredictedLocationsOfInterest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 confidence];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 confidence];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)_sortAndDedupePredictedLocationsOfInterest:(id)interest
{
  v4 = [(RTDeviceLocationPredictor *)self _dedupePredictedLocationsOfInterest:interest];
  v5 = [(RTDeviceLocationPredictor *)self _sortPredictedLocationsOfInterest:v4];

  return v5;
}

- (void)_fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval clientIdentifier:(id)identifier handler:(id)handler
{
  v89[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (locationCopy)
    {
      [locationCopy horizontalUncertainty];
      if (v16 > 250.0)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = *MEMORY[0x277D01448];
        v86 = *MEMORY[0x277CCA450];
        v19 = MEMORY[0x277CCACA8];
        [locationCopy horizontalUncertainty];
        p_super = [v19 stringWithFormat:@"Horizontal Uncertainity, %.2f, is greater than the Threshold, %.2f, ", v20, 0x406F400000000000];
        v87 = p_super;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v23 = [v17 errorWithDomain:v18 code:7 userInfo:v22];
        handlerCopy[2](handlerCopy, 0, v23);

        goto LABEL_35;
      }

      if (dateCopy)
      {
        if (interval > 0.0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              stringFromDate = [dateCopy stringFromDate];
              *buf = 138740483;
              v77 = locationCopy;
              v78 = 2112;
              v79 = stringFromDate;
              v80 = 2048;
              v81 = interval / 3600.0;
              _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "Predict device location wrt location, %{sensitive}@, startDate, %@, timeInterval, %.2f hrs", buf, 0x20u);
            }
          }

          v57 = handlerCopy;
          v31 = 0x277CBE000uLL;
          date = [MEMORY[0x277CBEAA8] date];
          v32 = [[RTPredictedLocationsOfInterestCriteria alloc] initWithDistanceCalculator:self->_distanceCalculator];
          v59 = dateCopy;
          [(RTPredictedLocationsOfInterestCriteria *)v32 setReferenceDate:dateCopy];
          v60 = locationCopy;
          v33 = locationCopy;
          v34 = v32;
          [(RTPredictedLocationsOfInterestCriteria *)v32 setReferenceLocation:v33];
          [(RTPredictedLocationsOfInterestCriteria *)v32 setWindowDuration:interval];
          v35 = interval * 20.0;
          if (interval <= 0.0)
          {
            v35 = 72000.0;
          }

          [(RTPredictedLocationsOfInterestCriteria *)v32 setMaximumDistance:v35];
          [(RTPredictedLocationsOfInterestCriteria *)v32 setMinimumDistance:700.0];
          v58 = identifierCopy;
          [(RTPredictedLocationsOfInterestCriteria *)v32 setClientIdentifier:identifierCopy];
          v36 = dispatch_group_create();
          array = [MEMORY[0x277CBEB18] array];
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v38 = self->_providers;
          v39 = [(NSSet *)v38 countByEnumeratingWithState:&v71 objects:v75 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v72;
            v61 = v38;
            do
            {
              v42 = 0;
              do
              {
                if (*v72 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v71 + 1) + 8 * v42);
                if ([v43 requiresRoutineEnablement] && !-[RTDeviceLocationPredictor routineEnabled](self, "routineEnabled"))
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    selfCopy = self;
                    v46 = array;
                    v47 = v31;
                    v48 = v34;
                    v49 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                    {
                      v50 = objc_opt_class();
                      *buf = 138412290;
                      v77 = v50;
                      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "skipping provider %@ due to routine disablement", buf, 0xCu);
                    }

                    v34 = v48;
                    v31 = v47;
                    array = v46;
                    self = selfCopy;
                    v38 = v61;
                  }
                }

                else
                {
                  dispatch_group_enter(v36);
                  [*(v31 + 2728) timeIntervalSinceReferenceDate];
                  v67[0] = MEMORY[0x277D85DD0];
                  v67[1] = 3221225472;
                  v67[2] = __128__RTDeviceLocationPredictor__fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke;
                  v67[3] = &unk_2788CE998;
                  v67[4] = self;
                  v67[5] = v43;
                  v70 = v44;
                  v68 = array;
                  v69 = v36;
                  [v43 fetchNextPredictedLocationsOfInterestWithCriteria:v34 handler:v67];
                }

                ++v42;
              }

              while (v40 != v42);
              v51 = [(NSSet *)v38 countByEnumeratingWithState:&v71 objects:v75 count:16];
              v40 = v51;
            }

            while (v51);
          }

          queue = [(RTNotifier *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __128__RTDeviceLocationPredictor__fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke_63;
          block[3] = &unk_2788C5530;
          handlerCopy = v57;
          v63 = array;
          v64 = date;
          selfCopy2 = self;
          v66 = v57;
          v53 = date;
          v54 = array;
          dispatch_group_notify(v36, queue, block);

          p_super = &v34->super;
          dateCopy = v59;
          locationCopy = v60;
          identifierCopy = v58;
          goto LABEL_35;
        }

        v24 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277D01448];
        v82 = *MEMORY[0x277CCA450];
        v83 = @"requires a valid interval.";
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v83;
        v28 = &v82;
      }

      else
      {
        v24 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277D01448];
        v84 = *MEMORY[0x277CCA450];
        v85 = @"requires a valid date.";
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v85;
        v28 = &v84;
      }
    }

    else
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D01448];
      v88 = *MEMORY[0x277CCA450];
      v89[0] = @"requires a valid location.";
      v26 = MEMORY[0x277CBEAC0];
      v27 = v89;
      v28 = &v88;
    }

    p_super = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
    v55 = [v24 errorWithDomain:v25 code:7 userInfo:p_super];
    handlerCopy[2](handlerCopy, 0, v55);

    goto LABEL_35;
  }

  p_super = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v77 = "[RTDeviceLocationPredictor _fetchNextPredictedLocationsOfInterestFromLocation:startDate:timeInterval:clientIdentifier:handler:]";
    v78 = 1024;
    LODWORD(v79) = 511;
    _os_log_error_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_35:
}

void __128__RTDeviceLocationPredictor__fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __128__RTDeviceLocationPredictor__fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke_2;
  v12[3] = &unk_2788C5F50;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v18 = *(a1 + 64);
  v16 = v9;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __128__RTDeviceLocationPredictor__fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "provider %@, encountered error, %@", &v10, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = [*(a1 + 48) count];
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v7 = v6 - *(a1 + 72);
        v10 = 138412802;
        v11 = v4;
        v12 = 2048;
        v13 = v5;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "provider %@, returned %lu next PLOIs, latency, %.3f", &v10, 0x20u);
      }
    }

    if ([*(a1 + 48) count])
    {
      [*(a1 + 56) addObjectsFromArray:*(a1 + 48)];
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

void __128__RTDeviceLocationPredictor__fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke_63(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      [*(a1 + 40) timeIntervalSinceNow];
      v6 = 134218240;
      v7 = v3;
      v8 = 2048;
      v9 = -v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "all providers returned a total of %lu next PLOIs, latency, %.3f", &v6, 0x16u);
    }
  }

  v5 = [*(a1 + 48) _sortAndDedupePredictedLocationsOfInterest:*(a1 + 32)];
  (*(*(a1 + 56) + 16))();
}

- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval clientIdentifier:(id)identifier handler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __127__RTDeviceLocationPredictor_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke;
    block[3] = &unk_2788CE9C0;
    block[4] = self;
    v24 = a2;
    v23 = handlerCopy;
    v20 = locationCopy;
    v21 = dateCopy;
    intervalCopy = interval;
    v22 = identifierCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[RTDeviceLocationPredictor fetchNextPredictedLocationsOfInterestFromLocation:startDate:timeInterval:clientIdentifier:handler:]";
      v28 = 1024;
      v29 = 621;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __127__RTDeviceLocationPredictor_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) evalPredictedLocationsOfInterest];

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = NSStringFromSelector(*(a1 + 72));
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "~~~ %@, EVAL MODE ~~~", &v15, 0xCu);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = @"Eval";
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "mobile$ defaults delete com.apple.routined %@", &v15, 0xCu);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = @"Eval";
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "root$ notifyutil -p %@", &v15, 0xCu);
      }
    }

    v7 = *(a1 + 64);
    v8 = [*(a1 + 32) evalPredictedLocationsOfInterest];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 80);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);

    [v9 _fetchNextPredictedLocationsOfInterestFromLocation:v10 startDate:v12 timeInterval:v13 clientIdentifier:v14 handler:v11];
  }
}

- (void)fetchPredictedLocationsOfInterestOnDate:(id)date clientIdentifier:(id)identifier withHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = [dateCopy dateByAddingTimeInterval:-7200.0];
    v12 = [dateCopy dateByAddingTimeInterval:7200.0];
    [(RTDeviceLocationPredictor *)self fetchPredictedLocationsOfInterestBetweenStartDate:v11 endDate:v12 clientIdentifier:identifierCopy withHandler:handlerCopy];
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[RTDeviceLocationPredictor fetchPredictedLocationsOfInterestOnDate:clientIdentifier:withHandler:]";
      v16 = 1024;
      v17 = 653;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v14, 0x12u);
    }
  }
}

- (void)_fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date withHandler:(id)handler
{
  v71[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (locationCopy)
    {
      [locationCopy horizontalUncertainty];
      if (v12 > 250.0)
      {
        v13 = MEMORY[0x277CCA9B8];
        v14 = *MEMORY[0x277D01448];
        v68 = *MEMORY[0x277CCA450];
        v15 = MEMORY[0x277CCACA8];
        [locationCopy horizontalUncertainty];
        0x406F400000000000 = [v15 stringWithFormat:@"Horizontal Uncertainity, %.2f, is greater than the Threshold, %.2f, ", v16, 0x406F400000000000];
        v69 = 0x406F400000000000;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v19 = [v13 errorWithDomain:v14 code:7 userInfo:v18];
        handlerCopy[2](handlerCopy, 0, v19);

        goto LABEL_29;
      }

      if (dateCopy)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            coordinateToString = [locationCopy coordinateToString];
            stringFromDate = [dateCopy stringFromDate];
            *buf = 138740227;
            v63 = coordinateToString;
            v64 = 2112;
            v65 = stringFromDate;
            _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "Predict exit dates from location, %{sensitive}@, onDate, %@", buf, 0x16u);
          }
        }

        evalPredictedExitDates = [(RTDeviceLocationPredictor *)self evalPredictedExitDates];

        if (evalPredictedExitDates)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = NSStringFromSelector(a2);
              *buf = 138412290;
              v63 = v30;
              _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "~~~ %@, EVAL MODE ~~~", buf, 0xCu);
            }
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v31 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v63 = @"Eval";
              _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "mobile$ defaults delete com.apple.routined %@", buf, 0xCu);
            }
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v32 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v63 = @"Eval";
              _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "root$ notifyutil -p %@", buf, 0xCu);
            }
          }

          0x406F400000000000 = [(RTDeviceLocationPredictor *)self evalPredictedExitDates];
          (handlerCopy)[2](handlerCopy, 0x406F400000000000, 0);
        }

        else
        {
          v47 = handlerCopy;
          v34 = objc_opt_new();
          v48 = dateCopy;
          [v34 setReferenceDate:dateCopy];
          v49 = locationCopy;
          [v34 setReferenceLocation:locationCopy];
          0x406F400000000000 = v34;
          [v34 setWindowDuration:INFINITY];
          v35 = dispatch_group_create();
          array = [MEMORY[0x277CBEB18] array];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          selfCopy = self;
          v38 = self->_providers;
          v39 = [(NSSet *)v38 countByEnumeratingWithState:&v57 objects:v61 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v58;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v58 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v57 + 1) + 8 * i);
                if (![v43 requiresRoutineEnablement] || -[RTDeviceLocationPredictor routineEnabled](selfCopy, "routineEnabled"))
                {
                  dispatch_group_enter(v35);
                  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                  v53[0] = MEMORY[0x277D85DD0];
                  v53[1] = 3221225472;
                  v53[2] = __85__RTDeviceLocationPredictor__fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke;
                  v53[3] = &unk_2788CE998;
                  v53[4] = selfCopy;
                  v53[5] = v43;
                  v56 = v44;
                  v54 = array;
                  v55 = v35;
                  [v43 fetchPredictedExitDatesWithCriteria:v34 handler:v53];
                }
              }

              v40 = [(NSSet *)v38 countByEnumeratingWithState:&v57 objects:v61 count:16];
            }

            while (v40);
          }

          queue = [(RTNotifier *)selfCopy queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __85__RTDeviceLocationPredictor__fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke_68;
          block[3] = &unk_2788C4D38;
          handlerCopy = v47;
          v51 = array;
          v52 = v47;
          v46 = array;
          dispatch_group_notify(v35, queue, block);

          dateCopy = v48;
          locationCopy = v49;
        }

        goto LABEL_29;
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01448];
      v66 = *MEMORY[0x277CCA450];
      v67 = @"requires a valid date.";
      v22 = MEMORY[0x277CBEAC0];
      v23 = &v67;
      v24 = &v66;
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01448];
      v70 = *MEMORY[0x277CCA450];
      v71[0] = @"requires a valid location.";
      v22 = MEMORY[0x277CBEAC0];
      v23 = v71;
      v24 = &v70;
    }

    0x406F400000000000 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v33 = [v20 errorWithDomain:v21 code:7 userInfo:0x406F400000000000];
    handlerCopy[2](handlerCopy, 0, v33);

    goto LABEL_29;
  }

  0x406F400000000000 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(0x406F400000000000, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v63 = "[RTDeviceLocationPredictor _fetchPredictedExitDatesFromLocation:onDate:withHandler:]";
    v64 = 1024;
    LODWORD(v65) = 672;
    _os_log_error_impl(&dword_2304B3000, 0x406F400000000000, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_29:
}

void __85__RTDeviceLocationPredictor__fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__RTDeviceLocationPredictor__fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke_2;
  v12[3] = &unk_2788C5F50;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v18 = *(a1 + 64);
  v16 = v9;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __85__RTDeviceLocationPredictor__fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "provider %@, encountered error, %@", &v10, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = [*(a1 + 48) count];
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v7 = v6 - *(a1 + 72);
        v10 = 138412802;
        v11 = v4;
        v12 = 2048;
        v13 = v5;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "provider %@, returned %lu predicted exit dates, latency, %.3f", &v10, 0x20u);
      }
    }

    if ([*(a1 + 48) count])
    {
      [*(a1 + 56) addObjectsFromArray:*(a1 + 48)];
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

- (void)fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date withHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__RTDeviceLocationPredictor_fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke;
    v13[3] = &unk_2788C5530;
    v13[4] = self;
    v14 = locationCopy;
    v15 = dateCopy;
    v16 = handlerCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTDeviceLocationPredictor fetchPredictedExitDatesFromLocation:onDate:withHandler:]";
      v19 = 1024;
      v20 = 761;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate clientIdentifier:(id)identifier withHandler:(id)handler
{
  v68[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (!dateCopy)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v60 = "[RTDeviceLocationPredictor _fetchPredictedLocationsOfInterestBetweenStartDate:endDate:clientIdentifier:withHandler:]";
        v61 = 1024;
        LODWORD(v62) = 786;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate (in %s:%d)", buf, 0x12u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v67 = *MEMORY[0x277CCA450];
      v68[0] = @"requires a valid startDate.";
      v17 = MEMORY[0x277CBEAC0];
      v18 = v68;
      v19 = &v67;
      goto LABEL_14;
    }

    if (!endDateCopy)
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v60 = "[RTDeviceLocationPredictor _fetchPredictedLocationsOfInterestBetweenStartDate:endDate:clientIdentifier:withHandler:]";
        v61 = 1024;
        LODWORD(v62) = 795;
        _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate (in %s:%d)", buf, 0x12u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v65 = *MEMORY[0x277CCA450];
      v66 = @"requires a valid endDate.";
      v17 = MEMORY[0x277CBEAC0];
      v18 = &v66;
      v19 = &v65;
      goto LABEL_14;
    }

    [endDateCopy timeIntervalSinceDate:dateCopy];
    if (v14 < 0.0)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v63 = *MEMORY[0x277CCA450];
      v64 = @"requires a valid startDate and endDate.";
      v17 = MEMORY[0x277CBEAC0];
      v18 = &v64;
      v19 = &v63;
LABEL_14:
      p_super = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
      v23 = [v15 errorWithDomain:v16 code:7 userInfo:p_super];
      handlerCopy[2](handlerCopy, 0, v23);

      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [dateCopy stringFromDate];
        stringFromDate2 = [endDateCopy stringFromDate];
        *buf = 138412546;
        v60 = stringFromDate;
        v61 = 2112;
        v62 = stringFromDate2;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "Predicting LOIs the device may travel to between startDate, %@, endDate, %@", buf, 0x16u);
      }
    }

    [endDateCopy timeIntervalSinceDate:dateCopy];
    v28 = v27;
    v29 = [[RTPredictedLocationsOfInterestCriteria alloc] initWithDistanceCalculator:self->_distanceCalculator];
    v43 = dateCopy;
    [(RTPredictedLocationsOfInterestCriteria *)v29 setReferenceDate:dateCopy];
    [(RTPredictedLocationsOfInterestCriteria *)v29 setReferenceLocation:0];
    [(RTPredictedLocationsOfInterestCriteria *)v29 setWindowDuration:v28];
    v30 = v28 * 20.0;
    if (v28 <= 0.0)
    {
      v30 = 72000.0;
    }

    [(RTPredictedLocationsOfInterestCriteria *)v29 setMaximumDistance:v30];
    [(RTPredictedLocationsOfInterestCriteria *)v29 setMinimumDistance:700.0];
    v44 = v29;
    v42 = identifierCopy;
    [(RTPredictedLocationsOfInterestCriteria *)v29 setClientIdentifier:identifierCopy];
    v31 = dispatch_group_create();
    array = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v33 = self->_providers;
    v34 = [(NSSet *)v33 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v55;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v55 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v54 + 1) + 8 * i);
          if (![v38 requiresRoutineEnablement] || -[RTDeviceLocationPredictor routineEnabled](self, "routineEnabled"))
          {
            dispatch_group_enter(v31);
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __117__RTDeviceLocationPredictor__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_withHandler___block_invoke;
            v50[3] = &unk_2788CE998;
            v50[4] = self;
            v50[5] = v38;
            v53 = v39;
            v51 = array;
            v52 = v31;
            [v38 fetchPredictedLocationsOfInterestWithCriteria:v44 handler:v50];
          }
        }

        v35 = [(NSSet *)v33 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v35);
    }

    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__RTDeviceLocationPredictor__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_withHandler___block_invoke_78;
    block[3] = &unk_2788C5580;
    block[4] = self;
    v46 = array;
    dateCopy = v43;
    v47 = v43;
    v48 = endDateCopy;
    v49 = handlerCopy;
    v41 = array;
    dispatch_group_notify(v31, queue, block);

    identifierCopy = v42;
    p_super = &v44->super;
  }

  else
  {
    p_super = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v60 = "[RTDeviceLocationPredictor _fetchPredictedLocationsOfInterestBetweenStartDate:endDate:clientIdentifier:withHandler:]";
      v61 = 1024;
      LODWORD(v62) = 781;
      _os_log_error_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_15:
}

void __117__RTDeviceLocationPredictor__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __117__RTDeviceLocationPredictor__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_withHandler___block_invoke_2;
  v12[3] = &unk_2788C5F50;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v18 = *(a1 + 64);
  v16 = v9;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __117__RTDeviceLocationPredictor__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_withHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "provider %@, encountered error, %@", &v10, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = [*(a1 + 48) count];
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v7 = v6 - *(a1 + 72);
        v10 = 138412802;
        v11 = v4;
        v12 = 2048;
        v13 = v5;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "provider %@, returned %lu PLOIs, latency, %.3f", &v10, 0x20u);
      }
    }

    if ([*(a1 + 48) count])
    {
      [*(a1 + 56) addObjectsFromArray:*(a1 + 48)];
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

void __117__RTDeviceLocationPredictor__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_withHandler___block_invoke_78(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _sortAndDedupePredictedLocationsOfInterest:*(a1 + 40)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v2 count];
      v5 = [*(a1 + 48) stringFromDate];
      v6 = [*(a1 + 56) stringFromDate];
      v7 = 134218498;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "in total, found %lu predicted LOIs the device may travel to from all data sources between start date, %@, end date, %@", &v7, 0x20u);
    }
  }

  (*(*(a1 + 64) + 16))();
}

- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate clientIdentifier:(id)identifier withHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__RTDeviceLocationPredictor_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_withHandler___block_invoke;
  block[3] = &unk_2788C5580;
  block[4] = self;
  v20 = dateCopy;
  v21 = endDateCopy;
  v22 = identifierCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = identifierCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  dispatch_async(queue, block);
}

- (void)_setupEvalMode
{
  platform = [(RTDeviceLocationPredictor *)self platform];
  internalInstall = [platform internalInstall];

  if (internalInstall)
  {
    out_token = 0;
    uTF8String = [@"Eval" UTF8String];
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__RTDeviceLocationPredictor__setupEvalMode__block_invoke;
    v7[3] = &unk_2788CE9E8;
    v7[4] = self;
    notify_register_dispatch(uTF8String, &out_token, queue, v7);

    [(RTDeviceLocationPredictor *)self _updateEvalMode];
  }
}

- (void)_updateEvalMode
{
  [(RTDeviceLocationPredictor *)self setEvalPredictedLocationsOfInterest:0];
  [(RTDeviceLocationPredictor *)self setEvalPredictedExitDates:0];
  platform = [(RTDeviceLocationPredictor *)self platform];
  internalInstall = [platform internalInstall];

  if (internalInstall)
  {
    defaultsManager = [(RTDeviceLocationPredictor *)self defaultsManager];
    v6 = [defaultsManager objectForKey:@"Eval"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [defaultManager fileExistsAtPath:v6];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
      if ([v9 count])
      {
        v10 = [v9 objectForKey:@"RTPredictedLocationsOfInterest"];
        if (v10)
        {
          array = [MEMORY[0x277CBEB18] array];
          [(RTDeviceLocationPredictor *)self setEvalPredictedLocationsOfInterest:array];
        }

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __44__RTDeviceLocationPredictor__updateEvalMode__block_invoke;
        v15[3] = &unk_2788CEA10;
        v15[4] = self;
        [v10 enumerateObjectsUsingBlock:v15];
        v12 = [v9 objectForKey:@"RTPredictedExitDates"];
        if (v12)
        {
          v13 = objc_opt_new();
          [(RTDeviceLocationPredictor *)self setEvalPredictedExitDates:v13];
        }

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __44__RTDeviceLocationPredictor__updateEvalMode__block_invoke_159;
        v14[3] = &unk_2788CEA10;
        v14[4] = self;
        [v12 enumerateObjectsUsingBlock:v14];
      }
    }
  }
}

void __44__RTDeviceLocationPredictor__updateEvalMode__block_invoke(uint64_t a1, void *a2)
{
  v124[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 objectForKey:@"RTLocationOfInterest"];

  if (!v3)
  {
    goto LABEL_34;
  }

  v4 = [v2 objectForKey:@"RTLocationOfInterest"];
  v5 = [v4 objectForKey:@"Latitude"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v2 objectForKey:@"RTLocationOfInterest"];
  v9 = [v8 objectForKey:@"Longitude"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v2 objectForKey:@"RTLocationOfInterest"];
  v13 = [v12 objectForKey:@"Uncertainty"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v2 objectForKey:@"RTLocationOfInterest"];
  v17 = [v16 objectForKey:@"Confidence"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [v2 objectForKey:@"RTLocationOfInterest"];
  v21 = [v20 objectForKey:@"Type"];
  v22 = [v21 integerValue];

  v23 = [v2 objectForKey:@"RTLocationOfInterest"];
  v24 = [v23 objectForKey:@"TypeSource"];
  v98 = [v24 integerValue];

  v25 = [v2 objectForKey:@"RTLocationOfInterest"];
  v101 = [v25 objectForKey:@"MapItemAddress"];

  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__120;
  v118 = __Block_byref_object_dispose__120;
  v119 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__120;
  v112 = __Block_byref_object_dispose__120;
  v113 = 0;
  v26 = dispatch_semaphore_create(0);
  v27 = objc_alloc(MEMORY[0x277D011B0]);
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v102 = [v27 initWithUseBackgroundTraits:1 analyticsIdentifier:v29];

  v30 = *(*(a1 + 32) + 80);
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __44__RTDeviceLocationPredictor__updateEvalMode__block_invoke_2;
  v104[3] = &unk_2788C4490;
  v106 = &v114;
  v107 = &v108;
  v31 = v26;
  v105 = v31;
  [v30 fetchMapItemsFromAddressString:v101 options:v102 handler:v104];
  v32 = v31;
  v33 = [MEMORY[0x277CBEAA8] now];
  v34 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v32, v34))
  {
    v35 = [MEMORY[0x277CBEAA8] now];
    [v35 timeIntervalSinceDate:v33];
    v37 = v36;
    v38 = objc_opt_new();
    v39 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_373];
    v40 = [MEMORY[0x277CCACC8] callStackSymbols];
    v41 = [v40 filteredArrayUsingPredicate:v39];
    v42 = [v41 firstObject];

    [v38 submitToCoreAnalytics:v42 type:1 duration:v37];
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v43, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v44 = MEMORY[0x277CCA9B8];
    v124[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v124 count:1];
    v46 = [v44 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v45];

    if (v46)
    {
      v47 = v46;

      v48 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v46 = 0;
  }

  v48 = 1;
LABEL_9:

  v97 = v46;
  if ((v48 & 1) == 0)
  {
    objc_storeStrong(v115 + 5, v46);
  }

  if (v115[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = [v109[5] count];
      v51 = v115[5];
      *buf = 134218242;
      *&buf[4] = v50;
      v122 = 2112;
      v123 = v51;
      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "error geocoding eval mapItems, %lu, error, %@", buf, 0x16u);
    }
  }

  v52 = [v2 objectForKey:@"RTLocationOfInterest"];
  v100 = [v52 objectForKey:@"CustomLabel"];

  v53 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:0 longitude:v7 horizontalUncertainty:v11 date:v15];
  v54 = objc_alloc(MEMORY[0x277D01170]);
  v55 = [MEMORY[0x277CCAD78] UUID];
  v56 = [v109[5] firstObject];
  v57 = [v54 initWithLocation:v53 confidence:v55 identifier:v22 type:v98 typeSource:0 visits:v100 customLabel:v19 mapItem:v56];

  v58 = [v2 objectForKey:@"RTSourceCoreRoutineLearnedLocation"];

  if (v58)
  {
    goto LABEL_17;
  }

  v60 = [v2 objectForKey:@"RTSourceCoreRoutineVehicleEvent"];

  if (v60)
  {
    v61 = objc_alloc(MEMORY[0x277D01160]);
    v62 = [MEMORY[0x277CBEAA8] date];
    v63 = [v61 initWithLatitude:v62 longitude:v7 horizontalUncertainty:v11 date:v15];

    v64 = objc_alloc(MEMORY[0x277D01420]);
    v65 = [MEMORY[0x277CBEAA8] date];
    v66 = [MEMORY[0x277CCAD78] UUID];
    LOBYTE(v95) = 1;
    v67 = [v64 initWithDate:v65 location:v63 vehicleIdentifier:@"el camino" userSetLocation:0 notes:@"You got a fast car. Is it fast enough so we can fly away?" identifier:v66 photo:0 mapItem:0 confirmed:v95];

    v59 = [objc_alloc(MEMORY[0x277D012B0]) initWithVehicleEvent:v67];
    goto LABEL_22;
  }

  v68 = [v2 objectForKey:@"RTSourceEventKit"];

  if (v68)
  {
    v69 = [v2 objectForKey:@"RTSourceEventKit"];
    v63 = [v69 objectForKey:@"EventTitle"];

    v70 = [v2 objectForKey:@"RTSourceEventKit"];
    v71 = [v70 objectForKey:@"EventLocation"];

    v96 = objc_alloc(MEMORY[0x277D012B8]);
    v99 = [MEMORY[0x277CCAD78] UUID];
    v72 = [v99 UUIDString];
    v73 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
    v74 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:7200.0];
    v59 = [v96 initWithEventIdentifier:v72 startDate:v73 endDate:v74 title:v63 location:v71 allDay:0 sharingStatus:0];

    goto LABEL_22;
  }

  v86 = [v2 objectForKey:@"RTSourceMapsSupportFavoritePlace"];

  if (!v86)
  {
    v87 = [v2 objectForKey:@"RTSourceMapsSupportHistoryEntryRoute"];

    if (v87)
    {
      v88 = [v2 objectForKey:@"RTSourceMapsSupportHistoryEntryRoute"];
      v89 = [v88 objectForKey:@"NavigationWasInterrupted"];
      v90 = [v89 BOOLValue];

      v91 = objc_alloc(MEMORY[0x277D012E8]);
      v63 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:900.0];
      v92 = [v91 initWithUsageDate:v63 navigationWasInterrupted:v90];
    }

    else
    {
      v93 = [v2 objectForKey:@"RTSourceMapsSupportHistoryEntryPlaceDisplay"];

      if (!v93)
      {
        v63 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 138739971;
          *&buf[4] = v2;
          _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "unsupported eval ploi, %{sensitive}@", buf, 0xCu);
        }

        v59 = 0;
        goto LABEL_22;
      }

      v94 = objc_alloc(MEMORY[0x277D012E0]);
      v63 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-900.0];
      v92 = [v94 initWithUsageDate:v63];
    }

    v59 = v92;
LABEL_22:

    goto LABEL_23;
  }

LABEL_17:
  v59 = objc_opt_new();
LABEL_23:
  v75 = [v2 objectForKey:@"Confidence"];
  [v75 doubleValue];
  v77 = v76;

  v78 = [v2 objectForKey:@"NextEntryTime"];
  [v78 doubleValue];
  v80 = v79;

  if (v80 <= 0.0)
  {
    v81 = 0;
  }

  else
  {
    v81 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v80];
  }

  v82 = objc_alloc(MEMORY[0x277D01270]);
  if (v59)
  {
    v120 = v59;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
  }

  else
  {
    v83 = 0;
  }

  v84 = [v82 initWithLocationOfInterest:v57 confidence:v81 nextEntryTime:0 modeOfTransportation:v83 sources:v77];
  if (v59)
  {
  }

  if (v84)
  {
    v85 = [*(a1 + 32) evalPredictedLocationsOfInterest];
    [v85 addObject:v84];
  }

  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v114, 8);

LABEL_34:
}

void __44__RTDeviceLocationPredictor__updateEvalMode__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __44__RTDeviceLocationPredictor__updateEvalMode__block_invoke_159(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"ExitDate"];
  [v4 doubleValue];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v6];
  }

  v7 = [v3 objectForKey:@"Uncertainty"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v3 objectForKey:@"Confidence"];

  [v10 doubleValue];
  v12 = v11;

  if (v16)
  {
    v13 = [objc_alloc(MEMORY[0x277D01268]) initWithDate:v16 uncertainty:v9 confidence:v12];
    if (v13)
    {
      v14 = [*(a1 + 32) evalPredictedExitDates];
      [v14 addObject:v13];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_onAuthorizationNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    -[RTDeviceLocationPredictor setRoutineEnabled:](self, "setRoutineEnabled:", [notificationCopy enabled]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        routineEnabled = [(RTDeviceLocationPredictor *)self routineEnabled];
        v11 = @"NO";
        if (routineEnabled)
        {
          v11 = @"YES";
        }

        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Updated routine enabled %@", &v14, 0xCu);
      }

LABEL_10:
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      name2 = [notificationCopy name];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = name2;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", &v14, 0x16u);
    }

    goto LABEL_10;
  }
}

- (void)_onLearnedLocationManagerNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    learnedLocationManager = [(RTDeviceLocationPredictor *)self learnedLocationManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__RTDeviceLocationPredictor__onLearnedLocationManagerNotification___block_invoke;
    v13[3] = &unk_2788C99C0;
    v13[4] = self;
    v14 = notificationCopy;
    [learnedLocationManager fetchRecentLocationsOfInterestWithHandler:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      name2 = [notificationCopy name];
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = name2;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", buf, 0x16u);
    }
  }
}

void __67__RTDeviceLocationPredictor__onLearnedLocationManagerNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTDeviceLocationPredictor__onLearnedLocationManagerNotification___block_invoke_2;
  block[3] = &unk_2788C76F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __67__RTDeviceLocationPredictor__onLearnedLocationManagerNotification___block_invoke_2(uint64_t a1)
{
  v2 = [RTStateModel alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) metricManager];
  v5 = [*(a1 + 40) queue];
  v6 = [(RTStateModel *)v2 initWithLearnedLocationsOfInterest:v3 metricManager:v4 queue:v5];

  [*(a1 + 48) intervalSinceLastUpdate];
  [(RTStateModel *)v6 collectMetricsWithIntervalSinceLastUpdate:?];
}

- (void)onAuthorizationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTDeviceLocationPredictor_onAuthorizationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)onLearnedLocationManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RTDeviceLocationPredictor_onLearnedLocationManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

@end