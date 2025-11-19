@interface RTPlaceTypeClassifierExpertFallback
- (RTPlaceTypeClassifierExpertFallback)initWithDistanceCalculator:(id)a3 learnedLocationStore:(id)a4 locationManager:(id)a5 mapServiceManager:(id)a6 visitManager:(id)a7 placeTypeClassifierMetricsCalculator:(id)a8;
- (id)classifyWithError:(id *)a3;
- (id)updatePlace:(id)a3;
@end

@implementation RTPlaceTypeClassifierExpertFallback

- (RTPlaceTypeClassifierExpertFallback)initWithDistanceCalculator:(id)a3 learnedLocationStore:(id)a4 locationManager:(id)a5 mapServiceManager:(id)a6 visitManager:(id)a7 placeTypeClassifierMetricsCalculator:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v27 = a6;
  v26 = a7;
  v18 = a8;
  v25 = v18;
  if (!v15)
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

  if (!v16)
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

  if (!v17)
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

  if (!v27)
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

  if (!v26)
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

  if (!v18)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: placeTypeClassifierMetricsCalculator";
      goto LABEL_22;
    }

LABEL_23:

    v21 = 0;
    goto LABEL_24;
  }

  v28.receiver = self;
  v28.super_class = RTPlaceTypeClassifierExpertFallback;
  v19 = [(RTPlaceTypeClassifierExpertFallback *)&v28 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_distanceCalculator, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 6, a8);
  }

  self = p_isa;
  v21 = self;
LABEL_24:

  return v21;
}

- (id)classifyWithError:(id *)a3
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
  v6 = [(RTPlaceTypeClassifierExpertFallback *)self learnedLocationStore];
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke;
  v136[3] = &unk_2788C4B58;
  v138 = &v146;
  v139 = &v140;
  v7 = v5;
  v137 = v7;
  [v6 fetchLocationOfInterestVisitedLastWithHandler:v136];

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
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
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
    v35 = [(RTPlaceTypeClassifierExpertFallback *)self locationManager];
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __57__RTPlaceTypeClassifierExpertFallback_classifyWithError___block_invoke_3;
    v114[3] = &unk_2788C8390;
    v116 = &v124;
    v117 = &v165;
    v36 = v34;
    v115 = v36;
    [v35 fetchCurrentLocationWithHandler:v114];

    dispatch_group_enter(v36);
    v37 = [(RTPlaceTypeClassifierExpertFallback *)self visitManager];
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
    [v37 fetchStoredVisitsWithOptions:v41 handler:v110];

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
      if (a3)
      {
        v33 = 0;
        *a3 = v51;
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

      v78 = [v131[5] location];
      if (!v78)
      {
        goto LABEL_28;
      }

      v79 = [v131[5] exit];
      v80 = v79 == 0;

      if (!v80)
      {
        goto LABEL_28;
      }

      v81 = [(RTPlaceTypeClassifierExpertFallback *)self distanceCalculator];
      v82 = v166[5];
      v83 = [v131[5] location];
      v109 = 0;
      [v81 distanceFromLocation:v82 toLocation:v83 error:&v109];
      v85 = v84;
      v86 = v109;

      if (v85 < 250.0)
      {
        v87 = [v131[5] location];

        v53 = v87;
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
        v54 = [(RTPlaceTypeClassifierExpertFallback *)self learnedLocationStore];
        v98 = [v54 predicateForObjectsFromCurrentDevice];

        v55 = dispatch_semaphore_create(0);
        v103 = 0;
        v104 = &v103;
        v105 = 0x3032000000;
        v106 = __Block_byref_object_copy__81;
        v107 = __Block_byref_object_dispose__81;
        v108 = 0;
        v56 = [(RTPlaceTypeClassifierExpertFallback *)self learnedLocationStore];
        v101 = v55;
        v102 = COERCE_DOUBLE(v53);
        [v56 fetchPlacesWithinDistance:250.0 location:? predicate:? handler:?];

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
        v61 = [MEMORY[0x277CCACC8] callStackSymbols];
        v62 = [v61 filteredArrayUsingPredicate:v60];
        v63 = [v62 firstObject];

        [v95 submitToCoreAnalytics:v63 type:1 duration:v59];
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
          if (a3)
          {
            *a3 = v77;
          }
        }

        else
        {
          v92 = [(RTPlaceTypeClassifierExpertFallback *)self placeTypeClassifierMetricsCalculator];
          v153 = v104[5];
          v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:1];
          [v92 storeMetricsData:v93 source:18];

          if (a3)
          {
            *a3 = 0;
          }

          v152 = v104[5];
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v152 count:1];
        }

        _Block_object_dispose(&v103, 8);
        v25 = v70;
        goto LABEL_60;
      }

      if (a3)
      {
        v33 = 0;
        *a3 = 0;
        goto LABEL_60;
      }
    }

    v33 = 0;
    goto LABEL_60;
  }

  v33 = 0;
  if (a3)
  {
    *a3 = v32;
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

- (id)updatePlace:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v99 = [MEMORY[0x277CBEAA8] date];
    v98 = [v99 dateByAddingTimeInterval:4838400.0];
    v96 = objc_alloc(MEMORY[0x277D01060]);
    v69 = [v3 mapItem];
    v67 = [v69 address];
    v94 = [v67 identifier];
    v65 = [v3 mapItem];
    v63 = [v65 address];
    v92 = [v63 geoAddressData];
    v61 = [v3 mapItem];
    v59 = [v61 address];
    v90 = [v59 subPremises];
    v58 = [v3 mapItem];
    v57 = [v58 address];
    v88 = [v57 subThoroughfare];
    v56 = [v3 mapItem];
    v55 = [v56 address];
    v86 = [v55 thoroughfare];
    v54 = [v3 mapItem];
    v53 = [v54 address];
    v82 = [v53 subLocality];
    v52 = [v3 mapItem];
    v51 = [v52 address];
    v84 = [v51 locality];
    v50 = [v3 mapItem];
    v49 = [v50 address];
    v80 = [v49 subAdministrativeArea];
    v48 = [v3 mapItem];
    v47 = [v48 address];
    v78 = [v47 administrativeArea];
    v46 = [v3 mapItem];
    v45 = [v46 address];
    v76 = [v45 administrativeAreaCode];
    v44 = [v3 mapItem];
    v43 = [v44 address];
    v73 = [v43 postalCode];
    v42 = [v3 mapItem];
    v41 = [v42 address];
    v71 = [v41 country];
    v40 = [v3 mapItem];
    v39 = [v40 address];
    v32 = [v39 countryCode];
    v38 = [v3 mapItem];
    v37 = [v38 address];
    v29 = [v37 inlandWater];
    v36 = [v3 mapItem];
    v35 = [v36 address];
    v28 = [v35 ocean];
    v34 = [v3 mapItem];
    v33 = [v34 address];
    v4 = [v33 areasOfInterest];
    v31 = [v3 mapItem];
    v30 = [v31 address];
    v5 = [v30 isIsland];
    v6 = [v3 mapItem];
    v7 = [v6 address];
    v8 = [v7 iso3166CountryCode];
    v9 = [v3 mapItem];
    v10 = [v9 address];
    v11 = [v10 iso3166SubdivisionCode];
    LOBYTE(v26) = v5;
    v97 = [v96 initWithIdentifier:v94 geoAddressData:v92 subPremises:v90 subThoroughfare:v88 thoroughfare:v86 subLocality:v82 locality:v84 subAdministrativeArea:v80 administrativeArea:v78 administrativeAreaCode:v76 postalCode:v73 country:v71 countryCode:v32 inlandWater:v29 ocean:v28 areasOfInterest:v4 isIsland:v26 creationDate:v99 expirationDate:v98 iso3166CountryCode:v8 iso3166SubdivisionCode:v11];

    v74 = objc_alloc(MEMORY[0x277D011A0]);
    v91 = [v3 mapItem];
    v95 = [v91 identifier];
    v89 = [v3 mapItem];
    v93 = [v89 name];
    v87 = [v3 mapItem];
    v12 = [v87 category];
    v85 = [v3 mapItem];
    v13 = [v85 categoryMUID];
    v83 = [v3 mapItem];
    v70 = [v83 location];
    v81 = [v3 mapItem];
    v66 = [v81 mapItemPlaceType];
    v79 = [v3 mapItem];
    v64 = [v79 muid];
    v77 = [v3 mapItem];
    v62 = [v77 resultProviderID];
    v72 = [v3 mapItem];
    v60 = [v72 geoMapItemHandle];
    v68 = [v3 mapItem];
    v14 = [v68 geoMapItemIdentifier];
    v15 = [v3 mapItem];
    v16 = [v15 extendedAttributes];
    v17 = [v3 mapItem];
    v18 = [v17 displayLanguage];
    v19 = [v3 mapItem];
    LOBYTE(v27) = [v19 disputed];
    v75 = [v74 initWithIdentifier:v95 name:v93 category:v12 categoryMUID:v13 address:v97 location:v70 source:0x20000 mapItemPlaceType:v66 muid:v64 resultProviderID:v62 geoMapItemHandle:v60 geoMapItemIdentifier:v14 creationDate:v99 expirationDate:v98 extendedAttributes:v16 displayLanguage:v18 disputed:v27];

    v20 = [RTLearnedPlace alloc];
    v21 = [v3 identifier];
    v22 = [v3 customLabel];
    v23 = [(RTLearnedPlace *)v20 initWithIdentifier:v21 type:1 typeSource:8 mapItem:v75 customLabel:v22 creationDate:v99 expirationDate:v98];
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