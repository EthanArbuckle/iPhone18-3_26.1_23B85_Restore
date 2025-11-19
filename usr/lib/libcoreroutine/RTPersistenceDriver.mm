@interface RTPersistenceDriver
+ (id)persistCurrentDeviceWithIdentifier:(id)a3 inStore:(id)a4 context:(id)a5 platform:(id)a6 notificationHelper:(id)a7 error:(id *)a8;
- (BOOL)_acquireBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4 isRetry:(BOOL)a5;
- (BOOL)_acquireBackgroundProcessingPermissionsForStoreType:(unint64_t)a3 isRetry:(BOOL)a4;
- (BOOL)_didPersistenceStoreBackgroundProcessingAssertionsSucceedWithRetry:(BOOL)a3;
- (BOOL)_evaluatePersistentHistoryForDeletedDeviceDuringResetSync:(BOOL *)a3 resetSyncContext:(id)a4 managedObjectContext:(id)a5 error:(id *)a6;
- (BOOL)_isBackgroundProcessingAssertionActive;
- (BOOL)_purgeLocalEntityRowsUsingModel:(id)a3 managedObjectContext:(id)a4 persistenceManager:(id)a5 error:(id *)a6;
- (BOOL)_releaseBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4;
- (BOOL)_releaseBackgroundProcessingPermissionsForStoreType:(unint64_t)a3;
- (BOOL)_releasePersistenceStoreBackgroundProcessingAssertions;
- (BOOL)_shouldAttemptSetupAccordingToAccountStatus:(int64_t)a3 account:(id)a4;
- (BOOL)_shouldAttemptSetupAccordingToDeviceConfiguration:(int64_t)a3;
- (BOOL)backupPersistenceStore:(id)a3 error:(id *)a4;
- (BOOL)copyPersistenceStore:(id)a3 outputURL:(id)a4 error:(id *)a5;
- (BOOL)importSourceStore:(id)a3 sourceCoordinator:(id)a4 destinationStore:(id)a5 destinationCoordinator:(id)a6 managedObjectModel:(id)a7 configuration:(id)a8 error:(id *)a9;
- (BOOL)persistCurrentDeviceRecordInStore:(id)a3 context:(id)a4 error:(id *)a5;
- (BOOL)persistenceMirroringManagerDidFinishZonePurge:(id)a3 store:(id)a4 context:(id)a5 error:(id *)a6;
- (BOOL)prepareStore:(id)a3 withContext:(id)a4 error:(id *)a5;
- (BOOL)shouldResetCloudStore;
- (RTPersistenceDriver)initWithAccountManager:(id)a3 dataProtectionManager:(id)a4 defaultsManager:(id)a5 keychainManager:(id)a6 lifecycleManager:(id)a7 persistenceManager:(id)a8 platform:(id)a9 timerManager:(id)a10;
- (RTPersistenceDriver)initWithPersistenceManager:(id)a3 dataProtectionManager:(id)a4 accountManager:(id)a5 platform:(id)a6 keychainManager:(id)a7 defaultsManager:(id)a8 lifecycleManager:(id)a9;
- (RTPersistenceMetricsDelegate)metricsDelegate;
- (id)_repersistPreviousDeviceWithResetSyncContext:(id)a3 persistenceManager:(id)a4 managedObjectContext:(id)a5;
- (id)appleIDsForStore:(id)a3;
- (id)cloudManagedObjectWithEntityDescription:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 context:(id)a6 error:(id *)a7;
- (id)earliestCloudManagedObjectWithEntityDescription:(id)a3 predicate:(id)a4 context:(id)a5 error:(id *)a6;
- (id)latestCloudManagedObjectWithEntityDescription:(id)a3 predicate:(id)a4 context:(id)a5 error:(id *)a6;
- (id)mirroringOptionsForStoreWithType:(unint64_t)a3;
- (id)prepareForDatabaseRekey:(id *)a3;
- (id)remoteServerOptionsForStoreWithType:(unint64_t)a3;
- (int64_t)store:(id)a3 validateAppleIDs:(id)a4;
- (unint64_t)countOfCloudManagedObjectWithEntityDescription:(id)a3 predicate:(id)a4 context:(id)a5 error:(id *)a6;
- (unint64_t)persistenceDeviceClassForPlatform;
- (void)_cleanUpFileDescriptoersForPersistenceStore;
- (void)_evaluateBackgroundProcessingAfterAssertionConfigurationChange:(int64_t)a3;
- (void)_evaluteDirtyTransactionAfterConfigurationChange:(int64_t)a3;
- (void)_onAccountChange:(id)a3;
- (void)_onBackgroundProcessingAssertionAcquireRetryExpiry;
- (void)_onBackgroundProcessingAssertionTimerExpiry;
- (void)_onCloudSyncAuthorizationChange:(id)a3;
- (void)_onDataProtectionChange:(id)a3;
- (void)_prepareFileDescriptorsForPersistenceStore;
- (void)_setupPersistenceAfterConfigurationChange:(int64_t)a3 cloudSyncAuthorization:(int64_t)a4 accountStatus:(int64_t)a5 account:(id)a6;
- (void)_shutdownWithHandler:(id)a3;
- (void)_startBackgroundProcessingAssertionAcquireRetryWithLatency:(double)a3;
- (void)_startBackgroundProcessingAssertionBufferTimerWithLatency:(double)a3;
- (void)_updatePersistenceContexts:(id)a3 deviceObjectID:(id)a4;
- (void)_updatePersistenceStoresWithDeviceObjectID:(id)a3;
- (void)cleanupOlderPersistentStores;
- (void)dealloc;
- (void)evaluateTransactions;
- (void)onAccountChange:(id)a3;
- (void)onCloudSyncAuthorizationChange:(id)a3;
- (void)onDailyMetricsNotification:(id)a3;
- (void)onDataProtectionChange:(id)a3;
- (void)onDataProtectionNotification:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)persistenceDriver:(id)a3 persistenceMigrator:(id)a4 didFinishMigratingStore:(id)a5 withModelProvider:(id)a6;
- (void)persistenceDriver:(id)a3 persistenceMigrator:(id)a4 didStartMigratingStore:(id)a5 withModelProvider:(id)a6;
- (void)persistenceManagerDidFinishResetSync:(id)a3 userInfo:(id)a4;
- (void)persistenceManagerWillStartResetSync:(id)a3 userInfo:(id)a4 context:(id)a5;
- (void)persistenceMigrator:(id)a3 didFinishMigratingStore:(id)a4 withModelProvider:(id)a5;
- (void)persistenceMigrator:(id)a3 didStartMigratingStore:(id)a4 withModelProvider:(id)a5;
- (void)persistenceStore:(id)a3 didPrepareWithContext:(id)a4;
- (void)persistenceStore:(id)a3 encounteredCriticalError:(id)a4;
- (void)persistenceStore:(id)a3 failedWithError:(id)a4;
- (void)persistenceStoreFailedWithError:(id)a3;
- (void)persistenceStoreResetSyncWithUserInfo:(id)a3;
- (void)setShouldResetCloudStore:(BOOL)a3;
- (void)start;
@end

@implementation RTPersistenceDriver

- (BOOL)_isBackgroundProcessingAssertionActive
{
  v2 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPersistenceBackgroundAssertionDate"];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:v2];
    v5 = v4 < 43200.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)evaluateTransactions
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(RTPersistenceDriver *)self requiresDirtyTransaction]|| [(RTPersistenceDriver *)self requiresSetupTransaction])
  {
    v4 = [(RTPersistenceDriver *)self setupTransaction];

    if (!v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = objc_opt_class();
          v7 = NSStringFromClass(v6);
          *buf = 138412290;
          v23 = v7;
          _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, acquiring transaction", buf, 0xCu);
        }
      }

      v8 = MEMORY[0x277CCACA8];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v12 = [v8 stringWithFormat:@"%@-%@", v10, v11];
      [v12 UTF8String];
      v13 = os_transaction_create();
      [(RTPersistenceDriver *)self setSetupTransaction:v13];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = NSStringFromSelector(a2);
          *buf = 138412546;
          v23 = v20;
          v24 = 2112;
          v25 = v21;
          _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v15 = [(RTPersistenceDriver *)self setupTransaction];

    if (v15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          *buf = 138412290;
          v23 = v18;
          _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, releasing transactions", buf, 0xCu);
        }
      }

      [(RTPersistenceDriver *)self setSetupTransaction:0];
    }
  }
}

- (RTPersistenceDriver)initWithAccountManager:(id)a3 dataProtectionManager:(id)a4 defaultsManager:(id)a5 keychainManager:(id)a6 lifecycleManager:(id)a7 persistenceManager:(id)a8 platform:(id)a9 timerManager:(id)a10
{
  v37 = a3;
  v16 = a4;
  v34 = a5;
  v35 = a6;
  v33 = a7;
  v17 = a8;
  v36 = a9;
  v18 = a10;
  v32 = v18;
  v30 = v16;
  if (!v17)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: persistenceManager";
LABEL_28:
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_29;
  }

  if (!v16)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: dataProtectionManager";
    goto LABEL_28;
  }

  if (!v37)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: accountManager";
    goto LABEL_28;
  }

  if (!v36)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: platform";
    goto LABEL_28;
  }

  if (!v35)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: keychainManager";
    goto LABEL_28;
  }

  if (!v34)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_28;
  }

  if (!v18)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_28;
  }

  if (!v33)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: lifecycleManager";
      goto LABEL_28;
    }

LABEL_29:

    v26 = 0;
    v25 = self;
    goto LABEL_30;
  }

  v38.receiver = self;
  v38.super_class = RTPersistenceDriver;
  v19 = [(RTNotifier *)&v38 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_persistenceManager, a8);
    objc_storeStrong(&v20->_dataProtectionManager, a4);
    objc_storeStrong(&v20->_accountManager, a3);
    objc_storeStrong(&v20->_currentPlatform, a9);
    objc_storeStrong(&v20->_keychainManager, a6);
    objc_storeStrong(&v20->_defaultsManager, a5);
    objc_storeStrong(&v20->_lifecycleManager, a7);
    objc_storeStrong(&v20->_timerManager, a10);
    objc_storeWeak(&v20->_metricsDelegate, v20);
    v21 = objc_opt_new();
    notificationHelper = v20->_notificationHelper;
    v20->_notificationHelper = v21;

    v20->_cloudSyncAuthorization = 0;
    v20->_encryptedDataAvailability = 0;
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fileDescriptorsForPersistenceStoreDict = v20->_fileDescriptorsForPersistenceStoreDict;
    v20->_fileDescriptorsForPersistenceStoreDict = v23;
  }

  v25 = v20;
  v26 = v25;
LABEL_30:

  return v26;
}

- (RTPersistenceDriver)initWithPersistenceManager:(id)a3 dataProtectionManager:(id)a4 accountManager:(id)a5 platform:(id)a6 keychainManager:(id)a7 defaultsManager:(id)a8 lifecycleManager:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = objc_alloc_init(RTTimerManager);
  v24 = [(RTPersistenceDriver *)self initWithAccountManager:v20 dataProtectionManager:v21 defaultsManager:v17 keychainManager:v18 lifecycleManager:v16 persistenceManager:v22 platform:v19 timerManager:v23];

  return v24;
}

- (void)start
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__RTPersistenceDriver_start__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __28__RTPersistenceDriver_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProtectionManager];
  v3 = *(a1 + 32);
  v4 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
  [v2 addObserver:v3 selector:sel_onDataProtectionChange_ name:v4];

  v5 = [*(a1 + 32) dataProtectionManager];
  v6 = *(a1 + 32);
  v7 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
  [v5 addObserver:v6 selector:sel_onDataProtectionNotification_ name:v7];

  v8 = [*(a1 + 32) accountManager];
  v9 = *(a1 + 32);
  v10 = +[(RTNotification *)RTAccountManagerNotificationCloudSyncAuthorizationStateChanged];
  [v8 addObserver:v9 selector:sel_onCloudSyncAuthorizationChange_ name:v10];

  v11 = [*(a1 + 32) accountManager];
  v12 = *(a1 + 32);
  v13 = +[(RTNotification *)RTAccountManagerNotificationAccountChanged];
  [v11 addObserver:v12 selector:sel_onAccountChange_ name:v13];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:*(a1 + 32) selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

- (void)dealloc
{
  [(RTNotifier *)self->_dataProtectionManager removeObserver:self];
  [(RTNotifier *)self->_accountManager removeObserver:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RTPersistenceDriver;
  [(RTPersistenceDriver *)&v4 dealloc];
}

- (void)_shutdownWithHandler:(id)a3
{
  v8 = a3;
  [(RTPersistenceDriver *)self setSetupTransaction:0];
  v4 = [(RTPersistenceDriver *)self dataProtectionManager];
  [v4 removeObserver:self];

  v5 = [(RTPersistenceDriver *)self accountManager];
  [v5 removeObserver:self];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 0);
    v7 = v8;
  }
}

- (void)onDataProtectionChange:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__RTPersistenceDriver_onDataProtectionChange___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v5, v10);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 name];
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 name];
      *buf = 138412802;
      v13 = v9;
      v14 = 2080;
      v15 = "[RTPersistenceDriver onDataProtectionChange:]";
      v16 = 1024;
      v17 = 240;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)onDataProtectionNotification:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RTPersistenceDriver_onDataProtectionNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = v5;
  v10 = self;
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

void __52__RTPersistenceDriver_onDataProtectionNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(*(a1 + 48));
        v9 = [*(a1 + 32) unlockedSinceBoot];
        v10 = @"NO";
        *v13 = 138412802;
        *&v13[4] = v7;
        *&v13[12] = 2112;
        if (v9)
        {
          v10 = @"YES";
        }

        *&v13[14] = v8;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, RTDataProtectionManagerNotificationUnlockedSinceBoot, %@", v13, 0x20u);
      }
    }

    if (([*(a1 + 32) unlockedSinceBoot] & 1) == 0)
    {
      [*(*(a1 + 40) + 80) setObject:0 forKey:@"RTDefaultsPersistenceBackgroundAssertionDate"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = NSStringFromSelector(*(a1 + 48));
          *v13 = 138412546;
          *&v13[4] = v12;
          *&v13[12] = 1024;
          *&v13[14] = 0;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, isDeviceUnlockedSinceBoot, %d, clearing RTDefaultsPersistenceBackgroundAssertionDate since routined has lost previous background assertion after reboot ", v13, 0x12u);
        }
      }
    }
  }
}

- (void)_onDataProtectionChange:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = 138412802;
      v18 = v16;
      v19 = 2080;
      v20 = "[RTPersistenceDriver _onDataProtectionChange:]";
      v21 = 1024;
      LODWORD(v22) = 271;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unknown notification class, %@ (in %s:%d)", &v17, 0x1Cu);
    }
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [RTDataProtectionManager encryptedDataAvailabilityToString:[(RTPersistenceDriver *)self encryptedDataAvailability]];
    v10 = +[RTDataProtectionManager encryptedDataAvailabilityToString:](RTDataProtectionManager, "encryptedDataAvailabilityToString:", [v5 availability]);
    v17 = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@, currentDataAvailability, %@, newDataAvailability, %@", &v17, 0x20u);
  }

  -[RTPersistenceDriver setEncryptedDataAvailability:](self, "setEncryptedDataAvailability:", [v5 availability]);
  [(RTPersistenceDriver *)self _evaluateBackgroundProcessingAfterAssertionConfigurationChange:[(RTPersistenceDriver *)self encryptedDataAvailability]];
  [(RTPersistenceDriver *)self _evaluteDirtyTransactionAfterConfigurationChange:[(RTPersistenceDriver *)self encryptedDataAvailability]];
  v11 = [(RTPersistenceDriver *)self encryptedDataAvailability];
  v12 = [(RTPersistenceDriver *)self cloudSyncAuthorization];
  v13 = [(RTPersistenceDriver *)self currentAccountStatus];
  v14 = [(RTPersistenceDriver *)self currentAccount];
  [(RTPersistenceDriver *)self _setupPersistenceAfterConfigurationChange:v11 cloudSyncAuthorization:v12 accountStatus:v13 account:v14];
}

- (void)onCloudSyncAuthorizationChange:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__RTPersistenceDriver_onCloudSyncAuthorizationChange___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v5, v10);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 name];
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 name];
      *buf = 138412802;
      v13 = v9;
      v14 = 2080;
      v15 = "[RTPersistenceDriver onCloudSyncAuthorizationChange:]";
      v16 = 1024;
      v17 = 296;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onCloudSyncAuthorizationChange:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = 138412802;
      v18 = v16;
      v19 = 2080;
      v20 = "[RTPersistenceDriver _onCloudSyncAuthorizationChange:]";
      v21 = 1024;
      LODWORD(v22) = 303;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unknown notification class, %@ (in %s:%d)", &v17, 0x1Cu);
    }
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [RTAccountManager cloudSyncAuthorizationToString:[(RTPersistenceDriver *)self cloudSyncAuthorization]];
    v10 = +[RTAccountManager cloudSyncAuthorizationToString:](RTAccountManager, "cloudSyncAuthorizationToString:", [v5 cloudSyncAuthorizationState]);
    v17 = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@, currentCloudSyncAuthorization, %@, newCloudSyncAuthorization, %@", &v17, 0x20u);
  }

  -[RTPersistenceDriver setCloudSyncAuthorization:](self, "setCloudSyncAuthorization:", [v5 cloudSyncAuthorizationState]);
  v11 = [(RTPersistenceDriver *)self encryptedDataAvailability];
  v12 = [(RTPersistenceDriver *)self cloudSyncAuthorization];
  v13 = [(RTPersistenceDriver *)self currentAccountStatus];
  v14 = [(RTPersistenceDriver *)self currentAccount];
  [(RTPersistenceDriver *)self _setupPersistenceAfterConfigurationChange:v11 cloudSyncAuthorization:v12 accountStatus:v13 account:v14];
}

- (void)onAccountChange:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__RTPersistenceDriver_onAccountChange___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v5, v10);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 name];
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 name];
      *buf = 138412802;
      v13 = v9;
      v14 = 2080;
      v15 = "[RTPersistenceDriver onAccountChange:]";
      v16 = 1024;
      v17 = 325;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onAccountChange:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = 138412802;
      v26 = v24;
      v27 = 2080;
      v28 = "[RTPersistenceDriver _onAccountChange:]";
      v29 = 1024;
      LODWORD(v30) = 332;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unknown notification class, %@ (in %s:%d)", &v25, 0x1Cu);
    }
  }

  v7 = [(RTPersistenceDriver *)self accountManager];
  v8 = [v7 accountStatus];

  v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [(RTPersistenceDriver *)self currentAccount];
    v12 = [RTAccountManager accountStatusToString:[(RTPersistenceDriver *)self currentAccountStatus]];
    v13 = [v5 latestAccount];
    v14 = [RTAccountManager accountStatusToString:v8];
    v25 = 138413314;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@, current account, (%@), current status, %@, new account, (%@), new status, %@", &v25, 0x34u);
  }

  v15 = [v5 latestAccount];

  if (!v15)
  {
    v16 = [v5 oldAccount];

    if (v16 || v8 == 1)
    {
      v17 = [(RTPersistenceDriver *)self defaultsManager];
      [v17 setObject:0 forKey:@"RTDefaultsPersistenceMirroringManagerBackgroundLastResetSyncDate"];
    }
  }

  [(RTDefaultsManager *)self->_defaultsManager setObject:0 forKey:@"RTDefaultsPersistenceMirroringManagerMirroringAttemptsByBuildMap"];
  [(RTPersistenceDriver *)self setCurrentAccountStatus:v8];
  v18 = [v5 latestAccount];
  [(RTPersistenceDriver *)self setCurrentAccount:v18];

  v19 = [(RTPersistenceDriver *)self encryptedDataAvailability];
  v20 = [(RTPersistenceDriver *)self cloudSyncAuthorization];
  v21 = [(RTPersistenceDriver *)self currentAccountStatus];
  v22 = [(RTPersistenceDriver *)self currentAccount];
  [(RTPersistenceDriver *)self _setupPersistenceAfterConfigurationChange:v19 cloudSyncAuthorization:v20 accountStatus:v21 account:v22];
}

- (void)_startBackgroundProcessingAssertionBufferTimerWithLatency:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  timerManager = self->_timerManager;
  v7 = [(RTNotifier *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__RTPersistenceDriver__startBackgroundProcessingAssertionBufferTimerWithLatency___block_invoke;
  v14[3] = &unk_2788C4EA0;
  v14[4] = self;
  v8 = [(RTTimerManager *)timerManager timerWithIdentifier:@"RTPersistenceDriverBackgroundAssertionTimer" queue:v7 handler:v14];
  backgroundProcessingAssertionDeferralTimer = self->_backgroundProcessingAssertionDeferralTimer;
  self->_backgroundProcessingAssertionDeferralTimer = v8;

  [(RTTimer *)self->_backgroundProcessingAssertionDeferralTimer fireWithInterval:a3];
  [(RTTimer *)self->_backgroundProcessingAssertionDeferralTimer resume];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, interval, %.2f", buf, 0x20u);
    }
  }
}

- (void)_onBackgroundProcessingAssertionTimerExpiry
{
  if ([(RTPersistenceDriver *)self _releasePersistenceStoreBackgroundProcessingAssertions])
  {
    [(RTDefaultsManager *)self->_defaultsManager setObject:0 forKey:@"RTDefaultsPersistenceBackgroundAssertionDate"];
  }

  [(RTTimer *)self->_backgroundProcessingAssertionDeferralTimer invalidate];
  backgroundProcessingAssertionDeferralTimer = self->_backgroundProcessingAssertionDeferralTimer;
  self->_backgroundProcessingAssertionDeferralTimer = 0;
}

- (void)_startBackgroundProcessingAssertionAcquireRetryWithLatency:(double)a3
{
  v26 = *MEMORY[0x277D85DE8];
  backgroundProcessingAssertionAcquireRetryTimer = self->_backgroundProcessingAssertionAcquireRetryTimer;
  if (backgroundProcessingAssertionAcquireRetryTimer)
  {
    [(RTTimer *)backgroundProcessingAssertionAcquireRetryTimer invalidate];
    v7 = self->_backgroundProcessingAssertionAcquireRetryTimer;
    self->_backgroundProcessingAssertionAcquireRetryTimer = 0;
  }

  timerManager = self->_timerManager;
  v9 = [(RTNotifier *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__RTPersistenceDriver__startBackgroundProcessingAssertionAcquireRetryWithLatency___block_invoke;
  v17[3] = &unk_2788C4EA0;
  v17[4] = self;
  v10 = [(RTTimerManager *)timerManager timerWithIdentifier:@"RTPersistenceDriverBackgroundAssertionAcquireRetryTimer" queue:v9 handler:v17];
  v11 = self->_backgroundProcessingAssertionAcquireRetryTimer;
  self->_backgroundProcessingAssertionAcquireRetryTimer = v10;

  [(RTTimer *)self->_backgroundProcessingAssertionAcquireRetryTimer fireWithInterval:a3];
  [(RTTimer *)self->_backgroundProcessingAssertionAcquireRetryTimer resume];
  [(RTPersistenceDriver *)self setBackgroundAssertionRetryCount:[(RTPersistenceDriver *)self backgroundAssertionRetryCount]+ 1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [(RTPersistenceDriver *)self backgroundAssertionRetryCount];
      *buf = 138413058;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2048;
      v23 = a3;
      v24 = 2048;
      v25 = v16;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, interval, %.2f, backgroundAssertionRetryCount, %lu", buf, 0x2Au);
    }
  }
}

- (void)_cleanUpFileDescriptoersForPersistenceStore
{
  v3 = [(RTPersistenceDriver *)self fileDescriptorsForPersistenceStoreDict];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_42];

  v4 = [(RTPersistenceDriver *)self fileDescriptorsForPersistenceStoreDict];
  [v4 removeAllObjects];
}

uint64_t __66__RTPersistenceDriver__cleanUpFileDescriptoersForPersistenceStore__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 intValue];
  if ((result & 0x80000000) == 0)
  {

    return close(result);
  }

  return result;
}

- (void)_onBackgroundProcessingAssertionAcquireRetryExpiry
{
  backgroundProcessingAssertionAcquireRetryTimer = self->_backgroundProcessingAssertionAcquireRetryTimer;
  if (backgroundProcessingAssertionAcquireRetryTimer)
  {
    [(RTTimer *)backgroundProcessingAssertionAcquireRetryTimer invalidate];
    v4 = self->_backgroundProcessingAssertionAcquireRetryTimer;
    self->_backgroundProcessingAssertionAcquireRetryTimer = 0;
  }

  if ([(RTPersistenceDriver *)self _didPersistenceStoreBackgroundProcessingAssertionsSucceedWithRetry:1])
  {
    defaultsManager = self->_defaultsManager;
    v6 = [MEMORY[0x277CBEAA8] date];
    [(RTDefaultsManager *)defaultsManager setObject:v6 forKey:@"RTDefaultsPersistenceBackgroundAssertionDate"];

LABEL_9:
    [(RTPersistenceDriver *)self setBackgroundAssertionRetryCount:0];

    [(RTPersistenceDriver *)self _cleanUpFileDescriptoersForPersistenceStore];
    return;
  }

  if ([(RTPersistenceDriver *)self backgroundAssertionRetryCount]> 2)
  {
    goto LABEL_9;
  }

  [(RTPersistenceDriver *)self _startBackgroundProcessingAssertionAcquireRetryWithLatency:3.0];
}

- (BOOL)_didPersistenceStoreBackgroundProcessingAssertionsSucceedWithRetry:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, starting the attempt to acquire background processing assertion for every storeType", &v12, 0xCu);
    }
  }

  v8 = [(RTPersistenceDriver *)self _acquireBackgroundProcessingPermissionsForStoreType:0 isRetry:v3];
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      if (v9 == 3)
      {
        break;
      }

      ++v9;
    }

    while ([(RTPersistenceDriver *)self _acquireBackgroundProcessingPermissionsForStoreType:v10 + 1 isRetry:v3]);
    LOBYTE(v8) = v10 > 2;
  }

  return v8;
}

- (BOOL)_acquireBackgroundProcessingPermissionsForStoreType:(unint64_t)a3 isRetry:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v7 = [(RTPersistenceDriver *)self persistenceManager];
  v8 = [v7 URLForStoreType:a3];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(RTPersistenceDriver *)self persistenceManager];
  v10 = [objc_opt_class() protectedStoreFilesExtensions];

  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (![(RTPersistenceDriver *)self _acquireBackgroundProcessingPermissionForStoreURL:v8 cacheFileExtension:*(*(&v17 + 1) + 8 * i) isRetry:v4])
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (BOOL)_acquireBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4 isRetry:(BOOL)a5
{
  v5 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [v9 path];
  v12 = [v11 stringByReplacingOccurrencesOfString:@"sqlite" withString:v10];

  if (v5)
  {
    v13 = [(RTPersistenceDriver *)self fileDescriptorsForPersistenceStoreDict];
    v14 = [v13 objectForKeyedSubscript:v12];
    v15 = [v14 intValue];

    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [(RTPersistenceDriver *)self _getFileDescriptorForPersistenceStoreFile:v12];
    if ((v15 & 0x80000000) == 0)
    {
LABEL_3:
      v16 = [(RTPersistenceDriver *)self _acquireBackgroundAssertionForFileDescriptor:v15];
      v17 = v16 == 0;
      if (v16)
      {
        v18 = v16;
        v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_5;
        }

        v22 = NSStringFromSelector(a2);
        v23 = *__error();
        v24 = __error();
        v25 = strerror(*v24);
        v27 = 138413314;
        v28 = v22;
        v29 = 2112;
        *v30 = v9;
        *&v30[8] = 1024;
        *v31 = v18;
        *&v31[4] = 1024;
        *&v31[6] = v23;
        v32 = 2080;
        v33 = v25;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@ Failure to acquire background processing assertion for the persistence store file %@ with code error %d and errno %d %s", &v27, 0x2Cu);
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_6:
          if (!v5)
          {
            close(v15);
          }

          goto LABEL_12;
        }

        v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
LABEL_5:

          goto LABEL_6;
        }

        v22 = NSStringFromSelector(a2);
        v27 = 138412802;
        v28 = v22;
        v29 = 2112;
        *v30 = v9;
        *&v30[8] = 2112;
        *v31 = v10;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@ Success to acquire background processing assertion for the persistence store type %@ and the extension %@", &v27, 0x20u);
      }

      goto LABEL_5;
    }
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v26 = *__error();
    v27 = 138412802;
    v28 = v12;
    v29 = 1024;
    *v30 = v5;
    *&v30[4] = 1024;
    *&v30[6] = v26;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Unable to to get the file descriptor for the file %@ with data protection, isRetry, %d, errno, %{errno}d", &v27, 0x18u);
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (BOOL)_releasePersistenceStoreBackgroundProcessingAssertions
{
  v3 = [(RTPersistenceDriver *)self _releaseBackgroundProcessingPermissionsForStoreType:0];
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      if (v4 == 3)
      {
        break;
      }

      ++v4;
    }

    while ([(RTPersistenceDriver *)self _releaseBackgroundProcessingPermissionsForStoreType:v5 + 1]);
    LOBYTE(v3) = v5 > 2;
  }

  return v3;
}

- (BOOL)_releaseBackgroundProcessingPermissionsForStoreType:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(RTPersistenceDriver *)self persistenceManager];
  v6 = [v5 URLForStoreType:a3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(RTPersistenceDriver *)self persistenceManager];
  v8 = [objc_opt_class() protectedStoreFilesExtensions];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (![(RTPersistenceDriver *)self _releaseBackgroundProcessingPermissionForStoreURL:v6 cacheFileExtension:*(*(&v15 + 1) + 8 * i)])
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (BOOL)_releaseBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 path];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"sqlite" withString:v8];

  v11 = [(RTPersistenceDriver *)self _getFileDescriptorForPersistenceStoreFile:v10];
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11;
    v13 = [(RTPersistenceDriver *)self _releaseBackgroundAssertionForFileDescriptor:v11];
    v14 = v13 == 0;
    if (v13)
    {
      v15 = v13;
      v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v19 = NSStringFromSelector(a2);
      v20 = *__error();
      v21 = __error();
      v22 = strerror(*v21);
      v24 = 138413314;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      v28 = 1024;
      *v29 = v15;
      *&v29[4] = 1024;
      *&v29[6] = v20;
      v30 = 2080;
      v31 = v22;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@ Failure to release background processing assertion for the persistence store file %@ with code error %d and errno %d %s", &v24, 0x2Cu);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
LABEL_4:

LABEL_5:
        close(v12);
        goto LABEL_9;
      }

      v19 = NSStringFromSelector(a2);
      v24 = 138412802;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      *v29 = v8;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@ Success to release background processing assertion for the persistence store type %@ and the extension %@", &v24, 0x20u);
    }

    goto LABEL_4;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v23 = *__error();
    v24 = 138412546;
    v25 = v10;
    v26 = 1024;
    LODWORD(v27) = v23;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Unable to to get the file descriptor for the file %@ with data protection, errno, %{errno}d", &v24, 0x12u);
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)_prepareFileDescriptorsForPersistenceStore
{
  v41 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      *buf = 138412290;
      v40 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, starting the attempt to open every file descriptor for every storeType to be handy for a retry", buf, 0xCu);
    }
  }

  v6 = 0;
  v7 = @"sqlite";
  do
  {
    v8 = [(RTPersistenceDriver *)self persistenceManager];
    v30 = v6;
    v9 = [v8 URLForStoreType:v6];

    v10 = v9;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [(RTPersistenceDriver *)self persistenceManager];
    v12 = [objc_opt_class() protectedStoreFilesExtensions];

    obj = v12;
    v33 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v33)
    {
      goto LABEL_19;
    }

    v13 = *v35;
    v31 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * v14);
        v16 = [v10 path];
        v17 = [v16 stringByReplacingOccurrencesOfString:v7 withString:v15];

        if (v17)
        {
          v18 = [(RTPersistenceDriver *)self fileDescriptorsForPersistenceStoreDict];
          v19 = [v18 objectForKeyedSubscript:v17];
          if (v19)
          {
            v20 = v19;
            [(RTPersistenceDriver *)self fileDescriptorsForPersistenceStoreDict];
            v21 = v10;
            v22 = self;
            v24 = v23 = v7;
            v25 = [v24 objectForKeyedSubscript:v17];
            v26 = [v25 integerValue];

            v7 = v23;
            self = v22;
            v10 = v21;
            v13 = v31;

            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }

          v27 = [(RTPersistenceDriver *)self _getFileDescriptorForPersistenceStoreFile:v17];
          v28 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
          v29 = [(RTPersistenceDriver *)self fileDescriptorsForPersistenceStoreDict];
          [v29 setObject:v28 forKeyedSubscript:v17];
        }

LABEL_17:

        ++v14;
      }

      while (v33 != v14);
      v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v33);
LABEL_19:

    v6 = v30 + 1;
  }

  while (v30 != 3);
}

- (void)_evaluateBackgroundProcessingAfterAssertionConfigurationChange:(int64_t)a3
{
  if ([(RTPersistenceDriver *)self encryptedDataAvailability]== 3)
  {
    if ([(RTPersistenceDriver *)self _isBackgroundProcessingAssertionActive])
    {
      backgroundProcessingAssertionDeferralTimer = self->_backgroundProcessingAssertionDeferralTimer;
      if (backgroundProcessingAssertionDeferralTimer)
      {
        [(RTTimer *)backgroundProcessingAssertionDeferralTimer invalidate];
        v5 = self->_backgroundProcessingAssertionDeferralTimer;
        self->_backgroundProcessingAssertionDeferralTimer = 0;
LABEL_14:

        return;
      }
    }

    [(RTPersistenceDriver *)self _cleanUpFileDescriptoersForPersistenceStore];
    if ([(RTPersistenceDriver *)self _didPersistenceStoreBackgroundProcessingAssertionsSucceedWithRetry:0])
    {
      defaultsManager = self->_defaultsManager;
      v11 = [MEMORY[0x277CBEAA8] date];
      [(RTDefaultsManager *)defaultsManager setObject:v11 forKey:@"RTDefaultsPersistenceBackgroundAssertionDate"];
      v5 = v11;
      goto LABEL_14;
    }

    [(RTPersistenceDriver *)self _prepareFileDescriptorsForPersistenceStore];

    [(RTPersistenceDriver *)self _startBackgroundProcessingAssertionAcquireRetryWithLatency:3.0];
  }

  else if ([(RTPersistenceDriver *)self encryptedDataAvailability]== 2)
  {
    backgroundProcessingAssertionAcquireRetryTimer = self->_backgroundProcessingAssertionAcquireRetryTimer;
    if (backgroundProcessingAssertionAcquireRetryTimer)
    {
      [(RTTimer *)backgroundProcessingAssertionAcquireRetryTimer invalidate];
      v7 = self->_backgroundProcessingAssertionAcquireRetryTimer;
      self->_backgroundProcessingAssertionAcquireRetryTimer = 0;

      [(RTPersistenceDriver *)self _cleanUpFileDescriptoersForPersistenceStore];
    }

    if ([(RTPersistenceDriver *)self _isBackgroundProcessingAssertionActive])
    {

      [(RTPersistenceDriver *)self _startBackgroundProcessingAssertionBufferTimerWithLatency:30.0];
    }
  }

  else if ([(RTPersistenceDriver *)self encryptedDataAvailability]== 1)
  {
    v9 = self->_backgroundProcessingAssertionAcquireRetryTimer;
    if (v9)
    {
      [(RTTimer *)v9 invalidate];
      v10 = self->_backgroundProcessingAssertionAcquireRetryTimer;
      self->_backgroundProcessingAssertionAcquireRetryTimer = 0;

      [(RTPersistenceDriver *)self _cleanUpFileDescriptoersForPersistenceStore];
    }
  }
}

- (void)_evaluteDirtyTransactionAfterConfigurationChange:(int64_t)a3
{
  [(RTPersistenceDriver *)self setRequiresDirtyTransaction:0];
  v5 = [(RTPersistenceDriver *)self persistenceManager];
  v6 = [v5 availability];

  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1 && v6 == 2)
  {
    [(RTPersistenceDriver *)self setRequiresDirtyTransaction:1];
  }

  [(RTPersistenceDriver *)self evaluateTransactions];
}

- (BOOL)_shouldAttemptSetupAccordingToDeviceConfiguration:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = 1;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        return v3;
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        v9 = "encrypted data became available";
        goto LABEL_23;
      }
    }

    else
    {
      if (a3 != 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        return v3;
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        v9 = "encrypted data transitioning to unavailable";
LABEL_23:
        v10 = v8;
        v11 = 2;
LABEL_24:
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, v9, &v13, v11);
      }
    }

LABEL_29:

    return v3;
  }

  if (!a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return v3;
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      v9 = "encrypted data availability unknown";
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  if (a3 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "encrypted data unavailable", &v13, 2u);
      }
    }

    v6 = [(RTPersistenceDriver *)self _isBackgroundProcessingAssertionActive];
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (!v6)
    {
      if (!v7)
      {
        return 0;
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v13 = 67109120;
        v14 = 0;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "Background Processing Assertion is not active, set attemptSetup to %d", &v13, 8u);
      }

      v3 = 0;
      goto LABEL_29;
    }

    if (!v7)
    {
      return 1;
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    v3 = 1;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_29;
    }

    v13 = 67109120;
    v14 = 1;
    v9 = "Background Processing Assertion is still active, set attemptSetup to %d";
    v10 = v8;
    v11 = 8;
    goto LABEL_24;
  }

  return v3;
}

- (BOOL)_shouldAttemptSetupAccordingToAccountStatus:(int64_t)a3 account:(id)a4
{
  v4 = a4 == 0;
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (a3 == 2)
  {
    return a4 != 0;
  }

  else
  {
    return v4;
  }
}

- (void)_setupPersistenceAfterConfigurationChange:(int64_t)a3 cloudSyncAuthorization:(int64_t)a4 accountStatus:(int64_t)a5 account:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v14 = [RTDataProtectionManager encryptedDataAvailabilityToString:a3];
    v32 = a2;
    v15 = [RTAccountManager cloudSyncAuthorizationToString:a4];
    v16 = [RTAccountManager accountStatusToString:a5];
    *buf = 138413315;
    v35 = v13;
    v36 = 2114;
    v37 = v14;
    v38 = 2114;
    v39 = v15;
    v40 = 2114;
    v41 = v16;
    v42 = 2113;
    v43 = v11;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "%@, encryptedDataAvailability, %{public}@, cloudSyncAuthorization, %{public}@, accountStatus, %{public}@, account, %{private}@", buf, 0x34u);

    a2 = v32;
  }

  v17 = [(RTPersistenceDriver *)self _shouldAttemptSetupAccordingToDeviceConfiguration:a3];
  v18 = [(RTPersistenceDriver *)self _shouldAttemptSetupAccordingToCloudSyncAuthorization:a4];
  v19 = [(RTPersistenceDriver *)self _shouldAttemptSetupAccordingToAccountStatus:a5 account:v11];
  v20 = v19;
  v21 = v17 && v18 && v19;
  v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = NSStringFromSelector(a2);
    v24 = v23;
    v25 = @"NO";
    if (v17)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    *buf = 138413314;
    v35 = v23;
    if (v18)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v37 = v26;
    v36 = 2112;
    if (v20)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v38 = 2112;
    v39 = v27;
    if (v21)
    {
      v25 = @"YES";
    }

    v40 = 2112;
    v41 = v28;
    v42 = 2112;
    v43 = v25;
    _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEFAULT, "%@, shouldSetupAccordingTo, deviceConfiguration, %@, cloudSyncAuthorization, %@, accountState, %@, overall, %@", buf, 0x34u);
  }

  v29 = [(RTPersistenceDriver *)self persistenceManager];
  v30 = [v29 availability];

  if (v30 != 2)
  {
    [(RTPersistenceDriver *)self setRequiresSetupTransaction:1];
    [(RTPersistenceDriver *)self evaluateTransactions];
    if (v21)
    {
      v31 = [(RTPersistenceDriver *)self persistenceManager];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __110__RTPersistenceDriver__setupPersistenceAfterConfigurationChange_cloudSyncAuthorization_accountStatus_account___block_invoke;
      v33[3] = &unk_2788C9890;
      v33[4] = self;
      [v31 setupPersistenceContainers:v33];
    }
  }
}

uint64_t __110__RTPersistenceDriver__setupPersistenceAfterConfigurationChange_cloudSyncAuthorization_accountStatus_account___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setRequiresSetupTransaction:0];
    v3 = *(v2 + 32);

    return [v3 evaluateTransactions];
  }

  return result;
}

- (int64_t)store:(id)a3 validateAppleIDs:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(RTPersistenceDriver *)self currentAccount];
      v10 = [v9 appleIDs];
      v15 = 138740227;
      v16 = v10;
      v17 = 2117;
      v18 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "validating current AppleIDs (%{sensitive}@) against appleIDs (%{sensitive}@)", &v15, 0x16u);
    }
  }

  v11 = [(RTPersistenceDriver *)self currentAccount];
  v12 = [v11 appleIDs];

  if ([v12 count] || objc_msgSend(v7, "count"))
  {
    if (v12 && [v12 count])
    {
      if (v7 && [v7 count])
      {
        if ([v12 intersectsSet:v7])
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 3;
      }
    }

    else
    {
      v13 = 4;
    }
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

- (id)appleIDsForStore:(id)a3
{
  v3 = [(RTPersistenceDriver *)self currentAccount];
  v4 = [v3 appleIDs];

  return v4;
}

- (id)mirroringOptionsForStoreWithType:(unint64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPersistenceManagerDisableMirroringDelegate2"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(RTPersistenceDriver *)self persistenceDeviceClassForPlatform]& v6;
  v8 = [(RTPersistenceDriver *)self persistenceDeviceClassForPlatform];
  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v7 != v8)
  {
    if (v9)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v26 = a3;
        v27 = 2048;
        v28 = [(RTPersistenceDriver *)self cloudSyncAuthorization];
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "mirroring options for store with type, %lu, cloud sync auth, %ld", buf, 0x16u);
      }
    }

    if (a3 == 1 && [(RTPersistenceDriver *)self cloudSyncAuthorization]== 2)
    {
      v13 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPersistenceManagerMirroringOverrideDefaultContainer"];

      if ([(RTPlatform *)self->_currentPlatform internalInstall])
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v10 = [objc_alloc(MEMORY[0x277CBE3A0]) initWithContainerIdentifier:@"com.apple.CoreRoutine-3"];
      }

      else
      {
        v15 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPersistenceManagerMirroringOverrideDefaultContainer"];
        v10 = [objc_alloc(MEMORY[0x277CBE3A0]) initWithContainerIdentifier:v15];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "override default container is set, setting mirroring delegate option", buf, 2u);
          }
        }
      }

      [v10 setUseDeviceToDeviceEncryption:1];
      [v10 setOperationMemoryThresholdBytes:&unk_28459DD28];
      [v10 setPreserveLegacyRecordMetadataBehavior:1];
      v18 = objc_opt_new();
      [v18 setUseZoneWidePCS:1];
      [v18 setBypassPCSEncryption:0];
      v19 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPersistenceManagerMirroringDisablePCSEncryption"];
      v20 = [v19 BOOLValue];

      if ([(RTPlatform *)self->_currentPlatform internalInstall])
      {
        if (v20)
        {
          [v10 setUseDeviceToDeviceEncryption:0];
          [v18 setUseZoneWidePCS:0];
          [v18 setBypassPCSEncryption:1];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v21 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "disable PCS encryption is set, setting container option", buf, 2u);
            }
          }
        }
      }

      [v10 setContainerOptions:v18];
      v23 = @"RTPersistenceDriverMirroringDelegateOptionsKey";
      v24 = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

      goto LABEL_31;
    }

LABEL_18:
    v11 = 0;
    goto LABEL_32;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v26 = v6;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "sync is disabled for device, current mask, %lu", buf, 0xCu);
  }

  v11 = 0;
LABEL_31:

LABEL_32:

  return v11;
}

- (id)remoteServerOptionsForStoreWithType:(unint64_t)a3
{
  v4 = [(RTPersistenceDriver *)self currentPlatform];
  v5 = [v4 internalInstall];

  v6 = 0;
  if (a3 <= 1 && v5)
  {
    v6 = objc_opt_new();
    v7 = MEMORY[0x277CBEC38];
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBE338]];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CBE328]];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CBE268]];
    [v6 setObject:*MEMORY[0x277CCA198] forKeyedSubscript:*MEMORY[0x277CBE240]];
    v8 = *MEMORY[0x277CBE340];
    if (a3)
    {
      [v6 setObject:@"com.apple.routined.store.cloud" forKeyedSubscript:v8];
      v8 = *MEMORY[0x277CBE210];
      v9 = MEMORY[0x277CBEC10];
    }

    else
    {
      v9 = @"com.apple.routined.store.cache";
    }

    [v6 setObject:v9 forKeyedSubscript:v8];
  }

  return v6;
}

- (void)cleanupOlderPersistentStores
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [&unk_2845A0D88 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v16;
    *&v3 = 138412546;
    v13 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(&unk_2845A0D88);
        }

        v7 = [MEMORY[0x277CCAA00] pathInCacheDirectory:{*(*(&v15 + 1) + 8 * v6), v13}];
        v8 = [MEMORY[0x277CCAA00] defaultManager];
        v9 = [v8 fileExistsAtPath:v7];

        if (v9)
        {
          v10 = [MEMORY[0x277CCAA00] defaultManager];
          v14 = 0;
          [v10 removeItemAtPath:v7 error:&v14];
          v11 = v14;

          if (v11)
          {
            v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = v13;
              v20 = v7;
              v21 = 2112;
              v22 = v11;
              _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "older core routine persistent store file, %@, existed but couldn't be removed due to error, %@", buf, 0x16u);
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [&unk_2845A0D88 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v4);
  }
}

+ (id)persistCurrentDeviceWithIdentifier:(id)a3 inStore:(id)a4 context:(id)a5 platform:(id)a6 notificationHelper:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v14)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceStore", buf, 2u);
    }

    if (a8)
    {
      v20 = @"persistenceStore";
LABEL_17:
      _RTErrorInvalidParameterCreate(v20);
      *a8 = v18 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  if (!v15)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (a8)
    {
      v20 = @"context";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  *buf = 0;
  v40 = buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__56;
  v43 = __Block_byref_object_dispose__56;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__56;
  v37 = __Block_byref_object_dispose__56;
  v38 = 0;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __108__RTPersistenceDriver_persistCurrentDeviceWithIdentifier_inStore_context_platform_notificationHelper_error___block_invoke;
  v26 = &unk_2788C98B8;
  v27 = v16;
  v28 = v13;
  v29 = v15;
  v31 = &v33;
  v30 = v14;
  v32 = buf;
  [v29 performBlockAndWait:&v23];
  if (*(v40 + 5) && !v34[5])
  {
    [v17 postNotification:{@"kRTPersistenceDeviceIdentityChanged", v23, v24, v25, v26, v27, v28, v29}];
  }

  if (a8)
  {
    *a8 = v34[5];
  }

  v18 = *(v40 + 5);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(buf, 8);

LABEL_19:

  return v18;
}

void __108__RTPersistenceDriver_persistCurrentDeviceWithIdentifier_inStore_context_platform_notificationHelper_error___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) internalInstall])
  {
    v2 = [*(a1 + 32) userAssignedDeviceName];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
  }

  v5 = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 UUIDString];
      *buf = 138412290;
      v51 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "creating new device record with identifier, %@", buf, 0xCu);
    }
  }

  v8 = MEMORY[0x277CBE408];
  v9 = +[(NSManagedObject *)RTDeviceMO];
  v10 = [v8 insertNewObjectForEntityForName:v9 inManagedObjectContext:*(a1 + 48)];

  [v10 setIdentifier:v5];
  [v10 setDeviceName:v2];
  v11 = [*(a1 + 32) deviceClass];
  [v10 setDeviceClass:v11];

  v12 = [*(a1 + 32) systemModel];
  [v10 setDeviceModel:v12];

  v13 = [MEMORY[0x277CBEAA8] date];
  [v10 setCreationDate:v13];

  if (v10 && ([v10 identifier], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v5 UUIDString];
        *buf = 138412290;
        v51 = v16;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "created new device record with identifier, %@", buf, 0xCu);
      }
    }

    v17 = *(a1 + 48);
    v47 = 0;
    v18 = [v17 save:&v47];
    v19 = v47;
    v20 = v47;
    v21 = v20;
    if (!v18 || v20)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v19);
      v26 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = v21;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "failed to save generated device record due to error, %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v10 objectID];
          *buf = 138412290;
          v51 = v23;
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "will persist device MOID %@ to store metadata", buf, 0xCu);
        }
      }

      v24 = [*(a1 + 48) persistentStoreCoordinator];
      v25 = [*(a1 + 56) URL];
      v26 = [v24 persistentStoreForURL:v25];

      v27 = [*(a1 + 48) persistentStoreCoordinator];
      v28 = [v27 metadataForPersistentStore:v26];
      v29 = v28;
      if (!v28)
      {
        v28 = MEMORY[0x277CBEC10];
      }

      v30 = [v28 mutableCopy];

      v31 = [v10 identifier];
      v32 = [v31 UUIDString];
      [v30 setObject:v32 forKey:@"RTPersistentStoreMetadataDeviceRecordIDKey"];

      v33 = [*(a1 + 48) persistentStoreCoordinator];
      [v33 setMetadata:v30 forPersistentStore:v26];

      v34 = *(a1 + 48);
      v46 = 0;
      v35 = [v34 save:&v46];
      v36 = v46;
      v37 = v46;
      v21 = v37;
      if (!v35 || v37)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v36);
        v42 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v51 = v21;
          _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "failed to save device MOID to store metadata due to error, %@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v38 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = [v10 objectID];
            *buf = 138412290;
            v51 = v39;
            _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "did persist device MOID %@ to store metadata", buf, 0xCu);
          }
        }

        v40 = [v10 objectID];
        v41 = *(*(a1 + 72) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;
      }
    }
  }

  else
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "failed to create device record, record or identifier is nil", buf, 2u);
    }

    v48 = *MEMORY[0x277CCA450];
    v49 = @"Failed to create device record, record or identifier is nil.";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:v21];
    v45 = *(*(a1 + 64) + 8);
    v26 = *(v45 + 40);
    *(v45 + 40) = v44;
  }
}

- (BOOL)persistCurrentDeviceRecordInStore:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: store", buf, 2u);
    }

    if (a5)
    {
      v27 = @"store";
LABEL_18:
      _RTErrorInvalidParameterCreate(v27);
      *a5 = v23 = 0;
      goto LABEL_21;
    }

LABEL_19:
    v23 = 0;
    goto LABEL_21;
  }

  if (!v9)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (a5)
    {
      v27 = @"context";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v11 = [v8 URL];
  v12 = [RTPersistenceManager storeTypeForURL:v11];

  if (v12 == 1)
  {
    *buf = 0;
    v37 = buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__56;
    v40 = __Block_byref_object_dispose__56;
    v41 = 0;
    v13 = [v10 persistentStoreCoordinator];
    v14 = [v8 URL];
    v15 = [v13 persistentStoreForURL:v14];

    v16 = [v10 persistentStoreCoordinator];
    v17 = [v16 metadataForPersistentStore:v15];
    v18 = v17;
    if (!v17)
    {
      v17 = MEMORY[0x277CBEC10];
    }

    v19 = [v17 mutableCopy];

    v20 = [v19 objectForKeyedSubscript:@"RTPersistentStoreMetadataDeviceRecordIDKey"];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__RTPersistenceDriver_persistCurrentDeviceRecordInStore_context_error___block_invoke;
    v30[3] = &unk_2788C9908;
    v21 = v20;
    v31 = v21;
    v32 = v8;
    v33 = v10;
    v34 = self;
    v35 = buf;
    [v33 performBlockAndWait:v30];
    v22 = *(v37 + 5);
    v23 = v22 == 0;
    if (a5 && v22)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = [v22 userInfo];
      *a5 = [v24 errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:v25];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = 1;
  }

LABEL_21:

  return v23;
}

void __71__RTPersistenceDriver_persistCurrentDeviceRecordInStore_context_error___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 32);
        *buf = 138412290;
        v55 = v3;
        _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "metadata has device record with identifier %@", buf, 0xCu);
      }
    }

    v4 = +[RTDeviceMO fetchRequest];
    v5 = MEMORY[0x277CCAC30];
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 32)];
    v7 = [v5 predicateWithFormat:@"%K == %@", @"identifier", v6];
    [v4 setPredicate:v7];

    [v4 setFetchLimit:1];
    v8 = *(a1 + 48);
    v52 = 0;
    v9 = [v8 executeFetchRequest:v4 error:&v52];
    v10 = v52;
    v11 = v52;
    if (v11)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
      v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v11;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "failed to fetch device record due to error, %@", buf, 0xCu);
      }

LABEL_9:

      goto LABEL_42;
    }

    if ([v9 count])
    {
      v21 = [v9 firstObject];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_29:
        v33 = [v21 creationDate];

        if (!v33)
        {
          v34 = [MEMORY[0x277CBEAA8] date];
          [v21 setCreationDate:v34];

          v35 = *(a1 + 48);
          v50 = 0;
          v36 = [v35 save:&v50];
          v37 = v50;
          v38 = v37;
          if (!v36 || v37)
          {
            v39 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v55 = v38;
              _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "unable to update device record creation date when there was none previously due to error, %@", buf, 0xCu);
            }
          }
        }

        goto LABEL_37;
      }

      v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v21 identifier];
        *buf = 138412290;
        v55 = v23;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "fetched device record with identifier %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = *(a1 + 32);
          *buf = 138412290;
          v55 = v25;
          _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "device record with identifier %@ was lost, creating a new one.", buf, 0xCu);
        }
      }

      v26 = [MEMORY[0x277CCAD78] UUID];
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      v30 = *(v29 + 64);
      v31 = *(v29 + 152);
      v51 = 0;
      v22 = [RTPersistenceDriver persistCurrentDeviceWithIdentifier:v26 inStore:v27 context:v28 platform:v30 notificationHelper:v31 error:&v51];
      v32 = v51;
      v12 = v51;

      if (!v22 || v12)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v32);
        v49 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v55 = v12;
          _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "error creating new device record, %@", buf, 0xCu);
        }

        goto LABEL_9;
      }

      v21 = [*(a1 + 48) objectWithID:v22];
    }

    goto LABEL_29;
  }

  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(v16 + 64);
  v18 = *(v16 + 152);
  v53 = 0;
  v11 = [RTPersistenceDriver persistCurrentDeviceWithIdentifier:v13 inStore:v14 context:v15 platform:v17 notificationHelper:v18 error:&v53];
  v19 = v53;
  v4 = v53;

  if (v11)
  {
    v20 = v4 == 0;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v21 = [*(a1 + 48) objectWithID:v11];
    v4 = v11;
LABEL_37:

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v21 objectID];
        v42 = [v21 identifier];
        *buf = 138412546;
        v55 = v41;
        v56 = 2112;
        v57 = v42;
        _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "setting moid, %@, of current device record with identifier, %@", buf, 0x16u);
      }
    }

    v43 = [v21 objectID];
    v44 = [*(a1 + 40) userInfo];
    [v44 setObject:v43 forKeyedSubscript:@"RTPersistenceDriverUserInfoDeviceMOIDKey"];

    v45 = [v21 objectID];
    v46 = [*(a1 + 48) userInfo];
    [v46 setObject:v45 forKeyedSubscript:@"RTPersistenceDriverUserInfoDeviceMOIDKey"];

    v47 = *(a1 + 56);
    v11 = [v47 persistenceManager];
    v9 = [v11 outstandingContexts];
    v48 = [v21 objectID];
    [v47 _updatePersistenceContexts:v9 deviceObjectID:v48];

    v4 = v21;
    goto LABEL_42;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v19);
  v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v55 = v4;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "error creating new device record, %@", buf, 0xCu);
  }

LABEL_42:
}

- (BOOL)prepareStore:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: store", buf, 2u);
    }

    if (a5)
    {
      v15 = @"store";
LABEL_13:
      _RTErrorInvalidParameterCreate(v15);
      *a5 = v17 = 0;
      goto LABEL_21;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_21;
  }

  if (!v9)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v22, 2u);
    }

    if (a5)
    {
      v15 = @"context";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  [(RTPersistenceDriver *)self cleanupOlderPersistentStores];
  v11 = [v8 URL];
  v12 = [RTPersistenceManager storeTypeForURL:v11];

  if (v12 == 1)
  {
    v21 = 0;
    [(RTPersistenceDriver *)self persistCurrentDeviceRecordInStore:v8 context:v10 error:&v21];
    v13 = v21;
  }

  else
  {
    v13 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained persistenceStore:v8 didPrepareWithContext:v10];
  }

  if (a5)
  {
    v19 = v13;
    *a5 = v13;
  }

  v17 = v13 == 0;

LABEL_21:
  return v17;
}

- (void)persistenceStore:(id)a3 failedWithError:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained persistenceStoreFailedWithError:v6];
  }
}

- (void)persistenceStore:(id)a3 encounteredCriticalError:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Exiting due to critical error, %@", &v8, 0xCu);
  }

  v7 = [(RTPersistenceDriver *)self lifecycleManager];
  [v7 exit];
}

- (BOOL)copyPersistenceStore:(id)a3 outputURL:(id)a4 error:(id *)a5
{
  v147 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v121 = a4;
  if (![(RTPlatform *)self->_currentPlatform internalInstall])
  {
    v107 = 1;
    goto LABEL_65;
  }

  v114 = a5;
  v9 = objc_opt_new();
  v10 = [v8 URL];
  v11 = [v10 path];

  [v9 addObject:v11];
  v12 = [v11 stringByDeletingPathExtension];
  v13 = [v12 stringByAppendingString:@".bak"];
  v117 = v11;
  v14 = [v11 pathExtension];
  v15 = [v13 stringByAppendingPathExtension:v14];
  [v9 addObject:v15];

  v16 = MEMORY[0x277CBEBC0];
  v17 = [v8 URL];
  v18 = [v17 path];
  v19 = [v18 stringByAppendingString:@"-wal"];
  v20 = [v16 fileURLWithPath:v19];
  v21 = [v20 path];

  [v9 addObject:v21];
  v22 = [v21 stringByDeletingPathExtension];
  v23 = [v22 stringByAppendingString:@".bak"];
  v116 = v21;
  v24 = [v21 pathExtension];
  v25 = [v23 stringByAppendingPathExtension:v24];
  [v9 addObject:v25];

  v26 = MEMORY[0x277CBEBC0];
  v118 = v8;
  v27 = [v8 URL];
  v28 = [v27 path];
  v29 = [v28 stringByAppendingString:@"-shm"];
  v30 = [v26 fileURLWithPath:v29];
  v31 = [v30 path];

  [v9 addObject:v31];
  v32 = [v31 stringByDeletingPathExtension];
  v33 = [v32 stringByAppendingString:@".bak"];
  v115 = v31;
  v34 = [v31 pathExtension];
  v35 = [v33 stringByAppendingPathExtension:v34];
  [v9 addObject:v35];

  v122 = objc_opt_new();
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v9;
  v36 = [obj countByEnumeratingWithState:&v130 objects:v146 count:16];
  v38 = v121;
  if (!v36)
  {
    goto LABEL_56;
  }

  v39 = v36;
  v40 = 0x277CCA000uLL;
  v41 = *v131;
  *&v37 = 138413570;
  v113 = v37;
  v124 = *v131;
  do
  {
    v42 = 0;
    do
    {
      if (*v131 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v43 = *(*(&v130 + 1) + 8 * v42);
      v44 = [v38 path];
      v45 = [v44 stringByAppendingPathComponent:v43];

      v46 = [v45 stringByDeletingLastPathComponent];
      v47 = [*(v40 + 2560) defaultManager];
      v48 = [v47 fileExistsAtPath:v43];

      if ((v48 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v64 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            v65 = objc_opt_class();
            v66 = NSStringFromClass(v65);
            v67 = NSStringFromSelector(a2);
            *buf = 138412802;
            v137 = v66;
            v138 = 2112;
            v139 = v67;
            v140 = 2112;
            v141 = v43;
            _os_log_impl(&dword_2304B3000, v64, OS_LOG_TYPE_INFO, "%@ %@, skipping, %@, file does not exist at path", buf, 0x20u);

            v41 = v124;
          }
        }

        goto LABEL_53;
      }

      v49 = [*(v40 + 2560) defaultManager];
      v50 = [v49 fileExistsAtPath:v46];

      if ((v50 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v51 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v52 = objc_opt_class();
            v53 = NSStringFromClass(v52);
            v54 = NSStringFromSelector(a2);
            *buf = 138412802;
            v137 = v53;
            v138 = 2112;
            v139 = v54;
            v140 = 2112;
            v141 = v46;
            _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@ %@, creating destination directory, %@", buf, 0x20u);
          }
        }

        v55 = [*(v40 + 2560) defaultManager];
        v129 = 0;
        v56 = [v55 createDirectoryAtPath:v46 withIntermediateDirectories:1 attributes:0 error:&v129];
        v57 = v129;

        if (!v56 || v57)
        {
          v58 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v92 = objc_opt_class();
            v120 = NSStringFromClass(v92);
            v93 = NSStringFromSelector(a2);
            *buf = 138413058;
            v137 = v120;
            v138 = 2112;
            v139 = v93;
            v94 = v93;
            v140 = 2112;
            v141 = v46;
            v142 = 2112;
            *v143 = v57;
            _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@ %@, failed to create directory, %@, error, %@", buf, 0x2Au);
          }

          if (v57)
          {
            [v122 addObject:v57];
          }
        }

        v41 = v124;
      }

      v59 = [v43 pathExtension];
      v60 = [v59 isEqualToString:@".sqlite"];

      if (v60)
      {
        ppDb = 0;
        v61 = sqlite3_open_v2([v43 UTF8String], &ppDb, 1, 0);
        if (v61)
        {
          v62 = v61;
          v63 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v89 = objc_opt_class();
            v119 = NSStringFromClass(v89);
            v90 = NSStringFromSelector(a2);
            v91 = sqlite3_errmsg(ppDb);
            *buf = 138413314;
            v137 = v119;
            v138 = 2112;
            v139 = v90;
            v140 = 2112;
            v141 = v43;
            v142 = 1024;
            *v143 = v62;
            *&v143[4] = 2080;
            *&v143[6] = v91;
            _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "%@ %@, failed to open source database, %@, error, %d, %s", buf, 0x30u);

            v41 = v124;
          }
        }

        else
        {
          db = 0;
          v76 = sqlite3_open_v2([v45 UTF8String], &db, 6, 0);
          if (v76)
          {
            v77 = v76;
            v78 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              v98 = objc_opt_class();
              v99 = NSStringFromClass(v98);
              v100 = NSStringFromSelector(a2);
              v101 = sqlite3_errmsg(db);
              *buf = 138413314;
              v137 = v99;
              v138 = 2112;
              v139 = v100;
              v140 = 2112;
              v141 = v45;
              v142 = 1024;
              *v143 = v77;
              *&v143[4] = 2080;
              *&v143[6] = v101;
              _os_log_error_impl(&dword_2304B3000, v78, OS_LOG_TYPE_ERROR, "%@ %@, failed to open destination database, %@, error, %d, %s", buf, 0x30u);

              v41 = v124;
            }

            p_ppDb = &ppDb;
          }

          else
          {
            v80 = db;
            v81 = [v45 lastPathComponent];
            v82 = [v81 UTF8String];
            v83 = ppDb;
            v84 = [v43 lastPathComponent];
            v85 = sqlite3_backup_init(v80, v82, v83, [v84 UTF8String]);

            if (v85)
            {
              sqlite3_backup_step(v85, -1);
              sqlite3_backup_finish(v85);
            }

            v86 = sqlite3_errcode(db);
            v38 = v121;
            v40 = 0x277CCA000;
            v41 = v124;
            if (v86)
            {
              v87 = v86;
              v88 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                v102 = objc_opt_class();
                v103 = NSStringFromClass(v102);
                v104 = NSStringFromSelector(a2);
                v105 = sqlite3_errmsg(db);
                *buf = v113;
                v137 = v103;
                v138 = 2112;
                v139 = v104;
                v140 = 2112;
                v141 = v43;
                v142 = 2112;
                *v143 = v45;
                *&v143[8] = 1024;
                *&v143[10] = v87;
                v144 = 2080;
                v145 = v105;
                _os_log_error_impl(&dword_2304B3000, v88, OS_LOG_TYPE_ERROR, "%@ %@, failed to copy source, %@, to destination, %@, error, %d, %s", buf, 0x3Au);

                v41 = v124;
                v40 = 0x277CCA000;
              }
            }

            sqlite3_close(ppDb);
            p_ppDb = &db;
          }

          sqlite3_close(*p_ppDb);
        }

LABEL_53:
        v70 = 0;
        goto LABEL_54;
      }

      v68 = [*(v40 + 2560) defaultManager];
      v126 = 0;
      v69 = [v68 copyItemAtPath:v43 toPath:v45 error:&v126];
      v70 = v126;

      if (!v69 || v70)
      {
        v75 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v95 = objc_opt_class();
          v96 = NSStringFromClass(v95);
          v97 = NSStringFromSelector(a2);
          *buf = 138413058;
          v137 = v96;
          v138 = 2112;
          v139 = v97;
          v140 = 2112;
          v141 = v43;
          v142 = 2112;
          *v143 = v70;
          _os_log_error_impl(&dword_2304B3000, v75, OS_LOG_TYPE_ERROR, "%@ %@, error while copying up file %@, error, %@", buf, 0x2Au);

          v41 = v124;
        }

        if (v70)
        {
          [v122 addObject:v70];
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v71 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            v72 = objc_opt_class();
            v73 = NSStringFromClass(v72);
            v74 = NSStringFromSelector(a2);
            *buf = 138413058;
            v137 = v73;
            v138 = 2112;
            v139 = v74;
            v140 = 2112;
            v141 = v43;
            v142 = 2112;
            *v143 = v45;
            _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@ %@, finished copying file %@ to %@", buf, 0x2Au);
          }
        }

        v70 = 0;
      }

      v40 = 0x277CCA000;
LABEL_54:

      ++v42;
    }

    while (v39 != v42);
    v39 = [obj countByEnumeratingWithState:&v130 objects:v146 count:16];
  }

  while (v39);
LABEL_56:

  if ([v122 count])
  {
    v8 = v118;
    if ([v122 count] > 1)
    {
      v108 = MEMORY[0x277CCA9B8];
      v109 = *MEMORY[0x277D01448];
      v134 = *MEMORY[0x277D01440];
      v135 = v122;
      v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
      v106 = [v108 errorWithDomain:v109 code:9 userInfo:v110];
    }

    else
    {
      v106 = [v122 firstObject];
    }

    if (v114)
    {
      v111 = v106;
      *v114 = v106;
    }
  }

  else
  {
    v106 = 0;
    v8 = v118;
  }

  v107 = v106 == 0;

LABEL_65:
  return v107;
}

- (BOOL)backupPersistenceStore:(id)a3 error:(id *)a4
{
  v107 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(RTPlatform *)self->_currentPlatform internalInstall])
  {
    v40 = 1;
    goto LABEL_59;
  }

  v73 = a4;
  v7 = objc_opt_new();
  v8 = [v6 URL];
  v9 = [v8 path];
  [v7 addObject:v9];

  v10 = MEMORY[0x277CBEBC0];
  v11 = [v6 URL];
  v12 = [v11 path];
  v13 = [v12 stringByAppendingString:@"-wal"];
  v14 = [v10 fileURLWithPath:v13];
  v15 = [v14 path];
  [v7 addObject:v15];

  v16 = MEMORY[0x277CBEBC0];
  v74 = v6;
  v17 = [v6 URL];
  v18 = [v17 path];
  v19 = [v18 stringByAppendingString:@"-shm"];
  v20 = [v16 fileURLWithPath:v19];
  v21 = [v20 path];
  [v7 addObject:v21];

  v79 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v22 = v7;
  v23 = [v22 countByEnumeratingWithState:&v91 objects:v106 count:16];
  v24 = MEMORY[0x277CCA108];
  obj = v22;
  if (!v23)
  {

    goto LABEL_19;
  }

  v25 = v23;
  v77 = 0;
  v81 = *v92;
  v26 = *MEMORY[0x277CCA108];
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v92 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v91 + 1) + 8 * i);
      v29 = [v28 stringByDeletingPathExtension];
      v30 = [v29 stringByAppendingString:@".bak"];
      v31 = [v28 pathExtension];
      v32 = [v30 stringByAppendingPathExtension:v31];

      v33 = [MEMORY[0x277CCAA00] defaultManager];
      v90 = 0;
      v34 = [v33 attributesOfItemAtPath:v32 error:&v90];
      v35 = v90;

      v36 = [v34 objectForKeyedSubscript:v26];
      v37 = [MEMORY[0x277CCAA00] defaultManager];
      if ([v37 fileExistsAtPath:v32])
      {
        v38 = [v36 laterDate:v79];
        v39 = [v38 isEqualToDate:v36];

        if (!v39)
        {
          goto LABEL_13;
        }

        v37 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v101 = v32;
          v102 = 2112;
          v103 = v79;
          v104 = 2112;
          v105 = v36;
          _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "a backup already exists at the path %@ and is recent (%@, %@), skipping", buf, 0x20u);
        }

        v77 = 1;
      }

LABEL_13:
    }

    v22 = obj;
    v25 = [obj countByEnumeratingWithState:&v91 objects:v106 count:16];
  }

  while (v25);

  v24 = MEMORY[0x277CCA108];
  if (v77)
  {
    v40 = 1;
    v6 = v74;
    goto LABEL_58;
  }

LABEL_19:
  v76 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v82 = v22;
  v41 = [v82 countByEnumeratingWithState:&v86 objects:v99 count:16];
  if (!v41)
  {
    goto LABEL_50;
  }

  v42 = v41;
  v43 = *v87;
  v75 = *v24;
  while (2)
  {
    v44 = 0;
    v78 = v42;
    while (2)
    {
      if (*v87 != v43)
      {
        objc_enumerationMutation(v82);
      }

      v45 = *(*(&v86 + 1) + 8 * v44);
      v46 = [v45 stringByDeletingPathExtension];
      v47 = [v46 stringByAppendingString:@".bak"];
      v48 = [v45 pathExtension];
      v49 = [v47 stringByAppendingPathExtension:v48];

      v50 = [MEMORY[0x277CCAA00] defaultManager];
      LODWORD(v47) = [v50 fileExistsAtPath:v49];
      v51 = [MEMORY[0x277CCAA00] defaultManager];
      v52 = v51;
      if (!v47)
      {
        v83 = 0;
        v59 = [v51 copyItemAtPath:v45 toPath:v49 error:&v83];
        v57 = v83;
        goto LABEL_38;
      }

      v53 = v43;
      v54 = [MEMORY[0x277CBEBC0] fileURLWithPath:v49];
      v55 = [MEMORY[0x277CBEBC0] fileURLWithPath:v45];
      v85 = 0;
      v56 = [v52 replaceItemAtURL:v54 withItemAtURL:v55 backupItemName:0 options:0 resultingItemURL:0 error:&v85];
      v57 = v85;

      if (v56)
      {
        v58 = v57 == 0;
      }

      else
      {
        v58 = 0;
      }

      if (v58)
      {
        v52 = [MEMORY[0x277CBEAA8] date];
        v97 = v75;
        v98 = v52;
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v61 = [MEMORY[0x277CCAA00] defaultManager];
        v84 = 0;
        v62 = [v61 setAttributes:v60 ofItemAtPath:v49 error:&v84];
        v63 = v84;

        v43 = v53;
        if (!v62 || v63)
        {
          v64 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v101 = v49;
            v102 = 2112;
            v103 = v63;
            _os_log_error_impl(&dword_2304B3000, v64, OS_LOG_TYPE_ERROR, "Failed to update creation date for backup file %@: %@", buf, 0x16u);
          }
        }

        v57 = 0;
        v59 = 1;
        v42 = v78;
LABEL_38:

        if (!v59)
        {
          goto LABEL_44;
        }

        goto LABEL_39;
      }

      v43 = v53;
      v42 = v78;
      if (!v56)
      {
LABEL_44:
        v66 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v101 = v45;
          v102 = 2112;
          v103 = v57;
          _os_log_error_impl(&dword_2304B3000, v66, OS_LOG_TYPE_ERROR, "error while backing up file %@, error, %@", buf, 0x16u);
        }

        if (v57)
        {
          [v76 addObject:v57];
        }

        goto LABEL_48;
      }

LABEL_39:
      if (v57)
      {
        goto LABEL_44;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v65 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v101 = v45;
          v102 = 2112;
          v103 = v49;
          _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "finished backing up file %@ to %@", buf, 0x16u);
        }
      }

LABEL_48:

      if (v42 != ++v44)
      {
        continue;
      }

      break;
    }

    v42 = [v82 countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_50:

  if ([v76 count])
  {
    v6 = v74;
    v22 = obj;
    if ([v76 count] > 1)
    {
      v68 = MEMORY[0x277CCA9B8];
      v69 = *MEMORY[0x277D01448];
      v95 = *MEMORY[0x277D01440];
      v96 = v76;
      v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v67 = [v68 errorWithDomain:v69 code:9 userInfo:v70];
    }

    else
    {
      v67 = [v76 firstObject];
    }

    if (v73)
    {
      v71 = v67;
      *v73 = v67;
    }
  }

  else
  {
    v67 = 0;
    v6 = v74;
    v22 = obj;
  }

  v40 = v67 == 0;

LABEL_58:
LABEL_59:

  return v40;
}

- (BOOL)persistenceMirroringManagerDidFinishZonePurge:(id)a3 store:(id)a4 context:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "device record was deleted in a zone purge, creating a new one.", &buf, 2u);
    }
  }

  v14 = [MEMORY[0x277CCAD78] UUID];
  currentPlatform = self->_currentPlatform;
  notificationHelper = self->_notificationHelper;
  v33 = 0;
  v17 = [RTPersistenceDriver persistCurrentDeviceWithIdentifier:v14 inStore:v11 context:v12 platform:currentPlatform notificationHelper:notificationHelper error:&v33];
  v18 = v33;

  if (v17)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__56;
    v39 = __Block_byref_object_dispose__56;
    v40 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __89__RTPersistenceDriver_persistenceMirroringManagerDidFinishZonePurge_store_context_error___block_invoke;
    v27[3] = &unk_2788C98E0;
    v28 = v12;
    v29 = v17;
    p_buf = &buf;
    v30 = v11;
    v31 = self;
    [v28 performBlockAndWait:v27];
    v23 = *(*(&buf + 1) + 40);
    v22 = v23 == 0;
    if (v23)
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = *(*(&buf + 1) + 40);
        *v34 = 138412290;
        v35 = v26;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "error getting new device record, %@", v34, 0xCu);
      }

      if (a6)
      {
        *a6 = *(*(&buf + 1) + 40);
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "error creating new device record, %@", &buf, 0xCu);
    }

    if (a6)
    {
      v21 = v18;
      v22 = 0;
      *a6 = v18;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

void __89__RTPersistenceDriver_persistenceMirroringManagerDidFinishZonePurge_store_context_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v2 existingObjectWithID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v5 objectID];
        v8 = [v5 identifier];
        *buf = 138412546;
        v21 = v7;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "setting moid, %@, of current device record with identifier, %@", buf, 0x16u);
      }
    }

    v9 = [v5 objectID];
    v10 = [*(a1 + 48) userInfo];
    [v10 setObject:v9 forKeyedSubscript:@"RTPersistenceDriverUserInfoDeviceMOIDKey"];

    v11 = [v5 objectID];
    v12 = [*(a1 + 32) userInfo];
    [v12 setObject:v11 forKeyedSubscript:@"RTPersistenceDriverUserInfoDeviceMOIDKey"];

    v13 = *(a1 + 56);
    v14 = [v5 objectID];
    [v13 _updatePersistenceStoresWithDeviceObjectID:v14];

    v15 = *(a1 + 56);
    v16 = [v15 persistenceManager];
    v17 = [v16 outstandingContexts];
    v18 = [v5 objectID];
    [v15 _updatePersistenceContexts:v17 deviceObjectID:v18];
  }
}

- (void)persistenceManagerWillStartResetSync:(id)a3 userInfo:(id)a4 context:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v10)
    {
LABEL_3:
      v12 = objc_opt_new();
      [(RTPersistenceDriver *)self setResetSyncContext:v12];

      v13 = [(RTPersistenceDriver *)self resetSyncContext];
      [v13 setManagedObjectContext:v11];

      WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained persistenceStoreResetSyncWithUserInfo:v9];
      }

      v15 = [(RTPersistenceDriver *)self persistenceManager];
      v16 = [v15 historyTokenForStoreType:1];
      v17 = [(RTPersistenceDriver *)self resetSyncContext];
      [v17 setHistoryToken:v16];

      defaultsManager = self->_defaultsManager;
      v19 = [MEMORY[0x277CBEAA8] date];
      [(RTDefaultsManager *)defaultsManager setObject:v19 forKey:@"RTDefaultsPersistenceMirroringManagerBackgroundLastResetSyncDate"];

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __77__RTPersistenceDriver_persistenceManagerWillStartResetSync_userInfo_context___block_invoke;
      v21[3] = &unk_2788C4A70;
      v21[4] = self;
      v22 = v11;
      [v22 performBlockAndWait:v21];

      goto LABEL_11;
    }
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTPersistenceDriver persistenceManagerWillStartResetSync:userInfo:context:]";
      v25 = 1024;
      v26 = 1616;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceManager (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
      goto LABEL_3;
    }
  }

  WeakRetained = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, WeakRetained, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
  }

LABEL_11:
}

void __77__RTPersistenceDriver_persistenceManagerWillStartResetSync_userInfo_context___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"RTPersistenceDriverUserInfoDeviceMOIDKey"];
  v4 = [*(a1 + 32) resetSyncContext];
  [v4 setCurrentDeviceObjectID:v3];

  v5 = [*(a1 + 40) currentDevice];
  v6 = [v5 identifier];
  v7 = [*(a1 + 32) resetSyncContext];
  [v7 setCurrentDeviceIdentifier:v6];

  v8 = *(a1 + 40);
  v9 = [v8 currentDevice];
  [v8 refreshObject:v9 mergeChanges:0];

  [*(a1 + 40) reset];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) resetSyncContext];
      v12 = [v11 currentDeviceObjectID];
      v13 = [*(a1 + 32) resetSyncContext];
      v14 = [v13 currentDeviceIdentifier];
      v15 = [v14 UUIDString];
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "cached current device information, MOID, %@, identifier, %@", &v16, 0x16u);
    }
  }
}

- (BOOL)_evaluatePersistentHistoryForDeletedDeviceDuringResetSync:(BOOL *)a3 resetSyncContext:(id)a4 managedObjectContext:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: resetSyncContext", buf, 2u);
    }

    if (a6)
    {
      v19 = @"resetSyncContext";
LABEL_14:
      _RTErrorInvalidParameterCreate(v19);
      *a6 = v21 = 0;
      goto LABEL_21;
    }

LABEL_15:
    v21 = 0;
    goto LABEL_21;
  }

  if (!v11)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext", buf, 2u);
    }

    if (a6)
    {
      v19 = @"managedObjectContext";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v13 = objc_opt_new();
  *buf = 0;
  v34 = buf;
  v35 = 0x2020000000;
  v36 = 0;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __125__RTPersistenceDriver__evaluatePersistentHistoryForDeletedDeviceDuringResetSync_resetSyncContext_managedObjectContext_error___block_invoke;
  v27 = &unk_2788C9908;
  v28 = v10;
  v29 = self;
  v30 = v12;
  v14 = v13;
  v31 = v14;
  v32 = buf;
  [v30 performBlockAndWait:&v24];
  v15 = _RTSafeArray();
  v16 = _RTMultiErrorCreate();

  if (a3)
  {
    if ([v14 count])
    {
      v17 = 1;
    }

    else
    {
      v17 = v34[24];
    }

    *a3 = v17;
  }

  if (a6)
  {
    v22 = v16;
    *a6 = v16;
  }

  v21 = v16 == 0;

  _Block_object_dispose(buf, 8);
LABEL_21:

  return v21;
}

void __125__RTPersistenceDriver__evaluatePersistentHistoryForDeletedDeviceDuringResetSync_resetSyncContext_managedObjectContext_error___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) historyToken];

  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "using history change token for history query", buf, 2u);
      }
    }

    v5 = MEMORY[0x277CBE4B0];
    v6 = [*(a1 + 32) historyToken];
    v7 = [v5 fetchHistoryAfterToken:v6];
  }

  else
  {
    if (v3)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "using date for history query", buf, 2u);
      }
    }

    v6 = [*(*(a1 + 40) + 80) objectForKey:@"RTDefaultsPersistenceMirroringManagerBackgroundLastResetSyncDate"];
    v7 = [MEMORY[0x277CBE4B0] fetchHistoryAfterDate:v6];
  }

  v9 = v7;

  [v9 setResultType:5];
  [v9 setFetchBatchSize:10];
  v10 = objc_alloc(MEMORY[0x277CBE428]);
  v11 = [MEMORY[0x277CBE4C8] entityDescription];
  v12 = [v11 name];
  v13 = [v10 initWithEntityName:v12];

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"author", @"NSCloudKitMirroringDelegate.reset"];
  [v13 setPredicate:v14];

  [v9 setFetchRequest:v13];
  v15 = *(a1 + 48);
  v59 = 0;
  v16 = [v15 executeRequest:v9 error:&v59];
  v17 = v59;
  if (v17)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v62 = v17;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "error querying persistent history, %@", buf, 0xCu);
    }

    [*(a1 + 56) addObject:v17];
  }

  else
  {
    v19 = [v16 result];

    if (v19)
    {
      v44 = v13;
      v45 = v9;
      v20 = [v16 result];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [*(a1 + 32) currentDeviceObjectID];
          *buf = 138412290;
          v62 = v22;
          _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "searching for device record with MOID, %@", buf, 0xCu);
        }
      }

      v43 = v16;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v20;
      v49 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v49)
      {
        v48 = *v56;
        v47 = *MEMORY[0x277CBE148];
        v23 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v56 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v55 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v26 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [v25 transactionNumber];
                v28 = [v25 author];
                *buf = 134218242;
                v62 = v27;
                v63 = 2112;
                v64 = v28;
                _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "transaction ID, %lld, transaction author, %@", buf, 0x16u);
              }
            }

            v29 = [v25 objectIDNotification];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v31 = [v29 userInfo];
                *buf = 138412290;
                v62 = v31;
                _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "objectIDNotification, %@", buf, 0xCu);
              }
            }

            v32 = [v29 userInfo];
            v33 = [v32 objectForKey:v47];

            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v34 = v33;
            v35 = [v34 countByEnumeratingWithState:&v51 objects:v60 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v52;
              while (2)
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v52 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v51 + 1) + 8 * j);
                  v40 = [*(a1 + 32) currentDeviceObjectID];
                  LODWORD(v39) = [v39 isEqual:v40];

                  if (v39)
                  {
                    *(*(*(a1 + 64) + 8) + 24) = 1;
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                    {
                      v41 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "previous current device was deleted.", buf, 2u);
                      }
                    }

                    goto LABEL_47;
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v51 objects:v60 count:16];
                if (v36)
                {
                  continue;
                }

                break;
              }
            }

LABEL_47:

            objc_autoreleasePoolPop(context);
          }

          v49 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v49);
      }

      v13 = v44;
      v9 = v45;
      v16 = v43;
      v17 = 0;
    }

    else
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "error while fetching history; historyResult is nil", buf, 2u);
      }
    }
  }
}

- (void)persistenceManagerDidFinishResetSync:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTPersistenceDriver *)self resetSyncContext];

  if (!v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v12, OS_LOG_TYPE_FAULT, "error recreating device record during reset-sync because there was no context.", buf, 2u);
    }

    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Error recreating device record during reset-sync because there was no context." userInfo:0];
    objc_exception_throw(v13);
  }

  v9 = [v6 persistenceContextWithOptions:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__RTPersistenceDriver_persistenceManagerDidFinishResetSync_userInfo___block_invoke;
  v14[3] = &unk_2788C76F8;
  v14[4] = self;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  v11 = v9;
  [v11 performBlockAndWait:v14];
  [(RTPersistenceDriver *)self setResetSyncContext:0];
}

void __69__RTPersistenceDriver_persistenceManagerDidFinishResetSync_userInfo___block_invoke(id *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v2 = a1[4];
  v3 = [v2 resetSyncContext];
  v4 = a1[5];
  v32 = 0;
  [v2 _evaluatePersistentHistoryForDeletedDeviceDuringResetSync:&v33 resetSyncContext:v3 managedObjectContext:v4 error:&v32];
  v5 = v32;

  v6 = a1[5];
  v7 = [a1[4] resetSyncContext];
  v8 = [v7 currentDeviceObjectID];
  v31 = 0;
  v9 = [v6 existingObjectWithID:v8 error:&v31];
  v10 = v31;

  if ((v33 & 1) != 0 || v10 || v5)
  {
    v14 = a1[4];
    v15 = [v14 resetSyncContext];
    v16 = [v14 _repersistPreviousDeviceWithResetSyncContext:v15 persistenceManager:a1[6] managedObjectContext:a1[5]];

    if (!v16)
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "failed to recreate device record after reset sync", buf, 2u);
      }

      v29 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"failed to recreate device record after reset sync" userInfo:0];
      objc_exception_throw(v29);
    }

    v13 = [a1[5] existingObjectWithID:v16 error:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v9 objectID];
        *buf = 138412290;
        v35 = v12;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "keeping the previous device after reset sync, %@", buf, 0xCu);
      }
    }

    v13 = v9;
  }

  v17 = [v13 objectID];
  v18 = [a1[5] userInfo];
  [v18 setObject:v17 forKeyedSubscript:@"RTPersistenceDriverUserInfoDeviceMOIDKey"];

  v19 = a1[4];
  v20 = [v13 objectID];
  [v19 _updatePersistenceStoresWithDeviceObjectID:v20];

  v21 = a1[4];
  v22 = [a1[6] outstandingContexts];
  v23 = [v13 objectID];
  [v21 _updatePersistenceContexts:v22 deviceObjectID:v23];

  v24 = a1[4];
  v25 = [a1[6] latestModel];
  v26 = a1[5];
  v27 = a1[6];
  v30 = 0;
  [v24 _purgeLocalEntityRowsUsingModel:v25 managedObjectContext:v26 persistenceManager:v27 error:&v30];
}

- (id)_repersistPreviousDeviceWithResetSyncContext:(id)a3 persistenceManager:(id)a4 managedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: resetSyncContext";
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_12;
  }

  if (!v9)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: persistenceManager";
    goto LABEL_11;
  }

  if (v10)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__56;
    v26 = __Block_byref_object_dispose__56;
    v27 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __108__RTPersistenceDriver__repersistPreviousDeviceWithResetSyncContext_persistenceManager_managedObjectContext___block_invoke;
    v16[3] = &unk_2788C9908;
    v17 = v9;
    v21 = buf;
    v18 = v8;
    v19 = v11;
    v20 = self;
    [v19 performBlockAndWait:v16];
    v12 = *(v23 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v14 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_11;
  }

LABEL_12:

  v12 = 0;
LABEL_13:

  return v12;
}

void __108__RTPersistenceDriver__repersistPreviousDeviceWithResetSyncContext_persistenceManager_managedObjectContext___block_invoke(uint64_t a1, __n128 a2)
{
  v3 = 0;
  v32 = *MEMORY[0x277D85DE8];
  a2.n128_u64[0] = 138412290;
  v26 = a2;
  while (1)
  {
    v4 = [*(a1 + 32) persistenceStoreForType:{1, *&v26}];
    v5 = [*(a1 + 40) currentDeviceIdentifier];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(v7 + 64);
    v9 = *(v7 + 152);
    v27 = 0;
    v10 = [RTPersistenceDriver persistCurrentDeviceWithIdentifier:v5 inStore:v4 context:v6 platform:v8 notificationHelper:v9 error:&v27];
    v11 = v27;
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    if (!v11)
    {
      break;
    }

    v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = v26.n128_u32[0];
      v31 = v11;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "error attempting to re-persist device to the store after reset sync, %@", buf, 0xCu);
    }

    if (v3 > 3)
    {
      goto LABEL_19;
    }

LABEL_11:

    ++v3;
  }

  v15 = *(*(*(a1 + 64) + 8) + 40);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = v3 >= 4;
  }

  if (!v16)
  {
    goto LABEL_11;
  }

  if (!v15)
  {
LABEL_19:
    v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = v26.n128_u32[0];
      v31 = v11;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "failed to recreate device record after reset sync, %@", buf, 0xCu);
    }

    v28 = *MEMORY[0x277CCA7E8];
    v29 = v11;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21 = MEMORY[0x277CBEAD8];
    v22 = *MEMORY[0x277CBE658];
    v23 = @"failed to recreate device record after reset sync";
    goto LABEL_22;
  }

  if ([v15 isTemporaryID])
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "objectID of freshly persisted device is temporary", buf, 2u);
    }

    v21 = MEMORY[0x277CBEAD8];
    v22 = *MEMORY[0x277CBE658];
    v23 = @"objectID of freshly persisted device is temporary";
    v20 = 0;
LABEL_22:
    v24 = [v21 exceptionWithName:v22 reason:v23 userInfo:v20];
    objc_exception_throw(v24);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(*(*(a1 + 64) + 8) + 40);
      *buf = v26.n128_u32[0];
      v31 = v18;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "successfully re-persisted device after reset sync with MOID, %@", buf, 0xCu);
    }
  }
}

- (BOOL)_purgeLocalEntityRowsUsingModel:(id)a3 managedObjectContext:(id)a4 persistenceManager:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectModel", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_20;
    }

    v20 = @"managedObjectModel";
    goto LABEL_19;
  }

  if (!v10)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_20;
    }

    v20 = @"managedObjectContext";
LABEL_19:
    _RTErrorInvalidParameterCreate(v20);
    *a6 = v18 = 0;
    goto LABEL_21;
  }

  if (!v11)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceManager", buf, 2u);
    }

    if (a6)
    {
      v20 = @"persistenceManager";
      goto LABEL_19;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v13 = objc_opt_new();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __101__RTPersistenceDriver__purgeLocalEntityRowsUsingModel_managedObjectContext_persistenceManager_error___block_invoke;
  v24[3] = &unk_2788C76F8;
  v25 = v12;
  v26 = v10;
  v14 = v13;
  v27 = v14;
  [v26 performBlockAndWait:v24];
  v15 = _RTSafeArray();
  v16 = _RTMultiErrorCreate();

  if (a6)
  {
    v17 = v16;
    *a6 = v16;
  }

  v18 = v16 == 0;

LABEL_21:
  return v18;
}

void __101__RTPersistenceDriver__purgeLocalEntityRowsUsingModel_managedObjectContext_persistenceManager_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) latestModel];
  v3 = [v2 entitiesForConfiguration:@"Cache"];
  v27 = v2;
  v4 = [v2 entitiesForConfiguration:@"Local"];
  v26 = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  v25 = v4;
  v6 = [v5 arrayByAddingObjectsFromArray:v4];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = objc_alloc(MEMORY[0x277CBE428]);
        v14 = [v12 name];
        v15 = [v13 initWithEntityName:v14];

        v16 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v15];
        v17 = *(a1 + 40);
        v28 = 0;
        v18 = [v17 executeRequest:v16 error:&v28];
        v19 = v28;
        if (v19)
        {
          [*(a1 + 48) addObject:v19];
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            goto LABEL_14;
          }

          v21 = [v12 name];
          *buf = 138412546;
          v34 = v21;
          v35 = 2112;
          v36 = v19;
          v22 = v20;
          v23 = "error batch deleting entity type during reset sync, %@, error, %@";
          v24 = 22;
          goto LABEL_13;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_15;
        }

        v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v12 name];
          *buf = 138412290;
          v34 = v21;
          v22 = v20;
          v23 = "batch deleting entity type during reset sync, %@";
          v24 = 12;
LABEL_13:
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, v23, buf, v24);
        }

LABEL_14:

LABEL_15:
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v9);
  }
}

- (void)_updatePersistenceStoresWithDeviceObjectID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Updating stores with new device MOID %@", &v12, 0xCu);
    }
  }

  v6 = [(RTPersistenceDriver *)self persistenceManager];
  v7 = [v6 countOfPersistenceStores];

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [(RTPersistenceDriver *)self persistenceManager];
      v10 = [v9 persistenceStoreForType:i];

      v11 = [v10 userInfo];
      [v11 setObject:v4 forKeyedSubscript:@"RTPersistenceDriverUserInfoDeviceMOIDKey"];
    }
  }
}

- (void)_updatePersistenceContexts:(id)a3 deviceObjectID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v22 = [v5 count];
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Updating %lu contexts with new device MOID %@", buf, 0x16u);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __65__RTPersistenceDriver__updatePersistenceContexts_deviceObjectID___block_invoke;
        v14[3] = &unk_2788C4A70;
        v14[4] = v13;
        v15 = v6;
        [v13 performBlockAndWait:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

void __65__RTPersistenceDriver__updatePersistenceContexts_deviceObjectID___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) queryGenerationToken];
  v3 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
  if (!v2 || ([v2 isEqual:v3] & 1) != 0)
  {
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "updating query generation for MOC %@ to current generation", buf, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v17 = 0;
  [v6 setQueryGenerationFromToken:v3 error:&v17];
  v7 = v17;
  if (v7)
  {
    v8 = v7;
    v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
      *buf = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v8;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "error while setting the query generation to the current generation (%@), %@", buf, 0x16u);
    }
  }

  else
  {
LABEL_19:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        *buf = 138412546;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "updating MOC %@ with current device MOID, %@", buf, 0x16u);
      }
    }

    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) userInfo];
    [v14 setObject:v13 forKeyedSubscript:@"RTPersistenceDriverUserInfoDeviceMOIDKey"];

    v15 = *(a1 + 32);
    v8 = [v15 currentDevice];
    [v15 refreshObject:v8 mergeChanges:1];
  }
}

- (unint64_t)persistenceDeviceClassForPlatform
{
  v3 = [(RTPersistenceDriver *)self currentPlatform];
  v4 = [v3 iPhonePlatform];

  if (v4)
  {
    return 1;
  }

  v6 = [(RTPersistenceDriver *)self currentPlatform];
  v7 = [v6 watchPlatform];

  if (v7)
  {
    return 2;
  }

  v8 = [(RTPersistenceDriver *)self currentPlatform];
  v9 = [v8 macOSPlatform];

  if (v9)
  {
    return 4;
  }

  v10 = [(RTPersistenceDriver *)self currentPlatform];
  v11 = [v10 simulatorPlatform];

  if (v11)
  {
    return 8;
  }

  v12 = [(RTPersistenceDriver *)self currentPlatform];
  v13 = [v12 realityDevice];

  if (v13)
  {
    return 32;
  }

  else
  {
    return 0;
  }
}

- (void)persistenceMigrator:(id)a3 didStartMigratingStore:(id)a4 withModelProvider:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained persistenceDriver:self persistenceMigrator:v11 didStartMigratingStore:v8 withModelProvider:v9];
  }
}

- (void)persistenceMigrator:(id)a3 didFinishMigratingStore:(id)a4 withModelProvider:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained persistenceDriver:self persistenceMigrator:v11 didFinishMigratingStore:v8 withModelProvider:v9];
  }
}

- (BOOL)shouldResetCloudStore
{
  v2 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPersistenceShouldResetCloudStore"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setShouldResetCloudStore:(BOOL)a3
{
  v3 = a3;
  v5 = [(RTPersistenceDriver *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v5 setObject:v4 forKey:@"RTDefaultsPersistenceShouldResetCloudStore"];
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (a3 != 3)
  {
    v11 = v9;
    v12 = [(RTPersistenceDriver *)self persistenceManager];
    v13 = [v12 persistenceContextWithOptions:0];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__RTPersistenceDriver_performPurgeOfType_referenceDate_completion___block_invoke;
    v16[3] = &unk_2788C4C70;
    v16[4] = self;
    v17 = v13;
    v18 = v11;
    v19 = a2;
    v14 = v11;
    v15 = v13;
    [v15 performBlockAndWait:v16];
  }

  if (v10)
  {
    v10[2](v10, 0);
  }
}

void __67__RTPersistenceDriver_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistenceManager];
  v3 = [v2 URLForStoreType:2];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [*(a1 + 40) persistentStoreCoordinator];
  v5 = [v4 persistentStores];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v25 + 1) + 8 * v9);
      v11 = [v10 URL];
      v12 = [v11 isEqual:v3];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 48);
        *buf = 138412290;
        v30 = v15;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "purging transaction history for the local store prior to %@", buf, 0xCu);
      }
    }

    v16 = [MEMORY[0x277CBE4B0] deleteHistoryBeforeDate:*(a1 + 48)];
    v33 = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v16 setAffectedStores:v17];

    [v16 setResultType:2];
    v18 = *(a1 + 40);
    v24 = 0;
    v19 = [v18 executeRequest:v16 error:&v24];
    v20 = v24;
    if (v20)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v22 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v30 = v22;
      v31 = 2112;
      v32 = v20;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, encountered error purging transaction history for the local store, error, %@", buf, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v21 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v22 = NSStringFromSelector(*(a1 + 56));
      v23 = [v19 result];
      *buf = 138412546;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, purged %@ transaction history items in the local store", buf, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_9:
  v13 = v5;
LABEL_19:

LABEL_20:
}

- (id)prepareForDatabaseRekey:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "preparing for database rekey", buf, 2u);
    }
  }

  v6 = [(RTPersistenceDriver *)self keychainManager];
  v25 = 0;
  v7 = [v6 encryptionKeyWithSize:0 identifier:@"com.apple.routined.security.database.rekey" error:&v25];
  v8 = v25;

  if (v8)
  {
    v9 = [v8 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v10)
    {
      if ([v10 code] == -25300)
      {

        goto LABEL_9;
      }

      v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v8;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "error while checking to see if re-key key material already exists in database, %@", buf, 0xCu);
      }

      if (!a3)
      {
LABEL_30:
        v15 = 0;
        goto LABEL_35;
      }
    }

    else if (!a3)
    {
      goto LABEL_30;
    }

    v19 = v8;
    v15 = 0;
    *a3 = v8;
    goto LABEL_35;
  }

LABEL_9:
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "found pre-existing re-key data, attempting to remove it.", buf, 2u);
      }
    }

    v12 = [(RTPersistenceDriver *)self keychainManager];
    v24 = 0;
    [v12 removeEncryptionKeyWithIdentifier:@"com.apple.routined.security.database.rekey" error:&v24];
    v10 = v24;

    if (v10)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "error while removing pre-existing re-key key from keychain, %@", buf, 0xCu);
      }

      if (a3)
      {
        v14 = v10;
        v15 = 0;
LABEL_24:
        *a3 = v10;
        goto LABEL_35;
      }

      goto LABEL_30;
    }
  }

  v16 = [(RTPersistenceDriver *)self keychainManager];
  v23 = 0;
  v15 = [v16 createSymmetricKeyWithSize:0 identifier:@"com.apple.routined.security.database.rekey" storeInKeychain:1 error:&v23];
  v10 = v23;

  if (v10)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v10;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "error while creating new re-key key, %@", buf, 0xCu);
    }

    if (a3)
    {
      v18 = v10;
      goto LABEL_24;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "successfully generated re-key data", buf, 2u);
    }
  }

LABEL_35:

  return v15;
}

- (BOOL)importSourceStore:(id)a3 sourceCoordinator:(id)a4 destinationStore:(id)a5 destinationCoordinator:(id)a6 managedObjectModel:(id)a7 configuration:(id)a8 error:(id *)a9
{
  v77 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v20;
  if (!v15)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceStore", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_42;
    }

    v37 = @"sourceStore";
    goto LABEL_41;
  }

  if (!v16)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceCoordinator", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_42;
    }

    v37 = @"sourceCoordinator";
    goto LABEL_41;
  }

  if (!v17)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationStore", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_42;
    }

    v37 = @"destinationStore";
    goto LABEL_41;
  }

  if (!v18)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationCoordinator", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_42;
    }

    v37 = @"destinationCoordinator";
    goto LABEL_41;
  }

  if (!v19)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectModel", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_42;
    }

    v37 = @"managedObjectModel";
LABEL_41:
    _RTErrorInvalidParameterCreate(v37);
    *a9 = v43 = 0;
    goto LABEL_43;
  }

  if (!v20)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration", buf, 2u);
    }

    if (a9)
    {
      v37 = @"configuration";
      goto LABEL_41;
    }

LABEL_42:
    v43 = 0;
    goto LABEL_43;
  }

  v69 = v20;
  v22 = MEMORY[0x277CCACA8];
  v23 = objc_opt_class();
  NSStringFromClass(v23);
  v24 = v68 = v19;
  v25 = NSStringFromSelector(a2);
  v26 = [v22 stringWithFormat:@"%@-%@", v24, v25];
  [v26 UTF8String];
  v67 = os_transaction_create();

  v19 = v68;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v56 = NSStringFromSelector(a2);
      *buf = 138412546;
      v74 = v55;
      v75 = 2112;
      v76 = v56;
      _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v28 = v69;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v65 = [v15 URL];
      v63 = [v65 path];
      v62 = [v63 lastPathComponent];
      v57 = [v62 stringByDeletingPathExtension];
      v60 = [v17 URL];
      v58 = [v60 path];
      v30 = [v58 lastPathComponent];
      v31 = [v30 stringByDeletingPathExtension];
      *buf = 138412546;
      v74 = v57;
      v75 = 2112;
      v76 = v31;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "preparing to import data from store, %@ to store, %@", buf, 0x16u);

      v28 = v69;
    }
  }

  v32 = [[RTPersistenceStoreImporter alloc] initWithManagedObjectModel:v68 configuration:v28 sourceStore:v15 sourceCoordinator:v16 destinationStore:v17 destinationCoordinator:v18];
  v33 = objc_opt_new();
  v72 = 0;
  v66 = v32;
  v34 = [(RTPersistenceStoreImporter *)v32 import:&v72];
  v35 = v72;
  v64 = v35;
  if (v35)
  {
    [v33 addObject:v35];
  }

  else if (v34 && [v28 isEqualToString:@"Cloud"])
  {
    v71 = 0;
    v45 = [v15 retrieveMetadataWithCoordinator:v16 error:&v71];
    v46 = v71;
    if (v46)
    {
      [v33 addObject:v46];
    }

    else
    {
      v59 = [v45 mutableCopy];
      v47 = [v45 allKeys];
      v48 = [v15 _validateKeys:v47];

      v61 = v48;
      [v59 removeObjectsForKeys:v48];
      v70 = 0;
      [v17 updateMetadata:v59 coordinator:v18 error:&v70];
      v49 = v70;
      if (v49)
      {
        [v33 addObject:v49];
      }

      v46 = 0;
    }
  }

  v50 = v33;
  v51 = _RTSafeArray();
  v52 = _RTMultiErrorCreate();

  if (a9)
  {
    v53 = v52;
    *a9 = v52;
  }

  v43 = v52 == 0;

  v21 = v69;
LABEL_43:

  return v43;
}

- (RTPersistenceMetricsDelegate)metricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);

  return WeakRetained;
}

- (void)persistenceStore:(id)a3 didPrepareWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: store";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_10;
  }

  if (!v7)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: context";
    goto LABEL_13;
  }

  v9 = [v6 storeBaseName];
  v10 = [v9 isEqualToString:@"Cloud-V2"];

  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [v12 initWithCString:RTAnalyticsEventPersistenceMirroringDeviceProfile encoding:1];
    v14 = [v11 stringWithFormat:@"com.apple.%@", v13];
    IsEventUsed = AnalyticsIsEventUsed();

    v16 = MEMORY[0x277CCACA8];
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = [v17 initWithCString:RTAnalyticsEventPersistenceMirroringAccountProfile encoding:1];
    v19 = [v16 stringWithFormat:@"com.apple.%@", v18];
    v20 = AnalyticsIsEventUsed();

    if ((IsEventUsed & 1) != 0 || v20)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __71__RTPersistenceDriver_Metrics__persistenceStore_didPrepareWithContext___block_invoke;
      v23[3] = &unk_2788CC490;
      v26 = IsEventUsed;
      v24 = v8;
      v25 = self;
      v27 = v20;
      [v24 performBlockAndWait:v23];
      v21 = v24;
LABEL_10:
    }
  }
}

void __71__RTPersistenceDriver_Metrics__persistenceStore_didPrepareWithContext___block_invoke(uint64_t a1)
{
  v174 = *MEMORY[0x277D85DE8];
  v2 = +[RTDeviceMO fetchRequest];
  [v2 setFetchBatchSize:10];
  v3 = *(a1 + 32);
  v170 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v170];
  v5 = v170;
  if (!v5 && *(a1 + 48) == 1)
  {
    v122 = v2;
    v6 = [MEMORY[0x277CBEAA8] date];
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v121 = v4;
    v7 = v4;
    v125 = [v7 countByEnumeratingWithState:&v166 objects:v173 count:16];
    v126 = v6;
    v8 = 0;
    v9 = 0;
    if (v125)
    {
      v141 = 0;
      obj = v7;
      v124 = *v167;
      do
      {
        v10 = 0;
        do
        {
          v140 = v8;
          if (*v167 != v124)
          {
            objc_enumerationMutation(obj);
          }

          v132 = v10;
          v11 = *(*(&v166 + 1) + 8 * v10);
          context = objc_autoreleasePoolPush();
          v148 = [v11 creationDate];
          v12 = MEMORY[0x277CCAC30];
          v129 = v11;
          v13 = [v11 identifier];
          v14 = [v12 predicateWithFormat:@"%K.%K == %@", @"device", @"identifier", v13];

          v15 = *(a1 + 40);
          v16 = +[RTLearnedPlaceMO entity];
          v17 = *(a1 + 32);
          v165 = 0;
          v18 = [v15 latestCloudManagedObjectWithEntityDescription:v16 predicate:v14 context:v17 error:&v165];

          v19 = *(a1 + 40);
          v20 = +[RTLearnedVisitMO entity];
          v21 = *(a1 + 32);
          v164 = 0;
          v22 = [v19 latestCloudManagedObjectWithEntityDescription:v20 predicate:v14 context:v21 error:&v164];

          v23 = *(a1 + 40);
          v24 = +[RTLearnedTransitionMO entity];
          v25 = *(a1 + 32);
          v163 = 0;
          v26 = [v23 latestCloudManagedObjectWithEntityDescription:v24 predicate:v14 context:v25 error:&v163];
          v27 = v163;

          v137 = v18;
          v28 = [v18 creationDate];
          v136 = v22;
          v29 = [v22 creationDate];
          v135 = v26;
          v30 = [v26 creationDate];
          v31 = objc_opt_new();
          v32 = v31;
          if (v28)
          {
            [v31 addObject:v28];
          }

          if (v29)
          {
            [v32 addObject:v29];
          }

          v139 = v9;
          v147 = v28;
          if (v30)
          {
            [v32 addObject:v30];
          }

          [v32 sortUsingSelector:sel_compare_];
          v144 = [v32 lastObject];

          v33 = *(a1 + 40);
          v34 = +[RTLearnedPlaceMO entity];
          v35 = *(a1 + 32);
          v162 = 0;
          v36 = [v33 earliestCloudManagedObjectWithEntityDescription:v34 predicate:v14 context:v35 error:&v162];

          v37 = *(a1 + 40);
          v38 = +[RTLearnedVisitMO entity];
          v39 = *(a1 + 32);
          v161 = 0;
          v40 = [v37 earliestCloudManagedObjectWithEntityDescription:v38 predicate:v14 context:v39 error:&v161];

          v41 = *(a1 + 40);
          v42 = +[RTLearnedTransitionMO entity];
          v43 = *(a1 + 32);
          v160 = 0;
          v44 = v14;
          v45 = [v41 earliestCloudManagedObjectWithEntityDescription:v42 predicate:v14 context:v43 error:&v160];
          v46 = v160;

          v133 = v36;
          v47 = [v36 creationDate];
          v130 = v40;
          v48 = [v40 creationDate];
          v131 = v45;
          v143 = [v45 creationDate];
          v49 = objc_opt_new();
          v50 = v49;
          if (v47)
          {
            [v49 addObject:v47];
          }

          if (v48)
          {
            [v50 addObject:v48];
          }

          v128 = v47;
          v134 = v32;
          v145 = v30;
          v146 = v29;
          v51 = v44;
          if (v143)
          {
            [v50 addObject:?];
          }

          v127 = v48;
          [v50 sortUsingSelector:sel_compare_];
          v52 = [v50 firstObject];

          v53 = *(a1 + 40);
          v54 = +[RTLearnedPlaceMO entity];
          v55 = *(a1 + 32);
          v159 = 0;
          v142 = [v53 countOfCloudManagedObjectWithEntityDescription:v54 predicate:v51 context:v55 error:&v159];

          v56 = *(a1 + 40);
          v57 = +[RTLearnedVisitMO entity];
          v58 = *(a1 + 32);
          v158 = 0;
          v59 = [v56 countOfCloudManagedObjectWithEntityDescription:v57 predicate:v51 context:v58 error:&v158];

          v60 = *(a1 + 40);
          v61 = +[RTLearnedTransitionMO entity];
          v62 = *(a1 + 32);
          v157 = 0;
          v63 = [v60 countOfCloudManagedObjectWithEntityDescription:v61 predicate:v51 context:v62 error:&v157];
          v64 = v157;

          v65 = objc_opt_new();
          v66 = MEMORY[0x277CCABB0];
          v67 = -1.0;
          v68 = -1.0;
          if (v148)
          {
            [v126 timeIntervalSinceDate:-1.0];
          }

          v69 = [v66 numberWithDouble:v68];
          [v65 setObject:v69 forKeyedSubscript:@"deviceAge"];

          v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v142];
          [v65 setObject:v70 forKeyedSubscript:@"devicePlaceCount"];

          v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59];
          [v65 setObject:v71 forKeyedSubscript:@"deviceVisitCount"];

          v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v63];
          [v65 setObject:v72 forKeyedSubscript:@"deviceTransitionCount"];

          v73 = [v129 deviceClass];

          [v65 setObject:v73 forKeyedSubscript:@"deviceClass"];
          v74 = MEMORY[0x277CCABB0];
          v6 = v126;
          if (v147)
          {
            [v126 timeIntervalSinceDate:?];
            v67 = v75;
          }

          v76 = [v74 numberWithDouble:v67];
          [v65 setObject:v76 forKeyedSubscript:@"deviceLastPlaceAge"];

          v77 = MEMORY[0x277CCABB0];
          v78 = -1.0;
          v79 = -1.0;
          if (v146)
          {
            [v126 timeIntervalSinceDate:-1.0];
          }

          v80 = [v77 numberWithDouble:v79];
          [v65 setObject:v80 forKeyedSubscript:@"deviceLastVisitAge"];

          v81 = MEMORY[0x277CCABB0];
          if (v145)
          {
            [v126 timeIntervalSinceDate:?];
            v78 = v82;
          }

          v83 = [v81 numberWithDouble:v78];
          [v65 setObject:v83 forKeyedSubscript:@"deviceLastTransitionAge"];

          v84 = MEMORY[0x277CCABB0];
          v85 = -1.0;
          v86 = -1.0;
          if (v144)
          {
            [v126 timeIntervalSinceDate:-1.0];
          }

          v87 = [v84 numberWithDouble:v86];
          [v65 setObject:v87 forKeyedSubscript:@"ageOfMostRecentRecord"];

          v88 = MEMORY[0x277CCABB0];
          if (v52)
          {
            [v126 timeIntervalSinceDate:v52];
            v85 = v89;
          }

          v141 += v142;
          v9 = v59 + v139;
          v8 = v63 + v140;
          v90 = [v88 numberWithDouble:v85];
          [v65 setObject:v90 forKeyedSubscript:@"ageOfOldestRecord"];

          v91 = objc_alloc(MEMORY[0x277CCACA8]);
          v92 = [v91 initWithCString:RTAnalyticsEventPersistenceMirroringDeviceProfile encoding:1];
          log_analytics_submission(v92, v65);
          v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v92];
          AnalyticsSendEvent();

          objc_autoreleasePoolPop(context);
          v10 = v132 + 1;
        }

        while (v125 != v132 + 1);
        v7 = obj;
        v125 = [obj countByEnumeratingWithState:&v166 objects:v173 count:16];
      }

      while (v125);
    }

    else
    {
      v141 = 0;
    }

    if (*(a1 + 49) == 1)
    {
      v94 = objc_opt_new();
      v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v141];
      [v94 setObject:v95 forKeyedSubscript:@"totalPlaceCount"];

      v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
      [v94 setObject:v96 forKeyedSubscript:@"totalVisitCount"];

      v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
      [v94 setObject:v97 forKeyedSubscript:@"totalTransitionCount"];

      v98 = objc_opt_new();
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v99 = v7;
      v100 = [v99 countByEnumeratingWithState:&v153 objects:v172 count:16];
      if (v100)
      {
        v101 = v100;
        v102 = *v154;
        do
        {
          for (i = 0; i != v101; ++i)
          {
            if (*v154 != v102)
            {
              objc_enumerationMutation(v99);
            }

            v104 = [*(*(&v153 + 1) + 8 * i) deviceClass];
            v105 = v104;
            if (v104)
            {
              v106 = v104;
            }

            else
            {
              v106 = @"Unknown";
            }

            v107 = v106;

            v108 = [v98 objectForKeyedSubscript:v107];
            v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v108, "unsignedIntegerValue") + 1}];
            [v98 setObject:v109 forKeyedSubscript:v107];
          }

          v101 = [v99 countByEnumeratingWithState:&v153 objects:v172 count:16];
        }

        while (v101);
      }

      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v110 = [v98 allKeys];
      v111 = [v110 countByEnumeratingWithState:&v149 objects:v171 count:16];
      if (v111)
      {
        v112 = v111;
        v113 = *v150;
        do
        {
          for (j = 0; j != v112; ++j)
          {
            if (*v150 != v113)
            {
              objc_enumerationMutation(v110);
            }

            v115 = *(*(&v149 + 1) + 8 * j);
            v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"countInDeviceClass", v115];
            if (v116)
            {
              v117 = [v98 objectForKeyedSubscript:v115];
              [v94 setObject:v117 forKeyedSubscript:v116];
            }
          }

          v112 = [v110 countByEnumeratingWithState:&v149 objects:v171 count:16];
        }

        while (v112);
      }

      v118 = objc_alloc(MEMORY[0x277CCACA8]);
      v119 = [v118 initWithCString:RTAnalyticsEventPersistenceMirroringAccountProfile encoding:1];
      log_analytics_submission(v119, v94);
      v120 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v119];
      AnalyticsSendEvent();

      v6 = v126;
    }

    v4 = v121;
    v2 = v122;
    v5 = 0;
  }
}

- (unint64_t)countOfCloudManagedObjectWithEntityDescription:(id)a3 predicate:(id)a4 context:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entityDescription", buf, 2u);
    }

    if (a6)
    {
      v15 = @"entityDescription";
LABEL_14:
      _RTErrorInvalidParameterCreate(v15);
      *a6 = v13 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (!v11)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (a6)
    {
      v15 = @"context";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  *buf = 0;
  v25 = buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__90;
  v28 = __Block_byref_object_dispose__90;
  v29 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __103__RTPersistenceDriver_Metrics__countOfCloudManagedObjectWithEntityDescription_predicate_context_error___block_invoke;
  v18[3] = &unk_2788C9200;
  v19 = v9;
  v20 = v10;
  v22 = &v30;
  v21 = v12;
  v23 = buf;
  [v21 performBlockAndWait:v18];
  if (a6)
  {
    *a6 = *(v25 + 5);
  }

  v13 = v31[3];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v30, 8);
LABEL_16:

  return v13;
}

void __103__RTPersistenceDriver_Metrics__countOfCloudManagedObjectWithEntityDescription_predicate_context_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = [*(a1 + 32) name];
  v4 = [v2 initWithEntityName:v3];

  [v4 setPredicate:*(a1 + 40)];
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v5 countForFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v7;
}

- (id)latestCloudManagedObjectWithEntityDescription:(id)a3 predicate:(id)a4 context:(id)a5 error:(id *)a6
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCAC98];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 sortDescriptorWithKey:@"creationDate" ascending:0];
  v18[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16 = [(RTPersistenceDriver *)self cloudManagedObjectWithEntityDescription:v13 predicate:v12 sortDescriptors:v15 context:v11 error:a6];

  return v16;
}

- (id)earliestCloudManagedObjectWithEntityDescription:(id)a3 predicate:(id)a4 context:(id)a5 error:(id *)a6
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCAC98];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 sortDescriptorWithKey:@"creationDate" ascending:1];
  v18[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16 = [(RTPersistenceDriver *)self cloudManagedObjectWithEntityDescription:v13 predicate:v12 sortDescriptors:v15 context:v11 error:a6];

  return v16;
}

- (id)cloudManagedObjectWithEntityDescription:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 context:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v11)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entityDescription", buf, 2u);
    }

    if (a7)
    {
      v18 = @"entityDescription";
LABEL_14:
      _RTErrorInvalidParameterCreate(v18);
      *a7 = v16 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (!v14)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (a7)
    {
      v18 = @"context";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__90;
  v38 = __Block_byref_object_dispose__90;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__90;
  v32 = __Block_byref_object_dispose__90;
  v33 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__RTPersistenceDriver_Metrics__cloudManagedObjectWithEntityDescription_predicate_sortDescriptors_context_error___block_invoke;
  v21[3] = &unk_2788CC4B8;
  v22 = v11;
  v23 = v13;
  v24 = v12;
  v25 = v15;
  v26 = &v28;
  v27 = buf;
  [v25 performBlockAndWait:v21];
  if (a7)
  {
    *a7 = v29[5];
  }

  v16 = *(v35 + 5);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(buf, 8);

LABEL_16:

  return v16;
}

void __112__RTPersistenceDriver_Metrics__cloudManagedObjectWithEntityDescription_predicate_sortDescriptors_context_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = [*(a1 + 32) name];
  v4 = [v2 initWithEntityName:v3];

  [v4 setSortDescriptors:*(a1 + 40)];
  [v4 setFetchLimit:1];
  [v4 setPredicate:*(a1 + 48)];
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = [v7 firstObject];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)persistenceStoreFailedWithError:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v11 = [[v3 alloc] initWithCapacity:1];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v4 code];

  v7 = [v5 numberWithInteger:v6];
  [v11 setObject:v7 forKeyedSubscript:@"reason"];
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v8 initWithCString:RTAnalyticsEventPersistenceStoreDestruction encoding:1];
  log_analytics_submission(v9, v11);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v9];
  AnalyticsSendEvent();
}

- (void)persistenceStoreResetSyncWithUserInfo:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v12 = [[v3 alloc] initWithCapacity:2];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE138]];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "code")}];

  [v12 setObject:v5 forKeyedSubscript:@"reason"];
  [v12 setObject:v8 forKeyedSubscript:@"code"];
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = [v9 initWithCString:RTAnalyticsEventPersistenceMirroringResetSync encoding:1];
  log_analytics_submission(v10, v12);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v10];
  AnalyticsSendEvent();
}

- (void)persistenceDriver:(id)a3 persistenceMigrator:(id)a4 didStartMigratingStore:(id)a5 withModelProvider:(id)a6
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(a2);
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@", &v9, 0xCu);
    }
  }
}

- (void)persistenceDriver:(id)a3 persistenceMigrator:(id)a4 didFinishMigratingStore:(id)a5 withModelProvider:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = MEMORY[0x277CBEB38];
  v9 = a4;
  v10 = [[v8 alloc] initWithCapacity:5];
  v11 = MEMORY[0x277CCABB0];
  v12 = [v9 migrationEndDate];
  v13 = [v9 migrationStartDate];
  [v12 timeIntervalSinceDate:v13];
  v14 = [v11 numberWithDouble:?];

  v15 = MEMORY[0x277CCABB0];
  v16 = [v7 URL];
  v17 = [v15 numberWithUnsignedInteger:{+[RTPersistenceManager storeTypeForURL:](RTPersistenceManager, "storeTypeForURL:", v16)}];

  v18 = MEMORY[0x277CCABB0];
  v19 = [v9 status];

  v20 = [v18 numberWithUnsignedInteger:v19];
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v33 = v7;
  v22 = [v7 URL];
  v23 = [v22 path];
  v34 = 0;
  v24 = [v21 attributesOfItemAtPath:v23 error:&v34];
  v25 = v34;

  if (v24)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v24, "fileSize")}];
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v31 = [v33 URL];
      v32 = [v31 path];
      *buf = 138412546;
      v36 = v32;
      v37 = 2112;
      v38 = v25;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "error fetching file attributes for store, %@, error, %@", buf, 0x16u);
    }

    v26 = &unk_28459E6B8;
  }

  [v10 setObject:v14 forKeyedSubscript:@"migrationDuration"];
  [v10 setObject:v17 forKeyedSubscript:@"storeType"];
  [v10 setObject:&unk_28459E6D0 forKeyedSubscript:@"didVacuum"];
  [v10 setObject:v26 forKeyedSubscript:@"storeSize"];
  [v10 setObject:v20 forKeyedSubscript:@"migrationStatus"];
  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = [v28 initWithCString:RTAnalyticsEventPersistenceStoreMigration encoding:1];
  log_analytics_submission(v29, v10);
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v29];
  AnalyticsSendEvent();
}

- (void)onDailyMetricsNotification:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v31 = [v4 name];
      *buf = 138412802;
      v34 = v31;
      v35 = 2080;
      v36 = "[RTPersistenceDriver(Metrics) onDailyMetricsNotification:]";
      v37 = 1024;
      v38 = 396;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [(RTPersistenceDriver *)self cloudSyncAuthorization];
    v12 = MEMORY[0x277CBEC28];
    v13 = MEMORY[0x277CBEC38];
    if (v11 == 2)
    {
      v14 = MEMORY[0x277CBEC38];
    }

    else
    {
      v14 = MEMORY[0x277CBEC28];
    }

    [v10 setObject:v14 forKeyedSubscript:@"cloudSyncAuthorization"];
    v15 = [(RTPersistenceDriver *)self currentAccount];

    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    [v10 setObject:v16 forKeyedSubscript:@"iCloudAccountPresent"];
    v17 = [(RTPersistenceDriver *)self defaultsManager];
    v18 = [v17 objectForKey:@"RTDefaultsPersistenceMirroringManagerBackgroundLastImportDate"];

    v19 = [(RTPersistenceDriver *)self defaultsManager];
    v20 = [v19 objectForKey:@"RTDefaultsPersistenceMirroringManagerBackgroundLastExportDate"];

    v21 = [MEMORY[0x277CBEAA8] date];
    [v21 timeIntervalSinceDate:v18];
    v23 = v22;
    [v21 timeIntervalSinceDate:v20];
    v25 = v24;
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
    [v10 setObject:v26 forKeyedSubscript:@"durationSinceLastImport"];

    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
    [v10 setObject:v27 forKeyedSubscript:@"durationSinceLastExport"];

    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v29 = [v28 initWithCString:RTAnalyticsEventPersistenceMirroringEngagement encoding:1];
    log_analytics_submission(v29, v10);
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v29];
    AnalyticsSendEvent();
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v32 = [v4 name];
      *buf = 138412290;
      v34 = v32;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
    }
  }
}

@end