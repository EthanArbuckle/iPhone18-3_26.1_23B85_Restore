@interface RTPredictedLocationOfInterestProviderMaps
- (RTPredictedLocationOfInterestProviderMaps)initWithMapsSupportManager:(id)manager;
- (id)_getNextPredictedLocationsOfInterestBackedByHistortyEntryPlaceDisplayFromLocation:(id)location startDate:(id)date timeInterval:(double)interval historyEntryPlaceDisplays:(id)displays;
- (id)_getNextPredictedLocationsOfInterestBackedByHistortyEntryRouteFromLocation:(id)location startDate:(id)date timeInterval:(double)interval historyEntryRoutes:(id)routes;
- (void)fetchNextPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler;
@end

@implementation RTPredictedLocationOfInterestProviderMaps

- (RTPredictedLocationOfInterestProviderMaps)initWithMapsSupportManager:(id)manager
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (managerCopy)
  {
    v17.receiver = self;
    v17.super_class = RTPredictedLocationOfInterestProviderMaps;
    v6 = [(RTPredictedLocationOfInterestProviderMaps *)&v17 init];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        uTF8String = [(RTPredictedLocationOfInterestProviderMaps *)v8 UTF8String];
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v8];
        uTF8String = [v13 UTF8String];
      }

      v14 = dispatch_queue_create(uTF8String, v9);

      queue = v8->_queue;
      v8->_queue = v14;

      objc_storeStrong(&v8->_mapsSupportManager, manager);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTPredictedLocationOfInterestProviderMaps initWithMapsSupportManager:]";
      v20 = 1024;
      v21 = 146;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapsSupportManager (in %s:%d)", buf, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_getNextPredictedLocationsOfInterestBackedByHistortyEntryRouteFromLocation:(id)location startDate:(id)date timeInterval:(double)interval historyEntryRoutes:(id)routes
{
  locationCopy = location;
  routesCopy = routes;
  v9 = objc_opt_new();
  date = [MEMORY[0x277CBEAA8] date];
  v11 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __162__RTPredictedLocationOfInterestProviderMaps__getNextPredictedLocationsOfInterestBackedByHistortyEntryRouteFromLocation_startDate_timeInterval_historyEntryRoutes___block_invoke;
  v19[3] = &unk_2788D2178;
  v20 = date;
  v21 = v11;
  v22 = locationCopy;
  v12 = v9;
  v23 = v12;
  v13 = locationCopy;
  v14 = v11;
  v15 = date;
  [routesCopy enumerateObjectsUsingBlock:v19];

  v16 = v23;
  v17 = v12;

  return v12;
}

void __162__RTPredictedLocationOfInterestProviderMaps__getNextPredictedLocationsOfInterestBackedByHistortyEntryRouteFromLocation_startDate_timeInterval_historyEntryRoutes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 usageDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 < 7200.0)
  {
    v11 = [v6 destinationLocation];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v30 = 0;
    [v12 distanceFromLocation:v13 toLocation:v11 error:&v30];
    v15 = v14;
    v16 = v30;
    if (v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "Distance Calculator error, %@", buf, 0xCu);
      }
    }

    if (v15 <= 100.0 || v15 >= 288000.0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      v19 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v24 = [*(a1 + 48) coordinateToString];
        *buf = 138741251;
        *&buf[4] = v6;
        *&buf[12] = 2117;
        *&buf[14] = v11;
        *&buf[22] = 2048;
        v32 = *&v15;
        v33 = 2117;
        v34 = v24;
        v35 = 2048;
        v36 = 0x4059000000000000;
        v37 = 2048;
        v38 = 0x4111940000000000;
        _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "historyEntryRoute, %{sensitive}@, location, %{sensitive}@, %.2fm from location, %{sensitive}@. not within min/max distance threshold, %.2f/%.2f", buf, 0x3Eu);
      }
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277D01270]) initWithHistoryEntryRoute:v6];
      v19 = v18;
      if (v18)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v32) = 1;
        v20 = [v18 sources];
        v21 = [v20 firstObject];
        v22 = [v21 navigationWasInterrupted];

        if (v22)
        {
          v23 = *(a1 + 56);
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __162__RTPredictedLocationOfInterestProviderMaps__getNextPredictedLocationsOfInterestBackedByHistortyEntryRouteFromLocation_startDate_timeInterval_historyEntryRoutes___block_invoke_12;
          v25[3] = &unk_2788D2150;
          v26 = v23;
          v28 = buf;
          v29 = a4;
          v27 = v19;
          [v26 enumerateObjectsUsingBlock:v25];
        }

        if (*(*&buf[8] + 24) == 1)
        {
          [*(a1 + 56) addObject:v19];
        }

        _Block_object_dispose(buf, 8);
      }
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138740483;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      v32 = 0x40BC200000000000;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "historyEntryRoute, %{sensitive}@, used %.2f seconds ago. exceeds max time interval since used threshold, %.2f", buf, 0x20u);
    }

    goto LABEL_23;
  }

LABEL_24:
}

void __162__RTPredictedLocationOfInterestProviderMaps__getNextPredictedLocationsOfInterestBackedByHistortyEntryRouteFromLocation_startDate_timeInterval_historyEntryRoutes___block_invoke_12(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sources];
  v5 = [v4 firstObject];
  v6 = [v5 navigationWasInterrupted];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v16 = 138740227;
        v17 = v8;
        v18 = 2112;
        v19 = v3;
        v9 = "ignoring prediction for interrupted HistoryEntryRoute, %{sensitive}@. another interrupted HistoryEntryRoute is already being predicted, %@";
LABEL_9:
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, v9, &v16, 0x16u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = [*(a1 + 40) locationOfInterest];
  v11 = [v10 mapItem];
  v12 = [v3 locationOfInterest];
  v13 = [v12 mapItem];
  v14 = [v11 isEqualToMapItem:v13];

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = 138740227;
        v17 = v15;
        v18 = 2112;
        v19 = v3;
        v9 = "ignoring prediction for interrupted HistoryEntryRoute, %{sensitive}@. another HistoryEntryRoute is already being predicted to the same destination, %@";
        goto LABEL_9;
      }

LABEL_10:
    }

LABEL_11:
    **(a1 + 56) = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (id)_getNextPredictedLocationsOfInterestBackedByHistortyEntryPlaceDisplayFromLocation:(id)location startDate:(id)date timeInterval:(double)interval historyEntryPlaceDisplays:(id)displays
{
  locationCopy = location;
  displaysCopy = displays;
  v9 = objc_opt_new();
  date = [MEMORY[0x277CBEAA8] date];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __176__RTPredictedLocationOfInterestProviderMaps__getNextPredictedLocationsOfInterestBackedByHistortyEntryPlaceDisplayFromLocation_startDate_timeInterval_historyEntryPlaceDisplays___block_invoke;
  v17[3] = &unk_2788D21A0;
  v18 = date;
  v19 = locationCopy;
  v11 = v9;
  v20 = v11;
  v12 = locationCopy;
  v13 = date;
  [displaysCopy enumerateObjectsUsingBlock:v17];

  v14 = v20;
  v15 = v11;

  return v11;
}

void __176__RTPredictedLocationOfInterestProviderMaps__getNextPredictedLocationsOfInterestBackedByHistortyEntryPlaceDisplayFromLocation_startDate_timeInterval_historyEntryPlaceDisplays___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 usageDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 < 3600.0)
  {
    v8 = [v3 location];
    v9 = objc_opt_new();
    v10 = *(a1 + 40);
    v17 = 0;
    [v9 distanceFromLocation:v10 toLocation:v8 error:&v17];
    v12 = v11;
    v13 = v17;
    if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v13;
        _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "Distance Calculator error, %@", buf, 0xCu);
      }
    }

    if (v12 <= 100.0 || v12 >= 288000.0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v15 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [*(a1 + 40) coordinateToString];
        *buf = 138413571;
        v19 = v3;
        v20 = 2117;
        v21 = *&v8;
        v22 = 2048;
        v23 = *&v12;
        v24 = 2117;
        v25 = v16;
        v26 = 2048;
        v27 = 0x4059000000000000;
        v28 = 2048;
        v29 = 0x4111940000000000;
        _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "historyEntryPlaceDisplay, %@, location, %{sensitive}@, %.2fm from location, %{sensitive}@. not within min/max distance threshold, %.2f/%.2f", buf, 0x3Eu);
      }
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277D01270]) initWithHistoryEntryPlaceDisplay:v3];
      if (v15)
      {
        [*(a1 + 48) addObject:v15];
      }
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v19 = v3;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = 0x40AC200000000000;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "historyEntryPlaceDisplay, %@, used %.2f seconds ago. exceeds max time interval since used threshold, %.2f", buf, 0x20u);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)fetchNextPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler
{
  criteriaCopy = criteria;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = dispatch_group_create();
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy__179;
    v41[4] = __Block_byref_object_dispose__179;
    v42 = 0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__179;
    v39[4] = __Block_byref_object_dispose__179;
    v40 = 0;
    dispatch_group_enter(v8);
    referenceDate = [criteriaCopy referenceDate];
    [criteriaCopy windowDuration];
    v11 = [referenceDate dateByAddingTimeInterval:v10 * -0.5];

    v12 = objc_alloc(MEMORY[0x277CCA970]);
    [criteriaCopy windowDuration];
    v13 = [v11 dateByAddingTimeInterval:?];
    v14 = [v12 initWithStartDate:v11 endDate:v13];

    v24 = [[RTMapsSupportOptions alloc] initWithDateInterval:v14];
    mapsSupportManager = [(RTPredictedLocationOfInterestProviderMaps *)self mapsSupportManager];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke;
    v34[3] = &unk_2788D21C8;
    v38 = v39;
    v34[4] = self;
    v16 = criteriaCopy;
    v35 = v16;
    v17 = v11;
    v36 = v17;
    v18 = v8;
    v37 = v18;
    [mapsSupportManager fetchHistoryEntryRoutesWithOptions:v24 handler:v34];

    dispatch_group_enter(v18);
    v19 = [[RTMapsSupportOptions alloc] initWithDateInterval:v14];
    mapsSupportManager2 = [(RTPredictedLocationOfInterestProviderMaps *)self mapsSupportManager];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_2;
    v29[3] = &unk_2788D21C8;
    v33 = v41;
    v29[4] = self;
    v30 = v16;
    v21 = v17;
    v31 = v21;
    v22 = v18;
    v32 = v22;
    [mapsSupportManager2 fetchHistoryEntryPlaceDisplaysWithOptions:v19 handler:v29];

    queue = [(RTPredictedLocationOfInterestProviderMaps *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_3;
    block[3] = &unk_2788D2240;
    v27 = v39;
    v28 = v41;
    v26 = handlerCopy;
    dispatch_group_notify(v22, queue, block);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v41, 8);
  }
}

void __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 referenceLocation];
  v7 = *(a1 + 48);
  [*(a1 + 40) windowDuration];
  v8 = [v3 _getNextPredictedLocationsOfInterestBackedByHistortyEntryRouteFromLocation:v6 startDate:v7 timeInterval:v5 historyEntryRoutes:?];

  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 56);

  dispatch_group_leave(v11);
}

void __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 referenceLocation];
  v7 = *(a1 + 48);
  [*(a1 + 40) windowDuration];
  v8 = [v3 _getNextPredictedLocationsOfInterestBackedByHistortyEntryPlaceDisplayFromLocation:v6 startDate:v7 timeInterval:v5 historyEntryPlaceDisplays:?];

  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 56);

  dispatch_group_leave(v11);
}

void __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_3(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_4;
  v9[3] = &unk_2788D2218;
  v9[4] = a1[5];
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:v9];
  v3 = [*(*(a1[6] + 8) + 40) filteredArrayUsingPredicate:v2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [MEMORY[0x277CBEB18] array];
  [v6 addObjectsFromArray:*(*(a1[5] + 8) + 40)];
  [v6 addObjectsFromArray:*(*(a1[6] + 8) + 40)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v6 count];
      *buf = 134217984;
      v11 = v8;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%lu next predicted locations of interest", buf, 0xCu);
    }
  }

  (*(a1[4] + 16))();
}

uint64_t __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_5;
  v11[3] = &unk_2788D21F0;
  v8 = v5;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateObjectsUsingBlock:v11];
  v9 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __103__RTPredictedLocationOfInterestProviderMaps_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(a1 + 32) locationOfInterest];
  v8 = [v7 mapItem];
  v9 = [v6 locationOfInterest];
  v10 = [v9 mapItem];
  v11 = [v8 isEqualToMapItem:v10];

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 32);
        v14 = 138412547;
        v15 = v13;
        v16 = 2117;
        v17 = v6;
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "dropping PLOI backed by historyEntryPlaceDisplay, %@, because it is also predicted by PLOI backed by historyEntryRoute, %{sensitive}@", &v14, 0x16u);
      }
    }

    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

@end