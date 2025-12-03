@interface NCNotificationListPersistentStateManager
+ (id)_dataDirectoryPath;
+ (id)_persistentStateFilePath;
- (BOOL)_containsNotificationRequest:(id)request inMutableRepresentationForGroup:(id)group shouldRemove:(BOOL)remove;
- (BOOL)_containsNotificationRequest:(id)request inMutableRepresentationForSection:(id)section shouldRemove:(BOOL)remove;
- (BOOL)_doesPersistentStateFileExist;
- (BOOL)_getSectionFromPersistentStateRepresentation:(id)representation request:(id)request section:(unint64_t *)section;
- (BOOL)_isListRepresentation:(id)representation equalToListRepresentation:(id)listRepresentation;
- (BOOL)_isMigratedTimeSensitiveNotificationRequest:(id)request;
- (BOOL)_isMutableListRepresentationEmpty:(id)empty;
- (BOOL)_isRepresentationForGroup:(id)group equalToRepresentationForGroup:(id)forGroup;
- (BOOL)_isRepresentationForGroupEmpty:(id)empty;
- (BOOL)_isRepresentationForGroups:(id)groups equalToRepresentationForGroups:(id)forGroups;
- (BOOL)_isRepresentationForMigrationTimes:(id)times equalToRepresentationForMigrationTimes:(id)migrationTimes;
- (BOOL)_isRepresentationForSection:(id)section equalToRepresentationForSection:(id)forSection;
- (BOOL)_isRepresentationForSectionEmpty:(id)empty;
- (BOOL)_isRepresentationForSections:(id)sections equalToRepresentationForSections:(id)forSections;
- (NCNotificationListPersistentStateManager)initWithDelegate:(id)delegate;
- (NCNotificationListPersistentStateManagerDelegate)delegate;
- (id)_getStoredMigrationTimeAndClearNotificationRequest:(id)request;
- (id)_listRepresentationForNotificationList:(id)list sections:(id)sections listCache:(id)cache migrationScheduler:(id)scheduler listInfo:(id)info detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers includeHistory:(BOOL)self0 includeHidden:(BOOL)self1;
- (id)_mutableRepresentationForMigratedTimeSensitiveNotificationRequestsInRepresentationForList:(id)list;
- (id)_mutableRepresentationForRepresentationForGroup:(id)group;
- (id)_mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests:(id)requests;
- (id)_mutableRepresentationForRepresentationForNotificationRequests:(id)requests;
- (id)_mutableRepresentationForRepresentationForRequestMigrationTimes:(id)times;
- (id)_mutableRepresentationForRepresentationForSection:(id)section;
- (id)_mutableRepresentationForRequestMigrationTimesInRepresentationForList:(id)list;
- (id)_mutableRepresentationForStoredListRepresentation:(id)representation;
- (id)_representationForGroup:(id)group atIndex:(unint64_t)index detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers;
- (id)_representationForGroupWithSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier inRepresentationForGroups:(id)groups;
- (id)_representationForGroups:(id)groups detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers;
- (id)_representationForListCache:(id)cache;
- (id)_representationForMigratedTimeSensitiveNotificationRequests:(id)requests;
- (id)_representationForMigrationScheduler:(id)scheduler;
- (id)_representationForNotificationRequest:(id)request hashIdentifiers:(BOOL)identifiers;
- (id)_representationForNotificationRequests:(id)requests detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers;
- (id)_representationForRequestMigrationTimes:(id)times;
- (id)_representationForSection:(id)section detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers includeHidden:(BOOL)hidden;
- (id)_representationForSections:(id)sections detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers includeHidden:(BOOL)hidden;
- (id)_sectionRepresentationOfSectionType:(id)type inRepresentationForSections:(id)sections;
- (id)_summaryMigrationTimeInRepresentationForList:(id)list;
- (id)stateRepresentationForNotificationList:(id)list sectionLists:(id)lists listCache:(id)cache migrationScheduler:(id)scheduler listInfo:(id)info detailed:(BOOL)detailed;
- (int)_formatVersionForListRepresentation:(id)representation;
- (unint64_t)_getSectionTypeAndRemoveNotificationRequest:(id)request inMutableRepresentationForSections:(id)sections;
- (unint64_t)sectionForStoredNotificationRequest:(id)request;
- (void)_clearStoredListRepresentationForSectionIdentifier:(id)identifier;
- (void)_clearStoredMigratedTimeSensitiveNotificationRequestsForSectionIdentifier:(id)identifier;
- (void)_clearStoredRequestMigrationTimesForSectionIdentifier:(id)identifier;
- (void)_clearStoredSectionIdentifier:(id)identifier inMutableRepresentationForSection:(id)section;
- (void)_ensureDataDirectoryExists;
- (void)_mergePendingNotificationListRepresentation:(id)representation withMutableListRepresentation:(id)listRepresentation;
- (void)_mergePendingRequestMigrationTimesRepresentation:(id)representation withMutableRepresentationForRequestMigrationTimes:(id)times;
- (void)_mergeRepresentationForGroup:(id)group withMutableRepresentationForGroup:(id)forGroup;
- (void)_mergeRepresentationForNotificationRequests:(id)requests withMutableRepresentationForNotificationRequests:(id)notificationRequests;
- (void)_mergeRepresentationForSection:(id)section withMutableRepresentationForSection:(id)forSection;
- (void)_persistCachedRepresentations;
- (void)_publishOnReadForStoredPersistentStateRepresentation:(id)representation;
- (void)_readPersistentStateFromFile;
- (void)_readPersistentStateFromFileIfNecessaryWithCompletion:(id)completion;
- (void)_scheduleListRepresentationPersistence;
- (void)_sendPersistentStateToVendor:(id)vendor;
- (void)_throttledWriteFileListRepresentation:(id)representation vendorListRepresentation:(id)listRepresentation;
- (void)_writePersistentStateToFileWithRepresentation:(id)representation;
- (void)notificationsLoadedForSectionIdentifier:(id)identifier;
- (void)updatePersistentStateForNotificationList:(id)list sectionLists:(id)lists listCache:(id)cache migrationScheduler:(id)scheduler listInfo:(id)info detailed:(BOOL)detailed;
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

- (NCNotificationListPersistentStateManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = NCNotificationListPersistentStateManager;
  v5 = [(NCNotificationListPersistentStateManager *)&v20 init];
  if (v5)
  {
    NCRegisterUserNotificationsUILogging();
    objc_storeWeak(v5 + 3, delegateCopy);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.UserNotificationsUI.NCNotificationListPersistentStateManager", v6);
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCA968]);
    v10 = *(v5 + 9);
    *(v5 + 9) = v9;

    v11 = *(v5 + 9);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [v11 setLocale:currentLocale];

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

- (void)updatePersistentStateForNotificationList:(id)list sectionLists:(id)lists listCache:(id)cache migrationScheduler:(id)scheduler listInfo:(id)info detailed:(BOOL)detailed
{
  detailedCopy = detailed;
  listCopy = list;
  listsCopy = lists;
  cacheCopy = cache;
  schedulerCopy = scheduler;
  infoCopy = info;
  BYTE2(v24) = 0;
  LOWORD(v24) = 1;
  v19 = [NCNotificationListPersistentStateManager _listRepresentationForNotificationList:"_listRepresentationForNotificationList:sections:listCache:migrationScheduler:listInfo:detailed:hashIdentifiers:includeHistory:includeHidden:" sections:listCopy listCache:listsCopy migrationScheduler:cacheCopy listInfo:schedulerCopy detailed:infoCopy hashIdentifiers:detailedCopy includeHistory:v24 includeHidden:?];
  if (UNCCatchMe())
  {
    BYTE2(v25) = 1;
    LOWORD(v25) = 256;
    v20 = [NCNotificationListPersistentStateManager _listRepresentationForNotificationList:"_listRepresentationForNotificationList:sections:listCache:migrationScheduler:listInfo:detailed:hashIdentifiers:includeHistory:includeHidden:" sections:listCopy listCache:listsCopy migrationScheduler:cacheCopy listInfo:schedulerCopy detailed:infoCopy hashIdentifiers:detailedCopy includeHistory:v25 includeHidden:?];
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

- (id)stateRepresentationForNotificationList:(id)list sectionLists:(id)lists listCache:(id)cache migrationScheduler:(id)scheduler listInfo:(id)info detailed:(BOOL)detailed
{
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  return [NCNotificationListPersistentStateManager _listRepresentationForNotificationList:"_listRepresentationForNotificationList:sections:listCache:migrationScheduler:listInfo:detailed:hashIdentifiers:includeHistory:includeHidden:" sections:list listCache:lists migrationScheduler:cache listInfo:scheduler detailed:info hashIdentifiers:detailed includeHistory:v9 includeHidden:?];
}

- (void)notificationsLoadedForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_storedPersistentStateRepresentation)
  {
    [(NCNotificationListPersistentStateManager *)self _clearStoredListRepresentationForSectionIdentifier:identifierCopy];
    identifierCopy = v5;
  }

  if (self->_storedPersistentMigrationTimes)
  {
    [(NCNotificationListPersistentStateManager *)self _clearStoredRequestMigrationTimesForSectionIdentifier:v5];
    identifierCopy = v5;
  }

  if (self->_storedPersistentMigratedTimeSensitiveNotificationRequests)
  {
    [(NCNotificationListPersistentStateManager *)self _clearStoredMigratedTimeSensitiveNotificationRequestsForSectionIdentifier:v5];
    identifierCopy = v5;
  }
}

- (BOOL)_getSectionFromPersistentStateRepresentation:(id)representation request:(id)request section:(unint64_t *)section
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (representation)
  {
    v9 = [representation objectForKey:@"3.list.sections"];
    v10 = [(NCNotificationListPersistentStateManager *)self _getSectionTypeAndRemoveNotificationRequest:requestCopy inMutableRepresentationForSections:v9];
    *section = v10;
    if (v10 == 4 && [(NCNotificationListPersistentStateManager *)self hasStoredCurrentDigestMigrationTimeExpired])
    {
      v11 = *MEMORY[0x277D77DC8];
      if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        notificationIdentifier = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        v17 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:self->_storedPersistentSummaryMigrationTime];
        v19 = 138543874;
        v20 = v14;
        v21 = 2114;
        v22 = un_logDigest;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ moving request %{public}@ to read digest from current digest because the stored digest migration time [%@] has already expired!", &v19, 0x20u);
      }

      *section = 6;
    }
  }

  return representation != 0;
}

- (unint64_t)sectionForStoredNotificationRequest:(id)request
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NCNotificationListPersistentStateManager *)self _getSectionFromPersistentStateRepresentation:self->_storedPersistentStateRepresentation request:requestCopy section:&v36])
  {
    v5 = v36 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    [(NCNotificationListPersistentStateManager *)self _getSectionFromPersistentStateRepresentation:self->_currentStateRepresentation request:requestCopy section:&v36];
  }

  if (self->_storedPersistentMigrationTimes)
  {
    v6 = [(NCNotificationListPersistentStateManager *)self _getStoredMigrationTimeAndClearNotificationRequest:requestCopy];
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
            notificationIdentifier = [requestCopy notificationIdentifier];
            un_logDigest = [notificationIdentifier un_logDigest];
            v22 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v7];
            *buf = 138543874;
            v38 = v19;
            v39 = 2114;
            v40 = un_logDigest;
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
            notificationIdentifier2 = [requestCopy notificationIdentifier];
            un_logDigest2 = [notificationIdentifier2 un_logDigest];
            v15 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v7];
            *buf = 138543874;
            v38 = v12;
            v39 = 2114;
            v40 = un_logDigest2;
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
        v35 = requestCopy;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  if (self->_storedPersistentMigratedTimeSensitiveNotificationRequests && [(NCNotificationListPersistentStateManager *)self _isMigratedTimeSensitiveNotificationRequest:requestCopy])
  {
    v23 = *MEMORY[0x277D77DC8];
    if (os_log_type_enabled(*MEMORY[0x277D77DC8], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      *buf = 138543618;
      v38 = v26;
      v39 = 2112;
      v40 = un_logDigest3;
      _os_log_impl(&dword_21E77E000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ found migrated time sensitive notification request for record %@.", buf, 0x16u);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __80__NCNotificationListPersistentStateManager_sectionForStoredNotificationRequest___block_invoke_5;
    v31[3] = &unk_27836F560;
    v31[4] = self;
    v32 = requestCopy;
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier && ([bundleIdentifier isEqualToString:@"com.apple.springboard"] & 1) == 0)
  {
    stringByExpandingTildeInPath = [@"~/Library/UserNotificationsUI/" stringByExpandingTildeInPath];
    stringByExpandingTildeInPath2 = [stringByExpandingTildeInPath stringByAppendingPathComponent:v4];
  }

  else
  {
    stringByExpandingTildeInPath2 = [@"~/Library/UserNotificationsUI/" stringByExpandingTildeInPath];
  }

  return stringByExpandingTildeInPath2;
}

+ (id)_persistentStateFilePath
{
  _dataDirectoryPath = [self _dataDirectoryPath];
  v3 = [_dataDirectoryPath stringByAppendingPathComponent:@"NotificationListPersistentState.json"];

  return v3;
}

- (void)_ensureDataDirectoryExists
{
  _dataDirectoryPath = [objc_opt_class() _dataDirectoryPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:_dataDirectoryPath] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:_dataDirectoryPath withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (BOOL)_doesPersistentStateFileExist
{
  _persistentStateFilePath = [objc_opt_class() _persistentStateFilePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:_persistentStateFilePath];

  return v4;
}

- (void)_throttledWriteFileListRepresentation:(id)representation vendorListRepresentation:(id)listRepresentation
{
  representationCopy = representation;
  listRepresentationCopy = listRepresentation;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__NCNotificationListPersistentStateManager__throttledWriteFileListRepresentation_vendorListRepresentation___block_invoke;
  block[3] = &unk_2783715C0;
  block[4] = self;
  v12 = representationCopy;
  v13 = listRepresentationCopy;
  v9 = listRepresentationCopy;
  v10 = representationCopy;
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

  cachedListRepresentationForThrottledWriteToFile = [(NCNotificationListPersistentStateManager *)self cachedListRepresentationForThrottledWriteToFile];

  if (cachedListRepresentationForThrottledWriteToFile)
  {
    cachedListRepresentationForThrottledWriteToFile2 = [(NCNotificationListPersistentStateManager *)self cachedListRepresentationForThrottledWriteToFile];
    [(NCNotificationListPersistentStateManager *)self _writePersistentStateToFileWithRepresentation:cachedListRepresentationForThrottledWriteToFile2];
  }

  cachedListRepresentationForThrottledSendToVendor = [(NCNotificationListPersistentStateManager *)self cachedListRepresentationForThrottledSendToVendor];

  if (cachedListRepresentationForThrottledSendToVendor)
  {
    cachedListRepresentationForThrottledSendToVendor2 = [(NCNotificationListPersistentStateManager *)self cachedListRepresentationForThrottledSendToVendor];
    [(NCNotificationListPersistentStateManager *)self _sendPersistentStateToVendor:cachedListRepresentationForThrottledSendToVendor2];
  }
}

- (void)_sendPersistentStateToVendor:(id)vendor
{
  vendorCopy = vendor;
  if (UNCCatchMe())
  {
    v5 = MEMORY[0x277D77DC8];
    v6 = *MEMORY[0x277D77DC8];
    v7 = *MEMORY[0x277D77DC8];
    if (vendorCopy)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Sending persistent state to vendor", buf, 2u);
      }

      v8 = [vendorCopy mutableCopy];
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

- (void)_writePersistentStateToFileWithRepresentation:(id)representation
{
  v17 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  representationCopy = representation;
  dispatch_assert_queue_V2(queue);
  v14 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:representationCopy options:0 error:&v14];

  v6 = v14;
  _persistentStateFilePath = [objc_opt_class() _persistentStateFilePath];
  v8 = [v5 writeToFile:_persistentStateFilePath atomically:1];

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

- (void)_readPersistentStateFromFileIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(NCNotificationListPersistentStateManager *)self hasLoadedStoredPersistentState])
  {
    [(NCNotificationListPersistentStateManager *)self _readPersistentStateFromFile];
  }

  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, [(NCNotificationListPersistentStateManager *)self hasLoadedStoredPersistentState]);
    v4 = completionCopy;
  }
}

- (void)_readPersistentStateFromFile
{
  selfCopy = self;
  OUTLINED_FUNCTION_3_1();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&dword_21E77E000, v5, v6, "%{public}@ found non-dictionary top level JSON object!", v7, v8, v9, v10, v11);
}

- (void)_publishOnReadForStoredPersistentStateRepresentation:(id)representation
{
  representationCopy = representation;
  delegate = [(NCNotificationListPersistentStateManager *)self delegate];
  v6 = [(NCNotificationListPersistentStateManager *)self _summaryMigrationTimeInRepresentationForList:representationCopy];
  storedPersistentSummaryMigrationTime = self->_storedPersistentSummaryMigrationTime;
  self->_storedPersistentSummaryMigrationTime = v6;

  if (self->_storedPersistentSummaryMigrationTime)
  {
    [delegate persistentStateManager:self didFetchSummaryMigrationTime:?];
    [(NSDate *)self->_storedPersistentSummaryMigrationTime timeIntervalSinceNow];
    self->_storedCurrentDigestMigrationTimeExpired = v8 < 0.0;
  }

  storedPersistentStateRepresentation = [(NCNotificationListPersistentStateManager *)self storedPersistentStateRepresentation];
  v10 = [storedPersistentStateRepresentation objectForKey:@"3.list.sections"];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __97__NCNotificationListPersistentStateManager__publishOnReadForStoredPersistentStateRepresentation___block_invoke;
  v16 = &unk_278372650;
  v11 = delegate;
  v17 = v11;
  selfCopy = self;
  [v10 enumerateObjectsUsingBlock:&v13];
  v12 = [representationCopy objectForKey:{@"7.list.infoStore", v13, v14, v15, v16}];
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

- (id)_listRepresentationForNotificationList:(id)list sections:(id)sections listCache:(id)cache migrationScheduler:(id)scheduler listInfo:(id)info detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers includeHistory:(BOOL)self0 includeHidden:(BOOL)self1
{
  detailedCopy = detailed;
  v51 = *MEMORY[0x277D85DE8];
  listCopy = list;
  sectionsCopy = sections;
  cacheCopy = cache;
  schedulerCopy = scheduler;
  infoCopy = info;
  v19 = sectionsCopy;
  v20 = v19;
  if (history)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    notificationSections = [listCopy notificationSections];
    v22 = [notificationSections countByEnumeratingWithState:&v46 objects:v50 count:16];
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
            objc_enumerationMutation(notificationSections);
          }

          v26 = *(*(&v46 + 1) + 8 * i);
          if (![v26 sectionType])
          {
            v20 = [v19 arrayByAddingObject:v26];

            goto LABEL_12;
          }
        }

        v23 = [notificationSections countByEnumeratingWithState:&v46 objects:v50 count:16];
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
  date = [MEMORY[0x277CBEAA8] date];
  v30 = [(NSDateFormatter *)dateFormatter stringFromDate:date];
  [v27 setObject:v30 forKey:@"0.list.stateTimestamp"];

  v31 = [(NCNotificationListPersistentStateManager *)self _representationForSections:v20 detailed:detailedCopy hashIdentifiers:identifiers includeHidden:hidden];
  [v27 setObject:v31 forKey:@"3.list.sections"];

  storedPersistentStateRepresentation = [(NCNotificationListPersistentStateManager *)self storedPersistentStateRepresentation];

  if (storedPersistentStateRepresentation)
  {
    storedPersistentStateRepresentation2 = [(NCNotificationListPersistentStateManager *)self storedPersistentStateRepresentation];
    v34 = [(NCNotificationListPersistentStateManager *)self _mutableRepresentationForStoredListRepresentation:storedPersistentStateRepresentation2];

    if (v34)
    {
      [v27 setObject:v34 forKey:@"5.list.pendingStore"];
    }
  }

  if (schedulerCopy)
  {
    v35 = [(NCNotificationListPersistentStateManager *)self _representationForMigrationScheduler:schedulerCopy];
    v36 = v35;
    if (v35 && [v35 count])
    {
      [v27 setObject:v36 forKey:@"4.list.migrationTimes"];
    }
  }

  storedPersistentMigrationTimes = [(NCNotificationListPersistentStateManager *)self storedPersistentMigrationTimes];

  if (storedPersistentMigrationTimes)
  {
    storedPersistentMigrationTimes2 = [(NCNotificationListPersistentStateManager *)self storedPersistentMigrationTimes];
    v39 = [(NCNotificationListPersistentStateManager *)self _mutableRepresentationForRepresentationForRequestMigrationTimes:storedPersistentMigrationTimes2];

    if (v39)
    {
      [v27 setObject:v39 forKey:@"6.list.pendingMigrationTimes"];
    }
  }

  if (infoCopy && [infoCopy count])
  {
    [v27 setObject:infoCopy forKey:@"7.list.infoStore"];
  }

  if (detailedCopy)
  {
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(listCopy, "totalNotificationCount")}];
    [v27 setObject:v40 forKey:@"1.list.totalNotificationCount"];

    if (cacheCopy)
    {
      v41 = [(NCNotificationListPersistentStateManager *)self _representationForListCache:cacheCopy];
      [v27 setObject:v41 forKey:@"2.list.cacheState"];
    }
  }

  return v27;
}

- (BOOL)_isListRepresentation:(id)representation equalToListRepresentation:(id)listRepresentation
{
  representationCopy = representation;
  listRepresentationCopy = listRepresentation;
  v8 = [representationCopy objectForKey:@"3.list.sections"];
  v9 = [listRepresentationCopy objectForKey:@"3.list.sections"];
  if ([(NCNotificationListPersistentStateManager *)self _isRepresentationForSections:v8 equalToRepresentationForSections:v9])
  {
    v10 = [representationCopy objectForKey:@"4.list.migrationTimes"];
    v11 = [listRepresentationCopy objectForKey:@"4.list.migrationTimes"];
    v12 = [(NCNotificationListPersistentStateManager *)self _isRepresentationForMigrationTimes:v10 equalToRepresentationForMigrationTimes:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)_formatVersionForListRepresentation:(id)representation
{
  v3 = [representation objectForKey:@"0.list.formatVersion"];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (id)_mutableRepresentationForStoredListRepresentation:(id)representation
{
  v4 = MEMORY[0x277CBEB38];
  representationCopy = representation;
  v6 = objc_alloc_init(v4);
  v7 = [representationCopy objectForKey:@"3.list.sections"];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __94__NCNotificationListPersistentStateManager__mutableRepresentationForStoredListRepresentation___block_invoke;
  v17 = &unk_278372678;
  selfCopy = self;
  v19 = v8;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:&v14];
  [v6 setObject:v9 forKey:{@"3.list.sections", v14, v15, v16, v17, selfCopy}];
  v10 = [representationCopy objectForKey:@"5.list.pendingStore"];

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

- (void)_mergePendingNotificationListRepresentation:(id)representation withMutableListRepresentation:(id)listRepresentation
{
  listRepresentationCopy = listRepresentation;
  v7 = [representation objectForKey:@"3.list.sections"];
  v8 = [listRepresentationCopy objectForKey:@"3.list.sections"];

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

- (void)_clearStoredListRepresentationForSectionIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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
    v25 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing stored notifications for section %{public}@", buf, 0x16u);
  }

  v10 = [(NSMutableDictionary *)self->_storedPersistentStateRepresentation objectForKey:@"3.list.sections"];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __95__NCNotificationListPersistentStateManager__clearStoredListRepresentationForSectionIdentifier___block_invoke;
  v19[3] = &unk_2783726A0;
  v19[4] = self;
  v12 = identifierCopy;
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

- (BOOL)_isMutableListRepresentationEmpty:(id)empty
{
  v3 = [empty objectForKey:@"3.list.sections"];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_representationForListCache:(id)cache
{
  v3 = MEMORY[0x277CBEB38];
  cacheCopy = cache;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cacheCopy, "activeNotificationCellCount")}];
  [v5 setObject:v6 forKey:@"0.cache.activeViews"];

  v7 = MEMORY[0x277CCABB0];
  currentCacheSizeCount = [cacheCopy currentCacheSizeCount];

  v9 = [v7 numberWithUnsignedInteger:currentCacheSizeCount];
  [v5 setObject:v9 forKey:@"1.cache.availableViews"];

  return v5;
}

- (id)_representationForMigrationScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  upcomingScheduledMigrationDate = [schedulerCopy upcomingScheduledMigrationDate];
  if (upcomingScheduledMigrationDate)
  {
    v7 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:upcomingScheduledMigrationDate];
    [v5 setObject:v7 forKey:@"0.migrationTime.upcoming"];
  }

  migrationDateForNotificationDigest = [schedulerCopy migrationDateForNotificationDigest];
  if (migrationDateForNotificationDigest)
  {
    v9 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:migrationDateForNotificationDigest];
    [v5 setObject:v9 forKey:@"1.migrationTime.summary"];
  }

  migrationDatesForNotificationRequests = [schedulerCopy migrationDatesForNotificationRequests];
  if ([migrationDatesForNotificationRequests count])
  {
    v11 = [(NCNotificationListPersistentStateManager *)self _representationForRequestMigrationTimes:migrationDatesForNotificationRequests];
    [v5 setObject:v11 forKey:@"2.migrationTime.requests"];
  }

  migratedTimeSensitiveNotificationRequests = [schedulerCopy migratedTimeSensitiveNotificationRequests];
  if ([migratedTimeSensitiveNotificationRequests count])
  {
    v13 = [(NCNotificationListPersistentStateManager *)self _representationForMigratedTimeSensitiveNotificationRequests:migratedTimeSensitiveNotificationRequests];
    [v5 setObject:v13 forKey:@"3.migrationTime.migratedTimeSensitiveNotificationRequests"];
  }

  return v5;
}

- (id)_summaryMigrationTimeInRepresentationForList:(id)list
{
  v4 = [list objectForKey:@"4.list.migrationTimes"];
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

- (BOOL)_isRepresentationForMigrationTimes:(id)times equalToRepresentationForMigrationTimes:(id)migrationTimes
{
  timesCopy = times;
  migrationTimesCopy = migrationTimes;
  v7 = timesCopy;
  v8 = migrationTimesCopy;
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

- (id)_representationForRequestMigrationTimes:(id)times
{
  v4 = MEMORY[0x277CBEB38];
  timesCopy = times;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__NCNotificationListPersistentStateManager__representationForRequestMigrationTimes___block_invoke;
  v10[3] = &unk_278371858;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [timesCopy enumerateKeysAndObjectsUsingBlock:v10];

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

- (id)_mutableRepresentationForRequestMigrationTimesInRepresentationForList:(id)list
{
  listCopy = list;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = listCopy;
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

- (id)_mutableRepresentationForRepresentationForRequestMigrationTimes:(id)times
{
  timesCopy = times;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __108__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForRequestMigrationTimes___block_invoke;
  v7[3] = &unk_2783726F0;
  v5 = v4;
  v8 = v5;
  [timesCopy enumerateKeysAndObjectsUsingBlock:v7];

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

- (void)_mergePendingRequestMigrationTimesRepresentation:(id)representation withMutableRepresentationForRequestMigrationTimes:(id)times
{
  timesCopy = times;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __143__NCNotificationListPersistentStateManager__mergePendingRequestMigrationTimesRepresentation_withMutableRepresentationForRequestMigrationTimes___block_invoke;
  v7[3] = &unk_2783726F0;
  v8 = timesCopy;
  v6 = timesCopy;
  [representation enumerateKeysAndObjectsUsingBlock:v7];
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

- (void)_clearStoredRequestMigrationTimesForSectionIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_storedPersistentMigrationTimes removeObjectForKey:identifier];
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

- (id)_getStoredMigrationTimeAndClearNotificationRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v6 = [(NSMutableDictionary *)self->_storedPersistentMigrationTimes objectForKey:sectionIdentifier];
  if (v6)
  {
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];

    v9 = [v6 objectForKey:un_logDigest];
    if (v9)
    {
      v10 = [(NSDateFormatter *)self->_dateFormatter dateFromString:v9];
      [v6 removeObjectForKey:un_logDigest];
    }

    else
    {
      v10 = 0;
    }

    if (![v6 count])
    {
      [(NSMutableDictionary *)self->_storedPersistentMigrationTimes removeObjectForKey:sectionIdentifier];
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

- (id)_representationForMigratedTimeSensitiveNotificationRequests:(id)requests
{
  v3 = MEMORY[0x277CBEB38];
  requestsCopy = requests;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __104__NCNotificationListPersistentStateManager__representationForMigratedTimeSensitiveNotificationRequests___block_invoke;
  v8[3] = &unk_278370868;
  v6 = v5;
  v9 = v6;
  [requestsCopy enumerateObjectsUsingBlock:v8];

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

- (id)_mutableRepresentationForMigratedTimeSensitiveNotificationRequestsInRepresentationForList:(id)list
{
  listCopy = list;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [listCopy objectForKey:@"4.list.migrationTimes"];
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

- (id)_mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests:(id)requests
{
  requestsCopy = requests;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __128__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForMigratedTimeSensitiveNotificationRequests___block_invoke;
  v7[3] = &unk_278372740;
  v5 = v4;
  v8 = v5;
  [requestsCopy enumerateKeysAndObjectsUsingBlock:v7];

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

- (void)_clearStoredMigratedTimeSensitiveNotificationRequestsForSectionIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_storedPersistentMigratedTimeSensitiveNotificationRequests removeObjectForKey:identifier];
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

- (BOOL)_isMigratedTimeSensitiveNotificationRequest:(id)request
{
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v6 = [(NSMutableDictionary *)self->_storedPersistentMigratedTimeSensitiveNotificationRequests objectForKey:sectionIdentifier];
  if (v6)
  {
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];

    v9 = [v6 containsObject:un_logDigest];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_representationForSections:(id)sections detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers includeHidden:(BOOL)hidden
{
  v10 = MEMORY[0x277CBEB18];
  sectionsCopy = sections;
  v12 = objc_alloc_init(v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __110__NCNotificationListPersistentStateManager__representationForSections_detailed_hashIdentifiers_includeHidden___block_invoke;
  v17[3] = &unk_278372768;
  hiddenCopy = hidden;
  v17[4] = self;
  detailedCopy = detailed;
  identifiersCopy = identifiers;
  v13 = v12;
  v18 = v13;
  [sectionsCopy enumerateObjectsUsingBlock:v17];

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

- (id)_representationForSection:(id)section detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers includeHidden:(BOOL)hidden
{
  identifiersCopy = identifiers;
  detailedCopy = detailed;
  sectionCopy = section;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = NCNotificationListSectionTypeString([sectionCopy sectionType]);
  [v11 setObject:v12 forKey:@"0.section.type"];

  if (hidden)
  {
    [sectionCopy allNotificationGroupsIncludingHidden];
  }

  else
  {
    [sectionCopy allNotificationGroups];
  }
  v13 = ;
  if ([v13 count])
  {
    v14 = [(NCNotificationListPersistentStateManager *)self _representationForGroups:v13 detailed:detailedCopy hashIdentifiers:identifiersCopy];
    [v11 setObject:v14 forKey:@"3.section.groups"];
  }

  if (detailedCopy)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(sectionCopy, "notificationCount")}];
    [v11 setObject:v15 forKey:@"1.section.notificationCount"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(sectionCopy, "count")}];
    [v11 setObject:v16 forKey:@"2.section.groupCount"];
  }

  return v11;
}

- (BOOL)_isRepresentationForSections:(id)sections equalToRepresentationForSections:(id)forSections
{
  sectionsCopy = sections;
  forSectionsCopy = forSections;
  v8 = sectionsCopy;
  v9 = forSectionsCopy;
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

- (BOOL)_isRepresentationForSection:(id)section equalToRepresentationForSection:(id)forSection
{
  sectionCopy = section;
  forSectionCopy = forSection;
  v8 = [sectionCopy objectForKey:@"0.section.type"];
  v9 = [forSectionCopy objectForKey:@"0.section.type"];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [sectionCopy objectForKey:@"3.section.groups"];
    v12 = [forSectionCopy objectForKey:@"3.section.groups"];
    v13 = [(NCNotificationListPersistentStateManager *)self _isRepresentationForGroups:v11 equalToRepresentationForGroups:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)_getSectionTypeAndRemoveNotificationRequest:(id)request inMutableRepresentationForSections:(id)sections
{
  requestCopy = request;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  sectionsCopy = sections;
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
  v8 = requestCopy;
  v13 = v8;
  v14 = &v22;
  v15 = &v16;
  [sectionsCopy enumerateObjectsUsingBlock:v12];
  if (v17[5] && [(NCNotificationListPersistentStateManager *)self _isRepresentationForSectionEmpty:?])
  {
    [sectionsCopy removeObject:v17[5]];
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

- (BOOL)_containsNotificationRequest:(id)request inMutableRepresentationForSection:(id)section shouldRemove:(BOOL)remove
{
  requestCopy = request;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  sectionCopy = section;
  v10 = [sectionCopy objectForKey:@"3.section.groups"];
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
  v11 = requestCopy;
  removeCopy = remove;
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

- (id)_mutableRepresentationForRepresentationForSection:(id)section
{
  sectionCopy = section;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = sectionCopy;
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
  selfCopy = self;
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

- (id)_sectionRepresentationOfSectionType:(id)type inRepresentationForSections:(id)sections
{
  typeCopy = type;
  sectionsCopy = sections;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __108__NCNotificationListPersistentStateManager__sectionRepresentationOfSectionType_inRepresentationForSections___block_invoke;
  v11[3] = &unk_278372808;
  v7 = typeCopy;
  v12 = v7;
  v8 = [sectionsCopy indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [sectionsCopy objectAtIndex:v8];
  }

  return v9;
}

uint64_t __108__NCNotificationListPersistentStateManager__sectionRepresentationOfSectionType_inRepresentationForSections___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"0.section.type"];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_mergeRepresentationForSection:(id)section withMutableRepresentationForSection:(id)forSection
{
  sectionCopy = section;
  v7 = [forSection objectForKey:@"3.section.groups"];
  v8 = [sectionCopy objectForKey:@"3.section.groups"];

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

- (void)_clearStoredSectionIdentifier:(id)identifier inMutableRepresentationForSection:(id)section
{
  identifierCopy = identifier;
  v6 = [section objectForKey:@"3.section.groups"];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __108__NCNotificationListPersistentStateManager__clearStoredSectionIdentifier_inMutableRepresentationForSection___block_invoke;
  v13 = &unk_278372650;
  v14 = identifierCopy;
  v15 = v7;
  v8 = identifierCopy;
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

- (BOOL)_isRepresentationForSectionEmpty:(id)empty
{
  v3 = [empty objectForKey:@"3.section.groups"];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_representationForGroups:(id)groups detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers
{
  v8 = MEMORY[0x277CBEB18];
  groupsCopy = groups;
  v10 = objc_alloc_init(v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__NCNotificationListPersistentStateManager__representationForGroups_detailed_hashIdentifiers___block_invoke;
  v15[3] = &unk_278372830;
  v15[4] = self;
  detailedCopy = detailed;
  identifiersCopy = identifiers;
  v11 = v10;
  v16 = v11;
  [groupsCopy enumerateObjectsUsingBlock:v15];

  v12 = v16;
  v13 = v11;

  return v11;
}

void __94__NCNotificationListPersistentStateManager__representationForGroups_detailed_hashIdentifiers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _representationForGroup:a2 atIndex:a3 detailed:*(a1 + 48) hashIdentifiers:*(a1 + 49)];
  [*(a1 + 40) addObject:v4];
}

- (id)_representationForGroup:(id)group atIndex:(unint64_t)index detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers
{
  identifiersCopy = identifiers;
  detailedCopy = detailed;
  groupCopy = group;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sectionIdentifier = [groupCopy sectionIdentifier];
  v13 = [sectionIdentifier copy];
  [v11 setObject:v13 forKey:@"1.group.sectionIdentifier"];

  if (identifiersCopy)
  {
    threadIdentifier = [groupCopy threadIdentifier];
    un_logDigest = [threadIdentifier un_logDigest];
    [v11 setObject:un_logDigest forKey:@"2.group.threadIdentifier"];

LABEL_5:
    goto LABEL_6;
  }

  leadingNotificationRequest = [groupCopy leadingNotificationRequest];
  isUniqueThreadIdentifier = [leadingNotificationRequest isUniqueThreadIdentifier];

  if (isUniqueThreadIdentifier)
  {
    threadIdentifier = [groupCopy threadIdentifier];
    [v11 setObject:threadIdentifier forKey:@"2.group.threadIdentifier"];
    goto LABEL_5;
  }

LABEL_6:
  allNotificationRequests = [groupCopy allNotificationRequests];
  v19 = [(NCNotificationListPersistentStateManager *)self _representationForNotificationRequests:allNotificationRequests detailed:detailedCopy hashIdentifiers:identifiersCopy];
  [v11 setObject:v19 forKey:@"5.group.notificationRequests"];

  if (detailedCopy)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    [v11 setObject:v20 forKey:@"0.group.index"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(groupCopy, "count")}];
    [v11 setObject:v21 forKey:@"4.group.notificationCount"];

    leadingNotificationRequest2 = [groupCopy leadingNotificationRequest];

    if (leadingNotificationRequest2)
    {
      leadingNotificationRequest3 = [groupCopy leadingNotificationRequest];
      timestamp = [leadingNotificationRequest3 timestamp];

      if (timestamp)
      {
        v25 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:timestamp];
        [v11 setObject:v25 forKey:@"3.group.timestamp"];
      }
    }
  }

  return v11;
}

- (BOOL)_isRepresentationForGroups:(id)groups equalToRepresentationForGroups:(id)forGroups
{
  groupsCopy = groups;
  forGroupsCopy = forGroups;
  v8 = groupsCopy;
  v9 = forGroupsCopy;
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

- (BOOL)_isRepresentationForGroup:(id)group equalToRepresentationForGroup:(id)forGroup
{
  groupCopy = group;
  forGroupCopy = forGroup;
  v7 = groupCopy;
  v8 = forGroupCopy;
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

- (BOOL)_containsNotificationRequest:(id)request inMutableRepresentationForGroup:(id)group shouldRemove:(BOOL)remove
{
  removeCopy = remove;
  requestCopy = request;
  groupCopy = group;
  v10 = [groupCopy objectForKey:@"1.group.sectionIdentifier"];
  v11 = [groupCopy objectForKey:@"2.group.threadIdentifier"];
  v12 = [groupCopy objectForKey:@"5.group.notificationRequests"];

  v13 = [(NCNotificationListPersistentStateManager *)self _representationForNotificationRequest:requestCopy hashIdentifiers:1];
  sectionIdentifier = [requestCopy sectionIdentifier];
  if (([v10 isEqualToString:sectionIdentifier] & 1) == 0)
  {

    LOBYTE(v17) = 0;
    goto LABEL_16;
  }

  v23 = removeCopy;
  threadIdentifier = [requestCopy threadIdentifier];
  v16 = [v11 isEqualToString:threadIdentifier];
  if ((v16 & 1) == 0)
  {
    threadIdentifier2 = [requestCopy threadIdentifier];
    un_logDigest = [threadIdentifier2 un_logDigest];
    if (([v11 isEqualToString:un_logDigest] & 1) == 0)
    {
      v17 = 0;
      goto LABEL_12;
    }

    if ([v12 containsObject:v13])
    {
      v17 = 1;
      goto LABEL_12;
    }

    v21 = threadIdentifier2;
LABEL_11:
    notificationIdentifier = [requestCopy notificationIdentifier];
    v17 = [v12 containsObject:notificationIdentifier];

    threadIdentifier2 = v21;
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

- (id)_mutableRepresentationForRepresentationForGroup:(id)group
{
  groupCopy = group;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [groupCopy objectForKey:@"1.group.sectionIdentifier"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 copy];
    [v5 setObject:v8 forKey:@"1.group.sectionIdentifier"];
  }

  v9 = [groupCopy objectForKey:@"2.group.threadIdentifier"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 copy];
    [v5 setObject:v11 forKey:@"2.group.threadIdentifier"];
  }

  v12 = [groupCopy objectForKey:@"5.group.notificationRequests"];
  if (v12)
  {
    v13 = [(NCNotificationListPersistentStateManager *)self _mutableRepresentationForRepresentationForNotificationRequests:v12];
    [v5 setObject:v13 forKey:@"5.group.notificationRequests"];
  }

  return v5;
}

- (id)_representationForGroupWithSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier inRepresentationForGroups:(id)groups
{
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  groupsCopy = groups;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __132__NCNotificationListPersistentStateManager__representationForGroupWithSectionIdentifier_threadIdentifier_inRepresentationForGroups___block_invoke;
  v18 = &unk_278372858;
  v19 = identifierCopy;
  v20 = threadIdentifierCopy;
  v10 = identifierCopy;
  v11 = threadIdentifierCopy;
  v12 = [groupsCopy indexOfObjectPassingTest:&v15];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = [groupsCopy objectAtIndex:{v12, v15, v16, v17, v18, v19, v20}];
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

- (void)_mergeRepresentationForGroup:(id)group withMutableRepresentationForGroup:(id)forGroup
{
  forGroupCopy = forGroup;
  v8 = [group objectForKey:@"5.group.notificationRequests"];
  v7 = [forGroupCopy objectForKey:@"5.group.notificationRequests"];

  [(NCNotificationListPersistentStateManager *)self _mergeRepresentationForNotificationRequests:v8 withMutableRepresentationForNotificationRequests:v7];
}

- (BOOL)_isRepresentationForGroupEmpty:(id)empty
{
  v3 = [empty objectForKey:@"5.group.notificationRequests"];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_representationForNotificationRequests:(id)requests detailed:(BOOL)detailed hashIdentifiers:(BOOL)identifiers
{
  v7 = MEMORY[0x277CBEB40];
  requestsCopy = requests;
  orderedSet = [v7 orderedSet];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__NCNotificationListPersistentStateManager__representationForNotificationRequests_detailed_hashIdentifiers___block_invoke;
  v14[3] = &unk_278372880;
  identifiersCopy = identifiers;
  v14[4] = self;
  v15 = orderedSet;
  v10 = orderedSet;
  [requestsCopy enumerateObjectsUsingBlock:v14];

  array = [v10 array];
  v12 = [array mutableCopy];

  return v12;
}

void __108__NCNotificationListPersistentStateManager__representationForNotificationRequests_detailed_hashIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _representationForNotificationRequest:a2 hashIdentifiers:*(a1 + 48)];
  [*(a1 + 40) addObject:v3];
}

- (id)_representationForNotificationRequest:(id)request hashIdentifiers:(BOOL)identifiers
{
  identifiersCopy = identifiers;
  notificationIdentifier = [request notificationIdentifier];
  v6 = notificationIdentifier;
  if (identifiersCopy)
  {
    un_logDigest = [notificationIdentifier un_logDigest];

    v6 = un_logDigest;
  }

  return v6;
}

- (id)_mutableRepresentationForRepresentationForNotificationRequests:(id)requests
{
  requestsCopy = requests;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__NCNotificationListPersistentStateManager__mutableRepresentationForRepresentationForNotificationRequests___block_invoke;
  v7[3] = &unk_278372718;
  v5 = v4;
  v8 = v5;
  [requestsCopy enumerateObjectsUsingBlock:v7];

  return v5;
}

- (void)_mergeRepresentationForNotificationRequests:(id)requests withMutableRepresentationForNotificationRequests:(id)notificationRequests
{
  notificationRequestsCopy = notificationRequests;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __137__NCNotificationListPersistentStateManager__mergeRepresentationForNotificationRequests_withMutableRepresentationForNotificationRequests___block_invoke;
  v7[3] = &unk_278372718;
  v8 = notificationRequestsCopy;
  v6 = notificationRequestsCopy;
  [requests enumerateObjectsUsingBlock:v7];
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