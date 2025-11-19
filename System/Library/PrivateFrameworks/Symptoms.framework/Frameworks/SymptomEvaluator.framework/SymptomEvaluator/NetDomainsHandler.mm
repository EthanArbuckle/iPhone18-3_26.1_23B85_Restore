@interface NetDomainsHandler
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (BOOL)_convertNSData:(id)a3 toAuditToken:(id *)a4;
- (BOOL)_hasSomeUserEnabled;
- (BOOL)bundleNameImplies1stOr2ndParty:(id)a3;
- (BOOL)domainNameImpliesKnownAppleProperty:(id)a3;
- (BOOL)noteSymptom:(id)a3;
- (BOOL)triggerAutoBugCaptureCaseForType:(id)a3 subType:(id)a4 privateSubtypeContext:(id)a5 detectedProcess:(id)a6 events:(id)a7 thresholdValuesString:(id)a8;
- (NSString)description;
- (NetDomainsHandler)init;
- (id)_bundleNameFromAuditTokenData:(id)a3 auditToken:(id *)a4 orMachOUUID:(id)a5;
- (id)_internalStateDictionary;
- (id)getNetworkDomainsOptions:(id)a3 service:(id)a4 connection:(id)a5;
- (id)initTestInstanceWithDelegate:(id)a3;
- (id)retrievePreferencesDictionaryWithKey:(__CFString *)a3;
- (id)setNetworkDomainsOptions:(id)a3 service:(id)a4 connection:(id)a5;
- (int)read:(id)a3 returnedValues:(id)a4;
- (void)_administrativeEnable;
- (void)_callSwitchStateDelegateForName:(id)a3;
- (void)_completeInitialization;
- (void)_lastEnabledUserDisabling;
- (void)_registerForUserSwitchStakeholder;
- (void)_resetSymptomCombinationBreakdown;
- (void)_sendInternalSymptomDNSResolvingEnable:(BOOL)a3;
- (void)_submitAppTrackingEnabled;
- (void)_submitSymptomCombinationBreakdown;
- (void)_submitSymptomDomainStatistics;
- (void)_unregisterForUserSwitchStakeholder:(id)a3;
- (void)checkForAutoBugCaptureWorthyCase:(id)a3 domainName:(id)a4 initiatedType:(unsigned int)a5;
- (void)dealloc;
- (void)logSwitchStatesFromDictionary:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performPeriodicTasks;
- (void)privacyReset;
- (void)savePreferencesDictionary:(id)a3 withKey:(__CFString *)a4;
- (void)setNetworkDomainDelegate:(id)a3;
- (void)willSwitchUser;
@end

@implementation NetDomainsHandler

- (NetDomainsHandler)init
{
  v18.receiver = self;
  v18.super_class = NetDomainsHandler;
  v2 = [(NetDomainsHandler *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.domaintracking.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v6;

    v2->_adminState = 2;
    v8 = +[SystemProperties sharedInstance];
    [v8 internalBuild];
    v2->_defaultSwitchState = 0;

    v2->_defaultReconciliationSwitchState = 0;
    v9 = [objc_alloc(MEMORY[0x277D6B418]) initWithPolicy:0 timeToLive:10 size:10800.0];
    bundleIdentifierCache = v2->_bundleIdentifierCache;
    v2->_bundleIdentifierCache = v9;

    effectiveUserId = 1;
    [(NetDomainsHandler *)v2 _resetSymptomCombinationBreakdown];
    [(NetDomainsHandler *)v2 _resetSymptomDomainStatistics];
    [(NetDomainsHandler *)v2 _administrativeEnable];
    v11 = MEMORY[0x277D6B500];
    v12 = +[SystemSettingsRelay defaultRelay];
    v13 = [v12 symptomEvaluatorDatabaseContainerPath];
    v14 = [(NetDomainsHandler *)v2 queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __25__NetDomainsHandler_init__block_invoke;
    v16[3] = &unk_27898A988;
    v17 = v2;
    [v11 retrieveWorkspaceWithName:@"netusage" atPath:v13 queue:v14 resultCallback:v16];
  }

  return v2;
}

uint64_t __25__NetDomainsHandler_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = *(a1 + 32);

  return [v6 _completeInitialization];
}

- (id)initTestInstanceWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NetDomainsHandler;
  v5 = [(NetDomainsHandler *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_queue, MEMORY[0x277D85CD0]);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v6->_notificationCenter;
    v6->_notificationCenter = v7;

    v6->_adminState = 1;
    *&v6->_defaultSwitchState = 257;
    *&v6->_defaultReconciliationSwitchState = 0;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    userIDsReconciliationSwitchStates = v6->_userIDsReconciliationSwitchStates;
    v6->_userIDsReconciliationSwitchStates = v9;

    objc_storeWeak(&v6->_netDomainDelegate, v4);
  }

  return v6;
}

- (void)dealloc
{
  if (self->_observingSystemSettingsRelay)
  {
    v3 = +[SystemSettingsRelay defaultRelay];
    [v3 removeObserver:self forKeyPath:@"autoBugCaptureEnabled"];
    self->_observingSystemSettingsRelay = 0;
  }

  [(NetDomainsHandler *)self _unregisterForUserSwitchStakeholder:@"dealloc"];
  v4.receiver = self;
  v4.super_class = NetDomainsHandler;
  [(NetDomainsHandler *)&v4 dealloc];
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%p", self];

  return v2;
}

- (void)_completeInitialization
{
  v70 = *MEMORY[0x277D85DE8];
  v52 = +[SystemSettingsRelay defaultRelay];
  v2 = self;
  [v52 addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:5 context:0];
  self->_observingSystemSettingsRelay = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, privacyReset, @"com.apple.Preferences.ResetPrivacyWarningsNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  shared_prefs_store = get_shared_prefs_store();
  if (shared_prefs_store)
  {
    v5 = shared_prefs_store;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __44__NetDomainsHandler__completeInitialization__block_invoke;
    v64[3] = &unk_27898A0A0;
    v64[4] = self;
    prefs_add_client(shared_prefs_store, "domaintracking_default_switch_state", v64);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __44__NetDomainsHandler__completeInitialization__block_invoke_70;
    v63[3] = &unk_27898A0A0;
    v63[4] = self;
    prefs_add_client(v5, "domaintracking_default_reconciliation_switch_state", v63);
    v2 = self;
  }

  workspace = v2->_workspace;
  if (workspace)
  {
    v7 = [ImpoExpoService impoExpoServiceInWorkspace:workspace andQueue:v2->_queue];
    ieService = self->_ieService;
    self->_ieService = v7;

    objc_initWeak(&location, self);
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v61[3] = 0;
    v9 = [(NetDomainsHandler *)self queue];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __44__NetDomainsHandler__completeInitialization__block_invoke_76;
    v59[3] = &unk_27898A9B0;
    objc_copyWeak(&v60, &location);
    v59[4] = v61;
    [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"NetDomainsHandler.Daily" queue:v9 activity:v59];

    v10 = +[SystemProperties sharedInstance];
    LODWORD(v9) = [v10 internalBuild];

    if (v9)
    {
      v11 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Removing locally cached SWC data, if any", buf, 2u);
      }

      v12 = self->_ieService;
      v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"LOCALLYCACHEDSWCD", 0}];
      [(ImpoExpoService *)v12 deleteItemsWithNames:v13];
    }

    v14 = [(NetDomainsHandler *)self retrievePreferencesDictionaryWithKey:@"appTracking"];
    userIDsSwitchStates = self->_userIDsSwitchStates;
    self->_userIDsSwitchStates = v14;

    if (self->_userIDsSwitchStates)
    {
      v16 = [(NetDomainsHandler *)self _hasSomeUserEnabled];
      v17 = self;
      self->_hasSomeUserEnabled = v16;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = self->_userIDsSwitchStates;
      self->_userIDsSwitchStates = v18;

      v20 = self->_ieService;
      v58 = 0;
      v51 = [(ImpoExpoService *)v20 exportAndUnarchiveItemUnderName:@"USERIDSAPPTRACKINGSTATES" lastUpdated:&v58 verificationBlock:&__block_literal_global_5];
      v50 = v58;
      v21 = [MEMORY[0x277D77BF8] sharedManager];
      v22 = [v21 isSharedIPad];

      if (v22)
      {
        v23 = self;
        self->_hasSomeUserEnabled = 0;
      }

      else if (v51)
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v24 = v51;
        v25 = [v24 countByEnumeratingWithState:&v54 objects:v69 count:16];
        if (v25)
        {
          v26 = *v55;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v55 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v54 + 1) + 8 * i);
              v29 = [v24 objectForKeyedSubscript:v28];
              v30 = self->_userIDsSwitchStates;
              v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", objc_msgSend(v28, "intValue")];
              [(NSMutableDictionary *)v30 setObject:v29 forKeyedSubscript:v31];

              v32 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v66 = @"appTracking";
                v67 = 2112;
                v68 = v28;
                _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "Will migrate %@ switch state for user %@ from DB to preferences", buf, 0x16u);
              }
            }

            v25 = [v24 countByEnumeratingWithState:&v54 objects:v69 count:16];
          }

          while (v25);
        }

        v23 = self;
        self->_hasSomeUserEnabled = [(NetDomainsHandler *)self _hasSomeUserEnabled];
      }

      else
      {
        v33 = objc_alloc(MEMORY[0x277CBEB38]);
        v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_defaultSwitchState];
        v35 = [MEMORY[0x277CBEAA8] date];
        v36 = [v33 initWithObjectsAndKeys:{v34, @"domainTrackingSwitchStateValue", v35, @"domainTrackingSwitchStateSince", MEMORY[0x277CBEC28], @"domainTrackingUserDidFollowUp", 0}];
        v37 = self->_userIDsSwitchStates;
        v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", 501];
        [(NSMutableDictionary *)v37 setObject:v36 forKeyedSubscript:v38];

        v23 = self;
        self->_hasSomeUserEnabled = self->_defaultSwitchState;
        v39 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v66 = @"appTracking";
          v67 = 1024;
          LODWORD(v68) = 501;
          _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "Initializing %@ switch state for user %u", buf, 0x12u);
        }
      }

      [(NetDomainsHandler *)v23 savePreferencesDictionary:v23->_userIDsSwitchStates withKey:@"appTracking"];
      v40 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = @"appTracking";
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "Removing %@ switch states from DB, if any", buf, 0xCu);
      }

      v41 = self->_ieService;
      v42 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"USERIDSAPPTRACKINGSTATES", 0}];
      [(ImpoExpoService *)v41 deleteItemsWithNames:v42];

      v17 = self;
    }

    [(NetDomainsHandler *)v17 logSwitchStatesFromDictionary:v17->_userIDsSwitchStates];
    v43 = [MEMORY[0x277D77BF8] sharedManager];
    v44 = [v43 isSharedIPad];

    if (v44)
    {
      self->_hasCurrentUserReconciliationEnabled = 0;
    }

    else
    {
      [(NetDomainsHandler *)self updateReconciliationSwitchStatesForUser:501];
    }

    self->_completedNetworkDomainInitialization = 1;
    v45 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "Network Domain initialization complete", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_netDomainDelegate);
    v47 = WeakRetained == 0;

    if (!v47)
    {
      v48 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "Calling delegate (FlowAnalyticsEngine) update methods for userAppTrackingObserver and userEndpointTrackingObserver", buf, 2u);
      }

      [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
      [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userEndpointTracking"];
    }

    [(NetDomainsHandler *)self _sendInternalSymptomDNSResolvingEnable:self->_hasSomeUserEnabled];
    if ([(NetDomainsHandler *)self _currentSwitchStateForUser:501 since:0])
    {
      [(NetDomainsHandler *)self _submitAppTrackingEnabled];
    }

    objc_destroyWeak(&v60);
    _Block_object_dispose(v61, 8);
    objc_destroyWeak(&location);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __44__NetDomainsHandler__completeInitialization__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
  {
    *(*(a1 + 32) + 64) = xpc_BOOL_get_value(v5);
    v7 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 64))
      {
        v10 = "ON";
      }

      else
      {
        v10 = "OFF";
      }

      v12 = 136315138;
      v13 = v10;
      v9 = "Setting default switch state to %s";
      goto LABEL_13;
    }
  }

  else
  {
    v6 = +[SystemProperties sharedInstance];
    [v6 internalBuild];
    *(*(a1 + 32) + 64) = 0;

    v7 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 64))
      {
        v8 = "ON";
      }

      else
      {
        v8 = "OFF";
      }

      v12 = 136315138;
      v13 = v8;
      v9 = "Got a nil default switch state prefs. Setting default state to %s";
LABEL_13:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NetDomainsHandler__completeInitialization__block_invoke_70(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
  {
    *(*(a1 + 32) + 80) = xpc_BOOL_get_value(v5);
    v6 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 80))
      {
        v9 = "ON";
      }

      else
      {
        v9 = "OFF";
      }

      v11 = 136315138;
      v12 = v9;
      v8 = "Setting default reconciliation switch state to %s";
      goto LABEL_13;
    }
  }

  else
  {
    *(*(a1 + 32) + 80) = 0;
    v6 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 80))
      {
        v7 = "ON";
      }

      else
      {
        v7 = "OFF";
      }

      v11 = 136315138;
      v12 = v7;
      v8 = "Got a nil default reconciliation switch state prefs. Setting default reconciliation state to %s";
LABEL_13:
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __44__NetDomainsHandler__completeInitialization__block_invoke_76(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v3 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "About to start periodic task", v4, 2u);
    }

    [WeakRetained performPeriodicTasks];
  }
}

uint64_t __44__NetDomainsHandler__completeInitialization__block_invoke_88(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      v16 = @"domainTrackingUserDidFollowUp";
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v3 objectForKeyedSubscript:{v8, v16}];
          if (!v8)
          {
            goto LABEL_22;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_22;
          }

          if (!v9)
          {
            goto LABEL_22;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_22;
          }

          v9 = v9;
          v10 = [v9 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"];
          if (!v10)
          {
            goto LABEL_21;
          }

          v11 = [v9 objectForKeyedSubscript:@"domainTrackingSwitchStateSince"];
          if (!v11)
          {

LABEL_21:
LABEL_22:

LABEL_23:
            v13 = 0;
            goto LABEL_24;
          }

          v12 = [v9 objectForKeyedSubscript:v16];

          if (!v12)
          {
            goto LABEL_23;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v13 = 1;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 1;
    }

LABEL_24:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)savePreferencesDictionary:(id)a3 withKey:(__CFString *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    CFPreferencesSetValue(a4, v7, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    v8 = CFPreferencesAppSynchronize(@"com.apple.symptomsd");
    v9 = domainTrackingLogHandle;
    if (v8)
    {
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = a4;
        v10 = "Set %@ switch states in preferences";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&dword_23255B000, v11, v12, v10, &v14, 0xCu);
      }
    }

    else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = a4;
      v10 = "Failed to set %@ switch states in preferences";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

    CFRelease(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)retrievePreferencesDictionaryWithKey:(__CFString *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = CFPreferencesCopyValue(a3, @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFDictionaryGetTypeID())
    {
      DeepCopy = CFPropertyListCreateDeepCopy(0, v5, 2uLL);
      v8 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = a3;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Retrieved %@ switch states from preferences", &v14, 0xCu);
      }
    }

    else
    {
      v10 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v14 = 138412546;
        v15 = a3;
        v16 = 2048;
        v17 = CFGetTypeID(v5);
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Stored preferences for %@ switch states is of type %lu", &v14, 0x16u);
      }

      DeepCopy = 0;
    }
  }

  else
  {
    v9 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = a3;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Preferences don't exist for %@ switch states yet", &v14, 0xCu);
    }

    DeepCopy = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return DeepCopy;
}

- (void)_callSwitchStateDelegateForName:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = 501;
  if (!effectiveUserId)
  {
    v6 = 0;
  }

  v7 = [v5 initWithFormat:@"%d", v6];
  WeakRetained = objc_loadWeakRetained(&self->_netDomainDelegate);
  if ([v4 isEqualToString:@"userAppTracking"])
  {
    v9 = [(NSMutableDictionary *)self->_userIDsSwitchStates objectForKeyedSubscript:v7];
    v10 = [v9 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"];
    v11 = [v10 BOOLValue];

    if (WeakRetained)
    {
      v12 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "Calling %@ switch state delegate", buf, 0xCu);
      }

      v24[0] = @"userAppTrackingUserID";
      if (effectiveUserId)
      {
        v13 = 501;
      }

      else
      {
        v13 = 0;
      }

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
      v24[1] = @"userAppTrackingState";
      v25[0] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v11];
      v25[1] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      [WeakRetained networkDomainUserAppTrackingChanged:v16];
LABEL_19:
    }
  }

  else
  {
    if (![v4 isEqualToString:@"userEndpointTracking"])
    {
      v9 = 0;
      goto LABEL_21;
    }

    v9 = [(NSMutableDictionary *)self->_userIDsReconciliationSwitchStates objectForKeyedSubscript:v7];
    v17 = [v9 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
    v18 = [v17 BOOLValue];

    if (WeakRetained)
    {
      v19 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Calling %@ switch state delegate", buf, 0xCu);
      }

      v22[0] = @"userEndpointTrackingUserID";
      if (effectiveUserId)
      {
        v20 = 501;
      }

      else
      {
        v20 = 0;
      }

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v20];
      v22[1] = @"userEndpointTrackingState";
      v23[0] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v18];
      v23[1] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [WeakRetained networkDomainUserEndpointTrackingChanged:v16];
      goto LABEL_19;
    }
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __61__NetDomainsHandler_updateReconciliationSwitchStatesForUser___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [v3 objectForKeyedSubscript:{v8, v15}];
          if (!v8)
          {
            goto LABEL_20;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_20;
          }

          if (!v9)
          {
            goto LABEL_20;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_20;
          }

          v9 = v9;
          v10 = [v9 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
          if (!v10)
          {

LABEL_20:
LABEL_21:
            v12 = 0;
            goto LABEL_22;
          }

          v11 = [v9 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateSince"];

          if (!v11)
          {
            goto LABEL_21;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v12 = 1;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_22:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)logSwitchStatesFromDictionary:(id)a3
{
  if (a3)
  {
    [a3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_104];
  }
}

void __51__NetDomainsHandler_logSwitchStatesFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Switch state for user %@:", &v8, 0xCu);
  }

  [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_108];

  v7 = *MEMORY[0x277D85DE8];
}

void __51__NetDomainsHandler_logSwitchStatesFromDictionary___block_invoke_105(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v5;
    if (isKindOfClass)
    {
      [v5 timeIntervalSince1970];
      v8 = formattedDateStringForTimeInterval(v9);
    }

    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "\t%@: %@", &v11, 0x16u);
    if (isKindOfClass)
    {
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a5;
  if ([a3 isEqualToString:@"autoBugCaptureEnabled"])
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v10 = [(NetDomainsHandler *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__NetDomainsHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v12[3] = &unk_27898A7D0;
    v12[4] = self;
    v13 = v9;
    v11 = v9;
    dispatch_async(v10, v12);
  }
}

void __68__NetDomainsHandler_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 1)
  {
    if ([*(a1 + 40) BOOLValue])
    {
      v3 = +[SystemProperties sharedInstance];
      v4 = [v3 internalBuild];

      v2 = *(a1 + 32);
      if (v4)
      {
        *(v2 + 48) = 1;
        return;
      }
    }

    else
    {
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 48) = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;
}

- (BOOL)bundleNameImplies1stOr2ndParty:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (bundleNameImplies1stOr2ndParty__onceToken != -1)
  {
    [NetDomainsHandler bundleNameImplies1stOr2ndParty:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_3:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundlePrefixes;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 hasPrefix:{*(*(&v13 + 1) + 8 * i), v13}])
        {

          v10 = 1;
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundleIDs containsObject:v4];
LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __52__NetDomainsHandler_bundleNameImplies1stOr2ndParty___block_invoke()
{
  v0 = bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundlePrefixes;
  bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundlePrefixes = &unk_2847EEAC0;

  v1 = bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundleIDs;
  bundleNameImplies1stOr2ndParty__k1st2ndAppleOwnedBundleIDs = &unk_2847EEAD8;
}

- (BOOL)domainNameImpliesKnownAppleProperty:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (domainNameImpliesKnownAppleProperty__onceToken != -1)
  {
    [NetDomainsHandler domainNameImpliesKnownAppleProperty:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = domainNameImpliesKnownAppleProperty__kAppleOwnedTrackerDomains;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__NetDomainsHandler_domainNameImpliesKnownAppleProperty___block_invoke_2;
  v8[3] = &unk_27898AA38;
  v9 = v4;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
LABEL_6:

  return v6 & 1;
}

void __57__NetDomainsHandler_domainNameImpliesKnownAppleProperty___block_invoke()
{
  v0 = domainNameImpliesKnownAppleProperty__kAppleOwnedTrackerDomains;
  domainNameImpliesKnownAppleProperty__kAppleOwnedTrackerDomains = &unk_2847EEAF0;
}

uint64_t __57__NetDomainsHandler_domainNameImpliesKnownAppleProperty___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasSuffix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_administrativeEnable
{
  if (self->_adminState == 2)
  {
    v7 = v2;
    v8 = v3;
    v5 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Enabling domain tracking", v6, 2u);
    }

    [(NetDomainsHandler *)self _registerForUserSwitchStakeholder];
    self->_adminState = 1;
  }
}

- (void)_registerForUserSwitchStakeholder
{
  v6 = [MEMORY[0x277D77BF8] sharedManager];
  if ([v6 isSharedIPad])
  {
    isUserSwitchStakeholder = self->_isUserSwitchStakeholder;

    if (!isUserSwitchStakeholder)
    {
      v4 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "UserManagement: Registering as a user switch stakeholder...", buf, 2u);
      }

      v5 = [MEMORY[0x277D77BF8] sharedManager];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke;
      v8[3] = &unk_27898AA60;
      v8[4] = self;
      [v5 registerUserSwitchStakeHolder:self completionHandler:v8];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke_154;
      block[3] = &unk_27898A0C8;
      block[4] = self;
      if (_registerForUserSwitchStakeholder_onceToken != -1)
      {
        dispatch_once(&_registerForUserSwitchStakeholder_onceToken, block);
      }
    }
  }

  else
  {
  }
}

void __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = domainTrackingLogHandle;
  if (v3)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "UserManagement: Failed to register as a user switch stakeholder - %@", &v6, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "UserManagement: Registered as a user switch stakeholder", &v6, 2u);
    }

    *(*(a1 + 32) + 160) = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke_154(uint64_t a1)
{
  signal(15, 1);
  v2 = [*(a1 + 32) queue];
  v3 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, v2);
  v4 = kNotificationDomainPrivacyReset_block_invoke_sigterm;
  kNotificationDomainPrivacyReset_block_invoke_sigterm = v3;

  if (kNotificationDomainPrivacyReset_block_invoke_sigterm)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke_2;
    handler[3] = &unk_27898A0C8;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(kNotificationDomainPrivacyReset_block_invoke_sigterm, handler);
    dispatch_resume(kNotificationDomainPrivacyReset_block_invoke_sigterm);
  }
}

uint64_t __54__NetDomainsHandler__registerForUserSwitchStakeholder__block_invoke_2(uint64_t a1)
{
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "UserManagement: SIGTERM", v4, 2u);
  }

  return [*(a1 + 32) _unregisterForUserSwitchStakeholder:@"daemon termination"];
}

- (void)_unregisterForUserSwitchStakeholder:(id)a3
{
  v4 = a3;
  if (self->_isUserSwitchStakeholder)
  {
    v5 = [MEMORY[0x277D77BF8] sharedManager];
    [v5 unregisterStakeHolder:self status:0 reason:v4];

    self->_isUserSwitchStakeholder = 0;
    v6 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v7 = "UserManagement: Unregistered as a user switch stakeholder";
      v8 = &v13;
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v7, v8, 2u);
    }
  }

  else
  {
    v11 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      v7 = "UserManagement: Not registered as a user switch stakeholder";
      v8 = &v12;
      v9 = v11;
      v10 = OS_LOG_TYPE_INFO;
      goto LABEL_6;
    }
  }
}

- (BOOL)_hasSomeUserEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  userIDsSwitchStates = self->_userIDsSwitchStates;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NetDomainsHandler__hasSomeUserEnabled__block_invoke;
  v5[3] = &unk_27898AA88;
  v5[4] = &v6;
  [(NSMutableDictionary *)userIDsSwitchStates enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __40__NetDomainsHandler__hasSomeUserEnabled__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a3 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "User %@ has feature enabled", &v12, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_lastEnabledUserDisabling
{
  v3 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Performing clean up after no user has the feature enabled", v4, 2u);
  }

  [(NetDomainsHandler *)self _resetSymptomCombinationBreakdown];
  [(NetDomainsHandler *)self _resetSymptomDomainStatistics];
  [(NetDomainsHandler *)self _sendInternalSymptomDNSResolvingEnable:0];
}

- (void)_sendInternalSymptomDNSResolvingEnable:(BOOL)a3
{
  if (a3)
  {
    v3 = 405522;
  }

  else
  {
    v3 = 405523;
  }

  internal_symptom_new(v3);

  internal_symptom_send();
}

- (id)_internalStateDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_adminState == 1];
  [v3 setObject:v4 forKeyedSubscript:@"adminEnabled"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_defaultSwitchState];
  [v3 setObject:v5 forKeyedSubscript:@"defaultSwitchState"];

  userIDsSwitchStates = self->_userIDsSwitchStates;
  if (userIDsSwitchStates)
  {
    [v3 setObject:userIDsSwitchStates forKeyedSubscript:@"switchStatesForUserIDs"];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [v3 setObject:v7 forKeyedSubscript:@"switchStatesForUserIDs"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasSomeUserEnabled];
  [v3 setObject:v8 forKeyedSubscript:@"atLeastOneUserEnabled"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_defaultReconciliationSwitchState];
  [v3 setObject:v9 forKeyedSubscript:@"defaultReconciliationSwitchState"];

  userIDsReconciliationSwitchStates = self->_userIDsReconciliationSwitchStates;
  if (userIDsReconciliationSwitchStates)
  {
    [v3 setObject:userIDsReconciliationSwitchStates forKeyedSubscript:@"reconciliationSwitchStatesForUserIDs"];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [v3 setObject:v11 forKeyedSubscript:@"reconciliationSwitchStatesForUserIDs"];
  }

  return v3;
}

- (id)setNetworkDomainsOptions:(id)a3 service:(id)a4 connection:(id)a5
{
  v63[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [a5 effectiveUserIdentifier];
  v9 = [v7 objectForKeyedSubscript:@"domainTrackingSwitch"];

  if (v9)
  {
    v10 = [v7 objectForKeyedSubscript:@"domainTrackingSwitch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(NetDomainsHandler *)self _currentSwitchStateForUser:v8 since:0];
      -[NetDomainsHandler setSwitchState:forUser:](self, "setSwitchState:forUser:", [v10 BOOLValue], v8);
      [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
      v62 = @"domainTrackingSwitch";
      v12 = v11 && self->_adminState == 1;
      v23 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      v63[0] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];

      goto LABEL_46;
    }

    v18 = domainTrackingLogHandle;
    if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    goto LABEL_15;
  }

  v13 = [v7 objectForKeyedSubscript:@"domainTrackingSwitchState"];

  if (v13)
  {
    v10 = [v7 objectForKeyedSubscript:@"domainTrackingSwitchState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v10 objectForKeyedSubscript:@"domainTrackingSwitchStateValue"];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = 0;
          v15 = [(NetDomainsHandler *)self _currentSwitchStateForUser:v8 since:&v49];
          v46 = v49;
          if (!v46)
          {
            v46 = [MEMORY[0x277CBEAA8] date];
            v16 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Received nil date from _currentSwitchStateForUser, setting to current date", buf, 2u);
            }
          }

          -[NetDomainsHandler setSwitchState:forUser:](self, "setSwitchState:forUser:", [v14 BOOLValue], v8);
          [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
          v56 = @"domainTrackingSwitchState";
          v54[0] = @"domainTrackingSwitchStateValue";
          v17 = v15 && self->_adminState == 1;
          v38 = [MEMORY[0x277CCABB0] numberWithInt:v17];
          v54[1] = @"domainTrackingSwitchStateSince";
          v55[0] = v38;
          v39 = v46;
          v55[1] = v46;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
          v57 = v40;
          v41 = MEMORY[0x277CBEAC0];
          v42 = &v57;
          v43 = &v56;
LABEL_44:
          v24 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:1];

          goto LABEL_45;
        }
      }

      v29 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138412546;
        v59 = v32;
        v60 = 1024;
        v61 = v8;
        v33 = "switchStateValue is %@ for euid %u";
LABEL_38:
        _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, v33, buf, 0x12u);

        goto LABEL_39;
      }

      goto LABEL_39;
    }

    v18 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v19 = v18;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138412546;
      v59 = v21;
      v60 = 1024;
      v61 = v8;
      v22 = "domainTrackingOption is %@ for euid %u";
LABEL_34:
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
    }
  }

  else
  {
    v25 = [v7 objectForKeyedSubscript:@"domainTrackingXRefSwitchState"];

    if (!v25)
    {
      v24 = 0;
      goto LABEL_47;
    }

    v10 = [v7 objectForKeyedSubscript:@"domainTrackingXRefSwitchState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v10 objectForKeyedSubscript:@"domainTrackingXRefSwitchStateValue"];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = 0;
          v26 = [(NetDomainsHandler *)self _currentReconciliationSwitchStateForUser:v8 since:&v48];
          v47 = v48;
          if (!v47)
          {
            v47 = [MEMORY[0x277CBEAA8] date];
            v27 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Received nil date from _currentReconciliationSwitchStateForUser, setting to current date", buf, 2u);
            }
          }

          -[NetDomainsHandler setReconciliationSwitchState:forUser:](self, "setReconciliationSwitchState:forUser:", [v14 BOOLValue], v8);
          [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userEndpointTracking"];
          v52 = @"domainTrackingXRefSwitchState";
          v50[0] = @"domainTrackingXRefSwitchStateValue";
          v28 = v26 && self->_adminState == 1;
          v38 = [MEMORY[0x277CCABB0] numberWithInt:v28];
          v50[1] = @"domainTrackingXRefSwitchStateSince";
          v51[0] = v38;
          v39 = v47;
          v51[1] = v47;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
          v53 = v40;
          v41 = MEMORY[0x277CBEAC0];
          v42 = &v53;
          v43 = &v52;
          goto LABEL_44;
        }
      }

      v36 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v30 = v36;
        v37 = objc_opt_class();
        v32 = NSStringFromClass(v37);
        *buf = 138412546;
        v59 = v32;
        v60 = 1024;
        v61 = v8;
        v33 = "reconciliationSwitchStateValue is %@ for euid %u";
        goto LABEL_38;
      }

LABEL_39:
      v24 = 0;
LABEL_45:

      goto LABEL_46;
    }

    v34 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v34;
      v35 = objc_opt_class();
      v21 = NSStringFromClass(v35);
      *buf = 138412546;
      v59 = v21;
      v60 = 1024;
      v61 = v8;
      v22 = "domainTrackingReconciliationOption is %@ for euid %u";
      goto LABEL_34;
    }
  }

LABEL_35:
  v24 = 0;
LABEL_46:

LABEL_47:
  v44 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)getNetworkDomainsOptions:(id)a3 service:(id)a4 connection:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 effectiveUserIdentifier];
  v12 = [v8 objectForKeyedSubscript:@"domainTrackingSwitch"];

  if (v12)
  {
    v13 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v46 = v11;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Performing manage action for: legacy switch state query for euid %u", buf, 8u);
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([(NetDomainsHandler *)self _currentSwitchStateForUser:v11 since:0])
    {
      v14 = self->_adminState == 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    [v12 setObject:v15 forKeyedSubscript:@"domainTrackingSwitch"];
  }

  v16 = [v8 objectForKeyedSubscript:@"domainTrackingSwitchState"];

  if (v16)
  {
    v17 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v46 = v11;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Performing manage action for: switch state query for euid %u", buf, 8u);
    }

    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v40 = 0;
    v18 = [(NetDomainsHandler *)self _currentSwitchStateForUser:v11 since:&v40];
    v19 = v40;
    if (!v19)
    {
      v19 = [MEMORY[0x277CBEAA8] date];
      v20 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Received nil date from _currentSwitchStateForUser, setting to current date", buf, 2u);
      }
    }

    v43[0] = @"domainTrackingSwitchStateValue";
    v21 = v18 && self->_adminState == 1;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
    v43[1] = @"domainTrackingSwitchStateSince";
    v44[0] = v22;
    v44[1] = v19;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v12 setObject:v23 forKeyedSubscript:@"domainTrackingSwitchState"];
  }

  v24 = [v8 objectForKeyedSubscript:@"domainTrackingXRefSwitchState"];

  if (v24)
  {
    v25 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v46 = v11;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Performing manage action for: reconciliation switch state query for euid %u", buf, 8u);
    }

    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v39 = 0;
    v26 = [(NetDomainsHandler *)self _currentReconciliationSwitchStateForUser:v11 since:&v39];
    v27 = v39;
    if (!v27)
    {
      v27 = [MEMORY[0x277CBEAA8] date];
      v28 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "Received nil date from _currentReconciliationSwitchStateForUser, setting to current date", buf, 2u);
      }
    }

    v41[0] = @"domainTrackingXRefSwitchStateValue";
    v29 = v26 && self->_adminState == 1;
    v30 = [MEMORY[0x277CCABB0] numberWithInt:v29];
    v41[1] = @"domainTrackingXRefSwitchStateSince";
    v42[0] = v30;
    v42[1] = v27;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    [v12 setObject:v31 forKeyedSubscript:@"domainTrackingXRefSwitchState"];
  }

  v32 = [v8 objectForKeyedSubscript:@"domainTrackingStatus"];

  if (v32)
  {
    v33 = [v9 assertEntitlement:v10 entitlement:12 orWaiveOnIntent:0];
    v34 = domainTrackingLogHandle;
    v35 = os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      if (v35)
      {
        *buf = 67109120;
        v46 = v11;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "Performing manage action for: status query for euid %u", buf, 8u);
      }

      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v36 = v12;
      v12 = [(NetDomainsHandler *)self _internalStateDictionary];
      [v36 setObject:v12 forKeyedSubscript:@"domainTrackingStatus"];
    }

    else
    {
      if (v35)
      {
        *buf = 67109120;
        v46 = v11;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "Request to perform manage action (status query) without proper entitlement for euid %u", buf, 8u);
      }

      v36 = 0;
    }

    v12 = v36;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)performPeriodicTasks
{
  if (self->_hasSomeUserEnabled)
  {
    [(NetDomainsHandler *)self _submitSymptomCombinationBreakdown];
    [(NetDomainsHandler *)self _resetSymptomCombinationBreakdown];
    [(NetDomainsHandler *)self _submitSymptomDomainStatistics];

    [(NetDomainsHandler *)self _resetSymptomDomainStatistics];
  }

  else
  {
    v3 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "No user has feature enabled, no-op for periodic task", v4, 2u);
    }
  }
}

- (void)setNetworkDomainDelegate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_netDomainDelegate);

  if (WeakRetained == v4)
  {
    goto LABEL_18;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = domainTrackingLogHandle;
    if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v16) = 0;
    v12 = "Delegate does not respond to required method networkDomainUserAppTrackingChanged:";
    goto LABEL_15;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = domainTrackingLogHandle;
    if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v16) = 0;
    v12 = "Delegate does not respond to required method networkDomainUserEndpointTrackingChanged:";
LABEL_15:
    v13 = v11;
LABEL_16:
    v14 = OS_LOG_TYPE_ERROR;
LABEL_17:
    _os_log_impl(&dword_23255B000, v13, v14, v12, &v16, 2u);
    goto LABEL_18;
  }

  v6 = objc_opt_respondsToSelector();
  v7 = domainTrackingLogHandle;
  if ((v6 & 1) == 0)
  {
    if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v16) = 0;
    v12 = "Delegate does not respond to required method networkDomainResolution:";
    v13 = v7;
    goto LABEL_16;
  }

  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Setting network domain delegate to %@", &v16, 0xCu);
  }

  objc_storeWeak(&self->_netDomainDelegate, v4);
  completedNetworkDomainInitialization = self->_completedNetworkDomainInitialization;
  v9 = domainTrackingLogHandle;
  v10 = os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT);
  if (!completedNetworkDomainInitialization)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    LOWORD(v16) = 0;
    v12 = "Waiting for network domain initialization before calling delegates";
    v13 = v9;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_17;
  }

  if (v10)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Calling initial delegate update methods for userAppTracking and userEndpointTracking", &v16, 2u);
  }

  [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
  [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userEndpointTracking"];
LABEL_18:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_submitSymptomCombinationBreakdown
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"IncompleteSymptom";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[0]];
  v15[0] = v3;
  v14[1] = @"mDNSNoDelegate";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[2]];
  v15[1] = v4;
  v14[2] = @"mDNSDelegateAuditToken";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[3]];
  v15[2] = v5;
  v14[3] = @"mDNSDelegateMachO";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[4]];
  v15[3] = v6;
  v14[4] = @"mDNSDelegatePID";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_symptomCombinationTypeCounts[5]];
  v15[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v9 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.NetDomainUsageSymptomCombination to CoreAnalytics: %@", buf, 0xCu);
  }

  v10 = v8;
  AnalyticsSendEventLazy();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetSymptomCombinationBreakdown
{
  *&self->_symptomCombinationTypeCounts[4] = 0u;
  *&self->_symptomCombinationTypeCounts[2] = 0u;
  *self->_symptomCombinationTypeCounts = 0u;
}

- (void)_submitSymptomDomainStatistics
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"symptomsWithDomain";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_dnsSymptomWithDomainCount];
  v11[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v4 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.NetDomainUsageDomainStatistics to CoreAnalytics: %@", buf, 0xCu);
  }

  v7 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_submitAppTrackingEnabled
{
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.NetDomainUsageEnable to CoreAnalytics", v3, 2u);
  }

  AnalyticsSendEventLazy();
}

- (BOOL)_convertNSData:(id)a3 toAuditToken:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    if ([v5 length] == 32)
    {
      v7 = [v6 bytes];
      if (v7)
      {
        v8 = v7[1];
        *a4->var0 = *v7;
        *&a4->var0[4] = v8;
        LOBYTE(a4) = 1;
        goto LABEL_8;
      }

      v9 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Invalid token data", v11, 2u);
      }
    }

    LOBYTE(a4) = 0;
  }

LABEL_8:

  return a4;
}

- (id)_bundleNameFromAuditTokenData:(id)a3 auditToken:(id *)a4 orMachOUUID:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!(v8 | v9))
  {
    v11 = 0;
    goto LABEL_20;
  }

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;
  v14 = [(SFCache *)self->_bundleIdentifierCache entryForKey:v13];
  if (!v14)
  {
    if (v8)
    {
      v15 = *&a4->var0[4];
      v25[0] = *a4->var0;
      v25[1] = v15;
      v11 = [FlowAnalyticsEngine appBundleIdentifierFromAuditToken:v25];
    }

    else
    {
      v20 = uuid_to_bundleid(v10);
      v11 = [FlowAnalyticsEngine appBundleIdentifierFromBundleIdentifier:v20];
    }

    bundleIdentifierCache = self->_bundleIdentifierCache;
    if (v11)
    {
      [(SFCache *)bundleIdentifierCache addEntry:v11 forKey:v13];
      goto LABEL_19;
    }

    v22 = [MEMORY[0x277CBEB68] null];
    [(SFCache *)bundleIdentifierCache addEntry:v22 forKey:v13];

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        LODWORD(v25[0]) = 138412290;
        *(v25 + 4) = v19;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unexpected object returned from cache: %@", v25, 0xCu);
      }
    }

    goto LABEL_18;
  }

  v11 = v14;
LABEL_19:

LABEL_20:
  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)triggerAutoBugCaptureCaseForType:(id)a3 subType:(id)a4 privateSubtypeContext:(id)a5 detectedProcess:(id)a6 events:(id)a7 thresholdValuesString:(id)a8
{
  v42 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (self->_okToTriggerAutoBugCapture)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v20 = objc_alloc_init(MEMORY[0x277D6AFC8]);
    v21 = v20;
    if (v20)
    {
      v22 = [v20 signatureWithDomain:@"PrivacyTransparency" type:v14 subType:v15 subtypeContext:v16 detectedProcess:v17 triggerThresholdValues:v19];
      v23 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413059;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        v38 = 2113;
        v39 = v16;
        v40 = 2113;
        v41 = v17;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Triggering a 'PrivacyTransparency/%@/%@/%{private}@' ABC case for process:%{private}@", buf, 0x2Au);
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __129__NetDomainsHandler_triggerAutoBugCaptureCaseForType_subType_privateSubtypeContext_detectedProcess_events_thresholdValuesString___block_invoke;
      v27[3] = &unk_27898AAB0;
      v29 = &v30;
      v28 = v15;
      [v21 snapshotWithSignature:v22 duration:v18 events:0 payload:0 actions:v27 reply:0.0];
    }

    v24 = *(v31 + 24);

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

void __129__NetDomainsHandler_triggerAutoBugCaptureCaseForType_subType_privateSubtypeContext_detectedProcess_events_thresholdValuesString___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "%@ ABC case not accepted. response: %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checkForAutoBugCaptureWorthyCase:(id)a3 domainName:(id)a4 initiatedType:(unsigned int)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (self->_okToTriggerAutoBugCapture)
  {
    if (v9)
    {
      v10 = [(NetDomainsHandler *)self bundleNameImplies1stOr2ndParty:v8];
      v11 = [(NetDomainsHandler *)self domainNameImpliesKnownAppleProperty:v9];
      if (v10 && !v11)
      {
        if (!self->_previouslyAcceptedABCCases)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
          previouslyAcceptedABCCases = self->_previouslyAcceptedABCCases;
          self->_previouslyAcceptedABCCases = v12;
        }

        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v8, v9];
        if (([(NSMutableSet *)self->_previouslyAcceptedABCCases containsObject:v14]& 1) != 0)
        {
          v15 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v28 = v14;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "AppleAppUsingTracker already triggered this case %@", buf, 0xCu);
          }
        }

        else
        {
          v17 = a5 == 1;
          v18 = [(NetDomainsHandler *)self queue];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __79__NetDomainsHandler_checkForAutoBugCaptureWorthyCase_domainName_initiatedType___block_invoke;
          v22[3] = &unk_27898AAD8;
          v26 = v17;
          v22[4] = self;
          v23 = v9;
          v24 = v8;
          v25 = v14;
          dispatch_async(v18, v22);
        }
      }
    }

    else
    {
      v16 = [(NetDomainsHandler *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__NetDomainsHandler_checkForAutoBugCaptureWorthyCase_domainName_initiatedType___block_invoke_247;
      block[3] = &unk_27898A7D0;
      block[4] = self;
      v21 = v8;
      dispatch_async(v16, block);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __79__NetDomainsHandler_checkForAutoBugCaptureWorthyCase_domainName_initiatedType___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 64))
  {
    v2 = @"AppInitiated";
  }

  else
  {
    v2 = @"NonAppInitiated";
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10[0] = @"FQDN";
  v10[1] = @"requestID";
  v11[0] = v4;
  v11[1] = &stru_2847966D8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v3 triggerAutoBugCaptureCaseForType:@"AppleAppUsingTracker" subType:v2 privateSubtypeContext:v4 detectedProcess:v5 events:v7 thresholdValuesString:0];

  if (v8)
  {
    [*(*(a1 + 32) + 56) addObject:*(a1 + 56)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)willSwitchUser
{
  [(NSNotificationCenter *)self->_notificationCenter postNotificationName:@"UMSwitch" object:self];
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "UserManagement: Sent user switch notification", v3, 2u);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NetDomainsHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_5 != -1)
  {
    dispatch_once(&sharedInstance_pred_5, block);
  }

  v2 = sharedInstance_sharedInstance_5;

  return v2;
}

void __35__NetDomainsHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_5;
  sharedInstance_sharedInstance_5 = v1;

  v3 = sharedInstance_sharedInstance_5;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[NetDomainsHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

- (int)read:(id)a3 returnedValues:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

- (BOOL)noteSymptom:(id)a3
{
  v112 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 eventData];
  v6 = [v4 eventKey];
  v7 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_RESOLVING"];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    if (self->_adminState == 2)
    {
      v9 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.val[0]) = 0;
        v10 = "Domain tracking disabled, ignoring symptom";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = 2;
LABEL_7:
        _os_log_impl(&dword_23255B000, v11, v12, v10, &buf, v13);
        goto LABEL_115;
      }

      goto LABEL_115;
    }

    if (!self->_hasSomeUserEnabled || !self->_hasCurrentUserReconciliationEnabled)
    {
      goto LABEL_115;
    }

    v15 = [v4 eventQualifiers];
    v16 = [v15 objectForKeyedSubscript:@"5"];

    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v38 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v39 = v38;
        buf.val[0] = 134218242;
        *&buf.val[1] = v16;
        LOWORD(buf.val[3]) = 2112;
        *(&buf.val[3] + 2) = objc_opt_class();
        v40 = *(&buf.val[3] + 2);
        _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_ERROR, "Incoming SYMPTOM_DNS_RESOLVING without resolved endpoint, %p or unexpected class %@", &buf, 0x16u);
      }

      ++self->_symptomCombinationTypeCounts[0];
      goto LABEL_114;
    }

    v17 = [v4 eventQualifiers];
    v18 = [v17 objectForKeyedSubscript:@"6"];

    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v41 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v42 = v41;
        buf.val[0] = 134218242;
        *&buf.val[1] = v18;
        LOWORD(buf.val[3]) = 2112;
        *(&buf.val[3] + 2) = objc_opt_class();
        v43 = *(&buf.val[3] + 2);
        _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "Incoming SYMPTOM_DNS_RESOLVING without cnames, %p or unexpected class %@", &buf, 0x16u);
      }

      ++self->_symptomCombinationTypeCounts[0];
      goto LABEL_113;
    }

    format = kCFPropertyListBinaryFormat_v1_0;
    error = 0;
    v98 = [MEMORY[0x277CBEB58] set];
    v19 = *MEMORY[0x277CBECE8];
    v20 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], v16, 0, &format, &error);
    v21 = v20;
    if (!v20 || ![v20 count])
    {
      v44 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        buf.val[0] = 138412290;
        *&buf.val[1] = error;
        _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "Could not create property list from endpoint data, error %@", &buf, 0xCu);
      }

      goto LABEL_112;
    }

    v89 = self;
    allocator = v19;
    v88 = v5;
    v95 = v6;
    data = v18;
    v93 = v21;
    v94 = v16;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v101 objects:v111 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v102;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v102 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v101 + 1) + 8 * i);
          v28 = ipAddrToString(v27);
          v29 = v28;
          if (v28 && [v28 length])
          {
            [v98 addObject:v29];
          }

          else
          {
            v30 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              buf.val[0] = 138412290;
              *&buf.val[1] = v27;
              _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Could not extract endpoint from received data %@", &buf, 0xCu);
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v101 objects:v111 count:16];
      }

      while (v24);
    }

    v18 = data;
    v31 = CFPropertyListCreateWithData(allocator, data, 0, &format, &error);
    v32 = v31;
    if (!v31 || ![v31 count])
    {
      v45 = domainTrackingLogHandle;
      v16 = v94;
      v6 = v95;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        buf.val[0] = 138412290;
        *&buf.val[1] = error;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_ERROR, "Could not create property list from cname data, error %@", &buf, 0xCu);
      }

      goto LABEL_111;
    }

    v97 = [v32 firstObject];
    v33 = v89;
    ++v89->_dnsSymptomWithDomainCount;
    memset(&v100, 0, sizeof(v100));
    v34 = [v4 eventQualifiers];
    v35 = [v34 objectForKeyedSubscript:@"2"];

    if (v35)
    {
      v36 = 0x277CBE000uLL;
      if ([v4 verifiedDelegateSymptom])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = v35;
        }

        else
        {
          v37 = 0;
        }

        if ([(NetDomainsHandler *)v89 _convertNSData:v37 toAuditToken:&v100])
        {
          goto LABEL_51;
        }

        v63 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.val[0]) = 0;
          _os_log_impl(&dword_23255B000, v63, OS_LOG_TYPE_ERROR, "Received an explicit audit token from the sender but failed to convert into audit token", &buf, 2u);
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
      v36 = 0x277CBE000;
    }

    v46 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.val[0]) = 0;
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEFAULT, "Using audit token from the XPC connection from the sender", &buf, 2u);
    }

    memset(&buf, 0, sizeof(buf));
    if (v4)
    {
      [v4 auditToken];
    }

    v100 = buf;
LABEL_51:
    buf = v100;
    v47 = audit_token_to_euid(&buf);
    buf = v100;
    v87 = audit_token_to_pid(&buf);
    memset(&v99, 0, sizeof(v99));
    v48 = [v4 eventQualifiers];
    v49 = [v48 objectForKeyedSubscript:@"3"];

    v50 = *(v36 + 2704);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    v52 = [(NetDomainsHandler *)v89 _convertNSData:v51 toAuditToken:&v99];
    v53 = -1;
    if (v49 && v52)
    {
      buf = v99;
      v47 = audit_token_to_euid(&buf);
      buf = v99;
      v53 = audit_token_to_pid(&buf);
    }

    allocatora = v53;
    if (![(NetDomainsHandler *)v89 _currentSwitchStateForUser:v47 since:0])
    {
      v55 = v49;
      v58 = v97;
LABEL_110:

      v16 = v94;
      v6 = v95;
      v21 = v93;
LABEL_111:

LABEL_112:
LABEL_113:

LABEL_114:
      goto LABEL_115;
    }

    HIDWORD(v82) = v47;
    v86 = v51;
    v54 = [v4 eventQualifiers];
    v55 = [v54 objectForKeyedSubscript:@"4"];

    v56 = *(v36 + 2704);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = v55;
    }

    else
    {
      v57 = 0;
    }

    v58 = v97;
    if ([v57 length] == 16)
    {
      v59 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v57, "bytes")}];
    }

    else
    {
      v59 = 0;
    }

    v83 = v37;
    v84 = v57;
    if (v88)
    {
      v60 = v88[1];
      if ((v60 & 2) != 0)
      {
        v61 = v88[8];
      }

      else
      {
        v61 = -1;
      }

      if ((v60 & 8) != 0)
      {
        LODWORD(v82) = v61;
        v64 = v59;
        v65 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf.val[0]) = 0;
          _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEBUG, "Self-Reporting API used", &buf, 2u);
        }

        v60 = v88[1];
        v59 = v64;
        v37 = v83;
        v61 = v82;
      }

      if ((v60 & 0x10) != 0)
      {
        v62 = v88[14];
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      v62 = 0;
      v61 = -1;
    }

    v85 = v59;
    if (v97)
    {
      v66 = v52 ^ 1;
      if (v59)
      {
        v66 = 0;
      }

      if (v66 == 1 && v61 <= 0)
      {
        buf = v100;
        v67 = [(NetDomainsHandler *)v89 _bundleNameFromAuditTokenData:v37 auditToken:&buf orMachOUUID:0];
        ++v89->_symptomCombinationTypeCounts[2];
        goto LABEL_95;
      }

      if (v52)
      {
        buf = v99;
        v67 = [(NetDomainsHandler *)v89 _bundleNameFromAuditTokenData:v86 auditToken:&buf orMachOUUID:0];
        ++v89->_symptomCombinationTypeCounts[3];
        goto LABEL_95;
      }

      if (v59)
      {
        buf = v100;
        v67 = [(NetDomainsHandler *)v89 _bundleNameFromAuditTokenData:0 auditToken:&buf orMachOUUID:v59];
        ++v89->_symptomCombinationTypeCounts[4];
LABEL_95:
        v73 = allocatora;
        if (v67)
        {
          goto LABEL_96;
        }

LABEL_105:
        v37 = v83;
LABEL_106:
        v79 = domainTrackingLogHandle;
        v77 = v84;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          buf.val[0] = 138478083;
          *&buf.val[1] = v67;
          LOWORD(buf.val[3]) = 2113;
          *(&buf.val[3] + 2) = v58;
          _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_DEBUG, "Failed to get bundleID (%{private}@) or domain name (%{private}@)", &buf, 0x16u);
        }

        v76 = v85;
        goto LABEL_109;
      }

      allocatorb = v62;
      v69 = v55;
      v70 = v83;
      v68 = v61;
      if (v61 >= 1)
      {
        v78 = pid_to_uuid(v61);
        if (v78)
        {
          buf = v100;
          v67 = [(NetDomainsHandler *)v89 _bundleNameFromAuditTokenData:0 auditToken:&buf orMachOUUID:v78];
        }

        else
        {
          v67 = 0;
        }

        v33 = v89;
        ++v89->_symptomCombinationTypeCounts[5];

        v18 = data;
        v55 = v69;
        v58 = v97;
        v62 = allocatorb;
        v73 = v68;
        if (v67)
        {
LABEL_96:
          v74 = v62;
          v75 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            buf.val[0] = 67110403;
            buf.val[1] = v74;
            LOWORD(buf.val[2]) = 1025;
            *(&buf.val[2] + 2) = v87;
            HIWORD(buf.val[3]) = 1025;
            buf.val[4] = v73;
            LOWORD(buf.val[5]) = 2113;
            *(&buf.val[5] + 2) = v67;
            HIWORD(buf.val[7]) = 2113;
            v108 = v58;
            v109 = 2113;
            v110 = v98;
            _os_log_impl(&dword_23255B000, v75, OS_LOG_TYPE_DEFAULT, "Domain resolution for R%u, pid: %{private}d, delegate pid: %{private}d, bundle: %{private}@, domain: %{private}@, resolved endpoints: %{private}@", &buf, 0x32u);
          }

          [(NetDomainsHandler *)v33 _callDelegateForResolutionBy:HIDWORD(v82) bundleIdentifier:v67 forDomain:v58 endpoints:v98, v82];
          v77 = v84;
          v76 = v85;
          v37 = v83;
LABEL_109:

          v51 = v86;
          goto LABEL_110;
        }

        goto LABEL_105;
      }

      v71 = 0;
      v18 = data;
      v33 = v89;
    }

    else
    {
      v68 = v61;
      allocatorb = v62;
      v69 = v55;
      v70 = v37;
      v71 = v59 != 0;
    }

    v72 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 67110400;
      buf.val[1] = allocatorb;
      LOWORD(buf.val[2]) = 1024;
      *(&buf.val[2] + 2) = v97 != 0;
      HIWORD(buf.val[3]) = 1024;
      buf.val[4] = 1;
      LOWORD(buf.val[5]) = 1024;
      *(&buf.val[5] + 2) = v52;
      HIWORD(buf.val[6]) = 1024;
      buf.val[7] = v71;
      LOWORD(v108) = 1024;
      *(&v108 + 2) = v68 >= 0;
      _os_log_impl(&dword_23255B000, v72, OS_LOG_TYPE_ERROR, "Incomplete set of qualifiers for R%u to process symptom. Has: domainName = %d, auditToken = %d, dAuditToken = %d, delegateMachOUuid = %d, delegatePid = %d", &buf, 0x26u);
    }

    v67 = 0;
    ++v33->_symptomCombinationTypeCounts[0];
    v37 = v70;
    v55 = v69;
    v58 = v97;
    goto LABEL_106;
  }

  v14 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
  {
    buf.val[0] = 138412290;
    *&buf.val[1] = v6;
    v10 = "NetDomains, unrecognized symptom: %@";
    v11 = v14;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 12;
    goto LABEL_7;
  }

LABEL_115:

  v80 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)privacyReset
{
  if (effectiveUserId)
  {
    v3 = 501;
  }

  else
  {
    v3 = 0;
  }

  [(NetDomainsHandler *)self setSwitchState:self->_defaultSwitchState forUser:v3];
  [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userAppTracking"];
  if (effectiveUserId)
  {
    v4 = 501;
  }

  else
  {
    v4 = 0;
  }

  [(NetDomainsHandler *)self setReconciliationSwitchState:self->_defaultReconciliationSwitchState forUser:v4];

  [(NetDomainsHandler *)self _callSwitchStateDelegateForName:@"userEndpointTracking"];
}

@end