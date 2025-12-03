@interface RTBuildingPolygonManager
- (RTBuildingPolygonManager)initWithDistanceCalculator:(id)calculator MapServiceManager:(id)manager;
- (id)_selectClosestPolygonsFromPolygons:(id)polygons locations:(id)locations limit:(unint64_t)limit;
- (void)_fetchClosestBuildingPolygonsFromLocations:(id)locations radius:(double)radius limit:(unint64_t)limit handler:(id)handler;
- (void)fetchClosestBuildingPolygonsFromLocations:(id)locations radius:(double)radius limit:(unint64_t)limit handler:(id)handler;
@end

@implementation RTBuildingPolygonManager

- (RTBuildingPolygonManager)initWithDistanceCalculator:(id)calculator MapServiceManager:(id)manager
{
  calculatorCopy = calculator;
  managerCopy = manager;
  v9 = managerCopy;
  if (!calculatorCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!managerCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTBuildingPolygonManager;
  v10 = [(RTNotifier *)&v16 init];
  p_isa = &v10->super.super.super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_distanceCalculator, calculator);
    objc_storeStrong(p_isa + 4, manager);
  }

  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)fetchClosestBuildingPolygonsFromLocations:(id)locations radius:(double)radius limit:(unint64_t)limit handler:(id)handler
{
  locationsCopy = locations;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__RTBuildingPolygonManager_fetchClosestBuildingPolygonsFromLocations_radius_limit_handler___block_invoke;
  block[3] = &unk_2788C6C20;
  block[4] = self;
  v16 = locationsCopy;
  radiusCopy = radius;
  limitCopy = limit;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = locationsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchClosestBuildingPolygonsFromLocations:(id)locations radius:(double)radius limit:(unint64_t)limit handler:(id)handler
{
  v46[1] = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v13 = [locationsCopy count];
    if (radius > 0.0 && v13)
    {
      limitCopy = limit;
      v30 = handlerCopy;
      v14 = objc_opt_new();
      limit = dispatch_group_create();
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = locationsCopy;
      v16 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v41;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v41 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v40 + 1) + 8 * i);
            dispatch_group_enter(limit);
            mapServiceManager = [(RTBuildingPolygonManager *)self mapServiceManager];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __92__RTBuildingPolygonManager__fetchClosestBuildingPolygonsFromLocations_radius_limit_handler___block_invoke;
            v37[3] = &unk_2788C99C0;
            v38 = v14;
            v39 = limit;
            [mapServiceManager fetchBuildingPolygonsFromLocation:v20 radius:v37 handler:radius];
          }

          v17 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v17);
      }

      queue = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__RTBuildingPolygonManager__fetchClosestBuildingPolygonsFromLocations_radius_limit_handler___block_invoke_2;
      block[3] = &unk_2788C5110;
      block[4] = self;
      v33 = v14;
      v34 = obj;
      handlerCopy = v30;
      v36 = limitCopy;
      v35 = v30;
      v23 = v14;
      dispatch_group_notify(limit, queue, block);
    }

    else
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = NSStringFromSelector(a2);
      limit = [v24 stringWithFormat:@"invalid parameters passed to %@, locations.count, %lu, radius, %.2f, limit, %lu", v25, objc_msgSend(locationsCopy, "count"), *&radius, limit];

      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277D01448];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = limit;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v28 = [v26 errorWithDomain:v27 code:7 userInfo:v23];
      (*(handlerCopy + 2))(handlerCopy, 0, v28);
    }
  }
}

void __92__RTBuildingPolygonManager__fetchClosestBuildingPolygonsFromLocations_radius_limit_handler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 vertices];
        v10 = [v9 count];

        if (v10 >= 3)
        {
          [*(a1 + 32) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __92__RTBuildingPolygonManager__fetchClosestBuildingPolygonsFromLocations_radius_limit_handler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  v4 = [v2 _selectClosestPolygonsFromPolygons:v3 locations:*(a1 + 48) limit:*(a1 + 64)];

  (*(*(a1 + 56) + 16))();
}

- (id)_selectClosestPolygonsFromPolygons:(id)polygons locations:(id)locations limit:(unint64_t)limit
{
  v64 = *MEMORY[0x277D85DE8];
  polygonsCopy = polygons;
  locationsCopy = locations;
  if (limit)
  {
    limitCopy = limit;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityMapService);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138413058;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = [polygonsCopy count];
        *&buf[22] = 2048;
        v61 = [locationsCopy count];
        v62 = 2048;
        limitCopy2 = limit;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, polygon count, %lu, location count, %lu, limit, %lu", buf, 0x2Au);
      }
    }

    if (![polygonsCopy count] || !objc_msgSend(locationsCopy, "count"))
    {
      v38 = 0;
      goto LABEL_40;
    }

    oslog = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = polygonsCopy;
    v47 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v47)
    {
      v45 = *v55;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v55 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v54 + 1) + 8 * i);
          v13 = objc_alloc(MEMORY[0x277D01160]);
          centroid = [v12 centroid];
          [centroid latitude];
          v16 = v15;
          centroid2 = [v12 centroid];
          [centroid2 longitude];
          v19 = [v13 initWithLatitude:0 longitude:v16 horizontalUncertainty:v18 date:-1.0];

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v20 = locationsCopy;
          v21 = [v20 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v21)
          {
            v22 = *v51;
            v23 = 1.79769313e308;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v51 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v50 + 1) + 8 * j);
                distanceCalculator = [(RTBuildingPolygonManager *)self distanceCalculator];
                v49 = 0;
                [distanceCalculator distanceFromLocation:v19 toLocation:v25 error:&v49];
                v28 = v27;
                v29 = v49;

                if (v28 < v23 && v29 == 0)
                {
                  v23 = v28;
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v50 objects:v58 count:16];
            }

            while (v21);
          }

          else
          {
            v23 = 1.79769313e308;
          }

          v31 = objc_alloc(MEMORY[0x277D011C0]);
          v32 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
          v33 = [v31 initWithFirstObject:v32 secondObject:v12];

          if (v33)
          {
            [oslog addObject:v33];
          }
        }

        v47 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v47);
    }

    v34 = [oslog sortedArrayUsingComparator:&__block_literal_global_43];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v61 = 0;
    v35 = [[_RTMap alloc] initWithInput:v34];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __79__RTBuildingPolygonManager__selectClosestPolygonsFromPolygons_locations_limit___block_invoke_2;
    v48[3] = &unk_2788C9A08;
    v48[4] = buf;
    v48[5] = limitCopy;
    v48[6] = aSelector;
    v36 = [(_RTMap *)v35 withBlock:v48];

    if ([obj count] <= limitCopy)
    {
      v37 = v36;
    }

    else
    {
      v37 = [v36 subarrayWithRange:0];
    }

    v38 = v37;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: limit > 0", buf, 2u);
    }

    v38 = 0;
  }

LABEL_40:

  return v38;
}

uint64_t __79__RTBuildingPolygonManager__selectClosestPolygonsFromPolygons_locations_limit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 firstObject];
  v6 = [v4 firstObject];

  v7 = [v5 compare:v6];
  return v7;
}

id __79__RTBuildingPolygonManager__selectClosestPolygonsFromPolygons_locations_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5 < *(a1 + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityMapService);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      v8 = [v3 secondObject];
      v9 = [v3 firstObject];
      [v9 doubleValue];
      v13 = 138412803;
      v14 = v7;
      v15 = 2117;
      v16 = v8;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, sorted location, %{sensitive}@, distance, %.2f", &v13, 0x20u);
    }

    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 + 1;
  v11 = [v3 secondObject];

  return v11;
}

@end