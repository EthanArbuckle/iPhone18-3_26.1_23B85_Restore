@interface RTMapItemProviderProactiveExperts
- (BOOL)skipForOptions:(id)options error:(id *)error;
- (RTMapItemProviderProactiveExperts)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator mapServiceManager:(id)serviceManager parameters:(id)parameters personalizationPortraitManager:(id)portraitManager;
- (RTMapItemProviderProactiveExperts)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator mapServiceManager:(id)serviceManager personalizationPortraitManager:(id)portraitManager;
- (id)_filterConnectionLocations:(id)locations location:(id)location distance:(double)distance error:(id *)error;
- (id)_mapItemsWithConnectionsLocations:(id)locations options:(id)options;
- (id)_recentLocationsFrom:(id)from error:(id *)error;
- (id)mapItemsWithOptions:(id)options error:(id *)error;
@end

@implementation RTMapItemProviderProactiveExperts

- (RTMapItemProviderProactiveExperts)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator mapServiceManager:(id)serviceManager personalizationPortraitManager:(id)portraitManager
{
  managerCopy = manager;
  calculatorCopy = calculator;
  serviceManagerCopy = serviceManager;
  portraitManagerCopy = portraitManager;
  if (managerCopy)
  {
    v14 = [[RTMapItemProviderProactiveExpertsParameters alloc] initWithDefaultsManager:managerCopy];
    self = [(RTMapItemProviderProactiveExperts *)self initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy mapServiceManager:serviceManagerCopy parameters:v14 personalizationPortraitManager:portraitManagerCopy];

    selfCopy = self;
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v18, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTMapItemProviderProactiveExperts)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator mapServiceManager:(id)serviceManager parameters:(id)parameters personalizationPortraitManager:(id)portraitManager
{
  v28 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  calculatorCopy = calculator;
  serviceManagerCopy = serviceManager;
  parametersCopy = parameters;
  portraitManagerCopy = portraitManager;
  if (!portraitManagerCopy)
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

  if (!serviceManagerCopy)
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

  if (!parametersCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: parameters";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v25.receiver = self;
  v25.super_class = RTMapItemProviderProactiveExperts;
  v17 = [(RTMapItemProviderBase *)&v25 initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_personalizationPortraitManager, portraitManager);
    objc_storeStrong(p_isa + 4, serviceManager);
    objc_storeStrong(p_isa + 5, parameters);
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
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (id)mapItemsWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  [optionsCopy distance];
  v8 = v7;
  location = [optionsCopy location];
  startDate = [optionsCopy startDate];
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:startDate sinceDate:-16200.0];

  v33 = 0;
  v12 = [(RTMapItemProviderProactiveExperts *)self _recentLocationsFrom:v11 error:&v33];
  v13 = v33;
  if (v13)
  {
    v14 = v13;
    if (error)
    {
      v15 = v13;
      v16 = 0;
      *error = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v32 = 0;
    v17 = [(RTMapItemProviderProactiveExperts *)self _filterConnectionLocations:v12 location:location distance:&v32 error:v8];
    v18 = v32;
    v14 = v18;
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        v16 = 0;
        *error = v14;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v28 = objc_alloc(MEMORY[0x277D011B0]);
      useBackground = [optionsCopy useBackground];
      v21 = objc_opt_class();
      NSStringFromClass(v21);
      v22 = v30 = v17;
      clientIdentifier = [optionsCopy clientIdentifier];
      v29 = [v28 initWithUseBackgroundTraits:useBackground analyticsIdentifier:v22 clientIdentifier:clientIdentifier];

      v24 = [(RTMapItemProviderProactiveExperts *)self _mapItemsWithConnectionsLocations:v30 options:v29];
      v25 = [[_RTMap alloc] initWithInput:v24];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __63__RTMapItemProviderProactiveExperts_mapItemsWithOptions_error___block_invoke;
      v31[3] = &unk_2788C5D78;
      v31[4] = self;
      v26 = [(_RTMap *)v25 withBlock:v31];

      v17 = v30;
      v16 = [(RTMapItemProviderBase *)self filterInferredMapItems:v26 byDistance:location fromLocation:2048 andAppendSource:error error:v8];
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

- (id)_recentLocationsFrom:(id)from error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  fromCopy = from;
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
  personalizationPortraitManager = [(RTMapItemProviderProactiveExperts *)self personalizationPortraitManager];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __64__RTMapItemProviderProactiveExperts__recentLocationsFrom_error___block_invoke;
  v34 = &unk_2788C4490;
  v36 = &v44;
  v37 = &v38;
  v9 = v7;
  v35 = v9;
  [personalizationPortraitManager fetchRecentLocationDonationsSince:fromCopy handler:&v31];

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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
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

  if (error)
  {
    v28 = v45[5];
    if (v28)
    {
      *error = v28;
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

- (id)_filterConnectionLocations:(id)locations location:(id)location distance:(double)distance error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  locationCopy = location;
  if (!locationsCopy)
  {
    array = 0;
    goto LABEL_27;
  }

  array = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB58] set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = locationsCopy;
  v10 = locationsCopy;
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
      name = [v16 name];
      if ([name length])
      {
        name2 = [v16 name];
        v19 = [v9 containsObject:name2];

        if (v19)
        {
          continue;
        }
      }

      else
      {
      }

      location = [v16 location];

      if (!location)
      {
        goto LABEL_19;
      }

      distanceCalculator = [(RTMapItemProviderBase *)self distanceCalculator];
      location2 = [v16 location];
      v35 = v13;
      [distanceCalculator distanceFromLocation:locationCopy toLocation:location2 error:&v35];
      v24 = v23;
      v25 = v35;

      if (v24 <= distance)
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
        [array addObject:v16];
        name3 = [v16 name];
        v28 = [name3 length];

        if (v28)
        {
          name4 = [v16 name];
          [v9 addObject:name4];
        }

        continue;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v12);
LABEL_26:

  locationsCopy = v31;
LABEL_27:

  return array;
}

- (id)_mapItemsWithConnectionsLocations:(id)locations options:(id)options
{
  v23 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  optionsCopy = options;
  if (locationsCopy)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(locationsCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = locationsCopy;
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
          mapServiceManager = [(RTMapItemProviderProactiveExperts *)self mapServiceManager];
          v16 = [v14 mapItemUsingMapServiceManager:mapServiceManager options:optionsCopy];

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

- (BOOL)skipForOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  endDate = [optionsCopy endDate];
  startDate = [optionsCopy startDate];

  [endDate timeIntervalSinceDate:startDate];
  v8 = v7;

  return v8 <= 900.0;
}

@end