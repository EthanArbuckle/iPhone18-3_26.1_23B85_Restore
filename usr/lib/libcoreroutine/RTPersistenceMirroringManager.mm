@interface RTPersistenceMirroringManager
- (BOOL)_calculateStoreShouldResetFromChangeHistoryCount:(unint64_t)a3;
- (BOOL)_calculateStoreShouldResetFromTransactionHistory:(id)a3;
- (BOOL)_evaluatePersistentHistoryLengthWithManagedObjectContext:(id)a3 shouldResetSync:(BOOL *)a4 error:(id *)a5;
- (BOOL)_fetchDatabaseChangesForDatabase:(id)a3 outputURL:(id)a4 error:(id *)a5;
- (BOOL)_fetchZoneChangesForDatabase:(id)a3 outputURL:(id)a4 error:(id *)a5;
- (BOOL)_generateDiagnosticFilesAtURL:(id)a3 error:(id *)a4;
- (BOOL)_shouldResetForChangeCountForManagedObjectContext:(id)a3 currentExporterToken:(id)a4 changeRequestError:(id *)a5;
- (BOOL)_transactionHistorySizeError:(id *)a3;
- (BOOL)disableMirroringForPerProcessMemoryLimitViolation:(id)a3 platform:(id)a4;
- (BOOL)exportMirroringIsAvailableWithExpirationEnforcer:(id)a3 expirationDate:(id)a4 context:(id)a5 error:(id *)a6;
- (BOOL)mirroringRequest:(id)a3 didFailWithError:(id)a4;
- (RTPersistenceMirroringManager)initWithAccountManager:(id)a3 defaultsManager:(id)a4 mirroringPolicies:(id)a5 persistenceCloudDeletionEnforcer:(id)a6 persistenceExpirationEnforcer:(id)a7 persistenceManager:(id)a8 platform:(id)a9 reachabilityManager:(id)a10 timerManager:(id)a11 xpcActivityManager:(id)a12;
- (RTPersistenceMirroringManager)initWithAccountManager:(id)a3 defaultsManager:(id)a4 persistenceManager:(id)a5 platform:(id)a6 reachabilityManager:(id)a7 xpcActivityManager:(id)a8;
- (RTPersistenceMirroringMetricsDelegate)metricsDelegate;
- (id)_fetchHistoryTransactionBatchFromContext:(id)a3 store:(id)a4 fromToken:(id)a5 limit:(unint64_t)a6 error:(id *)a7;
- (id)currentExporterTokenWithManagedObjectContext:(id)a3 error:(id *)a4;
- (id)optionsForQualityOfService:(int64_t)a3;
- (id)persistenceOperationMetricWithMirroringRequest:(id)a3 lastMirroringTransactionDate:(id)a4 recordsChanged:(unint64_t)a5 error:(id)a6;
- (id)transactionHistoryCountRequestWithManagedObjectContext:(id)a3 currentExporterToken:(id)a4;
- (id)transactionHistoryFetchRequestWithManagedObjectContext:(id)a3 currentExporterToken:(id)a4;
- (id)transactionHistoryRequestWithManagedObjectContext:(id)a3 currentExporterToken:(id)a4;
- (int64_t)_mirroringDelegateState;
- (unint64_t)_changeCountForManagedObjectContext:(id)a3 currentExporterToken:(id)a4 error:(id *)a5;
- (unint64_t)_countChangesInTransactionsFromContext:(id)a3 store:(id)a4 startingToken:(id)a5 error:(id *)a6;
- (void)_dequeueNextMirroringRequest;
- (void)_enqueueMirroringRequest:(id)a3 context:(id)a4;
- (void)_finalizeMirroringRequest:(id)a3;
- (void)_onCloudSyncAuthorizationChange:(id)a3;
- (void)_onMirroringDelegateInitialization:(id)a3;
- (void)_onReachabilityChange:(id)a3;
- (void)_performExportWithHandler:(id)a3;
- (void)_performImportWithHandler:(id)a3;
- (void)_performMirroringRequestWithType:(int64_t)a3 affectedStore:(id)a4 qualityOfService:(int64_t)a5 managedObjectContext:(id)a6 handler:(id)a7;
- (void)_persistenceAvailabilityDidChange:(id)a3;
- (void)_prepareRequestForRetryAttempt:(id)a3 retryInterval:(double)a4;
- (void)_scheduleRetryAttemptForRequest:(id)a3 referenceDate:(id)a4 handler:(id)a5;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_startMirroringRequest:(id)a3 context:(id)a4;
- (void)_updateExportingAvailability:(unint64_t)a3;
- (void)_updateMirroringDelegateState;
- (void)collectMetricsFromMirroringRequest:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)fetchDiagnosticLogsWithHandler:(id)a3;
- (void)mirroringManager:(id)a3 exceededHistoryType:(unint64_t)a4 count:(unint64_t)a5 limit:(unint64_t)a6 hasExceeded:(BOOL)a7;
- (void)mirroringRequestDidBegin:(id)a3;
- (void)mirroringRequestDidSucceed:(id)a3;
- (void)onCloudSyncAuthorizationChange:(id)a3;
- (void)onMirroringDelegateInitialization:(id)a3;
- (void)onReachabilityChange:(id)a3;
- (void)performExportWithHandler:(id)a3;
- (void)performMirroringRequestWithType:(int64_t)a3 affectedStore:(id)a4 qualityOfService:(int64_t)a5 handler:(id)a6;
- (void)performMirroringRequestWithType:(int64_t)a3 affectedStore:(id)a4 qualityOfService:(int64_t)a5 managedObjectContext:(id)a6 handler:(id)a7;
- (void)performPeriodicSyncWithHandler:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)persistenceAvailabilityDidChange:(id)a3;
- (void)registerForXPCActivities;
- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5;
- (void)setMirroringAttemptMapValue:(BOOL)a3 buildVersion:(id)a4;
- (void)unregisterForXPCActivities;
@end

@implementation RTPersistenceMirroringManager

- (RTPersistenceMirroringManager)initWithAccountManager:(id)a3 defaultsManager:(id)a4 persistenceManager:(id)a5 platform:(id)a6 reachabilityManager:(id)a7 xpcActivityManager:(id)a8
{
  v29[3] = *MEMORY[0x277D85DE8];
  v13 = a8;
  v14 = a7;
  v26 = a6;
  v15 = a5;
  v25 = a4;
  v24 = a3;
  v23 = [[RTPersistenceMirroringPolicy alloc] initWithQualityOfService:1];
  v22 = [[RTPersistenceMirroringPolicy alloc] initWithQualityOfService:2];
  v21 = [[RTPersistenceMirroringPolicy alloc] initWithQualityOfService:3];
  v16 = objc_opt_new();
  v17 = [[RTPersistenceExpirationEnforcer alloc] initWithPersistenceManager:v15];
  v29[0] = v23;
  v29[1] = v22;
  v29[2] = v21;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v19 = objc_opt_new();
  v28 = [(RTPersistenceMirroringManager *)self initWithAccountManager:v24 defaultsManager:v25 mirroringPolicies:v18 persistenceCloudDeletionEnforcer:v16 persistenceExpirationEnforcer:v17 persistenceManager:v15 platform:v26 reachabilityManager:v14 timerManager:v19 xpcActivityManager:v13];

  return v28;
}

- (RTPersistenceMirroringManager)initWithAccountManager:(id)a3 defaultsManager:(id)a4 mirroringPolicies:(id)a5 persistenceCloudDeletionEnforcer:(id)a6 persistenceExpirationEnforcer:(id)a7 persistenceManager:(id)a8 platform:(id)a9 reachabilityManager:(id)a10 timerManager:(id)a11 xpcActivityManager:(id)a12
{
  v67 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v48 = a4;
  v18 = a4;
  v19 = a5;
  v20 = v17;
  v53 = v19;
  v49 = a6;
  v59 = a6;
  v50 = a7;
  v58 = a7;
  v57 = a8;
  v56 = a9;
  v55 = a10;
  v54 = a11;
  v21 = a12;
  v52 = v21;
  if (!v17)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: accountManager";
LABEL_38:
    _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, v44, buf, 2u);
    goto LABEL_39;
  }

  if (!v18)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_38;
  }

  if (!v59)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: persistenceCloudDeletionEnforcer";
    goto LABEL_38;
  }

  if (!v58)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: persistenceExpirationEnforcer";
    goto LABEL_38;
  }

  if (!v57)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: persistenceManager";
    goto LABEL_38;
  }

  if (!v56)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: platform";
    goto LABEL_38;
  }

  if (!v55)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: reachabilityManager";
    goto LABEL_38;
  }

  if (!v54)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_38;
  }

  if (!v21)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v44 = "Invalid parameter not satisfying: xpcActivityManager";
      goto LABEL_38;
    }

LABEL_39:

    v42 = 0;
    v41 = self;
    goto LABEL_40;
  }

  v46 = v17;
  v64.receiver = self;
  v64.super_class = RTPersistenceMirroringManager;
  v22 = [(RTNotifier *)&v64 init];
  if (v22)
  {
    v23 = [RTInvocationDispatcher alloc];
    v24 = [(RTNotifier *)v22 queue];
    v25 = [(RTInvocationDispatcher *)v23 initWithQueue:v24];
    dispatcher = v22->_dispatcher;
    v22->_dispatcher = v25;

    objc_storeStrong(&v22->_accountManager, a3);
    objc_storeStrong(&v22->_defaultsManager, v48);
    objc_storeStrong(&v22->_persistenceCloudDeletionEnforcer, v49);
    objc_storeStrong(&v22->_persistenceExpirationEnforcer, v50);
    objc_storeStrong(&v22->_persistenceManager, a8);
    objc_storeStrong(&v22->_reachabilityManager, a10);
    objc_storeStrong(&v22->_platform, a9);
    objc_storeStrong(&v22->_timerManager, a11);
    objc_storeStrong(&v22->_xpcActivityManager, a12);
    v27 = objc_opt_new();
    pendingMirroringRequests = v22->_pendingMirroringRequests;
    v22->_pendingMirroringRequests = v27;

    v29 = objc_opt_new();
    retryTimers = v22->_retryTimers;
    v22->_retryTimers = v29;

    v22->_cloudSyncAuthorizationState = 0;
    v22->_currentReachability = 0;
    objc_storeWeak(&v22->_metricsDelegate, v22);
    v22->_syncDisabledForPerProcessMemoryLimit = [(RTPersistenceMirroringManager *)v22 disableMirroringForPerProcessMemoryLimitViolation:v22->_defaultsManager platform:v22->_platform];
    v31 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v53, "count")}];
    mirroringPolicies = v22->_mirroringPolicies;
    v22->_mirroringPolicies = v31;

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v33 = v53;
    v34 = [v33 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v61;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v61 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v60 + 1) + 8 * i);
          v39 = v22->_mirroringPolicies;
          v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v38, "qualityOfService")}];
          [(NSMutableDictionary *)v39 setObject:v38 forKey:v40];
        }

        v35 = [v33 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v35);
    }

    [(RTService *)v22 setup];
  }

  v41 = v22;
  v42 = v41;
  v20 = v46;
LABEL_40:

  return v42;
}

- (void)_setup
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_onMirroringDelegateInitialization_ name:@"RTPersistenceStoreMirroringDelegateDidInitializeNotificationName" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_onMirroringDelegateInitialization_ name:@"RTPersistenceStoreMirroringDelegateFailedToInitializeNotificationName" object:0];

  persistenceManager = self->_persistenceManager;
  v6 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
  [(RTNotifier *)persistenceManager addObserver:self selector:sel_persistenceAvailabilityDidChange_ name:v6];

  accountManager = self->_accountManager;
  v8 = +[(RTNotification *)RTAccountManagerNotificationCloudSyncAuthorizationStateChanged];
  [(RTNotifier *)accountManager addObserver:self selector:sel_onCloudSyncAuthorizationChange_ name:v8];

  reachabilityManager = self->_reachabilityManager;
  v10 = +[(RTNotification *)RTReachabilityMonitorNotificationReachabilityChanged];
  [(RTNotifier *)reachabilityManager addObserver:self selector:sel_onReachabilityChange_ name:v10];

  v11 = self->_accountManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__RTPersistenceMirroringManager__setup__block_invoke;
  v14[3] = &unk_2788C7CB8;
  v14[4] = self;
  [(RTAccountManager *)v11 fetchCloudSyncAuthorizationState:v14];
  v12 = self->_reachabilityManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__RTPersistenceMirroringManager__setup__block_invoke_3;
  v13[3] = &unk_2788C7CE0;
  v13[4] = self;
  [(RTReachabilityManager *)v12 fetchCurrentReachability:v13];
  [(RTPersistenceMirroringManager *)self registerForXPCActivities];
}

void __39__RTPersistenceMirroringManager__setup__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__RTPersistenceMirroringManager__setup__block_invoke_2;
  v5[3] = &unk_2788C52E8;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void __39__RTPersistenceMirroringManager__setup__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__RTPersistenceMirroringManager__setup__block_invoke_4;
  v5[3] = &unk_2788C52E8;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  dispatch_async(v4, v5);
}

- (BOOL)exportMirroringIsAvailableWithExpirationEnforcer:(id)a3 expirationDate:(id)a4 context:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a6)
  {
    if (v9)
    {
      if (v10)
      {
        if (v11)
        {
          v24 = 0;
          v13 = [v9 collectRecordIDsByTypeExpiredBeforeDate:v10 ownedByThisDevice:0 context:v11 error:&v24];
          v14 = v24;
          if (v14 || [v13 count])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "Suspending export mirroring due to expired records.", buf, 2u);
              }
            }

            v16 = 0;
          }

          else
          {
            v16 = 1;
          }

          v17 = v14;
          *a6 = v14;

          goto LABEL_26;
        }

        v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
        }

        v21 = @"context";
      }

      else
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expirationDate", buf, 2u);
        }

        v21 = @"expirationDate";
      }

      *a6 = _RTErrorInvalidParameterCreate(v21);
      v16 = 1;
      goto LABEL_26;
    }

    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expirationEnforcer", buf, 2u);
    }

    _RTErrorInvalidParameterCreate(@"expirationEnforcer");
    *a6 = v16 = 0;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v16 = 0;
  }

LABEL_26:

  return v16;
}

- (BOOL)disableMirroringForPerProcessMemoryLimitViolation:(id)a3 platform:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      LOBYTE(v11) = 1;
      goto LABEL_12;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: defaultsManager";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_11;
  }

  if (!v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: platform";
    goto LABEL_14;
  }

  v8 = [v5 objectForKey:@"RTDefaultsPersistenceMirroringManagerMirroringAttemptsByBuildMap"];
  v9 = [v7 buildVersion];
  v10 = [v8 objectForKey:v9];
  v11 = [v10 BOOLValue];
  if (v11)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "Disabling mirroring due to previous failures.", buf, 2u);
    }

    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = [v13 initWithCString:RTAnalyticsEventPersistenceMirroringMemoryLimitExceeded encoding:1];
    v23 = @"buildVersion";
    v24[0] = v9;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    log_analytics_submission(v14, v15);

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v14];
    v21 = @"buildVersion";
    v22 = v9;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    AnalyticsSendEvent();
  }

LABEL_12:
  return v11;
}

- (void)registerForXPCActivities
{
  v4 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:1 priority:1 requireNetworkConnectivity:3 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:1 allowBattery:86400.0 powerNap:43200.0];
  [(RTXPCActivityCriteria *)v4 setCpuIntensive:1];
  [(RTXPCActivityCriteria *)v4 setExpectedDuration:120.0];
  objc_initWeak(location, self);
  xpcActivityManager = self->_xpcActivityManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke;
  v14[3] = &unk_2788C6A18;
  v15[1] = a2;
  objc_copyWeak(v15, location);
  [(RTXPCActivityManager *)xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.persistence.mirroring.background" criteria:v4 handler:v14];
  v6 = [[RTXPCActivityCriteria alloc] initWithInterval:2 gracePeriod:1 priority:0 requireNetworkConnectivity:3 requireInexpensiveNetworkConnectivity:1 networkTransferDirection:1 allowBattery:1.79769313e308 powerNap:60.0];
  [(RTXPCActivityCriteria *)v6 setCpuIntensive:1];
  [(RTXPCActivityCriteria *)v6 setUserRequestedBackgroundTask:1];
  v7 = [(RTPersistenceMirroringManager *)self xpcActivityManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_86;
  v12[3] = &unk_2788C4E78;
  v13[1] = a2;
  v12[4] = self;
  objc_copyWeak(v13, location);
  [v7 registerActivityWithIdentifier:@"com.apple.routined.persistence.mirroring.backup" criteria:v6 handler:v12];

  v8 = [[RTXPCActivityCriteria alloc] initWithInterval:2 gracePeriod:1 priority:1 requireNetworkConnectivity:3 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:1 allowBattery:0.0 powerNap:300.0];
  [(RTXPCActivityCriteria *)v8 setCpuIntensive:1];
  [(RTXPCActivityCriteria *)v8 setPostInstall:1];
  [(RTXPCActivityCriteria *)v8 setRequiresBuddyComplete:1];
  v9 = [(RTPersistenceMirroringManager *)self xpcActivityManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_88;
  v10[3] = &unk_2788C4E78;
  v11[1] = a2;
  v10[4] = self;
  objc_copyWeak(v11, location);
  [v9 registerActivityWithIdentifier:@"com.apple.routined.persistence.mirroring.post-install" criteria:v8 handler:v10];

  objc_destroyWeak(v11);
  objc_destroyWeak(v13);

  objc_destroyWeak(v15);
  objc_destroyWeak(location);
}

void __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_83;
      v10[3] = &unk_2788C4780;
      v12 = *(a1 + 40);
      v11 = v5;
      [WeakRetained performPeriodicSyncWithHandler:v10];
    }

    else if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

void __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_83(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to sync, error, %@", &v7, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, 0);
  }
}

void __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    v9 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_87;
    block[3] = &unk_2788C7D08;
    objc_copyWeak(v14, (a1 + 40));
    v10 = v5;
    v11 = *(a1 + 48);
    v13 = v10;
    v14[1] = v11;
    dispatch_async(v9, block);

    objc_destroyWeak(v14);
  }
}

void __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_2;
    v4[3] = &unk_2788C4780;
    v6 = *(a1 + 48);
    v5 = *(a1 + 32);
    [WeakRetained _performExportWithHandler:v4];
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0);
    }
  }
}

void __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to sync, error, %@", &v7, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, 0);
  }
}

void __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_88(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    v9 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_89;
    block[3] = &unk_2788C7D08;
    objc_copyWeak(v14, (a1 + 40));
    v10 = v5;
    v11 = *(a1 + 48);
    v13 = v10;
    v14[1] = v11;
    dispatch_async(v9, block);

    objc_destroyWeak(v14);
  }
}

void __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_2_90;
    v4[3] = &unk_2788C4780;
    v6 = *(a1 + 48);
    v5 = *(a1 + 32);
    [WeakRetained performPeriodicSyncWithHandler:v4];
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0);
    }
  }
}

void __57__RTPersistenceMirroringManager_registerForXPCActivities__block_invoke_2_90(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed to sync, error, %@", &v7, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, 0);
  }
}

- (void)unregisterForXPCActivities
{
  [(RTXPCActivityManager *)self->_xpcActivityManager unregisterActivityWithIdentifier:@"com.apple.routined.persistence.mirroring.background" handler:0];
  [(RTXPCActivityManager *)self->_xpcActivityManager unregisterActivityWithIdentifier:@"com.apple.routined.persistence.mirroring.backup" handler:0];
  xpcActivityManager = self->_xpcActivityManager;

  [(RTXPCActivityManager *)xpcActivityManager unregisterActivityWithIdentifier:@"com.apple.routined.persistence.mirroring.post-install" handler:0];
}

- (void)_shutdownWithHandler:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(RTPersistenceMirroringManager *)self unregisterForXPCActivities];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_retryTimers allKeys];
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

        v10 = [(NSMutableDictionary *)self->_retryTimers objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v9)];
        [v10 invalidate];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_retryTimers removeAllObjects];
  retryTimers = self->_retryTimers;
  self->_retryTimers = 0;

  [(NSMutableArray *)self->_pendingMirroringRequests removeAllObjects];
  pendingMirroringRequests = self->_pendingMirroringRequests;
  self->_pendingMirroringRequests = 0;

  [(RTNotifier *)self->_persistenceManager removeObserver:self];
  [(RTInvocationDispatcher *)self->_dispatcher shutdown];
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 removeObserver:self];

  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  [(RTPersistenceMirroringManager *)self unregisterForXPCActivities];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_retryTimers allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_retryTimers objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v7)];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_retryTimers removeAllObjects];
  retryTimers = self->_retryTimers;
  self->_retryTimers = 0;

  [(NSMutableArray *)self->_pendingMirroringRequests removeAllObjects];
  pendingMirroringRequests = self->_pendingMirroringRequests;
  self->_pendingMirroringRequests = 0;

  [(RTNotifier *)self->_persistenceManager removeObserver:self];
  [(RTInvocationDispatcher *)self->_dispatcher shutdown];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 removeObserver:self];

  v12.receiver = self;
  v12.super_class = RTPersistenceMirroringManager;
  [(RTPersistenceMirroringManager *)&v12 dealloc];
}

- (void)performPeriodicSyncWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__RTPersistenceMirroringManager_performPeriodicSyncWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __64__RTPersistenceMirroringManager_performPeriodicSyncWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[18] buildVersion];
  [v2 setMirroringAttemptMapValue:1 buildVersion:v3];

  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__RTPersistenceMirroringManager_performPeriodicSyncWithHandler___block_invoke_2;
  v5[3] = &unk_2788C4F60;
  v5[4] = v4;
  v6 = *(a1 + 40);
  [v4 _performImportWithHandler:v5];
}

void __64__RTPersistenceMirroringManager_performPeriodicSyncWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4[18] buildVersion];
    [v4 setMirroringAttemptMapValue:0 buildVersion:v5];

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__RTPersistenceMirroringManager_performPeriodicSyncWithHandler___block_invoke_3;
    v8[3] = &unk_2788C6508;
    v8[4] = v4;
    v7 = *(a1 + 40);
    v9 = 0;
    v10 = v7;
    [v4 _performExportWithHandler:v8];
  }
}

void __64__RTPersistenceMirroringManager_performPeriodicSyncWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [v3[18] buildVersion];
  [v3 setMirroringAttemptMapValue:0 buildVersion:v4];

  if (*(a1 + 48))
  {
    v5 = _RTSafeArray();
    v6 = _RTMultiErrorCreate();

    (*(*(a1 + 48) + 16))(*(a1 + 48), v6);
  }
}

- (void)setMirroringAttemptMapValue:(BOOL)a3 buildVersion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPersistenceMirroringManagerMirroringAttemptsByBuildMap"];
    if (v7)
    {
      v8 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsPersistenceMirroringManagerMirroringAttemptsByBuildMap"];
      v9 = [v8 mutableCopy];
    }

    else
    {
      v9 = objc_opt_new();
    }

    v11 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    [v9 setObject:v11 forKey:v6];

    [(RTDefaultsManager *)self->_defaultsManager setObject:v9 forKey:@"RTDefaultsPersistenceMirroringManagerMirroringAttemptsByBuildMap"];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: buildVersion", v12, 2u);
    }
  }
}

- (void)_performImportWithHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(RTPersistenceMirroringManager *)self _dataAvailableToMirror])
  {
    v16 = 0;
    [(RTPersistenceMirroringManager *)self _transactionHistorySizeError:&v16];
    v6 = v16;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = NSStringFromSelector(a2);
          *buf = 138412546;
          v22 = v8;
          v23 = 2112;
          v24 = v6;
          _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@ error on importing: %@, deferring import", buf, 0x16u);
        }
      }

      if (v5)
      {
        v5[2](v5, v6);
      }
    }

    else
    {
      persistenceManager = self->_persistenceManager;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __59__RTPersistenceMirroringManager__performImportWithHandler___block_invoke_100;
      v14[3] = &unk_2788C58B8;
      v14[4] = self;
      v15 = v5;
      [(RTPersistenceManager *)persistenceManager performImportMirroringRequestWithQualityOfService:3 handler:v14];
    }
  }

  else
  {
    dispatcher = self->_dispatcher;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__RTPersistenceMirroringManager__performImportWithHandler___block_invoke;
    v19[3] = &unk_2788C4938;
    v19[4] = self;
    v20 = v5;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__RTPersistenceMirroringManager__performImportWithHandler___block_invoke_2;
    v17[3] = &unk_2788C4758;
    v18 = v20;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    [(RTInvocationDispatcher *)dispatcher enqueueBlock:v19 failureBlock:v17 description:@"%@-%@", v11, v12];
  }
}

void __59__RTPersistenceMirroringManager__performImportWithHandler___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v4 = *MEMORY[0x277CCA450];
    v5[0] = @"Unable to complete buffered mirroring request.";
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v2];
    (*(*(a1 + 32) + 16))();
  }
}

void __59__RTPersistenceMirroringManager__performImportWithHandler___block_invoke_100(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTPersistenceMirroringManager__performImportWithHandler___block_invoke_2_101;
  block[3] = &unk_2788C5048;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __59__RTPersistenceMirroringManager__performImportWithHandler___block_invoke_2_101(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 1 || *(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "error during background import mirroring request, %@", &v5, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (BOOL)_transactionHistorySizeError:(id *)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v5 = [(RTPersistenceMirroringManager *)self persistenceManager];
  v6 = [v5 persistenceContextWithOptions:0];

  v27 = 0;
  v7 = [(RTPersistenceMirroringManager *)self _evaluatePersistentHistoryLengthWithManagedObjectContext:v6 shouldResetSync:&v28 error:&v27];
  v8 = v27;
  v9 = v8;
  v10 = 0;
  if (v28 == 1 && v7 && v8 == 0)
  {
    v13 = [(RTPersistenceMirroringManager *)self persistenceManager];
    v14 = [v13 persistenceStoreForType:1];

    v33 = @"RTPersistentStoreMetadataStoreTransactionHistorySizeExceededKey";
    v34[0] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v16 = [v6 persistentStoreCoordinator];
    v26 = 0;
    [v14 updateMetadata:v15 context:v6 coordinator:v16 error:&v26];
    v17 = v26;

    if (v17)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v17;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "error while updating metadata, %@", buf, 0xCu);
      }
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exceeded maximum transaction history size."];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v19;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v29 = *MEMORY[0x277CCA450];
    v30 = v19;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:-9997 userInfo:v21];
    v22 = [(RTPersistenceMirroringManager *)self persistenceManager];
    v23 = [v22 delegate];
    [v23 persistenceStore:v14 encounteredCriticalError:v10];
  }

  if (a3)
  {
    v24 = v10;
    *a3 = v10;
  }

  return v10 == 0;
}

- (void)performExportWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTPersistenceMirroringManager_performExportWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_performExportWithHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(RTPersistenceMirroringManager *)self _dataAvailableToMirror])
  {
    v16 = 0;
    [(RTPersistenceMirroringManager *)self _transactionHistorySizeError:&v16];
    v6 = v16;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = NSStringFromSelector(a2);
          *buf = 138412546;
          v22 = v8;
          v23 = 2112;
          v24 = v6;
          _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@ error on exporting: %@, deferring export", buf, 0x16u);
        }
      }

      if (v5)
      {
        v5[2](v5, v6);
      }
    }

    else
    {
      persistenceManager = self->_persistenceManager;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __59__RTPersistenceMirroringManager__performExportWithHandler___block_invoke_106;
      v14[3] = &unk_2788C58B8;
      v14[4] = self;
      v15 = v5;
      [(RTPersistenceManager *)persistenceManager performExportMirroringRequestWithQualityOfService:3 handler:v14];
    }
  }

  else
  {
    dispatcher = self->_dispatcher;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__RTPersistenceMirroringManager__performExportWithHandler___block_invoke;
    v19[3] = &unk_2788C4938;
    v19[4] = self;
    v20 = v5;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__RTPersistenceMirroringManager__performExportWithHandler___block_invoke_2;
    v17[3] = &unk_2788C4758;
    v18 = v20;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    [(RTInvocationDispatcher *)dispatcher enqueueBlock:v19 failureBlock:v17 description:@"%@-%@", v11, v12];
  }
}

void __59__RTPersistenceMirroringManager__performExportWithHandler___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v4 = *MEMORY[0x277CCA450];
    v5[0] = @"Unable to complete buffered mirroring request.";
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v2];
    (*(*(a1 + 32) + 16))();
  }
}

void __59__RTPersistenceMirroringManager__performExportWithHandler___block_invoke_106(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTPersistenceMirroringManager__performExportWithHandler___block_invoke_2_107;
  block[3] = &unk_2788C5048;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __59__RTPersistenceMirroringManager__performExportWithHandler___block_invoke_2_107(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 1 || *(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "error during background export mirroring request, %@", &v5, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)performMirroringRequestWithType:(int64_t)a3 affectedStore:(id)a4 qualityOfService:(int64_t)a5 handler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__RTPersistenceMirroringManager_performMirroringRequestWithType_affectedStore_qualityOfService_handler___block_invoke;
  block[3] = &unk_2788C6C20;
  block[4] = self;
  v16 = v10;
  v18 = a3;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

void __104__RTPersistenceMirroringManager_performMirroringRequestWithType_affectedStore_qualityOfService_handler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 96);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __104__RTPersistenceMirroringManager_performMirroringRequestWithType_affectedStore_qualityOfService_handler___block_invoke_2;
  v8[3] = &unk_2788C7D30;
  v5 = *(a1 + 56);
  v8[4] = v3;
  v11 = v5;
  v6 = v2;
  v7 = *(a1 + 64);
  v9 = v6;
  v12 = v7;
  v10 = *(a1 + 48);
  [v4 createManagedObjectContext:v8];
}

void __104__RTPersistenceMirroringManager_performMirroringRequestWithType_affectedStore_qualityOfService_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __104__RTPersistenceMirroringManager_performMirroringRequestWithType_affectedStore_qualityOfService_handler___block_invoke_3;
  v9[3] = &unk_2788C54B8;
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v13 = v5;
  v7 = v6;
  v14 = *(a1 + 64);
  v10 = v7;
  v11 = v3;
  v12 = *(a1 + 48);
  v8 = v3;
  dispatch_async(v4, v9);
}

- (void)performMirroringRequestWithType:(int64_t)a3 affectedStore:(id)a4 qualityOfService:(int64_t)a5 managedObjectContext:(id)a6 handler:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [(RTNotifier *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __125__RTPersistenceMirroringManager_performMirroringRequestWithType_affectedStore_qualityOfService_managedObjectContext_handler___block_invoke;
  v19[3] = &unk_2788C54B8;
  v19[4] = self;
  v20 = v12;
  v23 = a3;
  v24 = a5;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, v19);
}

- (void)_performMirroringRequestWithType:(int64_t)a3 affectedStore:(id)a4 qualityOfService:(int64_t)a5 managedObjectContext:(id)a6 handler:(id)a7
{
  v68[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (a3 != 2 && self->_syncDisabledForPerProcessMemoryLimit)
  {
    if (v14)
    {
      v67 = *MEMORY[0x277CCA450];
      v68[0] = @"Sync is disabled due to requests exceeding the memory threshold.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      v17 = MEMORY[0x277CCA9B8];
      v18 = 8;
LABEL_9:
      v19 = [v17 errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:v18 userInfo:v16];
LABEL_10:
      (v15)[2](v15, 0, v19);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (a3 != 1 || self->_exportingAvailable)
  {
    if (![(RTPersistenceMirroringManager *)self _dataAvailableToMirror])
    {
      dispatcher = self->_dispatcher;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __126__RTPersistenceMirroringManager__performMirroringRequestWithType_affectedStore_qualityOfService_managedObjectContext_handler___block_invoke;
      v46[3] = &unk_2788C54B8;
      v46[4] = self;
      v50 = a3;
      v47 = v12;
      v51 = a5;
      v48 = v13;
      v49 = v15;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __126__RTPersistenceMirroringManager__performMirroringRequestWithType_affectedStore_qualityOfService_managedObjectContext_handler___block_invoke_2;
      v44[3] = &unk_2788C4758;
      v45 = v49;
      [(RTInvocationDispatcher *)dispatcher enqueueBlock:v46 failureBlock:v44 description:@"pending invocation for mirroring"];

      goto LABEL_13;
    }

    if (v12)
    {
      if (v13)
      {
        v20 = [v12 options];
        v21 = [v20 objectForKey:*MEMORY[0x277CBE258]];
        v16 = [v21 objectForKey:*MEMORY[0x277CBE250]];

        if (v16)
        {
          if (!a5)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v37 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "mirroring request with QoS none requested, returning", buf, 2u);
              }
            }

            if (v15)
            {
              v15[2](v15, 0, 0);
            }

            goto LABEL_12;
          }

          mirroringPolicies = self->_mirroringPolicies;
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
          v19 = [(NSMutableDictionary *)mirroringPolicies objectForKeyedSubscript:v23];

          if (v19)
          {
            [(RTPersistenceMirroringManager *)self optionsForQualityOfService:a5];
            v24 = v43 = v19;
            v25 = [RTPersistenceMirroringRequest alloc];
            v26 = [(RTNotifier *)self queue];
            v54 = v12;
            v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
            v28 = v25;
            v29 = v24;
            v19 = v43;
            v30 = [(RTPersistenceMirroringRequest *)v28 initWithQueue:v26 requestType:a3 mirroringPolicy:v43 affectedStores:v27 options:v29 completionHandler:v15];

            [(RTPersistenceMirroringRequest *)v30 setDelegate:self];
            v31 = [(RTPersistenceMirroringRequest *)v30 request];

            if (v31)
            {
              [(RTPersistenceMirroringManager *)self _enqueueMirroringRequest:v30 context:v13];
            }

            else
            {
              v39 = v29;
              v52 = *MEMORY[0x277CCA450];
              v53 = @"Underlying CloudKit request was nil for mirroring request type.";
              v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
              v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:2 userInfo:v40];
              v42 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v62 = v41;
                _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "nil cloudkit request for mirroring request, %@", buf, 0xCu);
              }

              if (v15)
              {
                (v15)[2](v15, 0, v41);
              }

              v29 = v39;
              v19 = v43;
            }
          }

          else
          {
            if (!v15)
            {
              goto LABEL_11;
            }

            v55 = *MEMORY[0x277CCA450];
            v56 = @"There is no mirroring policy associated with the requested quality of service.";
            v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:1 userInfo:v29];
            v38 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v62 = v30;
              _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "invalid qos for mirroring request, %@", buf, 0xCu);
            }

            (v15)[2](v15, 0, v30);
          }

          goto LABEL_11;
        }

        if (!v15)
        {
          goto LABEL_12;
        }

        v57 = *MEMORY[0x277CCA450];
        v58 = @"This persistent store is not associated with a mirroring delegate.";
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:1 userInfo:v19];
        v36 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v62 = v35;
          _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "invalid mirroring delegate for mirroring request, %@", buf, 0xCu);
        }

        (v15)[2](v15, 0, v35);
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      if (!v15)
      {
        goto LABEL_13;
      }

      v59 = *MEMORY[0x277CCA450];
      v60 = @"Mirroring request requires specifying a managed object context.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:1 userInfo:v16];
      v33 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v62 = v19;
      v34 = "invalid managed object context for mirroring operation, %@";
    }

    else
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      v63 = *MEMORY[0x277CCA450];
      v64 = @"Mirroring request requires specifying an affected store.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:1 userInfo:v16];
      v33 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v62 = v19;
      v34 = "invalid store for mirroring operation, %@";
    }

    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);
LABEL_28:

    goto LABEL_10;
  }

  if (v14)
  {
    v65 = *MEMORY[0x277CCA450];
    v66 = @"Exports are suspended.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v17 = MEMORY[0x277CCA9B8];
    v18 = 9;
    goto LABEL_9;
  }

LABEL_13:
}

void __126__RTPersistenceMirroringManager__performMirroringRequestWithType_affectedStore_qualityOfService_managedObjectContext_handler___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v4 = *MEMORY[0x277CCA450];
    v5[0] = @"enqueued operation for mirroring failed because store was not available.";
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v2];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_enqueueMirroringRequest:(id)a3 context:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = a4;
  v32 = v6;
  v7 = [(NSMutableArray *)self->_pendingMirroringRequests indexOfObject:v6];
  val = self;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v6 identifier];
        v10 = [v9 UUIDString];
        *buf = 138412290;
        v44 = v10;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Enqueueing mirroring request with identifier, %@", buf, 0xCu);
      }
    }

    [(NSMutableArray *)self->_pendingMirroringRequests addObject:v6];
    v33 = v6;
  }

  else
  {
    v33 = [(NSMutableArray *)self->_pendingMirroringRequests objectAtIndex:v7];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v44 = v6;
        v45 = 2112;
        v46 = v33;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Merging new mirroring request, %@ with existing mirroring request, %@", buf, 0x16u);
      }
    }

    [v33 mergeRequest:v6];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      activeMirroringRequest = self->_activeMirroringRequest;
      *buf = 138412290;
      v44 = activeMirroringRequest;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "~~~~~~ACTIVE MIRRORING REQUEST: %@~~~~~~", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(NSMutableArray *)self->_pendingMirroringRequests count];
        *buf = 134217984;
        v44 = v15;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "~~~~~~[PENDING MIRRORING REQUESTS]: %lu~~~~~~", buf, 0xCu);
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = self->_pendingMirroringRequests;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v17)
    {
      v18 = 0;
      v19 = *v39;
      v20 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v23 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 134218242;
              v44 = v18;
              v45 = 2112;
              v46 = v22;
              _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "Pending request %lu: %@", buf, 0x16u);
            }
          }

          ++v18;
        }

        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v17);
    }
  }

  if ([v33 isReady])
  {
    [(RTPersistenceMirroringManager *)val _startMirroringRequest:v33 context:v30];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v32 identifier];
        v26 = [v25 UUIDString];
        *buf = 138412290;
        v44 = v26;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "Deferring mirroring request with identifier, %@, because it is not ready to execute.", buf, 0xCu);
      }
    }

    objc_initWeak(buf, val);
    v27 = [v33 identifier];
    v28 = [MEMORY[0x277CBEAA8] date];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __66__RTPersistenceMirroringManager__enqueueMirroringRequest_context___block_invoke;
    v34[3] = &unk_2788C57D0;
    objc_copyWeak(&v37, buf);
    v29 = v27;
    v35 = v29;
    v36 = v30;
    [(RTPersistenceMirroringManager *)val _scheduleRetryAttemptForRequest:v33 referenceDate:v28 handler:v34];

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
  }
}

void __66__RTPersistenceMirroringManager__enqueueMirroringRequest_context___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = WeakRetained[15];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = *(a1 + 32);
          v11 = [v9 identifier];
          LODWORD(v10) = [v10 isEqual:v11];

          if (v10)
          {
            [v3 _enqueueMirroringRequest:v9 context:*(a1 + 40)];
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_startMirroringRequest:(id)a3 context:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_activeMirroringRequest)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        activeMirroringRequest = self->_activeMirroringRequest;
        *buf = 138412546;
        v24 = activeMirroringRequest;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "an existing request is already active, %@, deferring this request, %@.", buf, 0x16u);
      }
    }

    goto LABEL_21;
  }

  if (![(RTPersistenceMirroringManager *)self _authorizedToMirror])
  {
    v21 = *MEMORY[0x277CCA450];
    v22 = @"The mirroring request is denied due to user authorization";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v12 = MEMORY[0x277CCA9B8];
    v13 = 3;
LABEL_20:
    v14 = [v12 errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:v13 userInfo:v11];
    [v6 completeRequestWithError:v14];

    goto LABEL_21;
  }

  if ([(RTPersistenceMirroringManager *)self _mirroringDelegateState]!= 1)
  {
    if ([(RTPersistenceMirroringManager *)self _mirroringDelegateState]== 2)
    {
      v19 = *MEMORY[0x277CCA450];
      v20 = @"The mirroring request failed because the mirroring delegate failed setup.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v13 = 7;
    }

    else if ([(RTPersistenceMirroringManager *)self _mirroringDelegateState])
    {
      v13 = 0;
      v11 = 0;
    }

    else
    {
      v17 = *MEMORY[0x277CCA450];
      v18 = @"The mirroring request failed because the mirroring delegate has not initialized yet.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v13 = 5;
    }

    v12 = MEMORY[0x277CCA9B8];
    goto LABEL_20;
  }

  if (!self->_currentReachability)
  {
    v15 = *MEMORY[0x277CCA450];
    v16 = @"The mirroring request failed because the network is not reachable.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = MEMORY[0x277CCA9B8];
    v13 = 6;
    goto LABEL_20;
  }

  if ([v6 requestType] == 2)
  {
    v10 = [(RTPersistenceMirroringManager *)self persistenceManager];
    [v10 updateStoreAvailability:1];
  }

  [v6 executeMirroringRequestWithContext:v7];
LABEL_21:
}

- (void)mirroringRequestDidBegin:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "mirroring request, %@ did begin", &v13, 0xCu);
    }
  }

  activeMirroringRequest = self->_activeMirroringRequest;
  self->_activeMirroringRequest = v4;
  v7 = v4;

  [(NSMutableArray *)self->_pendingMirroringRequests removeObject:v7];
  retryTimers = self->_retryTimers;
  v9 = [(RTPersistenceMirroringRequest *)v7 identifier];
  v10 = [(NSMutableDictionary *)retryTimers objectForKey:v9];
  [v10 invalidate];

  v11 = self->_retryTimers;
  v12 = [(RTPersistenceMirroringRequest *)v7 identifier];
  [(NSMutableDictionary *)v11 removeObjectForKey:v12];
}

- (BOOL)mirroringRequest:(id)a3 didFailWithError:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v52 = v6;
    v53 = 2112;
    v54 = v7;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "mirroring request, %@ failed with error, %@", buf, 0x16u);
  }

  v9 = [v7 domain];
  if ([v9 isEqualToString:@"RTPersistenceMirroringManagerErrorDomain"])
  {
    v10 = [v7 code];

    if (v10 == 8)
    {
      v11 = objc_alloc(MEMORY[0x277CCACA8]);
      v12 = [v11 initWithCString:RTAnalyticsEventPersistenceMirroringMemoryLimitExceeded encoding:1];
      v49 = @"buildVersion";
      v13 = [(RTPlatform *)self->_platform buildVersion];
      v50 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      log_analytics_submission(v12, v14);

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v12];
      v47 = @"buildVersion";
      v16 = [(RTPlatform *)self->_platform buildVersion];
      v48 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      AnalyticsSendEvent();

      goto LABEL_11;
    }
  }

  else
  {
  }

  v12 = [v7 domain];
  if ([v12 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v18 = [v7 userInfo];
    v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCA470]];
    v20 = [v19 containsString:@"was aborted because the mirroring delegate never successfully initialized due to error: Error Domain=NSCocoaErrorDomain Code=256"];

    if (!v20)
    {
      goto LABEL_12;
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v12, OS_LOG_TYPE_FAULT, "Mirroring request failed due to data protection", buf, 2u);
    }
  }

LABEL_11:

LABEL_12:
  v21 = [v7 userInfo];
  v22 = [v21 objectForKeyedSubscript:@"Retry-After"];
  if (v22)
  {
    v23 = v22;
    v24 = [v6 attemptCount];
    v25 = RTPersistenceMirroringRequestRetryCountMax;

    if (v24 < v25)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v26 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v6 identifier];
          v28 = [v27 UUIDString];
          v29 = [v6 attemptCount];
          *buf = 138412546;
          v52 = v28;
          v53 = 2048;
          v54 = v29;
          _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "will retry request with identifier, %@, attempt count, %lu", buf, 0x16u);
        }
      }

      v30 = [v7 userInfo];
      v31 = [v30 objectForKeyedSubscript:@"Retry-After"];
      v32 = [v31 unsignedIntegerValue];
      v33 = v32;

      if (!v32)
      {
        v33 = 30.0;
      }

      if ([v6 requestType] == 2)
      {
        v34 = [(RTPersistenceMirroringManager *)self persistenceManager];
        [v34 updateStoreAvailability:2];
      }

      [(RTPersistenceMirroringManager *)self _prepareRequestForRetryAttempt:v6 retryInterval:v33];
      activeMirroringRequest = self->_activeMirroringRequest;
      self->_activeMirroringRequest = 0;

      v36 = 1;
      goto LABEL_31;
    }
  }

  else
  {
  }

  if ([v6 requestType] == 2)
  {
    v37 = [(RTPersistenceMirroringManager *)self persistenceManager];
    [v37 updateStoreAvailability:2];
  }

  v38 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTPersistenceMirroringManager_mirroringRequest_didFailWithError___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v39 = v6;
  v45 = v39;
  v46 = v7;
  dispatch_async(v38, block);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = [v39 identifier];
      v42 = [v41 UUIDString];
      *buf = 138412290;
      v52 = v42;
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "will not retry request with identifier, %@", buf, 0xCu);
    }
  }

  [(RTPersistenceMirroringManager *)self _finalizeMirroringRequest:v39];

  v36 = 0;
LABEL_31:

  return v36;
}

void __67__RTPersistenceMirroringManager_mirroringRequest_didFailWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 88));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained mirroringManager:a1[4] mirroringRequest:a1[5] didFailWithError:a1[6]];
  }
}

- (void)mirroringRequestDidSucceed:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "mirroring request, %@, succeeded", buf, 0xCu);
    }
  }

  if (![v4 requestType])
  {
    self->_exportingAvailable = 1;
    v7 = [(RTPersistenceManager *)self->_persistenceManager persistenceContextWithOptions:2];
    persistenceCloudDeletionEnforcer = self->_persistenceCloudDeletionEnforcer;
    v9 = [MEMORY[0x277CBEAA8] distantPast];
    v31 = 0;
    v10 = [(RTPersistenceCloudDeletionEnforcer *)persistenceCloudDeletionEnforcer processRequestsSinceReferenceDate:v9 context:v7 error:&v31];
    v11 = v31;

    if (!v10 || v11 != 0)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v11;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "error while processing deletion requests after import, %@", buf, 0xCu);
      }
    }

    v6 = @"RTDefaultsPersistenceMirroringManagerBackgroundLastImportDate";
    goto LABEL_36;
  }

  if ([v4 requestType] != 1)
  {
    if ([v4 requestType] == 2)
    {
      v7 = [(RTPersistenceManager *)self->_persistenceManager persistenceStoreForType:1];
      v14 = [(RTPersistenceManager *)self->_persistenceManager persistenceContextWithOptions:1];
      v15 = [(RTPersistenceManager *)self->_persistenceManager delegate];
      v16 = 0;
      v17 = 0;
      do
      {

        v30 = 0;
        v18 = [v15 persistenceMirroringManagerDidFinishZonePurge:self store:v7 context:v14 error:&v30];
        v17 = v30;
        if (v17)
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v17;
            _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Error while re-preparing the store after zone reset, %@", buf, 0xCu);
          }
        }

        v20 = v18 ^ 1;
        if (v17)
        {
          v20 = 1;
        }
      }

      while (v20 == 1 && v16++ < 4);
      if ((v20 & 1) == 0)
      {
        [(RTPersistenceManager *)self->_persistenceManager updateStoreAvailability:2];
      }

      v22 = [(RTPlatform *)self->_platform buildVersion];
      [(RTPersistenceMirroringManager *)self setMirroringAttemptMapValue:0 buildVersion:v22];

      v6 = @"RTDefaultsPersistenceMirroringManagerBackgroundLastZoneResetDate";
    }

    else
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v27 = [v4 requestType];
        *buf = 134218498;
        v33 = v27;
        v34 = 2080;
        v35 = "[RTPersistenceMirroringManager mirroringRequestDidSucceed:]";
        v36 = 1024;
        v37 = 1113;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unhandled request type, %lu (in %s:%d)", buf, 0x1Cu);
      }

      v6 = &stru_284528390;
    }

LABEL_36:

    goto LABEL_37;
  }

  v6 = @"RTDefaultsPersistenceMirroringManagerBackgroundLastExportDate";
LABEL_37:
  defaultsManager = self->_defaultsManager;
  v24 = [MEMORY[0x277CBEAA8] date];
  [(RTDefaultsManager *)defaultsManager setObject:v24 forKey:v6];

  v25 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTPersistenceMirroringManager_mirroringRequestDidSucceed___block_invoke;
  block[3] = &unk_2788C4A70;
  block[4] = self;
  v29 = v4;
  v26 = v4;
  dispatch_async(v25, block);

  [(RTPersistenceMirroringManager *)self _finalizeMirroringRequest:v26];
}

void __60__RTPersistenceMirroringManager_mirroringRequestDidSucceed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained mirroringManager:*(a1 + 32) mirroringRequestDidSucceed:*(a1 + 40)];
  }
}

- (void)_finalizeMirroringRequest:(id)a3
{
  [(NSMutableArray *)self->_pendingMirroringRequests removeObject:a3];
  activeMirroringRequest = self->_activeMirroringRequest;
  self->_activeMirroringRequest = 0;

  [(RTPersistenceMirroringManager *)self _dequeueNextMirroringRequest];
}

- (void)_dequeueNextMirroringRequest
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_pendingMirroringRequests count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_pendingMirroringRequests;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          if ([v7 isReady])
          {
            v4 = v7;
            goto LABEL_12;
          }
        }

        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v8 = [(RTPersistenceMirroringManager *)self persistenceManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__RTPersistenceMirroringManager__dequeueNextMirroringRequest__block_invoke;
    v10[3] = &unk_2788C7208;
    v10[4] = self;
    v11 = v4;
    v9 = v4;
    [v8 createManagedObjectContext:v10];
  }
}

void __61__RTPersistenceMirroringManager__dequeueNextMirroringRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTPersistenceMirroringManager__dequeueNextMirroringRequest__block_invoke_2;
  block[3] = &unk_2788C76F8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

- (void)_prepareRequestForRetryAttempt:(id)a3 retryInterval:(double)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 < 0.0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "[RTPersistenceMirroringManager _prepareRequestForRetryAttempt:retryInterval:]";
      v50 = 1024;
      LODWORD(v51) = 1168;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: retryInterval >= 0 (in %s:%d)", buf, 0x12u);
    }
  }

  v8 = [v6 identifier];
  v9 = [(NSMutableDictionary *)self->_retryTimers objectForKeyedSubscript:v8];
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v8 UUIDString];
        *buf = 138412290;
        v49 = v11;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "Cancelling existing timer for mirroring operation with identifier, %@", buf, 0xCu);
      }
    }

    [v9 invalidate];
    [(NSMutableDictionary *)self->_retryTimers removeObjectForKey:v8];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v8 UUIDString];
      *buf = 138412290;
      v49 = v13;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "Creating new underlying mirroring request for request with identifier %@", buf, 0xCu);
    }
  }

  [v6 _prepareMirroringRequestForRetry:v6];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__RTPersistenceMirroringManager__prepareRequestForRetryAttempt_retryInterval___block_invoke;
  aBlock[3] = &unk_2788C76F8;
  v14 = v8;
  v45 = v14;
  v46 = self;
  v15 = v6;
  v47 = v15;
  v16 = _Block_copy(aBlock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v14 UUIDString];
      *buf = 138412290;
      v49 = v18;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "Creating retry timer for request identifier %@", buf, 0xCu);
    }
  }

  timerManager = self->_timerManager;
  v20 = [v14 UUIDString];
  v21 = [(RTNotifier *)self queue];
  v22 = [(RTTimerManager *)timerManager timerWithIdentifier:v20 queue:v21 handler:v16];

  [(NSMutableDictionary *)self->_retryTimers setObject:v22 forKey:v14];
  [v22 fireAfterDelay:a4];
  [v22 resume];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v36 = v22;
    v37 = v16;
    v38 = v14;
    v39 = v9;
    v23 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [(NSMutableDictionary *)self->_retryTimers allKeys];
      v25 = [v24 count];
      *buf = 134217984;
      v49 = v25;
      _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "~~~~~Current active retry timers: %lu~~~~~", buf, 0xCu);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = [(NSMutableDictionary *)self->_retryTimers allKeys];
    v27 = [v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = *v41;
      v31 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v33 = *(*(&v40 + 1) + 8 * i);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v34 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = [v33 UUIDString];
              *buf = 134218242;
              v49 = v29;
              v50 = 2112;
              v51 = v35;
              _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%lu. identifier %@", buf, 0x16u);
            }
          }

          ++v29;
        }

        v28 = [v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v28);
    }

    v14 = v38;
    v9 = v39;
    v16 = v37;
    v22 = v36;
  }
}

void __78__RTPersistenceMirroringManager__prepareRequestForRetryAttempt_retryInterval___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) UUIDString];
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "enqueueing retry timer block for request identifier %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(v5 + 96);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__RTPersistenceMirroringManager__prepareRequestForRetryAttempt_retryInterval___block_invoke_172;
  v7[3] = &unk_2788C7208;
  v7[4] = v5;
  v8 = v4;
  [v6 createManagedObjectContext:v7];
}

void __78__RTPersistenceMirroringManager__prepareRequestForRetryAttempt_retryInterval___block_invoke_172(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RTPersistenceMirroringManager__prepareRequestForRetryAttempt_retryInterval___block_invoke_2;
  block[3] = &unk_2788C76F8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

- (void)_scheduleRetryAttemptForRequest:(id)a3 referenceDate:(id)a4 handler:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 identifier];
  v12 = [(NSMutableDictionary *)self->_retryTimers objectForKeyedSubscript:v11];
  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v11 UUIDString];
        *buf = 138412290;
        v33 = v14;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "Cancelling existing timer for mirroring operation with identifier, %@", buf, 0xCu);
      }
    }

    [v12 invalidate];
    [(NSMutableDictionary *)self->_retryTimers removeObjectForKey:v11];
  }

  v15 = [v8 mirroringPolicy];
  [v15 timeIntervalUntilOperationAllowed];
  v17 = v16;

  v18 = [v10 dateByAddingTimeInterval:v17];

  v19 = [MEMORY[0x277CBEAA8] date];
  v20 = [v19 isBeforeDate:v18];
  v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v20)
  {
    v31 = v8;
    if (v21)
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v11 UUIDString];
        v24 = [v18 stringFromDate];
        *buf = 138412546;
        v33 = v23;
        v34 = 2112;
        v35 = v24;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "Creating timer to fire deferred mirroring operation with identifier, %@ at, %@", buf, 0x16u);
      }
    }

    timerManager = self->_timerManager;
    v26 = [v11 UUIDString];
    v27 = [(RTNotifier *)self queue];
    v28 = [(RTTimerManager *)timerManager timerWithIdentifier:v26 queue:v27 handler:v9];

    [(NSMutableDictionary *)self->_retryTimers setObject:v28 forKey:v11];
    [v28 fireAfterDelay:v17];
    [v28 resume];

    v8 = v31;
  }

  else
  {
    if (v21)
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v11 UUIDString];
        *buf = 138412290;
        v33 = v30;
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "Deferral period for request with identifier, %@, already expired, firing now.", buf, 0xCu);
      }
    }

    if (v9)
    {
      v9[2](v9);
    }
  }
}

- (void)persistenceAvailabilityDidChange:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(RTNotifier *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__RTPersistenceMirroringManager_persistenceAvailabilityDidChange___block_invoke;
    v11[3] = &unk_2788C4A70;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v8, v11);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v4 name];
      *buf = 138412802;
      v14 = v10;
      v15 = 2080;
      v16 = "[RTPersistenceMirroringManager persistenceAvailabilityDidChange:]";
      v17 = 1024;
      v18 = 1264;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_persistenceAvailabilityDidChange:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTPersistenceMirroringManager _persistenceAvailabilityDidChange:]";
      v11 = 1024;
      v12 = 1271;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "notification name is not RTPersistenceManagerNotificationAvailabilityDidChange (in %s:%d)", &v9, 0x12u);
    }
  }

  -[RTPersistenceMirroringManager _updateExportingAvailability:](self, "_updateExportingAvailability:", [v4 availability]);
  if ([(RTPersistenceMirroringManager *)self _dataAvailableToMirror]&& [(RTInvocationDispatcher *)self->_dispatcher invocationsPending])
  {
    [(RTInvocationDispatcher *)self->_dispatcher dispatchPendingInvocations];
  }
}

- (void)_updateExportingAvailability:(unint64_t)a3
{
  if (a3 == 2)
  {
    v9[7] = v3;
    v9[8] = v4;
    v6 = [(RTPersistenceManager *)self->_persistenceManager persistenceContextWithOptions:0];
    persistenceExpirationEnforcer = self->_persistenceExpirationEnforcer;
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-4838400.0];
    v9[0] = 0;
    self->_exportingAvailable = [(RTPersistenceMirroringManager *)self exportMirroringIsAvailableWithExpirationEnforcer:persistenceExpirationEnforcer expirationDate:v8 context:v6 error:v9];
  }
}

- (void)onCloudSyncAuthorizationChange:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTAccountManagerNotificationCloudSyncAuthorizationStateChanged];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(RTNotifier *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__RTPersistenceMirroringManager_onCloudSyncAuthorizationChange___block_invoke;
    v11[3] = &unk_2788C4A70;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v8, v11);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v4 name];
      *buf = 138412802;
      v14 = v10;
      v15 = 2080;
      v16 = "[RTPersistenceMirroringManager onCloudSyncAuthorizationChange:]";
      v17 = 1024;
      v18 = 1305;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onCloudSyncAuthorizationChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTAccountManagerNotificationCloudSyncAuthorizationStateChanged];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[RTPersistenceMirroringManager _onCloudSyncAuthorizationChange:]";
      v15 = 1024;
      LODWORD(v16) = 1312;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "notification name is not RTAccountManagerNotificationCloudSyncAuthorizationStateChanged (in %s:%d)", &v13, 0x12u);
    }
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [RTAccountManager cloudSyncAuthorizationToString:self->_cloudSyncAuthorizationState];
    v11 = +[RTAccountManager cloudSyncAuthorizationToString:](RTAccountManager, "cloudSyncAuthorizationToString:", [v4 cloudSyncAuthorizationState]);
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "cloud sync authorization changed, from, %@, to, %@", &v13, 0x16u);
  }

  v12 = [v4 cloudSyncAuthorizationState];
  self->_cloudSyncAuthorizationState = v12;
  if (v12 == 2 && [(RTInvocationDispatcher *)self->_dispatcher invocationsPending])
  {
    [(RTInvocationDispatcher *)self->_dispatcher dispatchPendingInvocations];
  }
}

- (void)onReachabilityChange:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTReachabilityMonitorNotificationReachabilityChanged];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(RTNotifier *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__RTPersistenceMirroringManager_onReachabilityChange___block_invoke;
    v11[3] = &unk_2788C4A70;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v8, v11);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v4 name];
      *buf = 138412802;
      v14 = v10;
      v15 = 2080;
      v16 = "[RTPersistenceMirroringManager onReachabilityChange:]";
      v17 = 1024;
      v18 = 1334;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onReachabilityChange:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTReachabilityMonitorNotificationReachabilityChanged];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTPersistenceMirroringManager _onReachabilityChange:]";
      v11 = 1024;
      v12 = 1341;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "notification name is not RTReachabilityMonitorNotificationReachabilityChanged (in %s:%d)", &v9, 0x12u);
    }
  }

  self->_currentReachability = [v4 reachability];
}

- (int64_t)_mirroringDelegateState
{
  v2 = [(RTPersistenceMirroringManager *)self persistenceManager];
  v3 = [v2 mirroringDelegateStateForStoreType:1];

  return v3;
}

- (void)_updateMirroringDelegateState
{
  if ([(RTPersistenceMirroringManager *)self _mirroringDelegateState]&& [(RTInvocationDispatcher *)self->_dispatcher invocationsPending])
  {
    dispatcher = self->_dispatcher;

    [(RTInvocationDispatcher *)dispatcher dispatchPendingInvocations];
  }
}

- (id)optionsForQualityOfService:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  result = objc_opt_new();
  v6 = result;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = 0;
  }

  else
  {
    if (a3 != 1)
    {
      __break(1u);
      return result;
    }

    v7 = 2;
  }

  v8 = [result operationConfiguration];
  [v8 setDiscretionaryNetworkBehavior:v7];

  v9 = [v6 operationConfiguration];
  [v9 setAutomaticallyRetryNetworkFailures:(a3 & 0xFFFFFFFFFFFFFFFELL) != 2];

  mirroringPolicies = self->_mirroringPolicies;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v12 = [(NSMutableDictionary *)mirroringPolicies objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[RTPersistenceMirroringManager optionsForQualityOfService:]";
      v18 = 1024;
      v19 = 1381;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "mirroring policy was nil (in %s:%d)", &v16, 0x12u);
    }
  }

  v14 = [v12 allowsMirroringViaCellular];
  v15 = [v6 operationConfiguration];
  [v15 setAllowsCellularAccess:v14];

  return v6;
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (a3 == 1)
  {
    v11 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__RTPersistenceMirroringManager_performPurgeOfType_referenceDate_completion___block_invoke;
    block[3] = &unk_2788C6C20;
    block[4] = self;
    v16 = 1;
    v14 = v9;
    v15 = v10;
    v17 = a2;
    dispatch_async(v11, block);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v19 = a3;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "RTPersistenceMirroringManager doesn't implement purge type, %ld", buf, 0xCu);
      }
    }

    (*(v10 + 2))(v10, 0);
  }
}

void __77__RTPersistenceMirroringManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _dataAvailableToMirror] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(v13 + 168);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __77__RTPersistenceMirroringManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v31[3] = &unk_2788C4C20;
    v15 = *(a1 + 56);
    v31[4] = v13;
    v34 = v15;
    v32 = v12;
    v33 = *(a1 + 48);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __77__RTPersistenceMirroringManager_performPurgeOfType_referenceDate_completion___block_invoke_3;
    v28[3] = &unk_2788C6300;
    v16 = *(a1 + 64);
    v28[4] = *(a1 + 32);
    v30 = v16;
    v29 = *(a1 + 48);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(*(a1 + 64));
    [v14 enqueueBlock:v31 failureBlock:v28 description:{@"%@-%@", v18, v19}];

    return;
  }

  if (*(a1 + 56) != 1)
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3 != 2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"RTPersistenceMirroringManager not purging due to iCloud sync auth state, %ld", v3];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v4;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v41 = *MEMORY[0x277CCA450];
    v42 = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:3 userInfo:v5];
    (*(*(a1 + 48) + 16))();
    goto LABEL_25;
  }

  v4 = [*(v2 + 96) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 mirroringOptionsForStoreWithType:1];
    v6 = [v5 allKeys];
    v7 = [v6 count];

    if (!v7)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"RTPersistenceMirroringManager not purging due to nil mirroring delegate"];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v9;
        _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v39 = *MEMORY[0x277CCA450];
      v40 = v9;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:5 userInfo:v23];
      (*(*(a1 + 48) + 16))();

      goto LABEL_24;
    }
  }

  if ([*(a1 + 32) _mirroringDelegateState] == 2)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"RTPersistenceMirroringManager not purging due to failed mirroring delegate."];
    v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v5;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v37 = *MEMORY[0x277CCA450];
    v38 = v5;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v10 = MEMORY[0x277CCA9B8];
    v11 = 7;
LABEL_23:
    v23 = [v10 errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:v11 userInfo:v9];
    (*(*(a1 + 48) + 16))();
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  if (![*(a1 + 32) _mirroringDelegateState])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"RTPersistenceMirroringManager not purging due to mirroring delegate setup state."];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v5;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v35 = *MEMORY[0x277CCA450];
    v36 = v5;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v10 = MEMORY[0x277CCA9B8];
    v11 = 5;
    goto LABEL_23;
  }

  v21 = [*(a1 + 32) persistenceManager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __77__RTPersistenceMirroringManager_performPurgeOfType_referenceDate_completion___block_invoke_192;
  v26[3] = &unk_2788C7D58;
  v27 = *(a1 + 48);
  [v21 performZoneResetMirroringRequestWithQualityOfService:3 handler:v26];

  v5 = v27;
LABEL_26:
}

void __77__RTPersistenceMirroringManager_performPurgeOfType_referenceDate_completion___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14 = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];
  (*(v8 + 16))(v8, v12);
}

void __77__RTPersistenceMirroringManager_performPurgeOfType_referenceDate_completion___block_invoke_192(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Error during (purge) zone reset in mirroring manager, %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a4 hasMask:1])
  {
    v10 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__RTPersistenceMirroringManager_sendDiagnosticsToURL_options_handler___block_invoke;
    block[3] = &unk_2788C67D8;
    block[4] = self;
    v13 = v9;
    v12 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __70__RTPersistenceMirroringManager_sendDiagnosticsToURL_options_handler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _dataAvailableToMirror] && objc_msgSend(*(a1 + 32), "_mirroringDelegateState") == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v8 = 0;
    [v2 _generateDiagnosticFilesAtURL:v3 error:&v8];
    v4 = v8;
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "skipping diagnostics from the mirroring manager due to data availability or mirroring delegate state", buf, 2u);
      }
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }

    v4 = 0;
  }
}

- (BOOL)_generateDiagnosticFilesAtURL:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (![(RTPersistenceMirroringManager *)self exceedingMemoryThreshold])
  {
    v15 = [v7 URLByAppendingPathComponent:@"CloudKit"];
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v32 = 0;
    [v17 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v32];
    v18 = v32;

    if (v18)
    {
      if (a4)
      {
        v19 = v18;
        v16 = 0;
        *a4 = v18;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.CoreRoutine-3" environment:1];
      v21 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v20];
      v22 = [v21 privateCloudDatabase];
      v31 = 0;
      v23 = [(RTPersistenceMirroringManager *)self _fetchDatabaseChangesForDatabase:v22 outputURL:v15 error:&v31];
      v24 = v31;

      if (!v23 || v24)
      {
        if (a4)
        {
          v28 = v24;
          v16 = 0;
          *a4 = v24;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v25 = [v21 privateCloudDatabase];
        v30 = 0;
        [(RTPersistenceMirroringManager *)self _fetchZoneChangesForDatabase:v25 outputURL:v15 error:&v30];
        v26 = v30;

        v16 = v26 == 0;
        if (a4 && v26)
        {
          v27 = v26;
          *a4 = v26;
        }
      }
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      +[RTRuntime footprint];
      *buf = 138413058;
      v36 = v10;
      v37 = 2112;
      v38 = v11;
      v39 = 2048;
      v40 = v12;
      v41 = 2048;
      v42 = 15;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, deferring attempt to generate diagnostic files; exceeding memory threshold, current footprint, %.4f MB, footprint threshold, %lu MB", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v33 = *MEMORY[0x277CCA450];
    v34 = @"routined exceeding persistence mirroring manager's memory threshold for generating diagnostic files.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v13 errorWithDomain:v14 code:0 userInfo:v15];
    *a4 = v16 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:

  return v16;
}

- (BOOL)_fetchDatabaseChangesForDatabase:(id)a3 outputURL:(id)a4 error:(id *)a5
{
  v83 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v57 = v9;
  v53 = v10;
  if (!v9)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: database", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_19;
    }

    v19 = _RTErrorInvalidParameterCreate(@"database");
LABEL_18:
    v52 = 0;
    *a5 = v19;
    goto LABEL_32;
  }

  if (!v10)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outputURL", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_19;
    }

    v19 = _RTErrorInvalidParameterCreate(@"outputURL");
    goto LABEL_18;
  }

  if ([(RTPersistenceMirroringManager *)self exceedingMemoryThreshold])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        +[RTRuntime footprint];
        *buf = 138413058;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2048;
        v75 = v15;
        LOWORD(v76) = 2048;
        *(&v76 + 2) = 15;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, deferring attempt to fetch database changes; exceeding memory threshold, current footprint, %.4f MB, footprint threshold, %lu MB", buf, 0x2Au);
      }
    }

    if (a5)
    {
      v16 = MEMORY[0x277CCA9B8];
      v79 = *MEMORY[0x277CCA450];
      v80 = @"routined exceeding persistence mirroring manager's memory threshold for fetching database changes.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      *a5 = [v16 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v17];
    }

LABEL_19:
    v52 = 0;
    goto LABEL_32;
  }

  v51 = [v53 URLByAppendingPathComponent:@"database-changes.txt"];
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [v51 path];
  [v21 createFileAtPath:v22 contents:0 attributes:0];

  v23 = MEMORY[0x277CCA9F8];
  v24 = [v51 path];
  v56 = [v23 fileHandleForWritingAtPath:v24];

  v52 = v56 != 0;
  if (v56)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v75 = __Block_byref_object_copy__32;
    *&v76 = __Block_byref_object_dispose__32;
    *(&v76 + 1) = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    v54 = *MEMORY[0x277D01448];
    v55 = *MEMORY[0x277CCA450];
    do
    {
      context = objc_autoreleasePoolPush();
      v25 = objc_alloc(MEMORY[0x277CBC388]);
      v26 = [v25 initWithPreviousServerChangeToken:*(*&buf[8] + 40)];
      [v26 setFetchAllChanges:0];
      [v26 setResultsLimit:1024];
      v27 = dispatch_semaphore_create(0);
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __82__RTPersistenceMirroringManager__fetchDatabaseChangesForDatabase_outputURL_error___block_invoke;
      v68[3] = &unk_2788C7D80;
      v28 = v56;
      v69 = v28;
      [v26 setRecordZoneWithIDChangedBlock:v68];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __82__RTPersistenceMirroringManager__fetchDatabaseChangesForDatabase_outputURL_error___block_invoke_227;
      v66[3] = &unk_2788C7D80;
      v29 = v28;
      v67 = v29;
      [v26 setRecordZoneWithIDWasDeletedBlock:v66];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __82__RTPersistenceMirroringManager__fetchDatabaseChangesForDatabase_outputURL_error___block_invoke_231;
      v64[3] = &unk_2788C7D80;
      v30 = v29;
      v65 = v30;
      [v26 setRecordZoneWithIDWasPurgedBlock:v64];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __82__RTPersistenceMirroringManager__fetchDatabaseChangesForDatabase_outputURL_error___block_invoke_235;
      v59[3] = &unk_2788C7DA8;
      v31 = v30;
      v60 = v31;
      v62 = buf;
      v63 = &v70;
      v32 = v27;
      v61 = v32;
      [v26 setFetchDatabaseChangesCompletionBlock:v59];
      [v57 addOperation:v26];
      v33 = v32;
      v34 = [MEMORY[0x277CBEAA8] now];
      v35 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v33, v35))
      {
        v36 = [MEMORY[0x277CBEAA8] now];
        [v36 timeIntervalSinceDate:v34];
        v38 = v37;
        v39 = objc_opt_new();
        v40 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_27];
        v41 = [MEMORY[0x277CCACC8] callStackSymbols];
        v42 = [v41 filteredArrayUsingPredicate:v40];
        v43 = [v42 firstObject];

        [v39 submitToCoreAnalytics:v43 type:1 duration:v38];
        v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          *v82 = 0;
          _os_log_fault_impl(&dword_2304B3000, v44, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v82, 2u);
        }

        v45 = MEMORY[0x277CCA9B8];
        v81 = v55;
        *v82 = @"semaphore wait timeout";
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
        v47 = [v45 errorWithDomain:v54 code:15 userInfo:v46];

        if (v47)
        {
          v48 = v47;
        }
      }

      objc_autoreleasePoolPop(context);
    }

    while ((v71[3] & 1) != 0);
    [v31 closeFile];
    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(buf, 8);
  }

  else if (a5)
  {
    v77 = *MEMORY[0x277CCA450];
    v78 = @"Could not open file descriptor to write diagnostics.";
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v49];
  }

LABEL_32:
  return v52;
}

void __82__RTPersistenceMirroringManager__fetchDatabaseChangesForDatabase_outputURL_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Record Zone With ID was changed: %@", v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v8 = [v5 dataUsingEncoding:4];
  [v7 writeData:v8];

  objc_autoreleasePoolPop(v4);
}

void __82__RTPersistenceMirroringManager__fetchDatabaseChangesForDatabase_outputURL_error___block_invoke_227(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Record Zone With ID was deleted: %@", v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v8 = [v5 dataUsingEncoding:4];
  [v7 writeData:v8];

  objc_autoreleasePoolPop(v4);
}

void __82__RTPersistenceMirroringManager__fetchDatabaseChangesForDatabase_outputURL_error___block_invoke_231(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Record Zone With ID was purged: %@", v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v8 = [v5 dataUsingEncoding:4];
  [v7 writeData:v8];

  objc_autoreleasePoolPop(v4);
}

void __82__RTPersistenceMirroringManager__fetchDatabaseChangesForDatabase_outputURL_error___block_invoke_235(uint64_t a1, void *a2, int a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = MEMORY[0x277CCACA8];
  if (v9)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"An error occurred fetching changes: %@", v9];
  }

  else
  {
    if (a3)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = [v8 data];
    v15 = [v14 base64EncodedStringWithOptions:0];
    v12 = [v11 stringWithFormat:@"MoreComing: %@. Server Notification Change Token %@", v13, v15];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  v17 = *(a1 + 32);
  v18 = [v12 dataUsingEncoding:4];
  [v17 writeData:v18];

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  *(*(*(a1 + 56) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 40));

  objc_autoreleasePoolPop(v10);
}

- (BOOL)_fetchZoneChangesForDatabase:(id)a3 outputURL:(id)a4 error:(id *)a5
{
  v94 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v62 = v9;
  v56 = v10;
  if (!v9)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: database", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_19;
    }

    v19 = _RTErrorInvalidParameterCreate(@"database");
LABEL_18:
    v55 = 0;
    *a5 = v19;
    goto LABEL_32;
  }

  if (!v10)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outputURL", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_19;
    }

    v19 = _RTErrorInvalidParameterCreate(@"outputURL");
    goto LABEL_18;
  }

  if ([(RTPersistenceMirroringManager *)self exceedingMemoryThreshold])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        +[RTRuntime footprint];
        *buf = 138413058;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2048;
        v86 = v15;
        LOWORD(v87) = 2048;
        *(&v87 + 2) = 15;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, deferring attempt to fetch zone changes; exceeding memory threshold, current footprint, %.4f MB, footprint threshold, %lu MB", buf, 0x2Au);
      }
    }

    if (a5)
    {
      v16 = MEMORY[0x277CCA9B8];
      v90 = *MEMORY[0x277CCA450];
      v91 = @"routined exceeding persistence mirroring manager's memory threshold for fetching zone changes.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      *a5 = [v16 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v17];
    }

LABEL_19:
    v55 = 0;
    goto LABEL_32;
  }

  v54 = [v56 URLByAppendingPathComponent:@"zone-changes.txt"];
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [v54 path];
  [v21 createFileAtPath:v22 contents:0 attributes:0];

  v23 = MEMORY[0x277CCA9F8];
  v24 = [v54 path];
  v61 = [v23 fileHandleForWritingAtPath:v24];

  v55 = v61 != 0;
  if (v61)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v86 = __Block_byref_object_copy__32;
    *&v87 = __Block_byref_object_dispose__32;
    *(&v87 + 1) = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v60 = *MEMORY[0x277CBBF28];
    v57 = *MEMORY[0x277D01448];
    v58 = *MEMORY[0x277CCA450];
    do
    {
      context = objc_autoreleasePoolPush();
      v65 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:v60];
      v25 = objc_opt_new();
      [v25 setPreviousServerChangeToken:*(*&buf[8] + 40)];
      [v25 setFetchNewestChangesFirst:0];
      [v25 setResultsLimit:1024];
      v26 = objc_alloc(MEMORY[0x277CBC3B8]);
      v84 = v65;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
      v82 = v65;
      v83 = v25;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v29 = [v26 initWithRecordZoneIDs:v27 configurationsByRecordZoneID:v28];

      [v29 setFetchAllChanges:0];
      v30 = objc_opt_new();
      v31 = dispatch_semaphore_create(0);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __78__RTPersistenceMirroringManager__fetchZoneChangesForDatabase_outputURL_error___block_invoke;
      v75[3] = &unk_2788C7DD0;
      v63 = v30;
      v76 = v63;
      v32 = v61;
      v77 = v32;
      [v29 setRecordWasChangedBlock:v75];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __78__RTPersistenceMirroringManager__fetchZoneChangesForDatabase_outputURL_error___block_invoke_265;
      v73[3] = &unk_2788C7DF8;
      v33 = v32;
      v74 = v33;
      [v29 setRecordWithIDWasDeletedBlock:v73];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __78__RTPersistenceMirroringManager__fetchZoneChangesForDatabase_outputURL_error___block_invoke_270;
      v69[3] = &unk_2788C7E20;
      v34 = v33;
      v70 = v34;
      v71 = buf;
      v72 = &v78;
      [v29 setRecordZoneFetchCompletionBlock:v69];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __78__RTPersistenceMirroringManager__fetchZoneChangesForDatabase_outputURL_error___block_invoke_275;
      v66[3] = &unk_2788C7E48;
      v59 = v34;
      v67 = v59;
      v35 = v31;
      v68 = v35;
      [v29 setFetchRecordZoneChangesCompletionBlock:v66];
      [v62 addOperation:v29];
      v36 = v35;
      v37 = [MEMORY[0x277CBEAA8] now];
      v38 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v36, v38))
      {
        v39 = [MEMORY[0x277CBEAA8] now];
        [v39 timeIntervalSinceDate:v37];
        v41 = v40;
        v42 = objc_opt_new();
        v43 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_27];
        v44 = [MEMORY[0x277CCACC8] callStackSymbols];
        v45 = [v44 filteredArrayUsingPredicate:v43];
        v46 = [v45 firstObject];

        [v42 submitToCoreAnalytics:v46 type:1 duration:v41];
        v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          *v93 = 0;
          _os_log_fault_impl(&dword_2304B3000, v47, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v93, 2u);
        }

        v48 = MEMORY[0x277CCA9B8];
        v92 = v58;
        *v93 = @"semaphore wait timeout";
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:&v92 count:1];
        v50 = [v48 errorWithDomain:v57 code:15 userInfo:v49];

        if (v50)
        {
          v51 = v50;
        }
      }

      objc_autoreleasePoolPop(context);
    }

    while ((v79[3] & 1) != 0);
    [v59 closeFile];
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(buf, 8);
  }

  else if (a5)
  {
    v88 = *MEMORY[0x277CCA450];
    v89 = @"Could not open file descriptor to write diagnostics.";
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v52];
  }

LABEL_32:
  return v55;
}

void __78__RTPersistenceMirroringManager__fetchZoneChangesForDatabase_outputURL_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  [*(a1 + 32) addObject:v8];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu %@", objc_msgSend(*(a1 + 32), "count"), v8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v11;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v13 = *(a1 + 40);
  v14 = [v11 dataUsingEncoding:4];
  [v13 writeData:v14];

  objc_autoreleasePoolPop(v10);
}

void __78__RTPersistenceMirroringManager__fetchZoneChangesForDatabase_outputURL_error___block_invoke_265(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RecordDeleted: %@ (%@)", v5, v6];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v10 = *(a1 + 32);
  v11 = [v8 dataUsingEncoding:4];
  [v10 writeData:v11];

  objc_autoreleasePoolPop(v7);
}

void __78__RTPersistenceMirroringManager__fetchZoneChangesForDatabase_outputURL_error___block_invoke_270(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  context = objc_autoreleasePoolPush();
  if (v12)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [v12 base64EncodedStringWithOptions:0];
    v16 = [v14 stringWithFormat:@"Client Change Token %@", v15];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v16;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    v18 = a1[4];
    v19 = [v16 dataUsingEncoding:4];
    [v18 writeData:v19];
  }

  v20 = MEMORY[0x277CCACA8];
  if (v13)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"An error occurred fetching changes: %@", v13];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v21;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (a5)
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v26 = [v11 data];
  v27 = [v26 base64EncodedStringWithOptions:0];
  v21 = [v20 stringWithFormat:@"MoreComing: %@. Server Notification Change Token %@", v25, v27, context, v29];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v21;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
  v23 = a1[4];
  v24 = [v21 dataUsingEncoding:4];
  [v23 writeData:v24];

  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  *(*(a1[6] + 8) + 24) = a5;
  objc_autoreleasePoolPop(context);
}

void __78__RTPersistenceMirroringManager__fetchZoneChangesForDatabase_outputURL_error___block_invoke_275(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"An error occurred fetching changes: %@", v3];
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [v5 dataUsingEncoding:4];
    [v7 writeData:v8];
  }

  dispatch_semaphore_signal(*(a1 + 40));
  objc_autoreleasePoolPop(v4);
}

- (void)onMirroringDelegateInitialization:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__RTPersistenceMirroringManager_onMirroringDelegateInitialization___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onMirroringDelegateInitialization:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  if (![v5 isEqualToString:@"RTPersistenceStoreMirroringDelegateDidInitializeNotificationName"])
  {
    v6 = [v4 name];
    v7 = [v6 isEqualToString:@"RTPersistenceStoreMirroringDelegateFailedToInitializeNotificationName"];

    if (v7)
    {
      goto LABEL_6;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v17 = @"RTPersistenceStoreMirroringDelegateDidInitializeNotificationName";
      v18 = 2112;
      v19 = @"RTPersistenceStoreMirroringDelegateFailedToInitializeNotificationName";
      v20 = 2080;
      v21 = "[RTPersistenceMirroringManager _onMirroringDelegateInitialization:]";
      v22 = 1024;
      v23 = 1825;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "notification name is not %@ or %@ (in %s:%d)", buf, 0x26u);
    }
  }

LABEL_6:
  v8 = [v4 name];
  if ([v8 isEqualToString:@"RTPersistenceStoreMirroringDelegateDidInitializeNotificationName"])
  {
  }

  else
  {
    v9 = [v4 name];
    v10 = [v9 isEqualToString:@"RTPersistenceStoreMirroringDelegateFailedToInitializeNotificationName"];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v11 = [v4 name];
  v12 = [v11 isEqualToString:@"RTPersistenceStoreMirroringDelegateFailedToInitializeNotificationName"];

  if (v12)
  {
    cloudSyncAuthorizationState = self->_cloudSyncAuthorizationState;
    accountManager = self->_accountManager;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__RTPersistenceMirroringManager__onMirroringDelegateInitialization___block_invoke;
    v15[3] = &unk_2788C7E98;
    v15[4] = self;
    v15[5] = cloudSyncAuthorizationState;
    [(RTAccountManager *)accountManager fetchCloudSyncAuthorizationState:v15];
  }

  [(RTPersistenceMirroringManager *)self _updateMirroringDelegateState];
LABEL_12:
}

void __68__RTPersistenceMirroringManager__onMirroringDelegateInitialization___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTPersistenceMirroringManager__onMirroringDelegateInitialization___block_invoke_2;
  block[3] = &unk_2788C7E70;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __68__RTPersistenceMirroringManager__onMirroringDelegateInitialization___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = [RTAccountManager cloudSyncAuthorizationToString:a1[5]];
    v4 = [RTAccountManager cloudSyncAuthorizationToString:a1[6]];
    v5 = a1[4];
    v6 = 138412802;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_fault_impl(&dword_2304B3000, v2, OS_LOG_TYPE_FAULT, "persistence mirroring manager failed to initialize, currentCloudSyncAuthState, %@, fetchedCloudSyncAuthState, %@, fetchError, %@", &v6, 0x20u);
  }
}

- (id)_fetchHistoryTransactionBatchFromContext:(id)a3 store:(id)a4 fromToken:(id)a5 limit:(unint64_t)a6 error:(id *)a7
{
  v30[1] = *MEMORY[0x277D85DE8];
  v29 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEB18];
  v12 = a3;
  v13 = [v11 array];
  v14 = MEMORY[0x277CCAC30];
  if (v10)
  {
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", @"token", v10];
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] distantPast];
    v15 = [v14 predicateWithFormat:@"%K >= %@", @"timestamp", v16];
  }

  [v13 addObject:v15];

  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %@", @"author", @"NSCloudKitMirroringDelegate.import"];
  [v13 addObject:v17];
  v18 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v13];
  v19 = [MEMORY[0x277CBE4C8] entityDescriptionWithContext:v12];
  v20 = objc_alloc(MEMORY[0x277CBE428]);
  v21 = [v19 name];
  v22 = [v20 initWithEntityName:v21];

  [v22 setPredicate:v18];
  v23 = objc_alloc_init(MEMORY[0x277CBE4B0]);
  [v23 setFetchRequest:v22];
  v30[0] = v29;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v23 setAffectedStores:v24];

  [v23 setFetchLimit:a6];
  v25 = [v12 executeRequest:v23 error:a7];

  if (*a7)
  {
    v26 = 0;
  }

  else
  {
    v26 = [v25 result];
  }

  return v26;
}

- (unint64_t)_changeCountForManagedObjectContext:(id)a3 currentExporterToken:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = NSStringFromSelector(a2);
  v14 = [v10 stringWithFormat:@"%@-%@", v12, v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138412546;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v17 = [v8 persistentStoreCoordinator];
  v18 = [(RTPersistenceMirroringManager *)self persistenceManager];
  v19 = [v18 persistenceStoreForType:1];
  v20 = [v19 URL];
  v21 = [v17 persistentStoreForURL:v20];

  if (v21)
  {
    v22 = [(RTPersistenceMirroringManager *)self _countChangesInTransactionsFromContext:v8 store:v21 startingToken:v9 error:a5];
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      *buf = 138412290;
      v31 = v28;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, failed to get cloud store", buf, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

- (unint64_t)_countChangesInTransactionsFromContext:(id)a3 store:(id)a4 startingToken:(id)a5 error:(id *)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v48 = v10;
  v14 = [(RTPersistenceMirroringManager *)self _fetchHistoryTransactionBatchFromContext:v10 store:v11 fromToken:v12 limit:50 error:a6];
  v45 = a6;
  if (*a6)
  {
    v15 = v12;
LABEL_3:
    v16 = v14;
    v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      v35 = *v45;
      *buf = 138412546;
      v54 = v34;
      v55 = 2112;
      v56 = v35;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, failed to extract batch transactions, error, %@", buf, 0x16u);
    }

    v18 = 0;
    v19 = v15;
LABEL_26:

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v18 = 0;
    v20 = MEMORY[0x277D86220];
    v47 = v12;
    v42 = v12;
    v43 = v11;
    v40 = self;
    while (1)
    {
      if (![v14 count])
      {
        v19 = v47;
        goto LABEL_30;
      }

      context = v13;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v39 = v14;
      v17 = v14;
      v21 = [v17 countByEnumeratingWithState:&v49 objects:v61 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v50;
        while (2)
        {
          v24 = 0;
          do
          {
            if (*v50 != v23)
            {
              objc_enumerationMutation(v17);
            }

            v25 = *(*(&v49 + 1) + 8 * v24);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v26 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v28 = NSStringFromSelector(a2);
                v41 = [v25 transactionNumber];
                v29 = [v25 changes];
                v30 = [v29 count];
                *buf = 138413058;
                v54 = v28;
                v55 = 2112;
                v56 = v47;
                v57 = 2048;
                v58 = v41;
                v59 = 2048;
                v60 = v30;
                _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "%@, currentToken, %@, transactionNumber, %lld, transactionCount, %lu", buf, 0x2Au);
              }
            }

            v27 = [v25 changes];
            v18 += [v27 count];

            if (v18 >> 4 >= 0x271)
            {
              v32 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v36 = NSStringFromSelector(a2);
                *buf = 138412546;
                v54 = v36;
                v55 = 1024;
                LODWORD(v56) = 10000;
                _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, change count exceeded limit (%d), terminating count early", buf, 0x12u);
              }

              v16 = v17;
              v12 = v42;
              v11 = v43;
              v13 = context;
              v19 = v47;
              goto LABEL_26;
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v17 countByEnumeratingWithState:&v49 objects:v61 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v31 = [v17 lastObject];
      v15 = [v31 token];

      if ([v17 count]< 0x32)
      {
        break;
      }

      [v48 reset];

      objc_autoreleasePoolPop(context);
      v13 = objc_autoreleasePoolPush();
      v11 = v43;
      v14 = [(RTPersistenceMirroringManager *)v40 _fetchHistoryTransactionBatchFromContext:v48 store:v43 fromToken:v15 limit:50 error:v45];
      v47 = v15;
      v12 = v42;
      if (*v45)
      {
        goto LABEL_3;
      }
    }

    v19 = v15;
    v12 = v42;
    v11 = v43;
    v13 = context;
    v14 = v39;
LABEL_30:

    objc_autoreleasePoolPop(v13);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = NSStringFromSelector(a2);
        *buf = 138412546;
        v54 = v38;
        v55 = 2048;
        v56 = v18;
        _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, change count, %lu", buf, 0x16u);
      }
    }
  }

  return v18;
}

- (BOOL)_shouldResetForChangeCountForManagedObjectContext:(id)a3 currentExporterToken:(id)a4 changeRequestError:(id *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v7 = [(RTPersistenceMirroringManager *)self _changeCountForManagedObjectContext:a3 currentExporterToken:a4 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "error while querying persistent history, %@", buf, 0xCu);
    }

    if (a5)
    {
      v10 = v8;
      v11 = 0;
      *a5 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(RTPersistenceMirroringManager *)self _calculateStoreShouldResetFromChangeHistoryCount:v7];
  }

  return v11;
}

- (void)fetchDiagnosticLogsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTPersistenceMirroringManager *)self platform];
  v6 = [v5 internalInstall];

  if (v6)
  {
    v7 = [(RTNotifier *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__RTPersistenceMirroringManager_fetchDiagnosticLogsWithHandler___block_invoke;
    v8[3] = &unk_2788C4938;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }

  else
  {
    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8], 0);
  }
}

void __64__RTPersistenceMirroringManager_fetchDiagnosticLogsWithHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277CCACA8];
  if ([*(a1 + 32) _dataAvailableToMirror])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [v3 stringWithFormat:@"persistence manager, available, %@, mirroring delegate state, %ld\n", v4, objc_msgSend(*(a1 + 32), "_mirroringDelegateState")];
  [v2 addObject:v5];

  if ([*(a1 + 32) _dataAvailableToMirror])
  {
    v6 = [*(a1 + 32) persistenceManager];
    v7 = [v6 persistenceContextWithOptions:2];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__RTPersistenceMirroringManager_fetchDiagnosticLogsWithHandler___block_invoke_2;
    v9[3] = &unk_2788C76F8;
    v9[4] = *(a1 + 32);
    v10 = v7;
    v11 = v2;
    v8 = v7;
    [v8 performBlockAndWait:v9];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __64__RTPersistenceMirroringManager_fetchDiagnosticLogsWithHandler___block_invoke_2(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v1 = [*(a1 + 32) persistenceManager];
  v2 = [v1 latestModel];
  v3 = [v2 entitiesByName];
  v4 = [v3 allValues];

  obj = v4;
  v66 = [v4 countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v66)
  {
    v65 = *v77;
    do
    {
      v5 = 0;
      do
      {
        if (*v77 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v76 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v7 = [&unk_2845A0AA0 countByEnumeratingWithState:&v72 objects:v82 count:16];
        v8 = a1;
        v68 = v5;
        if (v7)
        {
          v9 = *v73;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v73 != v9)
              {
                objc_enumerationMutation(&unk_2845A0AA0);
              }

              v11 = *(*(&v72 + 1) + 8 * i);
              v12 = [v6 attributesByName];
              v13 = [v12 objectForKey:v11];

              if (v13)
              {
                v18 = v11;
                if (v18)
                {
                  v19 = v18;
                  v20 = objc_alloc(MEMORY[0x277CBE428]);
                  v21 = [v6 managedObjectClassName];
                  v22 = [v20 initWithEntityName:v21];

                  [v22 setResultType:2];
                  v64 = v19;
                  v23 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v19];
                  v24 = objc_alloc_init(MEMORY[0x277CBE410]);
                  [v24 setName:@"firstDate"];
                  v25 = MEMORY[0x277CCA9C0];
                  v63 = v23;
                  v26 = [MEMORY[0x277CBEA60] arrayWithObject:v23];
                  v27 = [v25 expressionForFunction:@"min:" arguments:v26];
                  [v24 setExpression:v27];

                  [v24 setExpressionResultType:900];
                  v28 = objc_alloc_init(MEMORY[0x277CBE410]);
                  [v28 setName:@"lastDate"];
                  v29 = MEMORY[0x277CCA9C0];
                  v30 = [MEMORY[0x277CBEA60] arrayWithObject:v23];
                  v31 = [v29 expressionForFunction:@"max:" arguments:v30];
                  [v28 setExpression:v31];

                  [v28 setExpressionResultType:900];
                  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:{v24, v28, 0}];
                  [v22 setPropertiesToFetch:v32];

                  v33 = [*(a1 + 40) executeFetchRequest:v22 error:0];
                  v34 = [v33 lastObject];
                  v35 = [v34 valueForKey:@"firstDate"];

                  v36 = [v33 lastObject];
                  v15 = [v36 valueForKey:@"lastDate"];

                  v14 = v35;
                  v17 = 0;
                  if (v35 && v15)
                  {
                    v37 = objc_alloc(MEMORY[0x277CBE428]);
                    v38 = [v6 managedObjectClassName];
                    v39 = [v37 initWithEntityName:v38];

                    v8 = a1;
                    v7 = [*(a1 + 40) countForFetchRequest:v39 error:0];
                    v40 = [v6 attributesByName];
                    v41 = [v40 valueForKey:@"flags"];

                    if (v41)
                    {
                      v42 = +[RTCloudManagedObject tombstonedPredicate];
                      [v39 setPredicate:v42];

                      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "countForFetchRequest:error:", v39, 0)}];
                    }

                    else
                    {
                      v17 = 0;
                    }
                  }

                  else
                  {
                    v7 = 0;
                    v8 = a1;
                  }

                  v16 = v64;
                }

                else
                {
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v7 = 0;
                }

                goto LABEL_25;
              }
            }

            v7 = [&unk_2845A0AA0 countByEnumeratingWithState:&v72 objects:v82 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
LABEL_25:
        v43 = *(v8 + 48);
        v44 = MEMORY[0x277CCACA8];
        v45 = [v6 name];
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
        v47 = [v14 stringFromDate];
        [v15 stringFromDate];
        v49 = v48 = v14;
        v50 = [v44 stringWithFormat:@"%@ count, %@, tombstoneCount, %@, firstInsertDate, %@, lastInsertDate, %@", v45, v46, v17, v47, v49];
        [v43 addObject:v50];

        objc_autoreleasePoolPop(context);
        v5 = v68 + 1;
      }

      while (v68 + 1 != v66);
      v66 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v66);
  }

  if ([*(a1 + 32) _mirroringDelegateState] == 1)
  {
    v51 = *(a1 + 32);
    v52 = *(a1 + 40);
    v71 = 0;
    v53 = [v51 currentExporterTokenWithManagedObjectContext:v52 error:&v71];
    v54 = v71;
    v55 = [v51 transactionHistoryCountRequestWithManagedObjectContext:v52 currentExporterToken:v53];

    if (!v54)
    {
      v56 = *(a1 + 40);
      v70 = 0;
      v57 = [v56 executeRequest:v55 error:&v70];
      v54 = v70;
      if (v54)
      {
        v58 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v81 = v54;
          _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "error while querying persistent history, %@", buf, 0xCu);
        }
      }

      v59 = [v57 result];
      v60 = *(a1 + 48);
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Transaction count, %@", v59];
      [v60 addObject:v61];
    }
  }
}

- (id)currentExporterTokenWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v61[1] = *MEMORY[0x277D85DE8];
  v37 = a3;
  v4 = [v37 currentDevice];
  v5 = [v4 objectID];

  v6 = dispatch_semaphore_create(0);
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__32;
  v56 = __Block_byref_object_dispose__32;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__32;
  v50 = __Block_byref_object_dispose__32;
  v51 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__RTPersistenceMirroringManager_currentExporterTokenWithManagedObjectContext_error___block_invoke;
  aBlock[3] = &unk_2788C7EC0;
  v44 = &v46;
  v38 = v5;
  v42 = v38;
  v45 = &v52;
  v7 = v6;
  v43 = v7;
  v39 = _Block_copy(aBlock);
  v8 = [objc_alloc(MEMORY[0x277CBE3A8]) initWithOptions:0 completionBlock:v39];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v38];
  [v8 setObjectIDsToFetch:v9];

  v40 = 0;
  v35 = [v37 executeRequest:v8 error:&v40];
  v10 = v40;
  v11 = v7;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_27];
    v19 = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [v19 filteredArrayUsingPredicate:v18];
    v21 = [v20 firstObject];

    [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v61[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v61 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;

      v27 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = 1;
LABEL_8:

  v28 = v25;
  if ((v27 & 1) == 0)
  {
    if (a4)
    {
LABEL_19:
      v31 = v10;
      v29 = 0;
      *a4 = v10;
      goto LABEL_21;
    }

LABEL_20:
    v29 = 0;
    goto LABEL_21;
  }

  if (!v35 || v10)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v33;
      v59 = 2112;
      v60 = v10;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, encountered error during export progress request, error, %@", buf, 0x16u);
    }

    if (a4)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (a4)
  {
    *a4 = v53[5];
  }

  v29 = v47[5];
LABEL_21:

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  return v29;
}

void __84__RTPersistenceMirroringManager_currentExporterTokenWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 success])
  {
    v4 = [v3 objectIDToLastExportedToken];
    v5 = [v4 objectForKey:*(a1 + 32)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = [v3 error];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 error];
      v12 = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "export progress request failed with error, %@", &v12, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)transactionHistoryFetchRequestWithManagedObjectContext:(id)a3 currentExporterToken:(id)a4
{
  v5 = MEMORY[0x277CBE4C8];
  v6 = a4;
  v7 = [v5 entityDescriptionWithContext:a3];
  v8 = objc_alloc(MEMORY[0x277CBE428]);
  v9 = [v7 name];
  v10 = [v8 initWithEntityName:v9];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@ && %K == %@", @"token", v6, @"author", @"ExpirationEnforcer"];

  [v10 setPredicate:v11];

  return v10;
}

- (id)transactionHistoryRequestWithManagedObjectContext:(id)a3 currentExporterToken:(id)a4
{
  v4 = [(RTPersistenceMirroringManager *)self transactionHistoryFetchRequestWithManagedObjectContext:a3 currentExporterToken:a4];
  v5 = [MEMORY[0x277CBE4B0] fetchHistoryWithFetchRequest:v4];
  [v5 setResultType:3];

  return v5;
}

- (id)transactionHistoryCountRequestWithManagedObjectContext:(id)a3 currentExporterToken:(id)a4
{
  v4 = [(RTPersistenceMirroringManager *)self transactionHistoryFetchRequestWithManagedObjectContext:a3 currentExporterToken:a4];
  v5 = [MEMORY[0x277CBE4B0] fetchHistoryWithFetchRequest:v4];
  [v5 setResultType:2];

  return v5;
}

- (BOOL)_evaluatePersistentHistoryLengthWithManagedObjectContext:(id)a3 shouldResetSync:(BOOL *)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    if (v8)
    {
      if (a4)
      {
        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v32 = 0;
        if ([(RTPersistenceMirroringManager *)self _mirroringDelegateState]== 1)
        {
          *buf = 0;
          v24 = buf;
          v25 = 0x3032000000;
          v26 = __Block_byref_object_copy__32;
          v27 = __Block_byref_object_dispose__32;
          v28 = 0;
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __112__RTPersistenceMirroringManager__evaluatePersistentHistoryLengthWithManagedObjectContext_shouldResetSync_error___block_invoke;
          v19[3] = &unk_2788C7EE8;
          v19[4] = self;
          v20 = v9;
          v21 = buf;
          v22 = &v29;
          [v20 performBlockAndWait:v19];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v10 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              v18 = *(v30 + 24);
              *v33 = 67109120;
              v34 = v18;
              _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "calculated value for shouldResetSync: %d", v33, 8u);
            }
          }

          *a4 = *(v30 + 24);
          *a5 = *(v24 + 5);
          v11 = *(v24 + 5) == 0;

          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "mirroring delegate not ready to evaluate export progress, skipping.", buf, 2u);
            }
          }

          *a4 = *(v30 + 24);
          v11 = 1;
        }

        _Block_object_dispose(&v29, 8);
        goto LABEL_26;
      }

      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: shouldResetSync != NULL", buf, 2u);
      }

      v14 = _RTErrorInvalidParameterCreate(@"shouldResetSync != NULL");
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext", buf, 2u);
      }

      v14 = _RTErrorInvalidParameterCreate(@"managedObjectContext");
    }

    v11 = 0;
    *a5 = v14;
    goto LABEL_26;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v11 = 0;
LABEL_26:

  return v11;
}

void __112__RTPersistenceMirroringManager__evaluatePersistentHistoryLengthWithManagedObjectContext_shouldResetSync_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 currentExporterTokenWithManagedObjectContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = [*(a1 + 32) transactionHistoryRequestWithManagedObjectContext:*(a1 + 40) currentExporterToken:v5];
    v7 = *(a1 + 40);
    v16 = 0;
    v8 = [v7 executeRequest:v6 error:&v16];
    v9 = v16;
    if (v9)
    {
      v10 = v9;
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "error while querying persistent history, %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = [v8 result];
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _calculateStoreShouldResetFromTransactionHistory:v11];
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        v10 = 0;
      }

      else
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v15 = 0;
        v14 = [v12 _shouldResetForChangeCountForManagedObjectContext:v13 currentExporterToken:v5 changeRequestError:&v15];
        v10 = v15;
        *(*(*(a1 + 56) + 8) + 24) = v14;
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "current exporter token is nil, shouldReset, NO", buf, 2u);
    }
  }
}

- (BOOL)_calculateStoreShouldResetFromChangeHistoryCount:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);
  v6 = a3 >> 4;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained mirroringManager:self exceededHistoryType:1 count:a3 limit:10000 hasExceeded:v6 > 0x270];
  }

  return v6 > 0x270;
}

- (BOOL)_calculateStoreShouldResetFromTransactionHistory:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEAA8] distantPast];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = self;
      v24 = v4;
      v9 = 0;
      v10 = *v26;
      v11 = MEMORY[0x277D86220];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v9 = (v9 + 1);
          if (v9 > 0x18)
          {
            v20 = 1;
            goto LABEL_22;
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 timestamp];
          v15 = [v14 isOnOrAfter:v5];

          if (v15)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                v30 = v9;
                _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "Reset reset-sync window transaction count %lu", buf, 0xCu);
              }
            }

            v17 = v5;
            v18 = [v13 timestamp];
            v5 = [v18 dateByAddingTimeInterval:86400.0];

            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v30 = v5;
                v31 = 2112;
                v32 = v17;
                _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "Reset reset-sync window, new window, %@, old window, %@", buf, 0x16u);
              }
            }

            v9 = 0;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_22:
      self = v23;
      v4 = v24;
    }

    else
    {
      v9 = 0;
      v20 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained mirroringManager:self exceededHistoryType:2 count:v9 limit:25 hasExceeded:v20];
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOBYTE(v20) = 0;
      goto LABEL_32;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "export progress request had no results", buf, 2u);
    }

    LOBYTE(v20) = 0;
  }

LABEL_32:
  return v20;
}

- (RTPersistenceMirroringMetricsDelegate)metricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);

  return WeakRetained;
}

- (void)collectMetricsFromMirroringRequest:(id)a3 error:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [v10 initWithCString:RTAnalyticsEventPersistenceMirroringOperation encoding:1];
  v12 = [v9 stringWithFormat:@"com.apple.%@", v11];
  IsEventUsed = AnalyticsIsEventUsed();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(a2);
      v16 = @"NO";
      *buf = 138413058;
      v23 = v15;
      if (IsEventUsed)
      {
        v16 = @"YES";
      }

      v24 = 2112;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, mirroringRequest, %@, error, %@, isEventActive, %@", buf, 0x2Au);
    }
  }

  if (IsEventUsed)
  {
    v17 = [(RTPersistenceMirroringManager *)self persistenceManager];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __83__RTPersistenceMirroringManager_Metrics__collectMetricsFromMirroringRequest_error___block_invoke;
    v18[3] = &unk_2788C9930;
    v18[4] = self;
    v21 = a2;
    v19 = v7;
    v20 = v8;
    [v17 createManagedObjectContext:v18];
  }
}

void __83__RTPersistenceMirroringManager_Metrics__collectMetricsFromMirroringRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) persistenceManager];
  v5 = [v4 persistenceStoreForType:1];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v3 persistentStoreCoordinator];
  v7 = [v6 persistentStores];

  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v22 = v3;
    v10 = *v29;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v28 + 1) + 8 * v11);
      v13 = [v12 URL];
      v14 = [v5 URL];
      v15 = [v13 isEqual:v14];

      if (v15)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        v3 = v22;
        goto LABEL_12;
      }
    }

    v16 = v12;

    v3 = v22;
    if (!v16)
    {
      goto LABEL_13;
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __83__RTPersistenceMirroringManager_Metrics__collectMetricsFromMirroringRequest_error___block_invoke_2;
    v23[3] = &unk_2788C5F50;
    v24 = v16;
    v25 = v22;
    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    *&v20 = *(a1 + 32);
    *(&v20 + 1) = v17;
    *&v21 = v18;
    *(&v21 + 1) = v19;
    v26 = v21;
    v27 = v20;
    v7 = v16;
    [v25 performBlockAndWait:v23];
  }

LABEL_12:

LABEL_13:
}

void __83__RTPersistenceMirroringManager_Metrics__collectMetricsFromMirroringRequest_error___block_invoke_2(uint64_t a1)
{
  v109[1] = *MEMORY[0x277D85DE8];
  v85 = [MEMORY[0x277CBEAA8] distantPast];
  v70 = [MEMORY[0x277CBEAA8] date];
  v69 = [v70 dateByAddingTimeInterval:-4838400.0];
  v2 = [MEMORY[0x277CBE4B0] fetchHistoryAfterDate:?];
  [v2 setResultType:3];
  [v2 setFetchLimit:5];
  v109[0] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:1];
  [v2 setAffectedStores:v3];

  v82 = 0;
  v79 = 0;
  v4 = 0;
  v80 = a1;
  v71 = v2;
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v95 = 0;
    v7 = [v6 executeRequest:v2 error:&v95];
    v8 = v95;
    if (v8)
    {
      break;
    }

    context = v5;
    v9 = [v7 result];
    v72 = [v9 count];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v91 objects:v108 count:16];
    v73 = v7;
    if (!v10)
    {
      goto LABEL_29;
    }

    v11 = v10;
    v83 = *v92;
    while (2)
    {
      v12 = 0;
      v13 = v4++;
      v75 = &v13[v11];
      do
      {
        if (*v92 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v91 + 1) + 8 * v12);
        v15 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = NSStringFromSelector(*(a1 + 72));
            v18 = [v14 transactionNumber];
            v19 = [v14 timestamp];
            v20 = [v19 stringFromDate];
            *buf = 138412802;
            v98 = v17;
            v99 = 2048;
            v100 = v18;
            a1 = v80;
            v101 = 2112;
            v102 = v20;
            _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, transaction, %llu , timestamp, %@", buf, 0x20u);
          }
        }

        v21 = [v14 author];
        v22 = [v21 containsString:@"NSCloudKitMirroringDelegate"];

        if (v22)
        {
          v23 = [v14 timestamp];

          v85 = v23;
        }

        v24 = [v14 author];
        if ([v24 containsString:@"NSCloudKitMirroringDelegate"])
        {
          v25 = [v14 timestamp];
          v26 = [*(a1 + 48) enqueueDate];
          v27 = [v25 isOnOrAfter:v26];

          if (!v27)
          {
            goto LABEL_23;
          }

          ++v79;
          v28 = MEMORY[0x277CBE4B0];
          v29 = [v14 token];
          v24 = [v28 fetchHistoryTransactionForToken:v29];

          [v24 setResultType:6];
          v107 = *(a1 + 32);
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
          [v24 setAffectedStores:v30];

          v31 = *(a1 + 40);
          v90 = 0;
          v32 = [v31 executeRequest:v24 error:&v90];
          v33 = v90;
          if (v33)
          {
            v38 = v33;
            v39 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v98 = v38;
              _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "error while fetching changes history, %@", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v15);
            goto LABEL_29;
          }

          v34 = [v32 result];
          v35 = [v34 unsignedIntegerValue];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v36 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v78 = NSStringFromSelector(*(v80 + 72));
              v76 = [v14 transactionNumber];
              v77 = [v14 timestamp];
              v37 = [v77 stringFromDate];
              *buf = 138413058;
              v98 = v78;
              v99 = 2048;
              v100 = v76;
              v101 = 2112;
              v102 = v37;
              v103 = 2048;
              v104 = v35;
              _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, transaction, %llu, timestamp, %@, changesResultCount, %lu", buf, 0x2Au);
            }

            a1 = v80;
          }

          v82 += v35;
          [*(a1 + 40) reset];
        }

LABEL_23:
        objc_autoreleasePoolPop(v15);
        ++v12;
        ++v4;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v91 objects:v108 count:16];
      v4 = v75;
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_29:

    v2 = v71;
    [v71 setFetchOffset:{objc_msgSend(v71, "fetchOffset") + v72}];
    [*(a1 + 40) reset];

    objc_autoreleasePoolPop(context);
    if (!v72)
    {
      v41 = 0;
      goto LABEL_34;
    }
  }

  v41 = v8;
  v40 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v98 = v41;
    _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "error while fetching transaction history, %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
LABEL_34:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = NSStringFromSelector(*(a1 + 72));
      v44 = *(a1 + 48);
      *buf = 138413314;
      v98 = v43;
      v99 = 2112;
      v100 = v44;
      v101 = 2048;
      v102 = v4;
      v103 = 2048;
      v104 = v79;
      v105 = 2048;
      v106 = v82;
      _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, mirroringRequest, %@, transactionCount, %lu, transactionAfterMirroringRequestCount, %lu, changeCount, %lu", buf, 0x34u);
    }
  }

  v45 = v85;
  if (v4)
  {
    v46 = [*(a1 + 56) userInfo];
    v47 = [v46 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v48 = [*(a1 + 56) domain];
    if (![v48 isEqualToString:*MEMORY[0x277D01448]])
    {

      goto LABEL_51;
    }

    v49 = [*(a1 + 56) code];

    v50 = v49 == 9;
    v45 = v85;
    if (v50)
    {
      v51 = [*(a1 + 56) userInfo];
      v52 = [v51 objectForKeyedSubscript:*MEMORY[0x277D01440]];

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v53 = v52;
      v54 = [v53 countByEnumeratingWithState:&v86 objects:v96 count:16];
      if (v54)
      {
        v55 = v54;
        v84 = v41;
        v56 = *v87;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v87 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = [*(a1 + 64) persistenceOperationMetricWithMirroringRequest:*(a1 + 48) lastMirroringTransactionDate:v85 recordsChanged:v82 error:*(*(&v86 + 1) + 8 * i)];
            v59 = objc_alloc(MEMORY[0x277CCACA8]);
            v60 = [v59 initWithCString:RTAnalyticsEventPersistenceMirroringOperation encoding:1];
            log_analytics_submission(v60, v58);
            v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v60];
            AnalyticsSendEvent();

            a1 = v80;
          }

          v55 = [v53 countByEnumeratingWithState:&v86 objects:v96 count:16];
        }

        while (v55);
        v62 = v53;
        v2 = v71;
        v41 = v84;
      }

      else
      {
        v62 = v53;
      }
    }

    else
    {
LABEL_51:
      if (v47)
      {
        v63 = [*(a1 + 64) persistenceOperationMetricWithMirroringRequest:*(a1 + 48) lastMirroringTransactionDate:v45 recordsChanged:v82 error:v47];
        v64 = objc_alloc(MEMORY[0x277CCACA8]);
        v65 = [v64 initWithCString:RTAnalyticsEventPersistenceMirroringOperation encoding:1];
        log_analytics_submission(v65, v63);
        v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v65];
        AnalyticsSendEvent();

        v45 = v85;
      }

      v62 = [*(a1 + 64) persistenceOperationMetricWithMirroringRequest:*(a1 + 48) lastMirroringTransactionDate:v45 recordsChanged:v82 error:*(a1 + 56)];
      v67 = objc_alloc(MEMORY[0x277CCACA8]);
      v53 = [v67 initWithCString:RTAnalyticsEventPersistenceMirroringOperation encoding:1];
      log_analytics_submission(v53, v62);
      v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v53];
      AnalyticsSendEvent();
    }

    v45 = v85;
  }
}

- (id)persistenceOperationMetricWithMirroringRequest:(id)a3 lastMirroringTransactionDate:(id)a4 recordsChanged:(unint64_t)a5 error:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_opt_new();
  v13 = MEMORY[0x277CCABB0];
  v14 = [v9 mirroringPolicy];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "qualityOfService")}];
  [v12 setObject:v15 forKeyedSubscript:@"qualityOfService"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "requestType")}];
  [v12 setObject:v16 forKeyedSubscript:@"requestType"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v12 setObject:v17 forKeyedSubscript:@"recordsChanged"];

  v18 = [MEMORY[0x277CBEAA8] distantPast];
  LODWORD(v16) = [v10 isEqualToDate:v18];

  if (v16)
  {
    [v12 setObject:&unk_2845A1BA8 forKeyedSubscript:@"timeIntervalSinceLastOperation"];
  }

  else
  {
    v19 = [MEMORY[0x277CBEAA8] date];
    v20 = MEMORY[0x277CCABB0];
    [v19 timeIntervalSinceDate:v10];
    v21 = [v20 numberWithDouble:?];
    [v12 setObject:v21 forKeyedSubscript:@"timeIntervalSinceLastOperation"];
  }

  v22 = MEMORY[0x277CCABB0];
  [v9 duration];
  v23 = [v22 numberWithDouble:?];
  [v12 setObject:v23 forKeyedSubscript:@"durationOfOperation"];

  if (v11)
  {
    v24 = [v11 domain];
    [v12 setObject:v24 forKeyedSubscript:@"errorDomain"];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "code")}];
    [v12 setObject:v25 forKeyedSubscript:@"errorCode"];
  }

  return v12;
}

- (void)mirroringManager:(id)a3 exceededHistoryType:(unint64_t)a4 count:(unint64_t)a5 limit:(unint64_t)a6 hasExceeded:(BOOL)a7
{
  v7 = a7;
  v18 = objc_opt_new();
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v18 setObject:v11 forKeyedSubscript:@"type"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v18 setObject:v12 forKeyedSubscript:@"historyCount"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v18 setObject:v13 forKeyedSubscript:@"limit"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v18 setObject:v14 forKeyedSubscript:@"hasExceeded"];

  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [v15 initWithCString:RTAnalyticsEventPersistenceMirroringHistoryLimitExceeded encoding:1];
  log_analytics_submission(v16, v18);
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v16];
  AnalyticsSendEvent();
}

@end