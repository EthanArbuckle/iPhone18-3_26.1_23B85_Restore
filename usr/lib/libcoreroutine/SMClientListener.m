@interface SMClientListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SMClientListener)initWithDefaultsManager:(id)a3 authorizationManager:(id)a4 distanceCalculator:(id)a5 platform:(id)a6 initiatorService:(id)a7 messagingService:(id)a8 receiverService:(id)a9 sessionStore:(id)a10 suggestionsManager:(id)a11 suggestionsHelper:(id)a12 suggestionsStore:(id)a13 eligibilityChecker:(id)a14 deviceConfigurationChecker:(id)a15 appDeletionManager:(id)a16;
- (id)handleClientConnection:(id)a3;
- (void)_setup;
- (void)_setupConnection:(id)a3 forClient:(id)a4;
- (void)handleDisconnectionForDaemonClient:(id)a3;
@end

@implementation SMClientListener

- (SMClientListener)initWithDefaultsManager:(id)a3 authorizationManager:(id)a4 distanceCalculator:(id)a5 platform:(id)a6 initiatorService:(id)a7 messagingService:(id)a8 receiverService:(id)a9 sessionStore:(id)a10 suggestionsManager:(id)a11 suggestionsHelper:(id)a12 suggestionsStore:(id)a13 eligibilityChecker:(id)a14 deviceConfigurationChecker:(id)a15 appDeletionManager:(id)a16
{
  v130 = a3;
  v112 = a4;
  v21 = a4;
  v113 = a5;
  v120 = a5;
  v129 = a6;
  v114 = a7;
  v128 = a7;
  v127 = a8;
  v126 = a9;
  v118 = a10;
  v125 = a11;
  v124 = a12;
  v123 = a13;
  v122 = a14;
  v121 = a15;
  v22 = a16;
  v117 = v22;
  if (!v130)
  {
    v23 = v21;
    v107 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v107, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v106 = 0;
    v24 = v120;
    goto LABEL_46;
  }

  v23 = v21;
  if (!v21)
  {
    v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v24 = v120;
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

  v24 = v120;
  if (!v120)
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

  if (!v129)
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

  if (!v128)
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

  if (!v127)
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

  if (!v126)
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

  if (!v125)
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

  if (!v124)
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

  if (!v123)
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

  if (!v122)
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

  if (!v121)
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

  if (!v22)
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
    v105 = self;
    goto LABEL_47;
  }

  v25 = *MEMORY[0x277D4AD28];
  v131.receiver = self;
  v131.super_class = SMClientListener;
  v26 = [(RTXPCListener *)&v131 initWithMachServiceName:v25];
  if (v26)
  {
    v116 = v26;
    objc_storeStrong(&v26->_defaultsManager, a3);
    objc_storeStrong(&v116->_authorizationManager, v112);
    objc_storeStrong(&v116->_distanceCalculator, v113);
    objc_storeStrong(&v116->_platform, a6);
    objc_storeStrong(&v116->_initiatorService, v114);
    objc_storeStrong(&v116->_sessionStore, a10);
    objc_storeStrong(&v116->_suggestionsManager, a11);
    objc_storeStrong(&v116->_suggestionsHelper, a12);
    objc_storeStrong(&v116->_suggestionsStore, a13);
    objc_storeStrong(&v116->_messagingService, a8);
    objc_storeStrong(&v116->_receiverService, a9);
    objc_storeStrong(&v116->_eligibilityChecker, a14);
    objc_storeStrong(&v116->_deviceConfigurationChecker, a15);
    objc_storeStrong(&v116->_appDeletionManager, a16);
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
    v24 = v120;
    v102 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v101 setClasses:v102 forSelector:sel_kickedFromIMessageGroupWith_ argumentIndex:0 ofReply:0];

    v103 = v116->_daemonInterface;
    v23 = v119;
    v104 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(NSXPCInterface *)v103 setClasses:v104 forSelector:sel_fetchQuickReplySuggestionURLWithCompletion_ argumentIndex:0 ofReply:1];

    [(RTXPCListener *)v116 setup];
    v26 = v116;
  }

  v105 = v26;
  v106 = v105;
LABEL_47:

  return v106;
}

- (void)_setup
{
  v2.receiver = self;
  v2.super_class = SMClientListener;
  [(RTXPCListener *)&v2 _setup];
}

- (id)handleClientConnection:(id)a3
{
  v4 = a3;
  v5 = [SMDaemonClient alloc];
  v6 = [(RTXPCListener *)self queue];
  v7 = [(SMDaemonClient *)v5 initWithQueue:v6 authorizationManager:self->_authorizationManager defaultsManager:self->_defaultsManager distanceCalculator:self->_distanceCalculator platform:self->_platform initiatorService:self->_initiatorService messagingService:self->_messagingService receiverService:self->_receiverService sessionStore:self->_sessionStore suggestionsManager:self->_suggestionsManager suggestionsHelper:self->_suggestionsHelper suggestionsStore:self->_suggestionsStore eligibilityChecker:self->_eligibilityChecker deviceConfigurationChecker:self->_deviceConfigurationChecker appDeletionManager:self->_appDeletionManager];

  [(SMClientListener *)self _setupConnection:v4 forClient:v7];

  return v7;
}

- (void)_setupConnection:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 suspend];
  v8 = [(RTXPCListener *)self queue];
  [v6 _setQueue:v8];

  [v6 setRemoteObjectInterface:self->_frameworkInterface];
  [v6 setExportedInterface:self->_daemonInterface];
  [v6 setExportedObject:v7];
  objc_initWeak(&location, v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__SMClientListener__setupConnection_forClient___block_invoke;
  v17[3] = &unk_2788C5908;
  objc_copyWeak(&v18, &location);
  [v6 setInterruptionHandler:v17];
  objc_initWeak(&from, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__SMClientListener__setupConnection_forClient___block_invoke_286;
  v13[3] = &unk_2788D0D30;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  [v6 setInvalidationHandler:v13];
  [v6 resume];
  v9 = [RTXPC executablePathOfConnection:v6];
  [v7 setExecutablePath:v9];

  v10 = [v7 executablePath];
  v11 = [v10 lastPathComponent];
  [v7 setExecutableName:v11];

  [v7 setProcessIdentifier:{objc_msgSend(v6, "processIdentifier")}];
  [v7 setXpcConnection:v6];
  v12 = [v7 xpcConnection];
  [v12 setDelegate:v7];

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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v23 = 0;
    v8 = [RTXPC clientCodeSignatureIsValid:v7 error:&v23];
    v9 = v23;
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v7 processIdentifier];
          v20 = [(RTXPCListener *)self machServiceName];
          *buf = 67109378;
          *v25 = v19;
          *&v25[4] = 2112;
          *&v25[6] = v20;
          _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "listener received incoming connection from pid %d, for service, %@", buf, 0x12u);
        }
      }

      v11 = [(SMClientListener *)self handleClientConnection:v7];
      if (v11)
      {
        v12 = v11;
        v13 = [(RTXPCListener *)self connectedClients];
        [v13 addObject:v12];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [(RTXPCListener *)self machServiceName];
            *buf = 138412546;
            *v25 = v12;
            *&v25[8] = 2112;
            *&v25[10] = v15;
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
          v21 = [v7 processIdentifier];
          v22 = [(RTXPCListener *)self machServiceName];
          *buf = 67109378;
          *v25 = v21;
          *&v25[4] = 2112;
          *&v25[6] = v22;
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

- (void)handleDisconnectionForDaemonClient:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "client disconnected, %@", &v7, 0xCu);
    }
  }

  v6 = [(RTXPCListener *)self connectedClients];
  [v6 removeObject:v4];

  [v4 shutdown];
  [(RTXPCListener *)self logClients];
}

@end