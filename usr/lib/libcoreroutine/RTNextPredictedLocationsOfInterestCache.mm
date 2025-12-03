@interface RTNextPredictedLocationsOfInterestCache
- (RTNextPredictedLocationsOfInterestCache)initWithQueue:(id)queue dataProtectionManager:(id)manager starkManager:(id)starkManager;
- (RTNextPredictedLocationsOfInterestCacheDelegate)delegate;
- (void)cacheNextPredictedLocationsOfInterest:(id)interest;
- (void)clear;
- (void)dealloc;
- (void)handleUnlockedSinceBoot:(BOOL)boot;
- (void)onDataProtectionNotification:(id)notification;
- (void)onStarkNotification:(id)notification;
- (void)purgeWithReferenceDate:(id)date;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation RTNextPredictedLocationsOfInterestCache

- (RTNextPredictedLocationsOfInterestCache)initWithQueue:(id)queue dataProtectionManager:(id)manager starkManager:(id)starkManager
{
  v36 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  managerCopy = manager;
  starkManagerCopy = starkManager;
  v33.receiver = self;
  v33.super_class = RTNextPredictedLocationsOfInterestCache;
  v12 = [(RTNextPredictedLocationsOfInterestCache *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_dataProtectionManager, manager);
    objc_storeStrong(&v13->_starkManager, starkManager);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v15 = +[RTNextPredictedLocationsOfInterestCache cachePath];
    v16 = [defaultManager fileExistsAtPath:v15];

    if (v16)
    {
      v17 = MEMORY[0x277CBEA90];
      v18 = +[RTNextPredictedLocationsOfInterestCache cachePath];
      v19 = [v17 dataWithContentsOfFile:v18];

      v20 = MEMORY[0x277CBEB98];
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      v23 = objc_opt_class();
      v24 = [v20 setWithObjects:{v21, v22, v23, objc_opt_class(), 0}];
      v32 = 0;
      v25 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v24 fromData:v19 error:&v32];
      v26 = v32;
      nextPredictedLocationsOfInterest = v13->_nextPredictedLocationsOfInterest;
      v13->_nextPredictedLocationsOfInterest = v25;

      if (v26)
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v35 = v26;
          _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "error while decoding NPLOI archive, %@", buf, 0xCu);
        }
      }
    }

    dataProtectionManager = v13->_dataProtectionManager;
    v30 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
    [(RTNotifier *)dataProtectionManager addObserver:v13 selector:sel_onDataProtectionNotification_ name:v30];
  }

  return v13;
}

- (void)dealloc
{
  [(RTNotifier *)self->_dataProtectionManager removeObserver:self];
  [(RTNotifier *)self->_starkManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = RTNextPredictedLocationsOfInterestCache;
  [(RTNextPredictedLocationsOfInterestCache *)&v3 dealloc];
}

- (void)cacheNextPredictedLocationsOfInterest:(id)interest
{
  v27 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  if ([interestCopy count])
  {
    v5 = MEMORY[0x277CBEA60];
    firstObject = [interestCopy firstObject];
    v7 = [v5 arrayWithObject:firstObject];
    [(RTNextPredictedLocationsOfInterestCache *)self setNextPredictedLocationsOfInterest:v7];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = +[RTNextPredictedLocationsOfInterestCache cachePath];
        nextPredictedLocationsOfInterest = [(RTNextPredictedLocationsOfInterestCache *)self nextPredictedLocationsOfInterest];
        firstObject2 = [nextPredictedLocationsOfInterest firstObject];
        *buf = 138740227;
        v24 = v9;
        v25 = 2112;
        v26 = firstObject2;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "caching next predicted location of interest, %{sensitive}@, at, %@", buf, 0x16u);
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    nextPredictedLocationsOfInterest2 = [(RTNextPredictedLocationsOfInterestCache *)self nextPredictedLocationsOfInterest];
    [v12 encodeObject:nextPredictedLocationsOfInterest2 forKey:*MEMORY[0x277CCA308]];

    [v12 finishEncoding];
    v21 = *MEMORY[0x277CCA1B0];
    v22 = *MEMORY[0x277CCA1A0];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v16 = +[RTNextPredictedLocationsOfInterestCache cachePath];
    encodedData = [v12 encodedData];
    v18 = [defaultManager createFileAtPath:v16 contents:encodedData attributes:v14];

    if ((v18 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = +[RTNextPredictedLocationsOfInterestCache cachePath];
          *buf = 138412290;
          v24 = v20;
          _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "failed to create file at %@", buf, 0xCu);
        }
      }

      [(RTNextPredictedLocationsOfInterestCache *)self clear];
    }
  }

  else
  {
    [(RTNextPredictedLocationsOfInterestCache *)self clear];
  }
}

- (void)clear
{
  v11 = *MEMORY[0x277D85DE8];
  [(RTNextPredictedLocationsOfInterestCache *)self setNextPredictedLocationsOfInterest:0];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[RTNextPredictedLocationsOfInterestCache cachePath];
  v4 = [defaultManager fileExistsAtPath:v3];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = +[RTNextPredictedLocationsOfInterestCache cachePath];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "clearing next predicted locations of interesting cache at %@", &v9, 0xCu);
      }
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = +[RTNextPredictedLocationsOfInterestCache cachePath];
    [defaultManager2 removeItemAtPath:v8 error:0];
  }
}

- (void)purgeWithReferenceDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = +[RTNextPredictedLocationsOfInterestCache cachePath];
  v7 = [defaultManager fileExistsAtPath:v6];

  if (v7)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = +[RTNextPredictedLocationsOfInterestCache cachePath];
    v10 = [defaultManager2 attributesOfItemAtPath:v9 error:0];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-86400.0];
    v12 = [v10 objectForKey:*MEMORY[0x277CCA108]];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        stringFromDate = [v11 stringFromDate];
        stringFromDate2 = [v12 stringFromDate];
        v18 = 138412546;
        v19 = stringFromDate;
        v20 = 2112;
        v21 = stringFromDate2;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "purge cache predating, %@, file date, %@", &v18, 0x16u);
      }
    }

    v16 = [v11 earlierDate:v12];
    v17 = [v16 isEqualToDate:v12];

    if (v17)
    {
      [(RTNextPredictedLocationsOfInterestCache *)self clear];
    }
  }
}

- (void)onDataProtectionNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    queue = [(RTNextPredictedLocationsOfInterestCache *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__RTNextPredictedLocationsOfInterestCache_onDataProtectionNotification___block_invoke;
    v9[3] = &unk_2788C4A70;
    v9[4] = self;
    v10 = notificationCopy;
    dispatch_async(queue, v9);
  }
}

uint64_t __72__RTNextPredictedLocationsOfInterestCache_onDataProtectionNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) unlockedSinceBoot];

  return [v1 handleUnlockedSinceBoot:v2];
}

- (void)handleUnlockedSinceBoot:(BOOL)boot
{
  if (boot)
  {
    dataProtectionManager = self->_dataProtectionManager;
    v5 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
    [(RTNotifier *)dataProtectionManager removeObserver:self fromNotification:v5];

    starkManager = self->_starkManager;
    v7 = +[(RTNotification *)RTStarkManagerNotificationTrustedConnectionEstablished];
    [(RTNotifier *)starkManager addObserver:self selector:sel_onStarkNotification_ name:v7];
  }
}

- (void)onStarkNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTStarkManagerNotificationTrustedConnectionEstablished];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    queue = [(RTNextPredictedLocationsOfInterestCache *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__RTNextPredictedLocationsOfInterestCache_onStarkNotification___block_invoke;
    v9[3] = &unk_2788C4A70;
    v9[4] = self;
    v10 = notificationCopy;
    dispatch_async(queue, v9);
  }
}

uint64_t __63__RTNextPredictedLocationsOfInterestCache_onStarkNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) trustedConnectionEstablished];

  return [v1 handleStarkTrustedConnectionEstablished:v2];
}

- (void)setEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        if (self->_enabled)
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "next predicted location of interest cache, enabled, %@", &v7, 0xCu);
      }
    }

    delegate = [(RTNextPredictedLocationsOfInterestCache *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate onCacheEnabledDidChange:self->_enabled];
    }
  }
}

- (RTNextPredictedLocationsOfInterestCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end