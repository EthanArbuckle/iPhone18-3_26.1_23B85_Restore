@interface RTCurrentMapItemProvider
+ (id)convertMapItemsToPredictedLocationsOfInterest:(id)interest;
+ (void)logMapItems:(id)items prestring:(id)prestring;
+ (void)logPredictedLocationsOfInterest:(id)interest prestring:(id)prestring;
- (RTCurrentMapItemProvider)initWithFingerprintManager:(id)manager locationManager:(id)locationManager mapServiceManager:(id)serviceManager wifiManager:(id)wifiManager;
- (id)_pickMinimumHorizontalUncertainty:(id)uncertainty;
- (void)_fetchCurrentMapItemsLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler;
- (void)_performBluePOIQueryLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler;
- (void)fetchCurrentMapItemsLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler;
- (void)onLocationNotification:(id)notification;
- (void)onWiFiScanNotification:(id)notification;
- (void)performBluePOIQueryLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler;
- (void)setRegisteredForNotifications:(BOOL)notifications;
- (void)shutdown;
@end

@implementation RTCurrentMapItemProvider

- (RTCurrentMapItemProvider)initWithFingerprintManager:(id)manager locationManager:(id)locationManager mapServiceManager:(id)serviceManager wifiManager:(id)wifiManager
{
  v34 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationManagerCopy = locationManager;
  serviceManagerCopy = serviceManager;
  wifiManagerCopy = wifiManager;
  if (managerCopy)
  {
    if (locationManagerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[RTCurrentMapItemProvider initWithFingerprintManager:locationManager:mapServiceManager:wifiManager:]";
      v32 = 1024;
      v33 = 121;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fingerprintManager (in %s:%d)", buf, 0x12u);
    }

    if (locationManagerCopy)
    {
LABEL_3:
      if (serviceManagerCopy)
      {
        goto LABEL_4;
      }

LABEL_17:
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "[RTCurrentMapItemProvider initWithFingerprintManager:locationManager:mapServiceManager:wifiManager:]";
        v32 = 1024;
        v33 = 123;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapServiceManager (in %s:%d)", buf, 0x12u);
      }

      if (wifiManagerCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[RTCurrentMapItemProvider initWithFingerprintManager:locationManager:mapServiceManager:wifiManager:]";
    v32 = 1024;
    v33 = 122;
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager (in %s:%d)", buf, 0x12u);
  }

  if (!serviceManagerCopy)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (wifiManagerCopy)
  {
LABEL_5:
    selfCopy = 0;
    if (managerCopy && locationManagerCopy && serviceManagerCopy)
    {
      v29.receiver = self;
      v29.super_class = RTCurrentMapItemProvider;
      v16 = [(RTCurrentMapItemProvider *)&v29 init];
      if (v16)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v16];
        wifiManagerCopy2 = wifiManager;
        uTF8String = [v17 UTF8String];
        dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v19 = obj = serviceManager;
        v20 = dispatch_queue_create(uTF8String, v19);
        queue = v16->_queue;
        v16->_queue = v20;

        objc_storeStrong(&v16->_fingerprintManager, manager);
        objc_storeStrong(&v16->_locationManager, locationManager);
        objc_storeStrong(&v16->_mapServiceManager, obj);
        objc_storeStrong(&v16->_wifiManager, wifiManagerCopy2);
      }

      self = v16;
      selfCopy = self;
    }

    goto LABEL_23;
  }

LABEL_20:
  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[RTCurrentMapItemProvider initWithFingerprintManager:locationManager:mapServiceManager:wifiManager:]";
    v32 = 1024;
    v33 = 124;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: wifiManager (in %s:%d)", buf, 0x12u);
  }

  selfCopy = 0;
LABEL_23:

  return selfCopy;
}

+ (id)convertMapItemsToPredictedLocationsOfInterest:(id)interest
{
  v35 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  array = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = interestCopy;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [RTLearnedPlace alloc];
        uUID = [MEMORY[0x277CCAD78] UUID];
        date = [MEMORY[0x277CBEAA8] date];
        date2 = [MEMORY[0x277CBEAA8] date];
        v13 = [(RTLearnedPlace *)v9 initWithIdentifier:uUID type:0 typeSource:0 mapItem:v8 customLabel:0 creationDate:date expirationDate:date2];

        v14 = objc_alloc(MEMORY[0x277D01160]);
        location = [v8 location];
        [location latitude];
        v17 = v16;
        location2 = [v8 location];
        [location2 longitude];
        v20 = [v14 initWithLatitude:0 longitude:v17 horizontalUncertainty:v19 date:100.0];

        v21 = [[RTLearnedLocation alloc] initWithLocation:v20 dataPointCount:0 type:2];
        v22 = [RTLearnedLocationOfInterest alloc];
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        v24 = [(RTLearnedLocationOfInterest *)v22 initWithIdentifier:uUID2 location:v21 place:v13 visits:0 transitions:0];

        v25 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:v24];
        v26 = [objc_alloc(MEMORY[0x277D01270]) initWithLocationOfInterest:v25 confidence:0 nextEntryTime:0 modeOfTransportation:0 sources:0.0];
        [array addObject:v26];
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
  }

  return array;
}

+ (void)logMapItems:(id)items prestring:(id)prestring
{
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  prestringCopy = prestring;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityCurrentMapItem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138740227;
      v25 = prestringCopy;
      v26 = 2048;
      v27 = [itemsCopy count];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%{sensitive}@ %lu RTMapItems", buf, 0x16u);
    }

    v17 = prestringCopy;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = itemsCopy;
    v8 = itemsCopy;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
      v13 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityCurrentMapItem);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              ++v11;
              *buf = 134218243;
              v25 = v11;
              v26 = 2117;
              v27 = v15;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "RTMapItem %lu, %{sensitive}@", buf, 0x16u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    prestringCopy = v17;
    itemsCopy = v18;
  }
}

+ (void)logPredictedLocationsOfInterest:(id)interest prestring:(id)prestring
{
  v28 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  prestringCopy = prestring;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityCurrentMapItem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = prestringCopy;
      v26 = 2048;
      v27 = [interestCopy count];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@ %lu RTPredictedLocationsOfInterest", buf, 0x16u);
    }

    v17 = prestringCopy;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = interestCopy;
    v8 = interestCopy;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
      v13 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityCurrentMapItem);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              ++v11;
              *buf = 134218243;
              v25 = v11;
              v26 = 2117;
              v27 = v15;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "RTPredictedLocationOfInterest %lu, %{sensitive}@", buf, 0x16u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    prestringCopy = v17;
    interestCopy = v18;
  }
}

- (void)setRegisteredForNotifications:(BOOL)notifications
{
  if (self->_registeredForNotifications != notifications)
  {
    self->_registeredForNotifications = notifications;
    locationManager = self->_locationManager;
    if (notifications)
    {
      v6 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
      [(RTNotifier *)locationManager addObserver:self selector:sel_onLocationNotification_ name:v6];

      wifiManager = self->_wifiManager;
      v10 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
      [(RTNotifier *)wifiManager addObserver:self selector:sel_onWiFiScanNotification_ name:?];
    }

    else
    {
      v8 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
      [(RTNotifier *)locationManager removeObserver:self fromNotification:v8];

      v9 = self->_wifiManager;
      v10 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
      [(RTNotifier *)v9 removeObserver:self fromNotification:?];
    }
  }
}

- (id)_pickMinimumHorizontalUncertainty:(id)uncertainty
{
  v21 = *MEMORY[0x277D85DE8];
  uncertaintyCopy = uncertainty;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [uncertaintyCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(uncertaintyCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v9 horizontalUncertainty];
        if (v10 > 0.0)
        {
          if (v6)
          {
            [v9 horizontalUncertainty];
            v12 = v11;
            [v6 horizontalUncertainty];
            if (v12 < v13)
            {
              v14 = v9;

              v6 = v14;
            }
          }

          else
          {
            v6 = v9;
          }
        }
      }

      v5 = [uncertaintyCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_fetchCurrentMapItemsLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__RTCurrentMapItemProvider__fetchCurrentMapItemsLookingBack_lookingAhead_handler___block_invoke;
  aBlock[3] = &unk_2788CC378;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = _Block_copy(aBlock);
  [(RTCurrentMapItemProvider *)self _performBluePOIQueryLookingBack:v10 lookingAhead:back handler:ahead];
}

- (void)fetchCurrentMapItemsLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTCurrentMapItemProvider *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__RTCurrentMapItemProvider_fetchCurrentMapItemsLookingBack_lookingAhead_handler___block_invoke;
    v11[3] = &unk_2788C6710;
    v11[4] = self;
    backCopy = back;
    aheadCopy = ahead;
    v12 = handlerCopy;
    dispatch_async(queue, v11);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTCurrentMapItemProvider fetchCurrentMapItemsLookingBack:lookingAhead:handler:]";
      v17 = 1024;
      v18 = 315;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_performBluePOIQueryLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler
{
  v59[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (back < 0.0 || ahead < 0.0)
    {
      v14 = MEMORY[0x277CCA9B8];
      v58 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requires nonnegative numbers for backwardsSeconds and forwardsSeconds"];
      v59[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      v17 = [v14 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v16];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v17);
    }

    else if ([(RTCurrentMapItemProvider *)self registeredForNotifications])
    {
      v9 = MEMORY[0x277CCA9B8];
      v56 = *MEMORY[0x277CCA450];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is busy", self];
      v57 = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v12 = [v9 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v11];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v12);
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      v19 = [date dateByAddingTimeInterval:-back];
      array = [MEMORY[0x277CBEB18] array];
      futureLocations = self->_futureLocations;
      self->_futureLocations = array;

      array2 = [MEMORY[0x277CBEB18] array];
      futureAccessPoints = self->_futureAccessPoints;
      self->_futureAccessPoints = array2;

      [(RTCurrentMapItemProvider *)self setRegisteredForNotifications:1];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v53 = __Block_byref_object_copy__89;
      v54 = __Block_byref_object_dispose__89;
      v55 = 0;
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x3032000000;
      v50[3] = __Block_byref_object_copy__89;
      v50[4] = __Block_byref_object_dispose__89;
      v51 = 0;
      v24 = dispatch_group_create();
      dispatch_group_enter(v24);
      v25 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v19 endDate:date];
      v26 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v25 horizontalAccuracy:199 batchSize:0 boundingBoxLocation:199.0];
      locationManager = self->_locationManager;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke;
      v47[3] = &unk_2788C5330;
      v47[4] = self;
      v49 = buf;
      v28 = v24;
      v48 = v28;
      [(RTLocationManager *)locationManager fetchStoredLocationsWithOptions:v26 handler:v47];
      dispatch_group_enter(v28);
      fingerprintManager = self->_fingerprintManager;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_3;
      v44[3] = &unk_2788C5330;
      v44[4] = self;
      v46 = v50;
      v30 = v28;
      v45 = v30;
      [(RTFingerprintManager *)fingerprintManager fetchFingerprintsBetweenStartDate:v19 endDate:date filteredBySettledState:2 handler:v44];
      v31 = dispatch_time(0, (ahead * 1000000000.0));
      queue = [(RTCurrentMapItemProvider *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_5;
      block[3] = &unk_2788CC418;
      v37 = v30;
      selfCopy = self;
      v42 = buf;
      v43 = v50;
      v39 = v19;
      v40 = date;
      v41 = handlerCopy;
      v33 = date;
      v34 = v19;
      v35 = v30;
      dispatch_after(v31, queue, block);

      _Block_object_dispose(v50, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTCurrentMapItemProvider _performBluePOIQueryLookingBack:lookingAhead:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 338;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_2;
  block[3] = &unk_2788C8DC8;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = *(*(*(a1 + 48) + 8) + 40);
        v12 = objc_alloc(MEMORY[0x277D01160]);
        v13 = [v12 initWithCLLocation:{v10, v14}];
        [v11 addObject:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_4;
  block[3] = &unk_2788C8DC8;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(*(a1 + 48) + 8) + 40);
        v11 = [*(*(&v12 + 1) + 8 * v9) accessPoints];
        [v10 addObjectsFromArray:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_6;
  block[3] = &unk_2788CC3F0;
  v12 = *(a1 + 72);
  v8 = *(a1 + 40);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_group_notify(v2, v3, block);
}

void __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_6(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(a1 + 32) setRegisteredForNotifications:0];
  v3 = *(*(v2[4] + 1) + 40);
  v4 = *(*(v2[5] + 1) + 40);
  [v3 addObjectsFromArray:*(*v2 + 7)];
  [v4 addObjectsFromArray:*(*v2 + 8)];
  v5 = *(*v2 + 7);
  *(*v2 + 7) = 0;

  v6 = *(*v2 + 8);
  *(*v2 + 8) = 0;

  v29 = v3;
  v7 = [*v2 _filterLocations:v3];
  v8 = [*v2 _filterWiFiAccessPoints:v4];
  v9 = v4;
  v10 = v7;
  v11 = v8;
  logArrayRTLocations(@"Preprocessed Locations", v29);
  logArrayRTWiFiAccessPoints(@"Preprocessed Access Points", v9);
  v28 = v9;

  logArrayRTLocations(@"Processed Locations", v10);
  logArrayRTWiFiAccessPoints(@"Processed Access Points", v11);

  v12 = [*v2 _pickMinimumHorizontalUncertainty:v10];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityCurrentMapItem);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138740227;
      *&buf[4] = @"Reference Location:";
      *&buf[12] = 2117;
      *&buf[14] = v12;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%{sensitive}@: %{sensitive}@", buf, 0x16u);
    }
  }

  if (v12)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v14 addObject:v12];
    [v14 addObjectsFromArray:v10];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy__89;
    v46 = __Block_byref_object_dispose__89;
    v47 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__89;
    v40[4] = __Block_byref_object_dispose__89;
    v41 = 0;
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_7;
    aBlock[3] = &unk_2788C69F0;
    aBlock[4] = *(a1 + 32);
    v38 = buf;
    v39 = v40;
    v16 = v15;
    v37 = v16;
    v17 = _Block_copy(aBlock);
    v18 = objc_alloc(MEMORY[0x277D011B0]);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 initWithUseBackgroundTraits:1 analyticsIdentifier:v20];

    [*(*(a1 + 32) + 40) fetchMapItemsFromLocations:v14 accessPoints:v11 startDate:*(a1 + 40) endDate:*(a1 + 48) options:v21 handler:v17];
    v22 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_9;
    block[3] = &unk_2788CC3C8;
    v31 = v14;
    v33 = *(a1 + 56);
    v32 = v11;
    v34 = buf;
    v35 = v40;
    v23 = v14;
    dispatch_group_notify(v16, v22, block);

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v24 = *(a1 + 56);
    v25 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43 = @"Nil reference location.";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v26];
    (*(v24 + 16))(v24, 0, 0, 0, v27);
  }
}

void __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_8;
  block[3] = &unk_2788CC3A0;
  v16 = *(a1 + 56);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_8(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __81__RTCurrentMapItemProvider__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_9(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277CE41F8]);
        v10 = [v9 initWithRTLocation:{v8, v11}];
        [v2 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)performBluePOIQueryLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTCurrentMapItemProvider *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__RTCurrentMapItemProvider_performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke;
    v11[3] = &unk_2788C6710;
    v11[4] = self;
    backCopy = back;
    aheadCopy = ahead;
    v12 = handlerCopy;
    dispatch_async(queue, v11);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTCurrentMapItemProvider performBluePOIQueryLookingBack:lookingAhead:handler:]";
      v17 = 1024;
      v18 = 479;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)onLocationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTCurrentMapItemProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTCurrentMapItemProvider_onLocationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __51__RTCurrentMapItemProvider_onLocationNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = *(a1 + 32);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v5 locations];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(a1 + 40) + 56);
          v12 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:*(*(&v14 + 1) + 8 * v10)];
          [v11 addObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityCurrentMapItem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) name];
      *buf = 138412290;
      v19 = v13;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unhandled notification, %@", buf, 0xCu);
    }
  }
}

- (void)onWiFiScanNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTCurrentMapItemProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTCurrentMapItemProvider_onWiFiScanNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __51__RTCurrentMapItemProvider_onWiFiScanNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 64);
    v7 = v5;
    v10 = [v7 scanResults];
    [v6 addObjectsFromArray:?];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityCurrentMapItem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) name];
      *buf = 138412290;
      v12 = v9;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unhandled notification, %@", buf, 0xCu);
    }
  }
}

- (void)shutdown
{
  v22 = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__89;
  v16[4] = __Block_byref_object_dispose__89;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [v4 stringWithFormat:@"%@-%@", v6, v7];
  v9 = v8;
  [v8 UTF8String];
  v17 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  queue = [(RTCurrentMapItemProvider *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__RTCurrentMapItemProvider_shutdown__block_invoke;
  block[3] = &unk_2788C4FD8;
  block[4] = self;
  block[5] = v16;
  dispatch_async(queue, block);

  _Block_object_dispose(v16, 8);
}

void __36__RTCurrentMapItemProvider_shutdown__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _shutdown];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end