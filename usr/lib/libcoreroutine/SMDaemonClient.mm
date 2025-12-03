@interface SMDaemonClient
- (NSString)description;
- (SMDaemonClient)initWithQueue:(id)queue authorizationManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator platform:(id)platform initiatorService:(id)service messagingService:(id)messagingService receiverService:(id)self0 sessionStore:(id)self1 suggestionsManager:(id)self2 suggestionsHelper:(id)self3 suggestionsStore:(id)self4 eligibilityChecker:(id)self5 deviceConfigurationChecker:(id)self6 appDeletionManager:(id)self7;
- (void)_onLocalSessionStateChanged:(id)changed;
- (void)_onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device;
- (void)calculateDistanceToDestination:(id)destination completionHandler:(id)handler;
- (void)cancelMadridMessageSendForMessageGUID:(id)d toConversation:(id)conversation completion:(id)completion;
- (void)checkConversationEligibility:(id)eligibility handler:(id)handler;
- (void)checkEligibilityOfDestination:(id)destination completionHandler:(id)handler;
- (void)checkHasSimWithHandler:(id)handler;
- (void)checkIMessageAccountEnabledWithHandler:(id)handler;
- (void)checkInitiatorEligibilityWithHandler:(id)handler;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)detailsViewOpenedForSessionID:(id)d;
- (void)estimateEtaToDestination:(id)destination transportType:(unint64_t)type completionHandler:(id)handler;
- (void)fetchAllReceiverSessionStatusWithCompletion:(id)completion;
- (void)fetchCurrentLocalSessionStateWithHandler:(id)handler;
- (void)fetchCurrentSessionStateWithCompletion:(id)completion;
- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)handler;
- (void)fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion;
- (void)fetchReceiverSafetyCacheForSessionID:(id)d completion:(id)completion;
- (void)fetchReceiverSessionStatusForSessionID:(id)d completion:(id)completion;
- (void)fetchSOSReceiversWithCompletion:(id)completion;
- (void)iMessageConversationDeletedFor:(id)for;
- (void)iMessageDeletedFor:(id)for;
- (void)iMessageGroupDisplayNameChangedFor:(id)for;
- (void)iMessageGroupMembershipChangedFor:(id)for;
- (void)iMessageGroupPhotoChangedFor:(id)for;
- (void)iMessageReceived:(id)received fromHandle:(id)handle fromMe:(BOOL)me;
- (void)iMessageScheduledSendCancelFor:(id)for successful:(BOOL)successful withError:(id)error;
- (void)iMessageScheduledSendScheduledFor:(id)for guid:(id)guid successful:(BOOL)successful withError:(id)error;
- (void)iMessageScheduledSendTriggeredFor:(id)for;
- (void)iMessageSendFor:(id)for guid:(id)guid successful:(BOOL)successful withError:(id)error;
- (void)kickedFromIMessageGroupWith:(id)with;
- (void)onAuthorizationNotification:(id)notification;
- (void)onInitiatorSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache cacheExpiryDate:(id)date cacheReleaseDate:(id)releaseDate;
- (void)onLocalSessionStateChanged:(id)changed;
- (void)onReceiverSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache;
- (void)onReceiverSessionStatusChangeForSessionID:(id)d sessionStatus:(id)status;
- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device;
- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device;
- (void)respondedToCheckInRemindersTipWithResponse:(int64_t)response;
- (void)scheduleMadridMessageSendForMessage:(id)message messageGUID:(id)d associatedGUID:(id)iD sendDate:(id)date toConversation:(id)conversation summaryText:(id)text completion:(id)completion;
- (void)sendIDSMessage:(id)message toConversation:(id)conversation completion:(id)completion;
- (void)sendIDSMessageToMyDevices:(id)devices completion:(id)completion;
- (void)sendIDSMessageToMyNearbyDevices:(id)devices completion:(id)completion;
- (void)sendIDSMessageToPairedDevice:(id)device completion:(id)completion;
- (void)sendMadridMessage:(id)message associatedGUID:(id)d toConversation:(id)conversation summaryText:(id)text completion:(id)completion;
- (void)shutdown;
- (void)startCheckInRemindersTipMetricsCollection;
- (void)startMonitoringInitiatorSafetyCacheWithHandler:(id)handler;
- (void)startMonitoringLocalSessionStateWithHandler:(id)handler;
- (void)startMonitoringReceiverSafetyCacheWithHandler:(id)handler;
- (void)startMonitoringReceiverSessionStatusWithHandler:(id)handler;
- (void)startMonitoringSessionStateWithHandler:(id)handler;
- (void)stopMonitoringInitiatorSafetyCacheWithCompletion:(id)completion;
- (void)stopMonitoringLocalSessionStateWithHandler:(id)handler;
- (void)stopMonitoringReceiverSafetyCacheWithCompletion:(id)completion;
- (void)stopMonitoringReceiverSessionStatusWithCompletion:(id)completion;
- (void)stopMonitoringSessionStateWithHandler:(id)handler;
- (void)userRequestedCacheDownloadForSessionID:(id)d completion:(id)completion;
@end

@implementation SMDaemonClient

- (SMDaemonClient)initWithQueue:(id)queue authorizationManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator platform:(id)platform initiatorService:(id)service messagingService:(id)messagingService receiverService:(id)self0 sessionStore:(id)self1 suggestionsManager:(id)self2 suggestionsHelper:(id)self3 suggestionsStore:(id)self4 eligibilityChecker:(id)self5 deviceConfigurationChecker:(id)self6 appDeletionManager:(id)self7
{
  queueCopy = queue;
  managerCopy = manager;
  managerCopy2 = manager;
  defaultsManagerCopy = defaultsManager;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  platformCopy = platform;
  serviceCopy = service;
  serviceCopy2 = service;
  messagingServiceCopy = messagingService;
  receiverServiceCopy = receiverService;
  storeCopy = store;
  suggestionsManagerCopy = suggestionsManager;
  helperCopy = helper;
  suggestionsStoreCopy = suggestionsStore;
  checkerCopy = checker;
  configurationCheckerCopy = configurationChecker;
  deletionManagerCopy = deletionManager;
  v51 = deletionManagerCopy;
  if (!queueCopy)
  {
    v24 = managerCopy2;
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    v41 = 0;
    v25 = defaultsManagerCopy;
    goto LABEL_49;
  }

  v24 = managerCopy2;
  if (!managerCopy2)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v25 = defaultsManagerCopy;
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

  v25 = defaultsManagerCopy;
  if (!defaultsManagerCopy)
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

  if (!calculatorCopy2)
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

  if (!platformCopy)
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

  if (!serviceCopy2)
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

  if (!receiverServiceCopy)
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

  if (!storeCopy)
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

  if (!suggestionsManagerCopy)
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

  if (!helperCopy)
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

  if (!suggestionsStoreCopy)
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

  if (!checkerCopy)
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

  if (!configurationCheckerCopy)
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

  if (!deletionManagerCopy)
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
    selfCopy = self;
    goto LABEL_50;
  }

  v73.receiver = self;
  v73.super_class = SMDaemonClient;
  v26 = [(SMDaemonClient *)&v73 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_queue, queue);
    objc_storeStrong(&v27->_authorizationManager, managerCopy);
    objc_storeStrong(&v27->_defaultsManager, defaultsManager);
    objc_storeStrong(&v27->_distanceCalculator, calculatorCopy);
    objc_storeStrong(&v27->_platform, platform);
    objc_storeStrong(&v27->_initiatorService, serviceCopy);
    [(SMInitiatorService *)v27->_initiatorService addObserverForSessionManager:v27];
    objc_storeStrong(&v27->_sessionStore, store);
    objc_storeStrong(&v27->_suggestionsManager, suggestionsManager);
    objc_storeStrong(&v27->_suggestionsHelper, helper);
    objc_storeStrong(&v27->_suggestionsStore, suggestionsStore);
    v28 = +[RTEntitlementProvider safetyMonitorDaemonProtocolEntitlementProvider];
    entitlementProvider = v27->_entitlementProvider;
    v27->_entitlementProvider = v28;

    objc_storeStrong(&v27->_messagingService, messagingService);
    objc_storeStrong(&v27->_receiverService, receiverService);
    [(SMReceiverService *)v27->_receiverService addObserver:v27];
    objc_storeStrong(&v27->_eligibilityChecker, checker);
    objc_storeStrong(&v27->_deviceConfigurationChecker, configurationChecker);
    objc_storeStrong(&v27->_appDeletionManager, deletionManager);
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
    queue = [(SMDaemonClient *)v37 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __279__SMDaemonClient_initWithQueue_authorizationManager_defaultsManager_distanceCalculator_platform_initiatorService_messagingService_receiverService_sessionStore_suggestionsManager_suggestionsHelper_suggestionsStore_eligibilityChecker_deviceConfigurationChecker_appDeletionManager___block_invoke_5;
    block[3] = &unk_2788C4EA0;
    v66 = v37;
    dispatch_group_notify(v38, queue, block);

    v25 = defaultsManagerCopy;
  }

  selfCopy = v27;
  v41 = selfCopy;
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
  executablePath = [(SMDaemonClient *)self executablePath];
  v5 = [v3 stringWithFormat:@"%@(%d)", executablePath, -[SMDaemonClient processIdentifier](self, "processIdentifier")];

  return v5;
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  v36 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  invocationCopy = invocation;
  [invocationCopy retainArguments];
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
  replyCopy = reply;
  v25 = invocationCopy;
  selfCopy = self;
  v27 = connectionCopy;
  v28 = v30;
  v19 = connectionCopy;
  v20 = invocationCopy;
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

- (void)onAuthorizationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SMDaemonClient_onAuthorizationNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = notificationCopy;
  selfCopy = self;
  v11 = a2;
  v7 = notificationCopy;
  dispatch_async(queue, block);
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
  queue = [(SMDaemonClient *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__SMDaemonClient_shutdown__block_invoke;
  v5[3] = &unk_2788C52E8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
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

- (void)fetchSOSReceiversWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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

  initiatorService = [(SMDaemonClient *)self initiatorService];
  [initiatorService fetchSOSReceiversWithCompletion:completionCopy];
}

- (void)fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v14 = 138412802;
      v15 = dCopy;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetching initiator safety cache", &v14, 0x20u);
    }
  }

  initiatorService = [(SMDaemonClient *)self initiatorService];
  [initiatorService fetchInitiatorSafetyCacheForSessionID:dCopy completion:completionCopy];
}

- (void)fetchAllReceiverSessionStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  receiverService = [(SMDaemonClient *)self receiverService];
  [receiverService fetchAllReceiverSessionStatusWithCompletion:completionCopy];
}

- (void)fetchReceiverSessionStatusForSessionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  receiverService = [(SMDaemonClient *)self receiverService];
  [receiverService fetchReceiverSessionStatusForSessionID:dCopy completion:completionCopy];
}

- (void)userRequestedCacheDownloadForSessionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  receiverService = [(SMDaemonClient *)self receiverService];
  [receiverService userRequestedCacheDownloadForSessionID:dCopy completion:completionCopy];
}

- (void)fetchReceiverSafetyCacheForSessionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  receiverService = [(SMDaemonClient *)self receiverService];
  [receiverService fetchReceiverSafetyCacheForSessionID:dCopy completion:completionCopy];
}

- (void)detailsViewOpenedForSessionID:(id)d
{
  dCopy = d;
  receiverService = [(SMDaemonClient *)self receiverService];
  [receiverService detailsViewOpenedForSessionID:dCopy];
}

- (void)startMonitoringInitiatorSafetyCacheWithHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
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
    initiatorService = [(SMDaemonClient *)self initiatorService];
    [initiatorService addObserver:self];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0, 0);
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

- (void)stopMonitoringInitiatorSafetyCacheWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
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
    initiatorService = [(SMDaemonClient *)self initiatorService];
    [initiatorService removeObserver:self];

    completionCopy[2](completionCopy, 0);
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

- (void)startMonitoringReceiverSessionStatusWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
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
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
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

- (void)stopMonitoringReceiverSessionStatusWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
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
    completionCopy[2](completionCopy, 0);
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

- (void)startMonitoringReceiverSafetyCacheWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
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
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0);
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

- (void)stopMonitoringReceiverSafetyCacheWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
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
    completionCopy[2](completionCopy, 0);
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

- (void)onInitiatorSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache cacheExpiryDate:(id)date cacheReleaseDate:(id)releaseDate
{
  dCopy = d;
  cacheCopy = cache;
  watchCacheCopy = watchCache;
  dateCopy = date;
  releaseDateCopy = releaseDate;
  if (dCopy)
  {
    queue = [(SMDaemonClient *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__SMDaemonClient_onInitiatorSafetyCacheChangeForSessionID_phoneCache_watchCache_cacheExpiryDate_cacheReleaseDate___block_invoke;
    block[3] = &unk_2788C5F00;
    block[4] = self;
    v26 = a2;
    v21 = dCopy;
    v22 = cacheCopy;
    v23 = watchCacheCopy;
    v24 = dateCopy;
    v25 = releaseDateCopy;
    dispatch_async(queue, block);
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

- (void)onReceiverSessionStatusChangeForSessionID:(id)d sessionStatus:(id)status
{
  dCopy = d;
  statusCopy = status;
  v9 = statusCopy;
  if (!dCopy)
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

  if (!statusCopy)
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

  queue = [(SMDaemonClient *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SMDaemonClient_onReceiverSessionStatusChangeForSessionID_sessionStatus___block_invoke;
  v13[3] = &unk_2788C4C70;
  v13[4] = self;
  v16 = a2;
  v14 = dCopy;
  v15 = v9;
  dispatch_async(queue, v13);

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

- (void)onReceiverSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache
{
  dCopy = d;
  cacheCopy = cache;
  watchCacheCopy = watchCache;
  if (dCopy)
  {
    queue = [(SMDaemonClient *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__SMDaemonClient_onReceiverSafetyCacheChangeForSessionID_phoneCache_watchCache___block_invoke;
    block[3] = &unk_2788C50E8;
    block[4] = self;
    v18 = a2;
    v15 = dCopy;
    v16 = cacheCopy;
    v17 = watchCacheCopy;
    dispatch_async(queue, block);
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

- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device
{
  changedCopy = changed;
  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SMDaemonClient_onSessionStateChanged_forActiveDevice___block_invoke;
  block[3] = &unk_2788C53C8;
  block[4] = self;
  v10 = changedCopy;
  deviceCopy = device;
  v8 = changedCopy;
  dispatch_async(queue, block);
}

- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
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

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SMDaemonClient_onSessionResumedWithState_forActiveDevice___block_invoke;
  block[3] = &unk_2788C53C8;
  block[4] = self;
  v11 = stateCopy;
  deviceCopy = device;
  v9 = stateCopy;
  dispatch_async(queue, block);
}

- (void)_onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v14 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if ([(SMDaemonClient *)self monitorSessionState])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138740227;
        v11 = changedCopy;
        v12 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "sending session state, %{sensitive}@, to client, %@", &v10, 0x16u);
      }
    }

    xpcConnection = [(SMDaemonClient *)self xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
    [remoteObjectProxy onSessionStateChanged:changedCopy forActiveDevice:deviceCopy withError:0];
  }
}

- (void)onLocalSessionStateChanged:(id)changed
{
  changedCopy = changed;
  queue = [(SMDaemonClient *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SMDaemonClient_onLocalSessionStateChanged___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)_onLocalSessionStateChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if ([(SMDaemonClient *)self monitorLocalSessionState])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138740227;
        v9 = changedCopy;
        v10 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "sending session state, %{sensitive}@, to client, %@", &v8, 0x16u);
      }
    }

    xpcConnection = [(SMDaemonClient *)self xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
    [remoteObjectProxy onLocalSessionStateChanged:changedCopy withError:0];
  }
}

- (void)sendIDSMessage:(id)message toConversation:(id)conversation completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  conversationCopy = conversation;
  completionCopy = completion;
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
      v30 = messageCopy;
      v31 = 2112;
      v32 = conversationCopy;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@,toConversation:%@", buf, 0x2Au);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SMDaemonClient_sendIDSMessage_toConversation_completion___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v21 = messageCopy;
  v22 = conversationCopy;
  v23 = completionCopy;
  v24 = a2;
  v17 = completionCopy;
  v18 = conversationCopy;
  v19 = messageCopy;
  dispatch_async(queue, block);
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

- (void)sendIDSMessageToMyDevices:(id)devices completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  completionCopy = completion;
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
      v25 = devicesCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__SMDaemonClient_sendIDSMessageToMyDevices_completion___block_invoke;
  v16[3] = &unk_2788C4C20;
  v16[4] = self;
  v17 = devicesCopy;
  v18 = completionCopy;
  v19 = a2;
  v14 = completionCopy;
  v15 = devicesCopy;
  dispatch_async(queue, v16);
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

- (void)sendIDSMessageToPairedDevice:(id)device completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
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
      v25 = deviceCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__SMDaemonClient_sendIDSMessageToPairedDevice_completion___block_invoke;
  v16[3] = &unk_2788C4C20;
  v16[4] = self;
  v17 = deviceCopy;
  v18 = completionCopy;
  v19 = a2;
  v14 = completionCopy;
  v15 = deviceCopy;
  dispatch_async(queue, v16);
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

- (void)sendIDSMessageToMyNearbyDevices:(id)devices completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  completionCopy = completion;
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
      v25 = devicesCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SMDaemonClient_sendIDSMessageToMyNearbyDevices_completion___block_invoke;
  v16[3] = &unk_2788C4C20;
  v16[4] = self;
  v17 = devicesCopy;
  v18 = completionCopy;
  v19 = a2;
  v14 = completionCopy;
  v15 = devicesCopy;
  dispatch_async(queue, v16);
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

- (void)sendMadridMessage:(id)message associatedGUID:(id)d toConversation:(id)conversation summaryText:(id)text completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  conversationCopy = conversation;
  textCopy = text;
  completionCopy = completion;
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
      v40 = messageCopy;
      v41 = 2112;
      v42 = dCopy;
      v43 = 2112;
      v44 = conversationCopy;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@,associatedGUID:%@,toConversation:%@", buf, 0x34u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SMDaemonClient_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke;
  block[3] = &unk_2788CCA20;
  block[4] = self;
  v29 = messageCopy;
  v30 = dCopy;
  v31 = conversationCopy;
  v32 = textCopy;
  v33 = completionCopy;
  v34 = a2;
  v23 = completionCopy;
  v24 = textCopy;
  v25 = conversationCopy;
  v26 = dCopy;
  v27 = messageCopy;
  dispatch_async(queue, block);
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

- (void)scheduleMadridMessageSendForMessage:(id)message messageGUID:(id)d associatedGUID:(id)iD sendDate:(id)date toConversation:(id)conversation summaryText:(id)text completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  conversationCopy = conversation;
  textCopy = text;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v34 = NSStringFromClass(v23);
      NSStringFromSelector(a2);
      v24 = v35 = messageCopy;
      [dateCopy stringFromDate];
      *buf = 138413827;
      v47 = v34;
      v48 = 2112;
      v49 = v24;
      v50 = 2117;
      v51 = v35;
      v52 = 2112;
      v53 = dCopy;
      v54 = 2112;
      v55 = iDCopy;
      v57 = v56 = 2112;
      v25 = v57;
      v58 = 2112;
      v59 = conversationCopy;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@,%@,message:%{sensitive}@,messageGUID:%@,associatedGUID:%@,sendDate:%@,toConversation:%@", buf, 0x48u);

      messageCopy = v35;
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__SMDaemonClient_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke;
  block[3] = &unk_2788CCA48;
  block[4] = self;
  v38 = messageCopy;
  v39 = dCopy;
  v40 = iDCopy;
  v41 = dateCopy;
  v42 = conversationCopy;
  v43 = textCopy;
  v44 = completionCopy;
  v45 = a2;
  v27 = completionCopy;
  v28 = textCopy;
  v29 = conversationCopy;
  v30 = dateCopy;
  v31 = iDCopy;
  v32 = dCopy;
  v33 = messageCopy;
  dispatch_async(queue, block);
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

- (void)cancelMadridMessageSendForMessageGUID:(id)d toConversation:(id)conversation completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  conversationCopy = conversation;
  completionCopy = completion;
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
      v30 = dCopy;
      v31 = 2112;
      v32 = conversationCopy;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@,%@,messageGUID:%@,toConversation:%@", buf, 0x2Au);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SMDaemonClient_cancelMadridMessageSendForMessageGUID_toConversation_completion___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v21 = dCopy;
  v22 = conversationCopy;
  v23 = completionCopy;
  v24 = a2;
  v17 = completionCopy;
  v18 = conversationCopy;
  v19 = dCopy;
  dispatch_async(queue, block);
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

- (void)iMessageSendFor:(id)for guid:(id)guid successful:(BOOL)successful withError:(id)error
{
  successfulCopy = successful;
  v40 = *MEMORY[0x277D85DE8];
  forCopy = for;
  guidCopy = guid;
  errorCopy = error;
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
      v33 = forCopy;
      v34 = 2112;
      v35 = guidCopy;
      v36 = 1024;
      v37 = successfulCopy;
      v38 = 2112;
      v39 = errorCopy;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,%@,messageURL:%@,messageGUID:%@,success:%d,error:%@", buf, 0x3Au);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__SMDaemonClient_iMessageSendFor_guid_successful_withError___block_invoke;
  v22[3] = &unk_2788CCA70;
  v22[4] = self;
  v23 = forCopy;
  v27 = successfulCopy;
  v24 = guidCopy;
  v25 = errorCopy;
  v26 = a2;
  v19 = errorCopy;
  v20 = guidCopy;
  v21 = forCopy;
  dispatch_async(queue, v22);
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

- (void)iMessageScheduledSendScheduledFor:(id)for guid:(id)guid successful:(BOOL)successful withError:(id)error
{
  successfulCopy = successful;
  v40 = *MEMORY[0x277D85DE8];
  forCopy = for;
  guidCopy = guid;
  errorCopy = error;
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
      v33 = forCopy;
      v34 = 2112;
      v35 = guidCopy;
      v36 = 1024;
      v37 = successfulCopy;
      v38 = 2112;
      v39 = errorCopy;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,%@,messageURL:%@,messageGUID:%@,success:%d,error:%@", buf, 0x3Au);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__SMDaemonClient_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke;
  v22[3] = &unk_2788CCA70;
  v22[4] = self;
  v23 = forCopy;
  v27 = successfulCopy;
  v24 = guidCopy;
  v25 = errorCopy;
  v26 = a2;
  v19 = errorCopy;
  v20 = guidCopy;
  v21 = forCopy;
  dispatch_async(queue, v22);
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

- (void)iMessageScheduledSendCancelFor:(id)for successful:(BOOL)successful withError:(id)error
{
  successfulCopy = successful;
  v33 = *MEMORY[0x277D85DE8];
  forCopy = for;
  errorCopy = error;
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
      v28 = forCopy;
      v29 = 1024;
      v30 = successfulCopy;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@,%@,messageGUID:%@,success:%d,error:%@", buf, 0x30u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SMDaemonClient_iMessageScheduledSendCancelFor_successful_withError___block_invoke;
  block[3] = &unk_2788C50C0;
  block[4] = self;
  v19 = forCopy;
  v22 = successfulCopy;
  v20 = errorCopy;
  v21 = a2;
  v16 = errorCopy;
  v17 = forCopy;
  dispatch_async(queue, block);
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

- (void)iMessageScheduledSendTriggeredFor:(id)for
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
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
      v20 = forCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,messageGUID:%@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SMDaemonClient_iMessageScheduledSendTriggeredFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = forCopy;
  v14 = a2;
  v11 = forCopy;
  dispatch_async(queue, block);
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

- (void)iMessageReceived:(id)received fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v33 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  handleCopy = handle;
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
      v28 = receivedCopy;
      v29 = 2112;
      v30 = handleCopy;
      v31 = 1024;
      v32 = meCopy;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@,%@,messageUrl:%@,handle:%@,fromMe:%d", buf, 0x30u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMDaemonClient_iMessageReceived_fromHandle_fromMe___block_invoke;
  block[3] = &unk_2788C50C0;
  block[4] = self;
  v19 = receivedCopy;
  v22 = meCopy;
  v20 = handleCopy;
  v21 = a2;
  v16 = handleCopy;
  v17 = receivedCopy;
  dispatch_async(queue, block);
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

- (void)iMessageDeletedFor:(id)for
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
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
      v20 = forCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,messageUrls:%@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SMDaemonClient_iMessageDeletedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = forCopy;
  v14 = a2;
  v11 = forCopy;
  dispatch_async(queue, block);
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

- (void)iMessageConversationDeletedFor:(id)for
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
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
      v20 = forCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,receiverHandles:%@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMDaemonClient_iMessageConversationDeletedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = forCopy;
  v14 = a2;
  v11 = forCopy;
  dispatch_async(queue, block);
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

- (void)iMessageGroupMembershipChangedFor:(id)for
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
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
      v20 = forCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID:%@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SMDaemonClient_iMessageGroupMembershipChangedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = forCopy;
  v14 = a2;
  v11 = forCopy;
  dispatch_async(queue, block);
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

- (void)iMessageGroupDisplayNameChangedFor:(id)for
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
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
      v20 = forCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID:%@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMDaemonClient_iMessageGroupDisplayNameChangedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = forCopy;
  v14 = a2;
  v11 = forCopy;
  dispatch_async(queue, block);
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

- (void)iMessageGroupPhotoChangedFor:(id)for
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
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
      v20 = forCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID:%@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SMDaemonClient_iMessageGroupPhotoChangedFor___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = forCopy;
  v14 = a2;
  v11 = forCopy;
  dispatch_async(queue, block);
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

- (void)kickedFromIMessageGroupWith:(id)with
{
  v21 = *MEMORY[0x277D85DE8];
  withCopy = with;
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
      v20 = withCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID:%@", buf, 0x20u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SMDaemonClient_kickedFromIMessageGroupWith___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v13 = withCopy;
  v14 = a2;
  v11 = withCopy;
  dispatch_async(queue, block);
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

- (void)startMonitoringSessionStateWithHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "start monitoring session state for client, %@", &v7, 0xCu);
      }
    }

    [(SMDaemonClient *)self setMonitorSessionState:1];
    [(SMDaemonClient *)self fetchCurrentSessionStateWithCompletion:handlerCopy];
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

- (void)stopMonitoringSessionStateWithHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "stop monitoring session state for client, %@", &v7, 0xCu);
      }
    }

    [(SMDaemonClient *)self setMonitorSessionState:0];
    handlerCopy[2](handlerCopy, 0);
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

- (void)fetchCurrentSessionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    initiatorService = [(SMDaemonClient *)self initiatorService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SMDaemonClient_fetchCurrentSessionStateWithCompletion___block_invoke;
    v8[3] = &unk_2788CCAC0;
    v8[4] = self;
    v10 = a2;
    v9 = completionCopy;
    [initiatorService fetchCurrentSessionStateWithCompletion:v8];
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

- (void)startMonitoringLocalSessionStateWithHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "start monitoring local session state for client, %@", &v7, 0xCu);
      }
    }

    [(SMDaemonClient *)self setMonitorLocalSessionState:1];
    [(SMDaemonClient *)self fetchCurrentLocalSessionStateWithHandler:handlerCopy];
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

- (void)stopMonitoringLocalSessionStateWithHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "stop monitoring local session state for client, %@", &v7, 0xCu);
      }
    }

    [(SMDaemonClient *)self setMonitorLocalSessionState:0];
    handlerCopy[2](handlerCopy, 0);
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

- (void)fetchCurrentLocalSessionStateWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    initiatorService = [(SMDaemonClient *)self initiatorService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SMDaemonClient_fetchCurrentLocalSessionStateWithHandler___block_invoke;
    v8[3] = &unk_2788CCAE8;
    v8[4] = self;
    v10 = a2;
    v9 = handlerCopy;
    [initiatorService fetchCurrentLocalSessionStateWithHandler:v8];
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

- (void)checkInitiatorEligibilityWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMDaemonClient *)self queue];
  authorizationManager = [(SMDaemonClient *)self authorizationManager];
  messagingService = [(SMDaemonClient *)self messagingService];
  effectivePairedDevice = [messagingService effectivePairedDevice];
  defaultsManager = [(SMDaemonClient *)self defaultsManager];
  platform = [(SMDaemonClient *)self platform];
  appDeletionManager = [(SMDaemonClient *)self appDeletionManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__SMDaemonClient_checkInitiatorEligibilityWithHandler___block_invoke;
  v14[3] = &unk_2788C5AE8;
  v15 = handlerCopy;
  v16 = a2;
  v14[4] = self;
  v12 = handlerCopy;
  [SMInitiatorEligibility checkInitiatorEligibilityWithQueue:queue authorizationManager:authorizationManager effectivePairedDevice:effectivePairedDevice handoffType:0 defaultsManager:defaultsManager platform:platform appDeletionManager:appDeletionManager handler:v14];
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

- (void)checkIMessageAccountEnabledWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMDaemonClient *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SMDaemonClient_checkIMessageAccountEnabledWithHandler___block_invoke;
  v8[3] = &unk_2788C4E00;
  v9 = handlerCopy;
  v10 = a2;
  v8[4] = self;
  v7 = handlerCopy;
  [SMInitiatorEligibility checkIMessageAccountEnabledWithQueue:queue handler:v8];
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

- (void)checkConversationEligibility:(id)eligibility handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  eligibilityCopy = eligibility;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (eligibilityCopy)
  {
    if (handlerCopy)
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
  [(SMEligibilityChecker *)eligibilityChecker checkConversationEligibility:eligibilityCopy handler:v14];
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

- (void)checkHasSimWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SMDaemonClient_checkHasSimWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
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
  v10 = handlerCopy;
  v11 = a2;
  v9[4] = self;
  v8 = handlerCopy;
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

- (void)checkEligibilityOfDestination:(id)destination completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (destinationCopy)
  {
    if (handlerCopy)
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
  initiatorService = [(SMDaemonClient *)self initiatorService];
  locationManager = [initiatorService locationManager];
  distanceCalculator = [(SMDaemonClient *)self distanceCalculator];
  queue = [(SMDaemonClient *)self queue];
  [SMTriggerDestination checkEligibilityOfDestination:destinationCopy locationManager:locationManager distanceCalculator:distanceCalculator queue:queue completionHandler:v8];
}

- (void)calculateDistanceToDestination:(id)destination completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (destinationCopy)
  {
    if (handlerCopy)
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
  initiatorService = [(SMDaemonClient *)self initiatorService];
  locationManager = [initiatorService locationManager];
  distanceCalculator = [(SMDaemonClient *)self distanceCalculator];
  queue = [(SMDaemonClient *)self queue];
  [SMTriggerDestination calculateDistanceToDestination:destinationCopy locationManager:locationManager distanceCalculator:distanceCalculator queue:queue handler:v8];
}

- (void)estimateEtaToDestination:(id)destination transportType:(unint64_t)type completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  handlerCopy = handler;
  if (destinationCopy)
  {
    if (type)
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

    if (type)
    {
LABEL_3:
      if (handlerCopy)
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

  if (!handlerCopy)
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
  initiatorService = [(SMDaemonClient *)self initiatorService];
  locationManager = [initiatorService locationManager];
  defaultsManager = [(SMDaemonClient *)self defaultsManager];
  distanceCalculator = [(SMDaemonClient *)self distanceCalculator];
  queue = [(SMDaemonClient *)self queue];
  [SMTriggerDestination estimateEtaToDestination:destinationCopy transportType:type locationManager:locationManager defaultsManager:defaultsManager distanceCalculator:distanceCalculator queue:queue handler:handlerCopy];
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

  queue = [(SMDaemonClient *)self queue];
  dispatch_async(queue, &__block_literal_global_79);
}

void __59__SMDaemonClient_startCheckInRemindersTipMetricsCollection__block_invoke()
{
  v0 = objc_alloc_init(SMCheckInRemindersTipResponseMetricManager);
  [(SMCheckInRemindersTipResponseMetricManager *)v0 startMetricsCollection];
}

- (void)respondedToCheckInRemindersTipWithResponse:(int64_t)response
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
      responseCopy = response;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, response, %lu", buf, 0x16u);
    }
  }

  queue = [(SMDaemonClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SMDaemonClient_respondedToCheckInRemindersTipWithResponse___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = response;
  dispatch_async(queue, block);
}

void __61__SMDaemonClient_respondedToCheckInRemindersTipWithResponse___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SMCheckInRemindersTipResponseMetricManager);
  [(SMCheckInRemindersTipResponseMetricManager *)v2 updateTipResponse:*(a1 + 32)];
}

@end