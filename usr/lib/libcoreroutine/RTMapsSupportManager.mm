@interface RTMapsSupportManager
- (RTMapsSupportManager)initWithMapServiceManager:(id)manager;
- (id)storeChangeNotificationClasses;
- (id)stringForQueryType:(int64_t)type;
- (int)castReferenceFrame:(int)frame;
- (int64_t)queryTypeForMapsSyncClass:(Class)class;
- (void)_clearParkedCarBulletin;
- (void)_fetchCollectionPlaceItemsWithOptions:(id)options handler:(id)handler;
- (void)_fetchFavoriteItemsWithHandler:(id)handler;
- (void)_fetchFavoritePlacesWithOptions:(id)options handler:(id)handler;
- (void)_fetchHistoryDirectionsItemsWithOptions:(id)options handler:(id)handler;
- (void)_fetchHistoryEntryPlaceDisplaysWithOptions:(id)options handler:(id)handler;
- (void)_fetchHistoryEntryRoutesWithOptions:(id)options handler:(id)handler;
- (void)_fetchHistoryPlaceItemsWithOptions:(id)options handler:(id)handler;
- (void)_fetchPinnedPlacesWithHandler:(id)handler;
- (void)_setup;
- (void)_showParkedCarBulletinForEvent:(id)event;
- (void)_showParkedCarReplacementBulletinForEvent:(id)event replacingEvent:(id)replacingEvent;
- (void)_shutdownWithHandler:(id)handler;
- (void)fetchFavoritePlacesWithHandler:(id)handler;
- (void)fetchFavoritePlacesWithOptions:(id)options handler:(id)handler;
- (void)fetchHistoryEntryPlaceDisplaysWithOptions:(id)options handler:(id)handler;
- (void)fetchHistoryEntryRoutesWithOptions:(id)options handler:(id)handler;
- (void)fetchPinnedPlacesWithHandler:(id)handler;
- (void)storeDidChange:(id)change;
@end

@implementation RTMapsSupportManager

- (RTMapsSupportManager)initWithMapServiceManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v11.receiver = self;
    v11.super_class = RTMapsSupportManager;
    v6 = [(RTNotifier *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_mapServiceManager, manager);
      [(RTService *)v7 setup];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapServiceManager", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_setup
{
  storeChangeNotificationClasses = [(RTMapsSupportManager *)self storeChangeNotificationClasses];
  storeSubscriptionTypes = self->storeSubscriptionTypes;
  self->storeSubscriptionTypes = storeChangeNotificationClasses;

  mEMORY[0x277D26670] = [MEMORY[0x277D26670] sharedStore];
  [mEMORY[0x277D26670] subscribe:self];
}

- (void)_shutdownWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)fetchFavoritePlacesWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__RTMapsSupportManager_fetchFavoritePlacesWithHandler___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_async(queue, v6);
  }
}

- (void)fetchFavoritePlacesWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__RTMapsSupportManager_fetchFavoritePlacesWithOptions_handler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v10 = optionsCopy;
    v11 = handlerCopy;
    dispatch_async(queue, block);
  }
}

- (void)fetchPinnedPlacesWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__RTMapsSupportManager_fetchPinnedPlacesWithHandler___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_async(queue, v6);
  }
}

- (void)fetchHistoryEntryPlaceDisplaysWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__RTMapsSupportManager_fetchHistoryEntryPlaceDisplaysWithOptions_handler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v10 = optionsCopy;
    v11 = handlerCopy;
    dispatch_async(queue, block);
  }
}

- (void)fetchHistoryEntryRoutesWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__RTMapsSupportManager_fetchHistoryEntryRoutesWithOptions_handler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v10 = optionsCopy;
    v11 = handlerCopy;
    dispatch_async(queue, block);
  }
}

- (void)_showParkedCarBulletinForEvent:(id)event
{
  v8 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = eventCopy;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Posting parked car bulletin %@", &v6, 0xCu);
    }
  }

  v5 = objc_alloc_init(getMSPMapsPushDaemonRemoteProxyClass());
  [v5 showParkedCarBulletinForEvent:eventCopy];
}

- (void)_showParkedCarReplacementBulletinForEvent:(id)event replacingEvent:(id)replacingEvent
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  replacingEventCopy = replacingEvent;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = eventCopy;
      v11 = 2112;
      v12 = replacingEventCopy;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Posting replacement bulletin, newEvent, %@, oldEvent, %@", &v9, 0x16u);
    }
  }

  v8 = objc_alloc_init(getMSPMapsPushDaemonRemoteProxyClass());
  [v8 showParkedCarReplacementBulletinForEvent:eventCopy replacingEvent:replacingEventCopy];
}

- (void)_clearParkedCarBulletin
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Clearing parked car bulletin", v4, 2u);
    }
  }

  v3 = objc_alloc_init(getMSPMapsPushDaemonRemoteProxyClass());
  [v3 clearParkedCarBulletin];
}

- (void)_fetchCollectionPlaceItemsWithOptions:(id)options handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTMapsSupportManager _fetchCollectionPlaceItemsWithOptions:handler:]";
      v27 = 1024;
      v28 = 222;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  location = [optionsCopy location];

  if (location)
  {
    v11 = objc_alloc(MEMORY[0x277D26680]);
    location2 = [optionsCopy location];
    [location2 latitude];
    v14 = v13;
    location3 = [optionsCopy location];
    [location3 longitude];
    v17 = v16;
    [optionsCopy distance];
    v19 = [v11 initWithCenterLatitude:v14 centerLongitude:v17 squareSideLengthMeters:v18];

    location = [objc_alloc(MEMORY[0x277D26678]) initWithPredicate:v19 sortDescriptors:0 range:0];
  }

  v20 = objc_alloc_init(MEMORY[0x277D26610]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__RTMapsSupportManager__fetchCollectionPlaceItemsWithOptions_handler___block_invoke;
  v22[3] = &unk_2788C5508;
  v23 = handlerCopy;
  v24 = a2;
  v22[4] = self;
  v21 = handlerCopy;
  [v20 fetchWithOptions:location completionHandler:v22];
}

void __70__RTMapsSupportManager__fetchCollectionPlaceItemsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTMapsSupportManager__fetchCollectionPlaceItemsWithOptions_handler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __70__RTMapsSupportManager__fetchCollectionPlaceItemsWithOptions_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      v5 = [*(a1 + 32) count];
      v6 = *(a1 + 40);
      v7 = 138412802;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, %lu items from query, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_fetchFavoriteItemsWithHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTMapsSupportManager _fetchFavoriteItemsWithHandler:]";
      v20 = 1024;
      v21 = 249;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v7 = [MEMORY[0x277D26680] mapsFavoritesPredicateWithHidden:0 includeNearbyTransit:0];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D26678]) initWithPredicate:v7 sortDescriptors:0 range:0];
    v9 = objc_alloc_init(MEMORY[0x277D26628]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__RTMapsSupportManager__fetchFavoriteItemsWithHandler___block_invoke;
    v13[3] = &unk_2788C5508;
    v13[4] = self;
    v15 = a2;
    v14 = handlerCopy;
    [v9 fetchWithOptions:v8 completionHandler:v13];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"nil predicate";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v8 = [v10 errorWithDomain:v11 code:8 userInfo:v12];

    (*(handlerCopy + 2))(handlerCopy, 0, v8);
  }
}

void __55__RTMapsSupportManager__fetchFavoriteItemsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTMapsSupportManager__fetchFavoriteItemsWithHandler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __55__RTMapsSupportManager__fetchFavoriteItemsWithHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      v5 = [*(a1 + 32) count];
      v6 = *(a1 + 40);
      v7 = 138412802;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, %lu items from query, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_fetchHistoryPlaceItemsWithOptions:(id)options handler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTMapsSupportManager _fetchHistoryPlaceItemsWithOptions:handler:]";
      v26 = 1024;
      v27 = 277;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  dateInterval = [optionsCopy dateInterval];

  if (dateInterval)
  {
    v11 = MEMORY[0x277D26680];
    dateInterval2 = [optionsCopy dateInterval];
    startDate = [dateInterval2 startDate];
    v23[0] = startDate;
    dateInterval3 = [optionsCopy dateInterval];
    endDate = [dateInterval3 endDate];
    v23[1] = endDate;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v17 = [v11 queryPredicateWithFormat:@"createTime >= %@ && createTime <= %@" argumentArray:v16];

    dateInterval = [objc_alloc(MEMORY[0x277D26678]) initWithPredicate:v17 sortDescriptors:0 range:0];
  }

  v18 = objc_alloc_init(MEMORY[0x277D26640]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__RTMapsSupportManager__fetchHistoryPlaceItemsWithOptions_handler___block_invoke;
  v20[3] = &unk_2788C5508;
  v21 = handlerCopy;
  v22 = a2;
  v20[4] = self;
  v19 = handlerCopy;
  [v18 fetchWithOptions:dateInterval completionHandler:v20];
}

void __67__RTMapsSupportManager__fetchHistoryPlaceItemsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTMapsSupportManager__fetchHistoryPlaceItemsWithOptions_handler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __67__RTMapsSupportManager__fetchHistoryPlaceItemsWithOptions_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      v5 = [*(a1 + 32) count];
      v6 = *(a1 + 40);
      v7 = 138412802;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, %lu items from query, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_fetchHistoryDirectionsItemsWithOptions:(id)options handler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTMapsSupportManager _fetchHistoryDirectionsItemsWithOptions:handler:]";
      v26 = 1024;
      v27 = 304;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  dateInterval = [optionsCopy dateInterval];

  if (dateInterval)
  {
    v11 = MEMORY[0x277D26680];
    dateInterval2 = [optionsCopy dateInterval];
    startDate = [dateInterval2 startDate];
    v23[0] = startDate;
    dateInterval3 = [optionsCopy dateInterval];
    endDate = [dateInterval3 endDate];
    v23[1] = endDate;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v17 = [v11 queryPredicateWithFormat:@"createTime >= %@ && createTime <= %@" argumentArray:v16];

    dateInterval = [objc_alloc(MEMORY[0x277D26678]) initWithPredicate:v17 sortDescriptors:0 range:0];
  }

  v18 = objc_alloc_init(MEMORY[0x277D26630]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__RTMapsSupportManager__fetchHistoryDirectionsItemsWithOptions_handler___block_invoke;
  v20[3] = &unk_2788C5508;
  v21 = handlerCopy;
  v22 = a2;
  v20[4] = self;
  v19 = handlerCopy;
  [v18 fetchWithOptions:dateInterval completionHandler:v20];
}

void __72__RTMapsSupportManager__fetchHistoryDirectionsItemsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTMapsSupportManager__fetchHistoryDirectionsItemsWithOptions_handler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __72__RTMapsSupportManager__fetchHistoryDirectionsItemsWithOptions_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      v5 = [*(a1 + 32) count];
      v6 = *(a1 + 40);
      v7 = 138412802;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, %lu items from query, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_fetchFavoritePlacesWithOptions:(id)options handler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__RTMapsSupportManager__fetchFavoritePlacesWithOptions_handler___block_invoke;
    v9[3] = &unk_2788C4550;
    v9[4] = self;
    v10 = handlerCopy;
    [(RTMapsSupportManager *)self _fetchCollectionPlaceItemsWithOptions:options handler:v9];
    v8 = v10;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[RTMapsSupportManager _fetchFavoritePlacesWithOptions:handler:]";
      v13 = 1024;
      v14 = 333;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __64__RTMapsSupportManager__fetchFavoritePlacesWithOptions_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v29 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v6;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v31 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [v10 mapItemStorage];

          if (v11)
          {
            v12 = a1;
            v13 = [*(a1 + 32) mapServiceManager];
            v14 = [MEMORY[0x277CCAD78] UUID];
            v15 = [v10 mapItemStorage];
            v16 = [MEMORY[0x277CBEAA8] date];
            v32 = 0;
            v17 = [v13 mapItemWithIdentifier:v14 geoMapItemStorage:v15 source:16 creationDate:v16 error:&v32];
            v18 = v32;

            if (v18)
            {
              v19 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138740227;
                v38 = v10;
                v39 = 2112;
                v40 = v18;
                _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "failed to geocode a place item, %{sensitive}@, error, %@", buf, 0x16u);
              }

              [v29 addObject:v18];
              a1 = v12;
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v20 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 138740227;
                  v38 = v10;
                  v39 = 2117;
                  v40 = v17;
                  _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "place item, %{sensitive}@, map item, %{sensitive}@", buf, 0x16u);
                }
              }

              v21 = [RTFavoritePlace alloc];
              v22 = [v10 customName];
              v23 = [(RTFavoritePlace *)v21 initWithTitle:v22 mapItem:v17];

              if (v23)
              {
                [v28 addObject:v23];
                a1 = v12;
              }

              else
              {
                v24 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
                a1 = v12;
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138739971;
                  v38 = v10;
                  _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "failed to allocate place item, %{sensitive}@", buf, 0xCu);
                }
              }
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v8);
    }

    v25 = _RTSafeArray();
    v26 = _RTMultiErrorCreate();

    (*(*(a1 + 40) + 16))(*(a1 + 40));
    v6 = v27;
  }
}

- (void)_fetchPinnedPlacesWithHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__RTMapsSupportManager__fetchPinnedPlacesWithHandler___block_invoke;
    v7[3] = &unk_2788C4550;
    v7[4] = self;
    v8 = handlerCopy;
    [(RTMapsSupportManager *)self _fetchFavoriteItemsWithHandler:v7];
    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTMapsSupportManager _fetchPinnedPlacesWithHandler:]";
      v11 = 1024;
      v12 = 394;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __54__RTMapsSupportManager__fetchPinnedPlacesWithHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v29 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v6;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v31 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [v10 mapItemStorage];

          if (v11)
          {
            v12 = a1;
            v13 = [*(a1 + 32) mapServiceManager];
            v14 = [MEMORY[0x277CCAD78] UUID];
            v15 = [v10 mapItemStorage];
            v16 = [MEMORY[0x277CBEAA8] date];
            v32 = 0;
            v17 = [v13 mapItemWithIdentifier:v14 geoMapItemStorage:v15 source:8 creationDate:v16 error:&v32];
            v18 = v32;

            if (v18)
            {
              v19 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138740227;
                v38 = v10;
                v39 = 2112;
                v40 = v18;
                _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "failed to geocode a favorite item, %{sensitive}@, error, %@", buf, 0x16u);
              }

              [v29 addObject:v18];
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v20 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 138740227;
                  v38 = v10;
                  v39 = 2117;
                  v40 = v17;
                  _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "favorite item, %{sensitive}@, map item, %{sensitive}@", buf, 0x16u);
                }
              }

              v21 = [v10 type] - 2;
              if (v21 > 3u)
              {
                v22 = 0;
              }

              else
              {
                v22 = qword_230AFE3A0[v21];
              }

              v23 = [[RTPinnedPlace alloc] initWithType:v22 mapItem:v17];
              if (v23)
              {
                [v28 addObject:v23];
              }

              else
              {
                v24 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138739971;
                  v38 = v10;
                  _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "failed to allocate favorite item, %{sensitive}@", buf, 0xCu);
                }
              }
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v8);
    }

    v25 = _RTSafeArray();
    v26 = _RTMultiErrorCreate();

    (*(*(a1 + 40) + 16))(*(a1 + 40));
    v6 = v27;
  }
}

- (int)castReferenceFrame:(int)frame
{
  if (frame == 2)
  {
    return 2;
  }

  else
  {
    return frame == 1;
  }
}

- (void)_fetchHistoryEntryPlaceDisplaysWithOptions:(id)options handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__RTMapsSupportManager__fetchHistoryEntryPlaceDisplaysWithOptions_handler___block_invoke;
    v10[3] = &unk_2788C6468;
    v13 = handlerCopy;
    v11 = optionsCopy;
    selfCopy = self;
    [(RTMapsSupportManager *)self _fetchHistoryPlaceItemsWithOptions:v11 handler:v10];

    v9 = v13;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[RTMapsSupportManager _fetchHistoryEntryPlaceDisplaysWithOptions:handler:]";
      v16 = 1024;
      v17 = 490;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __75__RTMapsSupportManager__fetchHistoryEntryPlaceDisplaysWithOptions_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v41 = objc_opt_new();
    v42 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = v5;
    obj = v5;
    v45 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v45)
    {
      v44 = *v48;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v48 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v47 + 1) + 8 * i);
          v8 = [v7 mapItemStorage];

          if (v8)
          {
            v9 = [*(a1 + 32) dateInterval];
            if (!v9 || (v10 = v9, [v7 createTime], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "dateInterval"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "startDate"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "dateInterval"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "endDate"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v11, "betweenDate:andDate:", v13, v15), v15, v14, v13, v12, v11, v10, v16))
            {
              v17 = *(a1 + 40);
              v18 = [v7 mapItemStorage];
              v19 = [v17 castReferenceFrame:{objc_msgSend(v18, "referenceFrame")}];

              v20 = objc_alloc(MEMORY[0x277D01160]);
              v21 = [v7 mapItemStorage];
              [v21 centerCoordinate];
              v23 = v22;
              v24 = [v7 mapItemStorage];
              [v24 centerCoordinate];
              v25 = [v20 initWithLatitude:0 longitude:v19 horizontalUncertainty:v23 date:? referenceFrame:?];

              v26 = [*(a1 + 40) mapServiceManager];
              v27 = [MEMORY[0x277CCAD78] UUID];
              v28 = [v7 mapItemStorage];
              v29 = [MEMORY[0x277CBEAA8] date];
              v46 = 0;
              v30 = [v26 mapItemWithIdentifier:v27 geoMapItemStorage:v28 source:128 creationDate:v29 error:&v46];
              v31 = v46;

              if (v31)
              {
                v32 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138740227;
                  v52 = v7;
                  v53 = 2112;
                  v54 = v31;
                  _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "failed to geocode a history place item, %{sensitive}@, error, %@", buf, 0x16u);
                }

                [v42 addObject:v31];
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v33 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138740227;
                    v52 = v7;
                    v53 = 2117;
                    v54 = v30;
                    _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "history place item, %{sensitive}@, map item, %{sensitive}@", buf, 0x16u);
                  }
                }

                if (v25 && v30 && (v34 = [RTHistoryEntryPlaceDisplay alloc], [v7 identifier], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "createTime"), v36 = objc_claimAutoreleasedReturnValue(), v37 = -[RTHistoryEntryPlaceDisplay initWithIdentifier:usageDate:location:mapItem:](v34, "initWithIdentifier:usageDate:location:mapItem:", v35, v36, v25, v30), v36, v35, v37))
                {
                  [v41 addObject:v37];
                }

                else
                {
                  v37 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v52 = v7;
                    _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "failed to allocate history entry place display, %@", buf, 0xCu);
                  }
                }
              }
            }
          }
        }

        v45 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v45);
    }

    v38 = _RTSafeArray();
    v39 = _RTMultiErrorCreate();

    (*(*(a1 + 48) + 16))(*(a1 + 48));
    v5 = v40;
  }
}

- (void)_fetchHistoryEntryRoutesWithOptions:(id)options handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__RTMapsSupportManager__fetchHistoryEntryRoutesWithOptions_handler___block_invoke;
    v10[3] = &unk_2788C6468;
    v13 = handlerCopy;
    v11 = optionsCopy;
    selfCopy = self;
    [(RTMapsSupportManager *)self _fetchHistoryDirectionsItemsWithOptions:v11 handler:v10];

    v9 = v13;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[RTMapsSupportManager _fetchHistoryEntryRoutesWithOptions:handler:]";
      v16 = 1024;
      v17 = 569;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __68__RTMapsSupportManager__fetchHistoryEntryRoutesWithOptions_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v110 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    v85 = objc_opt_new();
    v86 = objc_opt_new();
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v84 = v5;
    obj = v5;
    v89 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
    if (!v89)
    {
      goto LABEL_38;
    }

    v88 = *v100;
    v91 = a1;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v100 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v99 + 1) + 8 * v6);
        v8 = [*(a1 + 32) dateInterval];
        v96 = v7;
        if (!v8 || (v9 = v8, [v7 createTime], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "dateInterval"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "startDate"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "dateInterval"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "endDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v10, "betweenDate:andDate:", v12, v14), v14, v13, v12, v11, v10, v9, v15))
        {
          v92 = v6;
          v16 = *(a1 + 40);
          v17 = [v7 routeRequestStorage];
          v18 = [v17 waypoints];
          v19 = [v18 firstObject];
          v20 = [v19 mapItemStorage];
          v21 = [v16 castReferenceFrame:{objc_msgSend(v20, "referenceFrame")}];

          v22 = objc_alloc(MEMORY[0x277D01160]);
          v23 = [v7 routeRequestStorage];
          v24 = [v23 waypoints];
          v25 = [v24 firstObject];
          v26 = [v25 latLng];
          [v26 lat];
          v28 = v27;
          v29 = [v7 routeRequestStorage];
          v30 = [v29 waypoints];
          v31 = [v30 firstObject];
          v32 = [v31 latLng];
          [v32 lng];
          v90 = v21;
          v95 = [v22 initWithLatitude:0 longitude:v21 horizontalUncertainty:v28 date:v33 referenceFrame:1.0];

          v34 = [v96 routeRequestStorage];
          v35 = [v34 waypoints];
          v36 = [v35 firstObject];
          v37 = [v36 mapItemStorage];

          if (v37)
          {
            v38 = [*(v91 + 40) mapServiceManager];
            v39 = [MEMORY[0x277CCAD78] UUID];
            v40 = [v96 routeRequestStorage];
            v41 = [v40 waypoints];
            v42 = [v41 firstObject];
            v43 = [v42 mapItemStorage];
            v44 = [MEMORY[0x277CBEAA8] date];
            v98 = 0;
            v94 = [v38 mapItemWithIdentifier:v39 geoMapItemStorage:v43 source:64 creationDate:v44 error:&v98];
            v45 = v98;

            v46 = v45;
            if (v45)
            {
              a1 = v91;
              v47 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
              v6 = v92;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v104 = v96;
                v105 = 2112;
                v106 = v46;
                _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "failed to geocode a history direction, %@, error, %@", buf, 0x16u);
              }

              [v86 addObject:v46];
              v49 = v94;
              v48 = v95;
              goto LABEL_23;
            }
          }

          else
          {
            v94 = 0;
          }

          v6 = v92;
          v50 = objc_alloc(MEMORY[0x277D01160]);
          v51 = [v96 routeRequestStorage];
          v52 = [v51 waypoints];
          v53 = [v52 lastObject];
          v54 = [v53 latLng];
          [v54 lat];
          v56 = v55;
          v57 = [v96 routeRequestStorage];
          v58 = [v57 waypoints];
          v59 = [v58 lastObject];
          v60 = [v59 latLng];
          [v60 lng];
          v93 = [v50 initWithLatitude:0 longitude:v90 horizontalUncertainty:v56 date:v61 referenceFrame:1.0];

          v62 = [v96 routeRequestStorage];
          v63 = [v62 waypoints];
          v64 = [v63 lastObject];
          v65 = [v64 mapItemStorage];

          if (v65)
          {
            v66 = [*(v91 + 40) mapServiceManager];
            v67 = [MEMORY[0x277CCAD78] UUID];
            v68 = [v96 routeRequestStorage];
            v69 = [v68 waypoints];
            v70 = [v69 lastObject];
            v71 = [v70 mapItemStorage];
            v72 = [MEMORY[0x277CBEAA8] date];
            v97 = 0;
            v73 = [v66 mapItemWithIdentifier:v67 geoMapItemStorage:v71 source:64 creationDate:v72 error:&v97];
            v74 = v97;

            if (v74)
            {
              [v86 addObject:v74];
              a1 = v91;
              v49 = v94;
              v48 = v95;
              goto LABEL_19;
            }

            a1 = v91;
            v46 = v93;
            v49 = v94;
            v48 = v95;
            if (v93 && v73)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v75 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412803;
                  v104 = v96;
                  v105 = 2117;
                  v106 = v73;
                  v107 = 2117;
                  v108 = v93;
                  _os_log_impl(&dword_2304B3000, v75, OS_LOG_TYPE_INFO, "history direction, %@, map item, %{sensitive}@, location, %{sensitive}@", buf, 0x20u);
                }
              }

              v76 = [RTHistoryEntryRoute alloc];
              v77 = [v96 identifier];
              v78 = [v96 createTime];
              LOBYTE(v83) = [v96 navigationInterrupted];
              v74 = [(RTHistoryEntryRoute *)v76 initWithIdentifier:v77 usageDate:v78 originLocation:v95 originMapItem:v94 destinationLocation:v93 destinationMapItem:v73 navigationWasInterrupted:v83];

              if (v74)
              {
                [v85 addObject:v74];
              }

              else
              {
                v79 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v104 = v96;
                  _os_log_error_impl(&dword_2304B3000, v79, OS_LOG_TYPE_ERROR, "failed to allocate history direction, %@", buf, 0xCu);
                }
              }

LABEL_19:

LABEL_21:
              v46 = v93;
            }

LABEL_23:
            goto LABEL_24;
          }

          v73 = 0;
          a1 = v91;
          v49 = v94;
          v48 = v95;
          goto LABEL_21;
        }

LABEL_24:
        ++v6;
      }

      while (v89 != v6);
      v80 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
      v89 = v80;
      if (!v80)
      {
LABEL_38:

        v81 = _RTSafeArray();
        v82 = _RTMultiErrorCreate();

        (*(*(a1 + 48) + 16))(*(a1 + 48));
        v5 = v84;
        goto LABEL_39;
      }
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_39:
}

- (id)storeChangeNotificationClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)storeDidChange:(id)change
{
  v57 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      v49 = v7;
      v50 = 2112;
      v51 = v8;
      v52 = 2112;
      v53 = changeCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, types, %@", buf, 0x20u);
    }
  }

  v37 = changeCopy;
  v9 = [MEMORY[0x277CBEB98] setWithArray:changeCopy];
  v10 = MEMORY[0x277CBEB98];
  storeChangeNotificationClasses = [(RTMapsSupportManager *)self storeChangeNotificationClasses];
  v12 = [v10 setWithArray:storeChangeNotificationClasses];

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __39__RTMapsSupportManager_storeDidChange___block_invoke;
  v46[3] = &unk_2788C9808;
  v35 = v12;
  v36 = v9;
  v47 = v35;
  [v9 objectsPassingTest:v46];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v45 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    v17 = MEMORY[0x277D86220];
    v18 = 0x2788C1000uLL;
    v38 = *v43;
    v39 = v13;
    do
    {
      v19 = 0;
      v41 = v15;
      do
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v42 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = [(RTMapsSupportManager *)self queryTypeForMapsSyncClass:v20];
        if (v22)
        {
          v23 = v22;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v24 = v18;
            v25 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              v28 = NSStringFromSelector(a2);
              v29 = [(RTMapsSupportManager *)self stringForQueryType:v23];
              *buf = 138413058;
              v49 = v27;
              v50 = 2112;
              v51 = v28;
              v52 = 2112;
              v53 = v20;
              v54 = 2112;
              v55 = v29;
              _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, posting notification for className, %@, query type, %@", buf, 0x2Au);

              v16 = v38;
              v17 = MEMORY[0x277D86220];

              v13 = v39;
            }

            v18 = v24;
            v15 = v41;
          }

          v30 = [objc_alloc(*(v18 + 2712)) initWithQueryType:v23];
          [(RTNotifier *)self postNotification:v30];
        }

        else
        {
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_20;
          }

          v30 = _rt_log_facility_get_os_log(RTLogFacilityMapsSupport);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v33 = NSStringFromSelector(a2);
            v34 = [(RTMapsSupportManager *)self stringForQueryType:0];
            *buf = 138413058;
            v49 = v32;
            v50 = 2112;
            v51 = v33;
            v52 = 2112;
            v53 = v20;
            v54 = 2112;
            v55 = v34;
            _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%@, %@, skip posting notification for className, %@, query type, %@", buf, 0x2Au);

            v17 = MEMORY[0x277D86220];
            v16 = v38;

            v13 = v39;
          }
        }

LABEL_20:
        objc_autoreleasePoolPop(v21);
        ++v19;
      }

      while (v15 != v19);
      v15 = [v13 countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v15);
  }
}

- (int64_t)queryTypeForMapsSyncClass:(Class)class
{
  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 2;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 3;
  }

  return [(objc_class *)class isEqual:objc_opt_class()];
}

- (id)stringForQueryType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788C9840[type - 1];
  }
}

@end