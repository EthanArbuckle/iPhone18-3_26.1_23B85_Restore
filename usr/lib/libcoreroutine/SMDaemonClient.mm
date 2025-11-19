@interface SMDaemonClient
- (NSString)description;
- (SMDaemonClient)initWithQueue:(id)a3 authorizationManager:(id)a4 defaultsManager:(id)a5 distanceCalculator:(id)a6 platform:(id)a7 initiatorService:(id)a8 messagingService:(id)a9 receiverService:(id)a10 sessionStore:(id)a11 suggestionsManager:(id)a12 suggestionsHelper:(id)a13 suggestionsStore:(id)a14 eligibilityChecker:(id)a15 deviceConfigurationChecker:(id)a16 appDeletionManager:(id)a17;
- (void)_onLocalSessionStateChanged:(id)a3;
- (void)_onSessionStateChanged:(id)a3 forActiveDevice:(BOOL)a4;
- (void)calculateDistanceToDestination:(id)a3 completionHandler:(id)a4;
- (void)cancelMadridMessageSendForMessageGUID:(id)a3 toConversation:(id)a4 completion:(id)a5;
- (void)checkConversationEligibility:(id)a3 handler:(id)a4;
- (void)checkEligibilityOfDestination:(id)a3 completionHandler:(id)a4;
- (void)checkHasSimWithHandler:(id)a3;
- (void)checkIMessageAccountEnabledWithHandler:(id)a3;
- (void)checkInitiatorEligibilityWithHandler:(id)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)detailsViewOpenedForSessionID:(id)a3;
- (void)estimateEtaToDestination:(id)a3 transportType:(unint64_t)a4 completionHandler:(id)a5;
- (void)fetchAllReceiverSessionStatusWithCompletion:(id)a3;
- (void)fetchCurrentLocalSessionStateWithHandler:(id)a3;
- (void)fetchCurrentSessionStateWithCompletion:(id)a3;
- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)a3;
- (void)fetchInitiatorSafetyCacheForSessionID:(id)a3 completion:(id)a4;
- (void)fetchReceiverSafetyCacheForSessionID:(id)a3 completion:(id)a4;
- (void)fetchReceiverSessionStatusForSessionID:(id)a3 completion:(id)a4;
- (void)fetchSOSReceiversWithCompletion:(id)a3;
- (void)iMessageConversationDeletedFor:(id)a3;
- (void)iMessageDeletedFor:(id)a3;
- (void)iMessageGroupDisplayNameChangedFor:(id)a3;
- (void)iMessageGroupMembershipChangedFor:(id)a3;
- (void)iMessageGroupPhotoChangedFor:(id)a3;
- (void)iMessageReceived:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5;
- (void)iMessageScheduledSendCancelFor:(id)a3 successful:(BOOL)a4 withError:(id)a5;
- (void)iMessageScheduledSendScheduledFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6;
- (void)iMessageScheduledSendTriggeredFor:(id)a3;
- (void)iMessageSendFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6;
- (void)kickedFromIMessageGroupWith:(id)a3;
- (void)onAuthorizationNotification:(id)a3;
- (void)onInitiatorSafetyCacheChangeForSessionID:(id)a3 phoneCache:(id)a4 watchCache:(id)a5 cacheExpiryDate:(id)a6 cacheReleaseDate:(id)a7;
- (void)onLocalSessionStateChanged:(id)a3;
- (void)onReceiverSafetyCacheChangeForSessionID:(id)a3 phoneCache:(id)a4 watchCache:(id)a5;
- (void)onReceiverSessionStatusChangeForSessionID:(id)a3 sessionStatus:(id)a4;
- (void)onSessionResumedWithState:(id)a3 forActiveDevice:(BOOL)a4;
- (void)onSessionStateChanged:(id)a3 forActiveDevice:(BOOL)a4;
- (void)respondedToCheckInRemindersTipWithResponse:(int64_t)a3;
- (void)scheduleMadridMessageSendForMessage:(id)a3 messageGUID:(id)a4 associatedGUID:(id)a5 sendDate:(id)a6 toConversation:(id)a7 summaryText:(id)a8 completion:(id)a9;
- (void)sendIDSMessage:(id)a3 toConversation:(id)a4 completion:(id)a5;
- (void)sendIDSMessageToMyDevices:(id)a3 completion:(id)a4;
- (void)sendIDSMessageToMyNearbyDevices:(id)a3 completion:(id)a4;
- (void)sendIDSMessageToPairedDevice:(id)a3 completion:(id)a4;
- (void)sendMadridMessage:(id)a3 associatedGUID:(id)a4 toConversation:(id)a5 summaryText:(id)a6 completion:(id)a7;
- (void)shutdown;
- (void)startCheckInRemindersTipMetricsCollection;
- (void)startMonitoringInitiatorSafetyCacheWithHandler:(id)a3;
- (void)startMonitoringLocalSessionStateWithHandler:(id)a3;
- (void)startMonitoringReceiverSafetyCacheWithHandler:(id)a3;
- (void)startMonitoringReceiverSessionStatusWithHandler:(id)a3;
- (void)startMonitoringSessionStateWithHandler:(id)a3;
- (void)stopMonitoringInitiatorSafetyCacheWithCompletion:(id)a3;
- (void)stopMonitoringLocalSessionStateWithHandler:(id)a3;
- (void)stopMonitoringReceiverSafetyCacheWithCompletion:(id)a3;
- (void)stopMonitoringReceiverSessionStatusWithCompletion:(id)a3;
- (void)stopMonitoringSessionStateWithHandler:(id)a3;
- (void)userRequestedCacheDownloadForSessionID:(id)a3 completion:(id)a4;
@end

@implementation SMDaemonClient

- (SMDaemonClient)initWithQueue:(id)a3 authorizationManager:(id)a4 defaultsManager:(id)a5 distanceCalculator:(id)a6 platform:(id)a7 initiatorService:(id)a8 messagingService:(id)a9 receiverService:(id)a10 sessionStore:(id)a11 suggestionsManager:(id)a12 suggestionsHelper:(id)a13 suggestionsStore:(id)a14 eligibilityChecker:(id)a15 deviceConfigurationChecker:(id)a16 appDeletionManager:(id)a17
{
  v64 = a3;
  v47 = a4;
  v22 = a4;
  v53 = a5;
  v48 = a6;
  v63 = a6;
  v62 = a7;
  v49 = a8;
  v61 = a8;
  v52 = a9;
  v60 = a10;
  v59 = a11;
  v58 = a12;
  v57 = a13;
  v56 = a14;
  v55 = a15;
  v54 = a16;
  v23 = a17;
  v51 = v23;
  if (!v64)
  {
    v24 = v22;
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    v41 = 0;
    v25 = v53;
    goto LABEL_49;
  }

  v24 = v22;
  if (!v22)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v25 = v53;
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: authorizationManager";
LABEL_47:
    _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, v44, buf, 2u);
    goto LABEL_48;
  }

  v25 = v53;
  if (!v53)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_47;
  }

  if (!v63)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_47;
  }

  if (!v62)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: platform";
    goto LABEL_47;
  }

  if (!v61)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: initiatorService";
    goto LABEL_47;
  }

  if (!v60)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: receiverService";
    goto LABEL_47;
  }

  if (!v59)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: sessionStore";
    goto LABEL_47;
  }

  if (!v58)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: suggestionsManager";
    goto LABEL_47;
  }

  if (!v57)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: suggestionsHelper";
    goto LABEL_47;
  }

  if (!v56)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: suggestionsStore";
    goto LABEL_47;
  }

  if (!v55)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: eligibilityChecker";
    goto LABEL_47;
  }

  if (!v54)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: deviceConfigurationChecker";
    goto LABEL_47;
  }

  if (!v23)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v44 = "Invalid parameter not satisfying: appDeletionManager";
      goto LABEL_47;
    }

LABEL_48:

    v41 = 0;
LABEL_49:
    v40 = self;
    goto LABEL_50;
  }

  v73.receiver = self;
  v73.super_class = SMDaemonClient;
  v26 = [(SMDaemonClient *)&v73 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_queue, a3);
    objc_storeStrong(&v27->_authorizationManager, v47);
    objc_storeStrong(&v27->_defaultsManager, a5);
    objc_storeStrong(&v27->_distanceCalculator, v48);
    objc_storeStrong(&v27->_platform, a7);
    objc_storeStrong(&v27->_initiatorService, v49);
    [(SMInitiatorService *)v27->_initiatorService addObserverForSessionManager:v27];
    objc_storeStrong(&v27->_sessionStore, a11);
    objc_storeStrong(&v27->_suggestionsManager, a12);
    objc_storeStrong(&v27->_suggestionsHelper, a13);
    objc_storeStrong(&v27->_suggestionsStore, a14);
    v28 = +[RTEntitlementProvider safetyMonitorDaemonProtocolEntitlementProvider];
    entitlementProvider = v27->_entitlementProvider;
    v27->_entitlementProvider = v28;

    objc_storeStrong(&v27->_messagingService, a9);
    objc_storeStrong(&v27->_receiverService, a10);
    [(SMReceiverService *)v27->_receiverService addObserver:v27];
    objc_storeStrong(&v27->_eligibilityChecker, a15);
    objc_storeStrong(&v27->_deviceConfigurationChecker, a16);
    objc_storeStrong(&v27->_appDeletionManager, a17);
    v30 = dispatch_group_create();
    dispatch_group_enter(v30);
    authorizationManager = v27->_authorizationManager;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke;
    v70[3] = &unk_2788C53F0;
    v32 = v27;
    v71 = v32;
    v33 = v30;
    v72 = v33;
    [(RTAuthorizationManager *)authorizationManager fetchRoutineSupportedWithHandler:v70];
    v34 = v27->_authorizationManager;
    v35 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
    [(RTNotifier *)v34 addObserver:v32 selector:sel_onAuthorizationNotification_ name:v35];

    dispatch_group_enter(v33);
    v36 = v27->_authorizationManager;
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke_3;
    v67[3] = &unk_2788C53F0;
    v37 = v32;
    v68 = v37;
    v69 = v33;
    v38 = v33;
    [(RTAuthorizationManager *)v36 fetchRoutineEnabledWithHandler:v67];
    v39 = [(SMDaemonClient *)v37 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke_5;
    block[3] = &unk_2788C4EA0;
    v66 = v37;
    dispatch_group_notify(v38, v39, block);

    v25 = v53;
  }

  v40 = v27;
  v41 = v40;
LABEL_50:

  return v41;
}

void __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke_2;
  block[3] = &unk_2788C53C8;
  v6 = *(a1 + 32);
  v8 = a2;
  v7 = *(a1 + 40);
  dispatch_async(v4, block);
}

void __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSupported:*(a1 + 48)];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke_3(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke_4;
  block[3] = &unk_2788C53C8;
  v6 = *(a1 + 32);
  v8 = a2;
  v7 = *(a1 + 40);
  dispatch_async(v4, block);
}

void __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setEnabled:*(a1 + 48)];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) xpcConnection];
  [v1 resume];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMDaemonClient *)self executablePath];
  v5 = [v3 stringWithFormat:@"%@(%d)", v4, -[SMDaemonClient processIdentifier](self, "processIdentifier")];

  return v5;
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  [v10 retainArguments];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__94;
  v30[4] = __Block_byref_object_dispose__94;
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = NSStringFromSelector(a2);
  v15 = [v11 stringWithFormat:@"%@-%@", v13, v14];
  v16 = v15;
  [v15 UTF8String];
  v31 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SMDaemonClient_connection_handleInvocation_isReply___block_invoke;
  block[3] = &unk_2788C5440;
  v29 = a5;
  v25 = v10;
  v26 = self;
  v27 = v9;
  v28 = v30;
  v19 = v9;
  v20 = v10;
  dispatch_async(queue, block);

  _Block_object_dispose(v30, 8);
}

void __54__SMDaemonClient_connection_handleInvocation_isReply___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) invoke];
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v5 = os_signpost_id_generate(v4);

    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = [*(a1 + 40) executableName];
      v9 = NSStringFromSelector([*(a1 + 32) selector]);
      *buf = 138412546;
      *&buf[4] = v8;
      v61 = 2112;
      v62 = v9;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v7, OS_SIGNPOST_EVENT, v5, "ClientService", "client %@, request %@", buf, 0x16u);
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = [*(a1 + 40) executableName];
        v18 = NSStringFromSelector([*(a1 + 32) selector]);
        *buf = 138412546;
        *&buf[4] = v17;
        v61 = 2112;
        v62 = v18;
        _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "client, %@, called, %@", buf, 0x16u);
      }
    }

    v12 = [*(a1 + 32) target];
    v13 = [*(*(a1 + 40) + 88) protocol];
    v14 = [v12 conformsToProtocol:v13];

    if (v14)
    {
      v15 = [*(a1 + 48) exportedInterface];
      v16 = [v15 replyBlockSignatureForSelector:{objc_msgSend(*(a1 + 32), "selector")}];
    }

    else
    {
      v16 = 0;
    }

    v19 = [*(a1 + 40) supported];
    v20 = [*(*(a1 + 40) + 88) clientConnection:*(a1 + 48) satisfiesEntitlementRequirementsForInvocation:*(a1 + 32)];
    if (v16)
    {
      if (v20)
      {
        if (v19)
        {
          if (_os_feature_enabled_impl())
          {
            v21 = [*(a1 + 32) blockArgumentIndex];
            *buf = 0;
            [*(a1 + 32) getArgument:buf atIndex:v21];
            v22 = NSStringFromSelector([*(a1 + 32) selector]);
            v23 = [*buf copy];
            v24 = v16;
            [v16 UTF8String];
            v50 = v22;
            v51 = v10;
            v52 = v23;
            v25 = v23;
            v26 = v22;
            v53 = __NSMakeSpecialForwardingCaptureBlock();
            [*(a1 + 32) setArgument:&v53 atIndex:v21];
            [*(a1 + 32) invoke];
            v27 = *(*(a1 + 56) + 8);
            v28 = *(v27 + 40);
            *(v27 + 40) = 0;
          }

          else
          {
            v54 = *MEMORY[0x277CCA450];
            v55 = @"This feature is not enabled.";
            v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
            v45 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D4ACD0] code:1 userInfo:v44];
            [*(a1 + 48) rejectInvocation:*(a1 + 32) withError:v45 replyTypes:v16];
            v46 = *(*(a1 + 56) + 8);
            v47 = *(v46 + 40);
            *(v46 + 40) = 0;
          }
        }

        else
        {
          v56 = *MEMORY[0x277CCA450];
          v57 = @"This operation is not supported on this platform.";
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D4ACD0] code:1 userInfo:v40];
          [*(a1 + 48) rejectInvocation:*(a1 + 32) withError:v41 replyTypes:v16];
          v42 = *(*(a1 + 56) + 8);
          v43 = *(v42 + 40);
          *(v42 + 40) = 0;
        }
      }

      else
      {
        v58 = *MEMORY[0x277CCA450];
        v31 = MEMORY[0x277CCACA8];
        v32 = [*(a1 + 40) executableName];
        v33 = [v31 stringWithFormat:@"%@ is not entitled for this operation.", v32];
        v59 = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];

        v35 = objc_alloc(MEMORY[0x277CCA9B8]);
        v36 = [v35 initWithDomain:*MEMORY[0x277D4ACD0] code:3 userInfo:v34];
        v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v48 = [*(a1 + 40) executableName];
          v49 = NSStringFromSelector([*(a1 + 32) selector]);
          *buf = 138412546;
          *&buf[4] = v48;
          v61 = 2112;
          v62 = v49;
          _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "client, %@, is not entitled for invocation, %@.", buf, 0x16u);
        }

        [*(a1 + 48) rejectInvocation:*(a1 + 32) withError:v36 replyTypes:v16];
        v38 = *(*(a1 + 56) + 8);
        v39 = *(v38 + 40);
        *(v38 + 40) = 0;
      }
    }

    else
    {
      if ((v20 & v19) == 1)
      {
        [*(a1 + 32) invoke];
      }

      v29 = *(*(a1 + 56) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = 0;
    }
  }
}

void __54__SMDaemonClient_connection_handleInvocation_isReply___block_invoke_37(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = [MEMORY[0x277CBEAA8] date];
      [v6 timeIntervalSinceDate:a1[5]];
      v8 = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Sending reply for request %@, latency, %.2f", &v8, 0x16u);
    }
  }

  [v3 setTarget:a1[6]];
  [v3 invoke];
}

- (void)onAuthorizationNotification:(id)a3
{
  v5 = a3;
  v6 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SMDaemonClient_onAuthorizationNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = v5;
  v10 = self;
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

void __46__SMDaemonClient_onAuthorizationNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v4 = [v2 isEqualToString:v3];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 enabled];
    v7 = *(a1 + 40);

    [v7 setEnabled:v6];
  }

  else
  {
    v8 = [v5 name];
    v9 = +[(RTNotification *)RTAuthorizationManagerNotificationConsoleUserDidChange];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = *(a1 + 32);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = NSStringFromSelector(*(a1 + 48));
          v14 = *(a1 + 40);
          v15 = [v11 activeUser];
          v16 = @"NO";
          *v21 = 138412802;
          *&v21[4] = v13;
          *&v21[12] = 2112;
          if (v15)
          {
            v16 = @"YES";
          }

          *&v21[14] = v14;
          v22 = 2112;
          v23 = v16;
          _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, client, %@, activeUser, %@", v21, 0x20u);
        }
      }

      if (([v11 activeUser] & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = NSStringFromSelector(*(a1 + 48));
            v19 = *(a1 + 40);
            *v21 = 138412546;
            *&v21[4] = v18;
            *&v21[12] = 2112;
            *&v21[14] = v19;
            _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, invalidating connection to client, %@", v21, 0x16u);
          }
        }

        v20 = [*(a1 + 40) xpcConnection];
        [v20 invalidate];
      }
    }
  }
}

- (void)shutdown
{
  v4 = [(SMDaemonClient *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__SMDaemonClient_shutdown__block_invoke;
  v5[3] = &unk_2788C52E8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void __26__SMDaemonClient_shutdown__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 40));
      v4 = *(a1 + 32);
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@ %@", &v7, 0x16u);
    }
  }

  v5 = [*(a1 + 32) authorizationManager];
  [v5 removeObserver:*(a1 + 32)];

  v6 = [*(a1 + 32) initiatorService];
  [v6 removeObserver:*(a1 + 32)];
}

- (void)fetchSOSReceiversWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,fetching safety cache receivers", &v11, 0x16u);
    }
  }

  v10 = [(SMDaemonClient *)self initiatorService];
  [v10 fetchSOSReceiversWithCompletion:v5];
}

- (void)fetchInitiatorSafetyCacheForSessionID:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetching initiator safety cache", &v14, 0x20u);
    }
  }

  v13 = [(SMDaemonClient *)self initiatorService];
  [v13 fetchInitiatorSafetyCacheForSessionID:v7 completion:v8];
}

- (void)fetchAllReceiverSessionStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SMDaemonClient *)self receiverService];
  [v5 fetchAllReceiverSessionStatusWithCompletion:v4];
}

- (void)fetchReceiverSessionStatusForSessionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SMDaemonClient *)self receiverService];
  [v8 fetchReceiverSessionStatusForSessionID:v7 completion:v6];
}

- (void)userRequestedCacheDownloadForSessionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SMDaemonClient *)self receiverService];
  [v8 userRequestedCacheDownloadForSessionID:v7 completion:v6];
}

- (void)fetchReceiverSafetyCacheForSessionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SMDaemonClient *)self receiverService];
  [v8 fetchReceiverSafetyCacheForSessionID:v7 completion:v6];
}

- (void)detailsViewOpenedForSessionID:(id)a3
{
  v4 = a3;
  v5 = [(SMDaemonClient *)self receiverService];
  [v5 detailsViewOpenedForSessionID:v4];
}

- (void)startMonitoringInitiatorSafetyCacheWithHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,start monitoring initiator safety cache", buf, 0x16u);
      }
    }

    [(SMDaemonClient *)self setMonitorInitiatorSafetyCache:1];
    v10 = [(SMDaemonClient *)self initiatorService];
    [v10 addObserver:self];

    (*(v5 + 2))(v5, 0, 0, 0, 0, 0, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__SMDaemonClient_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke;
    v12[3] = &unk_2788CC9D0;
    v12[4] = self;
    v12[5] = a2;
    [(SMDaemonClient *)self fetchCurrentSessionStateWithCompletion:v12];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __65__SMDaemonClient_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 configuration];
  v5 = [v4 sessionID];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 configuration];
    v8 = [v7 sessionID];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__SMDaemonClient_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke_46;
    v15[3] = &unk_2788CC9A8;
    v15[4] = *(a1 + 32);
    [v6 fetchInitiatorSafetyCacheForSessionID:v8 completion:v15];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 40));
      v13 = [v3 configuration];
      v14 = [v13 sessionID];
      *buf = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,sessionID unavailable,%@", buf, 0x20u);
    }
  }
}

void __65__SMDaemonClient_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke_46(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = *(a1 + 32);
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v17 = [v10 xpcConnection];
  v16 = [v17 remoteObjectProxy];
  [v16 onInitiatorSafetyCacheChangeForSessionID:v15 phoneCache:v14 watchCache:v13 cacheExpiryDate:v12 cacheReleaseDate:v11];
}

- (void)stopMonitoringInitiatorSafetyCacheWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v12 = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,stop monitoring initiator safety cache", &v12, 0x16u);
      }
    }

    [(SMDaemonClient *)self setMonitorInitiatorSafetyCache:0];
    v10 = [(SMDaemonClient *)self initiatorService];
    [v10 removeObserver:self];

    v5[2](v5, 0);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", &v12, 2u);
    }
  }
}

- (void)startMonitoringReceiverSessionStatusWithHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,start monitoring receiver session status", buf, 0x16u);
      }
    }

    [(SMDaemonClient *)self setMonitorReceiverSessionStatus:1];
    (*(v5 + 2))(v5, 0, 0, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__SMDaemonClient_startMonitoringReceiverSessionStatusWithHandler___block_invoke;
    v11[3] = &unk_2788C6B10;
    v11[4] = self;
    [(SMDaemonClient *)self fetchAllReceiverSessionStatusWithCompletion:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __66__SMDaemonClient_startMonitoringReceiverSessionStatusWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) xpcConnection];
        v10 = [v9 remoteObjectProxy];
        v11 = [v8 sessionID];
        [v10 onReceiverSessionStatusChangeForSessionID:v11 sessionStatus:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)stopMonitoringReceiverSessionStatusWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,stop monitoring receiver session status", &v11, 0x16u);
      }
    }

    [(SMDaemonClient *)self setMonitorReceiverSessionStatus:0];
    v5[2](v5, 0);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", &v11, 2u);
    }
  }
}

- (void)startMonitoringReceiverSafetyCacheWithHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,start monitoring receiver safety cache", buf, 0x16u);
      }
    }

    [(SMDaemonClient *)self setMonitorReceiverSafetyCache:1];
    (*(v5 + 2))(v5, 0, 0, 0, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__SMDaemonClient_startMonitoringReceiverSafetyCacheWithHandler___block_invoke;
    v11[3] = &unk_2788C6B10;
    v11[4] = self;
    [(SMDaemonClient *)self fetchAllReceiverSessionStatusWithCompletion:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __64__SMDaemonClient_startMonitoringReceiverSafetyCacheWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = *(a1 + 32);
        v9 = [v7 sessionID];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __64__SMDaemonClient_startMonitoringReceiverSafetyCacheWithHandler___block_invoke_2;
        v11[3] = &unk_2788CC9F8;
        v11[4] = *(a1 + 32);
        v11[5] = v7;
        [v8 fetchReceiverSafetyCacheForSessionID:v9 completion:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void __64__SMDaemonClient_startMonitoringReceiverSafetyCacheWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v10 = [v5 xpcConnection];
  v8 = [v10 remoteObjectProxy];
  v9 = [*(a1 + 40) sessionID];
  [v8 onReceiverSafetyCacheChangeForSessionID:v9 phoneCache:v7 watchCache:v6];
}

- (void)stopMonitoringReceiverSafetyCacheWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,stop monitoring receiver safety cache", &v11, 0x16u);
      }
    }

    [(SMDaemonClient *)self setMonitorReceiverSafetyCache:0];
    v5[2](v5, 0);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", &v11, 2u);
    }
  }
}

- (void)onInitiatorSafetyCacheChangeForSessionID:(id)a3 phoneCache:(id)a4 watchCache:(id)a5 cacheExpiryDate:(id)a6 cacheReleaseDate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    v18 = [(SMDaemonClient *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__SMDaemonClient_onInitiatorSafetyCacheChangeForSessionID_phoneCache_watchCache_cacheExpiryDate_cacheReleaseDate___block_invoke;
    block[3] = &unk_2788C5F00;
    block[4] = self;
    v26 = a2;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    dispatch_async(v18, block);
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }
  }
}

void __114__SMDaemonClient_onInitiatorSafetyCacheChangeForSessionID_phoneCache_watchCache_cacheExpiryDate_cacheReleaseDate___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) monitorInitiatorSafetyCache];
  v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v1)
  {
    if (v2)
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v6 = NSStringFromSelector(*(a1 + 80));
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        *buf = 138413059;
        v70 = v5;
        v71 = 2112;
        v72 = v6;
        v73 = 2112;
        v74 = v7;
        v75 = 2117;
        v76 = v8;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,sending initiator safety cache update to sessionID, %@, phoneCache, %{sensitive}@", buf, 0x2Au);
      }
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = [*(a1 + 48) locationsDuringSession];
    v10 = [v9 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = 0;
      v14 = *v64;
      v15 = MEMORY[0x277D86220];
      v16 = RTLogFacilitySafetyMonitorClient;
      *&v11 = 138413059;
      v55 = v11;
      do
      {
        v17 = 0;
        v56 = v12;
        do
        {
          if (*v64 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v63 + 1) + 8 * v17);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v19 = _rt_log_facility_get_os_log(v16);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = objc_opt_class();
              NSStringFromClass(v20);
              v21 = v14;
              v22 = v15;
              v23 = v9;
              v25 = v24 = v16;
              v26 = NSStringFromSelector(*(a1 + 80));
              *buf = v55;
              v70 = v25;
              v71 = 2112;
              v72 = v26;
              v73 = 2048;
              v74 = v13;
              v75 = 2117;
              v76 = v18;
              _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@, phoneCache location %lu, %{sensitive}@", buf, 0x2Au);

              v16 = v24;
              v9 = v23;
              v15 = v22;
              v14 = v21;
              v12 = v56;
            }
          }

          ++v13;
          ++v17;
        }

        while (v12 != v17);
        v12 = [v9 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v12);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(*(a1 + 80));
        v31 = *(a1 + 40);
        v32 = *(a1 + 56);
        *buf = 138413059;
        v70 = v29;
        v71 = 2112;
        v72 = v30;
        v73 = 2112;
        v74 = v31;
        v75 = 2117;
        v76 = v32;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,sending initiator safety cache update to sessionID, %@, watchCache, %{sensitive}@", buf, 0x2Au);
      }
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v33 = [*(a1 + 56) locationsDuringSession];
    v34 = [v33 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v60;
      v38 = MEMORY[0x277D86220];
      v39 = RTLogFacilitySafetyMonitorClient;
      do
      {
        v40 = 0;
        v57 = v35;
        do
        {
          if (*v60 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v41 = *(*(&v59 + 1) + 8 * v40);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v42 = _rt_log_facility_get_os_log(v39);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = objc_opt_class();
              NSStringFromClass(v43);
              v44 = v37;
              v45 = v38;
              v46 = v33;
              v48 = v47 = v39;
              v49 = NSStringFromSelector(*(a1 + 80));
              *buf = 138413059;
              v70 = v48;
              v71 = 2112;
              v72 = v49;
              v73 = 2048;
              v74 = v36;
              v75 = 2117;
              v76 = v41;
              _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@, watchCache location %lu, %{sensitive}@", buf, 0x2Au);

              v39 = v47;
              v33 = v46;
              v38 = v45;
              v37 = v44;
              v35 = v57;
            }
          }

          ++v36;
          ++v40;
        }

        while (v35 != v40);
        v35 = [v33 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v35);
    }

    v50 = [*(a1 + 32) xpcConnection];
    v51 = [v50 remoteObjectProxy];
    [v51 onInitiatorSafetyCacheChangeForSessionID:*(a1 + 40) phoneCache:*(a1 + 48) watchCache:*(a1 + 56) cacheExpiryDate:*(a1 + 64) cacheReleaseDate:*(a1 + 72)];
    goto LABEL_33;
  }

  if (v2)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    v52 = objc_opt_class();
    v51 = NSStringFromClass(v52);
    v53 = NSStringFromSelector(*(a1 + 80));
    v54 = [*(a1 + 40) UUIDString];
    *buf = 138412802;
    v70 = v51;
    v71 = 2112;
    v72 = v53;
    v73 = 2112;
    v74 = v54;
    _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,not monitoring initiator safety cache for sessionID, %@", buf, 0x20u);

LABEL_33:
LABEL_34:
  }
}

- (void)onReceiverSessionStatusChangeForSessionID:(id)a3 sessionStatus:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: sessionID";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_7;
  }

  if (!v8)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: sessionStatus";
    goto LABEL_10;
  }

  v10 = [(SMDaemonClient *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SMDaemonClient_onReceiverSessionStatusChangeForSessionID_sessionStatus___block_invoke;
  v13[3] = &unk_2788C4C70;
  v13[4] = self;
  v16 = a2;
  v14 = v7;
  v15 = v9;
  dispatch_async(v10, v13);

LABEL_8:
}

void __74__SMDaemonClient_onReceiverSessionStatusChangeForSessionID_sessionStatus___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) monitorReceiverSessionStatus];
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = NSStringFromSelector(*(a1 + 56));
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v14 = 138413058;
        v15 = v6;
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,%@,sessionID:%@,sending receiver session status update to client,%@", &v14, 0x2Au);
      }
    }

    v10 = [*(a1 + 32) xpcConnection];
    v11 = [v10 remoteObjectProxy];
    [v11 onReceiverSessionStatusChangeForSessionID:*(a1 + 40) sessionStatus:*(a1 + 48)];
    goto LABEL_7;
  }

  if (v3)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = NSStringFromSelector(*(a1 + 56));
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,%@,not monitoring receiver session status", &v14, 0x16u);

LABEL_7:
LABEL_8:
  }
}

- (void)onReceiverSafetyCacheChangeForSessionID:(id)a3 phoneCache:(id)a4 watchCache:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = [(SMDaemonClient *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__SMDaemonClient_onReceiverSafetyCacheChangeForSessionID_phoneCache_watchCache___block_invoke;
    block[3] = &unk_2788C50E8;
    block[4] = self;
    v18 = a2;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }
  }
}

void __80__SMDaemonClient_onReceiverSafetyCacheChangeForSessionID_phoneCache_watchCache___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) monitorReceiverSafetyCache];
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = NSStringFromSelector(*(a1 + 64));
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v15 = 138413314;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = v9;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,%@,sessionID:%@,sending receiver safety cache update to client,phoneCache,%@,watchCache,%@", &v15, 0x34u);
      }
    }

    v11 = [*(a1 + 32) xpcConnection];
    v12 = [v11 remoteObjectProxy];
    [v12 onReceiverSafetyCacheChangeForSessionID:*(a1 + 40) phoneCache:*(a1 + 48) watchCache:*(a1 + 56)];
    goto LABEL_7;
  }

  if (v3)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = NSStringFromSelector(*(a1 + 64));
    v15 = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@,%@,not monitoring receiver safety cache", &v15, 0x16u);

LABEL_7:
LABEL_8:
  }
}

- (void)onSessionStateChanged:(id)a3 forActiveDevice:(BOOL)a4
{
  v6 = a3;
  v7 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SMDaemonClient_onSessionStateChanged_forActiveDevice___block_invoke;
  block[3] = &unk_2788C53C8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)onSessionResumedWithState:(id)a3 forActiveDevice:(BOOL)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[SMDaemonClient onSessionResumedWithState:forActiveDevice:]";
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, SessionManager resumed to state", buf, 0xCu);
    }
  }

  v8 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SMDaemonClient_onSessionResumedWithState_forActiveDevice___block_invoke;
  block[3] = &unk_2788C53C8;
  block[4] = self;
  v11 = v6;
  v12 = a4;
  v9 = v6;
  dispatch_async(v8, block);
}

- (void)_onSessionStateChanged:(id)a3 forActiveDevice:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(SMDaemonClient *)self monitorSessionState])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138740227;
        v11 = v6;
        v12 = 2112;
        v13 = self;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "sending session state, %{sensitive}@, to client, %@", &v10, 0x16u);
      }
    }

    v8 = [(SMDaemonClient *)self xpcConnection];
    v9 = [v8 remoteObjectProxy];
    [v9 onSessionStateChanged:v6 forActiveDevice:v4 withError:0];
  }
}

- (void)onLocalSessionStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(SMDaemonClient *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SMDaemonClient_onLocalSessionStateChanged___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onLocalSessionStateChanged:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SMDaemonClient *)self monitorLocalSessionState])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138740227;
        v9 = v4;
        v10 = 2112;
        v11 = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "sending session state, %{sensitive}@, to client, %@", &v8, 0x16u);
      }
    }

    v6 = [(SMDaemonClient *)self xpcConnection];
    v7 = [v6 remoteObjectProxy];
    [v7 onLocalSessionStateChanged:v4 withError:0];
  }
}

- (void)sendIDSMessage:(id)a3 toConversation:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138413059;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      v29 = 2117;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@,toConversation:%@", buf, 0x2Au);
    }
  }

  v16 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SMDaemonClient_sendIDSMessage_toConversation_completion___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = a2;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  dispatch_async(v16, block);
}

void __59__SMDaemonClient_sendIDSMessage_toConversation_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v12 = [*(a1 + 32) messagingService];
    [v12 sendIDSMessage:*(a1 + 40) toConversation:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }

    v4 = *(a1 + 56);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D4ACD0];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"messagingService nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [v5 errorWithDomain:v6 code:5 userInfo:v7];
    (*(v4 + 16))(v4, 0, v8);
  }
}

- (void)sendIDSMessageToMyDevices:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412803;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2117;
      v25 = v7;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@", buf, 0x20u);
    }
  }

  v13 = [(SMDaemonClient *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__SMDaemonClient_sendIDSMessageToMyDevices_completion___block_invoke;
  v16[3] = &unk_2788C4C20;
  v16[4] = self;
  v17 = v7;
  v18 = v8;
  v19 = a2;
  v14 = v8;
  v15 = v7;
  dispatch_async(v13, v16);
}

void __55__SMDaemonClient_sendIDSMessageToMyDevices_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v12 = [*(a1 + 32) messagingService];
    [v12 sendIDSMessageToMyDevices:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }

    v4 = *(a1 + 48);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D4ACD0];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"messagingService nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [v5 errorWithDomain:v6 code:5 userInfo:v7];
    (*(v4 + 16))(v4, 0, v8);
  }
}

- (void)sendIDSMessageToPairedDevice:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412803;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2117;
      v25 = v7;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@", buf, 0x20u);
    }
  }

  v13 = [(SMDaemonClient *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__SMDaemonClient_sendIDSMessageToPairedDevice_completion___block_invoke;
  v16[3] = &unk_2788C4C20;
  v16[4] = self;
  v17 = v7;
  v18 = v8;
  v19 = a2;
  v14 = v8;
  v15 = v7;
  dispatch_async(v13, v16);
}

void __58__SMDaemonClient_sendIDSMessageToPairedDevice_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v12 = [*(a1 + 32) messagingService];
    [v12 sendIDSMessageToPairedDevice:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }

    v4 = *(a1 + 48);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D4ACD0];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"messagingService nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [v5 errorWithDomain:v6 code:5 userInfo:v7];
    (*(v4 + 16))(v4, 0, v8);
  }
}

- (void)sendIDSMessageToMyNearbyDevices:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412803;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2117;
      v25 = v7;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@", buf, 0x20u);
    }
  }

  v13 = [(SMDaemonClient *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SMDaemonClient_sendIDSMessageToMyNearbyDevices_completion___block_invoke;
  v16[3] = &unk_2788C4C20;
  v16[4] = self;
  v17 = v7;
  v18 = v8;
  v19 = a2;
  v14 = v8;
  v15 = v7;
  dispatch_async(v13, v16);
}

void __61__SMDaemonClient_sendIDSMessageToMyNearbyDevices_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v12 = [*(a1 + 32) messagingService];
    [v12 sendIDSMessageToMyNearbyDevices:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }

    v4 = *(a1 + 48);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D4ACD0];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"messagingService nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [v5 errorWithDomain:v6 code:5 userInfo:v7];
    (*(v4 + 16))(v4, 0, v8);
  }
}

- (void)sendMadridMessage:(id)a3 associatedGUID:(id)a4 toConversation:(id)a5 summaryText:(id)a6 completion:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      *buf = 138413315;
      v36 = v20;
      v37 = 2112;
      v38 = v21;
      v39 = 2117;
      v40 = v13;
      v41 = 2112;
      v42 = v14;
      v43 = 2112;
      v44 = v15;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@,associatedGUID:%@,toConversation:%@", buf, 0x34u);
    }
  }

  v22 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SMDaemonClient_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke;
  block[3] = &unk_2788CCA20;
  block[4] = self;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = a2;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  v27 = v13;
  dispatch_async(v22, block);
}

void __89__SMDaemonClient_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v12 = [*(a1 + 32) messagingService];
    [v12 sendMadridMessage:*(a1 + 40) associatedGUID:*(a1 + 48) toConversation:*(a1 + 56) summaryText:*(a1 + 64) completion:*(a1 + 72)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 80));
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }

    v4 = *(a1 + 72);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D4ACD0];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"messagingService nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [v5 errorWithDomain:v6 code:5 userInfo:v7];
    (*(v4 + 16))(v4, 0, 0, v8);
  }
}

- (void)scheduleMadridMessageSendForMessage:(id)a3 messageGUID:(id)a4 associatedGUID:(id)a5 sendDate:(id)a6 toConversation:(id)a7 summaryText:(id)a8 completion:(id)a9
{
  v60 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v34 = NSStringFromClass(v23);
      NSStringFromSelector(a2);
      v24 = v35 = v15;
      [v18 stringFromDate];
      *buf = 138413827;
      v47 = v34;
      v48 = 2112;
      v49 = v24;
      v50 = 2117;
      v51 = v35;
      v52 = 2112;
      v53 = v16;
      v54 = 2112;
      v55 = v17;
      v57 = v56 = 2112;
      v25 = v57;
      v58 = 2112;
      v59 = v19;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@,messageGUID:%@,associatedGUID:%@,sendDate:%@,toConversation:%@", buf, 0x48u);

      v15 = v35;
    }
  }

  v26 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__SMDaemonClient_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke;
  block[3] = &unk_2788CCA48;
  block[4] = self;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v44 = v21;
  v45 = a2;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v17;
  v32 = v16;
  v33 = v15;
  dispatch_async(v26, block);
}

void __128__SMDaemonClient_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v12 = [*(a1 + 32) messagingService];
    [v12 scheduleMadridMessageSendForMessage:*(a1 + 40) messageGUID:*(a1 + 48) associatedGUID:*(a1 + 56) sendDate:*(a1 + 64) toConversation:*(a1 + 72) summaryText:*(a1 + 80) completion:*(a1 + 88)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 96));
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }

    v4 = *(a1 + 88);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D4ACD0];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"messagingService nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [v5 errorWithDomain:v6 code:5 userInfo:v7];
    (*(v4 + 16))(v4, 0, 0, v8);
  }
}

- (void)cancelMadridMessageSendForMessageGUID:(id)a3 toConversation:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138413058;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@,%@,messageGUID:%@,toConversation:%@", buf, 0x2Au);
    }
  }

  v16 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SMDaemonClient_cancelMadridMessageSendForMessageGUID_toConversation_completion___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = a2;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  dispatch_async(v16, block);
}

void __82__SMDaemonClient_cancelMadridMessageSendForMessageGUID_toConversation_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v12 = [*(a1 + 32) messagingService];
    [v12 cancelMadridMessageSendForMessageGUID:*(a1 + 40) toConversation:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }

    v4 = *(a1 + 56);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D4ACD0];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"messagingService nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [v5 errorWithDomain:v6 code:5 userInfo:v7];
    (*(v4 + 16))(v4, 0, v8);
  }
}

- (void)iMessageSendFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138413570;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      v36 = 1024;
      v37 = v7;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,%@,messageURL:%@,messageGUID:%@,success:%d,error:%@", buf, 0x3Au);
    }
  }

  v18 = [(SMDaemonClient *)self queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__SMDaemonClient_iMessageSendFor_guid_successful_withError___block_invoke;
  v22[3] = &unk_2788CCA70;
  v22[4] = self;
  v23 = v11;
  v27 = v7;
  v24 = v12;
  v25 = v13;
  v26 = a2;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  dispatch_async(v18, v22);
}

void __60__SMDaemonClient_iMessageSendFor_guid_successful_withError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v7 = [*(a1 + 32) messagingService];
    [v7 iMessageSendFor:*(a1 + 40) guid:*(a1 + 48) successful:*(a1 + 72) withError:*(a1 + 56)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }
  }
}

- (void)iMessageScheduledSendScheduledFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138413570;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      v36 = 1024;
      v37 = v7;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,%@,messageURL:%@,messageGUID:%@,success:%d,error:%@", buf, 0x3Au);
    }
  }

  v18 = [(SMDaemonClient *)self queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__SMDaemonClient_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke;
  v22[3] = &unk_2788CCA70;
  v22[4] = self;
  v23 = v11;
  v27 = v7;
  v24 = v12;
  v25 = v13;
  v26 = a2;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  dispatch_async(v18, v22);
}

void __78__SMDaemonClient_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v7 = [*(a1 + 32) messagingService];
    [v7 iMessageScheduledSendScheduledFor:*(a1 + 40) guid:*(a1 + 48) successful:*(a1 + 72) withError:*(a1 + 56)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }
  }
}

- (void)iMessageScheduledSendCancelFor:(id)a3 successful:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138413314;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v9;
      v29 = 1024;
      v30 = v6;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@,%@,messageGUID:%@,success:%d,error:%@", buf, 0x30u);
    }
  }

  v15 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SMDaemonClient_iMessageScheduledSendCancelFor_successful_withError___block_invoke;
  block[3] = &unk_2788C50C0;
  block[4] = self;
  v19 = v9;
  v22 = v6;
  v20 = v10;
  v21 = a2;
  v16 = v10;
  v17 = v9;
  dispatch_async(v15, block);
}

void __70__SMDaemonClient_iMessageScheduledSendCancelFor_successful_withError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v7 = [*(a1 + 32) messagingService];
    [v7 iMessageScheduledSendCancelFor:*(a1 + 40) successful:*(a1 + 64) withError:*(a1 + 48)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }
  }
}

- (void)iMessageScheduledSendTriggeredFor:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,messageGUID:%@", buf, 0x20u);
    }
  }

  v10 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SMDaemonClient_iMessageScheduledSendTriggeredFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = v5;
  v14 = a2;
  v11 = v5;
  dispatch_async(v10, block);
}

void __52__SMDaemonClient_iMessageScheduledSendTriggeredFor___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v7 = [*(a1 + 32) messagingService];
    [v7 iMessageScheduledSendTriggeredFor:*(a1 + 40)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }
  }
}

- (void)iMessageReceived:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138413314;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 1024;
      v32 = v5;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@,%@,messageUrl:%@,handle:%@,fromMe:%d", buf, 0x30u);
    }
  }

  v15 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMDaemonClient_iMessageReceived_fromHandle_fromMe___block_invoke;
  block[3] = &unk_2788C50C0;
  block[4] = self;
  v19 = v9;
  v22 = v5;
  v20 = v10;
  v21 = a2;
  v16 = v10;
  v17 = v9;
  dispatch_async(v15, block);
}

void __53__SMDaemonClient_iMessageReceived_fromHandle_fromMe___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v7 = [*(a1 + 32) messagingService];
    [v7 iMessageReceived:*(a1 + 40) fromHandle:*(a1 + 48) fromMe:*(a1 + 64)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }
  }
}

- (void)iMessageDeletedFor:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,messageUrls:%@", buf, 0x20u);
    }
  }

  v10 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SMDaemonClient_iMessageDeletedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = v5;
  v14 = a2;
  v11 = v5;
  dispatch_async(v10, block);
}

void __37__SMDaemonClient_iMessageDeletedFor___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];

  if (v2)
  {
    v7 = [*(a1 + 32) messagingService];
    [v7 iMessageDeletedFor:*(a1 + 40)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }
  }
}

- (void)iMessageConversationDeletedFor:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,receiverHandles:%@", buf, 0x20u);
    }
  }

  v10 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMDaemonClient_iMessageConversationDeletedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = v5;
  v14 = a2;
  v11 = v5;
  dispatch_async(v10, block);
}

void __49__SMDaemonClient_iMessageConversationDeletedFor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];
  if (v2 && (v3 = v2, [*(a1 + 32) messagingService], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, v3, (v5 & 1) != 0))
  {
    v10 = [*(a1 + 32) messagingService];
    [v10 iMessageConversationDeletedFor:*(a1 + 40)];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@,%@,messagingService nil", buf, 0x16u);
    }
  }
}

- (void)iMessageGroupMembershipChangedFor:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID:%@", buf, 0x20u);
    }
  }

  v10 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SMDaemonClient_iMessageGroupMembershipChangedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = v5;
  v14 = a2;
  v11 = v5;
  dispatch_async(v10, block);
}

void __52__SMDaemonClient_iMessageGroupMembershipChangedFor___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) initiatorService];

  if (v2)
  {
    v7 = [*(a1 + 32) initiatorService];
    [v7 iMessageGroupMembershipChangedFor:*(a1 + 40)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,initiatorService nil", buf, 0x16u);
    }
  }
}

- (void)iMessageGroupDisplayNameChangedFor:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID:%@", buf, 0x20u);
    }
  }

  v10 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMDaemonClient_iMessageGroupDisplayNameChangedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = v5;
  v14 = a2;
  v11 = v5;
  dispatch_async(v10, block);
}

void __53__SMDaemonClient_iMessageGroupDisplayNameChangedFor___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) initiatorService];

  if (v2)
  {
    v7 = [*(a1 + 32) initiatorService];
    [v7 iMessageGroupDisplayNameChangedFor:*(a1 + 40)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,initiatorService nil", buf, 0x16u);
    }
  }
}

- (void)iMessageGroupPhotoChangedFor:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID:%@", buf, 0x20u);
    }
  }

  v10 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SMDaemonClient_iMessageGroupPhotoChangedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = v5;
  v14 = a2;
  v11 = v5;
  dispatch_async(v10, block);
}

void __47__SMDaemonClient_iMessageGroupPhotoChangedFor___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) initiatorService];

  if (v2)
  {
    v7 = [*(a1 + 32) initiatorService];
    [v7 iMessageGroupPhotoChangedFor:*(a1 + 40)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,initiatorService nil", buf, 0x16u);
    }
  }
}

- (void)kickedFromIMessageGroupWith:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID:%@", buf, 0x20u);
    }
  }

  v10 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SMDaemonClient_kickedFromIMessageGroupWith___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = v5;
  v14 = a2;
  v11 = v5;
  dispatch_async(v10, block);
}

void __46__SMDaemonClient_kickedFromIMessageGroupWith___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) initiatorService];

  if (v2)
  {
    v7 = [*(a1 + 32) initiatorService];
    [v7 kickedFromIMessageGroupWith:*(a1 + 40)];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@,%@,initiatorService nil", buf, 0x16u);
    }
  }
}

- (void)startMonitoringSessionStateWithHandler:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "start monitoring session state for client, %@", &v7, 0xCu);
      }
    }

    [(SMDaemonClient *)self setMonitorSessionState:1];
    [(SMDaemonClient *)self fetchCurrentSessionStateWithCompletion:v4];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", &v7, 2u);
    }
  }
}

- (void)stopMonitoringSessionStateWithHandler:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "stop monitoring session state for client, %@", &v7, 0xCu);
      }
    }

    [(SMDaemonClient *)self setMonitorSessionState:0];
    v4[2](v4, 0);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", &v7, 2u);
    }
  }
}

- (void)fetchCurrentSessionStateWithCompletion:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(SMDaemonClient *)self initiatorService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SMDaemonClient_fetchCurrentSessionStateWithCompletion___block_invoke;
    v8[3] = &unk_2788CCAC0;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 fetchCurrentSessionStateWithCompletion:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __57__SMDaemonClient_fetchCurrentSessionStateWithCompletion___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SMDaemonClient_fetchCurrentSessionStateWithCompletion___block_invoke_2;
  block[3] = &unk_2788CCA98;
  block[4] = *(a1 + 32);
  v15 = v7;
  v18 = a3;
  v16 = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);
}

uint64_t __57__SMDaemonClient_fetchCurrentSessionStateWithCompletion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = v3;
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = @"NO";
      if (*(a1 + 72))
      {
        v7 = @"YES";
      }

      v8 = *(a1 + 48);
      v10 = 138413315;
      v11 = v3;
      v12 = 2112;
      v13 = v5;
      v14 = 2117;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, client, %@, state, %{sensitive}@, canDeviceModifyState, %@, error, %@", &v10, 0x34u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)startMonitoringLocalSessionStateWithHandler:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "start monitoring local session state for client, %@", &v7, 0xCu);
      }
    }

    [(SMDaemonClient *)self setMonitorLocalSessionState:1];
    [(SMDaemonClient *)self fetchCurrentLocalSessionStateWithHandler:v4];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", &v7, 2u);
    }
  }
}

- (void)stopMonitoringLocalSessionStateWithHandler:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "stop monitoring local session state for client, %@", &v7, 0xCu);
      }
    }

    [(SMDaemonClient *)self setMonitorLocalSessionState:0];
    v4[2](v4, 0);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", &v7, 2u);
    }
  }
}

- (void)fetchCurrentLocalSessionStateWithHandler:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(SMDaemonClient *)self initiatorService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SMDaemonClient_fetchCurrentLocalSessionStateWithHandler___block_invoke;
    v8[3] = &unk_2788CCAE8;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 fetchCurrentLocalSessionStateWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __59__SMDaemonClient_fetchCurrentLocalSessionStateWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SMDaemonClient_fetchCurrentLocalSessionStateWithHandler___block_invoke_2;
  block[3] = &unk_2788C5110;
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __59__SMDaemonClient_fetchCurrentLocalSessionStateWithHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138413059;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2117;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, client, %@, state, %{sensitive}@, error, %@", &v8, 0x2Au);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)checkInitiatorEligibilityWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(SMDaemonClient *)self queue];
  v6 = [(SMDaemonClient *)self authorizationManager];
  v7 = [(SMDaemonClient *)self messagingService];
  v8 = [v7 effectivePairedDevice];
  v9 = [(SMDaemonClient *)self defaultsManager];
  v10 = [(SMDaemonClient *)self platform];
  v11 = [(SMDaemonClient *)self appDeletionManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__SMDaemonClient_checkInitiatorEligibilityWithHandler___block_invoke;
  v14[3] = &unk_2788C5AE8;
  v15 = v4;
  v16 = a2;
  v14[4] = self;
  v12 = v4;
  [SMInitiatorEligibility checkInitiatorEligibilityWithQueue:v5 authorizationManager:v6 effectivePairedDevice:v8 handoffType:0 defaultsManager:v9 platform:v10 appDeletionManager:v11 handler:v14];
}

void __55__SMDaemonClient_checkInitiatorEligibilityWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SMDaemonClient_checkInitiatorEligibilityWithHandler___block_invoke_2;
  block[3] = &unk_2788C6710;
  v13 = a2;
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __55__SMDaemonClient_checkInitiatorEligibilityWithHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v4 = initiatorEligiblityStatusToString();
      v5 = *(a1 + 32);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, eligibilityStatus, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)checkIMessageAccountEnabledWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(SMDaemonClient *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SMDaemonClient_checkIMessageAccountEnabledWithHandler___block_invoke;
  v8[3] = &unk_2788C4E00;
  v9 = v5;
  v10 = a2;
  v8[4] = self;
  v7 = v5;
  [SMInitiatorEligibility checkIMessageAccountEnabledWithQueue:v6 handler:v8];
}

void __57__SMDaemonClient_checkIMessageAccountEnabledWithHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SMDaemonClient_checkIMessageAccountEnabledWithHandler___block_invoke_2;
  block[3] = &unk_2788C9AD0;
  v13 = a2;
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __57__SMDaemonClient_checkIMessageAccountEnabledWithHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v4 = v3;
      v5 = @"NO";
      v6 = *(a1 + 56) == 0;
      v7 = *(a1 + 32);
      v9 = 138412802;
      if (!v6)
      {
        v5 = @"YES";
      }

      v10 = v3;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, iMessageAccountEnabled, %@, error, %@", &v9, 0x20u);
    }
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)checkConversationEligibility:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[SMDaemonClient checkConversationEligibility:handler:]";
    v19 = 1024;
    v20 = 1384;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: conversation (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[SMDaemonClient checkConversationEligibility:handler:]";
      v19 = 1024;
      v20 = 1385;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  eligibilityChecker = self->_eligibilityChecker;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__SMDaemonClient_checkConversationEligibility_handler___block_invoke;
  v14[3] = &unk_2788C5AE8;
  v15 = v9;
  v16 = a2;
  v14[4] = self;
  v13 = v9;
  [(SMEligibilityChecker *)eligibilityChecker checkConversationEligibility:v7 handler:v14];
}

void __55__SMDaemonClient_checkConversationEligibility_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SMDaemonClient_checkConversationEligibility_handler___block_invoke_2;
  block[3] = &unk_2788C6710;
  v13 = a2;
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __55__SMDaemonClient_checkConversationEligibility_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v4 = [MEMORY[0x277D4AAC0] convertEligibilityTypeToString:*(a1 + 56)];
      v5 = *(a1 + 32);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, receiver eligibility, %@, fetchError %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)checkHasSimWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SMDaemonClient_checkHasSimWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __41__SMDaemonClient_checkHasSimWithHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) queue];
  v3 = [SMInitiatorEligibility checkHasSimWithQueue:v2];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = v5;
      v7 = @"no";
      if (v3)
      {
        v7 = @"yes";
      }

      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, has sime, %@", &v9, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[SMDaemonClient fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:]";
      v14 = 1024;
      v15 = 1418;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  deviceConfigurationChecker = self->_deviceConfigurationChecker;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__SMDaemonClient_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke;
  v9[3] = &unk_2788C5AE8;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v8 = v5;
  [(SMDeviceConfigurationChecker *)deviceConfigurationChecker fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:v9];
}

void __78__SMDaemonClient_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SMDaemonClient_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke_2;
  block[3] = &unk_2788C6710;
  v13 = a2;
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __78__SMDaemonClient_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v4 = [MEMORY[0x277D4AAB0] convertLowPowerModeWarningStateToString:*(a1 + 56)];
      v5 = *(a1 + 32);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, device configuration low power mode state, %@, fetchError %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)checkEligibilityOfDestination:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "[SMDaemonClient checkEligibilityOfDestination:completionHandler:]";
    v17 = 1024;
    v18 = 1438;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLocation (in %s:%d)", &v15, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[SMDaemonClient checkEligibilityOfDestination:completionHandler:]";
      v17 = 1024;
      v18 = 1439;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v15, 0x12u);
    }
  }

LABEL_10:
  v11 = [(SMDaemonClient *)self initiatorService];
  v12 = [v11 locationManager];
  v13 = [(SMDaemonClient *)self distanceCalculator];
  v14 = [(SMDaemonClient *)self queue];
  [SMTriggerDestination checkEligibilityOfDestination:v6 locationManager:v12 distanceCalculator:v13 queue:v14 completionHandler:v8];
}

- (void)calculateDistanceToDestination:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "[SMDaemonClient calculateDistanceToDestination:completionHandler:]";
    v17 = 1024;
    v18 = 1452;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLocation (in %s:%d)", &v15, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[SMDaemonClient calculateDistanceToDestination:completionHandler:]";
      v17 = 1024;
      v18 = 1453;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v15, 0x12u);
    }
  }

LABEL_10:
  v11 = [(SMDaemonClient *)self initiatorService];
  v12 = [v11 locationManager];
  v13 = [(SMDaemonClient *)self distanceCalculator];
  v14 = [(SMDaemonClient *)self queue];
  [SMTriggerDestination calculateDistanceToDestination:v6 locationManager:v12 distanceCalculator:v13 queue:v14 handler:v8];
}

- (void)estimateEtaToDestination:(id)a3 transportType:(unint64_t)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SMDaemonClient estimateEtaToDestination:transportType:completionHandler:]";
      v20 = 1024;
      v21 = 1467;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLocation (in %s:%d)", buf, 0x12u);
    }

    if (a4)
    {
LABEL_3:
      if (v9)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "[SMDaemonClient estimateEtaToDestination:transportType:completionHandler:]";
    v20 = 1024;
    v21 = 1468;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: transportType (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_11:
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SMDaemonClient estimateEtaToDestination:transportType:completionHandler:]";
      v20 = 1024;
      v21 = 1469;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  v13 = [(SMDaemonClient *)self initiatorService];
  v14 = [v13 locationManager];
  v15 = [(SMDaemonClient *)self defaultsManager];
  v16 = [(SMDaemonClient *)self distanceCalculator];
  v17 = [(SMDaemonClient *)self queue];
  [SMTriggerDestination estimateEtaToDestination:v8 transportType:a4 locationManager:v14 defaultsManager:v15 distanceCalculator:v16 queue:v17 handler:v9];
}

- (void)startCheckInRemindersTipMetricsCollection
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@", &v7, 0xCu);
    }
  }

  v6 = [(SMDaemonClient *)self queue];
  dispatch_async(v6, &__block_literal_global_79);
}

void __59__SMDaemonClient_startCheckInRemindersTipMetricsCollection__block_invoke()
{
  v0 = objc_alloc_init(SMCheckInRemindersTipResponseMetricManager);
  [(SMCheckInRemindersTipResponseMetricManager *)v0 startMetricsCollection];
}

- (void)respondedToCheckInRemindersTipWithResponse:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      v11 = v7;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, response, %lu", buf, 0x16u);
    }
  }

  v8 = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SMDaemonClient_respondedToCheckInRemindersTipWithResponse___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(v8, block);
}

void __61__SMDaemonClient_respondedToCheckInRemindersTipWithResponse___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SMCheckInRemindersTipResponseMetricManager);
  [(SMCheckInRemindersTipResponseMetricManager *)v2 updateTipResponse:*(a1 + 32)];
}

@end