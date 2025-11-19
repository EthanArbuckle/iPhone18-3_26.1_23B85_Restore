@interface RTTransitMetricManager
- (BOOL)isOverlappedVisit:(id)a3 locationsOfInterest:(id)a4;
- (RTTransitMetricManager)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 learnedLocationManager:(id)a5 learnedLocationStore:(id)a6;
- (void)_fetchLocationsOfInterestWithPlaceTypes:(id)a3 handler:(id)a4;
- (void)_performAnalyticsWitHomeLOIs:(id)a3 workLOIs:(id)a4 handler:(id)a5;
- (void)_sendMetricsWithDevices:(id)a3 counts:(id)a4 primaryDeviceJourneyCount:(int64_t)a5 metricDurationDays:(int64_t)a6;
- (void)dealloc;
- (void)performTransitAnalyticsWithHandler:(id)a3;
@end

@implementation RTTransitMetricManager

- (RTTransitMetricManager)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 learnedLocationManager:(id)a5 learnedLocationStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v11)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: defaultsManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_17;
  }

  if (!v12)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_16;
  }

  if (!v13)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: learnedLocationManager";
    goto LABEL_16;
  }

  if (!v14)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Invalid parameter not satisfying: learnedLocationStore";
      goto LABEL_16;
    }

LABEL_17:

    v21 = 0;
    goto LABEL_18;
  }

  v29.receiver = self;
  v29.super_class = RTTransitMetricManager;
  v16 = [(RTTransitMetricManager *)&v29 init];
  if (v16)
  {
    v28 = v16;
    v17 = v16;
    attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(RTTransitMetricManager *)v17 UTF8String];
    }

    else
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v17];
      label = [v23 UTF8String];

      v18 = label;
    }

    labela = dispatch_queue_create(v18, attr);

    queue = v17->_queue;
    v17->_queue = labela;

    objc_storeStrong(&v17->_defaultsManager, a3);
    objc_storeStrong(&v17->_distanceCalculator, a4);
    objc_storeStrong(&v17->_learnedLocationManager, a5);
    objc_storeStrong(&v17->_learnedLocationStore, a6);
    v16 = v28;
  }

  self = v16;
  v21 = self;
LABEL_18:

  return v21;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RTTransitMetricManager;
  [(RTTransitMetricManager *)&v2 dealloc];
}

- (BOOL)isOverlappedVisit:(id)a3 locationsOfInterest:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        distanceCalculator = self->_distanceCalculator;
        v12 = [v10 location];
        v13 = [v12 location];
        v14 = [v5 location];
        v15 = [v14 location];
        v32 = 0;
        [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v13 toLocation:v15 error:&v32];
        v17 = v16;
        v18 = v32;

        v19 = [v10 location];

        v20 = [v19 location];
        [v20 horizontalUncertainty];
        v22 = v21;
        v23 = [v5 location];
        v24 = [v23 location];
        [v24 horizontalUncertainty];
        v26 = v22 + v25;

        if (v26 >= 50.0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 50.0;
        }

        if (v17 < v27)
        {
          v28 = 1;
          goto LABEL_14;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0;
LABEL_14:

  return v28;
}

- (void)performTransitAnalyticsWithHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__RTTransitMetricManager_performTransitAnalyticsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __61__RTTransitMetricManager_performTransitAnalyticsWithHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v8 = 5;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "TransitMetrics, max reports, %lu", buf, 0xCu);
    }
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__RTTransitMetricManager_performTransitAnalyticsWithHandler___block_invoke_27;
  v5[3] = &unk_2788D1438;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 _fetchLocationsOfInterestWithPlaceTypes:&unk_2845A1670 handler:v5];
}

void __61__RTTransitMetricManager_performTransitAnalyticsWithHandler___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v37 = a2;
  v5 = a3;
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v6)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v31 = [v5 description];
        *buf = 138412290;
        v56 = v31;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "TransitMetrics, error, home/work are not fetched, error, %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v6)
    {
      v34 = a1;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = [v37 allKeys];
      v38 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
      if (v38)
      {
        v8 = MEMORY[0x277D86220];
        v36 = *v49;
        do
        {
          v9 = 0;
          do
          {
            if (*v49 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v48 + 1) + 8 * v9);
            v11 = [v37 objectForKey:v10];
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                v20 = [v10 unsignedIntegerValue];
                v21 = [v11 count];
                *buf = 134218240;
                v56 = v20;
                v57 = 2048;
                v58 = v21;
                _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "TransitMetrics, type, %lu, lois.size, %lu", buf, 0x16u);
              }
            }

            v39 = v9;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v13 = v11;
            v14 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v45;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v45 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v44 + 1) + 8 * i);
                  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
                  {
                    v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138739971;
                      v56 = v18;
                      _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "TransitMetrics, loi, %{sensitive}@", buf, 0xCu);
                    }
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
              }

              while (v15);
            }

            v9 = v39 + 1;
          }

          while (v39 + 1 != v38);
          v38 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
        }

        while (v38);
      }

      a1 = v34;
      v5 = 0;
    }

    v22 = [v37 objectForKey:&unk_28459FA80];
    v23 = [v37 objectForKey:&unk_28459FA98];
    if ([v22 count] && objc_msgSend(v23, "count"))
    {
      v24 = *(a1 + 32);
      v25 = *(v24 + 40);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__RTTransitMetricManager_performTransitAnalyticsWithHandler___block_invoke_32;
      block[3] = &unk_2788C5530;
      block[4] = v24;
      v41 = v22;
      v42 = v23;
      v43 = *(a1 + 40);
      dispatch_async(v25, block);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v32 = [v22 count];
          v33 = [v23 count];
          *buf = 134218240;
          v56 = v32;
          v57 = 2048;
          v58 = v33;
          _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "TransitMetrics, Home/Work LOI are not learned, Home count, %lu, Work count, %lu", buf, 0x16u);
        }
      }

      v27 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277D01448];
      v52 = *MEMORY[0x277CCA450];
      v53 = @"Home/Work LOI are not learned.";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v30 = [v27 errorWithDomain:v28 code:14 userInfo:v29];

      (*(*(a1 + 40) + 16))();
    }
  }
}

void __61__RTTransitMetricManager_performTransitAnalyticsWithHandler___block_invoke_32(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__RTTransitMetricManager_performTransitAnalyticsWithHandler___block_invoke_2;
  v4[3] = &unk_2788C48C0;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _performAnalyticsWitHomeLOIs:v2 workLOIs:v3 handler:v4];
}

void __61__RTTransitMetricManager_performTransitAnalyticsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 description];
      v6 = 138412290;
      v7 = v5;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "TransitMetrics, done, error, %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_fetchLocationsOfInterestWithPlaceTypes:(id)a3 handler:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v21 = v6;
  if (!v6)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeTypes", buf, 2u);
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

LABEL_14:

    goto LABEL_19;
  }

  if ([v6 count])
  {
    v20 = v8;
    v9 = [MEMORY[0x277CBEB38] dictionary];
    *buf = 0;
    v37 = buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__168;
    v40 = __Block_byref_object_dispose__168;
    v41 = 0;
    v10 = dispatch_group_create();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v6;
    v11 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v11)
    {
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [v14 unsignedIntegerValue];
          dispatch_group_enter(v10);
          learnedLocationManager = self->_learnedLocationManager;
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __74__RTTransitMetricManager__fetchLocationsOfInterestWithPlaceTypes_handler___block_invoke;
          v27[3] = &unk_2788C4640;
          v31 = buf;
          v28 = v9;
          v29 = v14;
          v30 = v10;
          [(RTLearnedLocationManager *)learnedLocationManager fetchLocationsOfInterestWithPlaceType:v15 handler:v27];
        }

        v11 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v11);
    }

    v17 = [(RTTransitMetricManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__RTTransitMetricManager__fetchLocationsOfInterestWithPlaceTypes_handler___block_invoke_2;
    block[3] = &unk_2788D1460;
    v26 = buf;
    v24 = v9;
    v25 = v20;
    v18 = v9;
    dispatch_group_notify(v10, v17, block);

    _Block_object_dispose(buf, 8);
    v8 = v20;
  }

  else
  {
    v8[2](v8, MEMORY[0x277CBEC10], 0);
  }

LABEL_19:
}

void __74__RTTransitMetricManager__fetchLocationsOfInterestWithPlaceTypes_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1 + 56) + 8);
  if (*(v7 + 40))
  {
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v9 = _RTSafeArray();
    v10 = _RTMultiErrorCreate();
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if ([v13 count])
  {
    [*(a1 + 32) setObject:v13 forKey:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __74__RTTransitMetricManager__fetchLocationsOfInterestWithPlaceTypes_handler___block_invoke_2(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(*(*(v3 + 8) + 8) + 40))
  {
    return (*(v2 + 16))(v2, 0);
  }

  else
  {
    return (*(v2 + 16))(v2, *(a1 + 32));
  }
}

- (void)_performAnalyticsWitHomeLOIs:(id)a3 workLOIs:(id)a4 handler:(id)a5
{
  v235[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v159 = a5;
  v179 = v8;
  v174 = v9;
  if (!v8)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: homeLois", buf, 2u);
    }

    goto LABEL_25;
  }

  if (!v9)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workLois", buf, 2u);
    }

    goto LABEL_25;
  }

  if (![v8 count])
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: homeLois.count>0", buf, 2u);
    }

    goto LABEL_25;
  }

  if (![v9 count])
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workLois.count>0", buf, 2u);
    }

    goto LABEL_25;
  }

  if (!v159)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

LABEL_25:

    goto LABEL_122;
  }

  v216 = 0;
  v217 = &v216;
  v218 = 0x3032000000;
  v219 = __Block_byref_object_copy__168;
  v220 = __Block_byref_object_dispose__168;
  v221 = 0;
  v210 = 0;
  v211 = &v210;
  v212 = 0x3032000000;
  v213 = __Block_byref_object_copy__168;
  v214 = __Block_byref_object_dispose__168;
  v215 = 0;
  v10 = dispatch_semaphore_create(0);
  v153 = [(RTLearnedLocationStore *)self->_learnedLocationStore predicateForObjectsFromCurrentDevice];
  v152 = [(RTLearnedLocationStore *)self->_learnedLocationStore predicateForCompleteVisits];
  v158 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v180 = self;
  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [MEMORY[0x277CBEAA8] distantFuture];
  v165 = [v11 initWithStartDate:v158 endDate:v12];

  learnedLocationStore = self->_learnedLocationStore;
  v14 = [MEMORY[0x277CBEAA8] distantFuture];
  v151 = [(RTLearnedLocationStore *)learnedLocationStore predicateForVisitsFromEntryDate:v158 exitDate:v14];

  v15 = MEMORY[0x277CCA920];
  v234[0] = v153;
  v234[1] = v152;
  v234[2] = v151;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v234 count:3];
  v150 = [v15 andPredicateWithSubpredicates:v16];

  v17 = self->_learnedLocationStore;
  v206[0] = MEMORY[0x277D85DD0];
  v206[1] = 3221225472;
  v206[2] = __72__RTTransitMetricManager__performAnalyticsWitHomeLOIs_workLOIs_handler___block_invoke;
  v206[3] = &unk_2788C4490;
  v208 = &v216;
  v209 = &v210;
  v18 = v10;
  v207 = v18;
  [(RTLearnedLocationStore *)v17 fetchVisitsWithPredicate:v150 handler:v206];
  dsema = v18;
  v19 = [MEMORY[0x277CBEAA8] now];
  v20 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(dsema, v20))
  {
    v32 = 0;
LABEL_27:
    v34 = 1;
    goto LABEL_28;
  }

  v21 = [MEMORY[0x277CBEAA8] now];
  [v21 timeIntervalSinceDate:v19];
  v23 = v22;
  v24 = objc_opt_new();
  v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_138];
  v26 = [MEMORY[0x277CCACC8] callStackSymbols];
  v27 = [v26 filteredArrayUsingPredicate:v25];
  v28 = [v27 firstObject];

  [v24 submitToCoreAnalytics:v28 type:1 duration:v23];
  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v29, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v30 = MEMORY[0x277CCA9B8];
  *v223 = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v223 count:1];
  v32 = [v30 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v31];

  if (!v32)
  {
    goto LABEL_27;
  }

  v33 = v32;

  v34 = 0;
LABEL_28:

  v149 = v32;
  if ((v34 & 1) == 0)
  {
    objc_storeStrong(v211 + 5, v32);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v217[5] count];
      v38 = v211[5];
      *buf = 134218242;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = v38;
      _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "TransitMetrics, %lu visits on current device, error, %@", buf, 0x16u);
    }
  }

  if (v211[5])
  {
    v159[2]();
    goto LABEL_121;
  }

  v39 = [v217[5] lastObject];
  v40 = [v39 exitDate];
  v41 = [v217[5] firstObject];
  v42 = [v41 entryDate];
  [v40 timeIntervalSinceDate:v42];
  v44 = v43;

  v146 = (v44 / 86400.0);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v138 = [v217[5] count];
      v139 = [v217[5] firstObject];
      v140 = [v139 entryDate];
      v141 = [v140 stringFromDate];
      v142 = [v217[5] lastObject];
      v143 = [v142 exitDate];
      v144 = [v143 stringFromDate];
      v145 = [v158 stringFromDate];
      *buf = 134219010;
      *&buf[4] = v138;
      *&buf[12] = 2112;
      *&buf[14] = v141;
      *&buf[22] = 2112;
      v227 = v144;
      *v228 = 2048;
      *&v228[2] = (v44 / 86400.0);
      *&v228[10] = 2112;
      *&v228[12] = v145;
      _os_log_debug_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEBUG, "TransitMetrics, visits, %lu, startDate, %@, endDate, %@, duration, %lu, stats.startDate, %@", buf, 0x34u);
    }
  }

  v160 = objc_opt_new();
  v46 = v180;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  obj = v217[5];
  v47 = [obj countByEnumeratingWithState:&v202 objects:v233 count:16];
  if (!v47)
  {
    v181 = 0;
    v182 = 0;
    v184 = 0;
    goto LABEL_86;
  }

  v48 = 0;
  v181 = 0;
  v182 = 0;
  v184 = 0;
  context = *v203;
  do
  {
    v177 = v47;
    for (i = 0; i != v177; ++i)
    {
      if (*v203 != context)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(*(&v202 + 1) + 8 * i);
      if ([(RTTransitMetricManager *)v46 isOverlappedVisit:v50 locationsOfInterest:v179])
      {
        if (v48 == 2)
        {
          v51 = [v50 entryDate];
          [v51 timeIntervalSinceDate:v181];
          if (v52 >= 900.0)
          {
            v60 = [v181 dateByAddingTimeInterval:300.0];
            if (v60)
            {
              v61 = [v181 dateByAddingTimeInterval:300.0];
              v170 = [v61 earlierDate:v184];
            }

            else
            {
              v170 = v184;
            }

            v66 = [v51 dateByAddingTimeInterval:-300.0];
            if (v66)
            {
              v67 = [v51 dateByAddingTimeInterval:-300.0];
              v168 = [v67 laterDate:v182];
            }

            else
            {
              v168 = v182;
            }

            v68 = [v50 entryDate];
            v69 = [v68 dateByAddingTimeInterval:300.0];
            if (v69)
            {
              v70 = [v50 entryDate];
              v71 = [v70 dateByAddingTimeInterval:300.0];
              v72 = [v50 exitDate];
              v73 = [v72 dateByAddingTimeInterval:-300.0];
              v166 = [v71 earlierDate:v73];
            }

            else
            {
              v70 = [v50 exitDate];
              v166 = [v70 dateByAddingTimeInterval:-300.0];
            }

            v74 = [v50 entryDate];
            v75 = [v74 dateByAddingTimeInterval:300.0];
            if (v75)
            {
              v76 = [v50 entryDate];
              v77 = [v76 dateByAddingTimeInterval:300.0];
              v78 = [v50 exitDate];
              v79 = [v78 dateByAddingTimeInterval:-300.0];
              v80 = [v77 laterDate:v79];
            }

            else
            {
              v76 = [v50 exitDate];
              v80 = [v76 dateByAddingTimeInterval:-300.0];
            }

            v81 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v170 endDate:v168];
            v82 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v166 endDate:v80];
            v83 = [[RTTransitMetricPeriod alloc] initWithJourneyPeriod:v81 homeStayPeriod:v82];
            [v160 addObject:v83];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v84 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
              {
                v86 = [v170 stringFromDate];
                v163 = [v168 stringFromDate];
                v161 = [v166 stringFromDate];
                v156 = [v80 stringFromDate];
                v87 = [v50 entryDate];
                v154 = [v87 stringFromDate];
                v148 = [v50 exitDate];
                v88 = [v148 stringFromDate];
                v89 = [v181 stringFromDate];
                *buf = 138413826;
                v147 = v89;
                *&buf[4] = v86;
                *&buf[12] = 2112;
                *&buf[14] = v163;
                *&buf[22] = 2112;
                v227 = v161;
                *v228 = 2112;
                *&v228[2] = v156;
                *&v228[10] = 2112;
                *&v228[12] = v154;
                v229 = 2112;
                v230 = v88;
                v231 = 2112;
                v232 = v89;
                _os_log_debug_impl(&dword_2304B3000, v84, OS_LOG_TYPE_DEBUG, "TransitMetrics, create journey, startDate, %@, endDate, %@, home.entryDate.adjusted, %@, home.exitDate.adjusted, %@, home.entryDate, %@, home.exitDate, %@, home.prevExitDate, %@", buf, 0x48u);
              }
            }

            v53 = v170;
LABEL_77:
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v53 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              v54 = [v181 stringFromDate];
              v55 = [v51 stringFromDate];
              [v51 timeIntervalSinceDate:v181];
              *buf = 138412802;
              *&buf[4] = v54;
              *&buf[12] = 2112;
              *&buf[14] = v55;
              *&buf[22] = 2048;
              v227 = v56;
              _os_log_debug_impl(&dword_2304B3000, v53, OS_LOG_TYPE_DEBUG, "TransitMetrics, pass journey, startDate, %@, endDate, %@, interval, %f", buf, 0x20u);
            }

            goto LABEL_77;
          }
        }

        v85 = [v50 exitDate];
        v63 = 0;
        v59 = 0;
        v64 = v181;
        v48 = 1;
        v181 = v85;
        goto LABEL_80;
      }

      if (![(RTTransitMetricManager *)v46 isOverlappedVisit:v50 locationsOfInterest:v174])
      {
        continue;
      }

      if (v48 == 1)
      {
        v48 = 2;
      }

      v57 = [v50 entryDate];
      if (v57)
      {
        v58 = [v50 entryDate];
        v59 = [v58 earlierDate:v184];
      }

      else
      {
        v59 = v184;
      }

      v62 = [v50 exitDate];
      if (v62)
      {
        v184 = [v50 exitDate];
        v63 = [v184 laterDate:v182];
        v64 = v182;
        v182 = v62;
LABEL_80:

        v65 = v182;
        v182 = v63;
        goto LABEL_81;
      }

      v65 = 0;
LABEL_81:

      v184 = v59;
      v46 = v180;
    }

    v47 = [obj countByEnumeratingWithState:&v202 objects:v233 count:16];
  }

  while (v47);
LABEL_86:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v90 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      v91 = [v160 count];
      *buf = 134217984;
      *&buf[4] = v91;
      _os_log_impl(&dword_2304B3000, v90, OS_LOG_TYPE_INFO, "TransitMetrics, journeys, %lu", buf, 0xCu);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v227 = __Block_byref_object_copy__168;
  *v228 = __Block_byref_object_dispose__168;
  *&v228[8] = 0;
  v92 = dispatch_semaphore_create(0);

  v93 = v180->_learnedLocationStore;
  v198[0] = MEMORY[0x277D85DD0];
  v198[1] = 3221225472;
  v198[2] = __72__RTTransitMetricManager__performAnalyticsWitHomeLOIs_workLOIs_handler___block_invoke_44;
  v198[3] = &unk_2788C4490;
  v200 = buf;
  v201 = &v210;
  v94 = v92;
  v199 = v94;
  [(RTLearnedLocationStore *)v93 fetchDevicesNotFromCurrentDeviceWithHandler:v198];
  dsema = v94;
  v95 = [MEMORY[0x277CBEAA8] now];
  v96 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(dsema, v96))
  {
    goto LABEL_95;
  }

  v97 = [MEMORY[0x277CBEAA8] now];
  [v97 timeIntervalSinceDate:v95];
  v99 = v98;
  v100 = objc_opt_new();
  v101 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_138];
  v102 = [MEMORY[0x277CCACC8] callStackSymbols];
  v103 = [v102 filteredArrayUsingPredicate:v101];
  v104 = [v103 firstObject];

  [v100 submitToCoreAnalytics:v104 type:1 duration:v99];
  v105 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
  {
    *v223 = 0;
    _os_log_fault_impl(&dword_2304B3000, v105, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v223, 2u);
  }

  v106 = MEMORY[0x277CCA9B8];
  v235[0] = *MEMORY[0x277CCA450];
  *v223 = @"semaphore wait timeout";
  v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v223 forKeys:v235 count:1];
  v108 = [v106 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v107];

  if (v108)
  {
    v109 = v108;

    v110 = 0;
  }

  else
  {
LABEL_95:
    v110 = 1;
    v108 = v149;
  }

  v111 = v108;
  if ((v110 & 1) == 0)
  {
    objc_storeStrong(v211 + 5, v108);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v112 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
    {
      v113 = [*(*&buf[8] + 40) count];
      v114 = v211[5];
      *v223 = 134218242;
      *&v223[4] = v113;
      v224 = 2112;
      v225 = v114;
      _os_log_impl(&dword_2304B3000, v112, OS_LOG_TYPE_INFO, "TransitMetrics, devices, %lu, error, %@", v223, 0x16u);
    }
  }

  if (v211[5])
  {
    v159[2]();
  }

  else
  {
    v115 = [MEMORY[0x277CCA940] set];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__RTTransitMetricManager__performAnalyticsWitHomeLOIs_workLOIs_handler___block_invoke_46;
    aBlock[3] = &unk_2788D1488;
    v155 = v160;
    v193 = v155;
    v194 = v180;
    v195 = v174;
    v196 = v179;
    v157 = v115;
    v197 = v157;
    v171 = _Block_copy(aBlock);
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v162 = *(*&buf[8] + 40);
    v116 = [v162 countByEnumeratingWithState:&v188 objects:v222 count:16];
    if (v116)
    {
      v169 = *v189;
      v164 = *MEMORY[0x277D01448];
      v167 = *MEMORY[0x277CCA450];
      do
      {
        obja = v116;
        v117 = 0;
        v178 = v111;
        do
        {
          if (*v189 != v169)
          {
            objc_enumerationMutation(v162);
          }

          v118 = *(*(&v188 + 1) + 8 * v117);
          contexta = objc_autoreleasePoolPush();
          v119 = dispatch_semaphore_create(0);

          v120 = v180->_learnedLocationStore;
          v185[0] = MEMORY[0x277D85DD0];
          v185[1] = 3221225472;
          v185[2] = __72__RTTransitMetricManager__performAnalyticsWitHomeLOIs_workLOIs_handler___block_invoke_48;
          v185[3] = &unk_2788D0880;
          v185[4] = v118;
          v187 = v171;
          v121 = v119;
          v186 = v121;
          [(RTLearnedLocationStore *)v120 fetchVisitsWithDevice:v118 dateInterval:v165 handler:v185];
          dsema = v121;
          v122 = [MEMORY[0x277CBEAA8] now];
          v123 = dispatch_time(0, 3600000000000);
          if (!dispatch_semaphore_wait(dsema, v123))
          {
            goto LABEL_114;
          }

          v124 = [MEMORY[0x277CBEAA8] now];
          [v124 timeIntervalSinceDate:v122];
          v126 = v125;
          v127 = objc_opt_new();
          v128 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_138];
          v129 = [MEMORY[0x277CCACC8] callStackSymbols];
          v130 = [v129 filteredArrayUsingPredicate:v128];
          v131 = [v130 firstObject];

          [v127 submitToCoreAnalytics:v131 type:1 duration:v126];
          v132 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
          {
            *v223 = 0;
            _os_log_fault_impl(&dword_2304B3000, v132, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v223, 2u);
          }

          v133 = MEMORY[0x277CCA9B8];
          v235[0] = v167;
          *v223 = @"semaphore wait timeout";
          v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v223 forKeys:v235 count:1];
          v135 = [v133 errorWithDomain:v164 code:15 userInfo:v134];

          if (v135)
          {
            v136 = v135;

            v137 = 0;
          }

          else
          {
LABEL_114:
            v137 = 1;
            v135 = v178;
          }

          v111 = v135;
          if ((v137 & 1) == 0)
          {
            objc_storeStrong(v211 + 5, v135);
          }

          objc_autoreleasePoolPop(contexta);
          v117 = v117 + 1;
          v178 = v111;
        }

        while (obja != v117);
        v116 = [v162 countByEnumeratingWithState:&v188 objects:v222 count:16];
      }

      while (v116);
    }

    -[RTTransitMetricManager _sendMetricsWithDevices:counts:primaryDeviceJourneyCount:metricDurationDays:](v180, "_sendMetricsWithDevices:counts:primaryDeviceJourneyCount:metricDurationDays:", *(*&buf[8] + 40), v157, [v155 count], v146);
    (v159[2])(v159, 0);
  }

  _Block_object_dispose(buf, 8);
  v149 = v111;
LABEL_121:

  _Block_object_dispose(&v210, 8);
  _Block_object_dispose(&v216, 8);

LABEL_122:
}

void __72__RTTransitMetricManager__performAnalyticsWitHomeLOIs_workLOIs_handler___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __72__RTTransitMetricManager__performAnalyticsWitHomeLOIs_workLOIs_handler___block_invoke_44(uint64_t a1, void *a2, void *a3)
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

void __72__RTTransitMetricManager__performAnalyticsWitHomeLOIs_workLOIs_handler___block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v28 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 32);
  v29 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v29)
  {
    v27 = *v37;
    *&v5 = 138412546;
    v24 = v5;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v8 = v28;
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v44 count:16];
        if (!v9)
        {
LABEL_35:

          continue;
        }

        v10 = v9;
        v30 = i;
        v31 = 0;
        v11 = *v33;
        do
        {
          v12 = 0;
          do
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v32 + 1) + 8 * v12);
            if ([v7 travelTogether:{v13, v24}] && objc_msgSend(*(a1 + 40), "isOverlappedVisit:locationsOfInterest:", v13, *(a1 + 48)))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138739971;
                  v41 = v13;
                  _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "TransitMetrics, traveled together, visit, %{sensitive}@", buf, 0xCu);
                }

                BYTE4(v31) = 1;
LABEL_23:

                goto LABEL_25;
              }

              BYTE4(v31) = 1;
            }

            else if ([v7 stayAtHomeTogether:v13] && objc_msgSend(*(a1 + 40), "isOverlappedVisit:locationsOfInterest:", v13, *(a1 + 56)))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138739971;
                  v41 = v13;
                  _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "TransitMetrics, stayed at home together, visit, %{sensitive}@", buf, 0xCu);
                }

                LOBYTE(v31) = 1;
                goto LABEL_23;
              }

              LOBYTE(v31) = 1;
            }

            else
            {
              v15 = [v13 entryDate];
              v16 = [v7 homeStayPeriod];
              v17 = [v16 endDate];
              v18 = [v15 isAfterDate:v17];

              if (v18)
              {
                goto LABEL_30;
              }
            }

LABEL_25:
            ++v12;
          }

          while (v10 != v12);
          v19 = [v8 countByEnumeratingWithState:&v32 objects:v44 count:16];
          v10 = v19;
        }

        while (v19);
LABEL_30:

        i = v30;
        if (v31 & 0x100000000) != 0 && (v31)
        {
          v20 = *(a1 + 64);
          v21 = [v25 identifier];
          [v20 addObject:v21];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              v22 = [v25 identifier];
              v23 = [*(a1 + 64) count];
              *buf = v24;
              v41 = v22;
              v42 = 2048;
              v43 = v23;
              _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "TransitMetrics, carrying device, identifier, %@, all devices, %lu", buf, 0x16u);
            }

            goto LABEL_35;
          }
        }
      }

      v29 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v29);
  }
}

void __72__RTTransitMetricManager__performAnalyticsWitHomeLOIs_workLOIs_handler___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) identifier];
      v9 = 138412546;
      v10 = v8;
      v11 = 2048;
      v12 = [v5 count];
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "TransitMetrics, device, %@, visits, %lu", &v9, 0x16u);
    }
  }

  if (!v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_sendMetricsWithDevices:(id)a3 counts:(id)a4 primaryDeviceJourneyCount:(int64_t)a5 metricDurationDays:(int64_t)a6
{
  v103 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v56 = "Invalid parameter not satisfying: devices";
LABEL_31:
    _os_log_error_impl(&dword_2304B3000, log, OS_LOG_TYPE_ERROR, v56, buf, 2u);
    goto LABEL_29;
  }

  if (!v8)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v56 = "Invalid parameter not satisfying: counts";
    goto LABEL_31;
  }

  log = [MEMORY[0x277CBEB18] array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v58 = v7;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v74 objects:v102 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v75;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v75 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v74 + 1) + 8 * i);
        v16 = [v15 identifier];
        v17 = [v9 countForObject:v16];
        if (v17 >= 1)
        {
          v101[0] = v15;
          v100[0] = @"device";
          v100[1] = @"count";
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
          v101[1] = v18;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
          [log addObject:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v74 objects:v102 count:16];
    }

    while (v12);
  }

  v57 = v9;
  v20 = [v9 count];
  v64 = [(RTTransitMetricManager *)self decimateInteger:a6];
  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"count" ascending:0];
  v99 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
  v23 = [log sortedArrayUsingDescriptors:v22];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v23;
  v63 = [obj countByEnumeratingWithState:&v70 objects:v98 count:16];
  if (v63)
  {
    v24 = 0;
    v62 = *v71;
    v25 = v20;
    do
    {
      v26 = 0;
      v27 = v24;
      do
      {
        if (*v71 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v70 + 1) + 8 * v26);
        v29 = [v28 objectForKeyedSubscript:@"device"];
        v30 = [v28 objectForKeyedSubscript:@"count"];
        v31 = [v30 longValue];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v51 = [v29 identifier];
            v52 = [v29 deviceName];
            v53 = [v29 deviceClass];
            v54 = [v29 deviceModel];
            v55 = [v30 longValue];
            *buf = 134219779;
            v83 = a6;
            v84 = 2112;
            v85 = v51;
            v86 = 2112;
            v87 = v52;
            v88 = 2112;
            v89 = v53;
            v90 = 2117;
            v91 = v54;
            v92 = 2048;
            v93 = v27;
            v94 = 2048;
            v95 = v55;
            v96 = 2048;
            v97 = a5;
            _os_log_debug_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEBUG, "TransitMetrics, send metrics, duration, %lu, device, %@, deviceName, %@, deviceClass, %@, deviceModel, %{sensitive}@, idx, %lu, carrying count, %lu, journey count, %lu", buf, 0x52u);
          }
        }

        v33 = v31 / a5;
        v68 = v27 + 1;
        v69 = v30;
        v34 = (v27 + 1) / v25;
        v80[0] = @"LOIType";
        v80[1] = @"ModelType";
        v81[0] = @"Work";
        v81[1] = @"Commute";
        v80[2] = @"DurationBinned";
        v35 = [MEMORY[0x277CCABB0] numberWithInteger:v64];
        v81[2] = v35;
        v80[3] = @"DeviceType";
        v36 = [v29 deviceClass];
        v81[3] = v36;
        v80[4] = @"Priority";
        v37 = MEMORY[0x277CCABB0];
        v67 = v27;
        [(RTTransitMetricManager *)self decimateDoulbe:v34];
        v38 = [v37 numberWithDouble:?];
        v81[4] = v38;
        v80[5] = @"PriorityBinned";
        v39 = [MEMORY[0x277CCABB0] numberWithInteger:(v34 * 10.0)];
        v81[5] = v39;
        v80[6] = @"ParityRate";
        v40 = MEMORY[0x277CCABB0];
        [(RTTransitMetricManager *)self decimateDoulbe:v33];
        [v40 numberWithDouble:?];
        v42 = v41 = v29;
        v81[6] = v42;
        v80[7] = @"TransitsBinned";
        v43 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RTTransitMetricManager decimateInteger:](self, "decimateInteger:", a5)}];
        v81[7] = v43;
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:8];

        AnalyticsSendEvent();
        if (!v67)
        {
          v78[0] = @"LOIType";
          v78[1] = @"ModelType";
          v79[0] = @"Work";
          v79[1] = @"Commute";
          v78[2] = @"DurationBinned";
          v45 = [MEMORY[0x277CCABB0] numberWithInteger:v64];
          v79[2] = v45;
          v78[3] = @"DeviceType";
          v46 = [v41 deviceClass];
          v79[3] = v46;
          v78[4] = @"ParityRate";
          v47 = MEMORY[0x277CCABB0];
          [(RTTransitMetricManager *)self decimateDoulbe:v33];
          v48 = [v47 numberWithDouble:?];
          v79[4] = v48;
          v78[5] = @"TransitsBinned";
          v49 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RTTransitMetricManager decimateInteger:](self, "decimateInteger:", a5)}];
          v79[5] = v49;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:6];

          AnalyticsSendEvent();
        }

        ++v26;
        v24 = v68;
        v27 = v68;
      }

      while (v63 != v26);
      v63 = [obj countByEnumeratingWithState:&v70 objects:v98 count:16];
    }

    while (v63);
  }

  v9 = v57;
  v7 = v58;
LABEL_29:
}

@end