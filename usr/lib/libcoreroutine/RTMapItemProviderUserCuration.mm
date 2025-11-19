@interface RTMapItemProviderUserCuration
- (RTMapItemProviderUserCuration)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 userCurationStore:(id)a5 visitStore:(id)a6;
- (RTMapItemProviderUserCuration)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 userCurationStore:(id)a5 visitStore:(id)a6 parameters:(id)a7;
- (id)mapItemsWithOptions:(id)a3 error:(id *)a4;
@end

@implementation RTMapItemProviderUserCuration

- (RTMapItemProviderUserCuration)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 userCurationStore:(id)a5 visitStore:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[RTMapItemProviderUserCurationParameters alloc] initWithDefaultsManager:v13];
  v15 = [(RTMapItemProviderUserCuration *)self initWithDefaultsManager:v13 distanceCalculator:v12 userCurationStore:v11 visitStore:v10 parameters:v14];

  return v15;
}

- (RTMapItemProviderUserCuration)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 userCurationStore:(id)a5 visitStore:(id)a6 parameters:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v12)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: defaultsManager";
LABEL_22:
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_23;
  }

  if (!v13)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_22;
  }

  if (!v14)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: userCurationStore";
    goto LABEL_22;
  }

  if (!v15)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: visitStore";
    goto LABEL_22;
  }

  if (!v16)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: parameters";
      goto LABEL_22;
    }

LABEL_23:

    v22 = 0;
    goto LABEL_24;
  }

  v26.receiver = self;
  v26.super_class = RTMapItemProviderUserCuration;
  v18 = [(RTMapItemProviderBase *)&v26 initWithDefaultsManager:v12 distanceCalculator:v13];
  p_isa = &v18->super.super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_visitStore, a6);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 5, a7);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = p_isa[5];
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "initialized RTMapItemProviderUserCuration with parameters, %@", buf, 0xCu);
      }
    }
  }

  self = p_isa;
  v22 = self;
LABEL_24:

  return v22;
}

- (id)mapItemsWithOptions:(id)a3 error:(id *)a4
{
  v167[1] = *MEMORY[0x277D85DE8];
  v115 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      *buf = 138412803;
      *&buf[4] = v6;
      v151 = 2112;
      v152 = v7;
      v153 = 2117;
      v154 = v115;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, invoked with options, %{sensitive}@", buf, 0x20u);
    }
  }

  v8 = dispatch_semaphore_create(0);
  v144 = 0;
  v145 = &v144;
  v146 = 0x3032000000;
  v147 = __Block_byref_object_copy__174;
  v148 = __Block_byref_object_dispose__174;
  v149 = 0;
  v138 = 0;
  v139 = &v138;
  v140 = 0x3032000000;
  v141 = __Block_byref_object_copy__174;
  v142 = __Block_byref_object_dispose__174;
  v143 = 0;
  v9 = [objc_alloc(MEMORY[0x277D01330]) initWithAscending:0 sortIndex:2 limit:&unk_2845A0290];
  v10 = [(RTMapItemProviderUserCuration *)self userCurationStore];
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = __59__RTMapItemProviderUserCuration_mapItemsWithOptions_error___block_invoke;
  v132[3] = &unk_2788C8D88;
  v132[4] = self;
  v137 = a2;
  v133 = v9;
  v135 = &v144;
  v11 = v8;
  v134 = v11;
  v136 = &v138;
  v114 = v133;
  [v10 fetchStoredUserCurationsWithOptions:v133 handler:v132];

  v13 = (v145 + 5);
  v12 = v145[5];
  v14 = v11;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v14, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_142];
    v22 = [MEMORY[0x277CCACC8] callStackSymbols];
    v23 = [v22 filteredArrayUsingPredicate:v21];
    v24 = [v23 firstObject];

    [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v161 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v161 count:1];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

    if (v28)
    {
      v29 = v28;

      v12 = v28;
    }
  }

  objc_storeStrong(v13, v12);
  v30 = v145[5];
  if (v30)
  {
    if (a4)
    {
      v31 = 0;
      *a4 = v30;
      goto LABEL_37;
    }

LABEL_36:
    v31 = 0;
    goto LABEL_37;
  }

  v32 = v139[5];
  if (!v32)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    v64 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      v67 = NSStringFromSelector(a2);
      *buf = 138412803;
      *&buf[4] = v66;
      v151 = 2112;
      v152 = v67;
      v153 = 2117;
      v154 = v114;
      _os_log_impl(&dword_2304B3000, v64, OS_LOG_TYPE_INFO, "%@, %@, no user curations fetched for options, %{sensitive}@, returning early", buf, 0x20u);
    }

    goto LABEL_33;
  }

  v33 = [v32 curatedLabel];
  if (!v33)
  {
    goto LABEL_30;
  }

  v34 = [v139[5] curatedLabel];
  if (([v34 validMUID] & 1) == 0)
  {

    goto LABEL_30;
  }

  v35 = [v139[5] curatedLabel];
  v36 = [v35 address];
  v37 = [v36 mergedThoroughfare];
  v38 = [v37 length] == 0;

  if (v38)
  {
LABEL_30:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    v64 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      v70 = NSStringFromSelector(a2);
      v71 = v139[5];
      *buf = 138412803;
      *&buf[4] = v69;
      v151 = 2112;
      v152 = v70;
      v153 = 2117;
      v154 = v71;
      _os_log_impl(&dword_2304B3000, v64, OS_LOG_TYPE_INFO, "%@, %@, fetched user curation, %{sensitive}@, has an invalid map item and thus will not be surfaced", buf, 0x20u);
    }

LABEL_33:

LABEL_34:
    if (a4)
    {
      v31 = 0;
      *a4 = 0;
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v39 = dispatch_semaphore_create(0);
  v161 = 0;
  v162 = &v161;
  v163 = 0x3032000000;
  v164 = __Block_byref_object_copy__174;
  v165 = __Block_byref_object_dispose__174;
  v166 = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x3032000000;
  v129 = __Block_byref_object_copy__174;
  v130 = __Block_byref_object_dispose__174;
  v131 = 0;
  v40 = objc_alloc(MEMORY[0x277D01340]);
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v42 = [MEMORY[0x277CBEB98] setWithObject:&unk_2845A02A8];
  v43 = [v40 initWithAscending:0 confidence:v41 dateInterval:0 labelVisit:0 limit:&unk_2845A0290 sources:v42];

  v44 = [(RTMapItemProviderUserCuration *)self visitStore];
  v120[0] = MEMORY[0x277D85DD0];
  v120[1] = 3221225472;
  v120[2] = __59__RTMapItemProviderUserCuration_mapItemsWithOptions_error___block_invoke_11;
  v120[3] = &unk_2788C8D88;
  v120[4] = self;
  v125 = a2;
  v121 = v43;
  v123 = &v161;
  v45 = v39;
  v122 = v45;
  v124 = &v126;
  v112 = v121;
  [v44 fetchVisitsWithOptions:v121 handler:v120];

  v47 = (v162 + 5);
  v46 = v162[5];
  dsema = v45;
  v48 = [MEMORY[0x277CBEAA8] now];
  v49 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v49))
  {
    v50 = [MEMORY[0x277CBEAA8] now];
    [v50 timeIntervalSinceDate:v48];
    v52 = v51;
    v53 = objc_opt_new();
    v54 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_142];
    v55 = [MEMORY[0x277CCACC8] callStackSymbols];
    v56 = [v55 filteredArrayUsingPredicate:v54];
    v57 = [v56 firstObject];

    [v53 submitToCoreAnalytics:v57 type:1 duration:v52];
    v58 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v58, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v59 = MEMORY[0x277CCA9B8];
    v167[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v167 count:1];
    v61 = [v59 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v60];

    if (v61)
    {
      v62 = v61;

      v46 = v61;
    }
  }

  objc_storeStrong(v47, v46);
  v63 = v162[5];
  if (!v63)
  {
    if (!v127[5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v83 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          v84 = objc_opt_class();
          v85 = NSStringFromClass(v84);
          v86 = NSStringFromSelector(a2);
          *buf = 138412803;
          *&buf[4] = v85;
          v151 = 2112;
          v152 = v86;
          v153 = 2117;
          v154 = v112;
          _os_log_impl(&dword_2304B3000, v83, OS_LOG_TYPE_INFO, "%@, %@, no visits fetched for options, %{sensitive}@, returning early", buf, 0x20u);
        }
      }

      if (a4)
      {
        v31 = 0;
        *a4 = 0;
        goto LABEL_68;
      }

LABEL_49:
      v31 = 0;
      goto LABEL_68;
    }

    v73 = objc_alloc(MEMORY[0x277D01128]);
    v74 = [v139[5] curatedLabel];
    v75 = [v73 initWithMapItem:v74 confidence:8 source:1.0];

    v76 = [v139[5] visitEntryDate];
    [v76 timeIntervalSinceNow];
    v78 = v77;
    v79 = [(RTMapItemProviderUserCuration *)self parameters];
    [v79 recentCurationOverrideWindow];
    v81 = fabs(v78) < v80;

    if (v81)
    {
      v160 = v75;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
      v82 = 0;
LABEL_61:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v97 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
        {
          v98 = objc_opt_class();
          v99 = NSStringFromClass(v98);
          v100 = NSStringFromSelector(a2);
          v101 = [v31 firstObject];
          *buf = 138413058;
          *&buf[4] = v99;
          v151 = 2112;
          v152 = v100;
          v153 = 2112;
          v154 = v101;
          v155 = 2112;
          v156 = v82;
          _os_log_impl(&dword_2304B3000, v97, OS_LOG_TYPE_INFO, "%@, %@, surfacing filteredInferredMapItems, first object: %@, filter error, %@", buf, 0x2Au);
        }
      }

      if (a4)
      {
        v102 = v82;
        *a4 = v82;
      }

      goto LABEL_68;
    }

    v87 = [v127[5] entry];
    if (v87)
    {
      v88 = [v127[5] exit];
      if (v88)
      {
      }

      else
      {
        v89 = [v127[5] entry];
        v90 = [v139[5] visitEntryDate];
        v91 = [v89 isBeforeDate:v90];

        if (v91)
        {
          v92 = [v115 location];
          v93 = [(RTMapItemProviderUserCuration *)self parameters];
          [v93 distanceThreshold];
          v95 = v94;

          v159 = v75;
          v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:1];
          v119 = 0;
          v31 = [(RTMapItemProviderBase *)self filterInferredMapItems:v96 byDistance:v92 fromLocation:&v119 error:v95];
          v82 = v119;

LABEL_59:
          goto LABEL_61;
        }
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v82 = 0;
      v31 = 0;
      goto LABEL_61;
    }

    v92 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      v103 = objc_opt_class();
      v111 = NSStringFromClass(v103);
      v104 = NSStringFromSelector(a2);
      v105 = [v127[5] entry];
      v106 = [v105 stringFromDate];
      v107 = [v127[5] exit];
      v108 = [v107 stringFromDate];
      v109 = [v139[5] visitEntryDate];
      v110 = [v109 stringFromDate];
      *buf = 138413314;
      *&buf[4] = v111;
      v151 = 2112;
      v152 = v104;
      v153 = 2112;
      v154 = v106;
      v155 = 2112;
      v156 = v108;
      v157 = 2112;
      v158 = v110;
      _os_log_debug_impl(&dword_2304B3000, v92, OS_LOG_TYPE_DEBUG, "%@, %@, current place curation conditions not met so no curation map item will be surfaced, last visit entry date, %@, last visit exit date, %@, latest curation entry date, %@", buf, 0x34u);
    }

    v82 = 0;
    v31 = 0;
    goto LABEL_59;
  }

  if (!a4)
  {
    goto LABEL_49;
  }

  v31 = 0;
  *a4 = v63;
LABEL_68:

  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v161, 8);

LABEL_37:
  _Block_object_dispose(&v138, 8);

  _Block_object_dispose(&v144, 8);

  return v31;
}

void __59__RTMapItemProviderUserCuration_mapItemsWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(*(a1 + 72));
      v22 = *(a1 + 40);
      v23 = 138413059;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      v27 = 2117;
      v28 = v22;
      v29 = 2112;
      v30 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while fetching latest user curation with options, %{sensitive}@, error, %@", &v23, 0x2Au);
    }

    v8 = *(*(a1 + 56) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    if (v5 && [v5 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 72));
        v15 = [v5 firstObject];
        v16 = *(a1 + 40);
        v23 = 138413315;
        v24 = v13;
        v25 = 2112;
        v26 = v14;
        v27 = 2117;
        v28 = v15;
        v29 = 2117;
        v30 = v16;
        v31 = 2112;
        v32 = 0;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, fetched latest dated user curation, %{sensitive}@, options, %{sensitive}@, error, %@", &v23, 0x34u);
      }
    }

    v17 = [v5 firstObject];
    v18 = *(*(a1 + 64) + 8);
    v10 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __59__RTMapItemProviderUserCuration_mapItemsWithOptions_error___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(*(a1 + 72));
      v22 = *(a1 + 40);
      v23 = 138413059;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      v27 = 2117;
      v28 = v22;
      v29 = 2112;
      v30 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@, error occurred while fetching visits with options, %{sensitive}@, error, %@", &v23, 0x2Au);
    }

    v8 = *(*(a1 + 56) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    if (v5 && [v5 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 72));
        v15 = [v5 firstObject];
        v16 = *(a1 + 40);
        v23 = 138413315;
        v24 = v13;
        v25 = 2112;
        v26 = v14;
        v27 = 2117;
        v28 = v15;
        v29 = 2117;
        v30 = v16;
        v31 = 2112;
        v32 = 0;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, fetched last visit, %{sensitive}@, options, %{sensitive}@, error, %@", &v23, 0x34u);
      }
    }

    v17 = [v5 firstObject];
    v18 = *(*(a1 + 64) + 8);
    v10 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

@end