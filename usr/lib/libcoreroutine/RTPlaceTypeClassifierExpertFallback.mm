@interface RTPlaceTypeClassifierExpertFallback
- (RTPlaceTypeClassifierExpertFallback)initWithDistanceCalculator:(id)calculator learnedLocationStore:(id)store locationManager:(id)manager mapServiceManager:(id)serviceManager visitManager:(id)visitManager placeTypeClassifierMetricsCalculator:(id)metricsCalculator;
- (id)classifyWithError:(id *)error;
- (id)updatePlace:(id)place;
@end

@implementation RTPlaceTypeClassifierExpertFallback

- (RTPlaceTypeClassifierExpertFallback)initWithDistanceCalculator:(id)calculator learnedLocationStore:(id)store locationManager:(id)manager mapServiceManager:(id)serviceManager visitManager:(id)visitManager placeTypeClassifierMetricsCalculator:(id)metricsCalculator
{
  calculatorCopy = calculator;
  storeCopy = store;
  managerCopy = manager;
  serviceManagerCopy = serviceManager;
  visitManagerCopy = visitManager;
  metricsCalculatorCopy = metricsCalculator;
  v25 = metricsCalculatorCopy;
  if (!calculatorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_22:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_23;
  }

  if (!storeCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_22;
  }

  if (!managerCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_22;
  }

  if (!serviceManagerCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_22;
  }

  if (!visitManagerCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: visitManager";
    goto LABEL_22;
  }

  if (!metricsCalculatorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: placeTypeClassifierMetricsCalculator";
      goto LABEL_22;
    }

LABEL_23:

    selfCopy = 0;
    goto LABEL_24;
  }

  v28.receiver = self;
  v28.super_class = RTPlaceTypeClassifierExpertFallback;
  v19 = [(RTPlaceTypeClassifierExpertFallback *)&v28 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_distanceCalculator, calculator);
    objc_storeStrong(p_isa + 2, store);
    objc_storeStrong(p_isa + 3, manager);
    objc_storeStrong(p_isa + 4, serviceManager);
    objc_storeStrong(p_isa + 5, visitManager);
    objc_storeStrong(p_isa + 6, metricsCalculator);
  }

  self = p_isa;
  selfCopy = self;
LABEL_24:

  return selfCopy;
}

- (id)classifyWithError:(id *)error
{
  v171[1] = *MEMORY[0x277D85DE8];
  v146 = 0;
  v147 = &v146;
  v148 = 0x3032000000;
  v149 = __Block_byref_object_copy__81;
  v150 = __Block_byref_object_dispose__81;
  v151 = 0;
  v140 = 0;
  v141 = &v140;
  v142 = 0x3032000000;
  v143 = __Block_byref_object_copy__81;
  v144 = __Block_byref_object_dispose__81;
  v145 = 0;
  v5 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTPlaceTypeClassifierExpertFallback *)self learnedLocationStore];
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke;
  v136[3] = &unk_2788C4B58;
  v138 = &v146;
  v139 = &v140;
  v7 = v5;
  v137 = v7;
  [learnedLocationStore fetchLocationOfInterestVisitedLastWithHandler:v136];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_64];
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
    v165 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v165 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;

      v24 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = 1;
LABEL_8:

  v25 = v22;
  if ((v24 & 1) == 0)
  {
    objc_storeStrong(v141 + 5, v22);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(a2);
      v30 = v147[5];
      v31 = v141[5];
      *buf = 138413058;
      *&buf[4] = v28;
      v155 = 2112;
      v156 = v29;
      v157 = 2112;
      v158 = v30;
      v159 = 2112;
      v160 = *&v31;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, locationsOfInterestVisitedLast, %@, error, %@", buf, 0x2Au);
    }
  }

  v32 = v141[5];
  if (!v32 && !v147[5])
  {
    v34 = dispatch_group_create();
    v165 = 0;
    v166 = &v165;
    v167 = 0x3032000000;
    v168 = __Block_byref_object_copy__81;
    v169 = __Block_byref_object_dispose__81;
    v170 = 0;
    v130 = 0;
    v131 = &v130;
    v132 = 0x3032000000;
    v133 = __Block_byref_object_copy__81;
    v134 = __Block_byref_object_dispose__81;
    v135 = 0;
    v124 = 0;
    v125 = &v124;
    v126 = 0x3032000000;
    v127 = __Block_byref_object_copy__81;
    v128 = __Block_byref_object_dispose__81;
    v129 = 0;
    v118 = 0;
    v119 = &v118;
    v120 = 0x3032000000;
    v121 = __Block_byref_object_copy__81;
    v122 = __Block_byref_object_dispose__81;
    v123 = 0;
    dispatch_group_enter(v34);
    locationManager = [(RTPlaceTypeClassifierExpertFallback *)self locationManager];
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke_3;
    v114[3] = &unk_2788C8390;
    v116 = &v124;
    v117 = &v165;
    v36 = v34;
    v115 = v36;
    [locationManager fetchCurrentLocationWithHandler:v114];

    dispatch_group_enter(v36);
    visitManager = [(RTPlaceTypeClassifierExpertFallback *)self visitManager];
    v38 = objc_alloc(MEMORY[0x277D01340]);
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
    v40 = [MEMORY[0x277CBEB98] setWithObject:&unk_28459E340];
    v41 = [v38 initWithAscending:0 confidence:v39 dateInterval:0 labelVisit:0 limit:&unk_28459E328 sources:v40];
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke_12;
    v110[3] = &unk_2788C4490;
    v112 = &v118;
    v113 = &v130;
    v42 = v36;
    v111 = v42;
    [visitManager fetchStoredVisitsWithOptions:v41 handler:v110];

    dispatch_group_wait(v42, 0xFFFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = NSStringFromSelector(a2);
        v47 = v166[5];
        v48 = v125[5];
        v49 = v131[5];
        v50 = v119[5];
        *buf = 138413571;
        *&buf[4] = v45;
        v155 = 2112;
        v156 = v46;
        v157 = 2117;
        v158 = v47;
        v159 = 2112;
        v160 = v48;
        v161 = 2117;
        v162 = v49;
        v163 = 2112;
        v164 = v50;
        _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, %@, fetched current location, %{sensitive}@, fetchLocationError, %@, fetched current visit, %{sensitive}@, fetchVisitError, %@", buf, 0x3Eu);
      }
    }

    v51 = *(v125 + 5);
    if (v51 || (v52 = v166[5]) == 0)
    {
      if (error)
      {
        v33 = 0;
        *error = v51;
LABEL_60:

        _Block_object_dispose(&v118, 8);
        _Block_object_dispose(&v124, 8);

        _Block_object_dispose(&v130, 8);
        _Block_object_dispose(&v165, 8);

        goto LABEL_61;
      }
    }

    else
    {
      v53 = v52;
      if (v119[5])
      {
        goto LABEL_28;
      }

      location = [v131[5] location];
      if (!location)
      {
        goto LABEL_28;
      }

      exit = [v131[5] exit];
      v80 = exit == 0;

      if (!v80)
      {
        goto LABEL_28;
      }

      distanceCalculator = [(RTPlaceTypeClassifierExpertFallback *)self distanceCalculator];
      v82 = v166[5];
      location2 = [v131[5] location];
      v109 = 0;
      [distanceCalculator distanceFromLocation:v82 toLocation:location2 error:&v109];
      v85 = v84;
      v86 = v109;

      if (v85 < 250.0)
      {
        location3 = [v131[5] location];

        v53 = location3;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v88 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v89 = objc_opt_class();
          v90 = NSStringFromClass(v89);
          v91 = NSStringFromSelector(a2);
          *buf = 138413315;
          *&buf[4] = v90;
          v155 = 2112;
          v99 = v91;
          v156 = v91;
          v157 = 2117;
          v158 = v53;
          v159 = 2048;
          v160 = v85;
          v161 = 2112;
          v162 = v86;
          _os_log_impl(&dword_2304B3000, v88, OS_LOG_TYPE_INFO, "%@, %@, selected current location, %{sensitive}@, distance, %.1f, error, %@", buf, 0x34u);
        }
      }

      if (v53)
      {
LABEL_28:
        learnedLocationStore2 = [(RTPlaceTypeClassifierExpertFallback *)self learnedLocationStore];
        predicateForObjectsFromCurrentDevice = [learnedLocationStore2 predicateForObjectsFromCurrentDevice];

        v55 = dispatch_semaphore_create(0);
        v103 = 0;
        v104 = &v103;
        v105 = 0x3032000000;
        v106 = __Block_byref_object_copy__81;
        v107 = __Block_byref_object_dispose__81;
        v108 = 0;
        learnedLocationStore3 = [(RTPlaceTypeClassifierExpertFallback *)self learnedLocationStore];
        v101 = v55;
        v102 = COERCE_DOUBLE(v53);
        [learnedLocationStore3 fetchPlacesWithinDistance:250.0 location:? predicate:? handler:?];

        v8 = v101;
        v97 = [MEMORY[0x277CBEAA8] now];
        v57 = dispatch_time(0, 3600000000000);
        if (!dispatch_semaphore_wait(v8, v57))
        {
          goto LABEL_33;
        }

        v96 = [MEMORY[0x277CBEAA8] now];
        [v96 timeIntervalSinceDate:v97];
        v59 = v58;
        v95 = objc_opt_new();
        v60 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_64];
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v62 = [callStackSymbols2 filteredArrayUsingPredicate:v60];
        firstObject2 = [v62 firstObject];

        [v95 submitToCoreAnalytics:firstObject2 type:1 duration:v59];
        v64 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v64, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v65 = MEMORY[0x277CCA9B8];
        v171[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v171 count:1];
        v67 = [v65 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v66];

        if (v67)
        {
          v68 = v67;

          v69 = 0;
        }

        else
        {
LABEL_33:
          v69 = 1;
          v67 = v25;
        }

        v70 = v67;
        if ((v69 & 1) == 0)
        {
          objc_storeStrong(v141 + 5, v67);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v71 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            v72 = objc_opt_class();
            v73 = NSStringFromClass(v72);
            v74 = NSStringFromSelector(a2);
            v75 = v104[5];
            v76 = v141[5];
            *buf = 138413315;
            *&buf[4] = v73;
            v155 = 2112;
            v156 = v74;
            v157 = 2117;
            v158 = v75;
            v159 = 2117;
            v160 = v102;
            v161 = 2112;
            v162 = v76;
            _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@, %@, current place, %{sensitive}@, current location, %{sensitive}@, error, %@", buf, 0x34u);
          }
        }

        v77 = v141[5];
        if (v77 || !v104[5])
        {
          v33 = 0;
          if (error)
          {
            *error = v77;
          }
        }

        else
        {
          placeTypeClassifierMetricsCalculator = [(RTPlaceTypeClassifierExpertFallback *)self placeTypeClassifierMetricsCalculator];
          v153 = v104[5];
          v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:1];
          [placeTypeClassifierMetricsCalculator storeMetricsData:v93 source:18];

          if (error)
          {
            *error = 0;
          }

          v152 = v104[5];
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v152 count:1];
        }

        _Block_object_dispose(&v103, 8);
        v25 = v70;
        goto LABEL_60;
      }

      if (error)
      {
        v33 = 0;
        *error = 0;
        goto LABEL_60;
      }
    }

    v33 = 0;
    goto LABEL_60;
  }

  v33 = 0;
  if (error)
  {
    *error = v32;
  }

LABEL_61:

  _Block_object_dispose(&v140, 8);
  _Block_object_dispose(&v146, 8);

  return v33;
}

void __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v9)
  {
    v6 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v9];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke_12(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v10 = obj;
  v6 = a2;
  v7 = [v6 firstObject];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_group_leave(*(a1 + 32));
}

void __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          v13 = [v12 mapItem];

          if (v13)
          {
            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v12);
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v39 objects:v53 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(*(a1 + 72));
        v18 = *(*(*(a1 + 64) + 8) + 40);
        v19 = *(a1 + 48);
        *buf = 138413315;
        v44 = v16;
        v45 = 2112;
        v46 = v17;
        v47 = 2117;
        v48 = v18;
        v49 = 2117;
        v50 = v19;
        v51 = 2112;
        v52 = v6;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, fetched place, %{sensitive}@, current location, %{sensitive}@, error, %@", buf, 0x34u);
      }
    }

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v23 = objc_alloc(MEMORY[0x277D011B0]);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v23 initWithUseBackgroundTraits:1 analyticsIdentifier:v25 clientIdentifier:0];

      v27 = [*(a1 + 40) mapServiceManager];
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke_16;
      v34[3] = &unk_2788CB4B8;
      v30 = *(a1 + 32);
      v38 = *(a1 + 72);
      *&v31 = v30;
      *(&v31 + 1) = *(a1 + 40);
      v33 = v31;
      *&v32 = *(a1 + 48);
      *(&v32 + 1) = v29;
      v35 = v33;
      v36 = v32;
      v37 = *(a1 + 64);
      [v27 fetchMapItemsFromLocation:v28 options:v26 handler:v34];

      goto LABEL_19;
    }

    v20 = [*(a1 + 40) updatePlace:?];
    v21 = *(*(a1 + 64) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  dispatch_semaphore_signal(*(a1 + 32));
LABEL_19:
}

void __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (v6)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v7 = [v5 firstObject];
    [v7 setSource:0x20000];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(*(a1 + 72));
        v12 = *(a1 + 48);
        *buf = 138413315;
        v21 = v10;
        v22 = 2112;
        v23 = v11;
        v24 = 2117;
        v25 = v7;
        v26 = 2117;
        v27 = v12;
        v28 = 2112;
        v29 = 0;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, created mapItem, %{sensitive}@, current location, %{sensitive}@, error, %@", buf, 0x34u);
      }
    }

    v13 = [RTLearnedPlace alloc];
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v7 creationDate];
    v16 = [v7 expirationDate];
    v17 = [(RTLearnedPlace *)v13 initWithIdentifier:v14 type:1 typeSource:8 mapItem:v7 customLabel:0 creationDate:v15 expirationDate:v16];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (id)updatePlace:(id)place
{
  placeCopy = place;
  if (placeCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v98 = [date dateByAddingTimeInterval:4838400.0];
    v96 = objc_alloc(MEMORY[0x277D01060]);
    mapItem = [placeCopy mapItem];
    address = [mapItem address];
    identifier = [address identifier];
    mapItem2 = [placeCopy mapItem];
    address2 = [mapItem2 address];
    geoAddressData = [address2 geoAddressData];
    mapItem3 = [placeCopy mapItem];
    address3 = [mapItem3 address];
    subPremises = [address3 subPremises];
    mapItem4 = [placeCopy mapItem];
    address4 = [mapItem4 address];
    subThoroughfare = [address4 subThoroughfare];
    mapItem5 = [placeCopy mapItem];
    address5 = [mapItem5 address];
    thoroughfare = [address5 thoroughfare];
    mapItem6 = [placeCopy mapItem];
    address6 = [mapItem6 address];
    subLocality = [address6 subLocality];
    mapItem7 = [placeCopy mapItem];
    address7 = [mapItem7 address];
    locality = [address7 locality];
    mapItem8 = [placeCopy mapItem];
    address8 = [mapItem8 address];
    subAdministrativeArea = [address8 subAdministrativeArea];
    mapItem9 = [placeCopy mapItem];
    address9 = [mapItem9 address];
    administrativeArea = [address9 administrativeArea];
    mapItem10 = [placeCopy mapItem];
    address10 = [mapItem10 address];
    administrativeAreaCode = [address10 administrativeAreaCode];
    mapItem11 = [placeCopy mapItem];
    address11 = [mapItem11 address];
    postalCode = [address11 postalCode];
    mapItem12 = [placeCopy mapItem];
    address12 = [mapItem12 address];
    country = [address12 country];
    mapItem13 = [placeCopy mapItem];
    address13 = [mapItem13 address];
    countryCode = [address13 countryCode];
    mapItem14 = [placeCopy mapItem];
    address14 = [mapItem14 address];
    inlandWater = [address14 inlandWater];
    mapItem15 = [placeCopy mapItem];
    address15 = [mapItem15 address];
    ocean = [address15 ocean];
    mapItem16 = [placeCopy mapItem];
    address16 = [mapItem16 address];
    areasOfInterest = [address16 areasOfInterest];
    mapItem17 = [placeCopy mapItem];
    address17 = [mapItem17 address];
    isIsland = [address17 isIsland];
    mapItem18 = [placeCopy mapItem];
    address18 = [mapItem18 address];
    iso3166CountryCode = [address18 iso3166CountryCode];
    mapItem19 = [placeCopy mapItem];
    address19 = [mapItem19 address];
    iso3166SubdivisionCode = [address19 iso3166SubdivisionCode];
    LOBYTE(v26) = isIsland;
    v97 = [v96 initWithIdentifier:identifier geoAddressData:geoAddressData subPremises:subPremises subThoroughfare:subThoroughfare thoroughfare:thoroughfare subLocality:subLocality locality:locality subAdministrativeArea:subAdministrativeArea administrativeArea:administrativeArea administrativeAreaCode:administrativeAreaCode postalCode:postalCode country:country countryCode:countryCode inlandWater:inlandWater ocean:ocean areasOfInterest:areasOfInterest isIsland:v26 creationDate:date expirationDate:v98 iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:iso3166SubdivisionCode];

    v74 = objc_alloc(MEMORY[0x277D011A0]);
    mapItem20 = [placeCopy mapItem];
    identifier2 = [mapItem20 identifier];
    mapItem21 = [placeCopy mapItem];
    name = [mapItem21 name];
    mapItem22 = [placeCopy mapItem];
    category = [mapItem22 category];
    mapItem23 = [placeCopy mapItem];
    categoryMUID = [mapItem23 categoryMUID];
    mapItem24 = [placeCopy mapItem];
    location = [mapItem24 location];
    mapItem25 = [placeCopy mapItem];
    mapItemPlaceType = [mapItem25 mapItemPlaceType];
    mapItem26 = [placeCopy mapItem];
    muid = [mapItem26 muid];
    mapItem27 = [placeCopy mapItem];
    resultProviderID = [mapItem27 resultProviderID];
    mapItem28 = [placeCopy mapItem];
    geoMapItemHandle = [mapItem28 geoMapItemHandle];
    mapItem29 = [placeCopy mapItem];
    geoMapItemIdentifier = [mapItem29 geoMapItemIdentifier];
    mapItem30 = [placeCopy mapItem];
    extendedAttributes = [mapItem30 extendedAttributes];
    mapItem31 = [placeCopy mapItem];
    displayLanguage = [mapItem31 displayLanguage];
    mapItem32 = [placeCopy mapItem];
    LOBYTE(v27) = [mapItem32 disputed];
    v75 = [v74 initWithIdentifier:identifier2 name:name category:category categoryMUID:categoryMUID address:v97 location:location source:0x20000 mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle geoMapItemIdentifier:geoMapItemIdentifier creationDate:date expirationDate:v98 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v27];

    v20 = [RTLearnedPlace alloc];
    identifier3 = [placeCopy identifier];
    customLabel = [placeCopy customLabel];
    v23 = [(RTLearnedPlace *)v20 initWithIdentifier:identifier3 type:1 typeSource:8 mapItem:v75 customLabel:customLabel creationDate:date expirationDate:v98];
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

@end