@interface RTMapItemProviderCurrentPOI
- (RTMapItemProviderCurrentPOI)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator placeInferenceQueryStore:(id)store visitStore:(id)visitStore;
- (RTMapItemProviderCurrentPOI)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator placeInferenceQueryStore:(id)store visitStore:(id)visitStore parameters:(id)parameters;
- (id)mapItemsWithOptions:(id)options error:(id *)error;
@end

@implementation RTMapItemProviderCurrentPOI

- (RTMapItemProviderCurrentPOI)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator placeInferenceQueryStore:(id)store visitStore:(id)visitStore
{
  visitStoreCopy = visitStore;
  storeCopy = store;
  calculatorCopy = calculator;
  managerCopy = manager;
  v14 = [[RTMapItemProviderCurrentPOIParameters alloc] initWithDefaultsManager:managerCopy];
  v15 = [(RTMapItemProviderCurrentPOI *)self initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy placeInferenceQueryStore:storeCopy visitStore:visitStoreCopy parameters:v14];

  return v15;
}

- (RTMapItemProviderCurrentPOI)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator placeInferenceQueryStore:(id)store visitStore:(id)visitStore parameters:(id)parameters
{
  v29 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  calculatorCopy = calculator;
  storeCopy = store;
  visitStoreCopy = visitStore;
  parametersCopy = parameters;
  v17 = parametersCopy;
  if (!managerCopy)
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

  if (!calculatorCopy)
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

  if (!storeCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: placeInferenceQueryStore";
    goto LABEL_22;
  }

  if (!visitStoreCopy)
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

  if (!parametersCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: parameters";
      goto LABEL_22;
    }

LABEL_23:

    selfCopy = 0;
    goto LABEL_24;
  }

  v26.receiver = self;
  v26.super_class = RTMapItemProviderCurrentPOI;
  v18 = [(RTMapItemProviderBase *)&v26 initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy];
  p_isa = &v18->super.super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_placeInferenceQueryStore, store);
    objc_storeStrong(p_isa + 4, visitStore);
    objc_storeStrong(p_isa + 5, parameters);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = p_isa[5];
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "initialized RTMapItemProviderCurrentPOI with parameters, %@", buf, 0xCu);
      }
    }
  }

  self = p_isa;
  selfCopy = self;
LABEL_24:

  return selfCopy;
}

- (id)mapItemsWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__55;
  v63 = __Block_byref_object_dispose__55;
  v64 = 0;
  v32 = objc_opt_new();
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__55;
  v57 = __Block_byref_object_dispose__55;
  v58 = 0;
  visitStore = [(RTMapItemProviderCurrentPOI *)self visitStore];
  v9 = objc_alloc(MEMORY[0x277D01340]);
  v10 = *MEMORY[0x277D01470];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v12 = [MEMORY[0x277CBEB98] setWithObject:&unk_28459DB90];
  v13 = [v9 initWithAscending:0 confidence:v11 dateInterval:0 labelVisit:1 limit:&unk_28459DB78 sources:v12];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke;
  v47[3] = &unk_2788C9720;
  v52 = a2;
  v14 = optionsCopy;
  v48 = v14;
  v50 = &v53;
  v15 = v7;
  v49 = v15;
  v51 = &v59;
  [visitStore fetchVisitsWithOptions:v13 handler:v47];

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__55;
  v45 = __Block_byref_object_dispose__55;
  v46 = 0;
  dispatch_group_enter(v15);
  visitStore2 = [(RTMapItemProviderCurrentPOI *)self visitStore];
  v17 = objc_alloc(MEMORY[0x277D01340]);
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v19 = [MEMORY[0x277CBEB98] setWithObject:&unk_28459DBA8];
  v20 = [v17 initWithAscending:0 confidence:v18 dateInterval:0 labelVisit:0 limit:&unk_28459DB78 sources:v19];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke_18;
  v34[3] = &unk_2788C9798;
  v40 = a2;
  v21 = v14;
  v35 = v21;
  v39 = &v41;
  v22 = v15;
  v36 = v22;
  selfCopy = self;
  v23 = v32;
  v38 = v23;
  [visitStore2 fetchVisitsWithOptions:v20 handler:v34];

  dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  if (!v54[5] && !v42[5])
  {
    if (v60[5])
    {
      [v23 addObject:?];
    }

    location = [v21 location];
    parameters = [(RTMapItemProviderCurrentPOI *)self parameters];
    [parameters distanceThreshold];
    v31 = v30;

    errorCopy2 = error;
    v26 = [(RTMapItemProviderBase *)self filterInferredMapItems:v23 byDistance:location fromLocation:error error:v31];
    if (!error)
    {
      goto LABEL_6;
    }

    v25 = 0;
LABEL_5:
    *errorCopy2 = v25;
LABEL_6:

    goto LABEL_8;
  }

  if (error)
  {
    location = _RTSafeArray();
    v25 = _RTMultiErrorCreate();
    v26 = 0;
    errorCopy2 = error;
    goto LABEL_5;
  }

  v26 = 0;
LABEL_8:

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);

  return v26;
}

void __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 64));
      v9 = [v5 firstObject];
      v10 = *(a1 + 32);
      *buf = 138413059;
      v35 = v8;
      v36 = 2117;
      v37 = v9;
      v38 = 2117;
      v39 = v10;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetched last instant POI visit, %{sensitive}@, options, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }

  if (!v6)
  {
    v11 = [v5 firstObject];
    v12 = [v11 placeInference];

    if (v12 && ([v12 mapItem], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v30 = NSStringFromSelector(*(a1 + 64));
        v31 = [v5 firstObject];
        *buf = 138412803;
        v35 = v30;
        v36 = 2117;
        v37 = v31;
        v38 = 2117;
        v39 = v12;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "%@, fetched visit, %{sensitive}@, has a placeInference, %{sensitive}@ but not a map item this should not happen", buf, 0x20u);
      }

      v24 = objc_alloc(MEMORY[0x277CCA9B8]);
      v25 = *MEMORY[0x277D01448];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"placeInference has a nil mapItem", *MEMORY[0x277CCA450]];
      v33 = v14;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v27 = [v24 initWithDomain:v25 code:0 userInfo:v26];
      v28 = *(*(a1 + 48) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;
    }

    else
    {
      v14 = [v12 mapItem];
      if ([v14 validMUID])
      {
        v15 = [v12 mapItem];
        v16 = [v15 address];
        v17 = [v16 mergedThoroughfare];
        v18 = [v17 length];

        if (!v18)
        {
LABEL_16:
          dispatch_group_leave(*(a1 + 40));

          goto LABEL_17;
        }

        v19 = objc_alloc(MEMORY[0x277D01128]);
        v20 = [v12 mapItem];
        [v12 confidence];
        v21 = [v19 initWithMapItem:v20 confidence:0x10000 source:?];

        v22 = *(*(a1 + 56) + 8);
        v14 = *(v22 + 40);
        *(v22 + 40) = v21;
      }
    }

    goto LABEL_16;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  dispatch_group_leave(*(a1 + 40));
LABEL_17:
}

void __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 72));
      v10 = *(a1 + 32);
      *buf = 138413059;
      *&buf[4] = v9;
      *&buf[12] = 2117;
      *&buf[14] = v7;
      *&buf[22] = 2117;
      v61 = v10;
      LOWORD(v62) = 2112;
      *(&v62 + 2) = v6;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, fetched last visit, %{sensitive}@, options, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }

  if (!v6)
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = [v7 entry];
    if (v12)
    {
      v13 = [v7 exit];
      if (v13)
      {
      }

      else
      {
        v14 = [v7 entry];
        v15 = [v14 isBeforeDate:v11];

        if (v15)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v61 = __Block_byref_object_copy__55;
          *&v62 = __Block_byref_object_dispose__55;
          *(&v62 + 1) = 0;
          v16 = dispatch_semaphore_create(0);
          v17 = [*(a1 + 48) placeInferenceQueryStore];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke_20;
          v56[3] = &unk_2788C6CE8;
          v58 = buf;
          v59 = *(a1 + 64);
          v18 = v16;
          v57 = v18;
          [v17 fetchPlaceInferenceQueriesWithDateInterval:0 ascending:0 limit:&unk_28459DB78 handler:v56];

          v19 = *(*(a1 + 64) + 8);
          v21 = *(v19 + 40);
          v20 = (v19 + 40);
          obj = v21;
          dsema = v18;
          v46 = [MEMORY[0x277CBEAA8] now];
          v22 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(dsema, v22))
          {
            v44 = [MEMORY[0x277CBEAA8] now];
            [v44 timeIntervalSinceDate:v46];
            v24 = v23;
            v42 = objc_opt_new();
            v43 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_41];
            v25 = [MEMORY[0x277CCACC8] callStackSymbols];
            v26 = [v25 filteredArrayUsingPredicate:v43];
            v27 = [v26 firstObject];

            [v42 submitToCoreAnalytics:v27 type:1 duration:v24];
            v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              *v64 = 0;
              _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v64, 2u);
            }

            v29 = MEMORY[0x277CCA9B8];
            v63 = *MEMORY[0x277CCA450];
            *v64 = @"semaphore wait timeout";
            v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
            v31 = [v29 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v30];

            if (v31)
            {
              v32 = v31;

              obj = v31;
            }
          }

          objc_storeStrong(v20, obj);
          if (*(*(*(a1 + 64) + 8) + 40))
          {
            dispatch_group_leave(*(a1 + 40));
          }

          else
          {
            v47 = objc_alloc(MEMORY[0x277CCA970]);
            v33 = MEMORY[0x277CBEAA8];
            v34 = [*(*&buf[8] + 40) date];
            v35 = [v33 dateWithTimeInterval:v34 sinceDate:-0.5];
            v36 = MEMORY[0x277CBEAA8];
            v37 = [*(*&buf[8] + 40) date];
            v38 = [v36 dateWithTimeInterval:v37 sinceDate:0.5];
            v48 = [v47 initWithStartDate:v35 endDate:v38];

            v39 = [*(a1 + 48) placeInferenceQueryStore];
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke_22;
            v50[3] = &unk_2788C9770;
            v55 = *(a1 + 72);
            v40 = v48;
            v41 = *(a1 + 64);
            v51 = v40;
            v54 = v41;
            v52 = *(a1 + 40);
            v53 = *(a1 + 56);
            [v39 fetchPlaceInferenceQueriesWithDateInterval:v40 ascending:0 handler:v50];
          }

          _Block_object_dispose(buf, 8);
          goto LABEL_19;
        }
      }
    }

    dispatch_group_leave(*(a1 + 40));
LABEL_19:

    goto LABEL_20;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  dispatch_group_leave(*(a1 + 40));
LABEL_20:
}

void __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a2 firstObject];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(*(a1 + 56));
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412803;
      v14 = v11;
      v15 = 2117;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, fetched last place inference query, %{sensitive}@, error, %@", &v13, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 64));
      v9 = [v5 count];
      v10 = *(a1 + 32);
      *buf = 138413058;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetched place inference query count, %lu, interval, %@, error, %@", buf, 0x2Au);
    }
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke_23;
    v11[3] = &unk_2788C9748;
    v13 = *(a1 + 64);
    v12 = *(a1 + 48);
    [v5 enumerateObjectsUsingBlock:v11];
    dispatch_group_leave(*(a1 + 40));
  }
}

void __57__RTMapItemProviderCurrentPOI_mapItemsWithOptions_error___block_invoke_23(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 placeInference];
  v7 = [v6 mapItem];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [v5 placeInference];
  v10 = [v9 mapItem];
  if (![v10 validMUID])
  {

LABEL_12:
    goto LABEL_13;
  }

  v23 = a1;
  v24 = a3;
  v11 = [v5 placeInference];
  v12 = [v11 mapItem];
  v13 = [v12 address];
  v14 = [v13 mergedThoroughfare];
  v15 = [v14 length];

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v22 = NSStringFromSelector(*(v23 + 40));
        *buf = 138412803;
        v26 = v22;
        v27 = 2048;
        v28 = v24;
        v29 = 2117;
        v30 = v5;
        _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@, idx, %lu, place inference query, %{sensitive}@", buf, 0x20u);
      }
    }

    v17 = objc_alloc(MEMORY[0x277D01128]);
    v18 = [v5 placeInference];
    v19 = [v18 mapItem];
    v20 = [v5 placeInference];
    [v20 confidence];
    v21 = [v17 initWithMapItem:v19 confidence:0x10000 source:?];

    if (v21)
    {
      [*(v23 + 32) addObject:v21];
    }
  }

LABEL_13:
}

@end