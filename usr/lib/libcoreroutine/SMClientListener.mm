@interface SMClientListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SMClientListener)initWithDefaultsManager:(id)manager authorizationManager:(id)authorizationManager distanceCalculator:(id)calculator platform:(id)platform initiatorService:(id)service messagingService:(id)messagingService receiverService:(id)receiverService sessionStore:(id)self0 suggestionsManager:(id)self1 suggestionsHelper:(id)self2 suggestionsStore:(id)self3 eligibilityChecker:(id)self4 deviceConfigurationChecker:(id)self5 appDeletionManager:(id)self6;
- (id)handleClientConnection:(id)connection;
- (void)_setup;
- (void)_setupConnection:(id)connection forClient:(id)client;
- (void)handleDisconnectionForDaemonClient:(id)client;
@end

@implementation SMClientListener

- (SMClientListener)initWithDefaultsManager:(id)manager authorizationManager:(id)authorizationManager distanceCalculator:(id)calculator platform:(id)platform initiatorService:(id)service messagingService:(id)messagingService receiverService:(id)receiverService sessionStore:(id)self0 suggestionsManager:(id)self1 suggestionsHelper:(id)self2 suggestionsStore:(id)self3 eligibilityChecker:(id)self4 deviceConfigurationChecker:(id)self5 appDeletionManager:(id)self6
{
  managerCopy = manager;
  authorizationManagerCopy = authorizationManager;
  authorizationManagerCopy2 = authorizationManager;
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
  v117 = deletionManagerCopy;
  if (!managerCopy)
  {
    v23 = authorizationManagerCopy2;
    v107 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v107, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v106 = 0;
    v24 = calculatorCopy2;
    goto LABEL_46;
  }

  v23 = authorizationManagerCopy2;
  if (!authorizationManagerCopy2)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v24 = calculatorCopy2;
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: authorizationManager";
LABEL_44:
    _os_log_error_impl(&dword_2304B3000, v108, OS_LOG_TYPE_ERROR, v109, buf, 2u);
    goto LABEL_45;
  }

  v24 = calculatorCopy2;
  if (!calculatorCopy2)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_44;
  }

  if (!platformCopy)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: platform";
    goto LABEL_44;
  }

  if (!serviceCopy2)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: initiatorService";
    goto LABEL_44;
  }

  if (!messagingServiceCopy)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: messagingService";
    goto LABEL_44;
  }

  if (!receiverServiceCopy)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: receiverService";
    goto LABEL_44;
  }

  if (!suggestionsManagerCopy)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: suggestionsManager";
    goto LABEL_44;
  }

  if (!helperCopy)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: suggestionsHelper";
    goto LABEL_44;
  }

  if (!suggestionsStoreCopy)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: suggestionsStore";
    goto LABEL_44;
  }

  if (!checkerCopy)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: eligibilityChecker";
    goto LABEL_44;
  }

  if (!configurationCheckerCopy)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v109 = "Invalid parameter not satisfying: deviceConfigurationChecker";
    goto LABEL_44;
  }

  if (!deletionManagerCopy)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v109 = "Invalid parameter not satisfying: appDeletionManager";
      goto LABEL_44;
    }

LABEL_45:

    v106 = 0;
LABEL_46:
    selfCopy = self;
    goto LABEL_47;
  }

  v25 = *MEMORY[0x277D4AD28];
  v131.receiver = self;
  v131.super_class = SMClientListener;
  v26 = [(RTXPCListener *)&v131 initWithMachServiceName:v25];
  if (v26)
  {
    v116 = v26;
    objc_storeStrong(&v26->_defaultsManager, manager);
    objc_storeStrong(&v116->_authorizationManager, authorizationManagerCopy);
    objc_storeStrong(&v116->_distanceCalculator, calculatorCopy);
    objc_storeStrong(&v116->_platform, platform);
    objc_storeStrong(&v116->_initiatorService, serviceCopy);
    objc_storeStrong(&v116->_sessionStore, store);
    objc_storeStrong(&v116->_suggestionsManager, suggestionsManager);
    objc_storeStrong(&v116->_suggestionsHelper, helper);
    objc_storeStrong(&v116->_suggestionsStore, suggestionsStore);
    objc_storeStrong(&v116->_messagingService, messagingService);
    objc_storeStrong(&v116->_receiverService, receiverService);
    objc_storeStrong(&v116->_eligibilityChecker, checker);
    objc_storeStrong(&v116->_deviceConfigurationChecker, configurationChecker);
    objc_storeStrong(&v116->_appDeletionManager, deletionManager);
    v27 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28465E528];
    frameworkInterface = v116->_frameworkInterface;
    v116->_frameworkInterface = v27;

    v29 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845E6010];
    daemonInterface = v116->_daemonInterface;
    v116->_daemonInterface = v29;

    v31 = v116->_daemonInterface;
    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v119 = v23;
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v32 setWithObjects:{v33, v34, v35, v36, v37, objc_opt_class(), 0}];
    [(NSXPCInterface *)v31 setClasses:v38 forSelector:sel_startSessionWithConfiguration_completion_ argumentIndex:0 ofReply:0];

    v39 = v116->_daemonInterface;
    v40 = MEMORY[0x277CBEB98];
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = [v40 setWithObjects:{v41, v42, v43, v44, v45, objc_opt_class(), 0}];
    [(NSXPCInterface *)v39 setClasses:v46 forSelector:sel_modifySessionWithConfiguration_handler_ argumentIndex:0 ofReply:0];

    v47 = v116->_daemonInterface;
    v48 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = [v48 setWithObjects:{v49, v50, v51, v52, v53, objc_opt_class(), 0}];
    [(NSXPCInterface *)v47 setClasses:v54 forSelector:sel_checkInitiatorEligibilityWithHandler_ argumentIndex:0 ofReply:0];

    v55 = v116->_daemonInterface;
    v56 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v55 setClasses:v56 forSelector:sel_checkHasSimWithHandler_ argumentIndex:0 ofReply:0];

    v57 = v116->_daemonInterface;
    v58 = MEMORY[0x277CBEB98];
    v59 = objc_opt_class();
    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = [v58 setWithObjects:{v59, v60, v61, objc_opt_class(), 0}];
    [(NSXPCInterface *)v57 setClasses:v62 forSelector:sel_checkConversationEligibility_handler_ argumentIndex:0 ofReply:0];

    v63 = v116->_daemonInterface;
    v64 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v63 setClasses:v64 forSelector:sel_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler_ argumentIndex:0 ofReply:0];

    v65 = v116->_daemonInterface;
    v66 = MEMORY[0x277CBEB98];
    v67 = objc_opt_class();
    v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
    [(NSXPCInterface *)v65 setClasses:v68 forSelector:sel_storeSuggestions_handler_ argumentIndex:0 ofReply:0];

    v69 = v116->_daemonInterface;
    v70 = MEMORY[0x277CBEB98];
    v71 = objc_opt_class();
    v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
    [(NSXPCInterface *)v69 setClasses:v72 forSelector:sel_storeSessionManagerStates_handler_ argumentIndex:0 ofReply:0];

    v73 = v116->_daemonInterface;
    v74 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v73 setClasses:v74 forSelector:sel_runProactiveSuggestionsEngineWithContext_shouldStoreSuggestions_handler_ argumentIndex:0 ofReply:0];

    v75 = v116->_daemonInterface;
    v76 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v75 setClasses:v76 forSelector:sel_runProactiveSuggestionsEngineWithContext_shouldStoreSuggestions_handler_ argumentIndex:0 ofReply:0];

    v77 = v116->_daemonInterface;
    v78 = MEMORY[0x277CBEB98];
    v79 = objc_opt_class();
    v80 = [v78 setWithObjects:{v79, objc_opt_class(), 0}];
    [(NSXPCInterface *)v77 setClasses:v80 forSelector:sel_fetchNumFavoriteRecipientsWithReceiverHandles_handler_ argumentIndex:0 ofReply:0];

    v81 = v116->_daemonInterface;
    v82 = MEMORY[0x277CBEB98];
    v83 = objc_opt_class();
    v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
    [(NSXPCInterface *)v81 setClasses:v84 forSelector:sel_fetchNumEmergencyRecipientsWithReceiverHandles_handler_ argumentIndex:0 ofReply:0];

    v85 = v116->_daemonInterface;
    v86 = MEMORY[0x277CBEB98];
    v87 = objc_opt_class();
    v88 = [v86 setWithObjects:{v87, objc_opt_class(), 0}];
    [(NSXPCInterface *)v85 setClasses:v88 forSelector:sel_fetchNumiCloudFamilyRecipientsWithReceiverHandles_handler_ argumentIndex:0 ofReply:0];

    v89 = v116->_daemonInterface;
    v90 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v89 setClasses:v90 forSelector:sel_respondToNotificationWithIdentifier_sessionIdentifier_actionIdentifier_handler_ argumentIndex:0 ofReply:0];

    v91 = v116->_daemonInterface;
    v92 = MEMORY[0x277CBEB98];
    v93 = objc_opt_class();
    v94 = [v92 setWithObjects:{v93, objc_opt_class(), 0}];
    [(NSXPCInterface *)v91 setClasses:v94 forSelector:sel_iMessageDeletedFor_ argumentIndex:0 ofReply:0];

    v95 = v116->_daemonInterface;
    v96 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v95 setClasses:v96 forSelector:sel_iMessageGroupMembershipChangedFor_ argumentIndex:0 ofReply:0];

    v97 = v116->_daemonInterface;
    v98 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v97 setClasses:v98 forSelector:sel_iMessageGroupDisplayNameChangedFor_ argumentIndex:0 ofReply:0];

    v99 = v116->_daemonInterface;
    v100 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v99 setClasses:v100 forSelector:sel_iMessageGroupPhotoChangedFor_ argumentIndex:0 ofReply:0];

    v101 = v116->_daemonInterface;
    v24 = calculatorCopy2;
    v102 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v101 setClasses:v102 forSelector:sel_kickedFromIMessageGroupWith_ argumentIndex:0 ofReply:0];

    v103 = v116->_daemonInterface;
    v23 = v119;
    v104 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v103 setClasses:v104 forSelector:sel_fetchQuickReplySuggestionURLWithCompletion_ argumentIndex:0 ofReply:1];

    [(RTXPCListener *)v116 setup];
    v26 = v116;
  }

  selfCopy = v26;
  v106 = selfCopy;
LABEL_47:

  return v106;
}

- (void)_setup
{
  v2.receiver = self;
  v2.super_class = SMClientListener;
  [(RTXPCListener *)&v2 _setup];
}

- (id)handleClientConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [SMDaemonClient alloc];
  queue = [(RTXPCListener *)self queue];
  v7 = [(SMDaemonClient *)v5 initWithQueue:queue authorizationManager:self->_authorizationManager defaultsManager:self->_defaultsManager distanceCalculator:self->_distanceCalculator platform:self->_platform initiatorService:self->_initiatorService messagingService:self->_messagingService receiverService:self->_receiverService sessionStore:self->_sessionStore suggestionsManager:self->_suggestionsManager suggestionsHelper:self->_suggestionsHelper suggestionsStore:self->_suggestionsStore eligibilityChecker:self->_eligibilityChecker deviceConfigurationChecker:self->_deviceConfigurationChecker appDeletionManager:self->_appDeletionManager];

  [(SMClientListener *)self _setupConnection:connectionCopy forClient:v7];

  return v7;
}

- (void)_setupConnection:(id)connection forClient:(id)client
{
  connectionCopy = connection;
  clientCopy = client;
  [connectionCopy suspend];
  queue = [(RTXPCListener *)self queue];
  [connectionCopy _setQueue:queue];

  [connectionCopy setRemoteObjectInterface:self->_frameworkInterface];
  [connectionCopy setExportedInterface:self->_daemonInterface];
  [connectionCopy setExportedObject:clientCopy];
  objc_initWeak(&location, clientCopy);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__SMClientListener__setupConnection_forClient___block_invoke;
  v17[3] = &unk_2788C5908;
  objc_copyWeak(&v18, &location);
  [connectionCopy setInterruptionHandler:v17];
  objc_initWeak(&from, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__SMClientListener__setupConnection_forClient___block_invoke_286;
  v13[3] = &unk_2788D0D30;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  [connectionCopy setInvalidationHandler:v13];
  [connectionCopy resume];
  v9 = [RTXPC executablePathOfConnection:connectionCopy];
  [clientCopy setExecutablePath:v9];

  executablePath = [clientCopy executablePath];
  lastPathComponent = [executablePath lastPathComponent];
  [clientCopy setExecutableName:lastPathComponent];

  [clientCopy setProcessIdentifier:{objc_msgSend(connectionCopy, "processIdentifier")}];
  [clientCopy setXpcConnection:connectionCopy];
  xpcConnection = [clientCopy xpcConnection];
  [xpcConnection setDelegate:clientCopy];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __47__SMClientListener__setupConnection_forClient___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [WeakRetained executableName];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "client, %@, handle xpc interruption", &v4, 0xCu);
    }
  }
}

void __47__SMClientListener__setupConnection_forClient___block_invoke_286(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [WeakRetained executableName];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "client, %@, handle xpc invalidation", &v6, 0xCu);
    }
  }

  [WeakRetained setXpcConnection:0];
  [WeakRetained setProcessIdentifier:0];
  [WeakRetained setExecutablePath:0];
  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 handleDisconnectionForDaemonClient:WeakRetained];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v26 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (connectionCopy)
  {
    v23 = 0;
    v8 = [RTXPC clientCodeSignatureIsValid:connectionCopy error:&v23];
    v9 = v23;
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          processIdentifier = [connectionCopy processIdentifier];
          machServiceName = [(RTXPCListener *)self machServiceName];
          *buf = 67109378;
          *v25 = processIdentifier;
          *&v25[4] = 2112;
          *&v25[6] = machServiceName;
          _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "listener received incoming connection from pid %d, for service, %@", buf, 0x12u);
        }
      }

      v11 = [(SMClientListener *)self handleClientConnection:connectionCopy];
      if (v11)
      {
        v12 = v11;
        connectedClients = [(RTXPCListener *)self connectedClients];
        [connectedClients addObject:v12];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            machServiceName2 = [(RTXPCListener *)self machServiceName];
            *buf = 138412546;
            *v25 = v12;
            *&v25[8] = 2112;
            *&v25[10] = machServiceName2;
            _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "client connected, %@, to service, %@", buf, 0x16u);
          }
        }

        [(RTXPCListener *)self logClients];
        v16 = 1;
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          processIdentifier2 = [connectionCopy processIdentifier];
          machServiceName3 = [(RTXPCListener *)self machServiceName];
          *buf = 67109378;
          *v25 = processIdentifier2;
          *&v25[4] = 2112;
          *&v25[6] = machServiceName3;
          _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "failed to create client for connection from pid, %d, for service, %@", buf, 0x12u);
        }
      }

      v12 = 0;
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v25 = v9;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "incoming xpc connection failed code-signing check, error, %@.", buf, 0xCu);
      }
    }

    v16 = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "incoming xpc connection is nil", buf, 2u);
    }

    v16 = 0;
    goto LABEL_27;
  }

  v16 = 0;
LABEL_28:

  return v16;
}

- (void)handleDisconnectionForDaemonClient:(id)client
{
  v9 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = clientCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "client disconnected, %@", &v7, 0xCu);
    }
  }

  connectedClients = [(RTXPCListener *)self connectedClients];
  [connectedClients removeObject:clientCopy];

  [clientCopy shutdown];
  [(RTXPCListener *)self logClients];
}

@end