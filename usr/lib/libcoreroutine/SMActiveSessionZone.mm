@interface SMActiveSessionZone
- (BOOL)_isActiveSessionDetailsFetchedFromCloudKitSinceBoot;
- (BOOL)_isActiveSessionDetailsLocalRecordExpired;
- (BOOL)isActiveSessionDetailsOutOfSync;
- (BOOL)isEligibleForCacheUpdateForCurrentDeviceIdentifier:(id)identifier sessionManagerState:(id)state;
- (SMActiveSessionZone)initWithQueue:(id)queue defaultsManager:(id)manager;
- (id)_createActiveSessionDetailsFromCKRecord:(id)record;
- (id)_getLatestActiveSessionDetailsLocalCopy;
- (id)_getSyncEngineMetadata;
- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context;
- (void)_addObserver:(id)observer;
- (void)_fetchActiveSessionDetailsRecordWithQos:(id)qos completion:(id)completion;
- (void)_fetchActiveSessionDetailsWithRetryCount:(unint64_t)count qosOptions:(id)options completion:(id)completion;
- (void)_handleFetchedRecordZoneChanges:(id)changes;
- (void)_handleStateUpdate:(id)update;
- (void)_initializeSyncEngine;
- (void)_notifyObserversForActiveSessionDetailsFetchAttemptedFromCKCompleted:(id)completed success:(BOOL)success error:(id)error;
- (void)_onActiveSessionDetailsFetchAttemptFromCKCompleted:(id)completed success:(BOOL)success error:(id)error;
- (void)_persistSyncEngineMetadata:(id)metadata;
- (void)_removeObserver:(id)observer;
- (void)_saveLatestActiveSessionDetailsLocalCopy;
- (void)_saveLatestActiveSessionDetailsStateToDefaults:(id)defaults;
- (void)_setup;
- (void)_updateActiveSessionDetailsFromCloudKitRecord;
- (void)_updateActiveSessionDetailsLocalCopy:(id)copy;
- (void)_writeActiveSessionDetails:(id)details pendingRetryCount:(int64_t)count qos:(id)qos completion:(id)completion;
- (void)_writeActiveSessionDetailsOnCloudToInitiateHandoff:(id)handoff handler:(id)handler;
- (void)_writeActiveSessionDetailsRecord:(id)record qos:(id)qos completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)checkActiveSessionDetailsZoneAvailibilityWithQos:(id)qos completion:(id)completion;
- (void)dealloc;
- (void)deleteActiveSessionDetailsRecordWithQos:(id)qos completion:(id)completion;
- (void)fetchActiveSessionDetailsRecordWithQos:(id)qos completion:(id)completion;
- (void)fetchActiveSessionDetailsWithHandler:(id)handler;
- (void)handleFetchedRecordZoneChanges:(id)changes;
- (void)handleStateUpdate:(id)update;
- (void)initializeSyncEngine;
- (void)removeObserver:(id)observer;
- (void)setup;
- (void)setupZoneWithQos:(id)qos completion:(id)completion;
- (void)syncEngine:(id)engine handleEvent:(id)event;
- (void)updateActiveSessionDetailsFromCloudKitRecord;
- (void)writeActiveSessionDetailOnCloudToInitiateHandoff:(id)handoff handler:(id)handler;
- (void)writeActiveSessionDetails:(id)details pendingRetryCount:(int64_t)count qos:(id)qos completion:(id)completion;
@end

@implementation SMActiveSessionZone

- (SMActiveSessionZone)initWithQueue:(id)queue defaultsManager:(id)manager
{
  v27 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  managerCopy = manager;
  if (queueCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        *buf = 138412546;
        v24 = v11;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@", buf, 0x16u);
      }
    }

    v13 = objc_alloc(MEMORY[0x277CBC5F8]);
    v14 = [v13 initWithZoneName:@"ActiveSessionZone" ownerName:*MEMORY[0x277CBBF28]];
    v15 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v14];
    v22.receiver = self;
    v22.super_class = SMActiveSessionZone;
    v16 = [(SMCloudKitZone *)&v22 initWithZone:v15 queue:queueCopy];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_defaultsManager, manager);
      v18 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      observers = v17->_observers;
      v17->_observers = v18;

      [(SMActiveSessionZone *)v17 setup];
    }

    self = v17;

    selfCopy = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setup
{
  queue = [(SMCloudKitZone *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SMActiveSessionZone_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  v13 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D4AAE0] zelkovaHandoffEnabled])
  {
    if ([RTBootInfo isFirstRunSinceBootWithDefaultsManager:self->_defaultsManager defaultsKey:@"SMDefaultsBootInfoActiveSessionDetailsIsFetchedSinceBootkey"])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v9 = 136315138;
          v10 = "[SMActiveSessionZone _setup]";
          _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, clearing up the defaults related to the local copy of ActiveSessionDetails", &v9, 0xCu);
        }
      }

      [(RTDefaultsManager *)self->_defaultsManager setObject:0 forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsKey"];
      [(RTDefaultsManager *)self->_defaultsManager setObject:0 forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchSuccessDateKey"];
      [(RTDefaultsManager *)self->_defaultsManager setObject:0 forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchFailureDateKey"];
      [(RTDefaultsManager *)self->_defaultsManager setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchedFromCloudKitSinceBootKey"];
      defaultsManager = [(SMActiveSessionZone *)self defaultsManager];
      [RTBootInfo setBootSessionIDWithDefaultsManager:defaultsManager defaultsKey:@"SMDefaultsBootInfoActiveSessionDetailsIsFetchedSinceBootkey"];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = NSStringFromSelector(a2);
          v9 = 138412546;
          v10 = v7;
          v11 = 1024;
          v12 = 1;
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, isFirstRunSinceBoot, %d, clearing ActiveSessionDetails local copy and defaults entries since device rebooted", &v9, 0x12u);
        }
      }
    }

    [(SMActiveSessionZone *)self initializeSyncEngine];
    if ([(SMActiveSessionZone *)self isActiveSessionDetailsOutOfSync])
    {
      [(SMActiveSessionZone *)self updateActiveSessionDetailsFromCloudKitRecord];
    }

    else
    {
      _getLatestActiveSessionDetailsLocalCopy = [(SMActiveSessionZone *)self _getLatestActiveSessionDetailsLocalCopy];
      [(SMActiveSessionZone *)self setLatestActiveSessionDetails:_getLatestActiveSessionDetailsLocalCopy];
    }
  }
}

- (void)dealloc
{
  syncEngine = self->_syncEngine;
  if (syncEngine)
  {
    self->_syncEngine = 0;
  }

  v4.receiver = self;
  v4.super_class = SMActiveSessionZone;
  [(SMCloudKitZone *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(SMCloudKitZone *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SMActiveSessionZone_addObserver___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(SMCloudKitZone *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SMActiveSessionZone_removeObserver___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)_addObserver:(id)observer
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138412802;
      v11 = v7;
      v12 = 2080;
      v13 = "[SMActiveSessionZone _addObserver:]";
      v14 = 2112;
      v15 = v9;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, %s, adding observer, %@", &v10, 0x20u);
    }
  }

  [(NSHashTable *)self->_observers addObject:observerCopy];
}

- (void)_removeObserver:(id)observer
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138412802;
      v11 = v7;
      v12 = 2080;
      v13 = "[SMActiveSessionZone _removeObserver:]";
      v14 = 2112;
      v15 = v9;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, %s, removing observer, %@", &v10, 0x20u);
    }
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
}

- (void)_notifyObserversForActiveSessionDetailsFetchAttemptedFromCKCompleted:(id)completed success:(BOOL)success error:(id)error
{
  successCopy = success;
  v36 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  errorCopy = error;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  observers = [(SMActiveSessionZone *)self observers];
  v11 = [observers countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v28;
    v15 = MEMORY[0x277D86220];
    *&v12 = 136315394;
    v25 = v12;
    do
    {
      v16 = 0;
      v26 = v13;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(observers);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v18 = v14;
            v19 = observers;
            v20 = errorCopy;
            v21 = successCopy;
            v22 = completedCopy;
            v23 = v15;
            v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = v25;
              v32 = "[SMActiveSessionZone _notifyObserversForActiveSessionDetailsFetchAttemptedFromCKCompleted:success:error:]";
              v33 = 2112;
              v34 = v17;
              _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "%s, calling the selector in the observer, %@", buf, 0x16u);
            }

            v15 = v23;
            completedCopy = v22;
            successCopy = v21;
            errorCopy = v20;
            observers = v19;
            v14 = v18;
            v13 = v26;
          }

          [v17 onActiveSessionDetailsFetchAttemptFromCKCompleted:completedCopy success:successCopy error:{errorCopy, v25}];
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [observers countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v13);
  }
}

- (void)setupZoneWithQos:(id)qos completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  qosCopy = qos;
  completionCopy = completion;
  v9 = completionCopy;
  if (!qosCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: qos";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_11;
  }

  if (!completionCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: completion";
    goto LABEL_13;
  }

  v10 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsSafetyCacheActiveSessionZoneTTLKey" value:&unk_2845A1E88];
  v23.receiver = self;
  v23.super_class = SMActiveSessionZone;
  v11 = [(SMCloudKitZone *)&v23 zone];
  [v11 setExpirationAfterTimeInterval:v10];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      zoneID = [(SMCloudKitZone *)self zoneID];
      zoneName = [zoneID zoneName];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138413058;
      v25 = zoneName;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,zone TTL set to %@ seconds", buf, 0x2Au);
    }
  }

  privateDatabase = [(SMCloudKitZone *)self privateDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __51__SMActiveSessionZone_setupZoneWithQos_completion___block_invoke;
  v20[3] = &unk_2788C4E00;
  v20[4] = self;
  v22 = a2;
  v21 = v9;
  [(SMCloudKitZone *)self saveZoneToDatabase:privateDatabase qos:qosCopy withCompletion:v20];

LABEL_11:
}

void __51__SMActiveSessionZone_setupZoneWithQos_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(*(a1 + 48));
        v15 = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,ActiveSessionZone saved successfully", &v15, 0x16u);
      }
    }

    [*(a1 + 32) setActiveSessionZoneAvailable:1];
    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(*(a1 + 48));
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to save ActiveSessionZone with error %@", &v15, 0x20u);
    }

    [*(a1 + 32) setActiveSessionZoneAvailable:0];
    v10 = *(*(a1 + 40) + 16);
  }

  v10();
}

- (void)checkActiveSessionDetailsZoneAvailibilityWithQos:(id)qos completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  qosCopy = qos;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(SMActiveSessionZone *)self activeSessionZoneAvailable])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = NSStringFromSelector(a2);
          *buf = 138412546;
          v20 = v11;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,Active Session Zone available", buf, 0x16u);
        }
      }

      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      privateDatabase = [(SMCloudKitZone *)self privateDatabase];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __83__SMActiveSessionZone_checkActiveSessionDetailsZoneAvailibilityWithQos_completion___block_invoke;
      v15[3] = &unk_2788C4E28;
      v15[4] = self;
      v18 = a2;
      v17 = completionCopy;
      v16 = qosCopy;
      [(SMCloudKitZone *)self fetchZoneFromDatabase:privateDatabase qos:v16 withCompletion:v15];
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __83__SMActiveSessionZone_checkActiveSessionDetailsZoneAvailibilityWithQos_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412546;
        v28 = v17;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,Active Session Zone fetch successful", buf, 0x16u);
      }
    }

    [*(a1 + 32) setActiveSessionZoneAvailable:1];
    v19 = *(*(a1 + 48) + 16);
    goto LABEL_18;
  }

  v6 = [v4 domain];
  if (![v6 isEqualToString:*MEMORY[0x277CBBF50]])
  {

    goto LABEL_15;
  }

  v7 = [v5 code];

  if (v7 != 26)
  {
LABEL_15:
    v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      v31 = 2112;
      v32 = v5;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,Fetching Active Session Zone failed with error %@", buf, 0x20u);
    }

    v19 = *(*(a1 + 48) + 16);
LABEL_18:
    v19();
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,Active Session Zone does not exist. Setting up Active Session Zone", buf, 0x16u);
    }
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__SMActiveSessionZone_checkActiveSessionDetailsZoneAvailibilityWithQos_completion___block_invoke_52;
  v25[3] = &unk_2788C4E00;
  v25[4] = v12;
  v24 = *(a1 + 48);
  v14 = v24;
  v26 = v24;
  [v12 setupZoneWithQos:v13 completion:v25];

LABEL_19:
}

void __83__SMActiveSessionZone_checkActiveSessionDetailsZoneAvailibilityWithQos_completion___block_invoke_52(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 48));
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,Failed to setup Active Session Zone with error %@", &v14, 0x20u);
    }

    [*(a1 + 32) setActiveSessionZoneAvailable:0];
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(*(a1 + 48));
        v14 = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,Setup Active Session Zone Successful", &v14, 0x16u);
      }
    }

    [*(a1 + 32) setActiveSessionZoneAvailable:1];
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

- (void)_writeActiveSessionDetailsRecord:(id)record qos:(id)qos completion:(id)completion
{
  recordCopy = record;
  qosCopy = qos;
  completionCopy = completion;
  v12 = completionCopy;
  if (!recordCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: activeSessionDetails";
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_7;
  }

  if (!completionCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: completion";
    goto LABEL_9;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SMActiveSessionZone__writeActiveSessionDetailsRecord_qos_completion___block_invoke;
  v15[3] = &unk_2788CFFA8;
  v16 = recordCopy;
  selfCopy = self;
  v20 = a2;
  v19 = v12;
  v18 = qosCopy;
  [(SMActiveSessionZone *)self checkActiveSessionDetailsZoneAvailibilityWithQos:v18 completion:v15];

  v13 = v16;
LABEL_7:
}

void __71__SMActiveSessionZone__writeActiveSessionDetailsRecord_qos_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 32) sessionID];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(*(a1 + 64));
      *buf = 138413058;
      v28 = v16;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed with error %@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBC5D0]);
    v7 = [*(a1 + 40) zoneID];
    v8 = [v6 initWithRecordName:@"ActiveSessionDetails" zoneID:v7];

    v9 = *(a1 + 40);
    v10 = [v9 privateDatabase];
    v11 = *(a1 + 48);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__SMActiveSessionZone__writeActiveSessionDetailsRecord_qos_completion___block_invoke_54;
    v21[3] = &unk_2788CFF80;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v22 = v12;
    v23 = v13;
    v20 = *(a1 + 56);
    v14 = v20;
    v26 = v20;
    v24 = v8;
    v25 = *(a1 + 48);
    v15 = v8;
    [v9 fetchRecord:v15 fromDatabase:v10 qos:v11 withCompletion:v21];
  }
}

void __71__SMActiveSessionZone__writeActiveSessionDetailsRecord_qos_completion___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 32) sessionID];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(*(a1 + 72));
        *buf = 138413058;
        v56 = v15;
        v57 = 2112;
        v58 = v17;
        v59 = 2112;
        v60 = v18;
        v61 = 2112;
        v62 = 0;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,ActiveSessionDetails record exists. Updating the record %@", buf, 0x2Au);
      }
    }

    [*(a1 + 40) setActiveSessionRecord:v5];
    goto LABEL_13;
  }

  if ([v6 code] == 11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) sessionID];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(*(a1 + 72));
        *buf = 138413058;
        v56 = v9;
        v57 = 2112;
        v58 = v11;
        v59 = 2112;
        v60 = v12;
        v61 = 2112;
        v62 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,ActiveSessionDetails record does not exist. Creating new record %@", buf, 0x2Au);
      }
    }

    v13 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActiveSessionDetailsRecord" recordID:*(a1 + 48)];
    [*(a1 + 40) setActiveSessionRecord:v13];

LABEL_13:
    v19 = [*(a1 + 32) sessionID];
    v20 = [v19 UUIDString];
    v21 = [*(a1 + 40) activeSessionRecord];
    v22 = [v21 encryptedValues];
    [v22 setObject:v20 forKeyedSubscript:@"SessionID"];

    v23 = [*(a1 + 32) activeDeviceIdentifier];
    v24 = [v23 UUIDString];
    v25 = [*(a1 + 40) activeSessionRecord];
    v26 = [v25 encryptedValues];
    [v26 setObject:v24 forKeyedSubscript:@"ActiveDeviceIdentifier"];

    v27 = [*(a1 + 32) cacheReleasedDate];
    v28 = [*(a1 + 40) activeSessionRecord];
    v29 = [v28 encryptedValues];
    [v29 setObject:v27 forKeyedSubscript:@"CacheReleasedDate"];

    v30 = [*(a1 + 32) scheduledSendGUID];
    v31 = [*(a1 + 40) activeSessionRecord];
    v32 = [v31 encryptedValues];
    [v32 setObject:v30 forKeyedSubscript:@"ScheduledSendGUID"];

    v33 = [*(a1 + 32) receiverHandles];
    v34 = [*(a1 + 40) activeSessionRecord];
    v35 = [v34 encryptedValues];
    [v35 setObject:v33 forKeyedSubscript:@"ReceiverHandles"];

    v36 = *(a1 + 40);
    v37 = [v36 activeSessionRecord];
    v54 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v39 = [*(a1 + 40) privateDatabase];
    v40 = *(a1 + 56);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __71__SMActiveSessionZone__writeActiveSessionDetailsRecord_qos_completion___block_invoke_57;
    v50[3] = &unk_2788C5A70;
    v41 = *(a1 + 32);
    v42 = *(a1 + 40);
    v51 = v41;
    v52 = v42;
    v49 = *(a1 + 64);
    v43 = v49;
    v53 = v49;
    [v36 saveRecords:v38 toDatabase:v39 qos:v40 withCompletion:v50];

    goto LABEL_17;
  }

  v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = [*(a1 + 32) sessionID];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = NSStringFromSelector(*(a1 + 72));
    *buf = 138413058;
    v56 = v45;
    v57 = 2112;
    v58 = v47;
    v59 = 2112;
    v60 = v48;
    v61 = 2112;
    v62 = v7;
    _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to fetch record to write active session details with error %@", buf, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();
LABEL_17:
}

void __71__SMActiveSessionZone__writeActiveSessionDetailsRecord_qos_completion___block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) sessionID];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 56));
      v18 = 138413058;
      v19 = v14;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed with error %@", &v18, 0x2Au);
    }

    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 32) sessionID];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(*(a1 + 56));
        v18 = 138412802;
        v19 = v10;
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,activeSessionDetails record saved successfully", &v18, 0x20u);
      }
    }

    [*(a1 + 40) _updateActiveSessionDetailsLocalCopy:*(a1 + 32)];
    v8 = *(*(a1 + 48) + 16);
  }

  v8();
}

- (void)writeActiveSessionDetails:(id)details pendingRetryCount:(int64_t)count qos:(id)qos completion:(id)completion
{
  detailsCopy = details;
  qosCopy = qos;
  completionCopy = completion;
  queue = [(SMCloudKitZone *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SMActiveSessionZone_writeActiveSessionDetails_pendingRetryCount_qos_completion___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = detailsCopy;
  v20 = completionCopy;
  countCopy = count;
  v19 = qosCopy;
  v14 = completionCopy;
  v15 = qosCopy;
  v16 = detailsCopy;
  dispatch_async(queue, block);
}

- (void)_writeActiveSessionDetails:(id)details pendingRetryCount:(int64_t)count qos:(id)qos completion:(id)completion
{
  detailsCopy = details;
  qosCopy = qos;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__SMActiveSessionZone__writeActiveSessionDetails_pendingRetryCount_qos_completion___block_invoke;
  v17[3] = &unk_2788CFFD0;
  objc_copyWeak(v21, &location);
  v17[4] = self;
  v21[1] = a2;
  v14 = completionCopy;
  v20 = v14;
  v21[2] = count;
  v15 = detailsCopy;
  v18 = v15;
  v16 = qosCopy;
  v19 = v16;
  [(SMActiveSessionZone *)self _writeActiveSessionDetailsRecord:v15 qos:v16 completion:v17];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __83__SMActiveSessionZone__writeActiveSessionDetails_pendingRetryCount_qos_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(*(a1 + 72));
      v31 = 138412546;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@, activeSessionZone object was destroyed", &v31, 0x16u);
    }

    v11 = *(*(a1 + 56) + 16);
    goto LABEL_24;
  }

  if (!v5 && a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(*(a1 + 72));
        v31 = 138412546;
        v32 = v9;
        v33 = 2112;
        v34 = v10;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,active session details stored", &v31, 0x16u);
      }
    }

    v11 = *(*(a1 + 56) + 16);
    goto LABEL_24;
  }

  if (![SMCloudKitZone shouldRetryCkError:v5])
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(*(a1 + 72));
      if ([(__CFString *)v5 code]== 26)
      {
        v23 = &stru_284528390;
      }

      else
      {
        v23 = @"non ";
      }

      v31 = 138413314;
      v32 = v21;
      v33 = 2112;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v5;
      v39 = 2048;
      v40 = [(__CFString *)v5 code];
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to write active session details with %@recoverable error %@, error.code %ld", &v31, 0x34u);
    }

    if ([(__CFString *)v5 code]!= 26)
    {
      goto LABEL_23;
    }

    [*(a1 + 32) setActiveSessionZoneAvailable:0];
  }

  v14 = *(a1 + 80);
  v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v14 <= 0)
  {
    if (v16)
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(*(a1 + 72));
      v31 = 138412802;
      v32 = v29;
      v33 = 2112;
      v34 = v30;
      v35 = 2112;
      v36 = v5;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator:%@,%@,failed to write active session details after retries with recoverable error %@", &v31, 0x20u);
    }

LABEL_23:
    v11 = *(*(a1 + 56) + 16);
LABEL_24:
    v11();
    goto LABEL_25;
  }

  if (v16)
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(*(a1 + 72));
    v27 = *(a1 + 80);
    v31 = 138413058;
    v32 = v25;
    v33 = 2112;
    v34 = v26;
    v35 = 2112;
    v36 = v5;
    v37 = 1024;
    LODWORD(v38) = v27;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator:%@,%@,failed to write active session details with recoverable error %@, pendingRetryCount %d, retrying...", &v31, 0x26u);
  }

  [WeakRetained _writeActiveSessionDetails:*(a1 + 40) pendingRetryCount:*(a1 + 80) - 1 qos:*(a1 + 48) completion:*(a1 + 56)];
LABEL_25:
}

- (void)updateActiveSessionDetailsFromCloudKitRecord
{
  queue = [(SMCloudKitZone *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SMActiveSessionZone_updateActiveSessionDetailsFromCloudKitRecord__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateActiveSessionDetailsFromCloudKitRecord
{
  v4 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SMActiveSessionZone__updateActiveSessionDetailsFromCloudKitRecord__block_invoke;
  v5[3] = &unk_2788CFFF8;
  v5[4] = self;
  v5[5] = a2;
  [(SMActiveSessionZone *)self _fetchActiveSessionDetailsWithRetryCount:2 qosOptions:v4 completion:v5];
}

void __68__SMActiveSessionZone__updateActiveSessionDetailsFromCloudKitRecord__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 40));
      v13 = v12;
      *v15 = 138413314;
      v14 = @"NO";
      *&v15[4] = v11;
      if (a3)
      {
        v14 = @"YES";
      }

      *&v15[12] = 2112;
      *&v15[14] = v12;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@, activeSessionDetails, %@, success %@, fetchError, %@", v15, 0x34u);
    }
  }

  [*(a1 + 32) _onActiveSessionDetailsFetchAttemptFromCKCompleted:v7 success:a3 error:{v8, *v15}];
}

- (void)fetchActiveSessionDetailsRecordWithQos:(id)qos completion:(id)completion
{
  qosCopy = qos;
  completionCopy = completion;
  queue = [(SMCloudKitZone *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SMActiveSessionZone_fetchActiveSessionDetailsRecordWithQos_completion___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = qosCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = qosCopy;
  dispatch_async(queue, block);
}

- (void)_fetchActiveSessionDetailsRecordWithQos:(id)qos completion:(id)completion
{
  qosCopy = qos;
  completionCopy = completion;
  v9 = completionCopy;
  if (!qosCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: qos";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_10;
  }

  if (!completionCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: completion";
    goto LABEL_12;
  }

  v10 = objc_alloc(MEMORY[0x277CBC5D0]);
  zoneID = [(SMCloudKitZone *)self zoneID];
  v12 = [v10 initWithRecordName:@"ActiveSessionDetails" zoneID:zoneID];

  v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v14 = os_signpost_id_make_with_pointer(v13, v12);

  v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SMHandoffSessionFetchActiveSessionDetailsCkLatency", " enableTelemetry=YES ", buf, 2u);
  }

  privateDatabase = [(SMCloudKitZone *)self privateDatabase];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__SMActiveSessionZone__fetchActiveSessionDetailsRecordWithQos_completion___block_invoke;
  v19[3] = &unk_2788D0020;
  v21 = v14;
  v22 = a2;
  v19[4] = self;
  v20 = v9;
  [(SMCloudKitZone *)self fetchRecord:v12 fromDatabase:privateDatabase qos:qosCopy withCompletion:v19];

LABEL_10:
}

void __74__SMActiveSessionZone__fetchActiveSessionDetailsRecordWithQos_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SMHandoffSessionFetchActiveSessionDetailsCkLatency", " enableTelemetry=YES ", buf, 2u);
  }

  if (v6)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v42 = v33;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v6;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to fetch ActiveSessionDetailsRecord with error %@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v5 encryptedValues];
        v13 = [v12 objectForKeyedSubscript:@"SessionID"];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412802;
        v42 = v13;
        v43 = 2112;
        v44 = v15;
        v45 = 2112;
        v46 = v16;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,ActiveSessionDetailsRecord fetched successfully", buf, 0x20u);
      }
    }

    v17 = [*(a1 + 32) _createActiveSessionDetailsFromCKRecord:v5];
    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = objc_opt_class();
          v40 = NSStringFromClass(v19);
          v20 = NSStringFromSelector(*(a1 + 56));
          v21 = [v17 sessionID];
          v22 = [v17 activeDeviceIdentifier];
          v38 = [v17 cacheReleasedDate];
          [v38 stringFromDate];
          v23 = v39 = v18;
          v24 = [v17 scheduledSendGUID];
          v25 = [v17 receiverHandles];
          *buf = 138413826;
          v42 = v40;
          v43 = 2112;
          v44 = v20;
          v45 = 2112;
          v46 = v21;
          v47 = 2112;
          v48 = v22;
          v49 = 2112;
          v50 = v23;
          v51 = 2112;
          v52 = v24;
          v53 = 2112;
          v54 = v25;
          _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,Fetched ActiveSessionDetails from CK ,sessionID,%@,activeDeviceIdentifier,%@,cacheReleasedDate,%@,scheduledSendGUID,%@,receiverHandles%@", buf, 0x48u);

          v18 = v39;
        }
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412546;
        v42 = v36;
        v43 = 2112;
        v44 = v37;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,missing fields in activeSessionDetails record", buf, 0x16u);
      }

      v27 = *(a1 + 40);
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277D01448];
      v55 = *MEMORY[0x277CCA450];
      v56[0] = @"missing fields in activeSessionDetails record";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
      v31 = [v28 errorWithDomain:v29 code:7 userInfo:v30];
      (*(v27 + 16))(v27, 0, 0, v31);
    }
  }
}

- (void)_fetchActiveSessionDetailsWithRetryCount:(unint64_t)count qosOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__SMActiveSessionZone__fetchActiveSessionDetailsWithRetryCount_qosOptions_completion___block_invoke;
  v13[3] = &unk_2788D0048;
  objc_copyWeak(v16, &location);
  v16[1] = a2;
  v11 = completionCopy;
  v16[2] = count;
  v15 = v11;
  v13[4] = self;
  v12 = optionsCopy;
  v14 = v12;
  [(SMActiveSessionZone *)self _fetchActiveSessionDetailsRecordWithQos:v12 completion:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __86__SMActiveSessionZone__fetchActiveSessionDetailsWithRetryCount_qosOptions_completion___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(*(a1 + 64));
      v33 = 138412546;
      v34 = v24;
      v35 = 2112;
      v36 = v25;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator:%@,%@, activeSessionZone released during zone fetch", &v33, 0x16u);
    }

    v14 = *(*(a1 + 48) + 16);
    goto LABEL_28;
  }

  if (a3)
  {
    if (!v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = NSStringFromSelector(*(a1 + 64));
          v33 = 138412546;
          v34 = v12;
          v35 = 2112;
          v36 = v13;
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,active session details fetched and stored", &v33, 0x16u);
        }
      }

      v14 = *(*(a1 + 48) + 16);
      goto LABEL_28;
    }
  }

  else if ([v8 code] == 11 || objc_msgSend(v8, "code") == 26)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(*(a1 + 64));
        v33 = 138413314;
        v34 = v18;
        v35 = 2112;
        v36 = v19;
        v37 = 1024;
        *v38 = 0;
        *&v38[4] = 2048;
        *&v38[6] = [v8 code];
        v39 = 2112;
        v40 = v8;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@, There is no active session details and correspondingly no active session because: active session details success, %{Bool}d, error.code %ld, error is %@", &v33, 0x30u);
      }
    }

    v14 = *(*(a1 + 48) + 16);
    goto LABEL_28;
  }

  if (![SMCloudKitZone shouldRetryCkError:v8])
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_27:

      v14 = *(*(a1 + 48) + 16);
LABEL_28:
      v14();
      goto LABEL_29;
    }

LABEL_30:
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = NSStringFromSelector(*(a1 + 64));
    v33 = 138412802;
    v34 = v31;
    v35 = 2112;
    v36 = v32;
    v37 = 2112;
    *v38 = v8;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator:%@,%@,failed to fetch active session details after retries with recoverable error %@", &v33, 0x20u);

    goto LABEL_27;
  }

  v20 = *(a1 + 72);
  v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  if (!v20)
  {
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (v22)
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(*(a1 + 64));
    v29 = *(a1 + 72);
    v33 = 138413058;
    v34 = v27;
    v35 = 2112;
    v36 = v28;
    v37 = 2112;
    *v38 = v8;
    *&v38[8] = 1024;
    *&v38[10] = v29;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator:%@,%@,failed to fetch active session details with recoverable error %@, pendingRetryCount %d, retrying...", &v33, 0x26u);
  }

  [*(a1 + 32) _fetchActiveSessionDetailsWithRetryCount:*(a1 + 72) - 1 qosOptions:*(a1 + 40) completion:*(a1 + 48)];
LABEL_29:
}

- (void)_updateActiveSessionDetailsLocalCopy:(id)copy
{
  [(SMActiveSessionZone *)self setLatestActiveSessionDetails:copy];

  [(SMActiveSessionZone *)self _saveLatestActiveSessionDetailsLocalCopy];
}

- (void)deleteActiveSessionDetailsRecordWithQos:(id)qos completion:(id)completion
{
  v23[1] = *MEMORY[0x277D85DE8];
  qosCopy = qos;
  completionCopy = completion;
  v9 = completionCopy;
  if (!qosCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: qos";
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_7;
  }

  if (!completionCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: completion";
    goto LABEL_9;
  }

  v10 = objc_alloc(MEMORY[0x277CBC5D0]);
  zoneID = [(SMCloudKitZone *)self zoneID];
  v12 = [v10 initWithRecordName:@"ActiveSessionDetails" zoneID:zoneID];

  v23[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  privateDatabase = [(SMCloudKitZone *)self privateDatabase];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__SMActiveSessionZone_deleteActiveSessionDetailsRecordWithQos_completion___block_invoke;
  v17[3] = &unk_2788C5A70;
  v18 = v12;
  selfCopy = self;
  v21 = a2;
  v20 = v9;
  v15 = v12;
  [(SMCloudKitZone *)self deleteRecords:v13 fromDatabase:privateDatabase qos:qosCopy withCompletion:v17];

LABEL_7:
}

void __74__SMActiveSessionZone_deleteActiveSessionDetailsRecordWithQos_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 56));
      v17 = 138413058;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to delete ActiveSessionDetailsRecord with ID %@ with error %@", &v17, 0x2Au);
    }

    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(*(a1 + 56));
        v17 = 138412546;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,ActiveSessionDetailsRecord deleted successfully", &v17, 0x16u);
      }
    }

    v8 = *(*(a1 + 48) + 16);
  }

  v8();
}

- (void)initializeSyncEngine
{
  queue = [(SMCloudKitZone *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SMActiveSessionZone_initializeSyncEngine__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_initializeSyncEngine
{
  v26 = *MEMORY[0x277D85DE8];
  _getSyncEngineMetadata = [(SMActiveSessionZone *)self _getSyncEngineMetadata];
  v5 = objc_alloc(MEMORY[0x277CBC6F0]);
  privateDatabase = [(SMCloudKitZone *)self privateDatabase];
  v7 = [v5 initWithDatabase:privateDatabase stateSerialization:_getSyncEngineMetadata delegate:self];

  [v7 setApsMachServiceName:*MEMORY[0x277D4AC48]];
  [v7 setPriority:2];
  [v7 setUseOpportunisticPushTopic:1];
  v8 = [objc_alloc(MEMORY[0x277CBC6E8]) initWithConfiguration:v7];
  syncEngine = self->_syncEngine;
  self->_syncEngine = v8;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = v13;
      v15 = self->_syncEngine;
      v16 = @"YES";
      v18 = 138413058;
      v19 = v12;
      if (v15)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      if (!_getSyncEngineMetadata)
      {
        v16 = @"NO";
      }

      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@, syncEngine initialized succesfully: %@, with metadata %@", &v18, 0x2Au);
    }
  }
}

- (id)_getSyncEngineMetadata
{
  v25 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMActiveSessionZone *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheActiveSessionZoneCKSyncEngineMetadata"];

  if (v4)
  {
    v18 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v18];
    v6 = v18;
    if (v6)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        *buf = 138412546;
        v20 = v13;
        v21 = 2112;
        v22 = v14;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@, Failed to decode metadata for CKSyncEngineState", buf, 0x16u);
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;

    v10 = v9;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@, Failed to retrieve CKSyncEngineState serialized data, %@", buf, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)_persistSyncEngineMetadata:(id)metadata
{
  v24 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = metadataCopy;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator:%@,%@,ActiveSessionDetails, metadata %@", buf, 0x20u);
    }
  }

  v17 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:metadataCopy requiringSecureCoding:1 error:&v17];
  v8 = v17;
  if (!v8)
  {
    defaultsManager = [(SMActiveSessionZone *)self defaultsManager];
    [defaultsManager setObject:v7 forKey:@"RTDefaultsSafetyCacheActiveSessionZoneCKSyncEngineMetadata"];

    defaultsManager2 = [(SMActiveSessionZone *)self defaultsManager];
    date = [MEMORY[0x277CBEAA8] date];
    [defaultsManager2 setObject:date forKey:@"RTDefaultsSafetyCacheActiveSessionZoneCKSyncEngineMetadataDate"];
    goto LABEL_9;
  }

  defaultsManager2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(defaultsManager2, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    date = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    *buf = 138412802;
    v19 = date;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = metadataCopy;
    _os_log_error_impl(&dword_2304B3000, defaultsManager2, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,ActiveSessionDetails, Failed to encode metadata, %@", buf, 0x20u);

LABEL_9:
  }
}

- (void)syncEngine:(id)engine handleEvent:(id)event
{
  v30 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  eventCopy = event;
  if (!eventCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v11 = NSStringFromClass(v21);
      v12 = NSStringFromSelector(a2);
      v22 = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v13 = "#SafetyCache,Initiator:%@,%@, invalid event was nil";
      v14 = v9;
      v15 = 22;
      goto LABEL_17;
    }

LABEL_6:

    goto LABEL_7;
  }

  if (self->_syncEngine != engineCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v22 = 138412802;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = engineCopy;
      v13 = "#SafetyCache,Initiator:%@,%@, Sync engine %@ doesn't match internal reference.";
      v14 = v9;
      v15 = 32;
LABEL_17:
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v13, &v22, v15);

      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      v22 = 138413058;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = eventCopy;
      v28 = 2048;
      type = [(CKSyncEngine *)eventCopy type];
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator, %@,%@, CKSyncEngine incoming event %@, %lu", &v22, 0x2Au);
    }
  }

  type2 = [(CKSyncEngine *)eventCopy type];
  if (type2 == 3)
  {
    [(SMActiveSessionZone *)self handleFetchedRecordZoneChanges:eventCopy];
  }

  else if (!type2)
  {
    [(SMActiveSessionZone *)self handleStateUpdate:eventCopy];
  }

LABEL_7:
}

- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context
{
  v81 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  contextCopy = context;
  if (self->_syncEngine == engineCopy)
  {
    aSelector = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = NSStringFromSelector(a2);
        *buf = 138412546;
        v74 = v50;
        v75 = 2112;
        v76 = v51;
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator, %@,%@", buf, 0x16u);

        a2 = aSelector;
      }
    }

    v53 = contextCopy;
    v54 = engineCopy;
    options = [contextCopy options];
    zoneIDs = [options zoneIDs];

    state = [(CKSyncEngine *)self->_syncEngine state];
    pendingRecordZoneChanges = [state pendingRecordZoneChanges];

    selfCopy = self;
    v58 = zoneIDs;
    if (zoneIDs)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v16 = pendingRecordZoneChanges;
      v17 = [v16 countByEnumeratingWithState:&v68 objects:v80 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v69;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v69 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v68 + 1) + 8 * i);
            recordID = [v21 recordID];
            zoneID = [recordID zoneID];
            v24 = [v58 containsObject:zoneID];

            if (v24)
            {
              [v15 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v68 objects:v80 count:16];
        }

        while (v18);
      }

      pendingRecordZoneChanges = [MEMORY[0x277CBEA60] arrayWithArray:v15];

      self = selfCopy;
    }

    v25 = objc_alloc(MEMORY[0x277CBC730]);
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __70__SMActiveSessionZone_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke;
    v67[3] = &unk_2788D0070;
    v67[4] = self;
    v67[5] = a2;
    v52 = pendingRecordZoneChanges;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v55 = [v25 initWithPendingChanges:pendingRecordZoneChanges recordProvider:v67];
    recordsToSave = [v55 recordsToSave];
    v27 = [recordsToSave countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v64;
      v30 = MEMORY[0x277D86220];
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v64 != v29)
          {
            objc_enumerationMutation(recordsToSave);
          }

          v32 = *(*(&v63 + 1) + 8 * j);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = NSStringFromSelector(aSelector);
              *buf = 138412803;
              v74 = v35;
              v75 = 2112;
              v76 = v36;
              v77 = 2113;
              v78 = v32;
              _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator, %@,%@, nextRecordZoneChangeBatch, record to save: %{private}@", buf, 0x20u);
            }
          }
        }

        v28 = [recordsToSave countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v28);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    recordIDsToDelete = [v55 recordIDsToDelete];
    v38 = [recordIDsToDelete countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v60;
      v41 = MEMORY[0x277D86220];
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v60 != v40)
          {
            objc_enumerationMutation(recordIDsToDelete);
          }

          v43 = *(*(&v59 + 1) + 8 * k);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              v47 = NSStringFromSelector(aSelector);
              *buf = 138412803;
              v74 = v46;
              v75 = 2112;
              v76 = v47;
              v77 = 2113;
              v78 = v43;
              _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator, %@,%@, nextRecordZoneChangeBatch, record to delete: %{private}@", buf, 0x20u);
            }
          }
        }

        v39 = [recordIDsToDelete countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v39);
    }

    contextCopy = v53;
    engineCopy = v54;
    v9 = v55;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __70__SMActiveSessionZone_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator, %@,%@, CKSyncEngineRecordZoneChangeBatch, callback", &v7, 0x16u);
    }
  }

  return 0;
}

- (void)handleStateUpdate:(id)update
{
  updateCopy = update;
  queue = [(SMCloudKitZone *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SMActiveSessionZone_handleStateUpdate___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

- (void)_handleStateUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  stateUpdateEvent = [updateCopy stateUpdateEvent];
  v7 = stateUpdateEvent;
  if (stateUpdateEvent)
  {
    stateSerialization = [stateUpdateEvent stateSerialization];
    [(SMActiveSessionZone *)self _persistSyncEngineMetadata:stateSerialization];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    stateSerialization = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(stateSerialization, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = updateCopy;
      _os_log_impl(&dword_2304B3000, stateSerialization, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,ActiveSessionDetails, Called back for invalid CKSyncEngineStateUpdateEvent (%@)", &v12, 0x20u);
    }
  }

LABEL_4:
}

- (void)handleFetchedRecordZoneChanges:(id)changes
{
  changesCopy = changes;
  queue = [(SMCloudKitZone *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SMActiveSessionZone_handleFetchedRecordZoneChanges___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = changesCopy;
  v6 = changesCopy;
  dispatch_async(queue, v7);
}

- (void)_handleFetchedRecordZoneChanges:(id)changes
{
  v23 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = changesCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator:%@,%@,event, %@", buf, 0x20u);
    }
  }

  fetchedRecordZoneChangesEvent = [changesCopy fetchedRecordZoneChangesEvent];
  v11 = fetchedRecordZoneChangesEvent;
  if (fetchedRecordZoneChangesEvent)
  {
    modifications = [fetchedRecordZoneChangesEvent modifications];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__SMActiveSessionZone__handleFetchedRecordZoneChanges___block_invoke;
    v16[3] = &unk_2788D0098;
    v16[4] = self;
    v16[5] = a2;
    [modifications enumerateObjectsUsingBlock:v16];
  }

  else
  {
    modifications = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(modifications, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = changesCopy;
      _os_log_error_impl(&dword_2304B3000, modifications, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator:%@,%@, Called back for invalid CKSyncEngineFetchedRecordZoneChangesEvent %@", buf, 0x20u);
    }
  }
}

void __55__SMActiveSessionZone__handleFetchedRecordZoneChanges___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 recordID];
  v5 = [v4 recordName];
  v6 = [v5 isEqualToString:@"ActiveSessionDetails"];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(*(a1 + 40));
        v11 = [*(a1 + 32) latestActiveSessionDetails];
        v20 = 138412802;
        v21 = v9;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator:%@,%@ A Push Notifications updated ActiveSessionDetails, %@", &v20, 0x20u);
      }
    }

    v12 = *(a1 + 32);
    v13 = [v12 _createActiveSessionDetailsFromCKRecord:v3];
    [v12 _onActiveSessionDetailsFetchAttemptFromCKCompleted:v13 success:1 error:0];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 40));
      v18 = [v3 recordID];
      v19 = [v18 recordName];
      v20 = 138413058;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v3;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator:%@,%@,ActiveSessionDetails, ckrecord %@, activeSessionDetailsRecordID %@", &v20, 0x2Au);
    }
  }
}

- (void)_onActiveSessionDetailsFetchAttemptFromCKCompleted:(id)completed success:(BOOL)success error:(id)error
{
  successCopy = success;
  v21 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 136315906;
      v14 = "[SMActiveSessionZone _onActiveSessionDetailsFetchAttemptFromCKCompleted:success:error:]";
      v15 = 2112;
      v16 = completedCopy;
      v17 = 1024;
      v18 = successCopy;
      v19 = 2112;
      v20 = errorCopy;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, fetchedActiveSessionDetails, %@, success, %{Bool}d, error, %@", &v13, 0x26u);
    }
  }

  if (errorCopy || !successCopy)
  {
    if (!successCopy && ([errorCopy code] == 11 || objc_msgSend(errorCopy, "code") == 26))
    {
      [(SMActiveSessionZone *)self setLatestActiveSessionDetails:0];
      [(SMActiveSessionZone *)self _saveLatestActiveSessionDetailsStateToDefaults:0];
    }

    else
    {
      defaultsManager = [(SMActiveSessionZone *)self defaultsManager];
      date = [MEMORY[0x277CBEAA8] date];
      [defaultsManager setObject:date forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchFailureDateKey"];
    }
  }

  else
  {
    [(SMActiveSessionZone *)self _updateActiveSessionDetailsLocalCopy:completedCopy];
  }

  [(SMActiveSessionZone *)self _notifyObserversForActiveSessionDetailsFetchAttemptedFromCKCompleted:completedCopy success:successCopy error:errorCopy];
}

- (id)_createActiveSessionDetailsFromCKRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    encryptedValues = [recordCopy encryptedValues];
    v6 = [encryptedValues objectForKeyedSubscript:@"SessionID"];
    v7 = [v4 initWithUUIDString:v6];

    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    encryptedValues2 = [recordCopy encryptedValues];
    v10 = [encryptedValues2 objectForKeyedSubscript:@"ActiveDeviceIdentifier"];
    v11 = [v8 initWithUUIDString:v10];

    v12 = 0;
    if (v7 && v11)
    {
      v13 = objc_alloc(MEMORY[0x277D4AA58]);
      encryptedValues3 = [recordCopy encryptedValues];
      v15 = [encryptedValues3 objectForKeyedSubscript:@"CacheReleasedDate"];
      encryptedValues4 = [recordCopy encryptedValues];
      v17 = [encryptedValues4 objectForKeyedSubscript:@"ScheduledSendGUID"];
      encryptedValues5 = [recordCopy encryptedValues];
      v19 = [encryptedValues5 objectForKeyedSubscript:@"ReceiverHandles"];
      v12 = [v13 initWithSessionID:v7 activeDeviceIdentifier:v11 cacheReleasedDate:v15 scheduledSendGUID:v17 receiverHandles:v19];
    }
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: record", v22, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)isActiveSessionDetailsOutOfSync
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(SMActiveSessionZone *)self _isActiveSessionDetailsLocalRecordExpired])
  {
    v3 = 1;
  }

  else
  {
    v3 = ![(SMActiveSessionZone *)self _isActiveSessionDetailsFetchedFromCloudKitSinceBoot];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 136315394;
      v8 = "[SMActiveSessionZone isActiveSessionDetailsOutOfSync]";
      v9 = 2112;
      v10 = v6;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%s, ActiveSessionDetails isOutOfSync, %@", &v7, 0x16u);
    }
  }

  return v3;
}

- (BOOL)_isActiveSessionDetailsLocalRecordExpired
{
  v14 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMActiveSessionZone *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchSuccessDateKey"];

  if (v3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v3];
    v6 = v5 < 1800.0;
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = @"YES";
      if (v6)
      {
        v9 = @"NO";
      }

      v10 = 136315394;
      v11 = "[SMActiveSessionZone _isActiveSessionDetailsLocalRecordExpired]";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%s, ActiveSessionDetails isExpired, %@", &v10, 0x16u);
    }
  }

  return !v6;
}

- (BOOL)_isActiveSessionDetailsFetchedFromCloudKitSinceBoot
{
  v12 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMActiveSessionZone *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchedFromCloudKitSinceBootKey"];
  bOOLValue = [v3 BOOLValue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = @"NO";
      if (bOOLValue)
      {
        v7 = @"YES";
      }

      v8 = 136315394;
      v9 = "[SMActiveSessionZone _isActiveSessionDetailsFetchedFromCloudKitSinceBoot]";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, ActiveSessionDetails isRecordFetchedFromCKSinceBoot, %@", &v8, 0x16u);
    }
  }

  return bOOLValue;
}

- (BOOL)isEligibleForCacheUpdateForCurrentDeviceIdentifier:(id)identifier sessionManagerState:(id)state
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  stateCopy = state;
  latestActiveSessionDetails = [(SMActiveSessionZone *)self latestActiveSessionDetails];
  sessionID = [latestActiveSessionDetails sessionID];
  configuration = [stateCopy configuration];

  sessionID2 = [configuration sessionID];
  if ([sessionID isEqual:sessionID2])
  {
    latestActiveSessionDetails2 = [(SMActiveSessionZone *)self latestActiveSessionDetails];
    activeDeviceIdentifier = [latestActiveSessionDetails2 activeDeviceIdentifier];
    v14 = [activeDeviceIdentifier isEqual:identifierCopy];
  }

  else
  {
    v14 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (v14)
      {
        v16 = @"YES";
      }

      v18 = 136315394;
      v19 = "[SMActiveSessionZone isEligibleForCacheUpdateForCurrentDeviceIdentifier:sessionManagerState:]";
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, isEligible, %@", &v18, 0x16u);
    }
  }

  return v14;
}

- (void)writeActiveSessionDetailOnCloudToInitiateHandoff:(id)handoff handler:(id)handler
{
  handoffCopy = handoff;
  handlerCopy = handler;
  queue = [(SMCloudKitZone *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SMActiveSessionZone_writeActiveSessionDetailOnCloudToInitiateHandoff_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = handoffCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = handoffCopy;
  dispatch_async(queue, block);
}

- (void)_writeActiveSessionDetailsOnCloudToInitiateHandoff:(id)handoff handler:(id)handler
{
  handoffCopy = handoff;
  handlerCopy = handler;
  v9 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__SMActiveSessionZone__writeActiveSessionDetailsOnCloudToInitiateHandoff_handler___block_invoke;
  v12[3] = &unk_2788CCDC8;
  objc_copyWeak(v16, &location);
  v16[1] = a2;
  v10 = handlerCopy;
  v15 = v10;
  v11 = handoffCopy;
  v13 = v11;
  selfCopy = self;
  [(SMActiveSessionZone *)self _writeActiveSessionDetails:v11 pendingRetryCount:3 qos:v9 completion:v12];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __82__SMActiveSessionZone__writeActiveSessionDetailsOnCloudToInitiateHandoff_handler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 32) sessionID];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(*(a1 + 64));
        v12 = v11;
        *v16 = 138413314;
        v13 = @"NO";
        *&v16[4] = v8;
        if (a2)
        {
          v13 = @"YES";
        }

        *&v16[12] = 2112;
        *&v16[14] = v10;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v13;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Active Session Details stored in Cloud, success, %@, error, %@", v16, 0x34u);
      }
    }

    [*(a1 + 40) _updateActiveSessionDetailsLocalCopy:{*(a1 + 32), *v16}];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(*(a1 + 64));
      *v16 = 138412290;
      *&v16[4] = v15;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@,object has been cleaned up", v16, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchActiveSessionDetailsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMCloudKitZone *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SMActiveSessionZone_fetchActiveSessionDetailsWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  block[4] = self;
  v9 = handlerCopy;
  v10 = a2;
  v7 = handlerCopy;
  dispatch_async(queue, block);
}

void __60__SMActiveSessionZone_fetchActiveSessionDetailsWithHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isActiveSessionDetailsOutOfSync])
  {
    v2 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
    v3 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__SMActiveSessionZone_fetchActiveSessionDetailsWithHandler___block_invoke_2;
    v8[3] = &unk_2788D00C0;
    v8[4] = v3;
    *v6 = *(a1 + 40);
    v4 = v6[0];
    v9 = *v6;
    [v3 _fetchActiveSessionDetailsWithRetryCount:2 qosOptions:v2 completion:v8];
  }

  else
  {
    v5 = *(a1 + 40);
    v7 = [*(a1 + 32) _getLatestActiveSessionDetailsLocalCopy];
    (*(v5 + 16))(v5, v7, 1, 0);
  }
}

void __60__SMActiveSessionZone_fetchActiveSessionDetailsWithHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = v12;
      *v15 = 138413314;
      v14 = @"NO";
      *&v15[4] = v11;
      if (a3)
      {
        v14 = @"YES";
      }

      *&v15[12] = 2112;
      *&v15[14] = v12;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@, activeSessionDetails, %@, success %@, fetchError, %@", v15, 0x34u);
    }
  }

  [*(a1 + 32) _onActiveSessionDetailsFetchAttemptFromCKCompleted:v7 success:a3 error:{v8, *v15}];
  (*(*(a1 + 40) + 16))();
}

- (void)_saveLatestActiveSessionDetailsLocalCopy
{
  v24 = *MEMORY[0x277D85DE8];
  latestActiveSessionDetails = [(SMActiveSessionZone *)self latestActiveSessionDetails];

  if (!latestActiveSessionDetails)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[SMActiveSessionZone _saveLatestActiveSessionDetailsLocalCopy]";
      v18 = 1024;
      LODWORD(v19) = 1036;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.latestActiveSessionDetails (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = MEMORY[0x277CCAAB0];
  latestActiveSessionDetails2 = [(SMActiveSessionZone *)self latestActiveSessionDetails];
  v15 = 0;
  v8 = [v6 archivedDataWithRootObject:latestActiveSessionDetails2 requiringSecureCoding:1 error:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      latestActiveSessionDetails3 = [(SMActiveSessionZone *)self latestActiveSessionDetails];
      *buf = 138413058;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = latestActiveSessionDetails3;
      v22 = 2112;
      v23 = v9;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@, Failed to serialize activeSessionDetails, %@, error, %@", buf, 0x2Au);
    }
  }

  [(SMActiveSessionZone *)self _saveLatestActiveSessionDetailsStateToDefaults:v8];
}

- (void)_saveLatestActiveSessionDetailsStateToDefaults:(id)defaults
{
  defaultsManager = self->_defaultsManager;
  defaultsCopy = defaults;
  [(RTDefaultsManager *)defaultsManager setObject:MEMORY[0x277CBEC38] forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchedFromCloudKitSinceBootKey"];
  defaultsManager = [(SMActiveSessionZone *)self defaultsManager];
  [defaultsManager setObject:defaultsCopy forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsKey"];

  defaultsManager2 = [(SMActiveSessionZone *)self defaultsManager];
  date = [MEMORY[0x277CBEAA8] date];
  [defaultsManager2 setObject:date forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchSuccessDateKey"];

  defaultsManager3 = [(SMActiveSessionZone *)self defaultsManager];
  [defaultsManager3 setObject:0 forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchFailureDateKey"];
}

- (id)_getLatestActiveSessionDetailsLocalCopy
{
  v25 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMActiveSessionZone *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheActiveSessionDetailsKey"];

  if (v4)
  {
    v18 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v18];
    v6 = v18;
    if (v6)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        *buf = 138412802;
        v20 = v13;
        v21 = 2112;
        v22 = v14;
        v23 = 2112;
        v24 = v6;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@, Failed to decode metadata for SMActiveSessionDetails, error, %@", buf, 0x20u);
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;

    v10 = v9;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@, Failed to retrieve serialized data from defaults", buf, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

@end