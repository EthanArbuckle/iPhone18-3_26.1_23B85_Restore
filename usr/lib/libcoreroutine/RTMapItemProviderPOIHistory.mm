@interface RTMapItemProviderPOIHistory
- (RTMapItemProviderPOIHistory)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator placeInferenceQueryStore:(id)store;
- (RTMapItemProviderPOIHistory)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator placeInferenceQueryStore:(id)store parameters:(id)parameters;
- (id)mapItemsWithOptions:(id)options error:(id *)error;
@end

@implementation RTMapItemProviderPOIHistory

- (RTMapItemProviderPOIHistory)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator placeInferenceQueryStore:(id)store
{
  storeCopy = store;
  calculatorCopy = calculator;
  managerCopy = manager;
  v11 = [[RTMapItemProviderPOIHistoryParameters alloc] initWithDefaultsManager:managerCopy];
  v12 = [(RTMapItemProviderPOIHistory *)self initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy placeInferenceQueryStore:storeCopy parameters:v11];

  return v12;
}

- (RTMapItemProviderPOIHistory)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator placeInferenceQueryStore:(id)store parameters:(id)parameters
{
  v26 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  calculatorCopy = calculator;
  storeCopy = store;
  parametersCopy = parameters;
  v14 = parametersCopy;
  if (!managerCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: defaultsManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_20;
  }

  if (!calculatorCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_19;
  }

  if (!storeCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: placeInferenceQueryStore";
    goto LABEL_19;
  }

  if (!parametersCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: parameters";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v23.receiver = self;
  v23.super_class = RTMapItemProviderPOIHistory;
  v15 = [(RTMapItemProviderBase *)&v23 initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy];
  p_isa = &v15->super.super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_placeInferenceQueryStore, store);
    objc_storeStrong(p_isa + 4, parameters);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = p_isa[4];
        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "initialized RTMapItemProviderPOIHistory with parameters, %@", buf, 0xCu);
      }
    }
  }

  self = p_isa;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (id)mapItemsWithOptions:(id)options error:(id *)error
{
  errorCopy = error;
  v176 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  endDate = [optionsCopy endDate];
  startDate = [optionsCopy startDate];
  [endDate timeIntervalSinceDate:startDate];
  v7 = v6;

  if (v7 < 300.0)
  {
    v8 = 0;
    if (errorCopy)
    {
      *errorCopy = 0;
    }

    goto LABEL_62;
  }

  v165 = 0;
  v166 = &v165;
  v167 = 0x3032000000;
  v168 = __Block_byref_object_copy__134;
  v169 = __Block_byref_object_dispose__134;
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  startDate2 = [optionsCopy startDate];
  v11 = MEMORY[0x277CBEAA8];
  endDate2 = [optionsCopy endDate];
  v13 = [v11 dateWithTimeInterval:endDate2 sinceDate:-300.0];
  v170 = [v9 initWithStartDate:startDate2 endDate:v13];

  v159 = 0;
  v160 = &v159;
  v161 = 0x3032000000;
  v162 = __Block_byref_object_copy__134;
  v163 = __Block_byref_object_dispose__134;
  v164 = 0;
  v157[0] = 0;
  v157[1] = v157;
  v157[2] = 0x3032000000;
  v157[3] = __Block_byref_object_copy__134;
  v157[4] = __Block_byref_object_dispose__134;
  v158 = objc_opt_new();
  v155[0] = 0;
  v155[1] = v155;
  v155[2] = 0x3032000000;
  v155[3] = __Block_byref_object_copy__134;
  v155[4] = __Block_byref_object_dispose__134;
  v156 = objc_opt_new();
  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = __Block_byref_object_copy__134;
  v153 = __Block_byref_object_dispose__134;
  v154 = objc_opt_new();
  v143 = 0;
  v144 = &v143;
  v145 = 0x3032000000;
  v146 = __Block_byref_object_copy__134;
  v147 = __Block_byref_object_dispose__134;
  v148 = objc_opt_new();
  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = __Block_byref_object_copy__134;
  v141 = __Block_byref_object_dispose__134;
  v142 = objc_opt_new();
  v131 = 0;
  v132 = &v131;
  v133 = 0x3032000000;
  v134 = __Block_byref_object_copy__134;
  v135 = __Block_byref_object_dispose__134;
  v94 = 0;
  v136 = objc_opt_new();
  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy__134;
  v129 = __Block_byref_object_dispose__134;
  v130 = 0;
  v121 = 0;
  v122 = &v121;
  v123 = 0x2020000000;
  v124 = 100;
  v89 = *MEMORY[0x277D01448];
  v90 = *MEMORY[0x277CCA450];
  while (1)
  {
    v14 = v160[5];
    if (v14)
    {
      if (errorCopy)
      {
        v8 = 0;
        *errorCopy = v14;
        goto LABEL_61;
      }

LABEL_32:
      v8 = 0;
      goto LABEL_61;
    }

    if (v122[3] != 100)
    {
      break;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = dispatch_semaphore_create(0);
    placeInferenceQueryStore = [(RTMapItemProviderPOIHistory *)self placeInferenceQueryStore];
    v18 = v166[5];
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __57__RTMapItemProviderPOIHistory_mapItemsWithOptions_error___block_invoke;
    v107[3] = &unk_2788CF798;
    v110 = &v165;
    v111 = &v159;
    v112 = &v121;
    v113 = v155;
    v114 = v157;
    v115 = &v125;
    v116 = &v137;
    v117 = &v131;
    v118 = &v149;
    v119 = &v143;
    v120 = a2;
    v108 = optionsCopy;
    v19 = v16;
    v109 = v19;
    [placeInferenceQueryStore fetchPlaceInferenceQueriesWithDateInterval:v18 ascending:1 limit:&unk_28459F1F8 handler:v107];

    v20 = v19;
    v21 = [MEMORY[0x277CBEAA8] now];
    v22 = dispatch_time(0, 3600000000000);
    if (!dispatch_semaphore_wait(v20, v22))
    {
      goto LABEL_12;
    }

    v23 = [MEMORY[0x277CBEAA8] now];
    [v23 timeIntervalSinceDate:v21];
    v25 = v24;
    v26 = objc_opt_new();
    v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_110];
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
    v174 = v90;
    *buf = @"semaphore wait timeout";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v174 count:1];
    v34 = [v32 errorWithDomain:v89 code:15 userInfo:v33];

    if (v34)
    {
      v35 = v34;

      v36 = 0;
    }

    else
    {
LABEL_12:
      v36 = 1;
      v34 = v94;
    }

    v37 = v34;
    if ((v36 & 1) == 0)
    {
      objc_storeStrong(v160 + 5, v34);
    }

    objc_autoreleasePoolPop(v15);
    v94 = v37;
  }

  if (!v126[5])
  {
    if (errorCopy)
    {
      v8 = 0;
      *errorCopy = 0;
      goto LABEL_61;
    }

    goto LABEL_32;
  }

  endDate3 = [v166[5] endDate];
  date = [v126[5] date];
  [endDate3 timeIntervalSinceDate:date];
  v41 = v40;

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v42 = v150[5];
  v43 = 0;
  v44 = [v42 countByEnumeratingWithState:&v103 objects:v173 count:16];
  if (v44)
  {
    v45 = *v104;
    v46 = 0.0;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v104 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v48 = *(*(&v103 + 1) + 8 * i);
        v49 = [v150[5] objectForKeyedSubscript:{v48, errorCopy}];
        [v49 doubleValue];
        v51 = v50 > v46;

        if (v51)
        {
          v52 = v48;

          v53 = [v150[5] objectForKeyedSubscript:v52];
          [v53 doubleValue];
          v46 = v54;

          v43 = v52;
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v103 objects:v173 count:16];
    }

    while (v44);
  }

  else
  {
    v46 = 0.0;
  }

  v55 = objc_opt_new();
  if (v46 / v41 >= 0.7)
  {
    v66 = objc_alloc(MEMORY[0x277D01128]);
    v67 = [v138[5] objectForKeyedSubscript:v43];
    v68 = [v132[5] objectForKeyedSubscript:v43];
    [v68 doubleValue];
    v56 = [v66 initWithMapItem:v67 confidence:0x80000 source:?];

    if (v56)
    {
      [v55 addObject:v56];
    }
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v56 = v150[5];
    v57 = [v56 countByEnumeratingWithState:&v99 objects:v172 count:16];
    if (v57)
    {
      v58 = *v100;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v100 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v60 = *(*(&v99 + 1) + 8 * j);
          v61 = objc_alloc(MEMORY[0x277D01128]);
          v62 = [v138[5] objectForKeyedSubscript:v60];
          v63 = [v150[5] objectForKeyedSubscript:v60];
          [v63 doubleValue];
          v65 = [v61 initWithMapItem:v62 confidence:0x80000 source:v64 / v41];

          if (v65)
          {
            [v55 addObject:v65];
          }
        }

        v57 = [v56 countByEnumeratingWithState:&v99 objects:v172 count:16];
      }

      while (v57);
    }
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v69 = v144[5];
  v70 = [v69 countByEnumeratingWithState:&v95 objects:v171 count:16];
  if (v70)
  {
    v71 = *v96;
    do
    {
      for (k = 0; k != v70; ++k)
      {
        if (*v96 != v71)
        {
          objc_enumerationMutation(v69);
        }

        v73 = *(*(&v95 + 1) + 8 * k);
        v74 = [v144[5] objectForKeyedSubscript:{v73, errorCopy}];
        [v74 doubleValue];
        v76 = v75;

        v77 = v76 / v41;
        if (v77 >= 0.7)
        {
          v78 = [v132[5] objectForKeyedSubscript:v73];
          [v78 doubleValue];
          v77 = v79;
        }

        v80 = objc_alloc(MEMORY[0x277D01128]);
        v81 = [v138[5] objectForKeyedSubscript:v73];
        v82 = [v80 initWithMapItem:v81 confidence:0x80000 source:v77];

        if (v82)
        {
          [v55 addObject:v82];
        }
      }

      v70 = [v69 countByEnumeratingWithState:&v95 objects:v171 count:16];
    }

    while (v70);
  }

  parameters = [(RTMapItemProviderPOIHistory *)self parameters];
  [parameters distanceThreshold];
  v85 = v84;
  location = [optionsCopy location];
  v8 = [(RTMapItemProviderBase *)self filterInferredMapItems:v55 byDistance:location fromLocation:errorCopy error:v85];

  if (errorCopy)
  {
    *errorCopy = 0;
  }

LABEL_61:
  _Block_object_dispose(&v121, 8);

  _Block_object_dispose(&v125, 8);
  _Block_object_dispose(&v131, 8);

  _Block_object_dispose(&v137, 8);
  _Block_object_dispose(&v143, 8);

  _Block_object_dispose(&v149, 8);
  _Block_object_dispose(v155, 8);

  _Block_object_dispose(v157, 8);
  _Block_object_dispose(&v159, 8);

  _Block_object_dispose(&v165, 8);
LABEL_62:

  return v8;
}

void __57__RTMapItemProviderPOIHistory_mapItemsWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v165 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 128));
      v9 = [v5 count];
      v10 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138413058;
      v158 = v8;
      v159 = 2048;
      v160 = v9;
      v161 = 2112;
      v162 = v10;
      v163 = 2112;
      v164 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetched place inference query count, %lu, interval, %@, error, %@", buf, 0x2Au);
    }
  }

  v145 = v6;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v146 = v5;
  *(*(*(a1 + 64) + 8) + 24) = [v5 count];
  v156 = a1;
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    goto LABEL_61;
  }

  v11 = 0;
  do
  {
    v12 = [v5 objectAtIndexedSubscript:v11];
    v13 = [v12 placeInference];
    v14 = [v13 mapItem];
    if (!v14)
    {

LABEL_21:
      v23 = a1;
      [*(*(*(a1 + 72) + 8) + 40) addObject:v12];
      [*(*(*(a1 + 80) + 8) + 40) addObject:v12];
      goto LABEL_22;
    }

    v15 = v14;
    v16 = [v12 placeInference];
    v17 = [v16 mapItem];
    v18 = [v17 validMUID];

    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = [v12 placeInference];
    v20 = [v19 mapItem];
    v21 = [v20 mapItemPlaceType];

    if (v21 == 1)
    {
      v22 = 72;
    }

    else
    {
      v22 = 80;
    }

    v23 = a1;
    [*(*(*(a1 + v22) + 8) + 40) addObject:v12];
    v24 = *(*(a1 + 88) + 8);
    v26 = *(v24 + 40);
    v25 = (v24 + 40);
    if (!v26)
    {
      objc_storeStrong(v25, v12);
    }

    v27 = [v12 placeInference];
    v28 = [v27 mapItem];
    v29 = [v28 muid];

    v30 = *(*(*(a1 + 96) + 8) + 40);
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
    v32 = [v30 objectForKeyedSubscript:v31];

    if (!v32)
    {
      v33 = [v12 placeInference];
      v34 = [v33 mapItem];
      v35 = *(*(*(a1 + 96) + 8) + 40);
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
      [v35 setObject:v34 forKeyedSubscript:v36];

      v23 = a1;
    }

    v37 = MEMORY[0x277CCABB0];
    v38 = *(*(v23[13] + 8) + 40);
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
    v40 = [v38 objectForKeyedSubscript:v39];
    [v40 doubleValue];
    v42 = v41;

    v43 = [v12 placeInference];
    [v43 confidence];
    v45 = v44;

    if (v42 >= v45)
    {
      v46 = v42;
    }

    else
    {
      v46 = v45;
    }

    v47 = [v37 numberWithDouble:v46];
    v48 = *(*(v23[13] + 8) + 40);
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
    [v48 setObject:v47 forKeyedSubscript:v49];

LABEL_22:
    ++v11;
  }

  while (*(*(v23[8] + 8) + 24) > v11);
  if ([*(*(v23[10] + 8) + 40) count])
  {
    v152 = 0;
    v50 = 0;
    while (1)
    {
      v51 = v50;
      v52 = v50 + 1;
      v53 = (v50 << 32) + 0x100000000;
      v54 = 1;
      v148 = v50;
      v55 = v50;
      do
      {
        v56 = v55;
        v57 = v52;
        v58 = v53;
        v59 = v54;
        if ([*(*(v23[10] + 8) + 40) count] <= v52)
        {
          break;
        }

        v60 = [*(*(v23[10] + 8) + 40) objectAtIndexedSubscript:v57];
        v61 = [v60 date];
        v62 = [*(*(v23[10] + 8) + 40) objectAtIndexedSubscript:v152];
        v63 = [v62 date];
        v64 = [v61 isEqualToDate:v63];

        v23 = v156;
        v55 = v56 + 1;
        v52 = v57 + 1;
        v53 = v58 + 0x100000000;
        v54 = v59 + 1;
      }

      while ((v64 & 1) != 0);
      v150 = v58;
      if ([*(*(v23[10] + 8) + 40) count] <= v57)
      {
        v65 = 0;
      }

      else
      {
        v65 = [*(*(v23[10] + 8) + 40) objectAtIndexedSubscript:v57];
      }

      v153 = v65;
      if (v148 <= v56)
      {
        break;
      }

LABEL_41:
      v50 = v56 + 1;

      v152 = v150 >> 32;
      if ([*(*(v23[10] + 8) + 40) count] <= (v150 >> 32))
      {
        goto LABEL_42;
      }
    }

    while (2)
    {
      v66 = [*(*(v23[10] + 8) + 40) objectAtIndexedSubscript:v51];
      v67 = [v66 placeInference];
      v68 = [v67 mapItem];
      if (!v68)
      {
        goto LABEL_39;
      }

      v69 = v68;
      v70 = [v66 placeInference];
      v71 = [v70 mapItem];
      v72 = [v71 validMUID];

      if (v72)
      {
        v73 = [v66 placeInference];
        v74 = [v73 mapItem];
        v75 = [v74 muid];

        if (v65)
        {
          v76 = [v65 date];
          v77 = v156;
          goto LABEL_38;
        }

        if (*(*(*(v156 + 64) + 8) + 24) <= 0x63uLL)
        {
          v77 = v156;
          v76 = [*(*(*(v156 + 48) + 8) + 40) endDate];
LABEL_38:
          v78 = [v66 date];
          [v76 timeIntervalSinceDate:v78];
          v80 = v79;

          v81 = MEMORY[0x277CCABB0];
          v82 = *(*(*(v77 + 112) + 8) + 40);
          v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v75];
          v83 = [v82 objectForKeyedSubscript:v67];
          [v83 doubleValue];
          v85 = v84;
          v86 = [v66 placeInference];
          [v86 confidence];
          v88 = [v81 numberWithDouble:v85 + v87 * v80];
          v89 = *(*(*(v77 + 112) + 8) + 40);
          v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v75];
          [v89 setObject:v88 forKeyedSubscript:v90];

          v65 = v153;
LABEL_39:
        }
      }

      ++v51;
      --v59;
      v23 = v156;
      if (!v59)
      {
        goto LABEL_41;
      }

      continue;
    }
  }

LABEL_42:
  if ([*(*(v23[9] + 8) + 40) count])
  {
    v154 = 0;
    v91 = 0;
    while (1)
    {
      v92 = v91 + 1;
      v147 = v91;
      v149 = v91;
      v93 = (v91 << 32) + 0x100000000;
      v94 = 1;
      v95 = v91;
      v96 = v156;
      do
      {
        v97 = v95;
        v98 = v92;
        v99 = v93;
        v100 = v94;
        if ([*(*(*(v156 + 72) + 8) + 40) count] <= v92)
        {
          break;
        }

        v101 = [*(*(*(v156 + 72) + 8) + 40) objectAtIndexedSubscript:v98];
        v102 = [v101 date];
        v103 = [*(*(*(v156 + 72) + 8) + 40) objectAtIndexedSubscript:v154];
        [v103 date];
        v104 = v97;
        v106 = v105 = v99;
        v107 = [v102 isEqualToDate:v106];

        v99 = v105;
        v97 = v104;

        v95 = v104 + 1;
        v92 = v98 + 1;
        v93 = v99 + 0x100000000;
        v94 = v100 + 1;
      }

      while ((v107 & 1) != 0);
      v151 = v99;
      if ([*(*(*(v156 + 72) + 8) + 40) count] <= v98)
      {
        v155 = 0;
      }

      else
      {
        v155 = [*(*(*(v156 + 72) + 8) + 40) objectAtIndexedSubscript:v98];
      }

      v108 = v149;
      if (v147 <= v97)
      {
        break;
      }

LABEL_60:
      v91 = v97 + 1;

      v154 = v151 >> 32;
      if ([*(*(v96[9] + 8) + 40) count] <= (v151 >> 32))
      {
        goto LABEL_61;
      }
    }

    while (2)
    {
      v109 = [*(*(v96[9] + 8) + 40) objectAtIndexedSubscript:v108];
      v110 = [v109 placeInference];
      v111 = [v110 mapItem];
      if (!v111)
      {
        goto LABEL_58;
      }

      v112 = v111;
      v113 = [v109 placeInference];
      v114 = [v113 mapItem];
      v115 = [v114 validMUID];

      if (v115)
      {
        v116 = [v109 placeInference];
        v117 = [v116 mapItem];
        v118 = [v117 muid];

        if (v155)
        {
          v119 = [v155 date];
          goto LABEL_57;
        }

        if (*(*(v96[8] + 8) + 24) <= 0x63uLL)
        {
          v119 = [*(*(v96[6] + 8) + 40) endDate];
LABEL_57:
          v120 = v119;
          v121 = [v109 date];
          [v120 timeIntervalSinceDate:v121];
          v123 = v122;

          v124 = MEMORY[0x277CCABB0];
          v125 = *(*(v96[15] + 8) + 40);
          v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v118];
          v126 = [v125 objectForKeyedSubscript:v110];
          [v126 doubleValue];
          v128 = v127;
          v129 = [v109 placeInference];
          [v129 confidence];
          v131 = [v124 numberWithDouble:v128 + v130 * v123];
          v132 = *(*(v96[15] + 8) + 40);
          v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v118];
          v134 = v132;
          v96 = v156;
          [v134 setObject:v131 forKeyedSubscript:v133];

LABEL_58:
        }
      }

      ++v108;
      if (!--v100)
      {
        goto LABEL_60;
      }

      continue;
    }
  }

LABEL_61:
  v135 = [v146 lastObject];

  if (v135)
  {
    v136 = objc_alloc(MEMORY[0x277CCA970]);
    v137 = [v146 lastObject];
    v138 = [v137 date];
    v139 = MEMORY[0x277CBEAA8];
    v140 = [*(v156 + 32) endDate];
    v141 = [v139 dateWithTimeInterval:v140 sinceDate:-300.0];
    v142 = [v136 initWithStartDate:v138 endDate:v141];
    v143 = *(*(v156 + 48) + 8);
    v144 = *(v143 + 40);
    *(v143 + 40) = v142;
  }

  dispatch_semaphore_signal(*(v156 + 40));
}

@end