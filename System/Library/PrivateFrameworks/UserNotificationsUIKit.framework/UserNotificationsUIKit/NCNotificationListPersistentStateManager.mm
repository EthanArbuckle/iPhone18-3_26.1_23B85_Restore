@interface NCNotificationListPersistentStateManager
+ (id)_dataDirectoryPath;
+ (id)_persistentStateFilePath;
- (BOOL)_containsNotificationRequest:(id)a3 inMutableRepresentationForGroup:(id)a4 shouldRemove:(BOOL)a5;
- (BOOL)_containsNotificationRequest:(id)a3 inMutableRepresentationForSection:(id)a4 shouldRemove:(BOOL)a5;
- (BOOL)_doesPersistentStateFileExist;
- (BOOL)_getSectionFromPersistentStateRepresentation:(id)a3 request:(id)a4 section:(unint64_t *)a5;
- (BOOL)_isListRepresentation:(id)a3 equalToListRepresentation:(id)a4;
- (BOOL)_isMigratedTimeSensitiveNotificationRequest:(id)a3;
- (BOOL)_isMutableListRepresentationEmpty:(id)a3;
- (BOOL)_isRepresentationForGroup:(id)a3 equalToRepresentationForGroup:(id)a4;
- (BOOL)_isRepresentationForGroupEmpty:(id)a3;
- (BOOL)_isRepresentationForGroups:(id)a3 equalToRepresentationForGroups:(id)a4;
- (BOOL)_isRepresentationForMigrationTimes:(id)a3 equalToRepresentationForMigrationTimes:(id)a4;
- (BOOL)_isRepresentationForSection:(id)a3 equalToRepresentationForSection:(id)a4;
- (BOOL)_isRepresentationForSectionEmpty:(id)a3;
- (BOOL)_isRepresentationForSections:(id)a3 equalToRepresentationForSections:(id)a4;
- (NCNotificationListPersistentStateManager)initWithDelegate:(id)a3;
- (NCNotificationListPersistentStateManagerDelegate)delegate;
- (id)_getStoredMigrationTimeAndClearNotificationRequest:(id)a3;
- (id)_listRepresentationForNotificationList:(id)a3 sections:(id)a4 listCache:(id)a5 migrationScheduler:(id)a6 listInfo:(id)a7 detailed:(BOOL)a8 hashIdentifiers:(BOOL)a9 includeHistory:(BOOL)a10 includeHidden:(BOOL)a11;
- (id)_mutableRepresentationForMigratedTimeSensitiveNotificationRequestsInRepresentationForList:(id)a3;
- (id)_mutableRepresentationForRepresentationForGroup:(id)a3;
- (id)_mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests:(id)a3;
- (id)_mutableRepresentationForRepresentationForNotificationRequests:(id)a3;
- (id)_mutableRepresentationForRepresentationForRequestMigrationTimes:(id)a3;
- (id)_mutableRepresentationForRepresentationForSection:(id)a3;
- (id)_mutableRepresentationForRequestMigrationTimesInRepresentationForList:(id)a3;
- (id)_mutableRepresentationForStoredListRepresentation:(id)a3;
- (id)_representationForGroup:(id)a3 atIndex:(unint64_t)a4 detailed:(BOOL)a5 hashIdentifiers:(BOOL)a6;
- (id)_representationForGroupWithSectionIdentifier:(id)a3 threadIdentifier:(id)a4 inRepresentationForGroups:(id)a5;
- (id)_representationForGroups:(id)a3 detailed:(BOOL)a4 hashIdentifiers:(BOOL)a5;
- (id)_representationForListCache:(id)a3;
- (id)_representationForMigratedTimeSensitiveNotificationRequests:(id)a3;
- (id)_representationForMigrationScheduler:(id)a3;
- (id)_representationForNotificationRequest:(id)a3 hashIdentifiers:(BOOL)a4;
- (id)_representationForNotificationRequests:(id)a3 detailed:(BOOL)a4 hashIdentifiers:(BOOL)a5;
- (id)_representationForRequestMigrationTimes:(id)a3;
- (id)_representationForSection:(id)a3 detailed:(BOOL)a4 hashIdentifiers:(BOOL)a5 includeHidden:(BOOL)a6;
- (id)_representationForSections:(id)a3 detailed:(BOOL)a4 hashIdentifiers:(BOOL)a5 includeHidden:(BOOL)a6;
- (id)_sectionRepresentationOfSectionType:(id)a3 inRepresentationForSections:(id)a4;
- (id)_summaryMigrationTimeInRepresentationForList:(id)a3;
- (id)stateRepresentationForNotificationList:(id)a3 sectionLists:(id)a4 listCache:(id)a5 migrationScheduler:(id)a6 listInfo:(id)a7 detailed:(BOOL)a8;
- (int)_formatVersionForListRepresentation:(id)a3;
- (unint64_t)_getSectionTypeAndRemoveNotificationRequest:(id)a3 inMutableRepresentationForSections:(id)a4;
- (unint64_t)sectionForStoredNotificationRequest:(id)a3;
- (void)_clearStoredListRepresentationForSectionIdentifier:(id)a3;
- (void)_clearStoredMigratedTimeSensitiveNotificationRequestsForSectionIdentifier:(id)a3;
- (void)_clearStoredRequestMigrationTimesForSectionIdentifier:(id)a3;
- (void)_clearStoredSectionIdentifier:(id)a3 inMutableRepresentationForSection:(id)a4;
- (void)_ensureDataDirectoryExists;
- (void)_mergePendingNotificationListRepresentation:(id)a3 withMutableListRepresentation:(id)a4;
- (void)_mergePendingRequestMigrationTimesRepresentation:(id)a3 withMutableRepresentationForRequestMigrationTimes:(id)a4;
- (void)_mergeRepresentationForGroup:(id)a3 withMutableRepresentationForGroup:(id)a4;
- (void)_mergeRepresentationForNotificationRequests:(id)a3 withMutableRepresentationForNotificationRequests:(id)a4;
- (void)_mergeRepresentationForSection:(id)a3 withMutableRepresentationForSection:(id)a4;
- (void)_persistCachedRepresentations;
- (void)_publishOnReadForStoredPersistentStateRepresentation:(id)a3;
- (void)_readPersistentStateFromFile;
- (void)_readPersistentStateFromFileIfNecessaryWithCompletion:(id)a3;
- (void)_scheduleListRepresentationPersistence;
- (void)_sendPersistentStateToVendor:(id)a3;
- (void)_throttledWriteFileListRepresentation:(id)a3 vendorListRepresentation:(id)a4;
- (void)_writePersistentStateToFileWithRepresentation:(id)a3;
- (void)notificationsLoadedForSectionIdentifier:(id)a3;
- (void)updatePersistentStateForNotificationList:(id)a3 sectionLists:(id)a4 listCache:(id)a5 migrationScheduler:(id)a6 listInfo:(id)a7 detailed:(BOOL)a8;
@end

@implementation NCNotificationListPersistentStateManager

- (void)_scheduleListRepresentationPersistence
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NCNotificationListPersistentStateManager *)self isFileWritingThrottled])
  {
    v3 = *MEMORY[0x277D77DC8];
    if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E77E000, v3, OS_LOG_TYPE_DEFAULT, "Not scheduling file write. Currently throttled.", buf, 2u);
    }
  }

  else
  {
    [(NCNotificationListPersistentStateManager *)self setFileWritingThrottled:1];
    v4 = 0.5;
    if (UNCCatchMe())
    {
      v5 = self->_startTime + 10.0;
      v6 = v5 - CFAbsoluteTimeGetCurrent();
      if (v6 <= 0.5 || v6 <= 0.0)
      {
        v4 = 0.5;
      }

      else
      {
        v4 = v6;
      }
    }

    v8 = *MEMORY[0x277D77DC8];
    if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v4;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling file write after %1.2f sec", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9 = dispatch_time(0, (v4 * 1000000000.0));
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__NCNotificationListPersistentStateManager__scheduleListRepresentationPersistence__block_invoke;
    block[3] = &unk_27836F498;
    objc_copyWeak(&v12, buf);
    dispatch_after(v9, queue, block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (NCNotificationListPersistentStateManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NCNotificationListPersistentStateManager;
  v5 = [(NCNotificationListPersistentStateManager *)&v20 init];
  if (v5)
  {
    NCRegisterUserNotificationsUILogging();
    objc_storeWeak(v5 + 3, v4);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.UserNotificationsUI.NCNotificationListPersistentStateManager", v6);
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCA968]);
    v10 = *(v5 + 9);
    *(v5 + 9) = v9;

    v11 = *(v5 + 9);
    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    [v11 setLocale:v12];

    [*(v5 + 9) setDateStyle:1];
    [*(v5 + 9) setTimeStyle:3];
    *(v5 + 8) = 0;
    *(v5 + 18) = 0;
    v13 = *(v5 + 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__NCNotificationListPersistentStateManager_initWithDelegate___block_invoke;
    block[3] = &unk_27836F6A8;
    v14 = v5;
    v19 = v14;
    dispatch_async(v13, block);
    if (UNCCatchMe())
    {
      v15 = objc_alloc_init(NCSummaryServiceGateway);
      v16 = *(v14 + 14);
      *(v14 + 14) = v15;
    }

    *(v14 + 16) = CFAbsoluteTimeGetCurrent();
  }

  return v5;
}

- (void)updatePersistentStateForNotificationList:(id)a3 sectionLists:(id)a4 listCache:(id)a5 migrationScheduler:(id)a6 listInfo:(id)a7 detailed:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  BYTE2(v24) = 0;
  LOWORD(v24) = 1;
  v19 = [NCNotificationListPersistentStateManager _listRepresentationForNotificationList:"_listRepresentationForNotificationList:sections:listCache:migrationScheduler:listInfo:detailed:hashIdentifiers:includeHistory:includeHidden:" sections:v14 listCache:v15 migrationScheduler:v16 listInfo:v17 detailed:v18 hashIdentifiers:v8 includeHistory:v24 includeHidden:?];
  if (UNCCatchMe())
  {
    BYTE2(v25) = 1;
    LOWORD(v25) = 256;
    v20 = [NCNotificationListPersistentStateManager _listRepresentationForNotificationList:"_listRepresentationForNotificationList:sections:listCache:migrationScheduler:listInfo:detailed:hashIdentifiers:includeHistory:includeHidden:" sections:v14 listCache:v15 migrationScheduler:v16 listInfo:v17 detailed:v18 hashIdentifiers:v8 includeHistory:v25 includeHidden:?];
  }

  else
  {
    v20 = 0;
  }

  [(NCNotificationListPersistentStateManager *)self setCurrentStateRepresentation:v19];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __145__NCNotificationListPersistentStateManager_updatePersistentStateForNotificationList_sectionLists_listCache_migrationScheduler_listInfo_detailed___block_invoke;
  block[3] = &unk_278370C40;
  objc_copyWeak(&v29, &location);
  v27 = v20;
  v28 = v19;
  v22 = v19;
  v23 = v20;
  dispatch_async(queue, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __145__NCNotificationListPersistentStateManager_updatePersistentStateForNotificationList_sectionLists_listCache_migrationScheduler_listInfo_detailed___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __145__NCNotificationListPersistentStateManager_updatePersistentStateForNotificationList_sectionLists_listCache_migrationScheduler_listInfo_detailed___block_invoke_2;
  v3[3] = &unk_278372628;
  v3[4] = WeakRetained;
  v4 = a1[4];
  v5 = a1[5];
  [WeakRetained _readPersistentStateFromFileIfNecessaryWithCompletion:v3];
}

void __145__NCNotificationListPersistentStateManager_updatePersistentStateForNotificationList_sectionLists_listCache_migrationScheduler_listInfo_detailed___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v7 = [*(a1 + 32) cachedListRepresentation];
    v3 = UNCCatchMe();
    v4 = 48;
    if (v3)
    {
      v4 = 40;
    }

    v5 = *(a1 + v4);
    if (([*(a1 + 32) _isListRepresentation:v7 equalToListRepresentation:v5] & 1) == 0)
    {
      [*(a1 + 32) setCachedListRepresentation:v5];
      [*(a1 + 32) _throttledWriteFileListRepresentation:*(a1 + 48) vendorListRepresentation:*(a1 + 40)];
    }
  }

  else
  {
    v6 = *MEMORY[0x277D77DC8];
    if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_ERROR))
    {
      __145__NCNotificationListPersistentStateManager_updatePersistentStateForNotificationList_sectionLists_listCache_migrationScheduler_listInfo_detailed___block_invoke_2_cold_1(v6);
    }
  }
}

- (id)stateRepresentationForNotificationList:(id)a3 sectionLists:(id)a4 listCache:(id)a5 migrationScheduler:(id)a6 listInfo:(id)a7 detailed:(BOOL)a8
{
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  return [NCNotificationListPersistentStateManager _listRepresentationForNotificationList:"_listRepresentationForNotificationList:sections:listCache:migrationScheduler:listInfo:detailed:hashIdentifiers:includeHistory:includeHidden:" sections:a3 listCache:a4 migrationScheduler:a5 listInfo:a6 detailed:a7 hashIdentifiers:a8 includeHistory:v9 includeHidden:?];
}

- (void)notificationsLoadedForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_storedPersistentStateRepresentation)
  {
    [(NCNotificationListPersistentStateManager *)self _clearStoredListRepresentationForSectionIdentifier:v4];
    v4 = v5;
  }

  if (self->_storedPersistentMigrationTimes)
  {
    [(NCNotificationListPersistentStateManager *)self _clearStoredRequestMigrationTimesForSectionIdentifier:v5];
    v4 = v5;
  }

  if (self->_storedPersistentMigratedTimeSensitiveNotificationRequests)
  {
    [(NCNotificationListPersistentStateManager *)self _clearStoredMigratedTimeSensitiveNotificationRequestsForSectionIdentifier:v5];
    v4 = v5;
  }
}

- (BOOL)_getSectionFromPersistentStateRepresentation:(id)a3 request:(id)a4 section:(unint64_t *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (a3)
  {
    v9 = [a3 objectForKey:@"3.list.sections"];
    v10 = [(NCNotificationListPersistentStateManager *)self _getSectionTypeAndRemoveNotificationRequest:v8 inMutableRepresentationForSections:v9];
    *a5 = v10;
    if (v10 == 4 && [(NCNotificationListPersistentStateManager *)self hasStoredCurrentDigestMigrationTimeExpired])
    {
      v11 = *MEMORY[0x277D77DC8];
      if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v8 notificationIdentifier];
        v16 = [v15 un_logDigest];
        v17 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:self->_storedPersistentSummaryMigrationTime];
        v19 = 138543874;
        v20 = v14;
        v21 = 2114;
        v22 = v16;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ moving request %{public}@ to read digest from current digest because the stored digest migration time [%@] has already expired!", &v19, 0x20u);
      }

      *a5 = 6;
    }
  }

  return a3 != 0;
}

- (unint64_t)sectionForStoredNotificationRequest:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NCNotificationListPersistentStateManager *)self _getSectionFromPersistentStateRepresentation:self->_storedPersistentStateRepresentation request:v4 section:&v36])
  {
    v5 = v36 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    [(NCNotificationListPersistentStateManager *)self _getSectionFromPersistentStateRepresentation:self->_currentStateRepresentation request:v4 section:&v36];
  }

  if (self->_storedPersistentMigrationTimes)
  {
    v6 = [(NCNotificationListPersistentStateManager *)self _getStoredMigrationTimeAndClearNotificationRequest:v4];
    v7 = v6;
    if (v6 && (v36 - 1) <= 1)
    {
      [v6 timeIntervalSinceNow];
      if (v8 <= 0.0)
      {
        if (v36 == 2)
        {
          v16 = *MEMORY[0x277D77DC8];
          if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = [v4 notificationIdentifier];
            v21 = [v20 un_logDigest];
            v22 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v7];
            *buf = 138543874;
            v38 = v19;
            v39 = 2114;
            v40 = v21;
            v41 = 2112;
            v42 = v22;
            _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ moving request %{public}@ to history from incoming because its stored migration time [%@] has already expired!", buf, 0x20u);
          }

          v36 = 0;
        }

        else if (v36 == 1)
        {
          v9 = *MEMORY[0x277D77DC8];
          if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
          {
            v10 = v9;
            v11 = objc_opt_class();
            v12 = NSStringFromClass(v11);
            v13 = [v4 notificationIdentifier];
            v14 = [v13 un_logDigest];
            v15 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v7];
            *buf = 138543874;
            v38 = v12;
            v39 = 2114;
            v40 = v14;
            v41 = 2112;
            v42 = v15;
            _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ moving request %{public}@ to incoming from prominent incoming because its stored migration time [%@] has already expired!", buf, 0x20u);
          }

          v36 = 2;
        }
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __80__NCNotificationListPersistentStateManager_sectionForStoredNotificationRequest___block_invoke;
        block[3] = &unk_2783715C0;
        block[4] = self;
        v34 = v7;
        v35 = v4;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  if (self->_storedPersistentMigratedTimeSensitiveNotificationRequests && [(NCNotificationListPersistentStateManager *)self _isMigratedTimeSensitiveNotificationRequest:v4])
  {
    v23 = *MEMORY[0x277D77DC8];
    if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v4 notificationIdentifier];
      v28 = [v27 un_logDigest];
      *buf = 138543618;
      v38 = v26;
      v39 = 2112;
      v40 = v28;
      _os_log_impl(&dword_21E77E000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ found migrated time sensitive notification request for record %@.", buf, 0x16u);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __80__NCNotificationListPersistentStateManager_sectionForStoredNotificationRequest___block_invoke_5;
    v31[3] = &unk_27836F560;
    v31[4] = self;
    v32 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v31);
  }

  v29 = v36;

  return v29;
}

void __80__NCNotificationListPersistentStateManager_sectionForStoredNotificationRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 persistentStateManager:*(a1 + 32) didFetchMigrationTime:*(a1 + 40) forNotificationRequest:*(a1 + 48)];
}

void __80__NCNotificationListPersistentStateManager_sectionForStoredNotificationRequest___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 persistentStateManager:*(a1 + 32) didMigratedTimeSensitiveForNotificationRequest:*(a1 + 40)];
}

+ (id)_dataDirectoryPath
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"com.apple.springboard"] & 1) == 0)
  {
    v6 = [@"~/Library/UserNotificationsUI/" stringByExpandingTildeInPath];
    v5 = [v6 stringByAppendingPathComponent:v4];
  }

  else
  {
    v5 = [@"~/Library/UserNotificationsUI/" stringByExpandingTildeInPath];
  }

  return v5;
}

+ (id)_persistentStateFilePath
{
  v2 = [a1 _dataDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"NotificationListPersistentState.json"];

  return v3;
}

- (void)_ensureDataDirectoryExists
{
  v3 = [objc_opt_class() _dataDirectoryPath];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v2 fileExistsAtPath:v3] & 1) == 0)
  {
    [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (BOOL)_doesPersistentStateFileExist
{
  v2 = [objc_opt_class() _persistentStateFilePath];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  return v4;
}

- (void)_throttledWriteFileListRepresentation:(id)a3 vendorListRepresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__NCNotificationListPersistentStateManager__throttledWriteFileListRepresentation_vendorListRepresentation___block_invoke;
  block[3] = &unk_2783715C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __107__NCNotificationListPersistentStateManager__throttledWriteFileListRepresentation_vendorListRepresentation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCachedListRepresentationForThrottledWriteToFile:*(a1 + 40)];
  [*(a1 + 32) setCachedListRepresentationForThrottledSendToVendor:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 _scheduleListRepresentationPersistence];
}

void __82__NCNotificationListPersistentStateManager__scheduleListRepresentationPersistence__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFileWritingThrottled:0];
  [WeakRetained _persistCachedRepresentations];
}

- (void)_persistCachedRepresentations
{
  v3 = *MEMORY[0x277D77DC8];
  if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21E77E000, v3, OS_LOG_TYPE_DEFAULT, "Persisting cached representations", v8, 2u);
  }

  v4 = [(NCNotificationListPersistentStateManager *)self cachedListRepresentationForThrottledWriteToFile];

  if (v4)
  {
    v5 = [(NCNotificationListPersistentStateManager *)self cachedListRepresentationForThrottledWriteToFile];
    [(NCNotificationListPersistentStateManager *)self _writePersistentStateToFileWithRepresentation:v5];
  }

  v6 = [(NCNotificationListPersistentStateManager *)self cachedListRepresentationForThrottledSendToVendor];

  if (v6)
  {
    v7 = [(NCNotificationListPersistentStateManager *)self cachedListRepresentationForThrottledSendToVendor];
    [(NCNotificationListPersistentStateManager *)self _sendPersistentStateToVendor:v7];
  }
}

- (void)_sendPersistentStateToVendor:(id)a3
{
  v4 = a3;
  if (UNCCatchMe())
  {
    v5 = MEMORY[0x277D77DC8];
    v6 = *MEMORY[0x277D77DC8];
    v7 = *MEMORY[0x277D77DC8];
    if (v4)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Sending persistent state to vendor", buf, 2u);
      }

      v8 = [v4 mutableCopy];
      v9 = [v8 objectForKeyedSubscript:@"3.list.sections"];
      v10 = [v9 mutableCopy];

      if ([v10 count])
      {
        v11 = [v10 count];
        if (v11 - 1 >= 0)
        {
          v12 = v11;
          do
          {
            v13 = [v10 objectAtIndexedSubscript:--v12];
            v14 = [v13 objectForKeyedSubscript:@"0.section.type"];
            v15 = v14;
            if (v14 && (NCNotificationListSectionTypeFromString(v14) - 4) <= 5)
            {
              [v10 removeObjectAtIndex:v12];
            }
          }

          while (v12 > 0);
        }

        [v8 setObject:v10 forKeyedSubscript:@"3.list.sections"];
      }

      if (v10 && (v16 = self->_lastSectionsSentToGateway) != 0 && [(NSArray *)v16 isEqualToArray:v10])
      {
        v17 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "Sending persistent state to vendor failed: sections are the same", v23, 2u);
        }
      }

      else
      {
        gateway = self->_gateway;
        v20 = [v8 copy];
        [(NCSummaryServiceGateway *)gateway donateStateDump:v20];

        v21 = [v10 copy];
        lastSectionsSentToGateway = self->_lastSectionsSentToGateway;
        self->_lastSectionsSentToGateway = v21;
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NCNotificationListPersistentStateManager _sendPersistentStateToVendor:v6];
    }
  }

  else
  {
    v18 = *MEMORY[0x277D77DC8];
    if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "Sending persistent state to vendor failed: UNCCatchMe is disabled", v25, 2u);
    }
  }
}

- (void)_writePersistentStateToFileWithRepresentation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  v4 = a3;
  dispatch_assert_queue_V2(queue);
  v14 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:&v14];

  v6 = v14;
  v7 = [objc_opt_class() _persistentStateFilePath];
  v8 = [v5 writeToFile:v7 atomically:1];

  v9 = *MEMORY[0x277D77DC8];
  v10 = *MEMORY[0x277D77DC8];
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NCNotificationListPersistentStateManager _writePersistentStateToFileWithRepresentation:v9];
    }
  }

  else if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543362;
      v16 = v13;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully wrote notification list persistent state to file", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [NCNotificationListPersistentStateManager _writePersistentStateToFileWithRepresentation:v9];
  }
}

- (void)_readPersistentStateFromFileIfNecessaryWithCompletion:(id)a3
{
  v5 = a3;
  if (![(NCNotificationListPersistentStateManager *)self hasLoadedStoredPersistentState])
  {
    [(NCNotificationListPersistentStateManager *)self _readPersistentStateFromFile];
  }

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, [(NCNotificationListPersistentStateManager *)self hasLoadedStoredPersistentState]);
    v4 = v5;
  }
}

- (void)_readPersistentStateFromFile
{
  v2 = a1;
  OUTLINED_FUNCTION_3_1();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&dword_21E77E000, v5, v6, "%{public}@ found non-dictionary top level JSON object!", v7, v8, v9, v10, v11);
}

- (void)_publishOnReadForStoredPersistentStateRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPersistentStateManager *)self delegate];
  v6 = [(NCNotificationListPersistentStateManager *)self _summaryMigrationTimeInRepresentationForList:v4];
  storedPersistentSummaryMigrationTime = self->_storedPersistentSummaryMigrationTime;
  self->_storedPersistentSummaryMigrationTime = v6;

  if (self->_storedPersistentSummaryMigrationTime)
  {
    [v5 persistentStateManager:self didFetchSummaryMigrationTime:?];
    [(NSDate *)self->_storedPersistentSummaryMigrationTime timeIntervalSinceNow];
    self->_storedCurrentDigestMigrationTimeExpired = v8 < 0.0;
  }

  v9 = [(NCNotificationListPersistentStateManager *)self storedPersistentStateRepresentation];
  v10 = [v9 objectForKey:@"3.list.sections"];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __97__NCNotificationListPersistentStateManager__publishOnReadForStoredPersistentStateRepresentation___block_invoke;
  v16 = &unk_278372650;
  v11 = v5;
  v17 = v11;
  v18 = self;
  [v10 enumerateObjectsUsingBlock:&v13];
  v12 = [v4 objectForKey:{@"7.list.infoStore", v13, v14, v15, v16}];
  if (v12)
  {
    [v11 persistentStateManager:self didFetchStoredListInfo:v12];
  }
}

void __97__NCNotificationListPersistentStateManager__publishOnReadForStoredPersistentStateRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"0.section.type"];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) persistentStateManager:*(a1 + 40) hasStoredDataForSectionType:NCNotificationListSectionTypeFromString(v3)];
    v3 = v4;
  }
}

- (id)_listRepresentationForNotificationList:(id)a3 sections:(id)a4 listCache:(id)a5 migrationScheduler:(id)a6 listInfo:(id)a7 detailed:(BOOL)a8 hashIdentifiers:(BOOL)a9 includeHistory:(BOOL)a10 includeHidden:(BOOL)a11
{
  v43 = a8;
  v51 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v16 = a4;
  v44 = a5;
  v17 = a6;
  v18 = a7;
  v19 = v16;
  v20 = v19;
  if (a10)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = [v45 notificationSections];
    v22 = [v21 countByEnumeratingWithState:&v46 objects:v50 count:16];
    v20 = v19;
    if (v22)
    {
      v23 = v22;
      v24 = *v47;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v46 + 1) + 8 * i);
          if (![v26 sectionType])
          {
            v20 = [v19 arrayByAddingObject:v26];

            goto LABEL_12;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v20 = v19;
    }

LABEL_12:
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v27 setObject:&unk_2830155D8 forKey:@"0.list.formatVersion"];
  dateFormatter = self->_dateFormatter;
  v29 = [MEMORY[0x277CBEAA8] date];
  v30 = [(NSDateFormatter *)dateFormatter stringFromDate:v29];
  [v27 setObject:v30 forKey:@"0.list.stateTimestamp"];

  v31 = [(NCNotificationListPersistentStateManager *)self _representationForSections:v20 detailed:v43 hashIdentifiers:a9 includeHidden:a11];
  [v27 setObject:v31 forKey:@"3.list.sections"];

  v32 = [(NCNotificationListPersistentStateManager *)self storedPersistentStateRepresentation];

  if (v32)
  {
    v33 = [(NCNotificationListPersistentStateManager *)self storedPersistentStateRepresentation];
    v34 = [(NCNotificationListPersistentStateManager *)self _mutableRepresentationForStoredListRepresentation:v33];

    if (v34)
    {
      [v27 setObject:v34 forKey:@"5.list.pendingStore"];
    }
  }

  if (v17)
  {
    v35 = [(NCNotificationListPersistentStateManager *)self _representationForMigrationScheduler:v17];
    v36 = v35;
    if (v35 && [v35 count])
    {
      [v27 setObject:v36 forKey:@"4.list.migrationTimes"];
    }
  }

  v37 = [(NCNotificationListPersistentStateManager *)self storedPersistentMigrationTimes];

  if (v37)
  {
    v38 = [(NCNotificationListPersistentStateManager *)self storedPersistentMigrationTimes];
    v39 = [(NCNotificationListPersistentStateManager *)self _mutableRepresentationForRepresentationForRequestMigrationTimes:v38];

    if (v39)
    {
      [v27 setObject:v39 forKey:@"6.list.pendingMigrationTimes"];
    }
  }

  if (v18 && [v18 count])
  {
    [v27 setObject:v18 forKey:@"7.list.infoStore"];
  }

  if (v43)
  {
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v45, "totalNotificationCount")}];
    [v27 setObject:v40 forKey:@"1.list.totalNotificationCount"];

    if (v44)
    {
      v41 = [(NCNotificationListPersistentStateManager *)self _representationForListCache:v44];
      [v27 setObject:v41 forKey:@"2.list.cacheState"];
    }
  }

  return v27;
}

- (BOOL)_isListRepresentation:(id)a3 equalToListRepresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"3.list.sections"];
  v9 = [v7 objectForKey:@"3.list.sections"];
  if ([(NCNotificationListPersistentStateManager *)self _isRepresentationForSections:v8 equalToRepresentationForSections:v9])
  {
    v10 = [v6 objectForKey:@"4.list.migrationTimes"];
    v11 = [v7 objectForKey:@"4.list.migrationTimes"];
    v12 = [(NCNotificationListPersistentStateManager *)self _isRepresentationForMigrationTimes:v10 equalToRepresentationForMigrationTimes:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)_formatVersionForListRepresentation:(id)a3
{
  v3 = [a3 objectForKey:@"0.list.formatVersion"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (id)_mutableRepresentationForStoredListRepresentation:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 objectForKey:@"3.list.sections"];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __94__NCNotificationListPersistentStateManager__mutableRepresentationForStoredListRepresentation___block_invoke;
  v17 = &unk_278372678;
  v18 = self;
  v19 = v8;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:&v14];
  [v6 setObject:v9 forKey:{@"3.list.sections", v14, v15, v16, v17, v18}];
  v10 = [v5 objectForKey:@"5.list.pendingStore"];

  [(NCNotificationListPersistentStateManager *)self _mergePendingNotificationListRepresentation:v10 withMutableListRepresentation:v6];
  if ([v9 count])
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

void __94__NCNotificationListPersistentStateManager__mutableRepresentationForStoredListRepresentation___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _mutableRepresentationForRepresentationForSection:a2];
  [*(a1 + 40) addObject:v3];
}

- (void)_mergePendingNotificationListRepresentation:(id)a3 withMutableListRepresentation:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKey:@"3.list.sections"];
  v8 = [v6 objectForKey:@"3.list.sections"];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __118__NCNotificationListPersistentStateManager__mergePendingNotificationListRepresentation_withMutableListRepresentation___block_invoke;
  v10[3] = &unk_278372650;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __118__NCNotificationListPersistentStateManager__mergePendingNotificationListRepresentation_withMutableListRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 objectForKey:@"0.section.type"];
  v4 = [*(a1 + 32) _sectionRepresentationOfSectionType:? inRepresentationForSections:?];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _mergeRepresentationForSection:v3 withMutableRepresentationForSection:v4];
  }

  else
  {
    v4 = [v5 _mutableRepresentationForRepresentationForSection:v3];

    [*(a1 + 40) addObject:v4];
  }
}

- (void)_clearStoredListRepresentationForSectionIdentifier:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DC8];
  v6 = *MEMORY[0x277D77DC8];
  if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138543618;
    v23 = v9;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing stored notifications for section %{public}@", buf, 0x16u);
  }

  v10 = [(NSMutableDictionary *)self->_storedPersistentStateRepresentation objectForKey:@"3.list.sections"];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __95__NCNotificationListPersistentStateManager__clearStoredListRepresentationForSectionIdentifier___block_invoke;
  v19[3] = &unk_2783726A0;
  v19[4] = self;
  v12 = v4;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  [v10 enumerateObjectsUsingBlock:v19];
  [v10 removeObjectsInArray:v13];
  if (![v10 count])
  {
    v14 = *v5;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ has no more stored notifications. Clearing persistent store representation", buf, 0xCu);
    }

    storedPersistentStateRepresentation = self->_storedPersistentStateRepresentation;
    self->_storedPersistentStateRepresentation = 0;
  }
}

void __95__NCNotificationListPersistentStateManager__clearStoredListRepresentationForSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _clearStoredSectionIdentifier:*(a1 + 40) inMutableRepresentationForSection:v3];
  if ([*(a1 + 32) _isRepresentationForSectionEmpty:v3])
  {
    [*(a1 + 48) addObject:v3];
    v4 = [v3 objectForKey:@"0.section.type"];
    v5 = v4;
    if (v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __95__NCNotificationListPersistentStateManager__clearStoredListRepresentationForSectionIdentifier___block_invoke_2;
      v6[3] = &unk_27836F560;
      v6[4] = *(a1 + 32);
      v7 = v4;
      dispatch_async(MEMORY[0x277D85CD0], v6);
    }
  }
}

void __95__NCNotificationListPersistentStateManager__clearStoredListRepresentationForSectionIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 persistentStateManager:*(a1 + 32) finishedLoadingDataForSectionType:NCNotificationListSectionTypeFromString(*(a1 + 40))];
}

- (BOOL)_isMutableListRepresentationEmpty:(id)a3
{
  v3 = [a3 objectForKey:@"3.list.sections"];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_representationForListCache:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "activeNotificationCellCount")}];
  [v5 setObject:v6 forKey:@"0.cache.activeViews"];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 currentCacheSizeCount];

  v9 = [v7 numberWithUnsignedInteger:v8];
  [v5 setObject:v9 forKey:@"1.cache.availableViews"];

  return v5;
}

- (id)_representationForMigrationScheduler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [v4 upcomingScheduledMigrationDate];
  if (v6)
  {
    v7 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v6];
    [v5 setObject:v7 forKey:@"0.migrationTime.upcoming"];
  }

  v8 = [v4 migrationDateForNotificationDigest];
  if (v8)
  {
    v9 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v8];
    [v5 setObject:v9 forKey:@"1.migrationTime.summary"];
  }

  v10 = [v4 migrationDatesForNotificationRequests];
  if ([v10 count])
  {
    v11 = [(NCNotificationListPersistentStateManager *)self _representationForRequestMigrationTimes:v10];
    [v5 setObject:v11 forKey:@"2.migrationTime.requests"];
  }

  v12 = [v4 migratedTimeSensitiveNotificationRequests];
  if ([v12 count])
  {
    v13 = [(NCNotificationListPersistentStateManager *)self _representationForMigratedTimeSensitiveNotificationRequests:v12];
    [v5 setObject:v13 forKey:@"3.migrationTime.migratedTimeSensitiveNotificationRequests"];
  }

  return v5;
}

- (id)_summaryMigrationTimeInRepresentationForList:(id)a3
{
  v4 = [a3 objectForKey:@"4.list.migrationTimes"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"1.migrationTime.summary"];
    if (v6)
    {
      v7 = [(NSDateFormatter *)self->_dateFormatter dateFromString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isRepresentationForMigrationTimes:(id)a3 equalToRepresentationForMigrationTimes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v9 = [v7 objectForKey:@"0.migrationTime.upcoming"];
  v10 = [v8 objectForKey:@"0.migrationTime.upcoming"];
  if ([v9 isEqualToString:v10] && (objc_msgSend(v7, "objectForKey:", @"1.migrationTime.summary"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", @"1.migrationTime.summary"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v13) && (objc_msgSend(v7, "objectForKey:", @"2.migrationTime.requests"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", @"2.migrationTime.requests"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToDictionary:", v15), v15, v14, v16))
  {
    v17 = [v7 objectForKey:@"3.migrationTime.migratedTimeSensitiveNotificationRequests"];
    v18 = [v8 objectForKey:@"3.migrationTime.migratedTimeSensitiveNotificationRequests"];
    v19 = [v17 isEqualToDictionary:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_representationForRequestMigrationTimes:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__NCNotificationListPersistentStateManager__representationForRequestMigrationTimes___block_invoke;
  v10[3] = &unk_278371858;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  v8 = v7;
  return v7;
}

void __84__NCNotificationListPersistentStateManager__representationForRequestMigrationTimes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = [v5 sectionIdentifier];
  v7 = [*(a1 + 32) objectForKey:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [*(a1 + 32) setObject:v7 forKey:v6];
  }

  v8 = [*(*(a1 + 40) + 72) stringFromDate:v11];
  v9 = [v5 notificationIdentifier];

  v10 = [v9 un_logDigest];
  [v7 setObject:v8 forKey:v10];
}

- (id)_mutableRepresentationForRequestMigrationTimesInRepresentationForList:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = v4;
  v7 = [v6 objectForKey:@"4.list.migrationTimes"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"2.migrationTime.requests"];
    if (v9)
    {
      v10 = [(NCNotificationListPersistentStateManager *)self _mutableRepresentationForRepresentationForRequestMigrationTimes:v9];

      v5 = v10;
    }
  }

  v11 = [v6 objectForKey:@"6.list.pendingMigrationTimes"];
  if (v11)
  {
    [(NCNotificationListPersistentStateManager *)self _mergePendingRequestMigrationTimesRepresentation:v11 withMutableRepresentationForRequestMigrationTimes:v5];
  }

  if ([v5 count])
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (id)_mutableRepresentationForRepresentationForRequestMigrationTimes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __108__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForRequestMigrationTimes___block_invoke;
  v7[3] = &unk_2783726F0;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __108__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForRequestMigrationTimes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __108__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForRequestMigrationTimes___block_invoke_2;
    v11[3] = &unk_2783726C8;
    v12 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v9 = *(a1 + 32);
    v10 = [v5 copy];
    [v9 setObject:v8 forKey:v10];
  }
}

void __108__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForRequestMigrationTimes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [a3 copy];
  v6 = [v5 copy];

  [v4 setObject:v7 forKey:v6];
}

- (void)_mergePendingRequestMigrationTimesRepresentation:(id)a3 withMutableRepresentationForRequestMigrationTimes:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __143__NCNotificationListPersistentStateManager__mergePendingRequestMigrationTimesRepresentation_withMutableRepresentationForRequestMigrationTimes___block_invoke;
  v7[3] = &unk_2783726F0;
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __143__NCNotificationListPersistentStateManager__mergePendingRequestMigrationTimesRepresentation_withMutableRepresentationForRequestMigrationTimes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v8];
  if (v6)
  {
    v7 = v6;
    [v6 addEntriesFromDictionary:v5];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v7 addEntriesFromDictionary:v5];
    [*(a1 + 32) setObject:v7 forKey:v8];
  }
}

- (void)_clearStoredRequestMigrationTimesForSectionIdentifier:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_storedPersistentMigrationTimes removeObjectForKey:a3];
  if (![(NSMutableDictionary *)self->_storedPersistentMigrationTimes count])
  {
    v4 = *MEMORY[0x277D77DC8];
    if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ has no more stored migration times. Clearing persistent representation.", &v9, 0xCu);
    }

    storedPersistentMigrationTimes = self->_storedPersistentMigrationTimes;
    self->_storedPersistentMigrationTimes = 0;
  }
}

- (id)_getStoredMigrationTimeAndClearNotificationRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sectionIdentifier];
  v6 = [(NSMutableDictionary *)self->_storedPersistentMigrationTimes objectForKey:v5];
  if (v6)
  {
    v7 = [v4 notificationIdentifier];
    v8 = [v7 un_logDigest];

    v9 = [v6 objectForKey:v8];
    if (v9)
    {
      v10 = [(NSDateFormatter *)self->_dateFormatter dateFromString:v9];
      [v6 removeObjectForKey:v8];
    }

    else
    {
      v10 = 0;
    }

    if (![v6 count])
    {
      [(NSMutableDictionary *)self->_storedPersistentMigrationTimes removeObjectForKey:v5];
      if (![(NSMutableDictionary *)self->_storedPersistentMigrationTimes count])
      {
        v11 = *MEMORY[0x277D77DC8];
        if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v17 = 138543362;
          v18 = v14;
          _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ has no more stored migration times. Clearing persistent representation.", &v17, 0xCu);
        }

        storedPersistentMigrationTimes = self->_storedPersistentMigrationTimes;
        self->_storedPersistentMigrationTimes = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_representationForMigratedTimeSensitiveNotificationRequests:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __104__NCNotificationListPersistentStateManager__representationForMigratedTimeSensitiveNotificationRequests___block_invoke;
  v8[3] = &unk_278370868;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __104__NCNotificationListPersistentStateManager__representationForMigratedTimeSensitiveNotificationRequests___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 sectionIdentifier];
  v4 = [*(a1 + 32) objectForKey:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) setObject:v4 forKey:v3];
  }

  v5 = [v7 notificationIdentifier];
  v6 = [v5 un_logDigest];
  [v4 addObject:v6];
}

- (id)_mutableRepresentationForMigratedTimeSensitiveNotificationRequestsInRepresentationForList:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [v4 objectForKey:@"4.list.migrationTimes"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"3.migrationTime.migratedTimeSensitiveNotificationRequests"];
    if (v8)
    {
      v9 = [(NCNotificationListPersistentStateManager *)self _mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests:v8];

      v5 = v9;
    }
  }

  return v5;
}

- (id)_mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __128__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests___block_invoke;
  v7[3] = &unk_278372740;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __128__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __128__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests___block_invoke_2;
    v11[3] = &unk_278372718;
    v12 = v7;
    v8 = v7;
    [v6 enumerateObjectsUsingBlock:v11];
    v9 = *(a1 + 32);
    v10 = [v5 copy];
    [v9 setObject:v8 forKey:v10];
  }
}

void __128__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  [v2 addObject:v3];
}

- (void)_clearStoredMigratedTimeSensitiveNotificationRequestsForSectionIdentifier:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_storedPersistentMigratedTimeSensitiveNotificationRequests removeObjectForKey:a3];
  if (![(NSMutableDictionary *)self->_storedPersistentMigratedTimeSensitiveNotificationRequests count])
  {
    v4 = *MEMORY[0x277D77DC8];
    if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ has no more stored migrated time sensitive notifications. Clearing persistent representation.", &v9, 0xCu);
    }

    storedPersistentMigratedTimeSensitiveNotificationRequests = self->_storedPersistentMigratedTimeSensitiveNotificationRequests;
    self->_storedPersistentMigratedTimeSensitiveNotificationRequests = 0;
  }
}

- (BOOL)_isMigratedTimeSensitiveNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 sectionIdentifier];
  v6 = [(NSMutableDictionary *)self->_storedPersistentMigratedTimeSensitiveNotificationRequests objectForKey:v5];
  if (v6)
  {
    v7 = [v4 notificationIdentifier];
    v8 = [v7 un_logDigest];

    v9 = [v6 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_representationForSections:(id)a3 detailed:(BOOL)a4 hashIdentifiers:(BOOL)a5 includeHidden:(BOOL)a6
{
  v10 = MEMORY[0x277CBEB18];
  v11 = a3;
  v12 = objc_alloc_init(v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __110__NCNotificationListPersistentStateManager__representationForSections_detailed_hashIdentifiers_includeHidden___block_invoke;
  v17[3] = &unk_278372768;
  v19 = a6;
  v17[4] = self;
  v20 = a4;
  v21 = a5;
  v13 = v12;
  v18 = v13;
  [v11 enumerateObjectsUsingBlock:v17];

  v14 = v18;
  v15 = v13;

  return v13;
}

uint64_t __110__NCNotificationListPersistentStateManager__representationForSections_detailed_hashIdentifiers_includeHidden___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 48) == 1)
  {
    v4 = [v3 notificationCountIncludingHidden];
  }

  else
  {
    v4 = [v3 notificationCount];
  }

  if (v4)
  {
    v5 = [*(a1 + 32) _representationForSection:v7 detailed:*(a1 + 49) hashIdentifiers:*(a1 + 50) includeHidden:*(a1 + 48)];
    [*(a1 + 40) addObject:v5];
  }

  return MEMORY[0x2821F96F8](v4);
}

- (id)_representationForSection:(id)a3 detailed:(BOOL)a4 hashIdentifiers:(BOOL)a5 includeHidden:(BOOL)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = NCNotificationListSectionTypeString([v10 sectionType]);
  [v11 setObject:v12 forKey:@"0.section.type"];

  if (a6)
  {
    [v10 allNotificationGroupsIncludingHidden];
  }

  else
  {
    [v10 allNotificationGroups];
  }
  v13 = ;
  if ([v13 count])
  {
    v14 = [(NCNotificationListPersistentStateManager *)self _representationForGroups:v13 detailed:v8 hashIdentifiers:v7];
    [v11 setObject:v14 forKey:@"3.section.groups"];
  }

  if (v8)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "notificationCount")}];
    [v11 setObject:v15 forKey:@"1.section.notificationCount"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    [v11 setObject:v16 forKey:@"2.section.groupCount"];
  }

  return v11;
}

- (BOOL)_isRepresentationForSections:(id)a3 equalToRepresentationForSections:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  v10 = [v8 count];
  if (v10 == [v9 count])
  {
    v11 = [v8 count];
    if (v11)
    {
      v12 = 0;
      v13 = v11 - 1;
      do
      {
        v14 = [v8 objectAtIndex:v12];
        v15 = [v9 objectAtIndex:v12];
        v16 = [(NCNotificationListPersistentStateManager *)self _isRepresentationForSection:v14 equalToRepresentationForSection:v15];

        if (!v16)
        {
          break;
        }
      }

      while (v13 != v12++);
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)_isRepresentationForSection:(id)a3 equalToRepresentationForSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"0.section.type"];
  v9 = [v7 objectForKey:@"0.section.type"];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [v6 objectForKey:@"3.section.groups"];
    v12 = [v7 objectForKey:@"3.section.groups"];
    v13 = [(NCNotificationListPersistentStateManager *)self _isRepresentationForGroups:v11 equalToRepresentationForGroups:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)_getSectionTypeAndRemoveNotificationRequest:(id)a3 inMutableRepresentationForSections:(id)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11;
  v20 = __Block_byref_object_dispose__11;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __123__NCNotificationListPersistentStateManager__getSectionTypeAndRemoveNotificationRequest_inMutableRepresentationForSections___block_invoke;
  v12[3] = &unk_278372790;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v14 = &v22;
  v15 = &v16;
  [v7 enumerateObjectsUsingBlock:v12];
  if (v17[5] && [(NCNotificationListPersistentStateManager *)self _isRepresentationForSectionEmpty:?])
  {
    [v7 removeObject:v17[5]];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __123__NCNotificationListPersistentStateManager__getSectionTypeAndRemoveNotificationRequest_inMutableRepresentationForSections___block_invoke_2;
    v11[3] = &unk_2783727B8;
    v11[4] = self;
    v11[5] = &v22;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  v9 = v23[3];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __123__NCNotificationListPersistentStateManager__getSectionTypeAndRemoveNotificationRequest_inMutableRepresentationForSections___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 objectForKey:@"0.section.type"];
  v8 = NCNotificationListSectionTypeFromString(v7);

  if (v8 == 10 && [*(a1 + 32) _containsNotificationRequest:*(a1 + 40) inMutableRepresentationForSection:v9 shouldRemove:0])
  {
    *(*(*(a1 + 48) + 8) + 24) = 10;
  }

  else
  {
    if (![*(a1 + 32) _containsNotificationRequest:*(a1 + 40) inMutableRepresentationForSection:v9 shouldRemove:1])
    {
      goto LABEL_7;
    }

    *(*(*(a1 + 48) + 8) + 24) = v8;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  *a4 = 1;
LABEL_7:
}

void __123__NCNotificationListPersistentStateManager__getSectionTypeAndRemoveNotificationRequest_inMutableRepresentationForSections___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 persistentStateManager:*(a1 + 32) finishedLoadingDataForSectionType:*(*(*(a1 + 40) + 8) + 24)];
}

- (BOOL)_containsNotificationRequest:(id)a3 inMutableRepresentationForSection:(id)a4 shouldRemove:(BOOL)a5
{
  v8 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v9 = a4;
  v10 = [v9 objectForKey:@"3.section.groups"];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __120__NCNotificationListPersistentStateManager__containsNotificationRequest_inMutableRepresentationForSection_shouldRemove___block_invoke;
  v14[3] = &unk_2783727E0;
  v16 = &v25;
  v14[4] = self;
  v11 = v8;
  v18 = a5;
  v15 = v11;
  v17 = &v19;
  [v10 enumerateObjectsUsingBlock:v14];
  if (*(v26 + 24) == 1 && [(NCNotificationListPersistentStateManager *)self _isRepresentationForGroupEmpty:v20[5]])
  {
    [v10 removeObject:v20[5]];
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __120__NCNotificationListPersistentStateManager__containsNotificationRequest_inMutableRepresentationForSection_shouldRemove___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _containsNotificationRequest:*(a1 + 40) inMutableRepresentationForGroup:v6 shouldRemove:*(a1 + 64)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  LOBYTE(a1) = *(*(*(a1 + 48) + 8) + 24);
  *a4 = a1;
}

- (id)_mutableRepresentationForRepresentationForSection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = v4;
  v7 = [v6 objectForKey:@"0.section.type"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];
    [v5 setObject:v9 forKey:@"0.section.type"];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [v6 objectForKey:@"3.section.groups"];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __94__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForSection___block_invoke;
  v17 = &unk_278372678;
  v18 = self;
  v12 = v10;
  v19 = v12;
  [v11 enumerateObjectsUsingBlock:&v14];
  if ([v12 count])
  {
    [v5 setObject:v12 forKey:@"3.section.groups"];
  }

  return v5;
}

void __94__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _mutableRepresentationForRepresentationForGroup:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)_sectionRepresentationOfSectionType:(id)a3 inRepresentationForSections:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __108__NCNotificationListPersistentStateManager__sectionRepresentationOfSectionType_inRepresentationForSections___block_invoke;
  v11[3] = &unk_278372808;
  v7 = v5;
  v12 = v7;
  v8 = [v6 indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 objectAtIndex:v8];
  }

  return v9;
}

uint64_t __108__NCNotificationListPersistentStateManager__sectionRepresentationOfSectionType_inRepresentationForSections___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"0.section.type"];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_mergeRepresentationForSection:(id)a3 withMutableRepresentationForSection:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKey:@"3.section.groups"];
  v8 = [v6 objectForKey:@"3.section.groups"];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __111__NCNotificationListPersistentStateManager__mergeRepresentationForSection_withMutableRepresentationForSection___block_invoke;
  v10[3] = &unk_278372650;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v10];
}

void __111__NCNotificationListPersistentStateManager__mergeRepresentationForSection_withMutableRepresentationForSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectForKey:@"1.group.sectionIdentifier"];
  v4 = [v3 objectForKey:@"2.group.threadIdentifier"];
  v5 = [*(a1 + 32) _representationForGroupWithSectionIdentifier:v7 threadIdentifier:v4 inRepresentationForGroups:*(a1 + 40)];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _mergeRepresentationForGroup:v3 withMutableRepresentationForGroup:v5];
  }

  else
  {
    v5 = [v6 _mutableRepresentationForRepresentationForGroup:v3];

    [*(a1 + 40) addObject:v5];
  }
}

- (void)_clearStoredSectionIdentifier:(id)a3 inMutableRepresentationForSection:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"3.section.groups"];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __108__NCNotificationListPersistentStateManager__clearStoredSectionIdentifier_inMutableRepresentationForSection___block_invoke;
  v13 = &unk_278372650;
  v14 = v5;
  v15 = v7;
  v8 = v5;
  v9 = v7;
  [v6 enumerateObjectsUsingBlock:&v10];
  [v6 removeObjectsInArray:{v9, v10, v11, v12, v13}];
}

void __108__NCNotificationListPersistentStateManager__clearStoredSectionIdentifier_inMutableRepresentationForSection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKey:@"1.group.sectionIdentifier"];
  if ([*(a1 + 32) isEqualToString:v3])
  {
    [*(a1 + 40) addObject:v4];
  }
}

- (BOOL)_isRepresentationForSectionEmpty:(id)a3
{
  v3 = [a3 objectForKey:@"3.section.groups"];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_representationForGroups:(id)a3 detailed:(BOOL)a4 hashIdentifiers:(BOOL)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__NCNotificationListPersistentStateManager__representationForGroups_detailed_hashIdentifiers___block_invoke;
  v15[3] = &unk_278372830;
  v15[4] = self;
  v17 = a4;
  v18 = a5;
  v11 = v10;
  v16 = v11;
  [v9 enumerateObjectsUsingBlock:v15];

  v12 = v16;
  v13 = v11;

  return v11;
}

void __94__NCNotificationListPersistentStateManager__representationForGroups_detailed_hashIdentifiers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _representationForGroup:a2 atIndex:a3 detailed:*(a1 + 48) hashIdentifiers:*(a1 + 49)];
  [*(a1 + 40) addObject:v4];
}

- (id)_representationForGroup:(id)a3 atIndex:(unint64_t)a4 detailed:(BOOL)a5 hashIdentifiers:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [v10 sectionIdentifier];
  v13 = [v12 copy];
  [v11 setObject:v13 forKey:@"1.group.sectionIdentifier"];

  if (v6)
  {
    v14 = [v10 threadIdentifier];
    v15 = [v14 un_logDigest];
    [v11 setObject:v15 forKey:@"2.group.threadIdentifier"];

LABEL_5:
    goto LABEL_6;
  }

  v16 = [v10 leadingNotificationRequest];
  v17 = [v16 isUniqueThreadIdentifier];

  if (v17)
  {
    v14 = [v10 threadIdentifier];
    [v11 setObject:v14 forKey:@"2.group.threadIdentifier"];
    goto LABEL_5;
  }

LABEL_6:
  v18 = [v10 allNotificationRequests];
  v19 = [(NCNotificationListPersistentStateManager *)self _representationForNotificationRequests:v18 detailed:v7 hashIdentifiers:v6];
  [v11 setObject:v19 forKey:@"5.group.notificationRequests"];

  if (v7)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [v11 setObject:v20 forKey:@"0.group.index"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    [v11 setObject:v21 forKey:@"4.group.notificationCount"];

    v22 = [v10 leadingNotificationRequest];

    if (v22)
    {
      v23 = [v10 leadingNotificationRequest];
      v24 = [v23 timestamp];

      if (v24)
      {
        v25 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v24];
        [v11 setObject:v25 forKey:@"3.group.timestamp"];
      }
    }
  }

  return v11;
}

- (BOOL)_isRepresentationForGroups:(id)a3 equalToRepresentationForGroups:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  v10 = [v8 count];
  if (v10 == [v9 count])
  {
    v11 = [v8 count];
    if (v11)
    {
      v12 = 0;
      v13 = v11 - 1;
      do
      {
        v14 = [v8 objectAtIndex:v12];
        v15 = [v9 objectAtIndex:v12];
        v16 = [(NCNotificationListPersistentStateManager *)self _isRepresentationForGroup:v14 equalToRepresentationForGroup:v15];

        if (!v16)
        {
          break;
        }
      }

      while (v13 != v12++);
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)_isRepresentationForGroup:(id)a3 equalToRepresentationForGroup:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v9 = [v7 objectForKey:@"1.group.sectionIdentifier"];
  v10 = [v8 objectForKey:@"1.group.sectionIdentifier"];
  v11 = [v9 isEqualToString:v10];

  if (v11 && ([v7 objectForKey:@"2.group.threadIdentifier"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", @"2.group.threadIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, v14))
  {
    v15 = [v7 objectForKey:@"5.group.notificationRequests"];
    v16 = [v8 objectForKey:@"5.group.notificationRequests"];
    v17 = [v15 isEqualToArray:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_containsNotificationRequest:(id)a3 inMutableRepresentationForGroup:(id)a4 shouldRemove:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 objectForKey:@"1.group.sectionIdentifier"];
  v11 = [v9 objectForKey:@"2.group.threadIdentifier"];
  v12 = [v9 objectForKey:@"5.group.notificationRequests"];

  v13 = [(NCNotificationListPersistentStateManager *)self _representationForNotificationRequest:v8 hashIdentifiers:1];
  v14 = [v8 sectionIdentifier];
  if (([v10 isEqualToString:v14] & 1) == 0)
  {

    LOBYTE(v17) = 0;
    goto LABEL_16;
  }

  v23 = v5;
  v15 = [v8 threadIdentifier];
  v16 = [v11 isEqualToString:v15];
  if ((v16 & 1) == 0)
  {
    v18 = [v8 threadIdentifier];
    v22 = [v18 un_logDigest];
    if (([v11 isEqualToString:v22] & 1) == 0)
    {
      v17 = 0;
      goto LABEL_12;
    }

    if ([v12 containsObject:v13])
    {
      v17 = 1;
      goto LABEL_12;
    }

    v21 = v18;
LABEL_11:
    v19 = [v8 notificationIdentifier];
    v17 = [v12 containsObject:v19];

    v18 = v21;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (([v12 containsObject:v13] & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = 1;
LABEL_13:

  if (v17 && v23)
  {
    [v12 removeObject:v13];
    LOBYTE(v17) = 1;
  }

LABEL_16:

  return v17;
}

- (id)_mutableRepresentationForRepresentationForGroup:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [v4 objectForKey:@"1.group.sectionIdentifier"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 copy];
    [v5 setObject:v8 forKey:@"1.group.sectionIdentifier"];
  }

  v9 = [v4 objectForKey:@"2.group.threadIdentifier"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 copy];
    [v5 setObject:v11 forKey:@"2.group.threadIdentifier"];
  }

  v12 = [v4 objectForKey:@"5.group.notificationRequests"];
  if (v12)
  {
    v13 = [(NCNotificationListPersistentStateManager *)self _mutableRepresentationForRepresentationForNotificationRequests:v12];
    [v5 setObject:v13 forKey:@"5.group.notificationRequests"];
  }

  return v5;
}

- (id)_representationForGroupWithSectionIdentifier:(id)a3 threadIdentifier:(id)a4 inRepresentationForGroups:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __132__NCNotificationListPersistentStateManager__representationForGroupWithSectionIdentifier_threadIdentifier_inRepresentationForGroups___block_invoke;
  v18 = &unk_278372858;
  v19 = v7;
  v20 = v8;
  v10 = v7;
  v11 = v8;
  v12 = [v9 indexOfObjectPassingTest:&v15];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v9 objectAtIndex:{v12, v15, v16, v17, v18, v19, v20}];
  }

  return v13;
}

uint64_t __132__NCNotificationListPersistentStateManager__representationForGroupWithSectionIdentifier_threadIdentifier_inRepresentationForGroups___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"1.group.sectionIdentifier"];
  v5 = [v3 objectForKey:@"2.group.threadIdentifier"];

  if ([*(a1 + 32) isEqualToString:v4])
  {
    v6 = [*(a1 + 40) un_logDigest];
    v7 = [v6 isEqualToString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_mergeRepresentationForGroup:(id)a3 withMutableRepresentationForGroup:(id)a4
{
  v6 = a4;
  v8 = [a3 objectForKey:@"5.group.notificationRequests"];
  v7 = [v6 objectForKey:@"5.group.notificationRequests"];

  [(NCNotificationListPersistentStateManager *)self _mergeRepresentationForNotificationRequests:v8 withMutableRepresentationForNotificationRequests:v7];
}

- (BOOL)_isRepresentationForGroupEmpty:(id)a3
{
  v3 = [a3 objectForKey:@"5.group.notificationRequests"];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_representationForNotificationRequests:(id)a3 detailed:(BOOL)a4 hashIdentifiers:(BOOL)a5
{
  v7 = MEMORY[0x277CBEB40];
  v8 = a3;
  v9 = [v7 orderedSet];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__NCNotificationListPersistentStateManager__representationForNotificationRequests_detailed_hashIdentifiers___block_invoke;
  v14[3] = &unk_278372880;
  v16 = a5;
  v14[4] = self;
  v15 = v9;
  v10 = v9;
  [v8 enumerateObjectsUsingBlock:v14];

  v11 = [v10 array];
  v12 = [v11 mutableCopy];

  return v12;
}

void __108__NCNotificationListPersistentStateManager__representationForNotificationRequests_detailed_hashIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _representationForNotificationRequest:a2 hashIdentifiers:*(a1 + 48)];
  [*(a1 + 40) addObject:v3];
}

- (id)_representationForNotificationRequest:(id)a3 hashIdentifiers:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 notificationIdentifier];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 un_logDigest];

    v6 = v7;
  }

  return v6;
}

- (id)_mutableRepresentationForRepresentationForNotificationRequests:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForNotificationRequests___block_invoke;
  v7[3] = &unk_278372718;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

  return v5;
}

- (void)_mergeRepresentationForNotificationRequests:(id)a3 withMutableRepresentationForNotificationRequests:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __137__NCNotificationListPersistentStateManager__mergeRepresentationForNotificationRequests_withMutableRepresentationForNotificationRequests___block_invoke;
  v7[3] = &unk_278372718;
  v8 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __137__NCNotificationListPersistentStateManager__mergeRepresentationForNotificationRequests_withMutableRepresentationForNotificationRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (NCNotificationListPersistentStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_writePersistentStateToFileWithRepresentation:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_writePersistentStateToFileWithRepresentation:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_3_1();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&dword_21E77E000, v5, v6, "%{public}@ encountered error writing notification list persistent state to file!", v7, v8, v9, v10, v11);
}

@end