@interface ArbitratorExpertSystemHandler
+ (BOOL)disableResourceNotifyDampening;
+ (id)configureClass:(id)class;
+ (id)internalStateDictionary;
+ (id)sharedInstance;
- (ArbitratorExpertSystemHandler)init;
- (BOOL)_arbitratorReady;
- (BOOL)_initializeWorkspace;
- (BOOL)noteSymptom:(id)symptom;
- (BOOL)requireUserNotification;
- (BOOL)shouldGenerateReportForSignature:(id)signature trigger:(unint64_t)trigger;
- (id)_reportRecordKeyForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process;
- (id)_retrieveReportRecordForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process;
- (id)internalStateDictionary;
- (id)setupParametersForDESysLogFilterProcess:(id)process;
- (id)setupProcessNameForDESysLogFilterProcess:(id)process;
- (void)_addReportRecordWithKey:(id)key count:(int64_t)count lastSeen:(double)seen;
- (void)_administrativeDisable;
- (void)_administrativeEnable;
- (void)_completeInitialization:(BOOL)initialization;
- (void)_dumpState;
- (void)_removeAllReportRecords;
- (void)_removeReportRecordForKey:(id)key;
- (void)_saveReportRecord:(id)record;
- (void)alertCarrierSeedUserAboutABC;
- (void)dealloc;
- (void)handleAssertionExceptionTriggerWithEvent:(id)event signatureSubType:(id)type;
- (void)handleResourceNotifyOfType:(unint64_t)type event:(id)event;
- (void)observeSetupAssistantFinished;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)recordReportForSignature:(id)signature aggregateReport:(id)report specificReport:(id)specificReport;
- (void)removeSetupAssistantFinishedObserver;
- (void)scheduleABCNotificationForCarrierSeedUser;
- (void)setupAssistantFinished;
- (void)triggerABCSnapshotWithSignature:(id)signature events:(id)events uuid:(id)uuid parameters:(id)parameters;
@end

@implementation ArbitratorExpertSystemHandler

void *__63__ArbitratorExpertSystemHandler_disableResourceNotifyDampening__block_invoke()
{
  disableResourceNotifyDampening_disableDampening = 0;
  result = get_shared_prefs_store();
  if (result)
  {

    return prefs_add_client(result, "resourcenotify_disable_dampening", &__block_literal_global_208);
  }

  return result;
}

+ (BOOL)disableResourceNotifyDampening
{
  if (disableResourceNotifyDampening_pred != -1)
  {
    +[ArbitratorExpertSystemHandler disableResourceNotifyDampening];
  }

  return disableResourceNotifyDampening_disableDampening;
}

- (void)_removeAllReportRecords
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = @"com.apple.symptomsd.ResourceNotify";
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Preparing to clean out all records for suite %@", &v7, 0xCu);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.ResourceNotify"];
  v5 = debuggabilityLogHandle;
  if (v4)
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = @"com.apple.symptomsd.ResourceNotify";
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Removing all records for suite %@", &v7, 0xCu);
    }

    [v4 removePersistentDomainForName:@"com.apple.symptomsd.ResourceNotify"];
  }

  else if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = @"com.apple.symptomsd.ResourceNotify";
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unable to initialize user defaults for %@!", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v6 = *MEMORY[0x277D85DE8];
}

- (ArbitratorExpertSystemHandler)init
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v4 = dispatch_queue_create("com.apple.symptoms.arbitratorES.queue", v3);
  v15.receiver = self;
  v15.super_class = ArbitratorExpertSystemHandler;
  v5 = [(ExpertSystemHandlerCore *)&v15 initWithQueue:v4];
  v6 = v5;
  if (v5)
  {
    v5->_initializationComplete = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__ArbitratorExpertSystemHandler_init__block_invoke;
    v12[3] = &unk_27898BD50;
    v13 = v4;
    v8 = v6;
    v14 = v8;
    v9 = [defaultCenter addObserverForName:@"kNotificationOfPartialInitialization" object:0 queue:0 usingBlock:v12];
    flowAnalyticsObserver = v8->flowAnalyticsObserver;
    v8->flowAnalyticsObserver = v9;

    v8->administrativeState = 2;
  }

  return v6;
}

void __37__ArbitratorExpertSystemHandler_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ArbitratorExpertSystemHandler_init__block_invoke_2;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __37__ArbitratorExpertSystemHandler_init__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  if (v2)
  {
    v7 = v2;
    v3 = [v2 objectForKeyedSubscript:@"ObjectKey"];
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) _completeInitialization:isHelper];
        v4 = [MEMORY[0x277CCAB98] defaultCenter];
        [v4 removeObserver:*(*(a1 + 40) + 40)];

        v5 = *(a1 + 40);
        v6 = *(v5 + 40);
        *(v5 + 40) = 0;
      }
    }

    v2 = v7;
  }
}

- (BOOL)_initializeWorkspace
{
  v3 = MEMORY[0x277D6B500];
  v4 = +[SystemSettingsRelay defaultRelay];
  symptomEvaluatorDatabaseContainerPath = [v4 symptomEvaluatorDatabaseContainerPath];
  v6 = [v3 workspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

  v7 = [v6 copy];
  arbitratorWorkspace = self->arbitratorWorkspace;
  self->arbitratorWorkspace = v7;

  v9 = self->arbitratorWorkspace;
  if (v9)
  {
    v10 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "ArbitratorWorkspace is ready", v12, 2u);
    }
  }

  return v9 != 0;
}

- (void)_completeInitialization:(BOOL)initialization
{
  if ([(ArbitratorExpertSystemHandler *)self _initializeWorkspace])
  {
    if (!initialization)
    {
      v5 = +[SystemSettingsRelay defaultRelay];
      settingsRelay = self->settingsRelay;
      self->settingsRelay = v5;

      v7 = self->settingsRelay;
      if (v7)
      {
        [(SystemSettingsRelay *)v7 addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:7 context:0];
      }
    }
  }

  else
  {
    v8 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Failed to initialize workspace.", v9, 2u);
    }
  }

  self->_initializationComplete = 1;
}

- (void)_administrativeEnable
{
  administrativeState = self->administrativeState;
  v4 = debuggabilityLogHandle;
  v5 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG);
  if (administrativeState == 2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "AFSM admin enable", buf, 2u);
    }

    self->administrativeState = 1;
  }

  else if (v5)
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "AFSM ignoring double issue", v6, 2u);
  }
}

- (void)_administrativeDisable
{
  administrativeState = self->administrativeState;
  v4 = debuggabilityLogHandle;
  v5 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG);
  if (administrativeState == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "AFSM admin disable", buf, 2u);
    }

    self->administrativeState = 2;
  }

  else if (v5)
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "AFSM ignoring double issue", v6, 2u);
  }
}

- (BOOL)_arbitratorReady
{
  initializationComplete = self->_initializationComplete;
  if (!initializationComplete)
  {
    v4 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "Arbitrator not yet initialized.", buf, 2u);
    }
  }

  if (self->administrativeState != 1)
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Auto Bug Capture is administratively disabled.", v7, 2u);
    }

    return 0;
  }

  return initializationComplete;
}

- (void)dealloc
{
  [(ArbitratorExpertSystemHandler *)self _administrativeDisable];
  settingsRelay = self->settingsRelay;
  if (settingsRelay)
  {
    [(SystemSettingsRelay *)settingsRelay removeObserver:self forKeyPath:@"autoBugCaptureEnabled"];
  }

  if (self->flowAnalyticsObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->flowAnalyticsObserver];
  }

  v5.receiver = self;
  v5.super_class = ArbitratorExpertSystemHandler;
  [(ExpertSystemHandlerCore *)&v5 dealloc];
}

- (void)_dumpState
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    currentState = self->currentState;
    v5 = v3;
    label = [(ExpertSystemStateCore *)currentState label];
    *buf = 138412290;
    v27 = label;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "AFSM Current state: %@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->states;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138412546;
    v21 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [(NSArray *)self->states objectAtIndexedSubscript:0, v21, v22];

        if (v13 != v14)
        {
          v15 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            label2 = [v13 label];
            sojournTime = [v13 sojournTime];
            [sojournTime total];
            *buf = v21;
            v27 = label2;
            v28 = 2048;
            v29 = v19;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "AFSM Cumulative time on state %@: %f", buf, 0x16u);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"autoBugCaptureEnabled"])
  {
    autoBugCaptureEnabled = [(SystemSettingsRelay *)self->settingsRelay autoBugCaptureEnabled];
    queue = [(ExpertSystemHandlerCore *)self queue];
    v11 = queue;
    if (autoBugCaptureEnabled)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __80__ArbitratorExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v19[3] = &unk_27898A0C8;
      v19[4] = self;
      v14 = v19;
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __80__ArbitratorExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v18[3] = &unk_27898A0C8;
      v18[4] = self;
      v14 = v18;
    }

    dispatch_async(queue, v14);
  }

  else
  {
    queue2 = [(ExpertSystemHandlerCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__ArbitratorExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    block[3] = &unk_27898A328;
    block[4] = self;
    v16 = pathCopy;
    v17 = changeCopy;
    dispatch_async(queue2, block);

    v11 = v16;
  }
}

void __80__ArbitratorExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 24);
    v4 = v2;
    v5 = [v3 label];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "AFSM Current state: %@, changed: %@ to %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ArbitratorExpertSystemHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_sharedInstancePred != -1)
  {
    dispatch_once(&sharedInstance_sharedInstancePred, block);
  }

  v2 = sharedInstance_sharedInstance_36;

  return v2;
}

void __47__ArbitratorExpertSystemHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_36;
  sharedInstance_sharedInstance_36 = v1;

  v3 = sharedInstance_sharedInstance_36;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[ArbitratorExpertSystemHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (BOOL)noteSymptom:(id)symptom
{
  v38 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  eventKey = [symptomCopy eventKey];
  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v37 = eventKey;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "AFSM: receiving symptom with key: %@", buf, 0xCu);
  }

  v7 = [SymptomStore keyFromSymptomName:@"com.apple.abc.pseudotrigger"];
  v8 = [eventKey isEqualToString:v7];

  if (v8)
  {
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "AFSM: Processing pseudo-trigger symptom.", buf, 2u);
    }

    goto LABEL_19;
  }

  if ([kResourceNotifyEventCPUUsageTrigger isEqualToString:eventKey])
  {
    queue = [(ExpertSystemHandlerCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__ArbitratorExpertSystemHandler_noteSymptom___block_invoke;
    block[3] = &unk_27898A7D0;
    block[4] = self;
    v35 = symptomCopy;
    dispatch_async(queue, block);

    v11 = v35;
LABEL_18:

    goto LABEL_19;
  }

  if ([kResourceNotifyEventIOLocalWritesTrigger isEqualToString:eventKey])
  {
    queue2 = [(ExpertSystemHandlerCore *)self queue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __45__ArbitratorExpertSystemHandler_noteSymptom___block_invoke_2;
    v32[3] = &unk_27898A7D0;
    v32[4] = self;
    v33 = symptomCopy;
    dispatch_async(queue2, v32);

    v11 = v33;
    goto LABEL_18;
  }

  if ([kResourceNotifyEventCPUWakesTrigger isEqualToString:eventKey])
  {
    queue3 = [(ExpertSystemHandlerCore *)self queue];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __45__ArbitratorExpertSystemHandler_noteSymptom___block_invoke_3;
    v30[3] = &unk_27898A7D0;
    v30[4] = self;
    v31 = symptomCopy;
    dispatch_async(queue3, v30);

    v11 = v31;
    goto LABEL_18;
  }

  if ([kResourceNotifyEventPortSpaceExhaustionTrigger isEqualToString:eventKey])
  {
    queue4 = [(ExpertSystemHandlerCore *)self queue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __45__ArbitratorExpertSystemHandler_noteSymptom___block_invoke_4;
    v28[3] = &unk_27898A7D0;
    v28[4] = self;
    v29 = symptomCopy;
    dispatch_async(queue4, v28);

    v11 = v29;
    goto LABEL_18;
  }

  if ([kResourceNotifyEventFileDescriptorExhaustionTrigger isEqualToString:eventKey])
  {
    queue5 = [(ExpertSystemHandlerCore *)self queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __45__ArbitratorExpertSystemHandler_noteSymptom___block_invoke_5;
    v26[3] = &unk_27898A7D0;
    v26[4] = self;
    v27 = symptomCopy;
    dispatch_async(queue5, v26);

    v11 = v27;
    goto LABEL_18;
  }

  if ([kResourceNotifyEventKQWorkloopsExhaustionTrigger isEqualToString:eventKey])
  {
    queue6 = [(ExpertSystemHandlerCore *)self queue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__ArbitratorExpertSystemHandler_noteSymptom___block_invoke_6;
    v24[3] = &unk_27898A7D0;
    v24[4] = self;
    v25 = symptomCopy;
    dispatch_async(queue6, v24);

    v11 = v25;
    goto LABEL_18;
  }

  if ([eventKey isEqualToString:@"com.apple.symptoms.IOPMAssertion.duration"])
  {
    v19 = @"LongAssertion";
LABEL_26:
    [(ArbitratorExpertSystemHandler *)self handleAssertionExceptionTriggerWithEvent:symptomCopy signatureSubType:v19];
    goto LABEL_19;
  }

  if ([eventKey isEqualToString:@"com.apple.symptoms.IOPMAssertion.aggregate"])
  {
    v19 = @"TotalAssertion";
    goto LABEL_26;
  }

  if ([eventKey isEqualToString:@"com.apple.symptoms.IOPMAssertion.timeout"])
  {
    v19 = @"SystemTimeoutAssertion";
    goto LABEL_26;
  }

  v20 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v21 = eventKey;
    v22 = v20;
    uTF8String = [eventKey UTF8String];
    *buf = 136315138;
    v37 = uTF8String;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "AFSM: Unable to process symptom: %s", buf, 0xCu);
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handleAssertionExceptionTriggerWithEvent:(id)event signatureSubType:(id)type
{
  v36[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  typeCopy = type;
  eventQualifiers = [eventCopy eventQualifiers];
  v30 = [eventQualifiers objectForKeyedSubscript:@"UUID"];

  eventQualifiers2 = [eventCopy eventQualifiers];
  v10 = [eventQualifiers2 objectForKeyedSubscript:@"events"];

  if (!v10)
  {
    selfCopy = self;
    eventQualifiers3 = [eventCopy eventQualifiers];
    v13 = [eventQualifiers3 objectForKeyedSubscript:@"event"];

    if ([v13 count])
    {
      v36[0] = v13;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    }

    else
    {
      v10 = 0;
    }

    self = selfCopy;
  }

  if ([typeCopy isEqualToString:@"LongAssertion"] && objc_msgSend(v10, "count"))
  {
    selfCopy2 = self;
    v14 = 0;
    while (1)
    {
      v15 = [v10 objectAtIndexedSubscript:v14];
      v16 = [v15 objectForKeyedSubscript:@"Process Name"];
      if (([v16 isEqualToString:@"mediaserverd"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"audiomxd"))
      {
        v17 = [v15 objectForKeyedSubscript:@"AssertName"];
        v18 = [v17 containsString:@"vzzz"];

        if (v18)
        {
          break;
        }
      }

      if ([v10 count] <= ++v14)
      {
        v19 = 0;
        goto LABEL_16;
      }
    }

    v19 = @"Haptics";
LABEL_16:
    self = selfCopy2;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(ArbitratorExpertSystemHandler *)self setupProcessNameForDESysLogFilterProcess:eventCopy];
  v21 = [(ArbitratorExpertSystemHandler *)self setupParametersForDESysLogFilterProcess:eventCopy];
  v22 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D6B018], *MEMORY[0x277D6B1C8], @"Assertion", *MEMORY[0x277D6B208], typeCopy, *MEMORY[0x277D6B1E8], v20, *MEMORY[0x277D6B1C0], 0}];
  if ([(__CFString *)v19 length])
  {
    [v22 setObject:v19 forKeyedSubscript:*MEMORY[0x277D6B1F0]];
  }

  queue = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ArbitratorExpertSystemHandler_handleAssertionExceptionTriggerWithEvent_signatureSubType___block_invoke;
  block[3] = &unk_27898C108;
  block[4] = self;
  v32 = v22;
  v33 = v10;
  v34 = v30;
  v35 = v21;
  v24 = v21;
  v25 = v30;
  v26 = v10;
  v27 = v22;
  dispatch_async(queue, block);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleResourceNotifyOfType:(unint64_t)type event:(id)event
{
  v130 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = stringForResourceNotifyTrigger(type);
    *buf = 138412290;
    typeCopy = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Processing RESOURCE_NOTIFY trigger: %@", buf, 0xCu);
  }

  processId = [eventCopy processId];
  eventQualifiers = [eventCopy eventQualifiers];
  v10 = [eventQualifiers objectForKeyedSubscript:kResourceNotifyEventKeyProcessPath];

  eventQualifiers2 = [eventCopy eventQualifiers];
  v12 = [eventQualifiers2 objectForKeyedSubscript:kResourceNotifyEventKeyUUID];

  eventQualifiers3 = [eventCopy eventQualifiers];
  v14 = [eventQualifiers3 objectForKeyedSubscript:kResourceNotifyEventKeyFatalFlag];
  bOOLValue = [v14 BOOLValue];

  eventQualifiers4 = [eventCopy eventQualifiers];
  v17 = [eventQualifiers4 objectForKeyedSubscript:kResourceNotifyEventKeyPluggedIn];
  bOOLValue2 = [v17 BOOLValue];

  eventQualifiers5 = [eventCopy eventQualifiers];
  v20 = [eventQualifiers5 objectForKeyedSubscript:kResourceNotifyEventKeyObservedValue];
  longLongValue = [v20 longLongValue];

  eventQualifiers6 = [eventCopy eventQualifiers];
  v23 = [eventQualifiers6 objectForKeyedSubscript:kResourceNotifyEventKeyObservationWindow];
  longLongValue2 = [v23 longLongValue];

  eventQualifiers7 = [eventCopy eventQualifiers];
  v25 = [eventQualifiers7 objectForKeyedSubscript:kResourceNotifyEventKeyLimitValue];
  longLongValue3 = [v25 longLongValue];

  eventQualifiers8 = [eventCopy eventQualifiers];
  v27 = [eventQualifiers8 objectForKeyedSubscript:kResourceNotifyEventKeyLimitWindow];
  longLongValue4 = [v27 longLongValue];

  eventQualifiers9 = [eventCopy eventQualifiers];
  v29 = [eventQualifiers9 objectForKeyedSubscript:kResourceNotifyEventKeyFatalPort];
  unsignedIntValue = [v29 unsignedIntValue];

  eventQualifiers10 = [eventCopy eventQualifiers];
  v31 = [eventQualifiers10 objectForKeyedSubscript:kResourceNotifyEventKeyEndTimeSpecSec];
  longValue = [v31 longValue];

  eventQualifiers11 = [eventCopy eventQualifiers];
  v33 = [eventQualifiers11 objectForKeyedSubscript:kResourceNotifyEventKeyEndTimeSpecNanosec];
  longValue2 = [v33 longValue];

  v34 = @"NON-FATAL";
  if (bOOLValue)
  {
    v34 = @"FATAL";
  }

  v35 = v34;
  v36 = @"pluggedIn";
  if (!bOOLValue2)
  {
    v36 = 0;
  }

  v37 = v36;
  if (longLongValue >= 1 && [eventCopy processName])
  {
    selfCopy2 = self;
    v101 = v12;
    if (self->administrativeState == 1)
    {
      v39 = +[SystemProperties sharedInstance];
      internalBuild = [v39 internalBuild];
      if (type == 1)
      {
        v41 = internalBuild;
      }

      else
      {
        v41 = 0;
      }

      v100 = v41 & (bOOLValue ^ 1);
      v42 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v43 = @"no";
        if (v100)
        {
          v43 = @"YES";
        }

        *buf = 138412290;
        typeCopy = v43;
        _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEBUG, "Create an ABC case for this ResourceNotify trigger? => %@", buf, 0xCu);
      }

      v12 = v101;
    }

    else
    {
      v100 = 0;
    }

    v103 = v37;
    v104 = v35;
    if (type > 3)
    {
      switch(type)
      {
        case 4uLL:
          v98 = v10;
          v99 = 0;
          v95 = 0;
          v96 = 0;
          v47 = @"PORT_SPACE_EXHAUSTION";
          v97 = 1;
          v48 = @"Port Space Exhaustion";
          break;
        case 5uLL:
          v98 = v10;
          v99 = 0;
          v95 = 0;
          v96 = 0;
          v47 = @"FILE_DESCRIPTOR_EXHAUSTION";
          v97 = 1;
          v48 = @"File Descriptor Exhaustion";
          break;
        case 6uLL:
          v98 = v10;
          v99 = 0;
          v95 = 0;
          v96 = 0;
          v47 = @"KQWORKLOOP_EXHAUSTION";
          v97 = 1;
          v48 = @"kqworkloop Exhaustion";
          break;
        default:
LABEL_33:
          v49 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            typeCopy = type;
            _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEFAULT, "Received unsupported ResourceNotify type %lu", buf, 0xCu);
          }

          goto LABEL_115;
      }
    }

    else
    {
      switch(type)
      {
        case 1uLL:
          v98 = v10;
          if (v100)
          {
            v99 = *MEMORY[0x277D6B018];
            v97 = 0;
            v47 = @"EXC_CPU_USAGE";
            v95 = @"CPU";
            v96 = @"ShortTerm";
          }

          else
          {
            v95 = 0;
            v96 = 0;
            v99 = 0;
            v47 = @"EXC_CPU_USAGE";
            v97 = 1;
          }

          v48 = @"nanoseconds of CPU usage";
          break;
        case 2uLL:
          v98 = v10;
          v99 = 0;
          v95 = 0;
          v96 = 0;
          v47 = @"EXC_IO_WRITE";
          v97 = 1;
          v48 = @"dirty bytes written";
          break;
        case 3uLL:
          v98 = v10;
          v99 = 0;
          v95 = 0;
          v96 = 0;
          v47 = @"EXC_CPU_WAKE";
          v97 = 1;
          v48 = @"CPU wakes";
          break;
        default:
          goto LABEL_33;
      }
    }

    v102 = *MEMORY[0x277D6B028];
    v50 = objc_alloc(MEMORY[0x277CCACA8]);
    if (longLongValue2)
    {
      v51 = [v50 initWithFormat:@"%lld %@ over %.2fs seconds", longLongValue, v48, (longLongValue2 / 0x3B9ACA00)];
    }

    else
    {
      v51 = [v50 initWithFormat:@"%lld %@", longLongValue, v48, v90];
    }

    v107 = v51;
    v52 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (bOOLValue)
      {
        v53 = @"Fatal ";
      }

      else
      {
        v53 = &stru_2847966D8;
      }

      v54 = v52;
      processName = [eventCopy processName];
      *buf = 138413826;
      typeCopy = v53;
      selfCopy2 = self;
      v118 = 2080;
      v119 = processName;
      v120 = 2048;
      v121 = processId;
      v122 = 2112;
      v123 = v107;
      v124 = 2048;
      v125 = longLongValue3;
      v126 = 2112;
      v127 = v48;
      v128 = 2048;
      v129 = (longLongValue4 / 0x3B9ACA00);
      _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEFAULT, "%@RESOURCE_NOTIFY trigger for %s [%ld] (%@, violating limit of %lld %@ over %.2fs seconds)", buf, 0x48u);
    }

    v56 = *MEMORY[0x277D6B1E8];
    v93 = *MEMORY[0x277D6B208];
    v114 = *MEMORY[0x277D6B1C8];
    v57 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v102, *MEMORY[0x277D6B1C8], v47, *MEMORY[0x277D6B208], v35, *MEMORY[0x277D6B1E8], v107, *MEMORY[0x277D6B200], 0}];
    v94 = v56;
    if (![eventCopy processName])
    {
      v59 = v98;
      goto LABEL_55;
    }

    v58 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{objc_msgSend(eventCopy, "processName")}];
    v59 = v98;
    if (v58)
    {
      v60 = v58;
    }

    else
    {
      v60 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", objc_msgSend(eventCopy, "processName")];
      if (!v60)
      {
LABEL_54:

LABEL_55:
        v61 = v59;
        if ([(__CFString *)v103 length])
        {
          [v57 setObject:v103 forKeyedSubscript:*MEMORY[0x277D6B1F0]];
        }

        v62 = [(ArbitratorExpertSystemHandler *)selfCopy2 shouldGenerateReportForSignature:v57 trigger:type];
        v63 = debuggabilityLogHandle;
        v64 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
        if (v62)
        {
          if (v64)
          {
            v65 = v63;
            processName2 = [eventCopy processName];
            *buf = 136315394;
            typeCopy = processName2;
            v118 = 2048;
            v119 = processId;
            _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_INFO, "  Will capture micro-stackshot for %s [%ld]", buf, 0x16u);
          }

          v67 = debuggabilityLogHandle;
          v68 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
          if (type <= 3)
          {
            v10 = v61;
            if (type == 1)
            {
              if (v68)
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "  Generating report for excess CPU usage", buf, 2u);
              }

              [v61 UTF8String];
              v91 = longLongValue3;
              v92 = longLongValue4;
              v88 = longValue;
              v89 = longValue2;
              SPReportCPUUsageResource();
            }

            else if (type == 2)
            {
              if (v68)
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "  Generating report for excess IO writes", buf, 2u);
              }

              [v61 UTF8String];
              v88 = longLongValue3;
              v89 = longLongValue4;
              SPReportDiskWritesResource();
            }

            else
            {
              if (v68)
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "  Generating report for excess CPU wake", buf, 2u);
              }

              [v61 UTF8String];
              v88 = longLongValue3;
              v89 = longLongValue4;
              SPReportCPUWakeupsResource();
            }

            v71 = v99;
            goto LABEL_101;
          }

          v10 = v61;
          if (type == 4)
          {
            if (v68)
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "  Generating report for port space exhaustion", buf, 2u);
            }

            uTF8String = [v61 UTF8String];
            if (bOOLValue)
            {
              v78 = "Process killed";
            }

            else
            {
              v78 = 0;
            }

            v76 = unsignedIntValue;
            MEMORY[0x238387200](processId, uTF8String, bOOLValue, v78, longLongValue, longLongValue3, unsignedIntValue);
          }

          else if (type == 5)
          {
            if (v68)
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "  Generating report for file descriptor exhaustion", buf, 2u);
            }

            uTF8String2 = [v61 UTF8String];
            if (bOOLValue)
            {
              v75 = "Process killed";
            }

            else
            {
              v75 = 0;
            }

            v76 = unsignedIntValue;
            MEMORY[0x2383871E0](processId, uTF8String2, bOOLValue, v75, longLongValue, longLongValue3, unsignedIntValue);
          }

          else
          {
            if (v68)
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "  Generating report for kqworkloop exhaustion", buf, 2u);
            }

            uTF8String3 = [v61 UTF8String];
            if (bOOLValue)
            {
              v80 = "Process killed";
            }

            else
            {
              v80 = 0;
            }

            v76 = unsignedIntValue;
            MEMORY[0x2383871F0](processId, uTF8String3, bOOLValue, v80, longLongValue, longLongValue3, unsignedIntValue);
          }

          v71 = v99;
          if (v76 - 1 > 0xFFFFFFFD)
          {
            goto LABEL_101;
          }

          v73 = *MEMORY[0x277D85F48];
          v72 = v76;
        }

        else
        {
          if (v64)
          {
            v69 = v63;
            processName3 = [eventCopy processName];
            *buf = 136315394;
            typeCopy = processName3;
            v118 = 2048;
            v119 = processId;
            _os_log_impl(&dword_23255B000, v69, OS_LOG_TYPE_INFO, "  Will NOT capture micro-stackshot for %s [%ld]", buf, 0x16u);
          }

          v10 = v61;
          v71 = v99;
          v72 = unsignedIntValue;
          if ((type & 0xFFFFFFFFFFFFFFFELL) != 4 || unsignedIntValue - 1 > 0xFFFFFFFD)
          {
            goto LABEL_101;
          }

          v73 = *MEMORY[0x277D85F48];
        }

        mach_port_deallocate(v73, v72);
LABEL_101:
        v12 = v101;
        if (v100)
        {
          if (v71)
          {
            [v57 setObject:v71 forKeyedSubscript:v114];
          }

          if ((v97 & 1) == 0)
          {
            [v57 setObject:v95 forKeyedSubscript:v93];
            [v57 setObject:v96 forKeyedSubscript:v94];
          }

          eventQualifiers12 = [eventCopy eventQualifiers];
          v82 = [eventQualifiers12 objectForKeyedSubscript:@"events"];

          if (!v82)
          {
            eventQualifiers13 = [eventCopy eventQualifiers];
            v84 = [eventQualifiers13 objectForKeyedSubscript:@"event"];

            if ([v84 count])
            {
              v115 = v84;
              v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
            }

            else
            {
              v82 = 0;
            }

            v12 = v101;
          }

          v86 = [(ArbitratorExpertSystemHandler *)selfCopy2 setupParametersForDESysLogFilterProcess:eventCopy];
          [(ArbitratorExpertSystemHandler *)selfCopy2 triggerABCSnapshotWithSignature:v57 events:v82 uuid:v12 parameters:v86];

          v10 = v61;
        }

        else
        {
          v85 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v85, OS_LOG_TYPE_DEBUG, "This ResourceNotify trigger was not eligible for an ABC case", buf, 2u);
          }
        }

        v37 = v103;
        v35 = v104;
        goto LABEL_115;
      }
    }

    [v57 setObject:v60 forKeyedSubscript:*MEMORY[0x277D6B1C0]];
    if (![v98 length])
    {
      v60 = v60;

      v59 = v60;
    }

    goto LABEL_54;
  }

  v44 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v45 = v44;
    processName4 = [eventCopy processName];
    *buf = 134218242;
    typeCopy = longLongValue;
    v118 = 2080;
    v119 = processName4;
    _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_ERROR, "Invalid parameters - observed value: %lld (must be positive), process name: %s (must not be empty)", buf, 0x16u);
  }

LABEL_115:

  v87 = *MEMORY[0x277D85DE8];
}

void __63__ArbitratorExpertSystemHandler_disableResourceNotifyDampening__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && MEMORY[0x238389170](v3) == MEMORY[0x277D86448])
  {
    value = xpc_BOOL_get_value(v4);
    if (disableResourceNotifyDampening_disableDampening == value)
    {
      goto LABEL_8;
    }

    v6 = value;
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109376;
      v10[1] = v6;
      v11 = 1024;
      v12 = disableResourceNotifyDampening_disableDampening;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "prefs_store: Set resource notify dampening disabled from %d => %d", v10, 0xEu);
    }

    goto LABEL_7;
  }

  if (disableResourceNotifyDampening_disableDampening == 1)
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "prefs_store: Using default resource notify dampening setting (enabled).", v10, 2u);
    }

    LOBYTE(v6) = 0;
LABEL_7:
    disableResourceNotifyDampening_disableDampening = v6;
  }

LABEL_8:

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldGenerateReportForSignature:(id)signature trigger:(unint64_t)trigger
{
  v55 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  if (!+[ArbitratorExpertSystemHandler disableResourceNotifyDampening])
  {
    v8 = [signatureCopy objectForKeyedSubscript:*MEMORY[0x277D6B1C8]];
    v9 = [signatureCopy objectForKeyedSubscript:*MEMORY[0x277D6B208]];
    v10 = [signatureCopy objectForKeyedSubscript:*MEMORY[0x277D6B1E8]];
    v11 = [signatureCopy objectForKeyedSubscript:*MEMORY[0x277D6B1C0]];
    v12 = [(ArbitratorExpertSystemHandler *)self _retrieveReportRecordForDomain:v8 type:@"AGGREGATED" subType:0 process:0];
    v13 = v12;
    if (!v12)
    {
      v21 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "  No aggregated RESOURCE_NOTIFY stats found. Allowing report.", &v47, 2u);
      }

      [(ArbitratorExpertSystemHandler *)self recordReportForSignature:signatureCopy aggregateReport:0 specificReport:0];
      v7 = 1;
      goto LABEL_33;
    }

    [v12 lastSeen];
    v15 = v14;
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v18 = v17;

    v19 = debuggabilityLogHandle;
    v20 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG);
    if (86400 * (v18 / 0x15180) > 86400 * (v15 / 0x15180))
    {
      if (v20)
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "  Crossed day boundary. Reset daily RESOURCE_NOTIFY reporting limits.", &v47, 2u);
      }

      [(ArbitratorExpertSystemHandler *)self _removeAllReportRecords];
      [(ArbitratorExpertSystemHandler *)self recordReportForSignature:signatureCopy aggregateReport:0 specificReport:0];
      v7 = 1;
      goto LABEL_33;
    }

    if (v20)
    {
      v22 = v19;
      v47 = 134217984;
      v48 = [v13 count];
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "  %ld total reports for the day.", &v47, 0xCu);
    }

    v23 = [(ArbitratorExpertSystemHandler *)self _retrieveReportRecordForDomain:v8 type:v9 subType:v10 process:v11];
    v24 = debuggabilityLogHandle;
    v25 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v25)
      {
        v47 = 138413314;
        v48 = v8;
        v49 = 2112;
        *v50 = v9;
        *&v50[8] = 2112;
        *&v50[10] = v10;
        v51 = 2112;
        v52 = v11;
        v53 = 2112;
        v54 = v23;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "  Found report record for %@ : %@ : %@ (%@) - %@", &v47, 0x34u);
      }

      if ([v23 count] >= 5)
      {
        v26 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          v28 = [v23 count];
          v47 = 134218242;
          v48 = v28;
          v49 = 2112;
          *v50 = v11;
          v29 = "  Reached limit of %ld RESOURCE_NOTIFY reports for %@. Disallow report.";
          v30 = v27;
          v31 = 22;
LABEL_26:
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, v29, &v47, v31);

          goto LABEL_27;
        }

        goto LABEL_27;
      }

      [v23 lastSeen];
      v37 = v36;
      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSince1970];
      v40 = v37 - v39;

      v41 = debuggabilityLogHandle;
      if (v40 > -300.0)
      {
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v41;
          [v23 lastSeen];
          v47 = 138412802;
          v48 = v11;
          v49 = 1024;
          *v50 = 300;
          *&v50[4] = 2048;
          *&v50[6] = v42;
          v29 = "  Generated RESOURCE_NOTIFY report for %@ within the past %d seconds (%.4lf). Disallow report.";
          v30 = v27;
          v31 = 28;
          goto LABEL_26;
        }

LABEL_27:
        v7 = 0;
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }

      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v43 = v41;
        v44 = [v23 count];
        v47 = 134218498;
        v48 = v44;
        v49 = 2112;
        *v50 = v11;
        *&v50[8] = 1024;
        *&v50[10] = 5;
        _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "  %ld reports for %@ is still under the limit of %d. Allowing report.", &v47, 0x1Cu);
      }

      selfCopy2 = self;
      v33 = signatureCopy;
      v34 = v13;
      v35 = v23;
    }

    else
    {
      if (v25)
      {
        v47 = 138413058;
        v48 = v8;
        v49 = 2112;
        *v50 = v9;
        *&v50[8] = 2112;
        *&v50[10] = v10;
        v51 = 2112;
        v52 = v11;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "  No report record for %@ : %@ : %@ (%@). Allowing report.", &v47, 0x2Au);
      }

      selfCopy2 = self;
      v33 = signatureCopy;
      v34 = v13;
      v35 = 0;
    }

    [(ArbitratorExpertSystemHandler *)selfCopy2 recordReportForSignature:v33 aggregateReport:v34 specificReport:v35];
    v7 = 1;
    goto LABEL_32;
  }

  v6 = debuggabilityLogHandle;
  v7 = 1;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    LOWORD(v47) = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Resource notify microstackshot log dampening is disabled - allowing.", &v47, 2u);
  }

LABEL_34:

  v45 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)recordReportForSignature:(id)signature aggregateReport:(id)report specificReport:(id)specificReport
{
  v30 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  specificReportCopy = specificReport;
  v10 = *MEMORY[0x277D6B1C8];
  signatureCopy = signature;
  v12 = [signatureCopy objectForKeyedSubscript:v10];
  v13 = [signatureCopy objectForKeyedSubscript:*MEMORY[0x277D6B208]];
  v14 = [signatureCopy objectForKeyedSubscript:*MEMORY[0x277D6B1E8]];
  v15 = [signatureCopy objectForKeyedSubscript:*MEMORY[0x277D6B1C0]];

  date = [MEMORY[0x277CBEAA8] date];
  v17 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Updating RESOURCE_NOTIFY aggregate report statistics.", &v22, 2u);
  }

  if (reportCopy)
  {
    [reportCopy setCount:{objc_msgSend(reportCopy, "count") + 1}];
    [date timeIntervalSince1970];
    [reportCopy setLastSeen:?];
    [(ArbitratorExpertSystemHandler *)self _saveReportRecord:reportCopy];
  }

  else
  {
    v18 = [(ArbitratorExpertSystemHandler *)self _reportRecordKeyForDomain:v12 type:@"AGGREGATED" subType:0 process:0];
    [date timeIntervalSince1970];
    [(ArbitratorExpertSystemHandler *)self _addReportRecordWithKey:v18 count:1 lastSeen:?];
  }

  v19 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v22 = 138413058;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Updating RESOURCE_NOTIFY report statistics for %@ : %@ : %@ : %@", &v22, 0x2Au);
  }

  if (specificReportCopy)
  {
    [specificReportCopy setCount:{objc_msgSend(specificReportCopy, "count") + 1}];
    [date timeIntervalSince1970];
    [specificReportCopy setLastSeen:?];
    [(ArbitratorExpertSystemHandler *)self _saveReportRecord:specificReportCopy];
  }

  else
  {
    v20 = [(ArbitratorExpertSystemHandler *)self _reportRecordKeyForDomain:v12 type:v13 subType:v14 process:v15];
    [date timeIntervalSince1970];
    [(ArbitratorExpertSystemHandler *)self _addReportRecordWithKey:v20 count:1 lastSeen:?];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)triggerABCSnapshotWithSignature:(id)signature events:(id)events uuid:(id)uuid parameters:(id)parameters
{
  v33 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  eventsCopy = events;
  uuidCopy = uuid;
  parametersCopy = parameters;
  v14 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"no UUID";
    *buf = 138412802;
    if (uuidCopy)
    {
      v15 = uuidCopy;
    }

    v28 = v15;
    v29 = 2112;
    v30 = signatureCopy;
    v31 = 2112;
    v32 = eventsCopy;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Triggering a case for (%@) via SPI with signature: %@ events: %@", buf, 0x20u);
  }

  if ([(__CFString *)uuidCopy length])
  {
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:uuidCopy];
    queue = [(ExpertSystemHandlerCore *)self queue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__ArbitratorExpertSystemHandler_triggerABCSnapshotWithSignature_events_uuid_parameters___block_invoke;
    v22[3] = &unk_27898EF98;
    v23 = signatureCopy;
    selfCopy = self;
    v25 = eventsCopy;
    v26 = parametersCopy;
    [FlowAnalyticsEngine identifierForUUID:v16 replyQueue:queue reply:v22];

    v18 = v23;
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x277D6AFC8]);
    queue2 = [(ExpertSystemHandlerCore *)self queue];
    v18 = [v19 initWithQueue:queue2];

    [v18 snapshotWithSignature:signatureCopy duration:eventsCopy events:parametersCopy payload:&__block_literal_global_221 reply:0.0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __88__ArbitratorExpertSystemHandler_triggerABCSnapshotWithSignature_events_uuid_parameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 length])
  {
    v6 = [v5 isEqualToString:*MEMORY[0x277D6B5C0]];
    v7 = v13;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ([v8 length])
  {
    [*(a1 + 32) setObject:v8 forKeyedSubscript:*MEMORY[0x277D6B1A8]];
  }

  if ([v9 length])
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:*MEMORY[0x277D6B1C0]];
  }

  v10 = objc_alloc(MEMORY[0x277D6AFC8]);
  v11 = [*(a1 + 40) queue];
  v12 = [v10 initWithQueue:v11];

  [v12 snapshotWithSignature:*(a1 + 32) duration:*(a1 + 48) events:*(a1 + 56) payload:&__block_literal_global_217 reply:0.0];
}

void __88__ArbitratorExpertSystemHandler_triggerABCSnapshotWithSignature_events_uuid_parameters___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "ABC response was %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __88__ArbitratorExpertSystemHandler_triggerABCSnapshotWithSignature_events_uuid_parameters___block_invoke_219(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "ABC response was %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)setupParametersForDESysLogFilterProcess:(id)process
{
  v25[1] = *MEMORY[0x277D85DE8];
  processCopy = process;
  if ([processCopy processName])
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{objc_msgSend(processCopy, "processName")}];
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v4, 0}];
    v24 = *MEMORY[0x277D6B130];
    v22 = @"com.apple.PowerlogCore.DESysLogFilterProcess";
    v20[0] = @"processNames";
    v20[1] = @"loggingTimeframe";
    v21[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:3660];
    v21[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v23 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  }

  else
  {
    processId = [processCopy processId];
    v18 = *MEMORY[0x277D6B130];
    v16 = @"com.apple.PowerlogCore.DESysLogFilterProcess";
    v14 = @"processIDs";
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:processId];
    v13 = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v15 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19 = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)setupProcessNameForDESysLogFilterProcess:(id)process
{
  processCopy = process;
  processName = [processCopy processName];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (processName)
  {
    processName2 = [processCopy processName];

    v7 = [v5 initWithUTF8String:processName2];
  }

  else
  {
    processId = [processCopy processId];

    v7 = [v5 initWithFormat:@"pid %lu", processId];
  }

  return v7;
}

+ (id)internalStateDictionary
{
  v2 = +[ArbitratorExpertSystemHandler sharedInstance];
  internalStateDictionary = [v2 internalStateDictionary];

  return internalStateDictionary;
}

- (id)internalStateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->administrativeState];
  [dictionary setObject:v4 forKeyedSubscript:@"adminEnabled"];

  label = [(ExpertSystemStateCore *)self->currentState label];
  [dictionary setObject:label forKeyedSubscript:@"stateMachineState"];

  return dictionary;
}

- (id)_reportRecordKeyForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process
{
  domainCopy = domain;
  typeCopy = type;
  subTypeCopy = subType;
  processCopy = process;
  if ([domainCopy length] && objc_msgSend(typeCopy, "length"))
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{domainCopy, typeCopy, 0}];
    if ([(__CFString *)subTypeCopy length])
    {
      v14 = subTypeCopy;
    }

    else
    {
      v14 = @"-";
    }

    [v13 addObject:v14];
    if ([(__CFString *)processCopy length])
    {
      v15 = processCopy;
    }

    else
    {
      v15 = @"-";
    }

    [v13 addObject:v15];
    v16 = [v13 componentsJoinedByString:@"|"];
  }

  else
  {
    v17 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Domain and Type are required when generating report record key", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (id)_retrieveReportRecordForDomain:(id)domain type:(id)type subType:(id)subType process:(id)process
{
  v33 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  typeCopy = type;
  subTypeCopy = subType;
  processCopy = process;
  if ([domainCopy length] && objc_msgSend(typeCopy, "length"))
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [(ArbitratorExpertSystemHandler *)self _reportRecordKeyForDomain:domainCopy type:typeCopy subType:subTypeCopy process:processCopy];
    v16 = [(__CFString *)v15 length];
    v17 = debuggabilityLogHandle;
    if (v16)
    {
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v15;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Attempting to retrieve record for key %@", buf, 0xCu);
      }

      v18 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.ResourceNotify"];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 dictionaryForKey:v15];
        v21 = v20;
        if (v20)
        {
          [v20 objectForKeyedSubscript:@"count"];
          v22 = v30 = v14;
          v23 = [v21 objectForKeyedSubscript:@"lastSeen"];
          v24 = objc_alloc_init(RNReportRecord);
          -[RNReportRecord setCount:](v24, "setCount:", [v22 integerValue]);
          [v23 timeIntervalSince1970];
          [(RNReportRecord *)v24 setLastSeen:?];
          [(RNReportRecord *)v24 setKeyString:v15];

          v14 = v30;
        }

        else
        {
          v27 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v32 = v15;
            _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "Could not find a record for key %@", buf, 0xCu);
          }

          v24 = 0;
        }
      }

      else
      {
        v26 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = @"com.apple.symptomsd.ResourceNotify";
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "Unable to initialize user defaults for %@!", buf, 0xCu);
        }

        v24 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Cannot retrieve record for nil key!", buf, 2u);
      }

      v24 = 0;
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v25 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "Domain and Type are required", buf, 2u);
    }

    v24 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)_addReportRecordWithKey:(id)key count:(int64_t)count lastSeen:(double)seen
{
  v24[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([(__CFString *)keyCopy length])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.ResourceNotify"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:seen];
      v23[0] = @"count";
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:count];
      v23[1] = @"lastSeen";
      v24[0] = v11;
      v24[1] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

      v13 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        v17 = 138412802;
        v18 = keyCopy;
        v19 = 2048;
        seenCopy = seen;
        v21 = 2048;
        countCopy = count;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Creating record for %@ (lastSeen: %.0lf, count: %ld)", &v17, 0x20u);
      }

      [v9 setObject:v12 forKey:keyCopy];
    }

    else
    {
      v15 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = @"com.apple.symptomsd.ResourceNotify";
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Unable to initialize user defaults for %@!", &v17, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v14 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "A valid record key is required", &v17, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_saveReportRecord:(id)record
{
  v25[2] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (recordCopy)
  {
    v4 = objc_autoreleasePoolPush();
    keyString = [recordCopy keyString];
    if ([(__CFString *)keyString length])
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.ResourceNotify"];
      if (v6)
      {
        v7 = objc_alloc(MEMORY[0x277CBEAA8]);
        [recordCopy lastSeen];
        v8 = [v7 initWithTimeIntervalSince1970:?];
        v24[0] = @"count";
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(recordCopy, "count")}];
        v24[1] = @"lastSeen";
        v25[0] = v9;
        v25[1] = v8;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

        v11 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
        {
          v12 = v11;
          [recordCopy lastSeen];
          v18 = 138412802;
          v19 = keyString;
          v20 = 2048;
          v21 = v13;
          v22 = 2048;
          v23 = [recordCopy count];
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "Upating record for %@ to (lastSeen: %.0lf, count: %ld)", &v18, 0x20u);
        }

        [v6 setObject:v10 forKey:keyString];
      }

      else
      {
        v16 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          v18 = 138412290;
          v19 = @"com.apple.symptomsd.ResourceNotify";
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Unable to initialize user defaults for %@!", &v18, 0xCu);
        }
      }
    }

    else
    {
      v15 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "ReportRecord has a nil key string!", &v18, 2u);
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v14 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "A valid report record is required when updating", &v18, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeReportRecordForKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([(__CFString *)keyCopy length])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.ResourceNotify"];
    v6 = debuggabilityLogHandle;
    if (v5)
    {
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = keyCopy;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Removing record for %@", &v9, 0xCu);
      }

      [v5 removeObjectForKey:keyCopy];
    }

    else if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = @"com.apple.symptomsd.ResourceNotify";
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Unable to initialize user defaults for %@!", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "A valid record key is required for removing", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)observeSetupAssistantFinished
{
  if (!self->_observingSetupAssistantFinished)
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "Observing SetupAssistant notification", v5, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _scheduleNotificationForCarrierSeedUser, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    self->_observingSetupAssistantFinished = 1;
  }
}

- (void)removeSetupAssistantFinishedObserver
{
  if (self->_observingSetupAssistantFinished)
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "Removing SetupAssistant observer", v5, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.purplebuddy.setupdone", 0);
    self->_observingSetupAssistantFinished = 0;
  }
}

- (BOOL)requireUserNotification
{
  v2 = +[SystemProperties sharedInstance];
  if (![v2 carrierSeedBuild] || (objc_msgSend(v2, "internalBuild") & 1) != 0)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v3 = CFPreferencesCopyValue(@"ABCNotifiedCarrierSeedUser", @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (v3)
  {

    v4 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Already displayed a dialog about ABC to user.", buf, 2u);
    }

    goto LABEL_6;
  }

  v7 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Have not displayed a dialog about ABC to user.", v8, 2u);
  }

  v5 = 1;
LABEL_7:

  return v5;
}

- (void)setupAssistantFinished
{
  v3 = dispatch_time(0, 5000000000);
  queue = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ArbitratorExpertSystemHandler_setupAssistantFinished__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_after(v3, queue, block);
}

- (void)scheduleABCNotificationForCarrierSeedUser
{
  v3 = +[AppStateMonitor hasAnyForegroundApp];
  v4 = debuggabilityLogHandle;
  v5 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Foreground app detected. Will display ABC notification when the user is not busy.", buf, 2u);
    }

    if (!self->_foregroundStateObserver)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __74__ArbitratorExpertSystemHandler_scheduleABCNotificationForCarrierSeedUser__block_invoke;
      v11[3] = &unk_27898A690;
      v11[4] = self;
      v7 = [defaultCenter addObserverForName:@"kAppStateNotificationForegroundActivity" object:0 queue:0 usingBlock:v11];
      foregroundStateObserver = self->_foregroundStateObserver;
      self->_foregroundStateObserver = v7;
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Ready to display ABC notification to CarrierSeed user.", buf, 2u);
    }

    if (self->_foregroundStateObserver)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 removeObserver:self->_foregroundStateObserver name:@"kAppStateNotificationForegroundActivity" object:0];

      v10 = self->_foregroundStateObserver;
      self->_foregroundStateObserver = 0;
    }

    [(ArbitratorExpertSystemHandler *)self alertCarrierSeedUserAboutABC];
  }
}

void __74__ArbitratorExpertSystemHandler_scheduleABCNotificationForCarrierSeedUser__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityState"];
  if (([v4 BOOLValue] & 1) == 0)
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Application no longer foreground.", buf, 2u);
    }

    v6 = dispatch_time(0, 5000000000);
    v7 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__ArbitratorExpertSystemHandler_scheduleABCNotificationForCarrierSeedUser__block_invoke_255;
    block[3] = &unk_27898A0C8;
    block[4] = *(a1 + 32);
    dispatch_after(v6, v7, block);
  }
}

- (void)alertCarrierSeedUserAboutABC
{
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Displaying a dialog about ABC to CarrierSeed user", v4, 2u);
  }

  CFUserNotificationDisplayNotice(28800.0, 1uLL, 0, 0, 0, @"Auto Bug Capture", @"Auto Bug Capture detects when certain issues occur, including energy and networking issues and sends information about detected issues to Apple. This may include sysdiagnose logs, stack shots, daemon specific logs, network logs, and a snapshot of your network state. You can change this in Settings > Carrier > AutoBugCapture.", @"OK");
  [(ArbitratorExpertSystemHandler *)self removeSetupAssistantFinishedObserver];
  CFPreferencesSetValue(@"ABCNotifiedCarrierSeedUser", *MEMORY[0x277CBED28], @"com.apple.symptomsd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
}

@end