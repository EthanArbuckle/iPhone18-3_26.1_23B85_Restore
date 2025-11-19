@interface RTDeviceLocationPredictor
- (RTDeviceLocationPredictor)initWithQueue:(id)a3 authorizationManager:(id)a4 defaultsManager:(id)a5 distanceCalculator:(id)a6 learnedLocationManager:(id)a7 locationManager:(id)a8 mapServiceManager:(id)a9 metricManager:(id)a10 platform:(id)a11 providers:(id)a12;
- (id)_dedupePredictedLocationsOfInterest:(id)a3;
- (id)_mergePredictedLocationsOfInterest:(id)a3;
- (id)_mergedLocationOfInterest:(id)a3 otherLocationOfInterest:(id)a4;
- (id)_sortAndDedupePredictedLocationsOfInterest:(id)a3;
- (id)_sortPredictedLocationsOfInterest:(id)a3;
- (void)_clear;
- (void)_fetchNextPredictedLocationsOfInterestFromLocation:(id)a3 startDate:(id)a4 timeInterval:(double)a5 clientIdentifier:(id)a6 handler:(id)a7;
- (void)_fetchPredictedExitDatesFromLocation:(id)a3 onDate:(id)a4 withHandler:(id)a5;
- (void)_fetchPredictedLocationsOfInterestBetweenStartDate:(id)a3 endDate:(id)a4 clientIdentifier:(id)a5 withHandler:(id)a6;
- (void)_onAuthorizationNotification:(id)a3;
- (void)_onLearnedLocationManagerNotification:(id)a3;
- (void)_purgeWithReferenceDate:(id)a3;
- (void)_registerForNotifications;
- (void)_setup;
- (void)_setupEvalMode;
- (void)_shutdownWithHandler:(id)a3;
- (void)_unregisterForNotifications;
- (void)_updateEvalMode;
- (void)clear;
- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)a3 startDate:(id)a4 timeInterval:(double)a5 clientIdentifier:(id)a6 handler:(id)a7;
- (void)fetchPredictedExitDatesFromLocation:(id)a3 onDate:(id)a4 withHandler:(id)a5;
- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)a3 endDate:(id)a4 clientIdentifier:(id)a5 withHandler:(id)a6;
- (void)fetchPredictedLocationsOfInterestOnDate:(id)a3 clientIdentifier:(id)a4 withHandler:(id)a5;
- (void)onAuthorizationNotification:(id)a3;
- (void)onLearnedLocationManagerNotification:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)purgeWithReferenceDate:(id)a3;
@end

@implementation RTDeviceLocationPredictor

- (RTDeviceLocationPredictor)initWithQueue:(id)a3 authorizationManager:(id)a4 defaultsManager:(id)a5 distanceCalculator:(id)a6 learnedLocationManager:(id)a7 locationManager:(id)a8 mapServiceManager:(id)a9 metricManager:(id)a10 platform:(id)a11 providers:(id)a12
{
  v56 = *MEMORY[0x277D85DE8];
  v17 = a3;
  obj = a4;
  v18 = a4;
  v44 = a5;
  v19 = a5;
  v45 = a6;
  v20 = a6;
  v47 = a7;
  v21 = a7;
  v46 = a8;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v49 = a12;
  v50 = v18;
  if (!v18)
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

  v27 = v19;
  v28 = self;
  if (v27)
  {
    if (v20)
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

    if (v20)
    {
LABEL_7:
      if (v21)
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

  if (v21)
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
    if (v23)
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

  if (v23)
  {
LABEL_10:
    if (v24)
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

  if (v24)
  {
LABEL_11:
    if (v25)
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

  if (v25)
  {
LABEL_12:
    if (v17)
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

  if (!v17)
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
  if (v17 && v50 && v27 && v20 && v21 && v22 && v23 && v24 && v25)
  {
    v51.receiver = self;
    v51.super_class = RTDeviceLocationPredictor;
    v38 = [(RTNotifier *)&v51 initWithQueue:v17];
    v39 = v38;
    if (v38)
    {
      objc_storeStrong(&v38->_authorizationManager, obj);
      objc_storeStrong(&v39->_defaultsManager, v44);
      objc_storeStrong(&v39->_distanceCalculator, v45);
      objc_storeStrong(&v39->_locationManager, v46);
      objc_storeStrong(&v39->_learnedLocationManager, v47);
      objc_storeStrong(&v39->_mapServiceManager, a9);
      objc_storeStrong(&v39->_metricManager, a10);
      objc_storeStrong(&v39->_platform, a11);
      v40 = [v49 copy];
      providers = v39->_providers;
      v39->_providers = v40;

      [(RTService *)v39 setup];
    }

    v28 = v39;
    v37 = v28;
  }

  return v37;
}

- (void)_registerForNotifications
{
  v3 = [(RTDeviceLocationPredictor *)self authorizationManager];
  v4 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  [v3 addObserver:self selector:sel_onAuthorizationNotification_ name:v4];

  v6 = [(RTDeviceLocationPredictor *)self learnedLocationManager];
  v5 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
  [v6 addObserver:self selector:sel_onLearnedLocationManagerNotification_ name:v5];
}

- (void)_unregisterForNotifications
{
  v3 = [(RTDeviceLocationPredictor *)self authorizationManager];
  [v3 removeObserver:self];

  v4 = [(RTDeviceLocationPredictor *)self learnedLocationManager];
  [v4 removeObserver:self];

  v5 = [(RTDeviceLocationPredictor *)self locationManager];
  [v5 removeObserver:self];
}

- (void)_setup
{
  [(RTDeviceLocationPredictor *)self _registerForNotifications];

  [(RTDeviceLocationPredictor *)self _setupEvalMode];
}

- (void)_shutdownWithHandler:(id)a3
{
  v8 = a3;
  [(RTDeviceLocationPredictor *)self _unregisterForNotifications];
  v4 = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestCache];
  [v4 setDelegate:0];

  [(RTDeviceLocationPredictor *)self setNextPredictedLocationsOfInterestCache:0];
  v5 = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestPollLocationTimer];

  if (v5)
  {
    v6 = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestPollLocationTimer];
    dispatch_source_cancel(v6);

    [(RTDeviceLocationPredictor *)self setNextPredictedLocationsOfInterestPollLocationTimer:0];
  }

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 0);
    v7 = v8;
  }
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__RTDeviceLocationPredictor_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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
  v2 = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestCache];
  [v2 clear];
}

- (void)clear
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RTDeviceLocationPredictor_clear__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_purgeWithReferenceDate:(id)a3
{
  v4 = a3;
  v5 = [(RTDeviceLocationPredictor *)self nextPredictedLocationsOfInterestCache];
  [v5 purgeWithReferenceDate:v4];
}

- (void)purgeWithReferenceDate:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RTDeviceLocationPredictor_purgeWithReferenceDate___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_mergedLocationOfInterest:(id)a3 otherLocationOfInterest:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  if (!v7 || (v8 = v7, [v6 identifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v10 = v5, v9))
  {
    v11 = [v6 identifier];
    if (!v11 || (v12 = v11, [v5 identifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v10 = v6, v13))
    {
      v14 = [v5 customLabel];
      if (!v14 || (v15 = v14, [v6 customLabel], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v10 = v5, v16))
      {
        v17 = [v6 customLabel];
        if (!v17 || (v18 = v17, [v5 customLabel], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v10 = v6, v19))
        {
          if ([v5 type] == -1 || (v20 = objc_msgSend(v6, "type"), v10 = v5, v20 != -1))
          {
            if ([v6 type] == -1 || (v21 = objc_msgSend(v5, "type"), v10 = v6, v21 != -1))
            {
              v22 = [v5 visits];
              v23 = [v22 count];
              v24 = [v6 visits];
              v25 = [v24 count];

              v10 = v5;
              if (v23 <= v25)
              {
                v26 = [v6 visits];
                v27 = [v26 count];
                v28 = [v5 visits];
                v29 = [v28 count];

                v10 = v6;
                if (v27 <= v29)
                {
                  [v5 confidence];
                  v31 = v30;
                  [v6 confidence];
                  v10 = v5;
                  if (v31 <= v32)
                  {
                    [v6 confidence];
                    v34 = v33;
                    [v5 confidence];
                    if (v34 <= v35)
                    {
                      v10 = v5;
                    }

                    else
                    {
                      v10 = v6;
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
  v37 = [v36 visits];
  v51 = v6;
  if (![v37 count])
  {
    v38 = v6;
    if (v36 == v5 || (v38 = v5, v36 == v6))
    {
      v39 = [v38 visits];

      v37 = v39;
    }
  }

  v40 = objc_alloc(MEMORY[0x277D01170]);
  v41 = [v36 location];
  [v36 confidence];
  v43 = v42;
  v44 = [v36 identifier];
  v45 = [v36 type];
  v46 = [v36 typeSource];
  v47 = [v36 customLabel];
  v48 = [v36 mapItem];
  v49 = [v40 initWithLocation:v41 confidence:v44 identifier:v45 type:v46 typeSource:v37 visits:v47 customLabel:v43 mapItem:v48];

  return v49;
}

- (id)_mergePredictedLocationsOfInterest:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      v5 = [v4 firstObject];
    }

    else
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__120;
      v37 = __Block_byref_object_dispose__120;
      v6 = [v4 firstObject];
      v38 = [v6 locationOfInterest];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __64__RTDeviceLocationPredictor__mergePredictedLocationsOfInterest___block_invoke;
      v32[3] = &unk_2788CE900;
      v32[4] = self;
      v32[5] = &v33;
      [v4 enumerateObjectsUsingBlock:v32];
      v7 = [v4 valueForKeyPath:@"@max.confidence"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [v4 valueForKeyPath:@"@min.nextEntryTime"];
      v11 = [MEMORY[0x277CBEB38] dictionary];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __64__RTDeviceLocationPredictor__mergePredictedLocationsOfInterest___block_invoke_2;
      v30[3] = &unk_2788CE928;
      v12 = v11;
      v31 = v12;
      [v4 enumerateObjectsUsingBlock:v30];
      v13 = [v12 objectForKeyedSubscript:&unk_28459EFB8];
      v14 = [v13 integerValue];

      if (v14 <= 0)
      {
        v16 = [v12 objectForKeyedSubscript:&unk_28459EFD0];
        v17 = [v16 integerValue];

        if (v17 <= 0)
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
      [v4 enumerateObjectsUsingBlock:&v25];
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

      v5 = [v21 initWithLocationOfInterest:v22 confidence:v10 nextEntryTime:v15 modeOfTransportation:v23 sources:v9];

      _Block_object_dispose(&v33, 8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (id)_dedupePredictedLocationsOfInterest:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v26 = [MEMORY[0x277CBEB38] dictionary];
  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v3;
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
        v8 = [v7 locationOfInterest];
        v9 = [v8 mapItem];
        if (v9)
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
              if ([v9 isEqualToMapItem:v15])
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

            v16 = v15;

            if (!v16)
            {
              goto LABEL_18;
            }

            v17 = [v10 objectForKeyedSubscript:v16];
            [v17 addObject:v7];
          }

          else
          {
LABEL_15:

LABEL_18:
            v18 = objc_opt_new();
            [v10 setObject:v18 forKeyedSubscript:v9];

            v16 = [v10 objectForKeyedSubscript:v9];
            [v16 addObject:v7];
          }
        }

        else
        {
          v19 = [v8 identifier];

          if (v19)
          {
            v16 = [v8 identifier];
            [v26 setObject:v7 forKeyedSubscript:v16];
          }

          else
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = 138739971;
              v43 = v8;
              _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "locationOfInterest %{sensitive}@, has nil identifier.", buf, 0xCu);
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v5);
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __65__RTDeviceLocationPredictor__dedupePredictedLocationsOfInterest___block_invoke;
  v30[3] = &unk_2788CE950;
  v21 = v20;
  v31 = v21;
  v32 = self;
  [v28 enumerateKeysAndObjectsUsingBlock:v30];
  v22 = [v26 allValues];
  [v21 addObjectsFromArray:v22];

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

- (id)_sortPredictedLocationsOfInterest:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_99];
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
        v6 = [MEMORY[0x277CBEB38] dictionary];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v54 = v5;
        v7 = [v5 sources];
        v8 = [v7 countByEnumeratingWithState:&v55 objects:v67 count:16];
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
                objc_enumerationMutation(v7);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v12 = objc_opt_class(), NSStringFromClass(v12), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v14 = v13;
                v15 = MEMORY[0x277CCABB0];
                v16 = [v6 objectForKeyedSubscript:v13];
                v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + 1}];
                [v6 setObject:v17 forKeyedSubscript:v14];
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
            v9 = [v7 countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v9);
        }

        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v6 objectForKeyedSubscript:v21];
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
        v28 = [v6 objectForKeyedSubscript:v27];
        v29 = [v28 unsignedIntegerValue];

        v25 = v50;
        if (!v29)
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [v6 objectForKeyedSubscript:v31];
          v33 = [v32 unsignedIntegerValue];

          v25 = v47;
          if (!v33)
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = [v6 objectForKeyedSubscript:v35];
            v37 = [v36 unsignedIntegerValue];

            v25 = v46;
            if (!v37)
            {
              v38 = objc_opt_class();
              v39 = NSStringFromClass(v38);
              v40 = [v6 objectForKeyedSubscript:v39];
              v41 = [v40 unsignedIntegerValue];

              if (v41)
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

- (id)_sortAndDedupePredictedLocationsOfInterest:(id)a3
{
  v4 = [(RTDeviceLocationPredictor *)self _dedupePredictedLocationsOfInterest:a3];
  v5 = [(RTDeviceLocationPredictor *)self _sortPredictedLocationsOfInterest:v4];

  return v5;
}

- (void)_fetchNextPredictedLocationsOfInterestFromLocation:(id)a3 startDate:(id)a4 timeInterval:(double)a5 clientIdentifier:(id)a6 handler:(id)a7
{
  v89[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    if (v12)
    {
      [v12 horizontalUncertainty];
      if (v16 > 250.0)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = *MEMORY[0x277D01448];
        v86 = *MEMORY[0x277CCA450];
        v19 = MEMORY[0x277CCACA8];
        [v12 horizontalUncertainty];
        p_super = [v19 stringWithFormat:@"Horizontal Uncertainity, %.2f, is greater than the Threshold, %.2f, ", v20, 0x406F400000000000];
        v87 = p_super;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v23 = [v17 errorWithDomain:v18 code:7 userInfo:v22];
        v15[2](v15, 0, v23);

        goto LABEL_35;
      }

      if (v13)
      {
        if (a5 > 0.0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = [v13 stringFromDate];
              *buf = 138740483;
              v77 = v12;
              v78 = 2112;
              v79 = v30;
              v80 = 2048;
              v81 = a5 / 3600.0;
              _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "Predict device location wrt location, %{sensitive}@, startDate, %@, timeInterval, %.2f hrs", buf, 0x20u);
            }
          }

          v57 = v15;
          v31 = 0x277CBE000uLL;
          v56 = [MEMORY[0x277CBEAA8] date];
          v32 = [[RTPredictedLocationsOfInterestCriteria alloc] initWithDistanceCalculator:self->_distanceCalculator];
          v59 = v13;
          [(RTPredictedLocationsOfInterestCriteria *)v32 setReferenceDate:v13];
          v60 = v12;
          v33 = v12;
          v34 = v32;
          [(RTPredictedLocationsOfInterestCriteria *)v32 setReferenceLocation:v33];
          [(RTPredictedLocationsOfInterestCriteria *)v32 setWindowDuration:a5];
          v35 = a5 * 20.0;
          if (a5 <= 0.0)
          {
            v35 = 72000.0;
          }

          [(RTPredictedLocationsOfInterestCriteria *)v32 setMaximumDistance:v35];
          [(RTPredictedLocationsOfInterestCriteria *)v32 setMinimumDistance:700.0];
          v58 = v14;
          [(RTPredictedLocationsOfInterestCriteria *)v32 setClientIdentifier:v14];
          v36 = dispatch_group_create();
          v37 = [MEMORY[0x277CBEB18] array];
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
                    v45 = self;
                    v46 = v37;
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
                    v37 = v46;
                    self = v45;
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
                  v68 = v37;
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

          v52 = [(RTNotifier *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __128__RTDeviceLocationPredictor__fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke_63;
          block[3] = &unk_2788C5530;
          v15 = v57;
          v63 = v37;
          v64 = v56;
          v65 = self;
          v66 = v57;
          v53 = v56;
          v54 = v37;
          dispatch_group_notify(v36, v52, block);

          p_super = &v34->super;
          v13 = v59;
          v12 = v60;
          v14 = v58;
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
    v15[2](v15, 0, v55);

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

- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)a3 startDate:(id)a4 timeInterval:(double)a5 clientIdentifier:(id)a6 handler:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    v17 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __127__RTDeviceLocationPredictor_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_handler___block_invoke;
    block[3] = &unk_2788CE9C0;
    block[4] = self;
    v24 = a2;
    v23 = v16;
    v20 = v13;
    v21 = v14;
    v25 = a5;
    v22 = v15;
    dispatch_async(v17, block);
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

- (void)fetchPredictedLocationsOfInterestOnDate:(id)a3 clientIdentifier:(id)a4 withHandler:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v8 dateByAddingTimeInterval:-7200.0];
    v12 = [v8 dateByAddingTimeInterval:7200.0];
    [(RTDeviceLocationPredictor *)self fetchPredictedLocationsOfInterestBetweenStartDate:v11 endDate:v12 clientIdentifier:v9 withHandler:v10];
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

- (void)_fetchPredictedExitDatesFromLocation:(id)a3 onDate:(id)a4 withHandler:(id)a5
{
  v71[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      [v9 horizontalUncertainty];
      if (v12 > 250.0)
      {
        v13 = MEMORY[0x277CCA9B8];
        v14 = *MEMORY[0x277D01448];
        v68 = *MEMORY[0x277CCA450];
        v15 = MEMORY[0x277CCACA8];
        [v9 horizontalUncertainty];
        v17 = [v15 stringWithFormat:@"Horizontal Uncertainity, %.2f, is greater than the Threshold, %.2f, ", v16, 0x406F400000000000];
        v69 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v19 = [v13 errorWithDomain:v14 code:7 userInfo:v18];
        v11[2](v11, 0, v19);

        goto LABEL_29;
      }

      if (v10)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = [v9 coordinateToString];
            v27 = [v10 stringFromDate];
            *buf = 138740227;
            v63 = v26;
            v64 = 2112;
            v65 = v27;
            _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "Predict exit dates from location, %{sensitive}@, onDate, %@", buf, 0x16u);
          }
        }

        v28 = [(RTDeviceLocationPredictor *)self evalPredictedExitDates];

        if (v28)
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

          v17 = [(RTDeviceLocationPredictor *)self evalPredictedExitDates];
          (v11)[2](v11, v17, 0);
        }

        else
        {
          v47 = v11;
          v34 = objc_opt_new();
          v48 = v10;
          [v34 setReferenceDate:v10];
          v49 = v9;
          [v34 setReferenceLocation:v9];
          v17 = v34;
          [v34 setWindowDuration:INFINITY];
          v35 = dispatch_group_create();
          v36 = [MEMORY[0x277CBEB18] array];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v37 = self;
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
                if (![v43 requiresRoutineEnablement] || -[RTDeviceLocationPredictor routineEnabled](v37, "routineEnabled"))
                {
                  dispatch_group_enter(v35);
                  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                  v53[0] = MEMORY[0x277D85DD0];
                  v53[1] = 3221225472;
                  v53[2] = __85__RTDeviceLocationPredictor__fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke;
                  v53[3] = &unk_2788CE998;
                  v53[4] = v37;
                  v53[5] = v43;
                  v56 = v44;
                  v54 = v36;
                  v55 = v35;
                  [v43 fetchPredictedExitDatesWithCriteria:v34 handler:v53];
                }
              }

              v40 = [(NSSet *)v38 countByEnumeratingWithState:&v57 objects:v61 count:16];
            }

            while (v40);
          }

          v45 = [(RTNotifier *)v37 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __85__RTDeviceLocationPredictor__fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke_68;
          block[3] = &unk_2788C4D38;
          v11 = v47;
          v51 = v36;
          v52 = v47;
          v46 = v36;
          dispatch_group_notify(v35, v45, block);

          v10 = v48;
          v9 = v49;
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

    v17 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v33 = [v20 errorWithDomain:v21 code:7 userInfo:v17];
    v11[2](v11, 0, v33);

    goto LABEL_29;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v63 = "[RTDeviceLocationPredictor _fetchPredictedExitDatesFromLocation:onDate:withHandler:]";
    v64 = 1024;
    LODWORD(v65) = 672;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
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

- (void)fetchPredictedExitDatesFromLocation:(id)a3 onDate:(id)a4 withHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(RTNotifier *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__RTDeviceLocationPredictor_fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke;
    v13[3] = &unk_2788C5530;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(v11, v13);
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

- (void)_fetchPredictedLocationsOfInterestBetweenStartDate:(id)a3 endDate:(id)a4 clientIdentifier:(id)a5 withHandler:(id)a6
{
  v68[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (!v10)
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

    if (!v11)
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

    [v11 timeIntervalSinceDate:v10];
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
      v13[2](v13, 0, v23);

      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v10 stringFromDate];
        v26 = [v11 stringFromDate];
        *buf = 138412546;
        v60 = v25;
        v61 = 2112;
        v62 = v26;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "Predicting LOIs the device may travel to between startDate, %@, endDate, %@", buf, 0x16u);
      }
    }

    [v11 timeIntervalSinceDate:v10];
    v28 = v27;
    v29 = [[RTPredictedLocationsOfInterestCriteria alloc] initWithDistanceCalculator:self->_distanceCalculator];
    v43 = v10;
    [(RTPredictedLocationsOfInterestCriteria *)v29 setReferenceDate:v10];
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
    v42 = v12;
    [(RTPredictedLocationsOfInterestCriteria *)v29 setClientIdentifier:v12];
    v31 = dispatch_group_create();
    v32 = [MEMORY[0x277CBEB18] array];
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
            v51 = v32;
            v52 = v31;
            [v38 fetchPredictedLocationsOfInterestWithCriteria:v44 handler:v50];
          }
        }

        v35 = [(NSSet *)v33 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v35);
    }

    v40 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__RTDeviceLocationPredictor__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_withHandler___block_invoke_78;
    block[3] = &unk_2788C5580;
    block[4] = self;
    v46 = v32;
    v10 = v43;
    v47 = v43;
    v48 = v11;
    v49 = v13;
    v41 = v32;
    dispatch_group_notify(v31, v40, block);

    v12 = v42;
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

- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)a3 endDate:(id)a4 clientIdentifier:(id)a5 withHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__RTDeviceLocationPredictor_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_withHandler___block_invoke;
  block[3] = &unk_2788C5580;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)_setupEvalMode
{
  v3 = [(RTDeviceLocationPredictor *)self platform];
  v4 = [v3 internalInstall];

  if (v4)
  {
    out_token = 0;
    v5 = [@"Eval" UTF8String];
    v6 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__RTDeviceLocationPredictor__setupEvalMode__block_invoke;
    v7[3] = &unk_2788CE9E8;
    v7[4] = self;
    notify_register_dispatch(v5, &out_token, v6, v7);

    [(RTDeviceLocationPredictor *)self _updateEvalMode];
  }
}

- (void)_updateEvalMode
{
  [(RTDeviceLocationPredictor *)self setEvalPredictedLocationsOfInterest:0];
  [(RTDeviceLocationPredictor *)self setEvalPredictedExitDates:0];
  v3 = [(RTDeviceLocationPredictor *)self platform];
  v4 = [v3 internalInstall];

  if (v4)
  {
    v5 = [(RTDeviceLocationPredictor *)self defaultsManager];
    v6 = [v5 objectForKey:@"Eval"];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 fileExistsAtPath:v6];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
      if ([v9 count])
      {
        v10 = [v9 objectForKey:@"RTPredictedLocationsOfInterest"];
        if (v10)
        {
          v11 = [MEMORY[0x277CBEB18] array];
          [(RTDeviceLocationPredictor *)self setEvalPredictedLocationsOfInterest:v11];
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

- (void)_onAuthorizationNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    -[RTDeviceLocationPredictor setRoutineEnabled:](self, "setRoutineEnabled:", [v5 enabled]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(RTDeviceLocationPredictor *)self routineEnabled];
        v11 = @"NO";
        if (v10)
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
      v13 = [v5 name];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", &v14, 0x16u);
    }

    goto LABEL_10;
  }
}

- (void)_onLearnedLocationManagerNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(RTDeviceLocationPredictor *)self learnedLocationManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__RTDeviceLocationPredictor__onLearnedLocationManagerNotification___block_invoke;
    v13[3] = &unk_2788C99C0;
    v13[4] = self;
    v14 = v5;
    [v9 fetchRecentLocationsOfInterestWithHandler:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [v5 name];
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
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

- (void)onAuthorizationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTDeviceLocationPredictor_onAuthorizationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)onLearnedLocationManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RTDeviceLocationPredictor_onLearnedLocationManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end