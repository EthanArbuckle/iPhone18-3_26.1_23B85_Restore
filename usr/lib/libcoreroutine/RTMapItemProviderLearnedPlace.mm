@interface RTMapItemProviderLearnedPlace
- (RTMapItemProviderLearnedPlace)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store;
- (RTMapItemProviderLearnedPlace)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store parameters:(id)parameters;
- (double)confidenceForPlaceType:(unint64_t)type;
- (id)adjustConfidenceAndCollectMetrics:(id)metrics learnedPlace:(id)place maxConfidence:(double)confidence;
- (id)learnedPlaceForInferredMapItem:(id)item error:(id *)error;
- (id)mapItemsWithOptions:(id)options error:(id *)error;
- (unint64_t)coalescedMapItemSourceForPlace:(id)place;
@end

@implementation RTMapItemProviderLearnedPlace

- (RTMapItemProviderLearnedPlace)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store
{
  managerCopy = manager;
  calculatorCopy = calculator;
  storeCopy = store;
  if (managerCopy)
  {
    v11 = [[RTMapItemProviderLearnedPlaceParameters alloc] initWithDefaultsManager:managerCopy];
    self = [(RTMapItemProviderLearnedPlace *)self initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy learnedLocationStore:storeCopy parameters:v11];

    selfCopy = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v15, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTMapItemProviderLearnedPlace)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store parameters:(id)parameters
{
  v26 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  calculatorCopy = calculator;
  storeCopy = store;
  parametersCopy = parameters;
  v14 = parametersCopy;
  if (!storeCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      selfCopy = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: learnedLocationStore";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_12;
  }

  if (!parametersCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: parameters";
    goto LABEL_15;
  }

  v23.receiver = self;
  v23.super_class = RTMapItemProviderLearnedPlace;
  v15 = [(RTMapItemProviderBase *)&v23 initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy];
  p_isa = &v15->super.super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_learnedLocationStore, store);
    objc_storeStrong(p_isa + 4, parameters);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = p_isa[4];
        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "initialized RTMapItemProviderLearnedPlace with parameters: %@", buf, 0xCu);
      }
    }
  }

  self = p_isa;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)mapItemsWithOptions:(id)options error:(id *)error
{
  v166[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  [optionsCopy distance];
  v7 = v6;
  v103 = optionsCopy;
  location = [optionsCopy location];
  [(RTMapItemProviderLearnedPlaceParameters *)self->_parameters maxDistanceThreshold];
  if (v8 < v7)
  {
    v7 = v8;
  }

  [(RTMapItemProviderLearnedPlaceParameters *)self->_parameters minDistanceThreshold];
  if (v7 < v9)
  {
    v7 = v9;
  }

  [(RTMapItemProviderLearnedPlaceParameters *)self->_parameters softDistanceThreshold];
  if (v10 >= v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v142 = 0;
  v143 = &v142;
  v144 = 0x3032000000;
  v145 = __Block_byref_object_copy__65;
  v146 = __Block_byref_object_dispose__65;
  v147 = 0;
  v136 = 0;
  v137 = &v136;
  v138 = 0x3032000000;
  v139 = __Block_byref_object_copy__65;
  v140 = __Block_byref_object_dispose__65;
  v141 = 0;
  v12 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTMapItemProviderLearnedPlace *)self learnedLocationStore];
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke;
  v132[3] = &unk_2788C4490;
  v134 = &v142;
  v135 = &v136;
  v14 = v12;
  v133 = v14;
  [learnedLocationStore fetchLocationsOfInterestWithinDistance:location location:v132 handler:v11];

  dsema = v14;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_51];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
    firstObject = [v23 firstObject];

    [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *v160 = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v160, 2u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v154 = *MEMORY[0x277CCA450];
    *v160 = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:&v154 count:1];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

    if (v28)
    {
      v29 = v28;

      v30 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = 1;
LABEL_15:

  v102 = v28;
  if ((v30 & 1) == 0)
  {
    objc_storeStrong(v137 + 5, v28);
  }

  *v160 = 0;
  v161 = v160;
  v162 = 0x3032000000;
  v163 = __Block_byref_object_copy__65;
  v164 = __Block_byref_object_dispose__65;
  v165 = 0;
  v154 = 0;
  v155 = &v154;
  v156 = 0x3032000000;
  v157 = __Block_byref_object_copy__65;
  v158 = __Block_byref_object_dispose__65;
  v159 = 0;
  v31 = dispatch_semaphore_create(0);
  learnedLocationStore2 = [(RTMapItemProviderLearnedPlace *)self learnedLocationStore];
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke_2;
  v128[3] = &unk_2788C4490;
  v130 = v160;
  v131 = &v154;
  v33 = v31;
  v129 = v33;
  [learnedLocationStore2 fetchPlacesWithinDistance:location location:v128 handler:v11];

  v111 = v33;
  v34 = [MEMORY[0x277CBEAA8] now];
  v35 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v111, v35))
  {
    v47 = 0;
LABEL_23:
    v49 = 1;
    goto LABEL_24;
  }

  v36 = [MEMORY[0x277CBEAA8] now];
  [v36 timeIntervalSinceDate:v34];
  v38 = v37;
  v39 = objc_opt_new();
  v40 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_51];
  callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
  v42 = [callStackSymbols2 filteredArrayUsingPredicate:v40];
  firstObject2 = [v42 firstObject];

  [v39 submitToCoreAnalytics:firstObject2 type:1 duration:v38];
  v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v44, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v45 = MEMORY[0x277CCA9B8];
  v166[0] = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v166 count:1];
  v47 = [v45 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v46];

  if (!v47)
  {
    goto LABEL_23;
  }

  v48 = v47;

  v49 = 0;
LABEL_24:

  v101 = v47;
  if ((v49 & 1) == 0)
  {
    objc_storeStrong(v155 + 5, v47);
  }

  if (v137[5] | v155[5])
  {
    v99 = v155[5];
    v100 = 1;
    v50 = _RTSafeArray();
    v115 = _RTMultiErrorCreate();

    if (v137[5] && v155[5])
    {
      if (error)
      {
        v51 = v115;
        v52 = 0;
        *error = v115;
      }

      else
      {
        v52 = 0;
      }

      goto LABEL_69;
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v54 = v143[5];
  v125[0] = MEMORY[0x277D85DD0];
  v125[1] = 3221225472;
  v125[2] = __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke_3;
  v125[3] = &unk_2788CA548;
  v125[4] = self;
  v113 = location;
  v126 = v113;
  v55 = array;
  v127 = v55;
  [v54 enumerateObjectsUsingBlock:v125];
  v56 = objc_opt_new();
  v57 = *(v161 + 5);
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke_25;
  v122[3] = &unk_2788CA598;
  v106 = v56;
  v123 = v106;
  v115 = v55;
  v124 = v115;
  [v57 enumerateObjectsUsingBlock:v122];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  for (i = 0; i < [v115 count]; ++i)
  {
    v59 = [v115 objectAtIndexedSubscript:i];
    mapItem = [v59 mapItem];
    v61 = mapItem == 0;

    if (v61)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_52;
      }

      v65 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v67 = NSStringFromSelector(a2);
        *buf = 138412547;
        *&buf[4] = v67;
        v152 = 2117;
        v153 = v59;
        _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "%@, found place with nil mapItem, %{sensitive}@", buf, 0x16u);
      }
    }

    else
    {
      *buf = 0;
      v166[0] = 0;
      learnedLocationStore3 = [(RTMapItemProviderLearnedPlace *)self learnedLocationStore];
      mapItem2 = [v59 mapItem];
      v121 = 0;
      v64 = [learnedLocationStore3 placeTypeForMapItem:mapItem2 placeType:buf placeTypeSource:v166 error:&v121];
      v65 = v121;

      if (v64)
      {
        v66 = *buf;
      }

      else
      {
        v66 = 0;
        *buf = 0;
        v166[0] = 0;
      }

      [(RTMapItemProviderLearnedPlace *)self confidenceForPlaceType:v66];
      v69 = v68;
      mapItem3 = [v59 mapItem];
      v71 = [mapItem3 appendSource:0x2000];

      v72 = [objc_alloc(MEMORY[0x277D01128]) initWithMapItem:v71 confidence:0x2000 source:v69];
      if (!v72)
      {
        v88 = MEMORY[0x277CCA9B8];
        v149 = *MEMORY[0x277CCA450];
        v150 = @"inferredMapItem was nil";
        v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        v90 = [v88 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v89];

        if (error)
        {
          v91 = v90;
          *error = v90;
        }

LABEL_59:
        v52 = 0;
        goto LABEL_68;
      }

      if (*buf)
      {
        [array4 addObject:v72];
        v73 = [(RTMapItemProviderLearnedPlace *)self adjustConfidenceAndCollectMetrics:v113 learnedPlace:v59 maxConfidence:v69];
        v74 = objc_alloc(MEMORY[0x277CCACA8]);
        v75 = [v74 initWithCString:RTAnalyticsEventLearnedPlaceConfidence encoding:1];
        log_analytics_submission(v75, v73);
        v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v75];
        AnalyticsSendEvent();
      }

      else
      {
        v77 = [(RTMapItemProviderLearnedPlace *)self coalescedMapItemSourceForPlace:v59];
        revGeoSourceMask = [(RTMapItemProviderLearnedPlaceParameters *)self->_parameters revGeoSourceMask];
        parameters = self->_parameters;
        if ((v77 & ~revGeoSourceMask) != 0)
        {
          [(RTMapItemProviderLearnedPlaceParameters *)parameters nonRevGeoConfidence];
          v80 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v72 setValue:v80 forKey:@"confidence"];

          v81 = array3;
        }

        else
        {
          [(RTMapItemProviderLearnedPlaceParameters *)parameters revGeoConfidence];
          v82 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v72 setValue:v82 forKey:@"confidence"];

          mapItem4 = [v72 mapItem];
          identifier = [mapItem4 identifier];
          v85 = [v106 containsObject:identifier];

          if (v85)
          {
            v81 = array2;
          }

          else
          {
            v81 = array5;
          }
        }

        [v81 addObject:v72];
      }
    }

LABEL_52:
  }

  v120 = 0;
  v65 = [(RTMapItemProviderBase *)self filterInferredMapItems:array2 byDistance:v113 fromLocation:0x2000 andAppendSource:&v120 error:v7];
  v86 = v120;
  if (v86)
  {
    v59 = v86;
    if (error)
    {
      v87 = v86;
      v52 = 0;
      *error = v59;
      goto LABEL_68;
    }

    goto LABEL_59;
  }

  v92 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(array3, "count") + objc_msgSend(array4, "count") + objc_msgSend(array5, "count") + -[NSObject count](v65, "count")}];
  [v92 addObjectsFromArray:array4];
  [v92 addObjectsFromArray:array3];
  [v92 addObjectsFromArray:v65];
  [v92 addObjectsFromArray:array5];
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v52 = v92;
  v93 = [v52 countByEnumeratingWithState:&v116 objects:v148 count:16];
  if (v93)
  {
    v94 = *v117;
    do
    {
      for (j = 0; j != v93; ++j)
      {
        if (*v117 != v94)
        {
          objc_enumerationMutation(v52);
        }

        mapItem5 = [*(*(&v116 + 1) + 8 * j) mapItem];
        v97 = [mapItem5 removeSource:{-[RTMapItemProviderLearnedPlaceParameters removeSourceMask](self->_parameters, "removeSourceMask")}];
      }

      v93 = [v52 countByEnumeratingWithState:&v116 objects:v148 count:16];
    }

    while (v93);
  }

  v59 = 0;
LABEL_68:

LABEL_69:
  _Block_object_dispose(&v154, 8);

  _Block_object_dispose(v160, 8);
  _Block_object_dispose(&v136, 8);

  _Block_object_dispose(&v142, 8);

  return v52;
}

void __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

void __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) distanceCalculator];
  v5 = *(a1 + 40);
  v6 = [v3 location];
  v7 = [v6 location];
  v8 = [v4 checkConsistencyBetweenLocation:v5 otherLocation:v7 error:0];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v13 = @"NO";
      v14 = 138740483;
      if (v8)
      {
        v13 = @"YES";
      }

      v15 = v3;
      v16 = 2117;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "Processing LOI, %{sensitive}@, near entry location, %{sensitive}@, consistent, %@", &v14, 0x20u);
    }
  }

  if (v8)
  {
    v10 = *(a1 + 48);
    v11 = [v3 place];
    [v10 addObject:v11];
  }
}

void __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mapItem];
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 mapItem];
    v8 = [v7 identifier];
    [v6 addObject:v8];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = *(a1 + 40);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke_2_26;
  v14 = &unk_2788CA570;
  v10 = v3;
  v15 = v10;
  v16 = &v17;
  [v9 enumerateObjectsUsingBlock:&v11];
  if ((v18[3] & 1) == 0)
  {
    [*(a1 + 40) addObject:{v10, v11, v12, v13, v14}];
  }

  _Block_object_dispose(&v17, 8);
}

void __59__RTMapItemProviderLearnedPlace_mapItemsWithOptions_error___block_invoke_2_26(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [*(a1 + 32) identifier];
  v7 = [v11 identifier];
  if ([v6 isEqual:v7])
  {
  }

  else
  {
    v8 = [*(a1 + 32) mapItem];
    v9 = [v11 mapItem];
    v10 = [v8 isEqualToMapItem:v9];

    if (!v10)
    {
      goto LABEL_5;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a4 = 1;
LABEL_5:
}

- (id)learnedPlaceForInferredMapItem:(id)item error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = dispatch_semaphore_create(0);
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__65;
  v50 = __Block_byref_object_dispose__65;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__65;
  v44 = __Block_byref_object_dispose__65;
  v45 = 0;
  v8 = objc_autoreleasePoolPush();
  learnedLocationStore = [(RTMapItemProviderLearnedPlace *)self learnedLocationStore];
  mapItem = [itemCopy mapItem];
  identifier = [mapItem identifier];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __70__RTMapItemProviderLearnedPlace_learnedPlaceForInferredMapItem_error___block_invoke;
  v36 = &unk_2788C8750;
  v38 = &v40;
  v39 = &v46;
  v12 = v7;
  v37 = v12;
  [learnedLocationStore fetchPlaceWithMapItemIdentifier:identifier handler:&v33];

  objc_autoreleasePoolPop(v8);
  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_51];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
    firstObject = [v22 firstObject];

    [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v52 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;

      v29 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = 1;
LABEL_8:

  v30 = v27;
  if ((v29 & 1) == 0)
  {
    objc_storeStrong(v41 + 5, v27);
  }

  if (error)
  {
    *error = v41[5];
  }

  v31 = v47[5];
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);

  return v31;
}

void __70__RTMapItemProviderLearnedPlace_learnedPlaceForInferredMapItem_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (unint64_t)coalescedMapItemSourceForPlace:(id)place
{
  v39 = *MEMORY[0x277D85DE8];
  placeCopy = place;
  if (placeCopy)
  {
    *v33 = 0;
    v34 = v33;
    v35 = 0x2020000000;
    v36 = 0;
    v5 = dispatch_semaphore_create(0);
    learnedLocationStore = [(RTMapItemProviderLearnedPlace *)self learnedLocationStore];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __64__RTMapItemProviderLearnedPlace_coalescedMapItemSourceForPlace___block_invoke;
    v30 = &unk_2788C6490;
    v32 = v33;
    v7 = v5;
    v31 = v7;
    [learnedLocationStore fetchLocationOfInterestWithPlace:placeCopy handler:&v27];

    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v8, v10))
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      [v11 timeIntervalSinceDate:v9];
      v13 = v12;
      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_51];
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
      v37 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v37 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

      if (v22)
      {
        v23 = v22;
      }
    }

    v24 = *(v34 + 3);
    _Block_object_dispose(v33, 8);
  }

  else
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v33, 2u);
    }

    v24 = 0x2000;
  }

  return v24;
}

intptr_t __64__RTMapItemProviderLearnedPlace_coalescedMapItemSourceForPlace___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [a2 visits];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          *(*(*(a1 + 40) + 8) + 24) |= [*(*(&v9 + 1) + 8 * v7++) placeSource];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (double)confidenceForPlaceType:(unint64_t)type
{
  if (type > 2)
  {
    if (type != 3)
    {
      if (type == 4)
      {
        [(RTMapItemProviderLearnedPlaceParameters *)self->_parameters gymConfidence];
        return result;
      }

      return 0.0;
    }

    [(RTMapItemProviderLearnedPlaceParameters *)self->_parameters schoolConfidence];
  }

  else
  {
    if (type != 1)
    {
      if (type == 2)
      {
        [(RTMapItemProviderLearnedPlaceParameters *)self->_parameters workConfidence];
        return result;
      }

      return 0.0;
    }

    [(RTMapItemProviderLearnedPlaceParameters *)self->_parameters homeConfidence];
  }

  return result;
}

- (id)adjustConfidenceAndCollectMetrics:(id)metrics learnedPlace:(id)place maxConfidence:(double)confidence
{
  v72 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  placeCopy = place;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(placeCopy, "type")}];
  [v9 setObject:v10 forKeyedSubscript:@"type"];

  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__65;
  v68 = __Block_byref_object_dispose__65;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__65;
  v62 = __Block_byref_object_dispose__65;
  v63 = 0;
  v11 = dispatch_semaphore_create(0);
  learnedLocationStore = self->_learnedLocationStore;
  mapItem = [placeCopy mapItem];
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = __94__RTMapItemProviderLearnedPlace_adjustConfidenceAndCollectMetrics_learnedPlace_maxConfidence___block_invoke;
  v53 = &unk_2788CA5C0;
  v14 = placeCopy;
  v54 = v14;
  v56 = &v58;
  v57 = &v64;
  v15 = v11;
  v55 = v15;
  [(RTLearnedLocationStore *)learnedLocationStore fetchLocationOfInterestWithMapItem:mapItem handler:&v50];

  v16 = v15;
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v16, v18))
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    [v19 timeIntervalSinceDate:v17];
    v21 = v20;
    v22 = objc_opt_new();
    v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_51];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v25 = [callStackSymbols filteredArrayUsingPredicate:v23];
    firstObject = [v25 firstObject];

    [v22 submitToCoreAnalytics:firstObject type:1 duration:v21];
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v28 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v70 count:1];
    v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v29];

    if (v30)
    {
      v31 = v30;

      v32 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = 1;
LABEL_8:

  v33 = v30;
  if ((v32 & 1) == 0)
  {
    objc_storeStrong(v59 + 5, v30);
  }

  if (!v59[5] && v65[5])
  {
    [metricsCopy latitude];
    [metricsCopy longitude];
    location = [v65[5] location];
    v34Location = [location location];
    [v34Location latitude];
    location2 = [v65[5] location];
    v36Location = [location2 location];
    [v36Location longitude];
    RTCommonCalculateDistanceHighPrecision();
    v39 = v38;

    v40 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
    [v9 setObject:v40 forKeyedSubscript:@"distance"];

    location3 = [v65[5] location];
    v41Location = [location3 location];
    [v41Location horizontalUncertainty];
    v44 = v43;

    v45 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
    [v9 setObject:v45 forKeyedSubscript:@"uncertainty"];

    v46 = 0.0;
    if (v44 > 0.0 && v39 < v44 + v44)
    {
      v46 = (confidence + -0.55) * (dbl_230AFE480[vcvtmd_s64_f64(v39 / v44 * 4.0)] + -0.0346) / 0.1628 + 0.55;
    }

    v47 = [MEMORY[0x277CCABB0] numberWithDouble:{v46, metricsCopy, v50, v51, v52, v53, v54}];
    [v9 setObject:v47 forKeyedSubscript:@"confidence"];
  }

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  return v9;
}

void __94__RTMapItemProviderLearnedPlace_adjustConfidenceAndCollectMetrics_learnedPlace_maxConfidence___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v11 = 138740483;
      v12 = v5;
      v13 = 2117;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "fetched LOI, %{sensitive}@, with learnedplace, %{sensitive}@, error, %@", &v11, 0x20u);
    }
  }

  if (v6)
  {
    v9 = 48;
    v10 = v6;
LABEL_9:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), v10);
    goto LABEL_10;
  }

  if (v5)
  {
    v9 = 56;
    v10 = v5;
    goto LABEL_9;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 40));
}

@end