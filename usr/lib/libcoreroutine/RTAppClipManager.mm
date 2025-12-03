@interface RTAppClipManager
- (RTAppClipManager)initWithDistanceCalculator:(id)calculator;
- (RTAppClipManager)initWithProactiveCDNDownloader:(id)downloader distanceCalculator:(id)calculator;
- (id)_selectClosestLocationsFromLocations:(id)locations toLocation:(id)location limit:(unint64_t)limit;
- (void)_fetchNearbyAppClipLocationsFromLocation:(id)location radius:(double)radius limit:(unint64_t)limit handler:(id)handler;
- (void)fetchNearbyAppClipLocationsFromLocation:(id)location radius:(double)radius limit:(unint64_t)limit handler:(id)handler;
@end

@implementation RTAppClipManager

- (RTAppClipManager)initWithDistanceCalculator:(id)calculator
{
  calculatorCopy = calculator;
  if (calculatorCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277D41BA0]);
    self = [(RTAppClipManager *)self initWithProactiveCDNDownloader:v5 distanceCalculator:calculatorCopy];

    selfCopy = self;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator", v9, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTAppClipManager)initWithProactiveCDNDownloader:(id)downloader distanceCalculator:(id)calculator
{
  downloaderCopy = downloader;
  calculatorCopy = calculator;
  if (!calculatorCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_9;
  }

  if (!downloaderCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: procativeCDNDownloader";
    goto LABEL_12;
  }

  v15.receiver = self;
  v15.super_class = RTAppClipManager;
  v9 = [(RTNotifier *)&v15 init];
  p_isa = &v9->super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_distanceCalculator, calculator);
    objc_storeStrong(p_isa + 5, downloader);
  }

  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)_selectClosestLocationsFromLocations:(id)locations toLocation:(id)location limit:(unint64_t)limit
{
  v43 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  locationCopy = location;
  v29 = locationsCopy;
  if (locationCopy)
  {
    v28 = a2;
    oslog = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = locationsCopy;
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v11)
    {
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          distanceCalculator = self->_distanceCalculator;
          v37 = 0;
          [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v14 toLocation:locationCopy error:&v37];
          v17 = v16;
          v18 = v37;
          if (!v18)
          {
            v19 = objc_alloc(MEMORY[0x277D011C0]);
            v20 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
            v21 = [v19 initWithFirstObject:v20 secondObject:v14];

            if (v21)
            {
              [oslog addObject:v21];
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v11);
    }

    v22 = [oslog sortedArrayUsingComparator:&__block_literal_global_49];
    *buf = 0;
    v34 = buf;
    v35 = 0x2020000000;
    v36 = 0;
    v23 = [[_RTMap alloc] initWithInput:v22];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __74__RTAppClipManager__selectClosestLocationsFromLocations_toLocation_limit___block_invoke_2;
    v32[3] = &unk_2788CA300;
    v32[4] = buf;
    v32[5] = v28;
    v24 = [(_RTMap *)v23 withBlock:v32];

    if ([v24 count] <= limit)
    {
      v25 = v24;
    }

    else
    {
      v25 = [v24 subarrayWithRange:0];
    }

    v26 = v25;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
    }

    v26 = 0;
  }

  return v26;
}

uint64_t __74__RTAppClipManager__selectClosestLocationsFromLocations_toLocation_limit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 firstObject];
  v6 = [v4 firstObject];

  v7 = [v5 compare:v6];
  return v7;
}

id __74__RTAppClipManager__selectClosestLocationsFromLocations_toLocation_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityMapService);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(*(*(a1 + 32) + 8) + 24);
      v7 = [v3 secondObject];
      v8 = [v3 firstObject];
      [v8 doubleValue];
      v12 = 138413059;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      v16 = 2117;
      v17 = v7;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, sorted location idx, %lu, location, %{sensitive}@, distance, %.2f", &v12, 0x2Au);
    }
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  v10 = [v3 secondObject];

  return v10;
}

- (void)_fetchNearbyAppClipLocationsFromLocation:(id)location radius:(double)radius limit:(unint64_t)limit handler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  if (!locationCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTAppClipManager _fetchNearbyAppClipLocationsFromLocation:radius:limit:handler:]";
      v27 = 1024;
      LODWORD(v28) = 114;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", buf, 0x12u);
    }
  }

  if (radius < 0.0)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTAppClipManager _fetchNearbyAppClipLocationsFromLocation:radius:limit:handler:]";
      v27 = 1024;
      LODWORD(v28) = 115;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: radius >= 0 (in %s:%d)", buf, 0x12u);
    }
  }

  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityMapService);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = NSStringFromSelector(a2);
        *buf = 138413059;
        v26 = v16;
        v27 = 2117;
        v28 = locationCopy;
        v29 = 2048;
        radiusCopy = radius;
        v31 = 2048;
        limitCopy = limit;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, fetch nearby app clips, location, %{sensitive}@, radius, %.2f, limit, %lu", buf, 0x2Au);
      }
    }

    v17 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTLocation:locationCopy];
    procativeCDNDownloader = self->_procativeCDNDownloader;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __82__RTAppClipManager__fetchNearbyAppClipLocationsFromLocation_radius_limit_handler___block_invoke;
    v19[3] = &unk_2788CA350;
    v19[4] = self;
    v22 = a2;
    v21 = handlerCopy;
    v20 = locationCopy;
    radiusCopy2 = radius;
    limitCopy2 = limit;
    [(ATXProactiveCDNDownloader *)procativeCDNDownloader heroDatasForLocation:v17 completion:v19];
  }
}

void __82__RTAppClipManager__fetchNearbyAppClipLocationsFromLocation_radius_limit_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__RTAppClipManager__fetchNearbyAppClipLocationsFromLocation_radius_limit_handler___block_invoke_2;
  block[3] = &unk_2788CA328;
  v15 = v6;
  v13 = *(a1 + 48);
  v8 = v13;
  v19 = v13;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v16 = v5;
  v17 = v9;
  v18 = v10;
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, block);
}

void __82__RTAppClipManager__fetchNearbyAppClipLocationsFromLocation_radius_limit_handler___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityMapService);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(*(a1 + 72));
      v31 = *(a1 + 32);
      *buf = 138412546;
      v40 = v30;
      v41 = 2112;
      v42 = v31;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityMapService);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = NSStringFromSelector(*(a1 + 72));
        v5 = [*(a1 + 40) count];
        *buf = 138412546;
        v40 = v4;
        v41 = 2048;
        v42 = v5;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, fetched app clip count, %lu", buf, 0x16u);
      }
    }

    v33 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      v32 = v6;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v11 urlHash];

          if (v13)
          {
            v14 = objc_alloc(MEMORY[0x277D01160]);
            [v11 latitude];
            v16 = v15;
            [v11 longitude];
            v18 = v17;
            v19 = [MEMORY[0x277CBEAA8] now];
            v20 = [v14 initWithLatitude:v19 longitude:v16 horizontalUncertainty:v18 date:-1.0];

            v21 = *(a1 + 56);
            v22 = *(*(a1 + 48) + 32);
            v34 = 0;
            [v22 distanceFromLocation:v21 toLocation:v20 error:&v34];
            v24 = v23;
            v25 = v34;
            if (!v25 && v24 < *(a1 + 80))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v26 = _rt_log_facility_get_os_log(RTLogFacilityMapService);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  v27 = NSStringFromSelector(*(a1 + 72));
                  v28 = [v11 urlHash];
                  *buf = 138413059;
                  v40 = v27;
                  v41 = 2117;
                  v42 = v20;
                  v43 = 2048;
                  v44 = v24;
                  v45 = 2112;
                  v46 = v28;
                  _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, fetched app clip location, %{sensitive}@, distance, %f, urlHash, %@", buf, 0x2Au);

                  v6 = v32;
                }
              }

              [v33 addObject:v20];
            }
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v8);
    }

    v29 = [*(a1 + 48) _selectClosestLocationsFromLocations:v33 toLocation:*(a1 + 56) limit:*(a1 + 88)];
    (*(*(a1 + 64) + 16))();
  }
}

- (void)fetchNearbyAppClipLocationsFromLocation:(id)location radius:(double)radius limit:(unint64_t)limit handler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTAppClipManager_fetchNearbyAppClipLocationsFromLocation_radius_limit_handler___block_invoke;
  block[3] = &unk_2788C6C20;
  block[4] = self;
  v16 = locationCopy;
  radiusCopy = radius;
  limitCopy = limit;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = locationCopy;
  dispatch_async(queue, block);
}

@end