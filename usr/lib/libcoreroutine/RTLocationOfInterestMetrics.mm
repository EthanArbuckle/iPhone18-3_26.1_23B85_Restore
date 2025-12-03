@interface RTLocationOfInterestMetrics
- (BOOL)collectMetricsWithError:(id *)error;
- (RTLocationOfInterestMetrics)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store locationStore:(id)locationStore;
- (id)_countNearbyLocationsOfInterestForLocationOfInterest:(id)interest outError:(id *)error;
- (id)_metricForLocationOfInterest:(id)interest;
- (id)_shuffledIndicesForArraySize:(unint64_t)size;
- (int)_signalEnvironmentTypeForLocationOfInterest:(id)interest;
- (void)_submitMetric:(id)metric;
@end

@implementation RTLocationOfInterestMetrics

- (RTLocationOfInterestMetrics)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store locationStore:(id)locationStore
{
  managerCopy = manager;
  calculatorCopy = calculator;
  storeCopy = store;
  locationStoreCopy = locationStore;
  if (!managerCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: defaultsManager";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_14;
  }

  if (!calculatorCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_13;
  }

  if (!storeCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: learnedLocationStore";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v21.receiver = self;
  v21.super_class = RTLocationOfInterestMetrics;
  v15 = [(RTLocationOfInterestMetrics *)&v21 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_defaultsManager, manager);
    objc_storeStrong(p_isa + 2, calculator);
    objc_storeStrong(p_isa + 3, store);
    objc_storeStrong(p_isa + 4, locationStore);
  }

  self = p_isa;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (BOOL)collectMetricsWithError:(id *)error
{
  aSelector = a2;
  v69[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(aSelector);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, collecting LOI metrics", &buf, 0xCu);
    }
  }

  v6 = objc_alloc(MEMORY[0x277CCA970]);
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-3628800.0];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v47 = [v6 initWithStartDate:v7 endDate:distantFuture];

  v46 = [[RTStoredLocationOfInterestEnumerationOptions alloc] initWithAscendingVisitEntryDate:1 batchSize:5 dateInterval:v47 singleVisit:0];
  array = [MEMORY[0x277CBEB18] array];
  v10 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__16;
  v67 = __Block_byref_object_dispose__16;
  v68 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  learnedLocationStore = self->_learnedLocationStore;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __55__RTLocationOfInterestMetrics_collectMetricsWithError___block_invoke;
  v52[3] = &unk_2788C5DC8;
  p_buf = &buf;
  v12 = v10;
  v53 = v12;
  v57 = v58;
  v13 = array;
  v54 = v13;
  selfCopy = self;
  [(RTLearnedLocationStore *)learnedLocationStore enumerateStoredLocationsOfInterestWithOptions:v46 enumerationBlock:v52];
  v14 = v12;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v14, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_12];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
    firstObject = [v23 firstObject];

    [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *v61 = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v61, 2u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v69[0] = *MEMORY[0x277CCA450];
    *v61 = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v69 count:1];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

    if (v28)
    {
      v29 = v28;

      v30 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = 1;
LABEL_12:

  v31 = v28;
  if ((v30 & 1) == 0)
  {
    objc_storeStrong((*(&buf + 1) + 40), v28);
  }

  v32 = *(*(&buf + 1) + 40);
  if (v32)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(aSelector);
      v43 = *(*(&buf + 1) + 40);
      *v61 = 138412546;
      *&v61[4] = v42;
      v62 = 2112;
      v63 = v43;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, error, %@", v61, 0x16u);
    }

    if (error)
    {
      *error = *(*(&buf + 1) + 40);
    }
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v34 = v13;
    v35 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v35)
    {
      v36 = *v49;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v34);
          }

          [(RTLocationOfInterestMetrics *)self _submitMetric:*(*(&v48 + 1) + 8 * i), aSelector];
        }

        v35 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v35);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = NSStringFromSelector(aSelector);
        v40 = [v34 count];
        *v61 = 138412546;
        *&v61[4] = v39;
        v62 = 2048;
        v63 = v40;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, submitted %lu LOI metrics", v61, 0x16u);
      }
    }

    [(RTDefaultsManager *)self->_defaultsManager setObject:MEMORY[0x277CBEC38] forKey:@"RTDefaultsLearnedLocationEngineLocationOfInterestMetricsSubmitted", aSelector];
  }

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(&buf, 8);

  return v32 == 0;
}

void __55__RTLocationOfInterestMetrics_collectMetricsWithError___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (!*(*(*(a1 + 56) + 8) + 40) && [v7 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10;
    v12 = *v19;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        ++*(*(*(a1 + 64) + 8) + 24);
        if ([*(a1 + 40) count] > 9)
        {
          v16 = RTCommonRandomInt();
          if (v16 > 9)
          {
            goto LABEL_16;
          }

          v17 = v16;
          v15 = [*(a1 + 48) _metricForLocationOfInterest:v14];
          if (v15)
          {
            [*(a1 + 40) replaceObjectAtIndex:v17 withObject:v15];
          }
        }

        else
        {
          v15 = [*(a1 + 48) _metricForLocationOfInterest:v14];
          if (v15)
          {
            [*(a1 + 40) addObject:v15];
          }
        }

LABEL_16:
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v11)
      {
LABEL_18:

        goto LABEL_19;
      }
    }
  }

  *a4 = 1;
  dispatch_semaphore_signal(*(a1 + 32));
LABEL_19:
}

- (int)_signalEnvironmentTypeForLocationOfInterest:(id)interest
{
  v102 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  if (!interestCopy)
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *v84 = 0;
      _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationOfInterest", v84, 2u);
    }

    v46 = 0;
    goto LABEL_37;
  }

  oslog = [MEMORY[0x277CBEAA8] distantPast];
  v59 = [MEMORY[0x277CBEAA8] now];
  v65 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:oslog endDate:v59];
  v3 = objc_alloc(MEMORY[0x277CE41F8]);
  location = [interestCopy location];
  v4Location = [location location];
  [v4Location latitude];
  v7 = v6;
  location2 = [interestCopy location];
  v8Location = [location2 location];
  [v8Location longitude];
  v11 = CLLocationCoordinate2DMake(v7, v10);
  location3 = [interestCopy location];
  v12Location = [location3 location];
  date = [v12Location date];
  v64 = [v3 initWithCoordinate:date altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:0.0 timestamp:{250.0, -1.0}];

  v61 = objc_opt_new();
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x2020000000;
  v94[3] = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  *v84 = 0;
  v85 = v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__16;
  v88 = __Block_byref_object_dispose__16;
  v89 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__16;
  v82 = __Block_byref_object_dispose__16;
  v83 = 0;
  v57 = *MEMORY[0x277D01448];
  v58 = *MEMORY[0x277CCA450];
  do
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v65 horizontalAccuracy:200 batchSize:v64 boundingBoxLocation:200.0];
    v17 = dispatch_semaphore_create(0);
    locationStore = self->_locationStore;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __75__RTLocationOfInterestMetrics__signalEnvironmentTypeForLocationOfInterest___block_invoke;
    v71[3] = &unk_2788C5DF0;
    v74 = &v90;
    v62 = v61;
    v72 = v62;
    v75 = v94;
    v76 = v84;
    v77 = &v78;
    v19 = v17;
    v73 = v19;
    [(RTLocationStore *)locationStore fetchStoredLocationsWithOptions:v16 handler:v71];
    v20 = v19;
    v21 = [MEMORY[0x277CBEAA8] now];
    v22 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v20, v22))
    {
      v23 = [MEMORY[0x277CBEAA8] now];
      [v23 timeIntervalSinceDate:v21];
      v25 = v24;
      v26 = objc_opt_new();
      v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_12];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v29 = [callStackSymbols filteredArrayUsingPredicate:v27];
      firstObject = [v29 firstObject];

      [v26 submitToCoreAnalytics:firstObject type:1 duration:v25];
      v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v31, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v32 = MEMORY[0x277CCA9B8];
      *v95 = v58;
      *buf = @"semaphore wait timeout";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v95 count:1];
      v34 = [v32 errorWithDomain:v57 code:15 userInfo:v33];

      if (v34)
      {
        v35 = v34;

        v36 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v34 = 0;
    }

    v36 = 1;
LABEL_10:

    v37 = v34;
    if ((v36 & 1) == 0)
    {
      objc_storeStrong(v79 + 5, v34);
    }

    if (v79[5])
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v42 = NSStringFromSelector(a2);
        v43 = v79[5];
        *buf = 138412546;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = v43;
        _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v39 = 1;
    }

    else
    {
      v40 = [*(v85 + 5) dateByAddingTimeInterval:1.0];

      endDate = [v65 endDate];

      if (v91[3] && ![endDate isBeforeDate:v40])
      {
        v39 = 0;
        v38 = v65;
        v65 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v40 endDate:endDate];
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v39 = 6;
          v59 = endDate;
          oslog = v40;
          goto LABEL_26;
        }

        v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v44 = NSStringFromSelector(a2);
          *buf = 138412290;
          *&buf[4] = v44;
          _os_log_debug_impl(&dword_2304B3000, v38, OS_LOG_TYPE_DEBUG, "%@, no more locations to fetch.", buf, 0xCu);
        }

        v39 = 6;
      }

      v59 = endDate;
      oslog = v40;
    }

LABEL_26:
    objc_autoreleasePoolPop(v15);
  }

  while (!v39);
  if (v39 != 6)
  {
    goto LABEL_32;
  }

  if (v79[5])
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v53 = NSStringFromSelector(a2);
      v54 = v79[5];
      *buf = 138412546;
      *&buf[4] = v53;
      *&buf[12] = 2112;
      *&buf[14] = v54;
      _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

LABEL_32:
    v46 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v101 = 0;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __75__RTLocationOfInterestMetrics__signalEnvironmentTypeForLocationOfInterest___block_invoke_27;
    v66[3] = &unk_2788C5E18;
    v70 = a2;
    v48 = interestCopy;
    v67 = v48;
    v68 = v94;
    v69 = buf;
    [v62 enumerateKeysAndObjectsUsingBlock:v66];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = NSStringFromSelector(a2);
        identifier = [v48 identifier];
        v52 = *(*&buf[8] + 24);
        *v95 = 138412802;
        *&v95[4] = v50;
        v96 = 2112;
        v97 = identifier;
        v98 = 2048;
        v99 = v52;
        _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, LOI identifier, %@, selected signal environment type, %lu", v95, 0x20u);
      }
    }

    v46 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(v94, 8);

LABEL_37:
  return v46;
}

void __75__RTLocationOfInterestMetrics__signalEnvironmentTypeForLocationOfInterest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v33 = a3;
  *(*(*(a1 + 48) + 8) + 24) = [v5 count];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v35 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "signalEnvironmentType")}];
        v12 = [v10 objectForKey:v11];

        v13 = MEMORY[0x277CCABB0];
        if (v12)
        {
          v14 = *(a1 + 32);
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "signalEnvironmentType")}];
          v16 = [v14 objectForKeyedSubscript:v15];
          v17 = [v13 numberWithInt:{objc_msgSend(v16, "unsignedIntValue") + 1}];
          v18 = *(a1 + 32);
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "signalEnvironmentType")}];
          [v18 setObject:v17 forKeyedSubscript:v19];
        }

        else
        {
          v15 = [MEMORY[0x277CCABB0] numberWithInt:1];
          v20 = *(a1 + 32);
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "signalEnvironmentType")}];
          [v20 setObject:v15 forKeyedSubscript:v16];
        }

        v21 = *(*(*(a1 + 56) + 8) + 24);
        v22 = *(a1 + 32);
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "signalEnvironmentType")}];
        v24 = [v22 objectForKeyedSubscript:v23];
        v25 = [v24 unsignedIntValue];

        v26 = v25;
        if (v21 > v25)
        {
          v26 = v21;
        }

        *(*(*(a1 + 56) + 8) + 24) = v26;
        v27 = [v9 timestamp];
        v28 = *(*(a1 + 64) + 8);
        v29 = *(v28 + 40);
        *(v28 + 40) = v27;
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);
  }

  v30 = *(*(a1 + 72) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v33;
  v32 = v33;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __75__RTLocationOfInterestMetrics__signalEnvironmentTypeForLocationOfInterest___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = [*(a1 + 32) identifier];
      v10 = 138413058;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2048;
      v15 = [v5 unsignedIntValue];
      v16 = 2048;
      v17 = [v6 unsignedIntValue];
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, locationOfInterest identifier, %@, signal environment type, %lu, count, %lu", &v10, 0x2Au);
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == [v6 unsignedIntValue])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v5 unsignedIntValue];
  }
}

- (id)_countNearbyLocationsOfInterestForLocationOfInterest:(id)interest outError:(id *)error
{
  aSelector = a2;
  v96[1] = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  v63 = [RTMetric binsFromStart:&unk_2845A18F8 toEnd:&unk_2845A1908 gap:&unk_2845A1918];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v63, "count")}];
  if ([v63 count])
  {
    v5 = 0;
    do
    {
      [v4 setObject:&unk_28459C738 atIndexedSubscript:{v5++, aSelector}];
    }

    while (v5 < [v63 count]);
  }

  location = [interestCopy location];
  v6Location = [location location];

  if (!v6Location)
  {
    v29 = MEMORY[0x277CCA9B8];
    v94 = *MEMORY[0x277CCA450];
    v95 = @"requires a LOI with non-nil location";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    v61 = [v29 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v30];

    if (error)
    {
      v31 = v61;
      v32 = 0;
      *error = v61;
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_39;
  }

  v8 = dispatch_semaphore_create(0);
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__16;
  v90 = __Block_byref_object_dispose__16;
  v91 = objc_opt_new();
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__16;
  v84 = __Block_byref_object_dispose__16;
  v85 = 0;
  learnedLocationStore = self->_learnedLocationStore;
  location2 = [interestCopy location];
  v10Location = [location2 location];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __93__RTLocationOfInterestMetrics__countNearbyLocationsOfInterestForLocationOfInterest_outError___block_invoke;
  v76[3] = &unk_2788C4490;
  v78 = &v80;
  v79 = &v86;
  v12 = v8;
  v77 = v12;
  [(RTLearnedLocationStore *)learnedLocationStore fetchLocationsOfInterestWithinDistance:v10Location location:v76 handler:1000.0];

  dsema = v12;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(dsema, v14))
  {
    v26 = 0;
LABEL_13:
    v28 = 1;
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CBEAA8] now];
  [v15 timeIntervalSinceDate:v13];
  v17 = v16;
  v18 = objc_opt_new();
  v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_12];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
  firstObject = [v21 firstObject];

  [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v24 = MEMORY[0x277CCA9B8];
  v96[0] = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v96 count:1];
  v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = v26;

  v28 = 0;
LABEL_14:

  v61 = v26;
  if ((v28 & 1) == 0)
  {
    objc_storeStrong(v81 + 5, v26);
  }

  v33 = v81[5];
  if (v33)
  {
    if (error)
    {
      v32 = 0;
      *error = v33;
    }

    else
    {
LABEL_37:
      v32 = 0;
    }
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obja = v87[5];
    v34 = [obja countByEnumeratingWithState:&v72 objects:v93 count:16];
    if (v34)
    {
      v35 = *v73;
      while (2)
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v73 != v35)
          {
            objc_enumerationMutation(obja);
          }

          v37 = *(*(&v72 + 1) + 8 * i);
          identifier = [v37 identifier];
          identifier2 = [interestCopy identifier];
          v40 = identifier == identifier2;

          if (!v40)
          {
            distanceCalculator = self->_distanceCalculator;
            location3 = [interestCopy location];
            v42Location = [location3 location];
            location4 = [v37 location];
            v44Location = [location4 location];
            v71 = 0;
            [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v42Location toLocation:v44Location error:&v71];
            v47 = v46;
            v48 = v71;

            if (!v48 && v47 > 0.0)
            {
              v49 = MEMORY[0x277CCABB0];
              v50 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
              v51 = [RTMetric binForNumber:v50 bins:v63];
              v52 = [v49 numberWithUnsignedInt:{objc_msgSend(v51, "unsignedIntValue") - 1}];

              if (([v52 intValue] & 0x80000000) != 0)
              {
                v56 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
                {
                  v58 = NSStringFromSelector(aSelectora);
                  *buf = 138412290;
                  *&buf[4] = v58;
                  _os_log_fault_impl(&dword_2304B3000, v56, OS_LOG_TYPE_FAULT, "%@, negative bin index!", buf, 0xCu);
                }

                goto LABEL_37;
              }

              v53 = MEMORY[0x277CCABB0];
              v54 = [v4 objectAtIndexedSubscript:{objc_msgSend(v52, "unsignedIntValue")}];
              v55 = [v53 numberWithUnsignedInt:{objc_msgSend(v54, "unsignedIntValue") + 1}];
              [v4 setObject:v55 atIndexedSubscript:{objc_msgSend(v52, "unsignedIntValue")}];
            }
          }
        }

        v34 = [obja countByEnumeratingWithState:&v72 objects:v93 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __93__RTLocationOfInterestMetrics__countNearbyLocationsOfInterestForLocationOfInterest_outError___block_invoke_40;
    v68[3] = &unk_2788C5E40;
    v70 = aSelectora;
    v69 = v63;
    [v4 enumerateObjectsUsingBlock:v68];
    v32 = v4;
  }

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);

LABEL_39:

  return v32;
}

void __93__RTLocationOfInterestMetrics__countNearbyLocationsOfInterestForLocationOfInterest_outError___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v7 = obj;
  v6 = a2;
  [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v6];

  dispatch_semaphore_signal(*(a1 + 32));
}

void __93__RTLocationOfInterestMetrics__countNearbyLocationsOfInterestForLocationOfInterest_outError___block_invoke_40(uint64_t a1, void *a2, unint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(*(a1 + 40));
      v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      [v8 doubleValue];
      v10 = v9;
      v11 = [*(a1 + 32) count] - 1;
      if (v11 <= a3)
      {
        v13 = 0x408F400000000000;
      }

      else
      {
        a1 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
        [a1 doubleValue];
        v13 = v12;
      }

      v14 = 138413314;
      v15 = v7;
      v16 = 2048;
      v17 = a3;
      v18 = 2048;
      v19 = v10;
      v20 = 2048;
      v21 = v13;
      v22 = 2048;
      v23 = [v5 unsignedIntValue];
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, bin idx, %lu, min distance, %.2f, max distance, %.2f, nearby LOI count, %lu", &v14, 0x34u);
      if (v11 > a3)
      {
      }
    }
  }
}

- (id)_metricForLocationOfInterest:(id)interest
{
  v122 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  v106 = interestCopy;
  if (interestCopy)
  {
    v6 = interestCopy;
    v107 = objc_opt_new();
    location = [v6 location];
    oslog = [location location];

    v8 = MEMORY[0x277CCABB0];
    [oslog horizontalUncertainty];
    v10 = [v8 numberWithInt:{fmin(v9, 200.0)}];
    [v107 setObject:v10 forKeyedSubscript:@"horizontalUncertainty"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject sourceAccuracy](oslog, "sourceAccuracy")}];
    [v107 setObject:v11 forKeyedSubscript:@"sourceAccuracy"];

    v12 = MEMORY[0x277CCABB0];
    place = [v106 place];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(place, "type")}];
    [v107 setObject:v14 forKeyedSubscript:@"placeType"];

    v15 = MEMORY[0x277CCABB0];
    place2 = [v106 place];
    mapItem = [place2 mapItem];
    extendedAttributes = [mapItem extendedAttributes];
    v19 = [v15 numberWithBool:{objc_msgSend(extendedAttributes, "isMe")}];
    [v107 setObject:v19 forKeyedSubscript:@"isMeCardAddress"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[RTLocationOfInterestMetrics _signalEnvironmentTypeForLocationOfInterest:](self, "_signalEnvironmentTypeForLocationOfInterest:", v106)}];
    [v107 setObject:v20 forKeyedSubscript:@"signalEnvironment"];

    distanceCalculator = self->_distanceCalculator;
    place3 = [v106 place];
    mapItem2 = [place3 mapItem];
    location2 = [mapItem2 location];
    v115 = 0;
    [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:location2 toLocation:oslog error:&v115];
    v26 = v25;
    v102 = v115;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = NSStringFromSelector(a2);
        place4 = [v106 place];
        mapItem3 = [place4 mapItem];
        location3 = [mapItem3 location];
        *buf = 138413315;
        *&buf[4] = v28;
        *&buf[12] = 2117;
        *&buf[14] = oslog;
        *&buf[22] = 2117;
        v117 = location3;
        v118 = 2048;
        v119 = v26;
        v120 = 2112;
        v121 = v102;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, LOI centroid, %{sensitive}@, mapItem centroid, %{sensitive}@, distance, %f, error, %@", buf, 0x34u);
      }
    }

    if (!v102)
    {
      v32 = [MEMORY[0x277CCABB0] numberWithInt:{fmin(v26, 200.0)}];
      [v107 setObject:v32 forKeyedSubscript:@"distanceFromMapItem"];

      [oslog horizontalUncertainty];
      if (v33 != 0.0)
      {
        v34 = MEMORY[0x277CCABB0];
        [oslog horizontalUncertainty];
        v36 = [v34 numberWithDouble:v26 / v35];
        [v107 setObject:v36 forKeyedSubscript:@"ratioBetweenDistanceAndHorizontalUncertainty"];
      }
    }

    place5 = [v106 place];
    mapItem4 = [place5 mapItem];
    location4 = [mapItem4 location];
    v40 = [location4 referenceFrame] == 2;

    if (!v40)
    {
      *buf = 0;
      v109 = 0;
      v114 = 0;
      [oslog latitude];
      [oslog longitude];
      place6 = [v106 place];
      mapItem5 = [place6 mapItem];
      location5 = [mapItem5 location];
      [location5 latitude];
      place7 = [v106 place];
      mapItem6 = [place7 mapItem];
      location6 = [mapItem6 location];
      [location6 longitude];
      v47 = RTCommonConvertGeodeticToLocalFrame();

      if (v47)
      {
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.1f, %.1f", v109, *buf];
        [v107 setObject:v48 forKeyedSubscript:@"distanceFromMapItemIn2D"];
      }
    }

    v113 = 0;
    v104 = [(RTLocationOfInterestMetrics *)self _countNearbyLocationsOfInterestForLocationOfInterest:v106 outError:&v113];
    v101 = v113;
    if ([v104 count])
    {
      v49 = 0;
      do
      {
        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"nearbyLOICountInDistanceBucket", v49];
        v51 = [v104 objectAtIndex:v49];
        [v107 setObject:v51 forKeyedSubscript:v50];

        ++v49;
      }

      while (v49 < [v104 count]);
    }

    [v107 setObject:&unk_2845A1928 forKeyedSubscript:@"intervalBetweenFirstVisitAndLastVisit"];
    [v107 setObject:&unk_28459C738 forKeyedSubscript:@"visitCount"];
    [v107 setObject:&unk_28459C738 forKeyedSubscript:@"highAccuracyVisitCount"];
    [v107 setObject:&unk_28459C738 forKeyedSubscript:@"lowAccuracyVisitCount"];
    visits = [v106 visits];
    v53 = [visits count] == 0;

    if (!v53)
    {
      visits2 = [v106 visits];
      v55 = [visits2 count] > 1;

      if (v55)
      {
        visits3 = [v106 visits];
        lastObject = [visits3 lastObject];
        exitDate = [lastObject exitDate];
        visits4 = [v106 visits];
        firstObject = [visits4 firstObject];
        entryDate = [firstObject entryDate];
        [exitDate timeIntervalSinceDate:entryDate];
        v63 = v62;

        v64 = [MEMORY[0x277CCABB0] numberWithInt:(v63 / 86400.0)];
        [v107 setObject:v64 forKeyedSubscript:@"intervalBetweenFirstVisitAndLastVisit"];
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v117 = 0;
      v109 = 0;
      v110 = &v109;
      v111 = 0x2020000000;
      v112 = 0;
      visits5 = [v106 visits];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __60__RTLocationOfInterestMetrics__metricForLocationOfInterest___block_invoke;
      v108[3] = &unk_2788C5E68;
      v108[4] = buf;
      v108[5] = &v109;
      [visits5 enumerateObjectsUsingBlock:v108];

      v66 = MEMORY[0x277CCABB0];
      visits6 = [v106 visits];
      v68 = [v66 numberWithUnsignedInteger:{objc_msgSend(visits6, "count")}];
      [v107 setObject:v68 forKeyedSubscript:@"visitCount"];

      v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*&buf[8] + 24)];
      [v107 setObject:v69 forKeyedSubscript:@"highAccuracyVisitCount"];

      v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v110[3]];
      [v107 setObject:v70 forKeyedSubscript:@"lowAccuracyVisitCount"];

      visits7 = [v106 visits];
      v103 = -[RTLocationOfInterestMetrics _shuffledIndicesForArraySize:](self, "_shuffledIndicesForArraySize:", [visits7 count]);

      for (i = 0; ; ++i)
      {
        visits8 = [v106 visits];
        v74 = [visits8 count];

        v75 = 20;
        if (v74 < 0x14)
        {
          v75 = v74;
        }

        if (i >= v75)
        {
          break;
        }

        v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"visit", i];
        v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"dwellIntervalVisit", i];
        visits9 = [v106 visits];
        v79 = [v103 objectAtIndexedSubscript:i];
        v80 = [visits9 objectAtIndex:{objc_msgSend(v79, "unsignedIntValue")}];

        v81 = MEMORY[0x277CCABB0];
        exitDate2 = [v80 exitDate];
        entryDate2 = [v80 entryDate];
        [exitDate2 timeIntervalSinceDate:entryDate2];
        v85 = [v81 numberWithInt:(v84 / 900.0)];
        [v107 setObject:v85 forKeyedSubscript:v77];

        v114 = 0;
        [oslog latitude];
        [oslog longitude];
        location7 = [v80 location];
        v86Location = [location7 location];
        [v86Location latitude];
        location8 = [v80 location];
        v88Location = [location8 location];
        [v88Location longitude];
        v90 = RTCommonConvertGeodeticToLocalFrame();

        if (v90)
        {
          v91 = MEMORY[0x277CCACA8];
          v92 = v114;
          location9 = [v80 location];
          v93Location = [location9 location];
          [v93Location horizontalUncertainty];
          v96 = v95;
          location10 = [v80 location];
          v97Location = [location10 location];
          v99 = [v91 stringWithFormat:@"%.1f, %.1f, %.1f, %lu", 0, v92, v96, objc_msgSend(v97Location, "sourceAccuracy")];

          [v107 setObject:v99 forKeyedSubscript:v76];
        }
      }

      _Block_object_dispose(&v109, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationOfInterest", buf, 2u);
    }

    v107 = 0;
  }

  return v107;
}

void __60__RTLocationOfInterestMetrics__metricForLocationOfInterest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 location];
  v4 = [v3 location];
  v5 = [v4 sourceAccuracy];

  v6 = 40;
  if (v5 == 2)
  {
    v6 = 32;
  }

  ++*(*(*(a1 + v6) + 8) + 24);
}

- (id)_shuffledIndicesForArraySize:(unint64_t)size
{
  if (size)
  {
    sizeCopy = size;
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    for (i = 0; i != sizeCopy; ++i)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      [v4 addObject:v6];
    }

    v7 = 0;
    do
    {
      [v4 exchangeObjectAtIndex:v7 withObjectAtIndex:v7 + RTCommonRandomInt()];
      ++v7;
      --sizeCopy;
    }

    while (sizeCopy);
    v8 = [v4 copy];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: arraySize > 0", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)_submitMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [v4 initWithCString:RTAnalyticsEventLocationOfInterestMetrics encoding:1];
    log_analytics_submission(v5, metricCopy);
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v5];
    AnalyticsSendEvent();
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: metric", buf, 2u);
    }
  }
}

@end