@interface RTMapItemProviderEventKit
- (RTMapItemProviderEventKit)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 eventManager:(id)a5 mapServiceManager:(id)a6;
- (RTMapItemProviderEventKit)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 eventManager:(id)a5 mapServiceManager:(id)a6 parameters:(id)a7;
- (id)mapItemsWithOptions:(id)a3 error:(id *)a4;
@end

@implementation RTMapItemProviderEventKit

- (RTMapItemProviderEventKit)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 eventManager:(id)a5 mapServiceManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [v10 objectForKey:@"RTDefaultsMapItemProviderEventKitConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      v16 = v15;
    }

    else
    {
      v16 = 0.95;
    }

    v19 = [[RTMapItemProviderEventKitParameters alloc] initWithConfidence:v16];
    self = [(RTMapItemProviderEventKit *)self initWithDefaultsManager:v10 distanceCalculator:v11 eventManager:v12 mapServiceManager:v13 parameters:v19];

    v18 = self;
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v21, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (RTMapItemProviderEventKit)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 eventManager:(id)a5 mapServiceManager:(id)a6 parameters:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v14)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: eventManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_17;
  }

  if (!v15)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_16;
  }

  if (!v16)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: parameters";
      goto LABEL_16;
    }

LABEL_17:

    v22 = 0;
    goto LABEL_18;
  }

  v26.receiver = self;
  v26.super_class = RTMapItemProviderEventKit;
  v18 = [(RTMapItemProviderBase *)&v26 initWithDefaultsManager:v12 distanceCalculator:v13];
  p_isa = &v18->super.super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_eventManager, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = p_isa[5];
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "initialized RTMapItemProviderEventKit with parameters, %@", buf, 0xCu);
      }
    }
  }

  self = p_isa;
  v22 = self;
LABEL_18:

  return v22;
}

- (id)mapItemsWithOptions:(id)a3 error:(id *)a4
{
  v123 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 distance];
  v6 = v5;
  v80 = v4;
  v69 = [v4 location];
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  v71 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v7 sinceDate:-3600.0];

  v70 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:3600.0];

  v74 = [MEMORY[0x277CBEB18] array];
  v75 = [MEMORY[0x277CBEB18] array];
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__200;
  v106 = __Block_byref_object_dispose__200;
  v107 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__200;
  v100 = __Block_byref_object_dispose__200;
  v101 = 0;
  v9 = dispatch_semaphore_create(0);
  v10 = [(RTMapItemProviderEventKit *)self eventManager];
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __55__RTMapItemProviderEventKit_mapItemsWithOptions_error___block_invoke;
  v92[3] = &unk_2788C4490;
  v94 = &v102;
  v95 = &v96;
  v11 = v9;
  v93 = v11;
  [v10 fetchEventsBetweenStartDate:v71 endDate:v70 handler:v92];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  v15 = dispatch_semaphore_wait(v12, v14);
  v16 = MEMORY[0x277D01448];
  if (v15)
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v13];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_158];
    v22 = [MEMORY[0x277CCACC8] callStackSymbols];
    v23 = [v22 filteredArrayUsingPredicate:v21];
    v24 = [v23 firstObject];

    [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *v114 = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v114, 2u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v108 = *MEMORY[0x277CCA450];
    *v114 = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:&v108 count:1];
    v28 = [v26 errorWithDomain:*v16 code:15 userInfo:v27];

    if (v28)
    {
      v29 = v28;

      v30 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = 1;
LABEL_8:

  v81 = v28;
  if ((v30 & 1) == 0)
  {
    objc_storeStrong(v97 + 5, v28);
  }

  if (v97[5])
  {
    [v75 addObject:?];
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v103[5];
  v31 = [obj countByEnumeratingWithState:&v88 objects:v120 count:16];
  if (v31)
  {
    v77 = *v89;
    v72 = *v16;
    v73 = *MEMORY[0x277CCA450];
    do
    {
      v78 = v31;
      for (i = 0; i != v78; ++i)
      {
        if (*v89 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v88 + 1) + 8 * i);
        v34 = [v33 locationMapItemHandle];

        if (v34)
        {
          *v114 = 0;
          v115 = v114;
          v116 = 0x3032000000;
          v117 = __Block_byref_object_copy__200;
          v118 = __Block_byref_object_dispose__200;
          v119 = 0;
          v108 = 0;
          v109 = &v108;
          v110 = 0x3032000000;
          v111 = __Block_byref_object_copy__200;
          v112 = __Block_byref_object_dispose__200;
          v113 = 0;
          v35 = dispatch_semaphore_create(0);

          v36 = objc_alloc(MEMORY[0x277D011B0]);
          v37 = [v80 useBackground];
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = [v80 clientIdentifier];
          v41 = [v36 initWithUseBackgroundTraits:v37 analyticsIdentifier:v39 clientIdentifier:v40];

          v42 = [(RTMapItemProviderEventKit *)self mapServiceManager];
          v43 = [v33 locationMapItemHandle];
          v84[0] = MEMORY[0x277D85DD0];
          v84[1] = 3221225472;
          v84[2] = __55__RTMapItemProviderEventKit_mapItemsWithOptions_error___block_invoke_2;
          v84[3] = &unk_2788C61E8;
          v86 = &v108;
          v87 = v114;
          v44 = v35;
          v85 = v44;
          [v42 fetchMapItemFromHandle:v43 options:v41 handler:v84];

          v12 = v44;
          v45 = [MEMORY[0x277CBEAA8] now];
          v46 = dispatch_time(0, 3600000000000);
          if (!dispatch_semaphore_wait(v12, v46))
          {
            goto LABEL_23;
          }

          v47 = [MEMORY[0x277CBEAA8] now];
          [v47 timeIntervalSinceDate:v45];
          v49 = v48;
          v50 = objc_opt_new();
          v51 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_158];
          v52 = [MEMORY[0x277CCACC8] callStackSymbols];
          v53 = [v52 filteredArrayUsingPredicate:v51];
          v54 = [v53 firstObject];

          [v50 submitToCoreAnalytics:v54 type:1 duration:v49];
          v55 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v55, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v56 = MEMORY[0x277CCA9B8];
          v121 = v73;
          *buf = @"semaphore wait timeout";
          v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v121 count:1];
          v58 = [v56 errorWithDomain:v72 code:15 userInfo:v57];

          if (v58)
          {
            v59 = v58;

            v60 = 0;
          }

          else
          {
LABEL_23:
            v60 = 1;
            v58 = v81;
          }

          v61 = v58;
          if ((v60 & 1) == 0)
          {
            objc_storeStrong(v115 + 5, v58);
          }

          if (*(v115 + 5))
          {
            [v75 addObject:?];
          }

          if (v109[5])
          {
            [v74 addObject:?];
          }

          _Block_object_dispose(&v108, 8);
          _Block_object_dispose(v114, 8);

          v81 = v61;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v88 objects:v120 count:16];
    }

    while (v31);
  }

  v62 = [[_RTMap alloc] initWithInput:v74];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __55__RTMapItemProviderEventKit_mapItemsWithOptions_error___block_invoke_3;
  v83[3] = &unk_2788C5D78;
  v83[4] = self;
  v63 = [(_RTMap *)v62 withBlock:v83];

  v82 = 0;
  v64 = [(RTMapItemProviderBase *)self filterInferredMapItems:v63 byDistance:v69 fromLocation:256 andAppendSource:&v82 error:v6];
  v65 = v82;

  if (v65)
  {
    [v75 addObject:v65];
  }

  if (a4 && [v75 count])
  {
    v66 = _RTSafeArray();
    *a4 = _RTMultiErrorCreate();
  }

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v102, 8);

  return v64;
}

void __55__RTMapItemProviderEventKit_mapItemsWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __55__RTMapItemProviderEventKit_mapItemsWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

id __55__RTMapItemProviderEventKit_mapItemsWithOptions_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01128];
  v4 = a2;
  v5 = [v3 alloc];
  [*(*(a1 + 32) + 40) confidence];
  v6 = [v5 initWithMapItem:v4 confidence:256 source:?];

  return v6;
}

@end