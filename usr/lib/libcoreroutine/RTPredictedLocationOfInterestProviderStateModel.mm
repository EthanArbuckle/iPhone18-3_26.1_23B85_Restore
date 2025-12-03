@interface RTPredictedLocationOfInterestProviderStateModel
- (RTPredictedLocationOfInterestProviderStateModel)initWithDataProtectionManager:(id)manager learnedLocationManager:(id)locationManager locationManager:(id)a5 metricManager:(id)metricManager cache:(id)cache;
- (void)fetchNextPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler;
- (void)fetchPredictedExitDatesWithCriteria:(id)criteria handler:(id)handler;
- (void)fetchPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler;
- (void)onCacheEnabledDidChange:(BOOL)change;
- (void)onDataProtectionNotification:(id)notification;
- (void)setEncryptedDataAvailability:(int64_t)availability;
- (void)setEncryptedDataAvailabilityNotificationNeeded:(BOOL)needed;
- (void)updateEncryptedDataAvailabilityNotificationNeeded;
@end

@implementation RTPredictedLocationOfInterestProviderStateModel

- (RTPredictedLocationOfInterestProviderStateModel)initWithDataProtectionManager:(id)manager learnedLocationManager:(id)locationManager locationManager:(id)a5 metricManager:(id)metricManager cache:(id)cache
{
  v42 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationManagerCopy = locationManager;
  locationManagerCopy2 = locationManager;
  v14 = a5;
  metricManagerCopy = metricManager;
  cacheCopy = cache;
  if (managerCopy)
  {
    if (locationManagerCopy2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[RTPredictedLocationOfInterestProviderStateModel initWithDataProtectionManager:learnedLocationManager:locationManager:metricManager:cache:]";
      v40 = 1024;
      v41 = 57;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dataProtectionManager (in %s:%d)", buf, 0x12u);
    }

    if (locationManagerCopy2)
    {
LABEL_3:
      if (v14)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[RTPredictedLocationOfInterestProviderStateModel initWithDataProtectionManager:learnedLocationManager:locationManager:metricManager:cache:]";
    v40 = 1024;
    v41 = 58;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationManager (in %s:%d)", buf, 0x12u);
  }

  if (v14)
  {
LABEL_4:
    if (metricManagerCopy)
    {
      goto LABEL_5;
    }

LABEL_22:
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[RTPredictedLocationOfInterestProviderStateModel initWithDataProtectionManager:learnedLocationManager:locationManager:metricManager:cache:]";
      v40 = 1024;
      v41 = 60;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: metricManager (in %s:%d)", buf, 0x12u);
    }

    if (cacheCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_19:
  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[RTPredictedLocationOfInterestProviderStateModel initWithDataProtectionManager:learnedLocationManager:locationManager:metricManager:cache:]";
    v40 = 1024;
    v41 = 59;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager (in %s:%d)", buf, 0x12u);
  }

  if (!metricManagerCopy)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (cacheCopy)
  {
LABEL_6:
    selfCopy = 0;
    if (managerCopy && locationManagerCopy2 && v14 && metricManagerCopy)
    {
      v37.receiver = self;
      v37.super_class = RTPredictedLocationOfInterestProviderStateModel;
      v18 = [(RTPredictedLocationOfInterestProviderStateModel *)&v37 init];
      v19 = v18;
      if (v18)
      {
        v33 = a5;
        metricManagerCopy2 = metricManager;
        v20 = v18;
        v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uTF8String = [(RTPredictedLocationOfInterestProviderStateModel *)v20 UTF8String];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v20];
          v28 = v32 = cache;
          uTF8String = [v28 UTF8String];

          cache = v32;
        }

        v29 = dispatch_queue_create(uTF8String, v21);

        queue = v20->_queue;
        v20->_queue = v29;

        objc_storeStrong(&v20->_dataProtectionManager, manager);
        objc_storeStrong(&v20->_learnedLocationManager, locationManagerCopy);
        objc_storeStrong(&v20->_locationManager, v33);
        objc_storeStrong(&v20->_metricManager, metricManagerCopy2);
        objc_storeStrong(&v20->_nextPredictedLocationsOfInterestCache, cache);
        [(RTNextPredictedLocationsOfInterestCache *)v20->_nextPredictedLocationsOfInterestCache setDelegate:v20];
      }

      self = v19;
      selfCopy = self;
    }

    goto LABEL_31;
  }

LABEL_25:
  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[RTPredictedLocationOfInterestProviderStateModel initWithDataProtectionManager:learnedLocationManager:locationManager:metricManager:cache:]";
    v40 = 1024;
    v41 = 61;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cache (in %s:%d)", buf, 0x12u);
  }

  selfCopy = 0;
LABEL_31:

  return selfCopy;
}

- (void)updateEncryptedDataAvailabilityNotificationNeeded
{
  nextPredictedLocationsOfInterestCache = [(RTPredictedLocationOfInterestProviderStateModel *)self nextPredictedLocationsOfInterestCache];
  enabled = [nextPredictedLocationsOfInterestCache enabled];

  [(RTPredictedLocationOfInterestProviderStateModel *)self setEncryptedDataAvailabilityNotificationNeeded:enabled];
}

- (void)setEncryptedDataAvailabilityNotificationNeeded:(BOOL)needed
{
  if (self->_encryptedDataAvailabilityNotificationNeeded != needed)
  {
    self->_encryptedDataAvailabilityNotificationNeeded = needed;
    if (needed)
    {
      dataProtectionManager = [(RTPredictedLocationOfInterestProviderStateModel *)self dataProtectionManager];
      v5 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
      [dataProtectionManager addObserver:self selector:sel_onDataProtectionNotification_ name:v5];
    }

    else
    {
      [(RTPredictedLocationOfInterestProviderStateModel *)self setEncryptedDataAvailability:1];
      dataProtectionManager = [(RTPredictedLocationOfInterestProviderStateModel *)self dataProtectionManager];
      v5 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
      [dataProtectionManager removeObserver:self fromNotification:v5];
    }
  }
}

- (void)setEncryptedDataAvailability:(int64_t)availability
{
  if (self->_encryptedDataAvailability != availability)
  {
    self->_encryptedDataAvailability = availability;
    if (availability == 3)
    {
      nextPredictedLocationsOfInterestCache = [(RTPredictedLocationOfInterestProviderStateModel *)self nextPredictedLocationsOfInterestCache];
      enabled = [nextPredictedLocationsOfInterestCache enabled];

      if (enabled)
      {
        locationManager = [(RTPredictedLocationOfInterestProviderStateModel *)self locationManager];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __80__RTPredictedLocationOfInterestProviderStateModel_setEncryptedDataAvailability___block_invoke;
        v8[3] = &unk_2788CC0D0;
        v8[4] = self;
        [locationManager fetchCurrentLocationWithHandler:v8];
      }
    }

    else if (availability == 2)
    {
      nextPredictedLocationsOfInterestCache2 = [(RTPredictedLocationOfInterestProviderStateModel *)self nextPredictedLocationsOfInterestCache];
      [nextPredictedLocationsOfInterestCache2 clear];
    }
  }
}

void __80__RTPredictedLocationOfInterestProviderStateModel_setEncryptedDataAvailability___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__RTPredictedLocationOfInterestProviderStateModel_setEncryptedDataAvailability___block_invoke_2;
  v7[3] = &unk_2788C4A70;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __80__RTPredictedLocationOfInterestProviderStateModel_setEncryptedDataAvailability___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:*(a1 + 32)];
  v3 = [*(a1 + 40) learnedLocationManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__RTPredictedLocationOfInterestProviderStateModel_setEncryptedDataAvailability___block_invoke_3;
  v5[3] = &unk_2788C99C0;
  v5[4] = *(a1 + 40);
  v6 = v2;
  v4 = v2;
  [v3 fetchRecentLocationsOfInterestWithHandler:v5];
}

void __80__RTPredictedLocationOfInterestProviderStateModel_setEncryptedDataAvailability___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTPredictedLocationOfInterestProviderStateModel_setEncryptedDataAvailability___block_invoke_4;
  block[3] = &unk_2788C76F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __80__RTPredictedLocationOfInterestProviderStateModel_setEncryptedDataAvailability___block_invoke_4(uint64_t a1)
{
  v2 = [RTStateModel alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) metricManager];
  v5 = [*(a1 + 40) queue];
  v10 = [(RTStateModel *)v2 initWithLearnedLocationsOfInterest:v3 metricManager:v4 queue:v5];

  if ([*(a1 + 40) encryptedDataAvailability] == 3)
  {
    v6 = [*(a1 + 40) nextPredictedLocationsOfInterestCache];
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [(RTStateModel *)v10 getNextPredictedLocationsOfInterestFromLocation:v7 startDate:v8 timeInterval:14400.0];
    [v6 cacheNextPredictedLocationsOfInterest:v9];
  }
}

- (void)onCacheEnabledDidChange:(BOOL)change
{
  queue = [(RTPredictedLocationOfInterestProviderStateModel *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__RTPredictedLocationOfInterestProviderStateModel_onCacheEnabledDidChange___block_invoke;
  v6[3] = &unk_2788C5070;
  v6[4] = self;
  changeCopy = change;
  dispatch_async(queue, v6);
}

- (void)onDataProtectionNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTPredictedLocationOfInterestProviderStateModel *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__RTPredictedLocationOfInterestProviderStateModel_onDataProtectionNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __80__RTPredictedLocationOfInterestProviderStateModel_onDataProtectionNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) availability];
    v6 = *(a1 + 40);

    [v6 setEncryptedDataAvailability:v5];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) name];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "unhandled RTDataProtectionManager notification, %@", &v9, 0xCu);
    }
  }
}

- (void)fetchNextPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler
{
  criteriaCopy = criteria;
  handlerCopy = handler;
  referenceLocation = [criteriaCopy referenceLocation];
  referenceDate = [criteriaCopy referenceDate];
  [criteriaCopy windowDuration];
  v11 = v10;
  learnedLocationManager = [(RTPredictedLocationOfInterestProviderStateModel *)self learnedLocationManager];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__RTPredictedLocationOfInterestProviderStateModel_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke;
  v17[3] = &unk_2788D0830;
  v17[4] = self;
  v18 = referenceLocation;
  v19 = criteriaCopy;
  v20 = referenceDate;
  v22 = v11;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = referenceDate;
  v15 = criteriaCopy;
  v16 = referenceLocation;
  [learnedLocationManager fetchRecentLocationsOfInterestWithHandler:v17];
}

void __109__RTPredictedLocationOfInterestProviderStateModel_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__RTPredictedLocationOfInterestProviderStateModel_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_2;
  v12[3] = &unk_2788D0808;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v9;
  v16 = *(a1 + 48);
  v17 = v5;
  v18 = *(a1 + 56);
  v20 = *(a1 + 72);
  v19 = *(a1 + 64);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __109__RTPredictedLocationOfInterestProviderStateModel_fetchNextPredictedLocationsOfInterestWithCriteria_handler___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "fetch cached next PLOIs", buf, 2u);
      }
    }

    v3 = [*(a1 + 40) nextPredictedLocationsOfInterestCache];
    v4 = [v3 getCachedNextPredictedLocationsOfInterest];

    if ([(RTStateModel *)v4 count])
    {
      v25 = [MEMORY[0x277CBEB18] array];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v24 = v4;
      v5 = v4;
      v6 = [(RTStateModel *)v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v27;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v27 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v26 + 1) + 8 * i);
            [*(a1 + 48) latitude];
            [*(a1 + 48) longitude];
            v11 = [v10 locationOfInterest];
            v12 = [v11 location];
            [v12 latitude];
            v13 = [v10 locationOfInterest];
            v14 = [v13 location];
            [v14 longitude];
            RTCommonCalculateDistanceHighPrecision();
            v16 = v15;

            [*(a1 + 56) minimumDistance];
            if (v16 <= v17)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v18 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v31 = v10;
                  _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "dropping ploi, %{sensitive}@, too close to current location", buf, 0xCu);
                }
              }
            }

            else
            {
              [v25 addObject:v10];
            }
          }

          v7 = [(RTStateModel *)v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v7);
      }

      v19 = v25;
      v4 = v24;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = [RTStateModel alloc];
    v21 = *(a1 + 64);
    v22 = [*(a1 + 40) metricManager];
    v23 = [*(a1 + 40) queue];
    v4 = [(RTStateModel *)v20 initWithLearnedLocationsOfInterest:v21 metricManager:v22 queue:v23];

    v19 = [(RTStateModel *)v4 getNextPredictedLocationsOfInterestFromLocation:*(a1 + 48) startDate:*(a1 + 72) timeInterval:*(a1 + 88)];
  }

  (*(*(a1 + 80) + 16))();
}

- (void)fetchPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler
{
  criteriaCopy = criteria;
  handlerCopy = handler;
  learnedLocationManager = [(RTPredictedLocationOfInterestProviderStateModel *)self learnedLocationManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __105__RTPredictedLocationOfInterestProviderStateModel_fetchPredictedLocationsOfInterestWithCriteria_handler___block_invoke;
  v12[3] = &unk_2788C5A70;
  v12[4] = self;
  v13 = criteriaCopy;
  v14 = handlerCopy;
  v15 = a2;
  v10 = handlerCopy;
  v11 = criteriaCopy;
  [learnedLocationManager fetchRecentLocationsOfInterestWithHandler:v12];
}

void __105__RTPredictedLocationOfInterestProviderStateModel_fetchPredictedLocationsOfInterestWithCriteria_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__RTPredictedLocationOfInterestProviderStateModel_fetchPredictedLocationsOfInterestWithCriteria_handler___block_invoke_2;
  block[3] = &unk_2788C5110;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v13 = v6;
  v9 = *(a1 + 48);
  v7 = v9;
  v14 = v9;
  v8 = v3;
  dispatch_async(v4, block);
}

void __105__RTPredictedLocationOfInterestProviderStateModel_fetchPredictedLocationsOfInterestWithCriteria_handler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [RTStateModel alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) metricManager];
  v5 = [*(a1 + 40) queue];
  v6 = [(RTStateModel *)v2 initWithLearnedLocationsOfInterest:v3 metricManager:v4 queue:v5];

  v7 = [(RTStateModel *)v6 getPredictedLocationsOfInterestWithCriteria:*(a1 + 48)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = 138412546;
      v11 = v9;
      v12 = 2048;
      v13 = [v7 count];
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@ found %lu PLOIs from state model", &v10, 0x16u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)fetchPredictedExitDatesWithCriteria:(id)criteria handler:(id)handler
{
  criteriaCopy = criteria;
  handlerCopy = handler;
  learnedLocationManager = [(RTPredictedLocationOfInterestProviderStateModel *)self learnedLocationManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__RTPredictedLocationOfInterestProviderStateModel_fetchPredictedExitDatesWithCriteria_handler___block_invoke;
  v11[3] = &unk_2788D0880;
  v12 = criteriaCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = criteriaCopy;
  v10 = handlerCopy;
  [learnedLocationManager fetchRecentLocationsOfInterestWithHandler:v11];
}

void __95__RTPredictedLocationOfInterestProviderStateModel_fetchPredictedExitDatesWithCriteria_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__RTPredictedLocationOfInterestProviderStateModel_fetchPredictedExitDatesWithCriteria_handler___block_invoke_2;
  block[3] = &unk_2788D0858;
  v13 = v6;
  v17 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __95__RTPredictedLocationOfInterestProviderStateModel_fetchPredictedExitDatesWithCriteria_handler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = [RTStateModel alloc];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) metricManager];
    v6 = [*(a1 + 48) queue];
    v7 = [(RTStateModel *)v3 initWithLearnedLocationsOfInterest:v4 metricManager:v5 queue:v6];

    v8 = [*(a1 + 56) referenceLocation];
    v9 = [*(a1 + 56) referenceDate];
    v10 = [(RTStateModel *)v7 getPredictedExitDatesFromLocation:v8 onDate:v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = [v10 count];
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "found %lu predicted exit dates", &v12, 0xCu);
      }
    }

    (*(*(a1 + 64) + 16))();
  }
}

@end