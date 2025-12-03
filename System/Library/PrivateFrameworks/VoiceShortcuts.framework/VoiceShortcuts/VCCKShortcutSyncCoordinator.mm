@interface VCCKShortcutSyncCoordinator
- (BOOL)checkIfExistingCoherenceSyncRecordsArePresent;
- (BOOL)containerContainsRecordOfType:(id)type;
- (BOOL)recordsContainIncompatibleDeviceForCoherenceSyncMigration:(id)migration;
- (NSString)accountForSyncToken;
- (VCCKShortcutSyncCoordinator)initWithDatabaseProvider:(id)provider;
- (VCCKShortcutSyncService)currentSyncService;
- (WFCloudKitSyncEventLogger)logger;
- (void)dealloc;
- (void)deleteLegacyShortcutsZoneSubscriptionIfNeeded;
- (void)handleAccountChangedNotification:(id)notification;
- (void)handleCloudKitSyncEnabledChange;
- (void)handleCloudKitSyncZoneWasPurgedChange;
- (void)handleWalrusStatusDidChange;
- (void)migrateToCoherenceSyncIfPossible:(id)possible;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAndResetCurrentSyncServiceWithDatabase:(id)database reason:(id)reason;
- (void)setSyncEnabled:(BOOL)enabled;
- (void)setupPathMonitor;
- (void)start;
- (void)startObservingAccountChanges;
- (void)startObservingApplicationVisibility;
- (void)startObservingDataUsagePermission;
- (void)startObservingReachability;
- (void)startObservingUserDefaults;
- (void)stopObservingAccountChanges;
- (void)stopObservingApplicationVisibility;
- (void)stopObservingReachability;
- (void)stopObservingUserDefaults;
- (void)updateAccountStatusAndMetadata;
- (void)updateCurrentSyncService;
@end

@implementation VCCKShortcutSyncCoordinator

- (void)updateCurrentSyncService
{
  v60 = *MEMORY[0x277D85DE8];
  stateAccessQueue = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
  dispatch_assert_queue_V2(stateAccessQueue);

  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Trying to re-create a shortcut sync service.", buf, 0xCu);
  }

  databaseProvider = [(VCCKShortcutSyncCoordinator *)self databaseProvider];
  v53 = 0;
  v6 = [databaseProvider databaseWithError:&v53];
  v7 = v53;

  if (v6)
  {
    if ([MEMORY[0x277D7C230] isSyncEnabled])
    {
      if ([(VCCKShortcutSyncCoordinator *)self accountStatus]== 1)
      {
        accountForSyncToken = [(VCCKShortcutSyncCoordinator *)self accountForSyncToken];
        if (!accountForSyncToken)
        {
          v20 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
            _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_INFO, "%s Account name for sync token is nil, not creating new sync service", buf, 0xCu);
          }

          [(VCCKShortcutSyncCoordinator *)self removeAndResetCurrentSyncServiceWithDatabase:v6 reason:@"missing account name"];
          goto LABEL_54;
        }

        syncToken = [v6 syncToken];
        account = [syncToken account];
        v11 = accountForSyncToken;
        v12 = v11;
        if (account == v11)
        {

          v21 = account;
        }

        else
        {
          if (account)
          {
            v13 = [account isEqualToString:v11];

            if (v13)
            {
LABEL_32:
              if ([MEMORY[0x277D7C230] zoneWasPurged])
              {
                v26 = getWFCloudKitSyncLogObject();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315138;
                  v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
                  _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_INFO, "%s 'Zone purged' flag is set, not creating new sync service until user confirms that it is okay to resume syncing", buf, 0xCu);
                }

                [(VCCKShortcutSyncCoordinator *)self removeAndResetCurrentSyncServiceWithDatabase:v6 reason:@"zone purged"];
LABEL_53:

LABEL_54:
                goto LABEL_55;
              }

              if (self->_currentSyncService)
              {
                account2 = [syncToken account];
                v28 = v12;
                v29 = v28;
                if (account2 == v28)
                {

                  goto LABEL_42;
                }

                if (account2)
                {
                  v30 = [account2 isEqualToString:v28];

                  if (!v30)
                  {
                    goto LABEL_46;
                  }

LABEL_42:
                  v31 = getWFCloudKitSyncLogObject();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
                    _os_log_impl(&dword_23103C000, v31, OS_LOG_TYPE_INFO, "%s A sync service already exists and account has not changed, not creating new sync service", buf, 0xCu);
                  }

                  goto LABEL_53;
                }
              }

LABEL_46:
              [(VCCKShortcutSyncCoordinator *)self migrateToCoherenceSyncIfPossible:v6];
              v32 = getWFCloudKitSyncLogObject();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
                _os_log_impl(&dword_23103C000, v32, OS_LOG_TYPE_INFO, "%s Shortcut sync is enabled and iCloud account information is available, creating new sync service", buf, 0xCu);
              }

              v33 = getWFCloudKitSyncLogObject();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                coherenceSyncEnabled = [v6 coherenceSyncEnabled];
                *buf = 136315394;
                v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
                v56 = 1024;
                LODWORD(v57) = coherenceSyncEnabled;
                _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_DEBUG, "%s Coherence sync enabled: %i", buf, 0x12u);
              }

              logger = [(VCCKShortcutSyncCoordinator *)self logger];
              v36 = MEMORY[0x277CCACA8];
              coherenceSyncEnabled2 = [v6 coherenceSyncEnabled];
              v38 = @"off";
              if (coherenceSyncEnabled2)
              {
                v38 = @"on";
              }

              v39 = [v36 stringWithFormat:@"starting sync service (coherence sync: %@)", v38, v47, v48, v49, v50];
              [logger logEvent:v39];

              v40 = [VCCKShortcutSyncService alloc];
              container = [(VCCKShortcutSyncCoordinator *)self container];
              applicationObserver = [(VCCKShortcutSyncCoordinator *)self applicationObserver];
              logger2 = [(VCCKShortcutSyncCoordinator *)self logger];
              v44 = [(VCCKShortcutSyncService *)v40 initWithContainer:container database:v6 applicationObserver:applicationObserver debuggingOptions:0 logger:logger2];
              currentSyncService = self->_currentSyncService;
              self->_currentSyncService = v44;

              [(VCCKShortcutSyncService *)self->_currentSyncService startWithCompletionHandler:&__block_literal_global_5827];
              goto LABEL_53;
            }
          }

          else
          {
          }

          v22 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            account3 = [syncToken account];
            *buf = 136315650;
            v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
            v56 = 2114;
            v57 = account3;
            v58 = 2114;
            v59 = v12;
            _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_INFO, "%s Database sync token account (%{public}@) is different from current account (%{public}@), clearing tombstones and invalidating persisted sync engine metadata", buf, 0x20u);
          }

          [MEMORY[0x277D7C230] setZoneWasPurged:0];
          v24 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
            _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_INFO, "%s iCloud account changed, resetting flags for sync unavailable message", buf, 0xCu);
          }

          [MEMORY[0x277CBEBD0] resetSyncUnavailableMessage];
          v25 = objc_opt_new();
          [v25 setAccount:v12];
          v47 = MEMORY[0x277D85DD0];
          v48 = 3221225472;
          v49 = __55__VCCKShortcutSyncCoordinator_updateCurrentSyncService__block_invoke;
          v50 = &unk_2788FFA30;
          v51 = v6;
          v52 = v25;
          v21 = v25;
          [v51 performTransactionWithReason:@"update sync service state" block:&v47 error:0];

          account = v51;
        }

        goto LABEL_32;
      }

      v18 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        accountStatus = [(VCCKShortcutSyncCoordinator *)self accountStatus];
        *buf = 136315394;
        v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
        v56 = 2048;
        v57 = accountStatus;
        _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_INFO, "%s iCloud account status is %ld, clearing tombstones and not creating new sync service", buf, 0x16u);
      }

      v17 = @"account unavailable";
    }

    else
    {
      v16 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
        _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_INFO, "%s Shortcut syncing disabled in preferences, clearing tombstones and not creating new sync service", buf, 0xCu);
      }

      v17 = @"sync disabled by user";
    }

    [(VCCKShortcutSyncCoordinator *)self removeAndResetCurrentSyncServiceWithDatabase:v6 reason:v17];
  }

  else
  {
    v14 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v55 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]";
      v56 = 2114;
      v57 = v7;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Database is not available, cannot create new sync service: %{public}@", buf, 0x16u);
    }

    v15 = self->_currentSyncService;
    self->_currentSyncService = 0;
  }

LABEL_55:

  v46 = *MEMORY[0x277D85DE8];
}

void __47__VCCKShortcutSyncCoordinator_setupPathMonitor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = nw_path_get_status(v3);

  if ((a1 & 0xFFFFFFFD) == 1 && ![WeakRetained accountStatus])
  {
    [WeakRetained updateAccountStatusAndMetadata];
  }
}

- (void)handleAccountChangedNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[VCCKShortcutSyncCoordinator handleAccountChangedNotification:]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Received CKAccountChangedNotification", buf, 0xCu);
  }

  stateAccessQueue = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__VCCKShortcutSyncCoordinator_handleAccountChangedNotification___block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(stateAccessQueue, block);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (VCCKShortcutSyncAccountObserverUserDefaultsChangedContext == context)
  {
    v13 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v25 = "[VCCKShortcutSyncCoordinator observeValueForKeyPath:ofObject:change:context:]";
      v26 = 2114;
      v27 = pathCopy;
      v28 = 2114;
      v29 = changeCopy;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_INFO, "%s Received user defaults update for keyPath %{public}@, change dictionary: %{public}@", buf, 0x20u);
    }

    stateAccessQueue = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__VCCKShortcutSyncCoordinator_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_2788FFFC0;
    v22 = pathCopy;
    selfCopy = self;
    dispatch_async(stateAccessQueue, block);
  }

  else if (VCCKShortcutSyncAccountObserverApplicationVisibilityChangedContext == context)
  {
    applicationObserver = [(VCCKShortcutSyncCoordinator *)self applicationObserver];
    isApplicationVisible = [applicationObserver isApplicationVisible];

    if (isApplicationVisible)
    {
      stateAccessQueue2 = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __78__VCCKShortcutSyncCoordinator_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v20[3] = &unk_278900148;
      v20[4] = self;
      dispatch_async(stateAccessQueue2, v20);
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = VCCKShortcutSyncCoordinator;
    [(VCCKShortcutSyncCoordinator *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __78__VCCKShortcutSyncCoordinator_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D7CBD8]])
  {
    v2 = *(a1 + 40);

    return [v2 handleCloudKitSyncEnabledChange];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D7CBE8]])
  {
    v4 = *(a1 + 40);

    return [v4 handleCloudKitSyncZoneWasPurgedChange];
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:*MEMORY[0x277D7D080]];
    if (result)
    {
      v5 = *(a1 + 40);

      return [v5 handleWalrusStatusDidChange];
    }
  }

  return result;
}

uint64_t __78__VCCKShortcutSyncCoordinator_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) accountStatus];
  if (!result)
  {
    v3 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[VCCKShortcutSyncCoordinator observeValueForKeyPath:ofObject:change:context:]_block_invoke_2";
      _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Application moved into foreground, updating account status", &v5, 0xCu);
    }

    result = [*(a1 + 32) updateAccountStatusAndMetadata];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)recordsContainIncompatibleDeviceForCoherenceSyncMigration:(id)migration
{
  v47 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  migrationCopy = migration;
  v4 = [migrationCopy countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v32;
    v8 = *MEMORY[0x277D7CC38];
    v9 = *MEMORY[0x277D7CC40];
    *&v5 = 136316162;
    v29 = v5;
    do
    {
      v10 = 0;
      v30 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(migrationCopy);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:{v8, v29}];
        v13 = [v11 objectForKeyedSubscript:v9];
        v14 = getWFCloudKitSyncLogObject();
        v15 = v14;
        if (v12)
        {
          v16 = v13 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "[VCCKShortcutSyncCoordinator recordsContainIncompatibleDeviceForCoherenceSyncMigration:]";
            _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Device record doesn't contain OS type and/or OS version number, skipping record", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            [v11 modifiedByDevice];
            v18 = v9;
            v19 = v8;
            v20 = v7;
            v22 = v21 = migrationCopy;
            modificationDate = [v11 modificationDate];
            *buf = v29;
            *&buf[4] = "[VCCKShortcutSyncCoordinator recordsContainIncompatibleDeviceForCoherenceSyncMigration:]";
            *&buf[12] = 2112;
            *&buf[14] = v22;
            *&buf[22] = 2112;
            *&buf[24] = v12;
            v36 = 2112;
            v37 = v13;
            v38 = 2112;
            v39 = modificationDate;
            _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_INFO, "%s Found device record: name: %@, os type: %@, os version: %@, modification date: %@", buf, 0x34u);

            migrationCopy = v21;
            v7 = v20;
            v8 = v19;
            v9 = v18;
            v6 = v30;
          }

          v24 = [&unk_2845ED1B8 objectForKeyedSubscript:v12];
          if (v24)
          {
            memset(buf, 0, sizeof(buf));
            v15 = v24;
            MEMORY[0x231925A10](buf, v13);
            v45 = 0u;
            v46 = 0u;
            MEMORY[0x231925A10](&v45, v15);

            v43 = *buf;
            v44 = *&buf[16];
            v41 = v45;
            v42 = v46;
            if (_LSVersionNumberCompare() == -1)
            {

              v26 = 1;
              goto LABEL_24;
            }
          }

          else
          {
            v25 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "[VCCKShortcutSyncCoordinator recordsContainIncompatibleDeviceForCoherenceSyncMigration:]";
              _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_ERROR, "%s Device record contains unknown OS type, skipping record", buf, 0xCu);
            }

            v15 = 0;
          }
        }

        ++v10;
      }

      while (v6 != v10);
      v6 = [migrationCopy countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v6);
  }

  v26 = 0;
LABEL_24:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)containerContainsRecordOfType:(id)type
{
  typeCopy = type;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc(MEMORY[0x277CBC590]);
  v7 = objc_alloc(MEMORY[0x277CBC578]);
  v8 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v9 = [v7 initWithRecordType:typeCopy predicate:v8];
  v10 = [v6 initWithQuery:v9];

  [v10 setResultsLimit:1];
  [v10 setDesiredKeys:MEMORY[0x277CBEBF8]];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__VCCKShortcutSyncCoordinator_containerContainsRecordOfType___block_invoke;
  v21[3] = &unk_2788FFB08;
  v21[4] = &v22;
  [v10 setRecordMatchedBlock:v21];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __61__VCCKShortcutSyncCoordinator_containerContainsRecordOfType___block_invoke_2;
  v19 = &unk_2788FFB30;
  v11 = v5;
  v20 = v11;
  [v10 setQueryCompletionBlock:&v16];
  v12 = [(VCCKShortcutSyncCoordinator *)self container:v16];
  privateCloudDatabase = [v12 privateCloudDatabase];
  [privateCloudDatabase addOperation:v10];

  v14 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v11, v14);
  LOBYTE(v12) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v12;
}

- (BOOL)checkIfExistingCoherenceSyncRecordsArePresent
{
  if ([(VCCKShortcutSyncCoordinator *)self containerContainsRecordOfType:@"CoherenceLibrary"])
  {
    return 1;
  }

  return [(VCCKShortcutSyncCoordinator *)self containerContainsRecordOfType:@"Shortcut_v2"];
}

- (void)migrateToCoherenceSyncIfPossible:(id)possible
{
  v33 = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  if (([possibleCopy coherenceSyncEnabled] & 1) == 0)
  {
    lastDeviceRecordsFetchDate = [MEMORY[0x277CBEBD0] lastDeviceRecordsFetchDate];
    if (lastDeviceRecordsFetchDate)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:lastDeviceRecordsFetchDate];
      v8 = v7;

      if (v8 < 172800.0)
      {
        goto LABEL_17;
      }
    }

    v9 = dispatch_semaphore_create(0);
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__5781;
    v29 = __Block_byref_object_dispose__5782;
    v30 = 0;
    v10 = MEMORY[0x277D7C1A8];
    container = [(VCCKShortcutSyncCoordinator *)self container];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__VCCKShortcutSyncCoordinator_migrateToCoherenceSyncIfPossible___block_invoke;
    v21[3] = &unk_2788FFAC0;
    v12 = v9;
    v22 = v12;
    selfCopy = self;
    v24 = &v25;
    [v10 fetchDeviceRecordsInContainer:container completion:v21];

    v13 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v12, v13);
    if (v26[5])
    {
      v14 = MEMORY[0x277CBEBD0];
      date2 = [MEMORY[0x277CBEAA8] date];
      [v14 setLastDeviceRecordsFetchDate:date2];

      if ([(VCCKShortcutSyncCoordinator *)self recordsContainIncompatibleDeviceForCoherenceSyncMigration:v26[5]])
      {
        if (![(VCCKShortcutSyncCoordinator *)self checkIfExistingCoherenceSyncRecordsArePresent])
        {
          v19 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v32 = "[VCCKShortcutSyncCoordinator migrateToCoherenceSyncIfPossible:]";
            _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Incompatible devices found, not enabling coherence sync", buf, 0xCu);
          }

          goto LABEL_16;
        }

        v16 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v32 = "[VCCKShortcutSyncCoordinator migrateToCoherenceSyncIfPossible:]";
          _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_DEFAULT, "%s Incompatible devices found, but coherence sync records are present.", buf, 0xCu);
        }
      }

      v17 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = "[VCCKShortcutSyncCoordinator migrateToCoherenceSyncIfPossible:]";
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, "%s All devices in user's sync circle have updated, enabling coherence sync", buf, 0xCu);
      }

      logger = [(VCCKShortcutSyncCoordinator *)self logger];
      [logger logEvent:@"enable coherence sync"];

      [possibleCopy updateSyncTokenWithBlock:&__block_literal_global_252];
      [MEMORY[0x277CBEBD0] resetSyncUnavailableMessage];
    }

LABEL_16:

    _Block_object_dispose(&v25, 8);
LABEL_17:
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __64__VCCKShortcutSyncCoordinator_migrateToCoherenceSyncIfPossible___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [*(a1 + 40) logger];
    [v8 logDeviceRecords:v6];

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[VCCKShortcutSyncCoordinator migrateToCoherenceSyncIfPossible:]_block_invoke";
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Error fetching device records: %{public}@", &v11, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

- (WFCloudKitSyncEventLogger)logger
{
  if (!self->_logger && [MEMORY[0x277CBEBD0] syncEventLoggingEnabled] && VCIsInternalBuild())
  {
    createPersistedSyncEventLogger = [MEMORY[0x277D7C220] createPersistedSyncEventLogger];
    logger = self->_logger;
    self->_logger = createPersistedSyncEventLogger;
  }

  v5 = self->_logger;

  return v5;
}

- (void)deleteLegacyShortcutsZoneSubscriptionIfNeeded
{
  stateAccessQueue = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
  dispatch_assert_queue_V2(stateAccessQueue);

  systemShortcutsUserDefaults = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  v5 = [systemShortcutsUserDefaults BOOLForKey:@"LegacyShortcutsZoneSubscriptionUnsubscribed"];

  if ((v5 & 1) == 0)
  {
    container = [(VCCKShortcutSyncCoordinator *)self container];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__VCCKShortcutSyncCoordinator_deleteLegacyShortcutsZoneSubscriptionIfNeeded__block_invoke;
    v7[3] = &unk_2788FFA98;
    v7[4] = self;
    [container accountStatusWithCompletionHandler:v7];
  }
}

void __76__VCCKShortcutSyncCoordinator_deleteLegacyShortcutsZoneSubscriptionIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = [*(a1 + 32) stateAccessQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__VCCKShortcutSyncCoordinator_deleteLegacyShortcutsZoneSubscriptionIfNeeded__block_invoke_2;
    block[3] = &unk_278900148;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }
}

void __76__VCCKShortcutSyncCoordinator_deleteLegacyShortcutsZoneSubscriptionIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) container];
  v1 = [v2 privateCloudDatabase];
  [v1 deleteSubscriptionWithID:@"ShortcutsZoneSubscription" completionHandler:&__block_literal_global_240];
}

void __76__VCCKShortcutSyncCoordinator_deleteLegacyShortcutsZoneSubscriptionIfNeeded__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3 && [a2 isEqualToString:@"ShortcutsZoneSubscription"])
  {
    v3 = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
    [v3 setBool:1 forKey:@"LegacyShortcutsZoneSubscriptionUnsubscribed"];
  }
}

- (void)removeAndResetCurrentSyncServiceWithDatabase:(id)database reason:(id)reason
{
  if (self->_currentSyncService)
  {
    reasonCopy = reason;
    databaseCopy = database;
    logger = [(VCCKShortcutSyncCoordinator *)self logger];
    reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"clearing sync state and stopping sync service (reason: %@)", reasonCopy];

    [logger logEvent:reasonCopy];
    [databaseCopy clearTombstonesAndSyncState];

    currentSyncService = self->_currentSyncService;
    self->_currentSyncService = 0;
  }
}

uint64_t __55__VCCKShortcutSyncCoordinator_updateCurrentSyncService__block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearTombstonesAndSyncState];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setSyncToken:v3];
}

void __55__VCCKShortcutSyncCoordinator_updateCurrentSyncService__block_invoke_234()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[VCCKShortcutSyncCoordinator updateCurrentSyncService]_block_invoke";
    _os_log_impl(&dword_23103C000, v0, OS_LOG_TYPE_INFO, "%s Shortcut sync service finished starting", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateAccountStatusAndMetadata
{
  v37 = *MEMORY[0x277D85DE8];
  stateAccessQueue = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
  dispatch_assert_queue_V2(stateAccessQueue);

  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Updating iCloud account status", &buf, 0xCu);
  }

  v5 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5781;
  v35 = __Block_byref_object_dispose__5782;
  v36 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5781;
  v26 = __Block_byref_object_dispose__5782;
  v27 = 0;
  container = [(VCCKShortcutSyncCoordinator *)self container];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61__VCCKShortcutSyncCoordinator_updateAccountStatusAndMetadata__block_invoke;
  v17 = &unk_2788FFA08;
  v7 = v5;
  v18 = v7;
  selfCopy = self;
  p_buf = &buf;
  v21 = &v22;
  [container accountInfoWithCompletionHandler:&v14];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  -[VCCKShortcutSyncCoordinator setAccountStatus:](self, "setAccountStatus:", [*(*(&buf + 1) + 40) accountStatus]);
  [(VCCKShortcutSyncCoordinator *)self setUserRecordID:v23[5]];
  walrusStatus = [*(*(&buf + 1) + 40) walrusStatus];
  v9 = getWFWalrusLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = CKStringFromWalrusStatus();
    *v28 = 136315394;
    v29 = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]";
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s Got Walrus status from CloudKit: %@", v28, 0x16u);
  }

  switch(walrusStatus)
  {
    case 2:
      v12 = 0;
      goto LABEL_13;
    case 1:
      v12 = 1;
LABEL_13:
      [MEMORY[0x277D7C230] setWalrusEnabled:v12];
      break;
    case 0:
      v11 = getWFWalrusLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v28 = 136315138;
        v29 = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]";
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Could not determine walrus status, previous logs may contain the reason.", v28, 0xCu);
      }

      break;
  }

  [(VCCKShortcutSyncCoordinator *)self updateCurrentSyncService];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&buf, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __61__VCCKShortcutSyncCoordinator_updateAccountStatusAndMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6)
  {
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]_block_invoke";
      v24 = 2114;
      v25 = v8;
      v10 = "%s Fatal error fetching account info: %{public}@";
      goto LABEL_7;
    }

LABEL_8:

LABEL_9:
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_10;
  }

  if (v7)
  {
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]_block_invoke";
      v24 = 2114;
      v25 = v8;
      v10 = "%s Encountered error fetching account info, but we have an account info object, continuing: %{public}@";
LABEL_7:
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v12 = [v6 accountStatus];
  v13 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]_block_invoke";
    v24 = 2112;
    v25 = v6;
    v26 = 2048;
    v27 = v12;
    _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_INFO, "%s Successfully fetched iCloud account info: %@, status = %ld", buf, 0x20u);
  }

  v14 = getWFCloudKitSyncLogObject();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v12 != 1)
  {
    if (v15)
    {
      *buf = 136315138;
      v23 = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]_block_invoke";
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Not fetching current user record ID because iCloud account is not available", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v15)
  {
    *buf = 136315138;
    v23 = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]_block_invoke";
    _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Fetching current user record ID", buf, 0xCu);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v16 = [*(a1 + 40) container];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__VCCKShortcutSyncCoordinator_updateAccountStatusAndMetadata__block_invoke_204;
  v19[3] = &unk_2788FF9E0;
  v17 = *(a1 + 32);
  v18 = *(a1 + 56);
  v20 = v17;
  v21 = v18;
  [v16 fetchUserRecordIDWithCompletionHandler:v19];

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
}

void __61__VCCKShortcutSyncCoordinator_updateAccountStatusAndMetadata__block_invoke_204(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFCloudKitSyncLogObject();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Successfully fetched current user record ID: %@", &v12, 0x16u);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "[VCCKShortcutSyncCoordinator updateAccountStatusAndMetadata]_block_invoke";
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Error fetching current user record: %{public}@", &v12, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)accountForSyncToken
{
  userRecordID = [(VCCKShortcutSyncCoordinator *)self userRecordID];
  if (userRecordID)
  {
    container = [(VCCKShortcutSyncCoordinator *)self container];
    containerID = [container containerID];
    [containerID environment];
    v6 = CKContainerEnvironmentString();

    v7 = [MEMORY[0x277D7C238] accountForContainerEnvironmentString:v6 userRecordID:userRecordID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)startObservingDataUsagePermission
{
  objc_initWeak(&location, self);
  v10 = 0;
  telephonyConnection = self->_telephonyConnection;
  v4 = *MEMORY[0x277D7A338];
  _CTServerConnectionCopyCellularUsagePolicy();
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__5781;
  v8[4] = __Block_byref_object_dispose__5782;
  v9 = 0;
  v5 = self->_telephonyConnection;
  v6 = *MEMORY[0x277CC3B50];
  objc_copyWeak(&v7, &location);
  _CTServerConnectionRegisterBlockForNotification();
  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

void __64__VCCKShortcutSyncCoordinator_startObservingDataUsagePermission__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(*(a1 + 32) + 72);
  v4 = *MEMORY[0x277D7A338];
  _CTServerConnectionCopyCellularUsagePolicy();
  if (([*(*(*(a1 + 40) + 8) + 40) isEqualToDictionary:0] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
    if (![WeakRetained accountStatus])
    {
      [WeakRetained updateAccountStatusAndMetadata];
    }
  }
}

- (void)stopObservingReachability
{
  pathMonitor = [(VCCKShortcutSyncCoordinator *)self pathMonitor];
  nw_path_monitor_cancel(pathMonitor);
}

- (void)startObservingReachability
{
  pathMonitor = [(VCCKShortcutSyncCoordinator *)self pathMonitor];
  nw_path_monitor_start(pathMonitor);
}

- (void)stopObservingAccountChanges
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBBF00] object:0];
}

- (void)startObservingAccountChanges
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleAccountChangedNotification_ name:*MEMORY[0x277CBBF00] object:0];
}

- (void)stopObservingApplicationVisibility
{
  applicationObserver = [(VCCKShortcutSyncCoordinator *)self applicationObserver];
  [applicationObserver removeObserver:self forKeyPath:@"applicationVisible" context:VCCKShortcutSyncAccountObserverApplicationVisibilityChangedContext];
}

- (void)startObservingApplicationVisibility
{
  applicationObserver = [(VCCKShortcutSyncCoordinator *)self applicationObserver];
  [applicationObserver addObserver:self forKeyPath:@"applicationVisible" options:0 context:VCCKShortcutSyncAccountObserverApplicationVisibilityChangedContext];
}

- (void)stopObservingUserDefaults
{
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  [workflowUserDefaults removeObserver:self forKeyPath:*MEMORY[0x277D7CBD8] context:VCCKShortcutSyncAccountObserverUserDefaultsChangedContext];

  workflowUserDefaults2 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  [workflowUserDefaults2 removeObserver:self forKeyPath:*MEMORY[0x277D7CBE8] context:VCCKShortcutSyncAccountObserverUserDefaultsChangedContext];

  systemShortcutsUserDefaults = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  [systemShortcutsUserDefaults removeObserver:self forKeyPath:*MEMORY[0x277D7D080] context:VCCKShortcutSyncAccountObserverUserDefaultsChangedContext];
}

- (void)startObservingUserDefaults
{
  objc_opt_class();
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  [workflowUserDefaults addObserver:self forKeyPath:*MEMORY[0x277D7CBD8] options:4 context:VCCKShortcutSyncAccountObserverUserDefaultsChangedContext];

  workflowUserDefaults2 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  [workflowUserDefaults2 addObserver:self forKeyPath:*MEMORY[0x277D7CBE8] options:0 context:VCCKShortcutSyncAccountObserverUserDefaultsChangedContext];

  systemShortcutsUserDefaults = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  [systemShortcutsUserDefaults addObserver:self forKeyPath:*MEMORY[0x277D7D080] options:0 context:VCCKShortcutSyncAccountObserverUserDefaultsChangedContext];
}

- (void)setupPathMonitor
{
  objc_initWeak(&location, self);
  pathMonitor = [(VCCKShortcutSyncCoordinator *)self pathMonitor];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __47__VCCKShortcutSyncCoordinator_setupPathMonitor__block_invoke;
  v9 = &unk_2788FF990;
  objc_copyWeak(&v10, &location);
  nw_path_monitor_set_update_handler(pathMonitor, &v6);

  v4 = [(VCCKShortcutSyncCoordinator *)self pathMonitor:v6];
  stateAccessQueue = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
  nw_path_monitor_set_queue(v4, stateAccessQueue);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)handleWalrusStatusDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  isWalrusEnabled = [MEMORY[0x277D7C230] isWalrusEnabled];
  v5 = getWFWalrusLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[VCCKShortcutSyncCoordinator handleWalrusStatusDidChange]";
    v14 = 1024;
    LODWORD(v15) = isWalrusEnabled;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling CloudKit Walrus status change, walrusEnabled = %d", buf, 0x12u);
  }

  databaseProvider = [(VCCKShortcutSyncCoordinator *)self databaseProvider];
  v11 = 0;
  v7 = [databaseProvider databaseWithError:&v11];
  v8 = v11;

  if (v7)
  {
    [v7 updateWalrusStatus];
  }

  else
  {
    v9 = getWFWalrusLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[VCCKShortcutSyncCoordinator handleWalrusStatusDidChange]";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Walrus status did change, but we couldn't find a database to update: %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleCloudKitSyncZoneWasPurgedChange
{
  v10 = *MEMORY[0x277D85DE8];
  zoneWasPurged = [MEMORY[0x277D7C230] zoneWasPurged];
  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[VCCKShortcutSyncCoordinator handleCloudKitSyncZoneWasPurgedChange]";
    v8 = 1024;
    v9 = zoneWasPurged;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Handling CloudKit sync zone purged flag change, zoneWasPurged = %d", &v6, 0x12u);
  }

  [(VCCKShortcutSyncCoordinator *)self updateCurrentSyncService];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCloudKitSyncEnabledChange
{
  isSyncEnabled = [MEMORY[0x277D7C230] isSyncEnabled];

  [(VCCKShortcutSyncCoordinator *)self setSyncEnabled:isSyncEnabled];
}

- (void)setSyncEnabled:(BOOL)enabled
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_syncEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_syncEnabled = enabled;
    v5 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[VCCKShortcutSyncCoordinator setSyncEnabled:]";
      v9 = 1024;
      v10 = enabledCopy;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling CloudKit sync enabled setting change, syncEnabled = %d", &v7, 0x12u);
    }

    if (enabledCopy)
    {
      [(VCCKShortcutSyncCoordinator *)self startObservingAccountChanges];
      [(VCCKShortcutSyncCoordinator *)self startObservingReachability];
      [(VCCKShortcutSyncCoordinator *)self startObservingDataUsagePermission];
      [(VCCKShortcutSyncCoordinator *)self startObservingApplicationVisibility];
      [(VCCKShortcutSyncCoordinator *)self updateAccountStatusAndMetadata];
    }

    else
    {
      [(VCCKShortcutSyncCoordinator *)self stopObservingApplicationVisibility];
      [(VCCKShortcutSyncCoordinator *)self stopObservingDataUsagePermission];
      [(VCCKShortcutSyncCoordinator *)self stopObservingReachability];
      [(VCCKShortcutSyncCoordinator *)self stopObservingAccountChanges];
      [(VCCKShortcutSyncCoordinator *)self updateCurrentSyncService];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (VCCKShortcutSyncService)currentSyncService
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5781;
  v11 = __Block_byref_object_dispose__5782;
  v12 = 0;
  stateAccessQueue = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__VCCKShortcutSyncCoordinator_currentSyncService__block_invoke;
  v6[3] = &unk_2789000D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)start
{
  stateAccessQueue = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VCCKShortcutSyncCoordinator_start__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(stateAccessQueue, block);
}

uint64_t __36__VCCKShortcutSyncCoordinator_start__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isStarted];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setStarted:1];
    v3 = [*(a1 + 32) logger];
    [v3 logEvent:@"sync coordinator start"];

    v4 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[VCCKShortcutSyncCoordinator start]_block_invoke";
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Starting VCCKShortcutSyncCoordinator", &v6, 0xCu);
    }

    [*(a1 + 32) startObservingUserDefaults];
    result = [*(a1 + 32) deleteLegacyShortcutsZoneSubscriptionIfNeeded];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  stateAccessQueue = [(VCCKShortcutSyncCoordinator *)self stateAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__VCCKShortcutSyncCoordinator_dealloc__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_sync(stateAccessQueue, block);

  v4.receiver = self;
  v4.super_class = VCCKShortcutSyncCoordinator;
  [(VCCKShortcutSyncCoordinator *)&v4 dealloc];
}

void __38__VCCKShortcutSyncCoordinator_dealloc__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isStarted])
  {
    [*(a1 + 32) stopObservingUserDefaults];
    [*(a1 + 32) stopObservingApplicationVisibility];
    [*(a1 + 32) stopObservingDataUsagePermission];
    [*(a1 + 32) stopObservingAccountChanges];
    [*(a1 + 32) stopObservingReachability];
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;

    v4 = *(*(a1 + 32) + 72);

    CFRelease(v4);
  }
}

- (VCCKShortcutSyncCoordinator)initWithDatabaseProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCCKShortcutSyncCoordinator.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v26.receiver = self;
  v26.super_class = VCCKShortcutSyncCoordinator;
  v7 = [(VCCKShortcutSyncCoordinator *)&v26 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_databaseProvider, provider);
    v9 = WFShortcutsCloudKitContainer();
    container = v8->_container;
    v8->_container = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_create("com.apple.VoiceShortcuts.VCCKShortcutSyncCoordinator.stateAccessQueue", v12);
    stateAccessQueue = v8->_stateAccessQueue;
    v8->_stateAccessQueue = v13;

    v15 = nw_path_monitor_create();
    pathMonitor = v8->_pathMonitor;
    v8->_pathMonitor = v15;

    v17 = *MEMORY[0x277CBECE8];
    MainBundle = CFBundleGetMainBundle();
    CFBundleGetIdentifier(MainBundle);
    v19 = v8->_stateAccessQueue;
    v8->_telephonyConnection = _CTServerConnectionCreateOnTargetQueue();
    v20 = [VCCKApplicationStateObserver alloc];
    v21 = [(VCCKApplicationStateObserver *)v20 initWithBundleIdentifier:*MEMORY[0x277D7A338]];
    applicationObserver = v8->_applicationObserver;
    v8->_applicationObserver = v21;

    [(VCCKShortcutSyncCoordinator *)v8 setupPathMonitor];
    v23 = v8;
  }

  return v8;
}

@end