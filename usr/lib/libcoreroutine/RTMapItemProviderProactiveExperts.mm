@interface RTMapItemProviderProactiveExperts
- (BOOL)skipForOptions:(id)a3 error:(id *)a4;
- (RTMapItemProviderProactiveExperts)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 mapServiceManager:(id)a5 parameters:(id)a6 personalizationPortraitManager:(id)a7;
- (RTMapItemProviderProactiveExperts)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 mapServiceManager:(id)a5 personalizationPortraitManager:(id)a6;
- (id)_filterConnectionLocations:(id)a3 location:(id)a4 distance:(double)a5 error:(id *)a6;
- (id)_mapItemsWithConnectionsLocations:(id)a3 options:(id)a4;
- (id)_recentLocationsFrom:(id)a3 error:(id *)a4;
- (id)mapItemsWithOptions:(id)a3 error:(id *)a4;
@end

@implementation RTMapItemProviderProactiveExperts

- (RTMapItemProviderProactiveExperts)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 mapServiceManager:(id)a5 personalizationPortraitManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [[RTMapItemProviderProactiveExpertsParameters alloc] initWithDefaultsManager:v10];
    self = [(RTMapItemProviderProactiveExperts *)self initWithDefaultsManager:v10 distanceCalculator:v11 mapServiceManager:v12 parameters:v14 personalizationPortraitManager:v13];

    v15 = self;
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v18, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (RTMapItemProviderProactiveExperts)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 mapServiceManager:(id)a5 parameters:(id)a6 personalizationPortraitManager:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v16)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: personalizationPortraitManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_17;
  }

  if (!v14)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_16;
  }

  if (!v15)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: parameters";
      goto LABEL_16;
    }

LABEL_17:

    v21 = 0;
    goto LABEL_18;
  }

  v25.receiver = self;
  v25.super_class = RTMapItemProviderProactiveExperts;
  v17 = [(RTMapItemProviderBase *)&v25 initWithDefaultsManager:v12 distanceCalculator:v13];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_personalizationPortraitManager, a7);
    objc_storeStrong(p_isa + 4, a5);
    objc_storeStrong(p_isa + 5, a6);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = p_isa[5];
        *buf = 138412290;
        v27 = v20;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "initialized RTMapItemProviderProactiveExperts with parameters: %@", buf, 0xCu);
      }
    }
  }

  self = p_isa;
  v21 = self;
LABEL_18:

  return v21;
}

- (id)mapItemsWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  [v6 distance];
  v8 = v7;
  v9 = [v6 location];
  v10 = [v6 startDate];
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v10 sinceDate:-16200.0];

  v33 = 0;
  v12 = [(RTMapItemProviderProactiveExperts *)self _recentLocationsFrom:v11 error:&v33];
  v13 = v33;
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v15 = v13;
      v16 = 0;
      *a4 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v32 = 0;
    v17 = [(RTMapItemProviderProactiveExperts *)self _filterConnectionLocations:v12 location:v9 distance:&v32 error:v8];
    v18 = v32;
    v14 = v18;
    if (v18)
    {
      if (a4)
      {
        v19 = v18;
        v16 = 0;
        *a4 = v14;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v28 = objc_alloc(MEMORY[0x277D011B0]);
      v20 = [v6 useBackground];
      v21 = objc_opt_class();
      NSStringFromClass(v21);
      v22 = v30 = v17;
      v23 = [v6 clientIdentifier];
      v29 = [v28 initWithUseBackgroundTraits:v20 analyticsIdentifier:v22 clientIdentifier:v23];

      v24 = [(RTMapItemProviderProactiveExperts *)self _mapItemsWithConnectionsLocations:v30 options:v29];
      v25 = [[_RTMap alloc] initWithInput:v24];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __63__RTMapItemProviderProactiveExperts_mapItemsWithOptions_error___block_invoke;
      v31[3] = &unk_2788C5D78;
      v31[4] = self;
      v26 = [(_RTMap *)v25 withBlock:v31];

      v17 = v30;
      v16 = [(RTMapItemProviderBase *)self filterInferredMapItems:v26 byDistance:v9 fromLocation:2048 andAppendSource:a4 error:v8];
    }
  }

  return v16;
}

id __63__RTMapItemProviderProactiveExperts_mapItemsWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01128];
  v4 = a2;
  v5 = [v3 alloc];
  [*(*(a1 + 32) + 40) confidence];
  v6 = [v5 initWithMapItem:v4 confidence:2048 source:?];

  return v6;
}

- (id)_recentLocationsFrom:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__13;
  v48 = __Block_byref_object_dispose__13;
  v49 = 0;
  v7 = dispatch_semaphore_create(0);
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__13;
  v42 = __Block_byref_object_dispose__13;
  v43 = 0;
  v8 = [(RTMapItemProviderProactiveExperts *)self personalizationPortraitManager];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __64__RTMapItemProviderProactiveExperts__recentLocationsFrom_error___block_invoke;
  v34 = &unk_2788C4490;
  v36 = &v44;
  v37 = &v38;
  v9 = v7;
  v35 = v9;
  [v8 fetchRecentLocationDonationsSince:v6 handler:&v31];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_11];
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v50 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;

      v26 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = 1;
LABEL_8:

  v27 = v24;
  if ((v26 & 1) == 0)
  {
    objc_storeStrong(v45 + 5, v24);
  }

  if (a4)
  {
    v28 = v45[5];
    if (v28)
    {
      *a4 = v28;
    }
  }

  v29 = v39[5];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v29;
}

void __64__RTMapItemProviderProactiveExperts__recentLocationsFrom_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_filterConnectionLocations:(id)a3 location:(id)a4 distance:(double)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v33 = a4;
  if (!v8)
  {
    v34 = 0;
    goto LABEL_27;
  }

  v34 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB58] set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = v8;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_26;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v37;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v36 + 1) + 8 * i);
      v17 = [v16 name];
      if ([v17 length])
      {
        v18 = [v16 name];
        v19 = [v9 containsObject:v18];

        if (v19)
        {
          continue;
        }
      }

      else
      {
      }

      v20 = [v16 location];

      if (!v20)
      {
        goto LABEL_19;
      }

      v21 = [(RTMapItemProviderBase *)self distanceCalculator];
      v22 = [v16 location];
      v35 = v13;
      [v21 distanceFromLocation:v33 toLocation:v22 error:&v35];
      v24 = v23;
      v25 = v35;

      if (v24 <= a5)
      {
        v26 = 0;
      }

      else
      {
        v26 = 3;
      }

      if (v25)
      {
        v26 = 2;
      }

      v13 = v25;
      if (v26 != 3)
      {
        if (v26)
        {
          goto LABEL_26;
        }

LABEL_19:
        [v34 addObject:v16];
        v27 = [v16 name];
        v28 = [v27 length];

        if (v28)
        {
          v29 = [v16 name];
          [v9 addObject:v29];
        }

        continue;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v12);
LABEL_26:

  v8 = v31;
LABEL_27:

  return v34;
}

- (id)_mapItemsWithConnectionsLocations:(id)a3 options:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [(RTMapItemProviderProactiveExperts *)self mapServiceManager];
          v16 = [v14 mapItemUsingMapServiceManager:v15 options:v7];

          if (v16)
          {
            [v8 addObjectsFromArray:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)skipForOptions:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [v4 endDate];
  v6 = [v4 startDate];

  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  return v8 <= 900.0;
}

@end