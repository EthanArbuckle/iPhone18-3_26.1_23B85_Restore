@interface RTPlaceTypeClassifierExpertMaps
- (RTPlaceTypeClassifierExpertMaps)initWithLearnedLocationStore:(id)store mapsSupportManager:(id)manager placeTypeClassifierMetricsCalculator:(id)calculator;
- (id)_convertPinnedPlacesToLearnedPlaces:(id)places error:(id *)error;
- (id)_fetchPinnedPlacesWithKnownPlacesTypesAndError:(id *)error;
- (id)classifyWithError:(id *)error;
@end

@implementation RTPlaceTypeClassifierExpertMaps

- (RTPlaceTypeClassifierExpertMaps)initWithLearnedLocationStore:(id)store mapsSupportManager:(id)manager placeTypeClassifierMetricsCalculator:(id)calculator
{
  storeCopy = store;
  managerCopy = manager;
  calculatorCopy = calculator;
  v12 = calculatorCopy;
  if (!storeCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: learnedLocationStore";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_14;
  }

  if (!managerCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: mapsSupportManager";
    goto LABEL_13;
  }

  if (!calculatorCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: placeTypeClassifierMetricsCalculator";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v19.receiver = self;
  v19.super_class = RTPlaceTypeClassifierExpertMaps;
  v13 = [(RTPlaceTypeClassifierExpertMaps *)&v19 init];
  p_isa = &v13->super.isa;
  if (v13)
  {
    objc_storeStrong(&v13->_learnedLocationStore, store);
    objc_storeStrong(p_isa + 2, manager);
    objc_storeStrong(p_isa + 3, calculator);
  }

  self = p_isa;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)_fetchPinnedPlacesWithKnownPlacesTypesAndError:(id *)error
{
  v82[1] = *MEMORY[0x277D85DE8];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__205;
  v72 = __Block_byref_object_dispose__205;
  array = [MEMORY[0x277CBEA60] array];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__205;
  v66 = __Block_byref_object_dispose__205;
  v67 = 0;
  v3 = dispatch_semaphore_create(0);
  mapsSupportManager = [(RTPlaceTypeClassifierExpertMaps *)self mapsSupportManager];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __82__RTPlaceTypeClassifierExpertMaps__fetchPinnedPlacesWithKnownPlacesTypesAndError___block_invoke;
  v58[3] = &unk_2788C4490;
  v60 = &v62;
  v61 = &v68;
  v5 = v3;
  v59 = v5;
  [mapsSupportManager fetchPinnedPlacesWithHandler:v58];

  dsema = v5;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v7))
  {
    v8 = [MEMORY[0x277CBEAA8] now];
    [v8 timeIntervalSinceDate:v6];
    v10 = v9;
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_94_1];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v14 = [callStackSymbols filteredArrayUsingPredicate:v12];
    firstObject = [v14 firstObject];

    [v11 submitToCoreAnalytics:firstObject type:1 duration:v10];
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v82[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v82 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v18];

    if (v19)
    {
      v20 = v19;
    }
  }

  else
  {
    v19 = 0;
  }

  v50 = v19;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      v25 = [v69[5] count];
      v26 = v63[5];
      *buf = 138413058;
      *&buf[4] = v23;
      v76 = 2112;
      v77 = v24;
      v78 = 2048;
      v79 = v25;
      v80 = 2112;
      v81 = v26;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, fetched, %lu, pinnedPlaces, error, %@", buf, 0x2Au);
    }
  }

  if (error && v50)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v47;
      v76 = 2112;
      v77 = v48;
      v78 = 2112;
      v79 = v50;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

LABEL_28:
    v43 = v50;
    *error = v50;
    goto LABEL_29;
  }

  v28 = v69[5];
  v29 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_160];
  v30 = [v28 filteredArrayUsingPredicate:v29];
  v31 = v69[5];
  v69[5] = v30;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v32 = v69[5];
  v33 = [v32 countByEnumeratingWithState:&v54 objects:v74 count:16];
  if (v33)
  {
    v34 = *v55;
    v35 = MEMORY[0x277D86220];
    do
    {
      v36 = 0;
      do
      {
        if (*v55 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v54 + 1) + 8 * v36);
        v38 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v40 = objc_opt_class();
            v41 = NSStringFromClass(v40);
            v42 = NSStringFromSelector(a2);
            *buf = 138412802;
            *&buf[4] = v41;
            v76 = 2112;
            v77 = v42;
            v78 = 2112;
            v79 = v37;
            _os_log_debug_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEBUG, "%@, %@, pinned place, %@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v38);
        ++v36;
      }

      while (v33 != v36);
      v33 = [v32 countByEnumeratingWithState:&v54 objects:v74 count:16];
    }

    while (v33);
  }

  if (error)
  {
    goto LABEL_28;
  }

LABEL_29:
  v44 = v69[5];

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  return v44;
}

void __82__RTPlaceTypeClassifierExpertMaps__fetchPinnedPlacesWithKnownPlacesTypesAndError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_convertPinnedPlacesToLearnedPlaces:(id)places error:(id *)error
{
  v115[1] = *MEMORY[0x277D85DE8];
  placesCopy = places;
  if (placesCopy)
  {
    array = objc_opt_new();
    v99 = 0;
    v100 = &v99;
    v101 = 0x3032000000;
    v102 = __Block_byref_object_copy__205;
    v103 = __Block_byref_object_dispose__205;
    v104 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__205;
    v97 = __Block_byref_object_dispose__205;
    v98 = objc_opt_new();
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = placesCopy;
    v81 = [obj countByEnumeratingWithState:&v89 objects:v114 count:16];
    if (!v81)
    {
      goto LABEL_47;
    }

    v80 = *v90;
    v78 = *MEMORY[0x277D01448];
    v79 = *MEMORY[0x277CCA450];
    while (1)
    {
      v84 = 0;
      do
      {
        if (*v90 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v89 + 1) + 8 * v84);
        context = objc_autoreleasePoolPush();
        v5 = dispatch_semaphore_create(0);
        learnedLocationStore = [(RTPlaceTypeClassifierExpertMaps *)self learnedLocationStore];
        mapItem = [(RTLearnedPlace *)v4 mapItem];
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = __77__RTPlaceTypeClassifierExpertMaps__convertPinnedPlacesToLearnedPlaces_error___block_invoke;
        v85[3] = &unk_2788D3778;
        v87 = &v93;
        v85[4] = v4;
        v88 = &v99;
        v8 = v5;
        v86 = v8;
        [learnedLocationStore fetchLocationOfInterestWithMapItem:mapItem handler:v85];

        v9 = v8;
        v10 = [MEMORY[0x277CBEAA8] now];
        v11 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v9, v11))
        {
          v12 = [MEMORY[0x277CBEAA8] now];
          [v12 timeIntervalSinceDate:v10];
          v14 = v13;
          v15 = objc_opt_new();
          v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_94_1];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
          firstObject = [v18 firstObject];

          [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
          v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v21 = MEMORY[0x277CCA9B8];
          v115[0] = v79;
          *buf = @"semaphore wait timeout";
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v115 count:1];
          v23 = [v21 errorWithDomain:v78 code:15 userInfo:v22];

          if (v23)
          {
            v24 = v23;
          }
        }

        else
        {
          v23 = 0;
        }

        v25 = v23;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v54 = objc_opt_class();
            v55 = NSStringFromClass(v54);
            v56 = NSStringFromSelector(a2);
            v57 = [v94[5] objectForKeyedSubscript:v4];
            v58 = v100[5];
            *buf = 138413314;
            *&buf[4] = v55;
            v106 = 2112;
            v107 = v56;
            v108 = 2112;
            v109 = v4;
            v110 = 2112;
            v111 = v57;
            v112 = 2112;
            v113 = v58;
            _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "%@, %@, pinnedPlace, %@, learnedPlace, %@, error, %@", buf, 0x34u);
          }
        }

        if (v100[5])
        {
          goto LABEL_20;
        }

        if (v25)
        {
          objc_storeStrong(v100 + 5, v23);
LABEL_20:
          v27 = 6;
          goto LABEL_21;
        }

        v28 = [v94[5] objectForKeyedSubscript:v4];

        if (v28)
        {
          v73 = [RTLearnedPlace alloc];
          v76 = [v94[5] objectForKeyedSubscript:v4];
          identifier = [v76 identifier];
          type = [(RTLearnedPlace *)v4 type];
          v75 = [v94[5] objectForKeyedSubscript:v4];
          mapItem2 = [v75 mapItem];
          v31 = [v94[5] objectForKeyedSubscript:v4];
          customLabel = [v31 customLabel];
          v33 = [v94[5] objectForKeyedSubscript:v4];
          creationDate = [v33 creationDate];
          v35 = [v94[5] objectForKeyedSubscript:v4];
          expirationDate = [v35 expirationDate];
          v37 = [(RTLearnedPlace *)v73 initWithIdentifier:identifier type:type typeSource:16 mapItem:mapItem2 customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

          if (!v37)
          {
            v53 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v60 = objc_opt_class();
              v61 = NSStringFromClass(v60);
              v62 = NSStringFromSelector(a2);
              *buf = 138412546;
              *&buf[4] = v61;
              v106 = 2112;
              v107 = v62;
              _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "%@, %@, couldn't create a placeholder place", buf, 0x16u);
            }

LABEL_45:
            v27 = 7;
            goto LABEL_21;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              v41 = NSStringFromSelector(a2);
              *buf = 138412802;
              *&buf[4] = v40;
              v106 = 2112;
              v107 = v41;
              v108 = 2112;
              v109 = v37;
              _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, using existing learned place, %@", buf, 0x20u);
            }
          }

          [array addObject:v37];
        }

        else
        {
          date = [MEMORY[0x277CBEAA8] date];
          v43 = [date dateByAddingTimeInterval:4838400.0];
          v44 = [RTLearnedPlace alloc];
          uUID = [MEMORY[0x277CCAD78] UUID];
          type2 = [(RTLearnedPlace *)v4 type];
          mapItem3 = [(RTLearnedPlace *)v4 mapItem];
          v48 = [(RTLearnedPlace *)v44 initWithIdentifier:uUID type:type2 typeSource:16 mapItem:mapItem3 customLabel:0 creationDate:date expirationDate:v43];

          if (!v48)
          {
            v59 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              v63 = objc_opt_class();
              v64 = NSStringFromClass(v63);
              v65 = NSStringFromSelector(a2);
              *buf = 138412546;
              *&buf[4] = v64;
              v106 = 2112;
              v107 = v65;
              _os_log_error_impl(&dword_2304B3000, v59, OS_LOG_TYPE_ERROR, "%@, %@, couldn't create a placeholder place", buf, 0x16u);
            }

            goto LABEL_45;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v49 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = objc_opt_class();
              v51 = NSStringFromClass(v50);
              v52 = NSStringFromSelector(a2);
              *buf = 138412802;
              *&buf[4] = v51;
              v106 = 2112;
              v107 = v52;
              v108 = 2112;
              v109 = v48;
              _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, %@, created a placeholder place for maps postalAdress mapItem that was not associated to any existing place, %@", buf, 0x20u);
            }
          }

          [array addObject:v48];
        }

        v27 = 0;
LABEL_21:

        objc_autoreleasePoolPop(context);
        if (v27 != 7 && v27)
        {
          goto LABEL_47;
        }

        ++v84;
      }

      while (v81 != v84);
      v66 = [obj countByEnumeratingWithState:&v89 objects:v114 count:16];
      v81 = v66;
      if (!v66)
      {
LABEL_47:

        if (error)
        {
          *error = v100[5];
        }

        _Block_object_dispose(&v93, 8);

        _Block_object_dispose(&v99, 8);
        goto LABEL_55;
      }
    }
  }

  v67 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v67, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pinnedPlaces", buf, 2u);
  }

  if (error)
  {
    *error = _RTErrorInvalidParameterCreate(@"pinnedPlaces");
  }

  array = [MEMORY[0x277CBEA60] array];
LABEL_55:

  return array;
}

void __77__RTPlaceTypeClassifierExpertMaps__convertPinnedPlacesToLearnedPlaces_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 place];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v6 forKeyedSubscript:*(a1 + 32)];

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)classifyWithError:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v4 = [(RTPlaceTypeClassifierExpertMaps *)self _fetchPinnedPlacesWithKnownPlacesTypesAndError:&v53];
  v5 = v53;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = [v4 count];
      *buf = 138413058;
      v56 = v8;
      v57 = 2112;
      v58 = v9;
      v59 = 2048;
      v60 = v10;
      v61 = 2112;
      v62 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, pinned places count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (error && v5)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = NSStringFromSelector(a2);
      *buf = 138412802;
      v56 = v40;
      v57 = 2112;
      v58 = v41;
      v59 = 2112;
      v60 = v5;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v12 = v5;
    *error = v5;
    array = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    errorCopy = error;
    v52 = v5;
    v14 = [(RTPlaceTypeClassifierExpertMaps *)self _convertPinnedPlacesToLearnedPlaces:v4 error:&v52];
    v15 = v52;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        v20 = [v14 count];
        *buf = 138413058;
        v56 = v18;
        v57 = 2112;
        v58 = v19;
        v59 = 2048;
        v60 = v20;
        v61 = 2112;
        v62 = v15;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, learned places count, %lu, error, %@", buf, 0x2Au);
      }
    }

    v42 = v15;
    v44 = v4;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    array = v14;
    v21 = [array countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v49;
      v24 = MEMORY[0x277D86220];
      v25 = RTLogFacilityLearnedLocation;
      do
      {
        v26 = 0;
        v47 = v22;
        do
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(array);
          }

          v27 = *(*(&v48 + 1) + 8 * v26);
          v28 = objc_autoreleasePoolPush();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v29 = _rt_log_facility_get_os_log(v25);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = objc_opt_class();
              NSStringFromClass(v30);
              v31 = v23;
              v32 = array;
              v34 = v33 = v25;
              v35 = NSStringFromSelector(a2);
              *buf = 138412802;
              v56 = v34;
              v57 = 2112;
              v58 = v35;
              v59 = 2112;
              v60 = v27;
              _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, learnedPlace, %@", buf, 0x20u);

              v25 = v33;
              array = v32;
              v23 = v31;
              v22 = v47;
            }
          }

          objc_autoreleasePoolPop(v28);
          ++v26;
        }

        while (v22 != v26);
        v22 = [array countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v22);
    }

    placeTypeClassifierMetricsCalculator = [(RTPlaceTypeClassifierExpertMaps *)self placeTypeClassifierMetricsCalculator];
    [placeTypeClassifierMetricsCalculator storeMetricsData:array source:17];

    if (errorCopy)
    {
      v5 = v42;
      v37 = v42;
      *errorCopy = v42;
      v4 = v44;
    }

    else
    {
      v4 = v44;
      v5 = v42;
    }
  }

  return array;
}

@end