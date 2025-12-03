@interface SCSharingReminderManager
- (BOOL)cacheHasDueReminders;
- (BOOL)isWithinDeliveryWindow:(id)window;
- (SCSharingReminderManager)init;
- (SCSharingReminderManager)initWithCache:(id)cache notificationService:(id)service;
- (id)reminderForPairedComputer:(id)computer delay:(double)delay;
- (id)validRemindersDueBy:(id)by;
- (void)archiveCache:(id)cache completion:(id)completion;
- (void)checkNotificationAvailabilityWithCompletion:(id)completion;
- (void)fetchStatusWithCompletion:(id)completion;
- (void)getNeededNotificationsWithCompletion:(id)completion;
- (void)handleNotificationAction:(id)action;
- (void)handleNotificationEventWithName:(id)name;
- (void)handleSignals:(id)signals completion:(id)completion;
- (void)handleWifiSyncNotificationEventWithName:(id)name;
- (void)loadOrMakeCache;
- (void)postDueSharingReminders;
- (void)postWifiSyncNotificationWithCompletion:(id)completion;
- (void)resetFeatureWithCompletion:(id)completion;
- (void)setReminderDelays:(id)delays completion:(id)completion;
- (void)setStatus:(id *)status completion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userOpenedSafetyCheckWithCompletion:(id)completion;
- (void)validateCacheWithCompletion:(id)completion;
@end

@implementation SCSharingReminderManager

- (SCSharingReminderManager)init
{
  v9.receiver = self;
  v9.super_class = SCSharingReminderManager;
  v2 = [(SCSharingReminderManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.safetycheckd.SCSharingReminderManager", 0);
    [(SCSharingReminderManager *)v2 setWorkQueue:v3];

    v4 = objc_alloc_init(SCArchivingService);
    [(SCSharingReminderManager *)v2 setArchiverService:v4];

    v5 = [[SCUNNotificationService alloc] initWithDelegate:v2];
    [(SCSharingReminderManager *)v2 setUserNotificationService:v5];

    v6 = objc_alloc_init(SCLockdownService);
    [(SCSharingReminderManager *)v2 setWifiSyncService:v6];

    v7 = [MEMORY[0x277CBEB58] set];
    [(SCSharingReminderManager *)v2 setNotificationsToRequest:v7];

    [(SCSharingReminderManager *)v2 loadOrMakeCache];
  }

  return v2;
}

- (SCSharingReminderManager)initWithCache:(id)cache notificationService:(id)service
{
  cacheCopy = cache;
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = SCSharingReminderManager;
  v8 = [(SCSharingReminderManager *)&v14 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.safetycheckd.SCSharingReminderManager", 0);
    [(SCSharingReminderManager *)v8 setWorkQueue:v9];

    [(SCSharingReminderManager *)v8 setSharingReminderCache:cacheCopy];
    [(SCSharingReminderManager *)v8 setUserNotificationService:serviceCopy];
    v10 = objc_alloc_init(SCArchivingService);
    [(SCSharingReminderManager *)v8 setArchiverService:v10];

    v11 = objc_alloc_init(SCLockdownService);
    [(SCSharingReminderManager *)v8 setWifiSyncService:v11];

    v12 = [MEMORY[0x277CBEB58] set];
    [(SCSharingReminderManager *)v8 setNotificationsToRequest:v12];

    [(SCSharingReminderManager *)v8 archiveCache:cacheCopy completion:0];
  }

  return v8;
}

- (void)loadOrMakeCache
{
  archiverService = [(SCSharingReminderManager *)self archiverService];
  v4 = objc_opt_class();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SCSharingReminderManager_loadOrMakeCache__block_invoke;
  v5[3] = &unk_279B39510;
  v5[4] = self;
  [archiverService getObjectOfClass:v4 atKey:@"SharingReminderCache" completion:v5];
}

void __43__SCSharingReminderManager_loadOrMakeCache__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = SCLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_262556000, v7, OS_LOG_TYPE_DEFAULT, "Error [%@] retrieving cache. Creating new cache and saving it-- this shouldn't happen again!", &v12, 0xCu);
    }

    v8 = objc_opt_new();
    [*(a1 + 32) setSharingReminderCache:v8];

    v9 = *(a1 + 32);
    v10 = [v9 sharingReminderCache];
    [v9 archiveCache:v10 completion:0];
  }

  else
  {
    [*(a1 + 32) setSharingReminderCache:a2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getNeededNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (-[SCSharingReminderManager cacheHasDueReminders](self, "cacheHasDueReminders") && (-[SCSharingReminderManager notificationsToRequest](self, "notificationsToRequest"), v5 = objc_claimAutoreleasedReturnValue(), -[SCSharingReminderManager notificationDeliveryKey](self, "notificationDeliveryKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 containsObject:v6], v6, v5, (v7 & 1) == 0))
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__SCSharingReminderManager_getNeededNotificationsWithCompletion___block_invoke;
    v10[3] = &unk_279B39538;
    objc_copyWeak(&v12, &location);
    v11 = completionCopy;
    [(SCSharingReminderManager *)self checkNotificationAvailabilityWithCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    notificationsToRequest = [(SCSharingReminderManager *)self notificationsToRequest];
    allObjects = [notificationsToRequest allObjects];
    (*(completionCopy + 2))(completionCopy, allObjects, 0);
  }
}

void __65__SCSharingReminderManager_getNeededNotificationsWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && a2)
  {
    v7 = [WeakRetained notificationsToRequest];
    v8 = [v6 notificationDeliveryKey];
    [v7 addObject:v8];

    v9 = *(a1 + 32);
    v10 = [v6 notificationsToRequest];
    v11 = [v10 allObjects];
    (*(v9 + 16))(v9, v11, v12);
  }
}

- (void)handleNotificationEventWithName:(id)name
{
  nameCopy = name;
  notificationDeliveryKey = [(SCSharingReminderManager *)self notificationDeliveryKey];
  v6 = [nameCopy isEqualToString:notificationDeliveryKey];

  if (v6)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__SCSharingReminderManager_handleNotificationEventWithName___block_invoke;
    v11[3] = &unk_279B39560;
    objc_copyWeak(&v12, &location);
    [(SCSharingReminderManager *)self checkNotificationAvailabilityWithCompletion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    wifiSyncService = [(SCSharingReminderManager *)self wifiSyncService];
    interestedNotifications = [wifiSyncService interestedNotifications];
    v9 = [interestedNotifications containsObject:nameCopy];

    if (v9)
    {
      [(SCSharingReminderManager *)self handleWifiSyncNotificationEventWithName:nameCopy];
    }

    else
    {
      v10 = SCLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SCSharingReminderManager handleNotificationEventWithName:];
      }
    }
  }
}

void __60__SCSharingReminderManager_handleNotificationEventWithName___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v8 = SCLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"N";
        if (a2)
        {
          v9 = @"Y";
        }

        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_262556000, v8, OS_LOG_TYPE_INFO, "Skipping posting because of notification availability %@ and/or error %@", &v11, 0x16u);
      }
    }

    else
    {
      [WeakRetained postDueSharingReminders];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleWifiSyncNotificationEventWithName:(id)name
{
  nameCopy = name;
  wifiSyncService = [(SCSharingReminderManager *)self wifiSyncService];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke;
  v6[3] = &unk_279B395D8;
  v6[4] = self;
  [wifiSyncService hostForIdentifier:nameCopy completion:v6];
}

void __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) sharingReminderCache];
    v5 = [v4 ignoredIdentifiersForType:@"com.apple.safetycheckd.wifi"];

    if (v5 && ([v3 lockdownFrameworkKey], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "containsObject:", v6), v6, v7))
    {
      v8 = SCLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_impl(&dword_262556000, v8, OS_LOG_TYPE_INFO, "Ignoring WiFi Sync activity with host %@", buf, 0xCu);
      }
    }

    else
    {
      objc_initWeak(buf, *(a1 + 32));
      v9 = [*(a1 + 32) archiverService];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke_14;
      v11[3] = &unk_279B395B0;
      objc_copyWeak(&v13, buf);
      v11[4] = *(a1 + 32);
      v12 = v3;
      [v9 getIntAtKey:3 completion:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke_14(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = SCLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke_14_cold_1();
      }
    }

    else
    {
      v8 = [SCSharingReminderKVStoreValue defaultForKey:3];
      v9 = [v8 integerValue];

      if (v9 == a2)
      {
        do
        {
          a2 += arc4random_uniform(0x4D59u) + 1800;
          v10 = *(a1 + 32);
          v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a2];
          LOBYTE(v10) = [v10 isWithinDeliveryWindow:v11];
        }

        while ((v10 & 1) == 0);
      }

      else
      {
        v12 = SCLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v24 = a2;
          _os_log_impl(&dword_262556000, v12, OS_LOG_TYPE_INFO, "Skipping time randomization for FeatureControlling value %ld", buf, 0xCu);
        }
      }

      v13 = a2;
      v7 = [WeakRetained reminderForPairedComputer:*(a1 + 40) delay:a2];
      v14 = [WeakRetained sharingReminderCache];
      v22 = v7;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      [v14 addSharingReminders:v15];

      v16 = [WeakRetained sharingReminderCache];
      [WeakRetained archiveCache:v16 completion:0];

      v17 = [SCSharingReminderDeliveryTask taskRequestScheduledAfter:v13];
      v18 = SCLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&dword_262556000, v18, OS_LOG_TYPE_INFO, "Submitting task request %@ for reminder delivery", buf, 0xCu);
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke_20;
      v20[3] = &unk_279B39588;
      v21 = 0;
      [SCUtils submitTaskRequest:v17 completion:v20];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke_20(uint64_t a1, int a2)
{
  if (!a2 || *(a1 + 32))
  {
    v3 = SCLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke_20_cold_1(a1, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)reminderForPairedComputer:(id)computer delay:(double)delay
{
  computerCopy = computer;
  deviceName = [computerCopy deviceName];
  v7 = [deviceName length];

  if (v7)
  {
    deviceName2 = [computerCopy deviceName];
  }

  else
  {
    marketingName = [computerCopy marketingName];
    v10 = [marketingName isEqualToString:@"Windows PC"];

    if (v10)
    {
      deviceName2 = @"Windows PC";
    }

    else
    {
      deviceName2 = &stru_2875209E0;
    }
  }

  v11 = [SCSharingReminder alloc];
  lockdownFrameworkKey = [computerCopy lockdownFrameworkKey];
  v13 = [(SCSharingReminder *)v11 initWithIdentifier:lockdownFrameworkKey displayName:deviceName2 type:@"com.apple.safetycheckd.wifi" deliverAfter:delay];

  return v13;
}

- (void)postDueSharingReminders
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_262556000, v0, v1, "SharingReminderManager could not form a request: %@ from the given sharing reminders: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __51__SCSharingReminderManager_postDueSharingReminders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = SCLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __51__SCSharingReminderManager_postDueSharingReminders__block_invoke_cold_1();
      }
    }

    else
    {
      v7 = [WeakRetained notificationsToRequest];
      v8 = [v5 notificationDeliveryKey];
      [v7 removeObject:v8];

      v9 = [v5 notificationDeliveryKey];
      [SCUtils unregisterDarwinNotification:v9];

      v10 = [v5 sharingReminderCache];
      [v10 removeSharingReminders:*(a1 + 32) wereDelivered:1];

      v6 = [v5 sharingReminderCache];
      [v5 archiveCache:v6 completion:0];
    }
  }
}

- (void)postWifiSyncNotificationWithCompletion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = [[SCSharingReminder alloc] initWithIdentifier:@"id" displayName:@"Windows PC" type:@"com.apple.safetycheckd.wifi" deliverAfter:0.0];
  userNotificationService = [(SCSharingReminderManager *)self userNotificationService];
  v14[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [userNotificationService toUNNotificationRequest:v7];

  if (v8)
  {
    userNotificationService2 = [(SCSharingReminderManager *)self userNotificationService];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__SCSharingReminderManager_postWifiSyncNotificationWithCompletion___block_invoke;
    v12[3] = &unk_279B39628;
    v13 = completionCopy;
    [userNotificationService2 addNotificationRequest:v8 withCompletionHandler:v12];

    v10 = v13;
  }

  else
  {
    v10 = SCLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SCSharingReminderManager *)v5 postWifiSyncNotificationWithCompletion:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)checkNotificationAvailabilityWithCompletion:(id)completion
{
  completionCopy = completion;
  if (-[SCSharingReminderManager cacheHasDueReminders](self, "cacheHasDueReminders") && ([MEMORY[0x277CBEAA8] now], v5 = objc_claimAutoreleasedReturnValue(), v6 = -[SCSharingReminderManager isWithinDeliveryWindow:](self, "isWithinDeliveryWindow:", v5), v5, v6))
  {
    objc_initWeak(&location, self);
    archiverService = [(SCSharingReminderManager *)self archiverService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__SCSharingReminderManager_checkNotificationAvailabilityWithCompletion___block_invoke;
    v8[3] = &unk_279B39678;
    objc_copyWeak(&v10, &location);
    v8[4] = self;
    v9 = completionCopy;
    [archiverService getIntAtKey:0 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __72__SCSharingReminderManager_checkNotificationAvailabilityWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      v7 = SCLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __72__SCSharingReminderManager_checkNotificationAvailabilityWithCompletion___block_invoke_cold_1();
      }

      v8 = *(*(a1 + 40) + 16);
    }

    else
    {
      v9 = [WeakRetained sharingReminderCache];
      [v9 consecutiveNotificationCount];

      v10 = [v6 sharingReminderCache];
      v11 = [v10 lastFiredDate];

      if (v11)
      {
        v12 = [v6 archiverService];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __72__SCSharingReminderManager_checkNotificationAvailabilityWithCompletion___block_invoke_37;
        v14[3] = &unk_279B39650;
        v13 = *(a1 + 40);
        v14[5] = v6;
        v15 = v13;
        v14[4] = *(a1 + 32);
        [v12 getIntAtKey:1 completion:v14];

        goto LABEL_9;
      }

      v8 = *(*(a1 + 40) + 16);
    }

    v8();
  }

LABEL_9:
}

void __72__SCSharingReminderManager_checkNotificationAvailabilityWithCompletion___block_invoke_37(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = SCLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__SCSharingReminderManager_checkNotificationAvailabilityWithCompletion___block_invoke_37_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = a2;
    v8 = [*(a1 + 32) sharingReminderCache];
    v9 = exp2([v8 consecutiveNotificationCount]) * v7;

    v10 = [*(a1 + 40) sharingReminderCache];
    v11 = [v10 lastFiredDate];
    v12 = [v11 dateByAddingTimeInterval:v9];

    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = [v12 earlierDate:v13];
    [v14 isEqualToDate:v12];

    (*(*(a1 + 48) + 16))();
  }
}

- (id)validRemindersDueBy:(id)by
{
  byCopy = by;
  workQueue = [(SCSharingReminderManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SCSharingReminderManager_validRemindersDueBy___block_invoke;
  block[3] = &unk_279B396C0;
  block[4] = self;
  dispatch_sync(workQueue, block);

  sharingReminderCache = [(SCSharingReminderManager *)self sharingReminderCache];
  v7 = [sharingReminderCache remindersDueBy:byCopy];

  return v7;
}

void __48__SCSharingReminderManager_validRemindersDueBy___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = SCLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = @"Unknown";
      if (v4)
      {
        v7 = v4;
      }

      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_262556000, v5, OS_LOG_TYPE_ERROR, "Error validating cache, error: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)validateCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x277CBEB58] set];
  wifiSyncService = [(SCSharingReminderManager *)self wifiSyncService];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SCSharingReminderManager_validateCacheWithCompletion___block_invoke;
  v9[3] = &unk_279B396E8;
  v9[4] = self;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  [wifiSyncService fetchWifiSyncIdentifiersWithCompletion:v9];
}

void __56__SCSharingReminderManager_validateCacheWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [*(a1 + 32) sharingReminderCache];
  v5 = [v4 scheduledReminders];

  v6 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v9 = @"com.apple.safetycheckd.wifi";
    v30 = @"com.apple.safetycheckd.wifi";
    v31 = v5;
    v29 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [v11 type];
        v13 = [v12 isEqualToString:v9];

        if (!v13)
        {
          v14 = SCLogger();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            __56__SCSharingReminderManager_validateCacheWithCompletion___block_invoke_cold_1(v39, v11);
          }

LABEL_13:

LABEL_14:
          [*(a1 + 40) addObject:v11];
          continue;
        }

        if (!_os_feature_enabled_impl())
        {
          goto LABEL_14;
        }

        v14 = [v11 identifier];
        if (![v3 containsObject:v14])
        {
          goto LABEL_13;
        }

        v15 = [*(a1 + 32) sharingReminderCache];
        v16 = [v11 type];
        [v15 ignoredIdentifiersForType:v16];
        v18 = v17 = v3;
        [v11 identifier];
        v19 = v7;
        v21 = v20 = a1;
        v32 = [v18 containsObject:v21];

        a1 = v20;
        v7 = v19;

        v3 = v17;
        v8 = v29;
        v9 = v30;

        v5 = v31;
        if (v32)
        {
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v7);
  }

  if ([*(a1 + 40) count])
  {
    v22 = SCLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 40);
      *buf = 138412290;
      v38 = v23;
      _os_log_impl(&dword_262556000, v22, OS_LOG_TYPE_INFO, "Removing reminders after validation check: %@", buf, 0xCu);
    }

    v24 = [*(a1 + 32) sharingReminderCache];
    v25 = [*(a1 + 40) allObjects];
    [v24 removeSharingReminders:v25 wereDelivered:0];

    v26 = *(a1 + 32);
    v27 = [v26 sharingReminderCache];
    [v26 archiveCache:v27 completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)archiveCache:(id)cache completion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  archiverService = [(SCSharingReminderManager *)self archiverService];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SCSharingReminderManager_archiveCache_completion___block_invoke;
  v11[3] = &unk_279B39710;
  v12 = cacheCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = cacheCopy;
  [archiverService setObject:v10 atKey:@"SharingReminderCache" completion:v11];
}

void __52__SCSharingReminderManager_archiveCache_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = SCLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__SCSharingReminderManager_archiveCache_completion___block_invoke_cold_1(v5, a1);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (BOOL)isWithinDeliveryWindow:(id)window
{
  v3 = MEMORY[0x277CBEA80];
  windowCopy = window;
  currentCalendar = [v3 currentCalendar];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v7 = [currentCalendar componentsInTimeZone:systemTimeZone fromDate:windowCopy];

  LOBYTE(currentCalendar) = ([v7 hour] - 9) < 9;
  return currentCalendar;
}

- (BOOL)cacheHasDueReminders
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [(SCSharingReminderManager *)self validRemindersDueBy:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  if ([categoryIdentifier hasPrefix:@"scsharingreminders"])
  {
    actionIdentifier = [responseCopy actionIdentifier];
    [(SCSharingReminderManager *)self handleNotificationAction:actionIdentifier];

    if (!handlerCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = SCLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SCSharingReminderManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
  }

  if (handlerCopy)
  {
LABEL_7:
    handlerCopy[2](handlerCopy);
  }

LABEL_8:
}

- (void)handleNotificationAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:*MEMORY[0x277CE20F0]])
  {
    sharingReminderCache = [(SCSharingReminderManager *)self sharingReminderCache];
    [sharingReminderCache incrementNotificationCount];
LABEL_5:

    sharingReminderCache2 = [(SCSharingReminderManager *)self sharingReminderCache];
    [(SCSharingReminderManager *)self archiveCache:sharingReminderCache2 completion:0];

    goto LABEL_9;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x277CE20E8]])
  {
    sharingReminderCache = [(SCSharingReminderManager *)self sharingReminderCache];
    [sharingReminderCache resetNotificationCount];
    goto LABEL_5;
  }

  v7 = SCLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SCSharingReminderManager handleNotificationAction:];
  }

LABEL_9:
}

- (void)userOpenedSafetyCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  sharingReminderCache = [(SCSharingReminderManager *)self sharingReminderCache];
  [sharingReminderCache resetNotificationCount];

  objc_initWeak(&location, self);
  archiverService = [(SCSharingReminderManager *)self archiverService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SCSharingReminderManager_userOpenedSafetyCheckWithCompletion___block_invoke;
  v8[3] = &unk_279B39738;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
  v9 = v7;
  [archiverService getIntAtKey:2 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __64__SCSharingReminderManager_userOpenedSafetyCheckWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = SCLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__SCSharingReminderManager_userOpenedSafetyCheckWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = [WeakRetained sharingReminderCache];
    [v9 deliverGeneralSharingReminderAfter:a2];

    v10 = [v7 sharingReminderCache];
    [v7 archiveCache:v10 completion:*(a1 + 32)];
  }
}

- (void)handleSignals:(id)signals completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  signalsCopy = signals;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = signalsCopy;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        signalType = [v11 signalType];
        v13 = [signalType isEqualToString:@"userAcknowledgedShare"];

        v14 = SCLogger();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v36 = v11;
            _os_log_impl(&dword_262556000, v15, OS_LOG_TYPE_INFO, "Ignoring future reminders for %@ and removing any existing ones", buf, 0xCu);
          }

          sharingReminderCache = [(SCSharingReminderManager *)self sharingReminderCache];
          sharingIdentifier = [v11 sharingIdentifier];
          v34 = sharingIdentifier;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
          sharingType = [v11 sharingType];
          [sharingReminderCache addIgnoredIdentifiers:v18 withType:sharingType];
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [SCSharingReminderManager handleSignals:v33 completion:v11];
          }

          sharingReminderCache = [SCDaemonError errorWithCode:4];
          [array addObject:sharingReminderCache];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  objc_initWeak(buf, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__SCSharingReminderManager_handleSignals_completion___block_invoke;
  v25[3] = &unk_279B39760;
  objc_copyWeak(&v28, buf);
  v20 = array;
  v26 = v20;
  v21 = completionCopy;
  v27 = v21;
  [(SCSharingReminderManager *)self validateCacheWithCompletion:v25];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);

  v22 = *MEMORY[0x277D85DE8];
}

void __53__SCSharingReminderManager_handleSignals_completion___block_invoke(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 || !a2)
  {
    v8 = SCLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __53__SCSharingReminderManager_handleSignals_completion___block_invoke_cold_1(v8);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v7 = [WeakRetained sharingReminderCache];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__SCSharingReminderManager_handleSignals_completion___block_invoke_2;
    v9[3] = &unk_279B39710;
    v10 = a1[4];
    v11 = a1[5];
    [WeakRetained archiveCache:v7 completion:v9];
  }
}

void __53__SCSharingReminderManager_handleSignals_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  if ([*(a1 + 32) count])
  {
    v4 = [SCDaemonError errorWithCode:2 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4 == 0, v4);
}

- (void)fetchStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  archiverService = [(SCSharingReminderManager *)self archiverService];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SCSharingReminderManager_fetchStatusWithCompletion___block_invoke;
  v7[3] = &unk_279B39800;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [archiverService getValueAtKey:0 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__SCSharingReminderManager_fetchStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained archiverService];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__SCSharingReminderManager_fetchStatusWithCompletion___block_invoke_2;
    v7[3] = &unk_279B397D8;
    v7[4] = v5;
    v8 = v3;
    v9 = *(a1 + 32);
    [v6 getValueAtKey:1 completion:v7];
  }
}

void __54__SCSharingReminderManager_fetchStatusWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 archiverService];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__SCSharingReminderManager_fetchStatusWithCompletion___block_invoke_3;
    v7[3] = &unk_279B397B0;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    v9 = v3;
    v10 = *(a1 + 48);
    [v5 getValueAtKey:2 completion:v7];
  }
}

void __54__SCSharingReminderManager_fetchStatusWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 archiverService];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__SCSharingReminderManager_fetchStatusWithCompletion___block_invoke_4;
    v7[3] = &unk_279B39788;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    v9 = *(a1 + 48);
    v10 = v3;
    v11 = *(a1 + 56);
    [v5 getValueAtKey:3 completion:v7];
  }
}

void __54__SCSharingReminderManager_fetchStatusWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v27 = 0u;
    v28 = 0u;
    v8 = [v7 sharingReminderCache];
    v9 = v8;
    if (v8)
    {
      [v8 toCacheState];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    memset(v23, 0, sizeof(v23));
    LOBYTE(v20) = [*(a1 + 40) integerValue];
    *&v20 = v20;
    *(&v20 + 1) = [*(a1 + 48) integerValue];
    *&v21 = [*(a1 + 56) integerValue];
    *(&v21 + 1) = [v5 integerValue];
    v10 = v27;
    v22 = v27;
    v24 = *(&v27 + 1);
    v25 = v28;
    v26 = *(&v28 + 1);
    v11 = *(a1 + 64);
    v15[0] = v20;
    v15[1] = v21;
    v16 = v10;
    v12 = v24;
    v17 = v12;
    v13 = v25;
    v18 = v13;
    v14 = v26;
    v19 = v14;
    (*(v11 + 16))(v11, v15);
  }
}

- (void)resetFeatureWithCompletion:(id)completion
{
  completionCopy = completion;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  configWithGlobalDefaults(&v16);
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    [v5 toCacheState];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v11[0] = v16;
  v11[1] = v17;
  v12 = v18;
  v7 = *(&v18 + 1);
  v13 = v7;
  v8 = v19;
  v14 = v8;
  v9 = *(&v19 + 1);
  v15 = v9;
  if (self)
  {
    [(SCSharingReminderManager *)self setStatus:v11 completion:completionCopy];
  }

  else
  {
    v10 = v9;
  }
}

- (void)setStatus:(id *)status completion:(id)completion
{
  completionCopy = completion;
  v7 = [[SCSharingReminderKVStoreValue alloc] initWithIntegerValue:status->var0.var0];
  v8 = [[SCSharingReminderKVStoreValue alloc] initWithIntegerValue:status->var0.var1];
  v9 = [[SCSharingReminderKVStoreValue alloc] initWithIntegerValue:status->var0.var3];
  v10 = [[SCSharingReminderKVStoreValue alloc] initWithIntegerValue:status->var0.var2];
  objc_initWeak(location, self);
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  archiverService = [(SCSharingReminderManager *)self archiverService];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __49__SCSharingReminderManager_setStatus_completion___block_invoke;
  v44[3] = &unk_279B39828;
  objc_copyWeak(&v47, location);
  v13 = completionCopy;
  v46 = v13;
  v14 = v11;
  v45 = v14;
  [archiverService setValue:v7 atKey:0 completion:v44];

  dispatch_group_enter(v14);
  archiverService2 = [(SCSharingReminderManager *)self archiverService];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __49__SCSharingReminderManager_setStatus_completion___block_invoke_55;
  v40[3] = &unk_279B39828;
  objc_copyWeak(&v43, location);
  v16 = v13;
  v42 = v16;
  v17 = v14;
  v41 = v17;
  [archiverService2 setValue:v8 atKey:1 completion:v40];

  dispatch_group_enter(v17);
  archiverService3 = [(SCSharingReminderManager *)self archiverService];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __49__SCSharingReminderManager_setStatus_completion___block_invoke_56;
  v36[3] = &unk_279B39828;
  objc_copyWeak(&v39, location);
  v19 = v16;
  v38 = v19;
  v20 = v17;
  v37 = v20;
  v21 = v10;
  [archiverService3 setValue:v10 atKey:2 completion:v36];

  dispatch_group_enter(v20);
  archiverService4 = [(SCSharingReminderManager *)self archiverService];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __49__SCSharingReminderManager_setStatus_completion___block_invoke_57;
  v32[3] = &unk_279B39828;
  objc_copyWeak(&v35, location);
  v23 = v19;
  v34 = v23;
  v24 = v20;
  v33 = v24;
  [archiverService4 setValue:v9 atKey:3 completion:v32];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3254779904;
  block[2] = __49__SCSharingReminderManager_setStatus_completion___block_invoke_58;
  block[3] = &unk_2875207B0;
  v25 = *&status->var0.var2;
  v29 = *&status->var0.var0;
  v30 = v25;
  __copy_constructor_8_8_t0w1_s8_s16_s24(v31, &status->var1);
  block[4] = self;
  v28 = v23;
  v26 = v23;
  dispatch_group_notify(v24, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&v47);

  objc_destroyWeak(location);
  __destructor_8_s8_s16_s24(&status->var1);
}

void __49__SCSharingReminderManager_setStatus_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v7 = SCLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__SCSharingReminderManager_setStatus_completion___block_invoke_cold_1();
      }

      v8 = *(a1 + 40);
      v12[0] = v5;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v10 = [SCDaemonError errorWithCode:2 underlyingErrors:v9];
      (*(v8 + 16))(v8, a2, v10);
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __49__SCSharingReminderManager_setStatus_completion___block_invoke_55(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v7 = SCLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__SCSharingReminderManager_setStatus_completion___block_invoke_55_cold_1();
      }

      v8 = *(a1 + 40);
      v12[0] = v5;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v10 = [SCDaemonError errorWithCode:2 underlyingErrors:v9];
      (*(v8 + 16))(v8, a2, v10);
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __49__SCSharingReminderManager_setStatus_completion___block_invoke_56(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v7 = SCLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__SCSharingReminderManager_setStatus_completion___block_invoke_56_cold_1();
      }

      v8 = *(a1 + 40);
      v12[0] = v5;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v10 = [SCDaemonError errorWithCode:2 underlyingErrors:v9];
      (*(v8 + 16))(v8, a2, v10);
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __49__SCSharingReminderManager_setStatus_completion___block_invoke_57(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v7 = SCLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__SCSharingReminderManager_setStatus_completion___block_invoke_57_cold_1();
      }

      v8 = *(a1 + 40);
      v12[0] = v5;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v10 = [SCDaemonError errorWithCode:2 underlyingErrors:v9];
      (*(v8 + 16))(v8, a2, v10);
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __49__SCSharingReminderManager_setStatus_completion___block_invoke_58(uint64_t a1)
{
  v2 = SCSharingReminderCache;
  __copy_constructor_8_8_t0w1_s8_s16_s24(v3, a1 + 80);
  if (SCSharingReminderCache)
  {
    v2 = [SCSharingReminderCache cacheWithState:v3];
  }

  else
  {
  }

  [*(a1 + 32) setSharingReminderCache:v2];
  [*(a1 + 32) archiveCache:v2 completion:*(a1 + 40)];
}

- (void)setReminderDelays:(id)delays completion:(id)completion
{
  delaysCopy = delays;
  completionCopy = completion;
  v8 = [SCSharingReminderKVStoreValue alloc];
  v9 = [delaysCopy objectAtIndexedSubscript:0];
  v10 = -[SCSharingReminderKVStoreValue initWithIntegerValue:](v8, "initWithIntegerValue:", [v9 longLongValue]);

  v11 = [SCSharingReminderKVStoreValue alloc];
  v12 = [delaysCopy objectAtIndexedSubscript:1];
  v13 = -[SCSharingReminderKVStoreValue initWithIntegerValue:](v11, "initWithIntegerValue:", [v12 longLongValue]);

  v14 = [SCSharingReminderKVStoreValue alloc];
  v15 = [delaysCopy objectAtIndexedSubscript:2];
  v27 = -[SCSharingReminderKVStoreValue initWithIntegerValue:](v14, "initWithIntegerValue:", [v15 longLongValue]);

  objc_initWeak(location, self);
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  archiverService = [(SCSharingReminderManager *)self archiverService];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __57__SCSharingReminderManager_setReminderDelays_completion___block_invoke;
  v38[3] = &unk_279B39828;
  objc_copyWeak(&v41, location);
  v18 = completionCopy;
  v40 = v18;
  v19 = v16;
  v39 = v19;
  [archiverService setValue:v10 atKey:1 completion:v38];

  dispatch_group_enter(v19);
  archiverService2 = [(SCSharingReminderManager *)self archiverService];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __57__SCSharingReminderManager_setReminderDelays_completion___block_invoke_59;
  v34[3] = &unk_279B39828;
  objc_copyWeak(&v37, location);
  v21 = v18;
  v36 = v21;
  v22 = v19;
  v35 = v22;
  [archiverService2 setValue:v13 atKey:2 completion:v34];

  dispatch_group_enter(v22);
  archiverService3 = [(SCSharingReminderManager *)self archiverService];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __57__SCSharingReminderManager_setReminderDelays_completion___block_invoke_60;
  v30[3] = &unk_279B39828;
  objc_copyWeak(&v33, location);
  v24 = v21;
  v32 = v24;
  v25 = v22;
  v31 = v25;
  [archiverService3 setValue:v27 atKey:3 completion:v30];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SCSharingReminderManager_setReminderDelays_completion___block_invoke_61;
  block[3] = &unk_279B39850;
  v29 = v24;
  v26 = v24;
  dispatch_group_notify(v25, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v41);
  objc_destroyWeak(location);
}

void __57__SCSharingReminderManager_setReminderDelays_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v7 = SCLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __57__SCSharingReminderManager_setReminderDelays_completion___block_invoke_cold_1();
      }

      v8 = *(a1 + 40);
      v12[0] = v5;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v10 = [SCDaemonError errorWithCode:2 underlyingErrors:v9];
      (*(v8 + 16))(v8, a2, v10);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __57__SCSharingReminderManager_setReminderDelays_completion___block_invoke_59(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v7 = SCLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__SCSharingReminderManager_setStatus_completion___block_invoke_56_cold_1();
      }

      v8 = *(a1 + 40);
      v12[0] = v5;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v10 = [SCDaemonError errorWithCode:2 underlyingErrors:v9];
      (*(v8 + 16))(v8, a2, v10);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __57__SCSharingReminderManager_setReminderDelays_completion___block_invoke_60(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v7 = SCLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__SCSharingReminderManager_setStatus_completion___block_invoke_57_cold_1();
      }

      v8 = *(a1 + 40);
      v12[0] = v5;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v10 = [SCDaemonError errorWithCode:2 underlyingErrors:v9];
      (*(v8 + 16))(v8, a2, v10);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationEventWithName:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Received unrecognized notification event: %@, doing nothing", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke_14_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Could not fetch delay, so could not schedule reminder. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__SCSharingReminderManager_handleWifiSyncNotificationEventWithName___block_invoke_20_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  *(a1 + 32);
  OUTLINED_FUNCTION_3(&dword_262556000, a2, a3, "Error submitting task request: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __51__SCSharingReminderManager_postDueSharingReminders__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Error posting notification: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)postWifiSyncNotificationWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = 0;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "SharingReminderManager could not form a request: %@ for a reminder with type: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __72__SCSharingReminderManager_checkNotificationAvailabilityWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Couldn't check notif status. Max count error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__SCSharingReminderManager_checkNotificationAvailabilityWithCompletion___block_invoke_37_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Couldn't fetch backstop interval length. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__SCSharingReminderManager_validateCacheWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_4(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_5(&dword_262556000, v5, v6, "Cannot validate cache against unrecognized type: %@");
}

void __52__SCSharingReminderManager_archiveCache_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_262556000, v3, v4, "Archiving error: %@. Failed to archive cache: %@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Unknown notification category identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationAction:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Unknown notification action identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__SCSharingReminderManager_userOpenedSafetyCheckWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Error retrieving general time interval after SC use: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleSignals:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_4(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_5(&dword_262556000, v5, v6, "Received unrecognized sharing reminder signal type: %@");
}

void __49__SCSharingReminderManager_setStatus_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262556000, v0, v1, "Error setting maximum notification count: %@ %s");
  v2 = *MEMORY[0x277D85DE8];
}

void __49__SCSharingReminderManager_setStatus_completion___block_invoke_55_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262556000, v0, v1, "Error setting backstop length: %@ %s");
  v2 = *MEMORY[0x277D85DE8];
}

void __49__SCSharingReminderManager_setStatus_completion___block_invoke_56_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262556000, v0, v1, "Error setting general time interval: %@ %s");
  v2 = *MEMORY[0x277D85DE8];
}

void __49__SCSharingReminderManager_setStatus_completion___block_invoke_57_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262556000, v0, v1, "Error setting short time interval: %@ %s");
  v2 = *MEMORY[0x277D85DE8];
}

void __57__SCSharingReminderManager_setReminderDelays_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262556000, v0, v1, "Error setting backstop delay: %@ %s");
  v2 = *MEMORY[0x277D85DE8];
}

@end