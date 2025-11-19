@interface SymptomExpertSystemHandler
+ (BOOL)noteSymptom:(id)a3;
+ (BOOL)parseEndpoint:(id)a3 intoURL:(id *)a4 host:(id *)a5 scheme:(id *)a6 path:(id *)a7;
+ (id)configureClass:(id)a3;
+ (id)internalStateDictionary;
+ (id)libtraceInfo:(id)a3;
+ (id)sharedInstance;
- (BOOL)didInstallProfileForKey:(id)a3;
- (BOOL)loadDefaultRules;
- (BOOL)loadModule:(id)a3 requiresBasebandModule:(BOOL)a4;
- (BOOL)noteSymptom:(id)a3;
- (BOOL)postCoreAnalyticsEvent:(id)a3 forEventName:(id)a4;
- (BOOL)urlIsAppleDomain:(id)a3;
- (NSDataDetector)urlDetector;
- (SymptomExpertSystemHandler)init;
- (_NSRange)rangeOfValueForSlotName:(id)a3 in:(id)a4;
- (id)analyticsCLIPSModuleDictForModule:(id)a3;
- (id)analyticsObserveModule:(id)a3 requiredModules:(id)a4 unloadModule:(id)a5;
- (id)arbitratorDictionaryForSymptom:(id)a3 procName:(id)a4 interfaceType:(id)a5 eventCount:(id)a6 duration:(id)a7;
- (id)deParamsDictForDiagnosticExtension:(id)a3 withDEParams:(id)a4;
- (id)getBatteryPercentage:(id)a3;
- (id)getOperatorName;
- (id)getSignalBars;
- (id)interfaceTypeForName:(id)a3;
- (id)internalStateDictionary;
- (id)obfuscatedEndpoint:(id)a3;
- (id)obfuscatedPrimaryComponent:(id)a3 obfuscationType:(id)a4;
- (id)obfuscatedSubcomponent:(id)a3 fromPrimaryEntry:(id)a4 withKey:(id)a5 obfuscation:(id)a6;
- (id)primaryComponent:(id)a3 obfuscationType:(id)a4;
- (id)serviceToFactString:(id)a3 type:(int64_t)a4;
- (id)symptomDictionaryForSymptom:(id)a3 domain:(id)a4 type:(id)a5;
- (void)_addAllObservers;
- (void)_addExternalRelayObservers;
- (void)_administrativeDisable;
- (void)_administrativeEnable;
- (void)_airplaySymptom:(id)a3;
- (void)_bringStateToDiagnosing;
- (void)_bringStateToIdle;
- (void)_bringStateToRunning;
- (void)_completeInitialization;
- (void)_configdSymptom:(id)a3;
- (void)_dumpState;
- (void)_libnetcoreSymptom:(id)a3;
- (void)_libtraceOSLog:(id)a3;
- (void)_performSeedCleanup;
- (void)_processAnomalousFlowSymptom:(id)a3 symptomName:(id)a4 categoryType:(id)a5;
- (void)_processLibnetcoreSymptom:(id)a3 symptomName:(id)a4;
- (void)_processSymptomsdEnergyBackgroundFullActivityMap:(id)a3 symptomName:(id)a4;
- (void)_processSymptomsdEnergyBackgroundRRCExcActivity:(id)a3 symptomName:(id)a4;
- (void)_processSymptomsdExcessiveFailedConnections:(id)a3 symptomName:(id)a4;
- (void)_processSymptomsdFlowCountExceededThreshold:(id)a3 symptomName:(id)a4;
- (void)_processSymptomsdNoDefaultRoute:(id)a3 symptomName:(id)a4;
- (void)_processSymptomsdRnfSymptom:(id)a3 symptomName:(id)a4 categoryType:(id)a5;
- (void)_processSymptomsdWiFiShimSymptom:(id)a3 symptomName:(id)a4;
- (void)_processUIPerformanceThunderingHerdCase:(id)a3 symptomName:(id)a4;
- (void)_removeAllObservers;
- (void)_removeDebuggabilityFolder;
- (void)_removeExternalRelayObservers;
- (void)_symptomsdSymptom:(id)a3;
- (void)_usageUpdaterSymptom:(id)a3;
- (void)addDiagnosticSession:(id)a3 hasDictionary:(id)a4 endSession:(id)a5;
- (void)adjustStrobeTimerInterval:(id)a3 maximum:(id)a4;
- (void)assertFactAndRun:(id)a3 module:(id)a4 reply:(id)a5;
- (void)assertFactAsSymptom:(id)a3 module:(id)a4;
- (void)assertFactString:(id)a3 moduleName:(id)a4 run:(BOOL)a5;
- (void)assertRelayFact:(id)a3 forRelayKey:(id)a4 moduleName:(id)a5;
- (void)cancelAllWaitingForFactTimers;
- (void)cancelDiagnosticSession:(id)a3;
- (void)cancelWaitForFactWithTemplateName:(id)a3;
- (void)checkObfuscationsInAllCaseSignatures;
- (void)clipsConsoleOutput:(id)a3 consoleChannel:(const char *)a4 forEngine:(id)a5;
- (void)coreTelephonyDumpCompletedTo:(id)a3 folderPrefix:(id)a4;
- (void)coreTelephonyDumpStartedTo:(id)a3 folderPrefix:(id)a4 gotFilteredOut:(BOOL)a5;
- (void)deactivateModule:(id)a3;
- (void)dealloc;
- (void)endDiagnosticSession:(id)a3;
- (void)fetchCoreTelephonyLoggingEnabledStatus;
- (void)handleEvent:(id)a3 forEventName:(id)a4;
- (void)ingestPendingOTAUpdates;
- (void)logSessionEventMessage:(id)a3;
- (void)logSessionEventProbe:(id)a3 endpoint:(id)a4 interface:(id)a5 status:(id)a6;
- (void)logSessionEventSymptom:(id)a3 process:(id)a4 endpoint:(id)a5 interface:(id)a6;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)observer:(id)a3 didChangeConfiguration:(id)a4 type:(id)a5;
- (void)onDisruptiveFlowChange:(id)a3;
- (void)operatorNameChangedForSubscription:(id)a3;
- (void)probeFactString:(id)a3 module:(id)a4 goIntoDiagnosing:(BOOL)a5 run:(BOOL)a6;
- (void)probeOutputFilePaths:(id)a3 forDiagSessionUUID:(id)a4;
- (void)probeStatusUpdate:(id)a3;
- (void)processIncomingOTAUpdate:(id)a3;
- (void)processRelayStateChange:(id)a3 key:(id)a4 relay:(id)a5 scalar:(BOOL)a6;
- (void)processWiFiAssociationChange:(BOOL)a3 atTime:(id)a4;
- (void)registerAllCLIPSCallbacks;
- (void)releaseAllRelayFacts;
- (void)requestCoreTelephonyDumpViaDiagnosticExtension:(id)a3 folderPrefix:(id)a4 dumpReason:(id)a5 resetBaseband:(id)a6;
- (void)resetPreviousObfuscations;
- (void)retractFact:(void *)a3 moduleName:(id)a4 run:(BOOL)a5;
- (void)retractFacts:(id)a3 runAfterLastFact:(BOOL)a4;
- (void)retractService:(id)a3 type:(int64_t)a4;
- (void)runEngine;
- (void)sendCaseSignaturesToSDRWithSessionID:(id)a3;
- (void)serviceAdded:(id)a3 type:(int64_t)a4;
- (void)serviceRemoved:(id)a3 type:(int64_t)a4;
- (void)serviceUpdated:(id)a3 type:(int64_t)a4;
- (void)setDefaultFacts;
- (void)setValue:(id)a3 forKey:(id)a4 toEBFProfiles:(id)a5;
- (void)signalStrengthChangedForSubscription:(id)a3;
- (void)snapshotDiagnosticSessionWithDomain:(id)a3 type:(id)a4 subType:(id)a5 subTypeContext:(id)a6 processID:(id)a7 processName:(id)a8 bundleID:(id)a9 interfaceType:(id)a10 threshold:(id)a11 sessionDuration:(id)a12;
- (void)startAnalyticsObserving:(id)a3;
- (void)startCAEventObserverTimer;
- (void)startDiagnosticSessionWithDomain:(id)a3 type:(id)a4 subType:(id)a5 subTypeContext:(id)a6 processID:(id)a7 processName:(id)a8 bundleID:(id)a9 interfaceType:(id)a10 threshold:(id)a11 sessionDuration:(id)a12 triggerRemoteCase:(id)a13;
- (void)startLoadDefaultRulesTimer:(double)a3;
- (void)stopAnalyticsObserving:(id)a3;
- (void)unloadAnalyticsObservedModules;
- (void)waitForFactWithTemplateName:(id)a3 module:(id)a4 timeout:(id)a5;
@end

@implementation SymptomExpertSystemHandler

void __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [*(a1 + 32) lastSymptomRun];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v14 = 67109376;
    v15 = v5;
    v16 = 2048;
    v17 = [v7 maximumDiagnosingTime];
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "NDFSM: periodic run (%ds of maximum %llds)", &v14, 0x12u);
  }

  if (v5 >= ([*(a1 + 32) diagnosingStrobeInterval] * 0.75))
  {
    if (v5 >= [*(a1 + 32) maximumDiagnosingTime])
    {
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = v9;
        v12 = [v10 maximumDiagnosingTime];
        v14 = 67109120;
        v15 = v12;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "NDFSM: maximumDiagnosingTime (%d) exceeded. OK to cancel session", &v14, 8u);
      }

      [*(a1 + 32) cancelDiagnosticSession:*(*(a1 + 32) + 424)];
    }

    else
    {
      [*(*(a1 + 32) + 312) logFacts:2];
      [*(a1 + 32) runEngine];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)runEngine
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = debuggabilityLogHandle;
  if (v2->_asyncKVOCount)
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      asyncKVOCount = v2->_asyncKVOCount;
      v13 = 134217984;
      v14 = asyncKVOCount;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "NDFSM: Delaying run until %lu pending KVO events have been processed", &v13, 0xCu);
    }

    objc_sync_exit(v2);

    v2->_pendingEngineRun = 1;
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v6 = "NDFSM: Delaying run until pending KVO events have been processed";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 2;
LABEL_10:
      _os_log_impl(&dword_23255B000, v7, v8, v6, &v13, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "NDFSM: No pending KVO events. Allowing run", &v13, 2u);
    }

    objc_sync_exit(v2);

    v10 = [(CLIPSShim *)v2->ruleEngine run];
    v2->_pendingEngineRun = 0;
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = v10;
      v6 = "NDFSM: finished run in %lld steps.";
      v7 = v11;
      v8 = OS_LOG_TYPE_INFO;
      v9 = 12;
      goto LABEL_10;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (SymptomExpertSystemHandler)init
{
  v3 = +[SystemProperties sharedInstance];
  v4 = [v3 isSymptomsdHelper];

  if (v4)
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NDFSM: Not supported in this process", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.symptoms.ndfES.queue", v7);
    v41.receiver = self;
    v41.super_class = SymptomExpertSystemHandler;
    v9 = [(ExpertSystemHandlerCore *)&v41 initWithQueue:v8];
    v10 = v9;
    if (v9)
    {
      v9->administrativeState = 2;
      v9->relayObservingState = 2;
      [(SymptomExpertSystemHandler *)v9 setDiagnosingStrobeInterval:3];
      [(SymptomExpertSystemHandler *)v10 setMaximumDiagnosingTime:15];
      v11 = [MEMORY[0x277CBEB18] array];
      [(SymptomExpertSystemHandler *)v10 setCaseSignatures:v11];

      v12 = [MEMORY[0x277CBEB18] array];
      [(SymptomExpertSystemHandler *)v10 setIncomingSymptoms:v12];

      v13 = [MEMORY[0x277CBEB18] array];
      [(SymptomExpertSystemHandler *)v10 setProcessedSymptoms:v13];

      v14 = [MEMORY[0x277CBEB38] dictionary];
      [(SymptomExpertSystemHandler *)v10 setDiagnosticSessionOutput:v14];

      v15 = [MEMORY[0x277CBEB38] dictionary];
      [(SymptomExpertSystemHandler *)v10 setObfuscations:v15];

      v16 = [MEMORY[0x277CBEB38] dictionary];
      [(SymptomExpertSystemHandler *)v10 setClipsFactsWaitTimers:v16];

      v17 = [MEMORY[0x277CBEB38] dictionary];
      pendingOTACLIPSUpdates = v10->_pendingOTACLIPSUpdates;
      v10->_pendingOTACLIPSUpdates = v17;

      v19 = [MEMORY[0x277CBEB38] dictionary];
      [(SymptomExpertSystemHandler *)v10 setLibtraceOSLogWhiteList:v19];

      v20 = [MEMORY[0x277CBEB58] set];
      [(SymptomExpertSystemHandler *)v10 setFilteredCTDumps:v20];

      v21 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      [(SymptomExpertSystemHandler *)v10 setSdrReporter:v21];

      v22 = [ProbeManager alloc];
      v23 = [(ExpertSystemHandlerCore *)v10 queue];
      v24 = [(ProbeManager *)v22 initWithQueue:v23];
      probeManager = v10->_probeManager;
      v10->_probeManager = v24;

      [(ProbeManager *)v10->_probeManager setDelegate:v10];
      v26 = [MEMORY[0x277CCAB98] defaultCenter];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __34__SymptomExpertSystemHandler_init__block_invoke;
      v38[3] = &unk_27898BD50;
      v27 = v10;
      v39 = v27;
      v28 = v8;
      v40 = v28;
      v29 = [v26 addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v38];
      relayReadyObserver = v27->relayReadyObserver;
      v27->relayReadyObserver = v29;

      v31 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, v28);
      v32 = init_siginfo_1;
      init_siginfo_1 = v31;

      v33 = init_siginfo_1;
      if (init_siginfo_1)
      {
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __34__SymptomExpertSystemHandler_init__block_invoke_3;
        handler[3] = &unk_27898A0C8;
        v37 = v27;
        dispatch_source_set_event_handler(v33, handler);
        dispatch_resume(init_siginfo_1);
      }

      v35 = v27;
      os_state_add_handler();
    }

    self = v10;

    v6 = self;
  }

  return v6;
}

void __34__SymptomExpertSystemHandler_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 48)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SymptomExpertSystemHandler_init__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

- (void)_completeInitialization
{
  v52[3] = *MEMORY[0x277D85DE8];
  v3 = +[PowerStateRelay defaultRelay];
  powerRelay = self->powerRelay;
  self->powerRelay = v3;

  v5 = +[SystemSettingsRelay defaultRelay];
  settingsRelay = self->settingsRelay;
  self->settingsRelay = v5;

  v7 = [NetworkStateRelay getStateRelayFor:5];
  cellRelay = self->cellRelay;
  self->cellRelay = v7;

  v9 = [NetworkStateRelay getStateRelayFor:3];
  wifiRelay = self->wifiRelay;
  self->wifiRelay = v9;

  v11 = +[CellFallbackHandler sharedInstance];
  rnfRelay = self->rnfRelay;
  self->rnfRelay = v11;

  v13 = +[SystemProperties sharedInstance];
  systemPropsRelay = self->systemPropsRelay;
  self->systemPropsRelay = v13;

  self->_internalBuild = [(SystemProperties *)self->systemPropsRelay internalBuild];
  v15 = [(SystemProperties *)self->systemPropsRelay carrierSeedBuild];
  self->_carrierSeedBuild = v15;
  self->_internalOrCarrierSeedBuild = self->_internalBuild || v15;
  self->_customerSeedBuild = [(SystemProperties *)self->systemPropsRelay customerSeedBuild];
  self->_vendorBuild = [(SystemProperties *)self->systemPropsRelay vendorBuild];
  v16 = +[MotionStateRelay sharedInstance];
  motionRelay = self->motionRelay;
  self->motionRelay = v16;

  if ([(SystemProperties *)self->systemPropsRelay basebandCapability])
  {
    v18 = +[CoreTelephonyShim sharedInstance];
    ctShim = self->ctShim;
    self->ctShim = v18;
  }

  v20 = objc_alloc_init(MEMORY[0x277CFD370]);
  analyticsConfigObserver = self->_analyticsConfigObserver;
  self->_analyticsConfigObserver = v20;

  v22 = self->_analyticsConfigObserver;
  v23 = [(ExpertSystemHandlerCore *)self queue];
  [(AnalyticsConfigurationObserver *)v22 setConfigurationObserverDelegate:self queue:v23];

  self->wifiRelayContext.relayName = "WiFi";
  *&self->wifiRelayContext.symptomLike = 0;
  self->wifiScalarRelayContext.relayName = "WiFi";
  *&self->wifiScalarRelayContext.symptomLike = 256;
  self->cellRelayContext.relayName = "Cell";
  *&self->cellRelayContext.symptomLike = 0;
  self->cellScalarRelayContext.relayName = "Cell";
  *&self->cellScalarRelayContext.symptomLike = 256;
  self->systemRelayContext.relayName = "System";
  *&self->systemRelayContext.symptomLike = 0;
  self->systemScalarRelayContext.relayName = "System";
  *&self->systemScalarRelayContext.symptomLike = 256;
  self->systemSymptomRelayContext.relayName = "System";
  *&self->systemSymptomRelayContext.symptomLike = 1;
  self->hardwareRelayContext.relayName = "Hardware";
  *&self->hardwareRelayContext.symptomLike = 0;
  [(SymptomExpertSystemHandler *)self _removeDebuggabilityFolder];
  if (!self->_customerSeedBuild)
  {
    [(SymptomExpertSystemHandler *)self _performSeedCleanup];
  }

  v24 = [SymptomExpertSystemState createStateWithLabel:@"idle" rank:0 entryPreds:0];
  objc_initWeak(&location, v24);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __53__SymptomExpertSystemHandler__completeInitialization__block_invoke;
  v50[3] = &unk_27898BD78;
  v50[4] = self;
  [v24 setEntryAction:v50];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_2;
  v48[3] = &unk_27898BDA0;
  objc_copyWeak(&v49, &location);
  v48[4] = self;
  [v24 setExitAction:v48];
  v25 = [SymptomExpertSystemState createStateWithLabel:@"running" rank:10 entryPreds:0];
  v46[4] = self;
  from = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_170;
  v46[3] = &unk_27898BD78;
  [v25 setEntryAction:v46];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_172;
  v44[3] = &unk_27898BDC8;
  objc_copyWeak(&v45, &from);
  [v25 setExitAction:v44];
  v26 = [SymptomExpertSystemDiagnosingState createStateWithLabel:@"diagnosing" rank:50 entryPreds:0];
  objc_initWeak(&v43, v26);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_2_173;
  v41[3] = &unk_27898BDA0;
  objc_copyWeak(&v42, &v43);
  v41[4] = self;
  [v26 setEntryAction:v41];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_2_175;
  v39[3] = &unk_27898BDA0;
  objc_copyWeak(&v40, &v43);
  v39[4] = self;
  [v26 setExitAction:v39];
  if (self->_internalOrCarrierSeedBuild || self->_customerSeedBuild || self->_vendorBuild)
  {
    v27 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "NDFSM registering observer for 'autoBugCaptureEnabled'", buf, 2u);
    }

    [(SystemSettingsRelay *)self->settingsRelay registerForAutoBugCaptureChangeNotifications];
    [(SystemSettingsRelay *)self->settingsRelay addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:7 context:0];
    if (self->_customerSeedBuild && !self->_observingAutoFeedbackAssistantEnabled)
    {
      [(SystemSettingsRelay *)self->settingsRelay addObserver:self forKeyPath:@"autoFeedbackAssistantEnable" options:3 context:0];
      self->_observingAutoFeedbackAssistantEnabled = 1;
    }

    self->_observingAutoBugCaptureEnabled = 1;
  }

  v52[0] = v24;
  v52[1] = v25;
  v52[2] = v26;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
  states = self->states;
  self->states = v28;

  v30 = [(ExpertSystemHandlerCore *)self queue];
  v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v30);
  clipsReleaseMemoryTimer = self->_clipsReleaseMemoryTimer;
  self->_clipsReleaseMemoryTimer = v31;

  dispatch_source_set_timer(self->_clipsReleaseMemoryTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  v33 = self->_clipsReleaseMemoryTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_183;
  handler[3] = &unk_27898A0C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v33, handler);
  dispatch_resume(self->_clipsReleaseMemoryTimer);
  v34 = [MEMORY[0x277CBEAA8] date];
  completedInitializationDate = self->_completedInitializationDate;
  self->_completedInitializationDate = v34;

  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v43);

  objc_destroyWeak(&v45);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SymptomExpertSystemHandler__completeInitialization__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopAnalyticsObserving:0];
  [*(*(a1 + 32) + 496) stopObservingConfigurationType:@"AutoBugCapture-NDF-CLIPS"];
  v2 = *(a1 + 32);
  if (*(v2 + 520))
  {
    dispatch_source_set_timer(*(v2 + 520), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 128))
  {
    [*(v2 + 128) unregisterForCTDumpNotifications];
    v2 = *(a1 + 32);
  }

  [v2 resetPreviousObfuscations];
  v3 = *(a1 + 32);
  if (v3[39])
  {
    [v3 releaseAllRelayFacts];
    [*(*(a1 + 32) + 312) setDelegate:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 312);
    *(v4 + 312) = 0;

    *(*(a1 + 32) + 320) = 0;
    v3 = *(a1 + 32);
  }

  [v3 _removeAllObservers];
  return 1;
}

uint64_t __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained sojournTime];
  [v3 stop];

  v4 = [*(*(a1 + 32) + 96) basebandChipset];
  v5 = [v4 length];

  if (v5)
  {
    [*(*(a1 + 32) + 128) registerForCTDumpNotifications];
  }

  if (([*(*(a1 + 32) + 496) startObservingConfigurationType:@"AutoBugCapture-NDF-CLIPS"] & 1) == 0)
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "NDFSM: Failed to start observing 'AutoBugCapture-NDF-CLIPS' configuration changes via AnalyticsConfigurationObserver", buf, 2u);
    }
  }

  if (*(*(a1 + 32) + 312))
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unexpected ruleEngine is not nil", v18, 2u);
    }

    goto LABEL_13;
  }

  v8 = objc_alloc_init(CLIPSShim);
  v9 = *(a1 + 32);
  v10 = *(v9 + 312);
  *(v9 + 312) = v8;

  [*(*(a1 + 32) + 312) conservePrettyPrintMemory:1];
  v11 = [*(a1 + 32) queue];

  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = v12[39];
    v14 = [v12 queue];
    [v13 setQueue:v14];
  }

  [*(*(a1 + 32) + 312) setDelegate:?];
  if ([*(*(a1 + 32) + 312) initializeWorkspace])
  {
    [*(*(a1 + 32) + 312) logMemoryStatistics:@"Post-allocation memory usage by CLIPS"];
    [*(a1 + 32) registerAllCLIPSCallbacks];
LABEL_13:
    v15 = 1;
    goto LABEL_14;
  }

  v17 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v19 = 0;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Failed to initialize workspace.", v19, 2u);
  }

  v15 = 0;
LABEL_14:

  return v15;
}

uint64_t __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_170(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 568) cancelAllProbes];
  [*(a1 + 32) cancelAllWaitingForFactTimers];
  [*(a1 + 32) releaseAllRelayFacts];
  [*(*(a1 + 32) + 312) reset];
  [*(*(a1 + 32) + 312) unloadConstructsForModule:@"Symptoms" unconditionally:0];
  [*(a1 + 32) unloadAnalyticsObservedModules];
  [*(a1 + 32) _removeAllObservers];
  v2 = *(a1 + 32);
  if (*(v2 + 320))
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "NDFSM already _loadedCLIPSRulesAndFacts", &v14, 2u);
    }

    [*(a1 + 32) _addAllObservers];
    [*(a1 + 32) setDefaultFacts];
    [*(a1 + 32) runEngine];
    [*(*(a1 + 32) + 312) releaseAllFreeMemory];
    v4 = *(*(a1 + 32) + 520);
    if (v4)
    {
      v5 = dispatch_time(0, 300000000000);
      dispatch_source_set_timer(v4, v5, 0x45D964B800uLL, 0xBEBC200uLL);
    }
  }

  else
  {
    *(v2 + 104) = 2;
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSinceDate:*(*(a1 + 32) + 576)];
    v8 = v7;

    if (v8 >= 45.0)
    {
      v11 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "NDFSM loadDefaultRules right now!", &v14, 2u);
      }

      [*(a1 + 32) loadDefaultRules];
    }

    else
    {
      v9 = 45.0 - v8;
      v10 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v14 = 134217984;
        v15 = v9;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "NDFSM loadDefaultRules in %f seconds", &v14, 0xCu);
      }

      [*(a1 + 32) startLoadDefaultRulesTimer:v9];
    }
  }

  if ([*(*(a1 + 32) + 432) count])
  {
    [*(*(a1 + 32) + 432) removeAllObjects];
  }

  [*(*(a1 + 32) + 416) removeAllObjects];
  [*(*(a1 + 32) + 440) removeAllObjects];
  [*(a1 + 32) setUrlDetector:0];
  [*(a1 + 32) setDiagSessionExpectedEnd:0];
  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_172(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained sojournTime];
  [v2 stop];

  return 1;
}

uint64_t __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_2_173(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setLastSymptomRun:v3];

  if ([*(*(a1 + 32) + 416) count])
  {
    v4 = [*(*(a1 + 32) + 416) objectAtIndexedSubscript:0];
    [WeakRetained setTriggeringSymptom:v4];
  }

  v5 = [*(a1 + 32) queue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);

  v7 = dispatch_time(0, 1000000000 * [*(a1 + 32) diagnosingStrobeInterval]);
  dispatch_source_set_timer(v6, v7, 1000000000 * [*(a1 + 32) diagnosingStrobeInterval], 0xBEBC200uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_3;
  handler[3] = &unk_27898A0C8;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(v6, handler);
  dispatch_source_set_cancel_handler(v6, &__block_literal_global_11);
  dispatch_resume(v6);
  [WeakRetained setStrobe:v6];

  return 1;
}

uint64_t __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_2_175(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setDiagnosingStrobeInterval:3];
  [*(a1 + 32) setMaximumDiagnosingTime:15];
  v3 = [WeakRetained strobe];
  v4 = v3;
  if (v3)
  {
    dispatch_source_cancel(v3);
    [WeakRetained setStrobe:0];
  }

  [WeakRetained setTriggeringSymptom:0];
  v5 = [WeakRetained sojournTime];
  [v5 stop];

  return 1;
}

uint64_t __53__SymptomExpertSystemHandler__completeInitialization__block_invoke_183(uint64_t a1)
{
  [*(*(a1 + 32) + 312) logMemoryStatistics:@"Periodic CLIPS Memory Release. Memory usage by CLIPS"];
  [*(*(a1 + 32) + 312) releaseAllFreeMemory];
  v2 = *(*(a1 + 32) + 312);

  return [v2 logMemoryStatistics:@"Post Memory Release. Memory usage by CLIPS"];
}

- (void)_bringStateToIdle
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->states objectAtIndexedSubscript:0];
  v4 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NDFSM _bringStateToIdle", buf, 2u);
  }

  currentState = self->currentState;
  if (currentState)
  {
    v6 = [(ExpertSystemStateCore *)currentState label];
    v7 = [v3 label];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->currentState;
        v11 = v9;
        v12 = [(ExpertSystemStateCore *)v10 label];
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "NDFSM Idling from %@ state", buf, 0xCu);
      }

      states = self->states;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __47__SymptomExpertSystemHandler__bringStateToIdle__block_invoke;
      v17[3] = &unk_27898BDF0;
      v17[4] = self;
      [(NSArray *)states enumerateObjectsWithOptions:2 usingBlock:v17];
    }
  }

  else
  {
    objc_storeStrong(&self->currentState, v3);
    v14 = [(ExpertSystemStateCore *)self->currentState sojournTime];
    [v14 start];

    v15 = [(ExpertSystemStateCore *)self->currentState entryAction];
    v15[2]();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __47__SymptomExpertSystemHandler__bringStateToIdle__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 isEqual:*(*(a1 + 32) + 32)];
  if (a3 && v5)
  {
    v6 = [v12 exitAction];
    v6[2]();

    v7 = [*(*(a1 + 32) + 40) objectAtIndex:a3 - 1];
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;

    v10 = [*(*(a1 + 32) + 32) sojournTime];
    [v10 start];

    [*(*(a1 + 32) + 32) setPreviousState:v12];
    v11 = [*(*(a1 + 32) + 32) entryAction];
    v11[2]();
  }
}

- (void)_bringStateToRunning
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->states objectAtIndexedSubscript:1];
  v4 = [(NSArray *)self->states objectAtIndexedSubscript:0];
  v5 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NDFSM _bringStateToRunning", &v23, 2u);
  }

  currentState = self->currentState;
  if (!currentState)
  {
    objc_storeStrong(&self->currentState, v4);
    v7 = [(ExpertSystemStateCore *)self->currentState entryAction];
    v7[2]();

    currentState = self->currentState;
  }

  v8 = [(ExpertSystemStateCore *)currentState label];
  v9 = [v3 label];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->currentState;
      v13 = v11;
      v14 = [(ExpertSystemStateCore *)v12 label];
      v23 = 138412290;
      v24 = v14;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "NDFSM running state from %@ state", &v23, 0xCu);
    }

    v15 = [(ExpertSystemStateCore *)self->currentState exitAction];
    v15[2]();

    v16 = self->currentState;
    v17 = v3;
    v18 = self->currentState;
    self->currentState = v17;
    v19 = v16;

    [(ExpertSystemStateCore *)self->currentState setPreviousState:v19];
    v20 = [(ExpertSystemStateCore *)self->currentState sojournTime];
    [v20 start];

    v21 = [(ExpertSystemStateCore *)self->currentState entryAction];

    v21[2](v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_bringStateToDiagnosing
{
  v3 = [(NSArray *)self->states objectAtIndexedSubscript:2];
  v4 = [(NSArray *)self->states objectAtIndexedSubscript:1];
  v5 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NDFSM _bringStateToDiagnosing", buf, 2u);
  }

  if (![(SymptomExpertSystemState *)self->currentState isEqual:v4])
  {
    v11 = [(SymptomExpertSystemState *)self->currentState isEqual:v3];
    v12 = debuggabilityLogHandle;
    if (v11)
    {
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v18 = 0;
      v13 = "Already in diagnosing state";
      v14 = &v18;
      v15 = v12;
      v16 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v17 = 0;
      v13 = "Must go from running to diagnosing";
      v14 = &v17;
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_23255B000, v15, v16, v13, v14, 2u);
    goto LABEL_13;
  }

  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "NDFSM diagnosing state from running state", v19, 2u);
  }

  v7 = [(ExpertSystemStateCore *)self->currentState exitAction];
  v7[2]();

  v8 = [(ExpertSystemStateCore *)self->currentState sojournTime];
  [v8 stop];

  objc_storeStrong(&self->currentState, v3);
  [(ExpertSystemStateCore *)self->currentState setPreviousState:v4];
  v9 = [(ExpertSystemStateCore *)self->currentState sojournTime];
  [v9 start];

  v10 = [(ExpertSystemStateCore *)self->currentState entryAction];
  v10[2]();

LABEL_13:
}

- (void)_administrativeEnable
{
  if (self->administrativeState == 2)
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "NDFSM admin enable", buf, 2u);
    }

    if (self->_internalBuild)
    {
      v4 = +[WiFiShim sharedInstance];
      [v4 setMonitorLQMBradycardia:1];
    }

    [(SymptomExpertSystemHandler *)self _bringStateToRunning];
    [(SymptomExpertSystemHandler *)self addObserver:self forKeyPath:@"stepper" options:3 context:"Admin"];
    self->_observingStepper = 1;
    if (!self->_didScheduleCleanupTask)
    {
      self->_didScheduleCleanupTask = 1;
      v5 = [(ExpertSystemHandlerCore *)self queue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __51__SymptomExpertSystemHandler__administrativeEnable__block_invoke;
      v6[3] = &unk_27898A0C8;
      v6[4] = self;
      [(PeriodicMaintenanceActivity *)HourlyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"SESH.CLIPSCleanup" queue:v5 activity:v6];
    }

    self->administrativeState = 1;
  }
}

void __51__SymptomExpertSystemHandler__administrativeEnable__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 104) == 1)
  {
    v2 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NDFSM Periodic Maintenance: Ready for CLIPS cleanup task", buf, 2u);
    }

    v3 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:0];
    v4 = [*(*(a1 + 32) + 32) label];
    v5 = [v3 label];
    v6 = [v4 isEqualToString:v5];

    if ((v6 & 1) == 0)
    {
      v7 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 32);
        v9 = v7;
        v10 = [v8 label];
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NDFSM state is '%@'. Eligible for periodic CLIPS cleanup.", buf, 0xCu);
      }

      [*(a1 + 32) _bringStateToIdle];
      v11 = dispatch_time(0, 2000000000);
      v12 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__SymptomExpertSystemHandler__administrativeEnable__block_invoke_200;
      block[3] = &unk_27898A0C8;
      block[4] = *(a1 + 32);
      dispatch_after(v11, v12, block);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_administrativeDisable
{
  if (self->administrativeState == 1)
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "NDFSM admin disable", v5, 2u);
    }

    if (self->_internalBuild)
    {
      v4 = +[WiFiShim sharedInstance];
      [v4 setMonitorLQMBradycardia:0];
    }

    [(SymptomExpertSystemHandler *)self _bringStateToIdle];
    if (self->_observingStepper)
    {
      [(SymptomExpertSystemHandler *)self removeObserver:self forKeyPath:@"stepper"];
      self->_observingStepper = 0;
    }

    self->administrativeState = 2;
  }
}

- (void)_addAllObservers
{
  if (self->relayObservingState == 2)
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "NDFSM observers enable", v5, 2u);
    }

    [(MotionStateRelay *)self->motionRelay subscribe];
    [(SymptomExpertSystemHandler *)self addObserver:self forKeyPath:@"incomingSymptoms" options:3 context:0];
    [(SymptomExpertSystemHandler *)self _addExternalRelayObservers];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel_onDisruptiveFlowChange_ name:@"kNotificationOfFlowDisruptingEvent" object:0];

    self->relayObservingState = 1;
  }
}

- (void)_addExternalRelayObservers
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  relayToFacts = self->relayToFacts;
  self->relayToFacts = v3;

  [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"active" options:7 context:&self->wifiRelayContext];
  [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"primary" options:7 context:&self->wifiRelayContext];
  [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"linkQuality" options:7 context:&self->wifiScalarRelayContext];
  [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"rxSignalThresholded" options:7 context:&self->wifiRelayContext];
  [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"interfaceIndex" options:7 context:&self->wifiScalarRelayContext];
  [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"supportsIPv4" options:7 context:&self->wifiRelayContext];
  [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"supportsIPv6" options:7 context:&self->wifiRelayContext];
  [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"rxSignalExemptions" options:7 context:&self->wifiScalarRelayContext];
  [(NetworkStateRelay *)self->cellRelay addObserver:self forKeyPath:@"active" options:7 context:&self->cellRelayContext];
  [(NetworkStateRelay *)self->cellRelay addObserver:self forKeyPath:@"primary" options:7 context:&self->cellRelayContext];
  [(NetworkStateRelay *)self->cellRelay addObserver:self forKeyPath:@"linkQuality" options:7 context:&self->cellScalarRelayContext];
  [(NetworkStateRelay *)self->cellRelay addObserver:self forKeyPath:@"rxSignalThresholded" options:7 context:&self->cellRelayContext];
  [(NetworkStateRelay *)self->cellRelay addObserver:self forKeyPath:@"interfaceIndex" options:7 context:&self->cellScalarRelayContext];
  [(NetworkStateRelay *)self->cellRelay addObserver:self forKeyPath:@"supportsIPv4" options:7 context:&self->cellRelayContext];
  [(NetworkStateRelay *)self->cellRelay addObserver:self forKeyPath:@"supportsIPv6" options:7 context:&self->cellRelayContext];
  [(PowerStateRelay *)self->powerRelay addObserver:self forKeyPath:@"pluggedIn" options:7 context:&self->systemRelayContext];
  [(PowerStateRelay *)self->powerRelay addObserver:self forKeyPath:@"screenNotDark" options:7 context:&self->systemRelayContext];
  [(SystemProperties *)self->systemPropsRelay addObserver:self forKeyPath:@"deviceClass" options:7 context:&self->systemScalarRelayContext];
  [(SystemProperties *)self->systemPropsRelay addObserver:self forKeyPath:@"internalBuild" options:7 context:&self->systemRelayContext];
  [(SystemProperties *)self->systemPropsRelay addObserver:self forKeyPath:@"carrierSeedBuild" options:7 context:&self->systemRelayContext];
  [(SystemProperties *)self->systemPropsRelay addObserver:self forKeyPath:@"customerSeedBuild" options:7 context:&self->systemRelayContext];
  [(SystemProperties *)self->systemPropsRelay addObserver:self forKeyPath:@"vendorBuild" options:7 context:&self->systemRelayContext];
  [(SystemProperties *)self->systemPropsRelay addObserver:self forKeyPath:@"basebandChipset" options:7 context:&self->hardwareRelayContext];
  [(SystemSettingsRelay *)self->settingsRelay addObserver:self forKeyPath:@"airplaneModeSwitchEnabled" options:7 context:&self->systemSymptomRelayContext];
  [(SystemSettingsRelay *)self->settingsRelay addObserver:self forKeyPath:@"wifiEnabled" options:7 context:&self->systemSymptomRelayContext];
  [(SystemSettingsRelay *)self->settingsRelay addObserver:self forKeyPath:@"cellDataSwitchEnabled" options:7 context:&self->systemSymptomRelayContext];
  [(SystemSettingsRelay *)self->settingsRelay addObserver:self forKeyPath:@"rnfEnabled" options:7 context:&self->systemSymptomRelayContext];
  [(CellFallbackHandler *)self->rnfRelay addObserver:self forKeyPath:@"rnfActivated" options:7 context:&self->systemSymptomRelayContext];
  [(CellFallbackHandler *)self->rnfRelay addObserver:self forKeyPath:@"wifiCallUnderway" options:7 context:&self->systemRelayContext];
  [(MotionStateRelay *)self->motionRelay addObserver:self forKeyPath:@"isStationary" options:7 context:&self->systemRelayContext];
  ctShim = self->ctShim;
  if (ctShim)
  {
    [(CoreTelephonyShim *)ctShim addDelegate:self];
    v6 = [(CoreTelephonyShim *)self->ctShim subscriptions];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v6 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v10)];
          if (v11)
          {
            [(SymptomExpertSystemHandler *)self operatorNameChangedForSubscription:v11];
            [(SymptomExpertSystemHandler *)self signalStrengthChangedForSubscription:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }
  }

  v12 = +[IOKitHandler sharedInstance];
  [v12 addObserver:self forKeyPath:@"mostRecentAPWakeMachTime" options:1 context:0];

  v13 = +[IOKitHandler sharedInstance];
  [v13 addObserver:self forKeyPath:@"mostRecentAPSleepMachTime" options:1 context:0];

  if (self->lastWiFiAssociationTime)
  {
    goto LABEL_17;
  }

  if ([(NetworkStateRelay *)self->wifiRelay primary])
  {
    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-60.0];
    lastWiFiAssociationTime = self->lastWiFiAssociationTime;
    self->lastWiFiAssociationTime = v14;

    v16 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v17 = self->lastWiFiAssociationTime;
      v18 = v16;
      [(NSDate *)v17 timeIntervalSince1970];
      *buf = 134217984;
      v26 = v19;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "NDFSM Establishing pseudo wifi association time of %.0lf", buf, 0xCu);
    }
  }

  if (self->lastWiFiAssociationTime)
  {
LABEL_17:
    [(SymptomExpertSystemHandler *)self processWiFiAssociationChange:1 atTime:?];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeAllObservers
{
  if (self->relayObservingState == 1)
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "NDFSM observers disable", v5, 2u);
    }

    [(MotionStateRelay *)self->motionRelay unsubscribe];
    [(SymptomExpertSystemHandler *)self removeObserver:self forKeyPath:@"incomingSymptoms"];
    [(SymptomExpertSystemHandler *)self _removeExternalRelayObservers];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:@"kNotificationOfFlowDisruptingEvent" object:0];

    self->relayObservingState = 2;
  }
}

- (void)_removeExternalRelayObservers
{
  [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"active"];
  [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"primary"];
  [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"linkQuality"];
  [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"rxSignalThresholded"];
  [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"interfaceIndex"];
  [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"supportsIPv4"];
  [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"supportsIPv6"];
  [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"rxSignalExemptions"];
  [(NetworkStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"active"];
  [(NetworkStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"primary"];
  [(NetworkStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"linkQuality"];
  [(NetworkStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"rxSignalThresholded"];
  [(NetworkStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"interfaceIndex"];
  [(NetworkStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"supportsIPv4"];
  [(NetworkStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"supportsIPv6"];
  [(PowerStateRelay *)self->powerRelay removeObserver:self forKeyPath:@"pluggedIn"];
  [(PowerStateRelay *)self->powerRelay removeObserver:self forKeyPath:@"screenNotDark"];
  [(SystemProperties *)self->systemPropsRelay removeObserver:self forKeyPath:@"deviceClass"];
  [(SystemProperties *)self->systemPropsRelay removeObserver:self forKeyPath:@"internalBuild"];
  [(SystemProperties *)self->systemPropsRelay removeObserver:self forKeyPath:@"carrierSeedBuild"];
  [(SystemProperties *)self->systemPropsRelay removeObserver:self forKeyPath:@"customerSeedBuild"];
  [(SystemProperties *)self->systemPropsRelay removeObserver:self forKeyPath:@"vendorBuild"];
  [(SystemProperties *)self->systemPropsRelay removeObserver:self forKeyPath:@"basebandChipset"];
  [(SystemSettingsRelay *)self->settingsRelay removeObserver:self forKeyPath:@"airplaneModeSwitchEnabled"];
  [(SystemSettingsRelay *)self->settingsRelay removeObserver:self forKeyPath:@"wifiEnabled"];
  [(SystemSettingsRelay *)self->settingsRelay removeObserver:self forKeyPath:@"cellDataSwitchEnabled"];
  [(SystemSettingsRelay *)self->settingsRelay removeObserver:self forKeyPath:@"rnfEnabled"];
  [(CellFallbackHandler *)self->rnfRelay removeObserver:self forKeyPath:@"rnfActivated"];
  [(CellFallbackHandler *)self->rnfRelay removeObserver:self forKeyPath:@"wifiCallUnderway"];
  [(MotionStateRelay *)self->motionRelay removeObserver:self forKeyPath:@"isStationary"];
  ctShim = self->ctShim;
  if (ctShim)
  {
    [(CoreTelephonyShim *)ctShim removeDelegate:self];
  }

  v4 = +[IOKitHandler sharedInstance];
  [v4 removeObserver:self forKeyPath:@"mostRecentAPWakeMachTime"];

  v5 = +[IOKitHandler sharedInstance];
  [v5 removeObserver:self forKeyPath:@"mostRecentAPSleepMachTime"];
}

- (void)dealloc
{
  [(SymptomExpertSystemHandler *)self _administrativeDisable];
  if (self->_observingAutoBugCaptureEnabled)
  {
    [(SystemSettingsRelay *)self->settingsRelay removeObserver:self forKeyPath:@"autoBugCaptureEnabled"];
    if (self->_customerSeedBuild && self->_observingAutoFeedbackAssistantEnabled)
    {
      [(SystemSettingsRelay *)self->settingsRelay removeObserver:self forKeyPath:@"autoFeedbackAssistantEnable"];
    }
  }

  if (self->relayReadyObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->relayReadyObserver];
  }

  [(SymptomExpertSystemHandler *)self stopAnalyticsObserving:0];
  clipsReleaseMemoryTimer = self->_clipsReleaseMemoryTimer;
  if (clipsReleaseMemoryTimer)
  {
    dispatch_source_cancel(clipsReleaseMemoryTimer);
    v5 = self->_clipsReleaseMemoryTimer;
    self->_clipsReleaseMemoryTimer = 0;
  }

  clipsResetTimer = self->_clipsResetTimer;
  if (clipsResetTimer)
  {
    dispatch_source_cancel(clipsResetTimer);
    v7 = self->_clipsResetTimer;
    self->_clipsResetTimer = 0;
  }

  clipsCAEventObserverTimer = self->_clipsCAEventObserverTimer;
  if (clipsCAEventObserverTimer)
  {
    dispatch_source_cancel(clipsCAEventObserverTimer);
    v9 = self->_clipsCAEventObserverTimer;
    self->_clipsCAEventObserverTimer = 0;
  }

  loggingProfileTimeoutTimer = self->_loggingProfileTimeoutTimer;
  if (loggingProfileTimeoutTimer)
  {
    dispatch_source_cancel(loggingProfileTimeoutTimer);
    v11 = self->_loggingProfileTimeoutTimer;
    self->_loggingProfileTimeoutTimer = 0;
  }

  v12.receiver = self;
  v12.super_class = SymptomExpertSystemHandler;
  [(ExpertSystemHandlerCore *)&v12 dealloc];
}

- (void)_removeDebuggabilityFolder
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 1;
  if ([v3 fileExistsAtPath:@"/private/var/networkd/Library/Logs/Debuggability/" isDirectory:&v14] && v14 == 1)
  {
    v13 = 0;
    v4 = [v3 removeItemAtPath:@"/private/var/networkd/Library/Logs/Debuggability/" error:&v13];
    v5 = v13;
    if ((v4 & 1) == 0)
    {
      v6 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = @"/private/var/networkd/Library/Logs/Debuggability/";
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Removal of %@ folder failed because %@", buf, 0x16u);
      }

      v7 = [v5 domain];
      if ([v7 isEqualToString:*MEMORY[0x277CCA050]] && objc_msgSend(v5, "code") == 513)
      {

        goto LABEL_11;
      }

      v8 = [v5 domain];
      if (([v8 isEqualToString:*MEMORY[0x277CCA5B8]] & 1) == 0)
      {

        goto LABEL_13;
      }

      v9 = [v5 code];

      if (v9 == 13)
      {
LABEL_11:
        v10 = [[SymptomsFileCleaner alloc] initWithQueue:0];
        [(SymptomExpertSystemHandler *)self setAbcCleaner:v10];

        [(SymptomsFileCleaner *)self->_abcCleaner setDelegate:self];
        abcCleaner = self->_abcCleaner;
        v15 = @"/private/var/networkd/Library/Logs/Debuggability/";
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
        [(SymptomsFileCleaner *)abcCleaner cleanupFiles:v7];
LABEL_13:
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_performSeedCleanup
{
  if ([(SymptomExpertSystemHandler *)self didInstallProfileForKey:@"com.apple.basebandlogging"])
  {
    [(CoreTelephonyShim *)self->ctShim enableCoreTelephonyLoggingForCustomerSeed:0];

    [(SymptomExpertSystemHandler *)self setValue:0 forKey:@"com.apple.basebandlogging" toEBFProfiles:0];
  }
}

- (BOOL)didInstallProfileForKey:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 objectForKey:@"EnhancedBetaFeedbackProfiles"];

  v7 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "NDFSM: Existing EnhancedBetaFeedbackProfiles Pref: %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 mutableCopy];
    v9 = [v8 count];
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = [v8 allKeys];
        v11 = [v10 firstObject];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v4;
            _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "NDFSM Found %@ in EnhancedBetaFeedbackProfiles", buf, 0xCu);
          }

          v14 = 1;
          goto LABEL_26;
        }
      }

      else
      {
        v20 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v33 = v8;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "NDFSM Found unexpected content in EnhancedBetaFeedbackProfiles %@", buf, 0xCu);
        }

        v21 = [v8 allKeys];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v29;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v29 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [(SymptomExpertSystemHandler *)self setValue:0 forKey:*(*(&v28 + 1) + 8 * i) toEBFProfiles:v8];
            }

            v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v23);
        }
      }
    }

    else
    {
      v19 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "NDFSM Found an empty EnhancedBetaFeedbackProfiles", buf, 2u);
      }
    }

    v14 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v15 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v16 = v15;
    v17 = objc_opt_class();
    *buf = 138412546;
    v33 = v6;
    v34 = 2112;
    v35 = v17;
    v18 = v17;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "NDFSM Found a unexpected EnhancedBetaFeedbackProfiles class %@ (%@)", buf, 0x16u);
  }

  v14 = 0;
LABEL_27:

  v26 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)setValue:(id)a3 forKey:(id)a4 toEBFProfiles:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
LABEL_23:
      [v10 setObject:v7 forKeyedSubscript:v8];
      goto LABEL_24;
    }

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [v11 objectForKey:@"EnhancedBetaFeedbackProfiles"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = debuggabilityLogHandle;
    if (isKindOfClass)
    {
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 138412290;
        *&v25[4] = v12;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "NDFSM: Found existing EnhancedBetaFeedbackProfiles 1: %@", v25, 0xCu);
      }

      v10 = [v12 mutableCopy];
      if (v10)
      {
        goto LABEL_22;
      }
    }

    else if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v14;
      *v25 = 138412546;
      *&v25[4] = v12;
      *&v25[12] = 2112;
      *&v25[14] = objc_opt_class();
      v20 = *&v25[14];
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "NDFSM Found a unexpected EnhancedBetaFeedbackProfiles class %@ (%@) 2", v25, 0x16u);
    }

    v10 = [MEMORY[0x277CBEB38] dictionary];
LABEL_22:

    goto LABEL_23;
  }

  if (v9)
  {
    [v9 setObject:0 forKeyedSubscript:v8];
    if (![v10 count])
    {

      v10 = 0;
    }

    goto LABEL_24;
  }

  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v15 objectForKey:@"EnhancedBetaFeedbackProfiles"];

  if (v10)
  {
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();
    v17 = debuggabilityLogHandle;
    if ((v16 & 1) == 0)
    {
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v22 = v17;
      *v25 = 138412546;
      *&v25[4] = v10;
      *&v25[12] = 2112;
      *&v25[14] = objc_opt_class();
      v24 = *&v25[14];
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "NDFSM Found a unexpected EnhancedBetaFeedbackProfiles class %@ (%@) 3", v25, 0x16u);

      goto LABEL_27;
    }

    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138412290;
      *&v25[4] = v10;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "NDFSM: Found existing EnhancedBetaFeedbackProfiles 2: %@", v25, 0xCu);
    }

    v18 = [v10 mutableCopy];
    [v18 setObject:0 forKeyedSubscript:v8];
    if (v18 && ![v18 count])
    {

      v18 = 0;
    }

    v10 = v18;
LABEL_24:
    v21 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138412290;
      *&v25[4] = v10;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "NDFSM: Saving off new EnhancedBetaFeedbackProfiles Pref: %@", v25, 0xCu);
    }

    v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v22 setObject:v10 forKey:@"EnhancedBetaFeedbackProfiles"];
LABEL_27:
  }

LABEL_28:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_dumpState
{
  v38 = *MEMORY[0x277D85DE8];
  v28 = [(NSArray *)self->states objectAtIndexedSubscript:0];
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    currentState = self->currentState;
    v5 = v3;
    v6 = [(ExpertSystemStateCore *)currentState label];
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NDFSM Current state: %@", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = self->states;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
        v13 = [(NSArray *)self->states objectAtIndexedSubscript:0];

        if (v12 != v13)
        {
          v14 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            v16 = [v12 label];
            v17 = [v12 sojournTime];
            [v17 total];
            *buf = 138412546;
            v34 = v16;
            v35 = 2048;
            v36 = v18;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "NDFSM Cumulative time on state %@: %f", buf, 0x16u);
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v9);
  }

  v19 = [(ExpertSystemStateCore *)self->currentState label];
  v20 = [v28 label];
  v21 = [v19 isEqualToString:v20];

  if ((v21 & 1) == 0)
  {
    [(CLIPSShim *)self->ruleEngine logFacts:1];
  }

  v22 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v24 = +[SystemSettingsRelay defaultRelay];
    v25 = [v24 autoFeedbackAssistantEnable];
    v26 = "off";
    if (v25)
    {
      v26 = "on";
    }

    *buf = 136446210;
    v34 = v26;
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "NDFSM: autoFeedbackAssistantEnable setting is %{public}s", buf, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)processRelayStateChange:(id)a3 key:(id)a4 relay:(id)a5 scalar:(BOOL)a6
{
  v6 = a6;
  v56 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if ([v12 isEqualToString:@"System"])
  {
    if ([v11 isEqualToString:@"internalBuild"] && v14)
    {
      v15 = [(ExpertSystemHandlerCore *)self queue];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __71__SymptomExpertSystemHandler_processRelayStateChange_key_relay_scalar___block_invoke;
      v46[3] = &unk_27898A7D0;
      v46[4] = self;
      v16 = &v47;
      v47 = v14;
      v17 = v46;
LABEL_17:
      dispatch_async(v15, v17);

      goto LABEL_18;
    }

    if ([v11 isEqualToString:@"carrierSeedBuild"] && v14)
    {
      v15 = [(ExpertSystemHandlerCore *)self queue];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __71__SymptomExpertSystemHandler_processRelayStateChange_key_relay_scalar___block_invoke_303;
      v44[3] = &unk_27898A7D0;
      v44[4] = self;
      v16 = &v45;
      v45 = v14;
      v17 = v44;
      goto LABEL_17;
    }

    if ([v11 isEqualToString:@"customerSeedBuild"] && v14)
    {
      v15 = [(ExpertSystemHandlerCore *)self queue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __71__SymptomExpertSystemHandler_processRelayStateChange_key_relay_scalar___block_invoke_304;
      v42[3] = &unk_27898A7D0;
      v42[4] = self;
      v16 = &v43;
      v43 = v14;
      v17 = v42;
      goto LABEL_17;
    }

    if ([v11 isEqualToString:@"vendorBuild"] && v14)
    {
      v15 = [(ExpertSystemHandlerCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__SymptomExpertSystemHandler_processRelayStateChange_key_relay_scalar___block_invoke_305;
      block[3] = &unk_27898A7D0;
      block[4] = self;
      v16 = &v41;
      v41 = v14;
      v17 = block;
      goto LABEL_17;
    }
  }

LABEL_18:
  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", v12, v11];
  v19 = [(NSMutableDictionary *)self->relayToFacts objectForKeyedSubscript:v18];
  if (v19)
  {
    v20 = v10;
    v21 = v11;
    v22 = v14;
    v23 = v6;
    v24 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v25 = v24;
      v26 = [v19 pointerValue];
      *buf = 138412546;
      v49 = v18;
      v50 = 2048;
      v51 = v26;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "NDFSM: Relay retracting old fact, for %@ (%p)", buf, 0x16u);
    }

    -[SymptomExpertSystemHandler retractFact:moduleName:run:](self, "retractFact:moduleName:run:", [v19 pointerValue], @"COMMON", 0);
    -[CLIPSShim releaseFact:](self->ruleEngine, "releaseFact:", [v19 pointerValue]);
    [(NSMutableDictionary *)self->relayToFacts removeObjectForKey:v18];
    v6 = v23;
    v14 = v22;
    v11 = v21;
    v10 = v20;
  }

  if ([v12 isEqualToString:@"Hardware"])
  {
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(Hardware (component \"%@\"", v11, v10, v38];
LABEL_32:
    v34 = v27;
    goto LABEL_34;
  }

  if (v14)
  {
    if (v6)
    {
      v28 = objc_alloc(MEMORY[0x277CCACA8]);
      v37 = v11;
      v39 = [v14 integerValue];
      v36 = v12;
      v29 = @"(State (component %@) (attribute %@) (value %ld))";
LABEL_31:
      v27 = [v28 initWithFormat:v29, v36, v37, v39];
      goto LABEL_32;
    }

    if ([v10 BOOLValue])
    {
      v28 = objc_alloc(MEMORY[0x277CCACA8]);
      v37 = v11;
      v39 = [v14 BOOLValue];
      v36 = v12;
      v29 = @"(State (component %@) (attribute %@) (value %d))";
      goto LABEL_31;
    }
  }

  else
  {
    v30 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v31 = v30;
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138413058;
      v49 = v33;
      v50 = 2112;
      v51 = v10;
      v52 = 2112;
      v53 = v12;
      v54 = 2112;
      v55 = v11;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "NDFSM: Unhandled class %@ (value: %@) for relay %@, key %@", buf, 0x2Au);
    }
  }

  v34 = 0;
LABEL_34:
  if ([v34 length])
  {
    [(SymptomExpertSystemHandler *)self assertRelayFact:v34 forRelayKey:v18 moduleName:@"COMMON"];
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __71__SymptomExpertSystemHandler_processRelayStateChange_key_relay_scalar___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 381) = [*(a1 + 40) BOOLValue];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 381);
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NDFSM: SESH _internalBuild is %d", v7, 8u);
  }

  v4 = *(a1 + 32);
  if (v4[381])
  {
    v5 = 1;
  }

  else
  {
    v5 = v4[382];
  }

  v4[383] = v5 & 1;
  v6 = *MEMORY[0x277D85DE8];
}

void __71__SymptomExpertSystemHandler_processRelayStateChange_key_relay_scalar___block_invoke_303(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 382) = [*(a1 + 40) BOOLValue];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 382);
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NDFSM: SESH _carrierSeedBuild is %d", v7, 8u);
  }

  v4 = *(a1 + 32);
  if (v4[381])
  {
    v5 = 1;
  }

  else
  {
    v5 = v4[382];
  }

  v4[383] = v5 & 1;
  v6 = *MEMORY[0x277D85DE8];
}

void __71__SymptomExpertSystemHandler_processRelayStateChange_key_relay_scalar___block_invoke_304(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 384) = [*(a1 + 40) BOOLValue];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 384);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NDFSM: SESH _customerSeedBuild is %d", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __71__SymptomExpertSystemHandler_processRelayStateChange_key_relay_scalar___block_invoke_305(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 385) = [*(a1 + 40) BOOLValue];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 385);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NDFSM: SESH _vendorBuild is %d", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)assertRelayFact:(id)a3 forRelayKey:(id)a4 moduleName:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(SymptomExpertSystemHandler *)self assertFactString:v8 moduleName:a5 run:0];
  if (v10)
  {
    v11 = v10;
    [(CLIPSShim *)self->ruleEngine retainFact:v10];
    v12 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = v8;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "NDFSM: Relay asserted fact:  %@ (%p)", &v15, 0x16u);
    }

    v13 = [MEMORY[0x277CCAE60] valueWithPointer:v11];
    [(NSMutableDictionary *)self->relayToFacts setObject:v13 forKeyedSubscript:v9];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)releaseAllRelayFacts
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->relayToFacts allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        -[CLIPSShim releaseFact:](self->ruleEngine, "releaseFact:", [*(*(&v9 + 1) + 8 * v7++) pointerValue]);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->relayToFacts removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)operatorNameChangedForSubscription:(id)a3
{
  v4 = [a3 copy];
  v5 = [(ExpertSystemHandlerCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SymptomExpertSystemHandler_operatorNameChangedForSubscription___block_invoke;
  v7[3] = &unk_27898A7D0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__SymptomExpertSystemHandler_operatorNameChangedForSubscription___block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"operatorName"];
  v2 = [*(a1 + 40) activeDataSIMOperatorName];
  if (![v2 length])
  {
    goto LABEL_7;
  }

  v3 = [*(a1 + 40) lastActiveDataSIMOperatorName];
  if (!v3)
  {

    goto LABEL_6;
  }

  v4 = v3;
  v5 = [*(a1 + 40) lastActiveDataSIMOperatorName];
  v6 = [*(a1 + 40) activeDataSIMOperatorName];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_6:
    v2 = [*(a1 + 40) activeDataSIMOperatorName];
    [*(a1 + 40) setLastActiveDataSIMOperatorName:v2];
LABEL_7:
  }

  [*(a1 + 40) setActiveDataSIMOperatorName:v13];
  if (([*(*(a1 + 40) + 312) constructLoadStateForModule:@"Baseband"] - 1) <= 1)
  {
    v8 = [*(*(a1 + 40) + 312) slotsStringForTemplate:@"CellSubscription" fromDictionary:*(a1 + 32) moduleName:@"Baseband"];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ %@)", @"CellSubscription", v8];
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [*(a1 + 32) objectForKeyedSubscript:@"slot"];
    v12 = [v10 initWithFormat:@"%@.%@", v11, @"operatorName"];

    [*(a1 + 40) assertRelayFact:v9 forRelayKey:v12 moduleName:@"Baseband"];
  }
}

- (void)signalStrengthChangedForSubscription:(id)a3
{
  v4 = [a3 copy];
  v5 = [(ExpertSystemHandlerCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SymptomExpertSystemHandler_signalStrengthChangedForSubscription___block_invoke;
  v7[3] = &unk_27898A7D0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__SymptomExpertSystemHandler_signalStrengthChangedForSubscription___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"bars"];
  v2 = [*(a1 + 40) lastActiveDataSIMSignalBars];
  if (v2 != [*(a1 + 40) activeDataSIMSignalBars])
  {
    [*(a1 + 40) setLastActiveDataSIMSignalBars:{objc_msgSend(*(a1 + 40), "activeDataSIMSignalBars")}];
  }

  [*(a1 + 40) setActiveDataSIMSignalBars:{objc_msgSend(v8, "unsignedIntegerValue")}];
  if (([*(*(a1 + 40) + 312) constructLoadStateForModule:@"Baseband"] - 1) <= 1)
  {
    v3 = [*(*(a1 + 40) + 312) slotsStringForTemplate:@"CellSubscription" fromDictionary:*(a1 + 32) moduleName:@"Baseband"];
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ %@)", @"CellSubscription", v3];
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"slot"];
    v7 = [v5 initWithFormat:@"%@.%@", v6, @"bars"];

    [*(a1 + 40) assertRelayFact:v4 forRelayKey:v7 moduleName:@"Baseband"];
  }
}

- (void)coreTelephonyDumpStartedTo:(id)a3 folderPrefix:(id)a4 gotFilteredOut:(BOOL)a5
{
  v8 = a4;
  if ([a3 length] && objc_msgSend(v8, "length"))
  {
    v9 = [(ExpertSystemHandlerCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__SymptomExpertSystemHandler_coreTelephonyDumpStartedTo_folderPrefix_gotFilteredOut___block_invoke;
    block[3] = &unk_27898BE18;
    v12 = a5;
    block[4] = self;
    v11 = v8;
    dispatch_async(v9, block);
  }
}

void __85__SymptomExpertSystemHandler_coreTelephonyDumpStartedTo_folderPrefix_gotFilteredOut___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 filteredCTDumps];
    [v4 addObject:*(a1 + 40)];

    [CoreTelephonyShim timestampFromCTDumpFolderPrefix:*(a1 + 40)];
    v5 = *(a1 + 32);
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(CoreTelephonyDumpFilterStatusUpdate (timestamp %d) (wasFilteredOut %s))", v6, "TRUE"];
    [v5 probeFactString:v7 module:@"Baseband" goIntoDiagnosing:0 run:1];
  }

  else
  {

    [v3 probeFactString:@"(UnsolicitedCoreTelephonyDumpInProgress)" module:@"Baseband" goIntoDiagnosing:0 run:1];
  }
}

- (void)coreTelephonyDumpCompletedTo:(id)a3 folderPrefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = [(ExpertSystemHandlerCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SymptomExpertSystemHandler_coreTelephonyDumpCompletedTo_folderPrefix___block_invoke;
    block[3] = &unk_27898A328;
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __72__SymptomExpertSystemHandler_coreTelephonyDumpCompletedTo_folderPrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) filteredCTDumps];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v6 = [*(a1 + 32) filteredCTDumps];
    [v6 removeObject:*(a1 + 40)];
  }

  else
  {
    [CoreTelephonyShim timestampFromCTDumpFolderPrefix:*(a1 + 40)];
    v4 = *(a1 + 32);
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(UnsolicitedCoreTelephonyDumpInfo (timestamp %d) (folderPath \"%@\"", v5, *(a1 + 48), *(a1 + 40)];
    [v4 probeFactString:? module:? goIntoDiagnosing:? run:?];
  }
}

- (void)onDisruptiveFlowChange:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  if (v5 && (v6 = v5, [v4 userInfo], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, !v8))
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = 0;
  }

  v11 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = &stru_2847966D8;
    if (v10)
    {
      v12 = @"dis";
    }

    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "NDFSM: Received WiFi %@association notification (kNotificationOfFlowDisruptingEvent)", buf, 0xCu);
  }

  v13 = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SymptomExpertSystemHandler_onDisruptiveFlowChange___block_invoke;
  block[3] = &unk_27898BE18;
  v18 = v10 ^ 1;
  block[4] = self;
  v17 = v9;
  v14 = v9;
  dispatch_async(v13, block);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processWiFiAssociationChange:(BOOL)a3 atTime:(id)a4
{
  v5 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->relayToFacts objectForKeyedSubscript:@"WiFi-AssocTime"];
  if (v8)
  {
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      *buf = 138412546;
      v23 = @"WiFi-AssocTime";
      v24 = 2048;
      v25 = [v8 pointerValue];
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "NDFSM: Retracting old fact for %@ (%p)", buf, 0x16u);
    }

    -[SymptomExpertSystemHandler retractFact:moduleName:run:](self, "retractFact:moduleName:run:", [v8 pointerValue], @"COMMON", 0);
    -[CLIPSShim releaseFact:](self->ruleEngine, "releaseFact:", [v8 pointerValue]);
    [(NSMutableDictionary *)self->relayToFacts removeObjectForKey:@"WiFi-AssocTime"];
  }

  if (v5)
  {
    objc_storeStrong(&self->lastWiFiAssociationTime, a4);
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    [(NSDate *)self->lastWiFiAssociationTime timeIntervalSince1970];
    lastWiFiAssociationTime = [v11 initWithFormat:@"(State (component \"WiFi\"", v12];
    if (lastWiFiAssociationTime)
    {
      v14 = [(SymptomExpertSystemHandler *)self assertFactString:lastWiFiAssociationTime moduleName:@"COMMON" run:0];
      if (v14)
      {
        v15 = v14;
        [(CLIPSShim *)self->ruleEngine retainFact:v14];
        v16 = [MEMORY[0x277CCAE60] valueWithPointer:v15];
        [(NSMutableDictionary *)self->relayToFacts setObject:v16 forKeyedSubscript:@"WiFi-AssocTime"];
      }
    }
  }

  else
  {
    lastWiFiAssociationTime = self->lastWiFiAssociationTime;
    self->lastWiFiAssociationTime = 0;
  }

  v17 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v18 = self->lastWiFiAssociationTime;
    v19 = v17;
    [(NSDate *)v18 timeIntervalSince1970];
    *buf = 134217984;
    v23 = v20;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "NDFSM: Updated lastWiFiAssociationTime to %.0lf", buf, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v91 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v66 = a4;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
  if ([v10 isEqualToString:@"incomingSymptoms"])
  {
    v14 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v86 = v12;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "NDFSM: Observed incomingSymptoms change: %@", buf, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v12;
      if ([v15 count])
      {
        v16 = [(ExpertSystemHandlerCore *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_27898A7D0;
        block[4] = self;
        v84 = v15;
        dispatch_async(v16, block);
      }
    }
  }

  else if (a6)
  {
    v17 = *(a6 + 8);
    v18 = *(a6 + 9);
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:*a6];
    if (v12)
    {
      v20 = v13 == 0;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v30 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        v31 = "";
        *buf = 138413058;
        *v86 = v19;
        *&v86[8] = 2112;
        if (v17)
        {
          v31 = " (symptom-like)";
        }

        v87 = v10;
        *v88 = 2112;
        *&v88[2] = v12;
        v89 = 2080;
        v90 = v31;
        _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "NDFSM: Processing initial state relay (%@) %@ = %@%s", buf, 0x2Au);
      }

      [(SymptomExpertSystemHandler *)self processRelayStateChange:v12 key:v10 relay:v19 scalar:v18];
    }

    else
    {
      v21 = self;
      objc_sync_enter(v21);
      ++v21->_asyncKVOCount;
      objc_sync_exit(v21);

      v22 = [(ExpertSystemHandlerCore *)v21 queue];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_359;
      v77[3] = &unk_27898BE40;
      v81 = v17;
      v77[4] = v21;
      v78 = v19;
      v79 = v10;
      v80 = v12;
      v82 = v18;
      dispatch_async(v22, v77);
    }
  }

  else if ([v10 isEqualToString:@"autoBugCaptureEnabled"])
  {
    if ([(SystemSettingsRelay *)self->settingsRelay autoBugCaptureEnabled])
    {
      if (self->_internalBuild || self->_carrierSeedBuild || self->_vendorBuild || self->_customerSeedBuild && [(SystemSettingsRelay *)self->settingsRelay autoFeedbackAssistantEnable])
      {
        v23 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
        {
          settingsRelay = self->settingsRelay;
          v25 = v23;
          v26 = [(SystemSettingsRelay *)settingsRelay autoBugCaptureEnabled];
          customerSeedBuild = self->_customerSeedBuild;
          v28 = [(SystemSettingsRelay *)self->settingsRelay autoFeedbackAssistantEnable];
          if (self->_internalBuild)
          {
            v29 = "yes";
          }

          else
          {
            v29 = "yes";
            if (!self->_carrierSeedBuild && !self->_vendorBuild)
            {
              v29 = "no";
            }
          }

          *buf = 67109890;
          *v86 = v26;
          *&v86[4] = 1024;
          *&v86[6] = customerSeedBuild;
          LOWORD(v87) = 1024;
          *(&v87 + 2) = v28;
          HIWORD(v87) = 2080;
          *v88 = v29;
          _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "NDFSM is enabled (autoBugCaptureEnabled is %d, customerSeedBuild is %d, autoFeedbackAssistantEnable is %d, available build is %s)", buf, 0x1Eu);
        }

        v52 = [(ExpertSystemHandlerCore *)self queue];
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_362;
        v76[3] = &unk_27898A0C8;
        v76[4] = self;
        dispatch_async(v52, v76);
      }

      else
      {
        v53 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
        {
          v63 = self->settingsRelay;
          log = v53;
          v54 = [(SystemSettingsRelay *)v63 autoBugCaptureEnabled];
          v65 = self->_customerSeedBuild;
          v55 = [(SystemSettingsRelay *)self->settingsRelay autoFeedbackAssistantEnable];
          if (self->_internalBuild)
          {
            v56 = "yes";
          }

          else
          {
            v56 = "yes";
            if (!self->_carrierSeedBuild && !self->_vendorBuild)
            {
              v56 = "no";
            }
          }

          *buf = 67109890;
          *v86 = v54;
          *&v86[4] = 1024;
          *&v86[6] = v65;
          LOWORD(v87) = 1024;
          *(&v87 + 2) = v55;
          HIWORD(v87) = 2080;
          *v88 = v56;
          _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_INFO, "NDFSM is disabled (autoBugCaptureEnabled is %d but customerSeedBuild is %d, autoFeedbackAssistantEnable is %d and available build is %s)", buf, 0x1Eu);
        }

        v62 = [(ExpertSystemHandlerCore *)self queue];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_363;
        v75[3] = &unk_27898A0C8;
        v75[4] = self;
        dispatch_async(v62, v75);
      }
    }

    else
    {
      v43 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        v44 = self->settingsRelay;
        v45 = v43;
        *buf = 67109120;
        *v86 = [(SystemSettingsRelay *)v44 autoBugCaptureEnabled];
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_INFO, "NDFSM is disabled (autoBugCaptureEnabled is %d)", buf, 8u);
      }

      v46 = [(ExpertSystemHandlerCore *)self queue];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_364;
      v74[3] = &unk_27898A0C8;
      v74[4] = self;
      dispatch_async(v46, v74);
    }
  }

  else if ([v10 isEqualToString:@"autoFeedbackAssistantEnable"])
  {
    v33 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v34 = self->settingsRelay;
      v35 = v33;
      v36 = [(SystemSettingsRelay *)v34 autoFeedbackAssistantEnable];
      v37 = "off";
      if (v36)
      {
        v37 = "on";
      }

      *buf = 136446210;
      *v86 = v37;
      _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "NDFSM: autoFeedbackAssistantEnable changed to %{public}s", buf, 0xCu);
    }

    v38 = [(SystemSettingsRelay *)self->settingsRelay autoBugCaptureEnabled];
    if (v12)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    if (v39)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v40 = [(SystemSettingsRelay *)self->settingsRelay autoFeedbackAssistantEnable];
        v41 = [(ExpertSystemHandlerCore *)self queue];
        v42 = v41;
        if (v40)
        {
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_366;
          v73[3] = &unk_27898A0C8;
          v73[4] = self;
          dispatch_async(v41, v73);
        }

        else
        {
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_372;
          v72[3] = &unk_27898A0C8;
          v72[4] = self;
          dispatch_async(v41, v72);
        }
      }
    }
  }

  else if ([v10 isEqualToString:@"stepper"])
  {
    v47 = [(ExpertSystemHandlerCore *)self queue];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v69[3] = &unk_27898A328;
    v69[4] = self;
    v70 = v10;
    v71 = v12;
    dispatch_async(v47, v69);
  }

  else if ([v10 isEqualToString:@"mostRecentAPSleepMachTime"])
  {
    v48 = self->_apSleep;
    objc_sync_enter(v48);
    v49 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEFAULT, "NDFSM: AP will go to sleep. Will prevent diagnosing until wake.", buf, 2u);
    }

    [(SymptomExpertSystemHandler *)self setApSleep:MEMORY[0x277CBEC38]];
    objc_sync_exit(v48);
  }

  else if ([v10 isEqualToString:@"mostRecentAPWakeMachTime"])
  {
    v50 = self->_apSleep;
    objc_sync_enter(v50);
    v51 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEFAULT, "NDFSM: AP is now awake", buf, 2u);
    }

    [(SymptomExpertSystemHandler *)self setApSleep:MEMORY[0x277CBEC28]];
    objc_sync_exit(v50);
  }

  else if ([v10 isEqualToString:@"installedVisibleProfileIdentifiers"])
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v57 = v12;
        v58 = [v57 containsObject:@"com.apple.basebandlogging"];
        v59 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v86 = v57;
          _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEFAULT, "NDFSM: installedVisibleProfileIdentifiers is %@", buf, 0xCu);
        }

        v60 = [(ExpertSystemHandlerCore *)self queue];
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_373;
        v67[3] = &unk_27898A3A0;
        v67[4] = self;
        v68 = v58;
        dispatch_async(v60, v67);
      }
    }
  }

  else
  {
    v61 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v86 = v10;
      *&v86[8] = 2048;
      v87 = 0;
      _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_ERROR, "Unrecognized event for keypath: %@, context: %p", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = [*(v2 + 40) objectAtIndexedSubscript:0];
  LOBYTE(v3) = [v3 isEqual:v4];

  if (v3)
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "NDFSM: in Idle, not processing this symptom", buf, 2u);
    }

    [*(*(a1 + 32) + 408) removeAllObjects];
    goto LABEL_42;
  }

  v6 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v7 = [v6 objectForKeyedSubscript:@"FACTS_STRINGS"];
  v8 = *(*(a1 + 32) + 400);
  objc_sync_enter(v8);
  if ([*(*(a1 + 32) + 400) BOOLValue])
  {
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NDFSM: Ignoring diagnosing incomingSymptoms fact strings because the AP will be sleeping momentarily", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v10 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v7;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "NDFSM: Bringing state to diagnosing because of: %@", buf, 0xCu);
      }
    }

    [*(a1 + 32) _bringStateToDiagnosing];
  }

  objc_sync_exit(v8);

  v11 = [*(*(a1 + 32) + 312) constructLoadStateForModule:@"COMMON"];
  if (!v11)
  {
    v13 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "NDFSM: How's it possible we didn't successfully load nor fail?, ignoring incomingSymptoms", buf, 2u);
    }

    goto LABEL_16;
  }

  if (v11 == 3)
  {
    v12 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "NDFSM: Default Constructs cannot be loaded, ignoring incomingSymptoms", buf, 2u);
    }

LABEL_16:

    goto LABEL_42;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = 408;
  obj = *(*(a1 + 32) + 408);
  v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v33)
  {
    v30 = 0;
    v32 = *v41;
    do
    {
      v14 = 0;
      do
      {
        if (*v41 != v32)
        {
          v15 = v14;
          objc_enumerationMutation(obj);
          v14 = v15;
        }

        v34 = v14;
        v16 = *(*(&v40 + 1) + 8 * v14);

        v17 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v47 = v16;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "NDFSM: Observed new symptom: %@", buf, 0xCu);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = v16;
        v18 = [v16 objectForKeyedSubscript:{@"FACTS_STRINGS", v29}];
        v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v19)
        {
          v20 = *v37;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v37 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v36 + 1) + 8 * i);
              v23 = *(a1 + 32);
              v24 = [v22 objectForKeyedSubscript:@"FACT_STRING"];
              v25 = [v22 objectForKeyedSubscript:@"FACT_MODULE"];
              v26 = [v23 assertFactString:v24 moduleName:v25 run:0];

              if (!v26)
              {

                goto LABEL_37;
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        [*(a1 + 32) runEngine];
        v30 = 1;
LABEL_37:
        v14 = v34 + 1;
        v6 = v35;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      v6 = v35;
    }

    while (v33);

    [*(*(a1 + 32) + v29) removeAllObjects];
    if (v30)
    {
      v27 = [MEMORY[0x277CBEAA8] date];
      [*(a1 + 32) setLastSymptomRun:v27];
    }
  }

  else
  {

    [*(*(a1 + 32) + 408) removeAllObjects];
  }

LABEL_42:
  v28 = *MEMORY[0x277D85DE8];
}

void __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_359(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 32) + 400);
    objc_sync_enter(v2);
    v3 = [*(*(a1 + 32) + 400) BOOLValue];
    v4 = debuggabilityLogHandle;
    v5 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        v8 = *(a1 + 56);
        if (*(a1 + 64))
        {
          v9 = " (symptom-like)";
        }

        else
        {
          v9 = "";
        }

        v24 = 138413058;
        v25 = v6;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v8;
        v30 = 2080;
        v31 = v9;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NDFSM: Ignoring diagnosing subsequent state relay (%@) %@ = %@%s because the AP will be sleeping momentarily", &v24, 0x2Au);
      }
    }

    else
    {
      if (v5)
      {
        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        v17 = *(a1 + 56);
        if (*(a1 + 64))
        {
          v18 = " (symptom-like)";
        }

        else
        {
          v18 = "";
        }

        v24 = 138413058;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        v30 = 2080;
        v31 = v18;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NDFSM: Bringing state to diagnosing because of subsequent state relay (%@) %@ = %@%s", &v24, 0x2Au);
      }

      [*(a1 + 32) _bringStateToDiagnosing];
      v19 = [MEMORY[0x277CBEAA8] date];
      [*(a1 + 32) setLastSymptomRun:v19];
    }

    objc_sync_exit(v2);
  }

  else
  {
    v10 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      if (*(a1 + 64))
      {
        v14 = " (symptom-like)";
      }

      else
      {
        v14 = "";
      }

      v24 = 138413058;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2080;
      v31 = v14;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "NDFSM: Processing subsequent state relay (%@) %@ = %@%s", &v24, 0x2Au);
    }
  }

  [*(a1 + 32) processRelayStateChange:*(a1 + 56) key:*(a1 + 48) relay:*(a1 + 40) scalar:*(a1 + 65)];
  v20 = *(a1 + 32);
  objc_sync_enter(v20);
  v21 = --*(*(a1 + 32) + 296) == 0;
  objc_sync_exit(v20);

  if (v21)
  {
    v22 = *(a1 + 32);
    if (v22[304] == 1)
    {
      [v22 runEngine];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_366(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 379) & 1) == 0)
  {
    v3 = +[ManagedConfigurationUtils sharedInstance];
    [v3 addObserver:*(a1 + 32) forKeyPath:@"installedVisibleProfileIdentifiers" options:3 context:0];

    *(*(a1 + 32) + 379) = 1;
    v2 = *(a1 + 32);
  }

  v4 = [*(v2 + 128) enableCoreTelephonyLoggingForCustomerSeed:{objc_msgSend(*(v2 + 96), "customerSeedBuild")}];
  v5 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v16 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "NDFSM: hadToEnableCTLogging is %d", buf, 8u);
  }

  v6 = *(a1 + 32);
  if (v4)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
    [v6 setValue:v9 forKey:@"com.apple.basebandlogging" toEBFProfiles:0];

    v10 = [*(a1 + 32) queue];
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);

    v12 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x174876E800uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_371;
    handler[3] = &unk_27898A0C8;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v11, handler);
    [*(a1 + 32) setLoggingProfileTimeoutTimer:v11];
    dispatch_resume(v11);
  }

  else
  {
    [*(a1 + 32) _administrativeEnable];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_371(uint64_t a1)
{
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "NDFSM: Timed out waiting for a change in installed profiles. Disable the Expert System.", v6, 2u);
  }

  dispatch_source_cancel(*(*(a1 + 32) + 552));
  v3 = *(a1 + 32);
  v4 = *(v3 + 552);
  *(v3 + 552) = 0;

  return [*(a1 + 32) _administrativeDisable];
}

uint64_t __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_372(uint64_t a1)
{
  [*(a1 + 32) _administrativeDisable];
  result = [*(*(a1 + 32) + 56) autoFeedbackAssistantEnable];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 552))
    {
      dispatch_source_cancel(*(v3 + 552));
      v4 = *(a1 + 32);
      v5 = *(v4 + 552);
      *(v4 + 552) = 0;

      v3 = *(a1 + 32);
    }

    if (*(v3 + 379) == 1)
    {
      v6 = +[ManagedConfigurationUtils sharedInstance];
      [v6 removeObserver:*(a1 + 32) forKeyPath:@"installedVisibleProfileIdentifiers"];

      *(*(a1 + 32) + 379) = 0;
      v3 = *(a1 + 32);
    }

    result = [v3 didInstallProfileForKey:@"com.apple.basebandlogging"];
    if (result)
    {
      [*(*(a1 + 32) + 128) enableCoreTelephonyLoggingForCustomerSeed:0];
      v7 = *(a1 + 32);

      return [v7 setValue:0 forKey:@"com.apple.basebandlogging" toEBFProfiles:0];
    }
  }

  return result;
}

void __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1[4] + 32);
    v4 = v2;
    v5 = [v3 label];
    v6 = a1[5];
    v7 = a1[6];
    v21 = 138412802;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "NDFSM Current state: %@, changed: %@ to %@", &v21, 0x20u);
  }

  v8 = *(a1[4] + 32);
  v9 = [*(a1[4] + 40) objectAtIndex:{(objc_msgSend(*(a1[4] + 40), "indexOfObject:", *(a1[4] + 32)) + 1) % objc_msgSend(*(a1[4] + 40), "count")}];
  v10 = [*(a1[4] + 32) exitAction];
  v10[2]();

  v11 = a1[4];
  v12 = *(v11 + 32);
  v13 = [*(v11 + 40) objectAtIndexedSubscript:0];

  if (v12 != v13)
  {
    v14 = [*(a1[4] + 32) sojournTime];
    [v14 stop];
  }

  objc_storeStrong((a1[4] + 32), v9);
  [*(a1[4] + 32) setPreviousState:v8];
  v15 = a1[4];
  v16 = *(v15 + 32);
  v17 = [*(v15 + 40) objectAtIndexedSubscript:0];

  if (v16 != v17)
  {
    v18 = [*(a1[4] + 32) sojournTime];
    [v18 start];
  }

  v19 = [*(a1[4] + 32) entryAction];
  v19[2]();

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __77__SymptomExpertSystemHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_373(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 552);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 552);
    *(v3 + 552) = 0;
  }

  if (*(a1 + 40) == 1 && [*(*(a1 + 32) + 56) autoBugCaptureEnabled] && objc_msgSend(*(*(a1 + 32) + 56), "autoFeedbackAssistantEnable"))
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NDFSM: Baseband logging was enabled via profile", buf, 2u);
    }

    return [*(a1 + 32) _administrativeEnable];
  }

  else
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "NDFSM: Baseband logging was disabled via profile", v8, 2u);
    }

    return [*(a1 + 32) _administrativeDisable];
  }
}

- (id)symptomDictionaryForSymptom:(id)a3 domain:(id)a4 type:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v19 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v24) = 0;
    v20 = "NDFSM Missing domain";
LABEL_14:
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, v20, &v24, 2u);
    goto LABEL_15;
  }

  if (!v9)
  {
    v19 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v24) = 0;
    v20 = "NDFSM Missing type";
    goto LABEL_14;
  }

  v11 = [v7 eventKey];
  if (!v11)
  {
    v19 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      v20 = "NDFSM Missing event key";
      goto LABEL_14;
    }

LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [SymptomStore nameFromSymptomKey:v11];
  if (!v13)
  {
    v23 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v12;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "NDFSM Cannot get symptom name from eventKey:%@", &v24, 0xCu);
    }

    goto LABEL_15;
  }

  v14 = v13;
  v15 = [SymptomStore descriptionFromSymptomName:v13];
  if (!v15)
  {
    v15 = v14;
  }

  v16 = [MEMORY[0x277CBEB38] dictionary];
  [v16 setObject:v14 forKeyedSubscript:@"SYMPTOM_NAME"];
  [v16 setObject:v15 forKeyedSubscript:@"DESCRIPTION"];
  [v16 setObject:v8 forKeyedSubscript:@"SIGNATURE_DOMAIN"];
  [v16 setObject:v10 forKeyedSubscript:@"SIGNATURE_TYPE"];
  [v16 setObject:v7 forKeyedSubscript:@"EVENT_DESCRIPTION"];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_approximate_time()];
  [v16 setObject:v17 forKeyedSubscript:@"MACH_TIMESTAMP"];

  v18 = v16;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)arbitratorDictionaryForSymptom:(id)a3 procName:(id)a4 interfaceType:(id)a5 eventCount:(id)a6 duration:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [v11 eventKey];
  if (!v17)
  {
    v24 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v31) = 0;
      v25 = "NDFSM Missing event key";
      v26 = v24;
      v27 = 2;
LABEL_16:
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, v25, &v31, v27);
    }

LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  v18 = [SymptomStore nameFromSymptomKey:v17];
  if (!v18)
  {
    v28 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v31 = 138412290;
      v32 = v17;
      v25 = "NDFSM Cannot get symptom name from eventKey:%@";
      v26 = v28;
      v27 = 12;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v19 = v18;
  [v16 setObject:v18 forKeyedSubscript:*MEMORY[0x277D6B110]];
  v20 = MEMORY[0x277CCABB0];
  v21 = [v11 creationTimeStamp];
  [v21 timeIntervalSince1970];
  v22 = [v20 numberWithDouble:?];
  [v16 setObject:v22 forKeyedSubscript:*MEMORY[0x277D6B148]];

  [v16 setObject:*MEMORY[0x277D6B0E0] forKeyedSubscript:*MEMORY[0x277D6B150]];
  if (v12)
  {
    [v16 setObject:v12 forKeyedSubscript:*MEMORY[0x277D6B118]];
  }

  if (v14)
  {
    [v16 setObject:v14 forKeyedSubscript:*MEMORY[0x277D6B0E8]];
  }

  if (v15)
  {
    [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x277D6B0F0]];
  }

  if (v13)
  {
    [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277D6B108]];
  }

  v23 = v16;

LABEL_18:
  v29 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_configdSymptom:(id)a3
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_internalOrCarrierSeedBuild)
  {
    v5 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v4 domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B218]];
    [(NSMutableArray *)self->_processedSymptoms addObject:v5];
    v6 = [v5 objectForKeyedSubscript:@"SYMPTOM_NAME"];
    v7 = [v6 isEqualToString:@"SYMPTOM_ADDRESS_ACQUISITION_SUCCEEDED"];
    if (([v6 isEqualToString:@"SYMPTOM_ADDRESS_ACQUISITION_FAILED"] & 1) == 0 && !v7)
    {
      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v6;
        v9 = "NDFSM This is an unsupported libnetcore symptom: %@";
        v10 = v8;
        v11 = 12;
LABEL_13:
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      }

LABEL_22:

      goto LABEL_23;
    }

    v12 = [v4 eventData];
    if (v12)
    {
      if (*(v12 + 4))
      {
        if (*(v12 + 24))
        {
          v27 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:*(v12 + 24)];
        }

        else
        {
          v27 = 0;
        }

        v26 = [MEMORY[0x277CBEB18] array];
        v14 = MEMORY[0x277CCAB68];
        v15 = [v5 objectForKeyedSubscript:@"DESCRIPTION"];
        v16 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v5];
        v17 = [v5 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
        v18 = [v5 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
        v19 = objc_msgSend(v14, "stringWithFormat:", @"(Symptom (symptomName %@) (symptomDescription %@) (sequence %lu) (symptomDomain %@) (symptomType %@) (processName %s)"), v6, v15, v16, v17, v18, objc_msgSend(v4, "processName");

        if (v27)
        {
          v20 = [v27 interfaceName];
          [v19 appendFormat:@" (interfaceName \"%@\"", v20];
        }

        if (v7)
        {
          [v19 appendFormat:@" (isAntiSymptom TRUE)"];
        }

        [v19 appendString:@""]);
        v32[0] = @"FACT_STRING";
        v32[1] = @"FACT_MODULE";
        v33[0] = v19;
        v33[1] = @"Symptoms";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
        [v26 addObject:v21];

        v30[0] = @"FACT_STRING";
        v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v6];
        v30[1] = @"FACT_MODULE";
        v31[0] = v22;
        v31[1] = @"Symptoms";
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
        [v26 addObject:v23];

        [v5 setObject:v26 forKey:@"FACTS_STRINGS"];
        v24 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
        [v24 addObject:v5];

        goto LABEL_22;
      }

      v13 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v9 = "symptom with no index qualifier";
    }

    else
    {
      v13 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v9 = "missing eventData";
    }

    v10 = v13;
    v11 = 2;
    goto LABEL_13;
  }

LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_airplaySymptom:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_internalOrCarrierSeedBuild)
  {
    v5 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v4 domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B228]];
    [(NSMutableArray *)self->_processedSymptoms addObject:v5];
    v6 = [v5 objectForKeyedSubscript:@"SYMPTOM_NAME"];
    v7 = [v6 isEqualToString:@"SYMPTOM_AIRPLAY_CONNECTION_NOT_STALLED"];
    if (([v6 isEqualToString:@"SYMPTOM_AIRPLAY_CONNECTION_STALLED"] & 1) == 0 && !v7)
    {
      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v6;
        v9 = "NDFSM This is an unsupported airplay symptom: %@";
        v10 = v8;
        v11 = 12;
LABEL_13:
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      }

LABEL_30:

      goto LABEL_31;
    }

    v12 = [v4 eventData];
    if (v12)
    {
      v13 = v12;
      if ((*(v12 + 4) & 2) != 0)
      {
        v15 = [MEMORY[0x277CBEB18] array];
        v37 = MEMORY[0x277CCAB68];
        v38 = v15;
        v16 = [v5 objectForKeyedSubscript:@"DESCRIPTION"];
        v17 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v5];
        v18 = [v5 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
        v19 = [v5 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
        v20 = objc_msgSend(v37, "stringWithFormat:", @"(Symptom (symptomName %@) (symptomDescription %@) (sequence %lu) (symptomDomain %@) (symptomType %@) (processName %s)"), v6, v16, v17, v18, v19, objc_msgSend(v4, "processName");

        v21 = *(v13 + 32);
        if (*(v13 + 32))
        {
          v21 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:v21];
        }

        v36 = [v4 eventQualifierStringForKey:@"0"];
        [v36 length];
        v22 = [v4 eventQualifierStringForKey:@"1"];
        if ([v22 length])
        {
          [v20 appendFormat:@" (url \"%@\"", v22];
        }

        v35 = v22;
        v34 = [v4 eventQualifierStringForKey:@"2"];
        [v34 length];
        v23 = [v4 eventQualifiers];
        v24 = [v23 objectForKeyedSubscript:@"3"];

        if ([v24 length])
        {
          v25 = ether_ntoa([v24 bytes]);
          if (v25)
          {
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v25];
            if ([v26 length])
            {
              [v20 appendFormat:@" (macAddress \"%@\"", v26];
            }
          }

          else
          {
            v27 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = v24;
              _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "NDFSM: Could not create a MAC address string from the data %@", buf, 0xCu);
            }
          }
        }

        if (v21)
        {
          v28 = [v21 interfaceName];
          [v20 appendFormat:@" (interfaceName \"%@\"", v28];
        }

        if (v7)
        {
          [v20 appendFormat:@" (isAntiSymptom TRUE)"];
        }

        [v20 appendString:@""]);
        v41[0] = @"FACT_STRING";
        v41[1] = @"FACT_MODULE";
        v42[0] = v20;
        v42[1] = @"Symptoms";
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
        [v38 addObject:v29];

        v39[0] = @"FACT_STRING";
        v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v6];
        v39[1] = @"FACT_MODULE";
        v40[0] = v30;
        v40[1] = @"Symptoms";
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
        [v38 addObject:v31];

        [v5 setObject:v38 forKey:@"FACTS_STRINGS"];
        v32 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
        [v32 addObject:v5];

        goto LABEL_30;
      }

      v14 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v9 = "airplay symptom with no interface index qualifier";
    }

    else
    {
      v14 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v9 = "airplay symptom is missing eventData";
    }

    v10 = v14;
    v11 = 2;
    goto LABEL_13;
  }

LABEL_31:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_libnetcoreSymptom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 eventKey];
  if (!v5)
  {
    v8 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(v15) = 0;
    v9 = "NDFSM Missing event key";
    v10 = v8;
    v11 = 2;
LABEL_13:
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v9, &v15, v11);
    goto LABEL_14;
  }

  v6 = [SymptomStore nameFromSymptomKey:v5];
  if (!v6)
  {
    v12 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v15 = 138412290;
    v16 = v5;
    v9 = "NDFSM Cannot get symptom name from eventKey:%@";
    v10 = v12;
    v11 = 12;
    goto LABEL_13;
  }

  v7 = v6;
  if (([v6 isEqualToString:@"SYMPTOM_LIBNETCORE_DATA_STALL"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SYMPTOM_LIBNETCORE_ADAPTIVE_WRITE_TIMEOUT") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SYMPTOM_LIBNETCORE_TLS_HANDSHAKE_FAILED") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"SYMPTOM_LIBNETCORE_DNS_FAILED"))
  {
    [(SymptomExpertSystemHandler *)self _processLibnetcoreSymptom:v4 symptomName:v7];
  }

  else
  {
    v14 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "NDFSM This is an unsupported libnetcore symptom: %@", &v15, 0xCu);
    }
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processLibnetcoreSymptom:(id)a3 symptomName:(id)a4
{
  v5 = a3;
  if (self->_internalOrCarrierSeedBuild)
  {
    v6 = [(ExpertSystemHandlerCore *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__SymptomExpertSystemHandler__processLibnetcoreSymptom_symptomName___block_invoke;
    v10[3] = &unk_27898BE68;
    v10[4] = self;
    v11 = v5;
    v7 = libnetcoreSymptomTrampoline(v11, 0, 0, 0, v6, v10);

    if ((v7 & 1) == 0)
    {
      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NDFSM: received libnetcore symptom w/ non conforming layout, dropping", v9, 2u);
      }
    }
  }
}

void __68__SymptomExpertSystemHandler__processLibnetcoreSymptom_symptomName___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v53 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v44 = a3;
  v12 = a6;
  if ([v12 length])
  {
    v13 = objc_alloc(MEMORY[0x277CBEBC0]);
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"http://%@", v12];
    v15 = [v13 initWithString:v14];

    v16 = [v15 host];
    v17 = [v16 length];

    if (v17 && (([v11 isEqualToString:@"SYMPTOM_LIBNETCORE_DATA_STALL"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"SYMPTOM_LIBNETCORE_TLS_HANDSHAKE_FAILED")) && (objc_msgSend(*(a1 + 32), "urlIsAppleDomain:", v15) & 1) == 0)
    {
      v18 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v50 = v15;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "NDFSM: Dropping this symptom because the endpoint (%@) is not Apple.", buf, 0xCu);
      }

      goto LABEL_21;
    }
  }

  else
  {
    v19 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v50 = v12;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "NDFSM: Could not create an endpoint string from the data %@", buf, 0xCu);
    }

    v15 = 0;
  }

  v20 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    *v50 = a5;
    *&v50[4] = 1024;
    *&v50[6] = a4;
    v51 = 2112;
    v52 = v44;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "NDFSM: receiving data stall symptom for ifIndex %d for effectivepid/procName %d %@", buf, 0x18u);
  }

  v42 = v15;
  v43 = v11;
  v41 = v12;
  if (a5)
  {
    v21 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:a5];
  }

  else
  {
    v21 = 0;
  }

  v22 = [*(a1 + 32) symptomDictionaryForSymptom:*(a1 + 40) domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B228]];
  [*(*(a1 + 32) + 416) addObject:v22];
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = MEMORY[0x277CCAB68];
  v25 = [v22 objectForKeyedSubscript:@"DESCRIPTION"];
  v26 = [*(*(a1 + 32) + 416) indexOfObject:v22];
  v27 = [v22 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
  v28 = [v22 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
  v29 = objc_msgSend(v24, "stringWithFormat:", @"(Symptom (symptomName %@) (symptomDescription %@) (sequence %lu) (symptomDomain %@) (symptomType %@) (processID %d) (processName %@)"), v43, v25, v26, v27, v28, a4, v44;

  v30 = [v42 host];
  v31 = [v30 length];

  if (v31)
  {
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = [v42 host];
    v34 = [v32 initWithFormat:@"http://%@", v33];
    [v29 appendFormat:@" (url \"%@\"", v34];
  }

  if (v21)
  {
    v35 = [v21 interfaceName];
    [v29 appendFormat:@" (interfaceName \"%@\"", v35];
  }

  [v29 appendString:@""]);
  v47[0] = @"FACT_STRING";
  v47[1] = @"FACT_MODULE";
  v48[0] = v29;
  v48[1] = @"Symptoms";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  [v23 addObject:v36];

  v45[0] = @"FACT_STRING";
  v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v43];
  v45[1] = @"FACT_MODULE";
  v46[0] = v37;
  v46[1] = @"Symptoms";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  [v23 addObject:v38];

  [v22 setObject:v23 forKey:@"FACTS_STRINGS"];
  v39 = [*(a1 + 32) mutableArrayValueForKey:@"incomingSymptoms"];
  [v39 addObject:v22];

  v11 = v43;
  v12 = v41;
  v15 = v42;
LABEL_21:

  v40 = *MEMORY[0x277D85DE8];
}

- (BOOL)urlIsAppleDomain:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"apple.com"] & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @".apple.com") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"icloud.com") & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @".icloud.com") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"me.com") & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @".me.com") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"mac.com") & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @".mac.com") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"itunes.com"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 hasSuffix:@".itunes.com"];
  }

  return v5;
}

+ (id)libtraceInfo:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v4 = extractLibtraceSymptomElements(v3, &v68, &v67, &v66, &v65);
  v62 = v68;
  v5 = v67;
  v63 = v66;
  v6 = v65;
  if (v4)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [v3 eventData];
    v10 = v8[3];
    v9 = v8[4];
    v11 = v8[5];
    v12 = [v3 eventQualifiers];
    v13 = [v12 objectForKeyedSubscript:@"3"];

    v14 = [v3 eventQualifiers];
    v61 = [v14 objectForKeyedSubscript:@"4"];

    v60 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"pc:0x%llx", v10];
    [v7 setObject:v62 forKeyedSubscript:@"SYMPTOM_NAME"];
    [v7 setObject:v5 forKeyedSubscript:@"PROC_NAME"];
    [v7 setObject:v63 forKeyedSubscript:@"INTERFACE_TYPE"];
    [v7 setObject:v6 forKeyedSubscript:@"OSLOG_COMPOSED_STRING"];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    [v7 setObject:v15 forKeyedSubscript:@"PROGRAM_COUNTER"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    [v7 setObject:v16 forKeyedSubscript:@"MACH_TIMESTAMP"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    [v7 setObject:v17 forKeyedSubscript:@"ACTIVITY_ID"];

    if ([v13 length])
    {
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = v13;
      v20 = [v18 initWithBytes:objc_msgSend(v13 length:"bytes") encoding:{objc_msgSend(v13, "length"), 4}];
      v21 = [v20 componentsSeparatedByString:@"."];
      if ([v21 count] == 2)
      {
        v22 = [v21 objectAtIndexedSubscript:0];
        [v7 setObject:v22 forKey:@"SIGNATURE_DOMAIN"];

        v23 = [v21 objectAtIndexedSubscript:1];
        [v7 setObject:v23 forKey:@"SIGNATURE_TYPE"];
      }
    }

    v64 = 0;
    v24 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v61 options:0 error:&v64];
    v25 = v64;
    v26 = v25;
    if (!v24 || v25)
    {
      v45 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v46 = v45;
        v47 = [v61 description];
        *buf = 138412546;
        v70 = v47;
        v71 = 2112;
        v72 = v26;
        _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "Unable to create JSON object from libtrace data %@ because %@. This would be ok for older clients.", buf, 0x16u);
      }

      v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v61 encoding:4];
      if (v31)
      {
        [v7 setObject:v31 forKeyedSubscript:@"ENDPOINT"];
      }

      else
      {
        v48 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "This doesn't seem to be a string at all", buf, 2u);
        }
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = 0;
        goto LABEL_32;
      }

      v27 = [v7 objectForKeyedSubscript:@"SYMPTOM_NAME"];
      [v7 setObject:v27 forKeyedSubscript:@"DESCRIPTION"];

      v28 = [v24 objectForKeyedSubscript:@"domain"];
      if ([v28 length])
      {
        [v7 setObject:v28 forKeyedSubscript:@"SIGNATURE_DOMAIN"];
      }

      v29 = [v24 objectForKeyedSubscript:@"type"];

      if ([v29 length])
      {
        [v7 setObject:v29 forKeyedSubscript:@"SIGNATURE_TYPE"];
      }

      v30 = [v24 objectForKeyedSubscript:@"subtype"];

      if ([v30 length])
      {
        [v7 setObject:v30 forKeyedSubscript:@"SIGNATURE_SUBTYPE"];
      }

      v31 = [v24 objectForKeyedSubscript:@"subtype_context"];

      if ([v31 length])
      {
        [v7 setObject:v31 forKeyedSubscript:@"SIGNATURE_SUBTYPE_CONTEXT"];
      }

      v59 = [v24 objectForKeyedSubscript:@"error_domain"];
      v58 = [v24 objectForKeyedSubscript:@"error_code"];
      if (v59 && v58)
      {
        v32 = MEMORY[0x277CCA9B8];
        v33 = [v58 integerValue];
        v34 = [v24 objectForKeyedSubscript:@"error_info"];
        v35 = [v32 errorWithDomain:v59 code:v33 userInfo:v34];
        [v7 setObject:v35 forKeyedSubscript:@"ERROR"];
      }

      v36 = [v24 objectForKeyedSubscript:@"endpoint"];
      [v7 setObject:v36 forKeyedSubscript:@"ENDPOINT"];

      v37 = [v24 objectForKeyedSubscript:@"macAddress"];
      [v7 setObject:v37 forKeyedSubscript:@"MACADDRESS"];

      v38 = [v24 objectForKeyedSubscript:@"isAntisymptom"];
      [v7 setObject:v38 forKeyedSubscript:@"SYMPTOM_PAYLOAD_IS_ANTI_SYMPTOM"];

      v39 = [v24 objectForKeyedSubscript:@"identifier"];
      [v7 setObject:v39 forKeyedSubscript:@"IDENTIFIER"];

      v40 = [v24 objectForKeyedSubscript:@"interfaceName"];
      [v7 setObject:v40 forKeyedSubscript:@"INTERFACE_NAME"];

      v41 = [v24 objectForKeyedSubscript:@"uuid"];
      [v7 setObject:v41 forKeyedSubscript:@"UUID"];

      v42 = [v24 objectForKeyedSubscript:@"triggerCount"];
      [v7 setObject:v42 forKeyedSubscript:@"TRIGGER_COUNT"];

      v43 = [v24 objectForKeyedSubscript:@"triggerThreshold"];
      [v7 setObject:v43 forKeyedSubscript:@"TRIGGER_THRESHOLD"];

      v26 = 0;
    }

LABEL_32:
    if ([v5 length])
    {
      v49 = [v7 objectForKeyedSubscript:@"DESCRIPTION"];
      v50 = v49 == 0;

      if (v50)
      {
        v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"os_log error/fault: %@ %@", v5, v60];
        [v7 setObject:v51 forKeyedSubscript:@"DESCRIPTION"];
      }
    }

    if ([v3 bundleId])
    {
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v3, "bundleId")}];
    }

    else
    {
      v52 = 0;
    }

    if ([v52 length])
    {
      [v7 setObject:v52 forKeyedSubscript:@"BUNDLE_ID"];
      v53 = [v7 objectForKeyedSubscript:@"DESCRIPTION"];
      v54 = v53 == 0;

      if (v54)
      {
        v55 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"os_log error/fault: %@ %@", v52, v60];
        [v7 setObject:v55 forKeyedSubscript:@"DESCRIPTION"];
      }
    }

    goto LABEL_42;
  }

  v44 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "NDFSM: failed to get libtrace symptom details", buf, 2u);
  }

  v7 = 0;
LABEL_42:

  v56 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_libtraceOSLog:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  if (self->_internalOrCarrierSeedBuild)
  {
    v4 = [SymptomExpertSystemHandler libtraceInfo:a3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"PROC_NAME"];
      if ([v6 isEqualToString:@"symptomstool"])
      {
        v7 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Received an os_log_error() symptom from symptomtool. Not processing as this is a test.", buf, 2u);
        }

        v8 = [MEMORY[0x277CCAB98] defaultCenter];
        [v8 postNotificationName:@"com.apple.symptoms.oslogfromsymptomstool" object:self userInfo:v5];
      }

      else
      {
        v9 = [v5 objectForKeyedSubscript:@"SYMPTOM_NAME"];
        if (![v6 length])
        {
          goto LABEL_31;
        }

        v10 = [(SymptomExpertSystemHandler *)self libtraceOSLogWhiteList];
        v11 = [v10 count];

        if (!v11)
        {
          goto LABEL_31;
        }

        v12 = [(SymptomExpertSystemHandler *)self libtraceOSLogWhiteList];
        v13 = [v12 objectForKeyedSubscript:v6];

        if (v13 && (v14 = [v13 containsObject:v9], v13, (v14 & 1) != 0))
        {
          [(NSMutableArray *)self->_processedSymptoms addObject:v5];
          v15 = MEMORY[0x277CCAB68];
          v16 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v5];
          v17 = [v5 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
          v18 = [v5 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
          v19 = objc_msgSend(v15, "stringWithFormat:", @"(Symptom (symptomName %@) (sequence %lu)  (symptomDomain %@) (symptomType %@) "), v9, v16, v17, v18;

          v20 = [v5 objectForKeyedSubscript:@"BUNDLE_ID"];
          v21 = v20;
          if (v20)
          {
            [v19 appendFormat:@"(bundleID \"%@\"", v20];
          }

          if (v6)
          {
            [v19 appendFormat:@"(processName \"%@\"", v6];
          }

          v47 = v21;
          v22 = [v5 objectForKeyedSubscript:@"ENDPOINT"];
          v23 = v22;
          if (v22)
          {
            [v19 appendFormat:@"(url \"%@\"", v22];
          }

          v46 = v23;
          v24 = [v5 objectForKeyedSubscript:@"SIGNATURE_SUBTYPE"];
          v25 = v24;
          if (v24)
          {
            [v19 appendFormat:@"(symptomSubtype \"%@\"", v24];
          }

          v26 = [v5 objectForKeyedSubscript:@"SIGNATURE_SUBTYPE_CONTEXT"];

          if (v26)
          {
            [v19 appendFormat:@"(symptomSubtypeContext \"%@\"", v26];
          }

          v27 = [v5 objectForKeyedSubscript:@"DESCRIPTION"];
          v28 = v27;
          if (v27)
          {
            [v19 appendFormat:@"(symptomDescription \"%@\"", v27];
          }

          v44 = v28;
          v45 = v26;
          v29 = [v5 objectForKeyedSubscript:@"ERROR"];
          v8 = v29;
          if (v29)
          {
            v30 = [v29 domain];
            [v19 appendFormat:@"(errorDomain \"%@\"", v30];

            [v19 appendFormat:@"(errorCode %ld) ", objc_msgSend(v8, "code")];
          }

          if ([v9 isEqualToString:@"com.apple.sharingd.airdrop.discovery.failed"])
          {
            v31 = [v5 objectForKeyedSubscript:@"IDENTIFIER"];
            airdropID = self->_airdropID;
            self->_airdropID = v31;

            v33 = [v5 objectForKeyedSubscript:@"TRIGGER_THRESHOLD"];
            v34 = [v33 intValue];

            if (v34)
            {
              [v19 appendFormat:@"(threshold %d) ", v34];
            }
          }

          v35 = [v5 objectForKeyedSubscript:@"SYMPTOM_PAYLOAD_IS_ANTI_SYMPTOM"];
          v36 = [v35 BOOLValue];

          if (v36)
          {
            [v19 appendFormat:@" (isAntiSymptom TRUE)"];
          }

          [v19 appendString:@""]);
          v37 = [MEMORY[0x277CBEB18] array];
          v50[0] = @"FACT_STRING";
          v50[1] = @"FACT_MODULE";
          v51[0] = v19;
          v51[1] = @"Symptoms";
          v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
          [v37 addObject:v38];

          v48[0] = @"FACT_STRING";
          v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v9];
          v48[1] = @"FACT_MODULE";
          v49[0] = v39;
          v49[1] = @"Symptoms";
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
          [v37 addObject:v40];

          [v5 setObject:v37 forKey:@"FACTS_STRINGS"];
          v41 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
          [v41 addObject:v5];

          v6 = v37;
        }

        else
        {
LABEL_31:
          v42 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v53 = v9;
            v54 = 2112;
            v55 = v6;
            _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_INFO, "Not feeding %@ symptom from %@ into the Expert System", buf, 0x16u);
          }

          v8 = v9;
        }
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_symptomsdSymptom:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_internalOrCarrierSeedBuild)
  {
    v6 = [v4 eventKey];
    if (v6)
    {
      v7 = [SymptomStore nameFromSymptomKey:v6];
      if (v7)
      {
        v8 = v7;
        v9 = [v5 eventData];
        if (!v9)
        {
          v16 = debuggabilityLogHandle;
          if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_40;
          }

          LOWORD(v25) = 0;
          v17 = "missing eventData";
          v18 = v16;
          v19 = OS_LOG_TYPE_ERROR;
          v20 = 2;
LABEL_17:
          _os_log_impl(&dword_23255B000, v18, v19, v17, &v25, v20);
          goto LABEL_40;
        }

        v10 = *(v9 + 16) & 0xFFFFF;
        if (v10 > 0x63008)
        {
          if ((*(v9 + 16) & 0xFFFFFu) > 0x6300D)
          {
            switch(v10)
            {
              case 0x6300Eu:
                [(SymptomExpertSystemHandler *)self _processSymptomsdEnergyBackgroundFullActivityMap:v5 symptomName:v8];
                goto LABEL_40;
              case 0x6300Fu:
                [(SymptomExpertSystemHandler *)self _processUIPerformanceThunderingHerdCase:v5 symptomName:v8];
                goto LABEL_40;
              case 0x63010u:
                [(SymptomExpertSystemHandler *)self _processSymptomsdExcessiveFailedConnections:v5 symptomName:v8];
                goto LABEL_40;
            }
          }

          else
          {
            if (v10 - 405513 < 2)
            {
              [(SymptomExpertSystemHandler *)self _processSymptomsdNoDefaultRoute:v5 symptomName:v8];
              goto LABEL_40;
            }

            if (v10 - 405516 < 2)
            {
              [(SymptomExpertSystemHandler *)self _processSymptomsdWiFiShimSymptom:v5 symptomName:v8];
LABEL_40:

              goto LABEL_41;
            }

            if (v10 == 405515)
            {
LABEL_34:
              [(SymptomExpertSystemHandler *)self _processSymptomsdFlowCountExceededThreshold:v5 symptomName:v8];
              goto LABEL_40;
            }
          }

          goto LABEL_35;
        }

        if ((*(v9 + 16) & 0xFFFFFu) <= 0x63003)
        {
          if (v10 == 405505)
          {
            [(SymptomExpertSystemHandler *)self _processSymptomsdEnergyBackgroundRRCExcActivity:v5 symptomName:v8];
            goto LABEL_40;
          }

          if (v10 == 405506)
          {
            goto LABEL_34;
          }

          v22 = 12291;
        }

        else
        {
          if (v10 - 405508 < 3)
          {
            v21 = MEMORY[0x277D6B220];
            goto LABEL_32;
          }

          v22 = 12295;
        }

        if (v10 != (v22 | 0x60000))
        {
LABEL_35:
          v23 = debuggabilityLogHandle;
          if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            goto LABEL_40;
          }

          v25 = 138412546;
          v26 = v8;
          v27 = 1024;
          v28 = v10;
          v17 = "NDFSM This is an unsupported symptomsd symptom: %@ (%d)";
          v18 = v23;
          v19 = OS_LOG_TYPE_INFO;
          v20 = 18;
          goto LABEL_17;
        }

        v21 = MEMORY[0x277D6B218];
LABEL_32:
        [(SymptomExpertSystemHandler *)self _processSymptomsdRnfSymptom:v5 symptomName:v8 categoryType:*v21];
        goto LABEL_40;
      }

      v15 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412290;
        v26 = v6;
        v12 = "NDFSM Cannot get symptom name from eventKey:%@";
        v13 = v15;
        v14 = 12;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        v12 = "NDFSM Missing event key";
        v13 = v11;
        v14 = 2;
LABEL_14:
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, v12, &v25, v14);
      }
    }

LABEL_41:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_processSymptomsdEnergyBackgroundRRCExcActivity:(id)a3 symptomName:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_internalOrCarrierSeedBuild)
  {
    v8 = [v6 eventData];
    if (v8)
    {
      v9 = v8;
      if ((~*(v8 + 4) & 3) == 0)
      {
        v40 = v7;
        v44 = [MEMORY[0x277CCAB68] stringWithCapacity:20];
        v11 = *(v9 + 24);
        v10 = *(v9 + 32);
        v12 = [v6 eventQualifiers];
        v41 = [v12 objectForKeyedSubscript:@"0"];

        if (v41)
        {
          v45 = 0;
          v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v41 options:0 error:&v45];
          v14 = v45;
          if (!v13)
          {
            v13 = v14;
            v17 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v51 = v41;
              v52 = 2112;
              v53 = v13;
              v33 = "NDFSM: Error trying to convert %@ RRCExcActivity symptom offenders: %@";
              goto LABEL_25;
            }

LABEL_26:

LABEL_27:
            v7 = v40;
            goto LABEL_28;
          }
        }

        else
        {
          v13 = 0;
        }

        v16 = [v13 count];
        v17 = debuggabilityLogHandle;
        if (v16 == v10)
        {
          v18 = v11 / 0xF4240;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            v51 = v18;
            v52 = 2048;
            v53 = v10;
            v54 = 2112;
            v55 = v13;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "NDFSM: receiving RRC Exc activity symptom w/ duration/appcount %llu/%llu all: %@", buf, 0x20u);
          }

          v36 = v18;
          v43 = [v13 keysSortedByValueUsingComparator:&__block_literal_global_570];
          v38 = [v43 firstObject];
          v19 = [MEMORY[0x277CBEB18] array];
          if (v10)
          {
            v20 = 0;
            for (i = 0; i != v10; ++i)
            {
              v22 = [v43 objectAtIndexedSubscript:i];

              if (i >= (v10 - 1))
              {
                [v44 appendString:v22];
              }

              else
              {
                [v44 appendFormat:@"%@ ", v22];
              }

              v23 = [v13 objectForKeyedSubscript:v22];
              [v19 addObject:v23];

              v20 = v22;
            }
          }

          v42 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v6 domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B210]];
          [(NSMutableArray *)self->_processedSymptoms addObject:v42];
          v39 = [MEMORY[0x277CBEB18] array];
          v35 = MEMORY[0x277CCAB68];
          v24 = [v42 objectForKeyedSubscript:@"DESCRIPTION"];
          v25 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v42];
          v26 = [v42 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
          v27 = [v42 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
          v28 = [v19 componentsJoinedByString:@" "];
          v37 = [v35 stringWithFormat:@"(Symptom (symptomName \"%@\"", v40, v24, v25, v26, v27, v38, v36, v10, v44, v28];

          v48[0] = @"FACT_STRING";
          v48[1] = @"FACT_MODULE";
          v49[0] = v37;
          v49[1] = @"Symptoms";
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
          [v39 addObject:v29];

          v46[0] = @"FACT_STRING";
          v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v40];
          v46[1] = @"FACT_MODULE";
          v47[0] = v30;
          v47[1] = @"Symptoms";
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
          [v39 addObject:v31];

          [v42 setObject:v39 forKey:@"FACTS_STRINGS"];
          v32 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
          [v32 addObject:v42];

          goto LABEL_27;
        }

        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v51 = v13;
          v52 = 2048;
          v53 = v10;
          v33 = "NDFSM: Offenders %@ doesn't match expected count %llu";
LABEL_25:
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, v33, buf, 0x16u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    v15 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "NDFSM: SYMPTOM_BACKGROUND_RRC_EXC_ACTIVITY Missing Qualifiers!", buf, 2u);
    }
  }

LABEL_28:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_processSymptomsdEnergyBackgroundFullActivityMap:(id)a3 symptomName:(id)a4
{
  v31[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_internalOrCarrierSeedBuild)
  {
    v8 = [v6 eventData];
    if (v8 && (*(v8 + 4) & 1) != 0)
    {
      v24 = *(v8 + 24);
      v26 = [MEMORY[0x277D6B3E0] stringForFunctionalInterfaceType:*(v8 + 32)];
      v10 = [v6 eventQualifierStringForKey:@"0"];
      if ([(__CFString *)v10 length])
      {
        v25 = v10;
      }

      else
      {

        v25 = @"<Unknown>";
      }

      v11 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v6 domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B210]];
      [(NSMutableArray *)self->_processedSymptoms addObject:v11];
      v12 = [MEMORY[0x277CBEB18] array];
      v13 = MEMORY[0x277CCAB68];
      v14 = [v11 objectForKeyedSubscript:@"DESCRIPTION"];
      v15 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v11];
      v16 = [v11 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
      v17 = [v11 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
      v18 = [v13 stringWithFormat:@"(Symptom (symptomName \"%@\"", v7, v14, v15, v16, v17, v25, v24, v26];

      v30[0] = @"FACT_STRING";
      v30[1] = @"FACT_MODULE";
      v31[0] = v18;
      v31[1] = @"Symptoms";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      [v12 addObject:v19];

      v28[0] = @"FACT_STRING";
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v7];
      v28[1] = @"FACT_MODULE";
      v29[0] = v20;
      v29[1] = @"Symptoms";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      [v12 addObject:v21];

      [v11 setObject:v12 forKey:@"FACTS_STRINGS"];
      v22 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
      [v22 addObject:v11];
    }

    else
    {
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "NDFSM: SYMPTOM_BACKGROUND_FULL_ACTIVITY_MAP Missing Qualifiers!", buf, 2u);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_processSymptomsdFlowCountExceededThreshold:(id)a3 symptomName:(id)a4
{
  v43[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_internalOrCarrierSeedBuild)
  {
    v8 = [v6 eventData];
    if (v8)
    {
      v9 = v8;
      if ((~*(v8 + 4) & 0x1F) == 0)
      {
        v10 = [MEMORY[0x277CCAB68] stringWithCapacity:20];
        v38 = v9[4];
        v33 = v9[3];
        v35 = v9[5];
        v31 = v9[6];
        v11 = v9[7];
        if (v11 >= 0x14)
        {
          v12 = 20;
        }

        else
        {
          v12 = v9[7];
        }

        v36 = v9[7];
        if (v11)
        {
          v13 = 0;
          v39 = &stru_2847966D8;
          while (1)
          {
            v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v13];
            v15 = [v6 eventQualifierStringForKey:v14];

            if (v15)
            {
              if (v13 == 1)
              {
                goto LABEL_14;
              }

              if (v13)
              {
                [v10 appendString:{@", "}];
LABEL_14:
                [v10 appendString:v15];
                goto LABEL_15;
              }

              v16 = v15;

              v39 = v16;
            }

LABEL_15:

            if (v12 == ++v13)
            {
              goto LABEL_18;
            }
          }
        }

        v39 = &stru_2847966D8;
LABEL_18:
        v17 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v6 domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B210]];
        [(NSMutableArray *)self->_processedSymptoms addObject:v17];
        v37 = [MEMORY[0x277CBEB18] array];
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v31];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38];
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v33];
        v34 = [(SymptomExpertSystemHandler *)self arbitratorDictionaryForSymptom:v6 procName:v39 interfaceType:v18 eventCount:v19 duration:v20];

        v32 = MEMORY[0x277CCAB68];
        v21 = [v17 objectForKeyedSubscript:@"DESCRIPTION"];
        v22 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v17];
        v23 = [v17 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
        v24 = [v17 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
        v25 = objc_msgSend(v32, "stringWithFormat:", @"(Symptom (symptomName %@) (symptomDescription %@) (sequence %lu) (symptomDomain %@) (symptomType %@) (processName %@) (appCount %llu) (threshold %llu) (appList %@) (hasDictForArbitrator TRUE)"), v7, v21, v22, v23, v24, v39, v38, v35, v10;

        if (v36)
        {
          [v25 appendString:@" (symptomSubtype \"Lower Threshold\""];
        }

        [v25 appendString:@""]);
        v42[0] = @"FACT_STRING";
        v42[1] = @"FACT_MODULE";
        v43[0] = v25;
        v43[1] = @"Symptoms";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
        [v37 addObject:v26];

        v40[0] = @"FACT_STRING";
        v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v7];
        v40[1] = @"FACT_MODULE";
        v41[0] = v27;
        v41[1] = @"Symptoms";
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
        [v37 addObject:v28];

        [v17 setObject:v37 forKey:@"FACTS_STRINGS"];
        [v17 setObject:v34 forKey:@"ARBITRATOR_EVENT_DICTIONARY"];
        v29 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
        [v29 addObject:v17];
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_processUIPerformanceThunderingHerdCase:(id)a3 symptomName:(id)a4
{
  v50[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_internalOrCarrierSeedBuild)
  {
    v8 = [v6 eventData];
    if (!v8 || (~*(v8 + 4) & 3) != 0)
    {
      v31 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "missing eventData or qualifiers", buf, 2u);
      }
    }

    else
    {
      v9 = *(v8 + 32);
      v38 = *(v8 + 24);
      v10 = [v6 eventQualifierStringForKey:@"0"];
      if (![(__CFString *)v10 length])
      {

        v10 = @"<Unknown>";
      }

      v11 = [v6 eventQualifierStringForKey:@"1"];
      if (![(__CFString *)v11 length])
      {

        v11 = @"<Unknown>";
      }

      v35 = v7;
      v12 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v6 domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B228]];
      v41 = v10;
      [v12 setObject:v10 forKeyedSubscript:@"PROC_NAME"];
      v40 = v11;
      [v12 setObject:v11 forKeyedSubscript:@"SIGNATURE_SUBTYPE_CONTEXT"];
      v13 = [v6 eventQualifiers];
      v14 = [v13 objectForKeyedSubscript:@"2"];

      if (v14 && [(__CFData *)v14 length])
      {
        format = kCFPropertyListXMLFormat_v1_0;
        v15 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], v14, 0, &format, 0);
        v16 = v15;
        if (v15)
        {
          v49 = *MEMORY[0x277D6B130];
          v50[0] = v15;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
          v18 = [(SymptomExpertSystemHandler *)self diagnosticSessionOutput];
          [v18 setObject:v17 forKeyedSubscript:@"DIAGNOSTIC_EXTENSION_PARAMS"];

          v19 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v48 = v17;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "tailDEParams is %@", buf, 0xCu);
          }
        }
      }

      [(NSMutableArray *)self->_processedSymptoms addObject:v12];
      v36 = [MEMORY[0x277CBEB18] array];
      v33 = MEMORY[0x277CCAB68];
      v20 = [v12 objectForKeyedSubscript:@"DESCRIPTION"];
      v37 = v14;
      v21 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v12];
      v22 = [v12 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
      v23 = [v12 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
      v24 = [v12 objectForKeyedSubscript:@"SIGNATURE_SUBTYPE_CONTEXT"];
      v25 = [v12 objectForKeyedSubscript:@"PROC_NAME"];
      v26 = [InterfaceUtils stringForInterfaceType:v9];
      v34 = v12;
      v7 = v35;
      v39 = [v33 stringWithFormat:@"(Symptom (symptomName \"%@\"", v35, v20, v21, v22, v23, v24, v25, v38, v26];

      v45[0] = @"FACT_STRING";
      v45[1] = @"FACT_MODULE";
      v46[0] = v39;
      v46[1] = @"Symptoms";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
      [v36 addObject:v27];

      v43[0] = @"FACT_STRING";
      v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v35];
      v43[1] = @"FACT_MODULE";
      v44[0] = v28;
      v44[1] = @"Symptoms";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
      [v36 addObject:v29];

      [v34 setObject:v36 forKey:@"FACTS_STRINGS"];
      v30 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
      [v30 addObject:v34];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_processSymptomsdExcessiveFailedConnections:(id)a3 symptomName:(id)a4
{
  v51[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_internalOrCarrierSeedBuild)
  {
    goto LABEL_20;
  }

  v8 = [v6 eventData];
  if (v8)
  {
    v9 = v8;
    if ((~*(v8 + 4) & 0x3F) == 0)
    {
      v45 = v7;
      v10 = [MEMORY[0x277CCAB68] stringWithCapacity:20];
      v11 = 0;
      v12 = *(v9 + 32);
      v43 = v12;
      v44 = *(v9 + 40);
      v13 = @"symptomsd-excess-conn-fails";
      v38 = *(v9 + 48);
      v15 = *(v9 + 56);
      v14 = *(v9 + 64);
      v40 = v14;
      v41 = *(v9 + 24);
      while (1)
      {
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v11];
        v17 = [v6 eventQualifierStringForKey:v16];

        if (!v17)
        {
LABEL_12:
          v19 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v6 domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220]];
          [(NSMutableArray *)self->_processedSymptoms addObject:v19];
          v42 = [MEMORY[0x277CBEB18] array];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v44];
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v41];
          v39 = [(SymptomExpertSystemHandler *)self arbitratorDictionaryForSymptom:v6 procName:v13 interfaceType:v20 eventCount:v21 duration:v22];

          v37 = MEMORY[0x277CCAB68];
          v23 = [v19 objectForKeyedSubscript:@"DESCRIPTION"];
          v24 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v19];
          v25 = [v19 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
          v26 = [v19 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
          v27 = objc_msgSend(v37, "stringWithFormat:", @"(Symptom (symptomName %@) (symptomDescription %@) (sequence %lu) (symptomDomain %@) (symptomType %@) (processName %@) (threshold %lld) (appCount %lld) (appList %@) (hasDictForArbitrator TRUE)"), v45, v23, v24, v25, v26, v13, v44, v11, v10;

          if (v38)
          {
            v28 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:v38];
            v29 = [v28 interfaceName];
            [v27 appendFormat:@" (interfaceName \"%@\"", v29];
          }

          if (v40)
          {
            v30 = @"(isIPv6 TRUE)";
          }

          else
          {
            v30 = @"(isIPv6 FALSE)";
          }

          [v27 appendFormat:v30];
          [v27 appendFormat:@" (symptomSpecificCount %llu)", v43];
          [v27 appendString:@""]);
          v50[0] = @"FACT_STRING";
          v50[1] = @"FACT_MODULE";
          v51[0] = v27;
          v51[1] = @"Symptoms";
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
          [v42 addObject:v31];

          v48[0] = @"FACT_STRING";
          v7 = v45;
          v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v45];
          v48[1] = @"FACT_MODULE";
          v49[0] = v32;
          v49[1] = @"Symptoms";
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
          [v42 addObject:v33];

          [v19 setObject:v42 forKey:@"FACTS_STRINGS"];
          [v19 setObject:v39 forKey:@"ARBITRATOR_EVENT_DICTIONARY"];
          v34 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
          [v34 addObject:v19];

          goto LABEL_20;
        }

        if (v11 == 1)
        {
          goto LABEL_10;
        }

        if (v11)
        {
          break;
        }

        v18 = v17;

        v13 = v18;
LABEL_11:
        ++v11;

        if (v11 == 20)
        {
          goto LABEL_12;
        }
      }

      [v10 appendString:{@", "}];
LABEL_10:
      [v10 appendString:v17];
      goto LABEL_11;
    }
  }

  v35 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v47 = v7;
    _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "NDFSM Incorrect syntax for symptomsd symptom: %@, ignoring", buf, 0xCu);
  }

LABEL_20:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_processSymptomsdWiFiShimSymptom:(id)a3 symptomName:(id)a4
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_internalOrCarrierSeedBuild)
  {
    v8 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v6 domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220]];
    [(NSMutableArray *)self->_processedSymptoms addObject:v8];
    v23 = [MEMORY[0x277CBEB18] array];
    v22 = [(SymptomExpertSystemHandler *)self arbitratorDictionaryForSymptom:v6 procName:@"symptomsd" interfaceType:&unk_2847EF5F0 eventCount:0 duration:0];
    v9 = MEMORY[0x277CCAB68];
    v10 = [v8 objectForKeyedSubscript:@"DESCRIPTION"];
    v11 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v8];
    v12 = [v8 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
    v13 = [v8 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
    v14 = objc_msgSend(v9, "stringWithFormat:", @"(Symptom (symptomName %@) (symptomDescription %@) (sequence %lu) (symptomDomain %@) (symptomType %@) (processName %@) (hasDictForArbitrator TRUE)"), v7, v10, v11, v12, v13, CFSTR("symptomsd");

    if ([v7 isEqualToString:@"SYMPTOM_WIFI_LQM_BRADYCARDIA"])
    {
      v15 = [v6 eventData];
      if (v15)
      {
        if ((~*(v15 + 4) & 3) == 0)
        {
          v16 = *(v15 + 32);
          [v14 appendFormat:@" (appCount %llu)", *(v15 + 24)];
          [v14 appendFormat:@" (threshold %llu)", v16];
        }
      }
    }

    [v14 appendString:@""]);
    v26[0] = @"FACT_STRING";
    v26[1] = @"FACT_MODULE";
    v27[0] = v14;
    v27[1] = @"Symptoms";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [v23 addObject:v17];

    v24[0] = @"FACT_STRING";
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v7];
    v24[1] = @"FACT_MODULE";
    v25[0] = v18;
    v25[1] = @"Symptoms";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [v23 addObject:v19];

    [v8 setObject:v23 forKey:@"FACTS_STRINGS"];
    [v8 setObject:v22 forKey:@"ARBITRATOR_EVENT_DICTIONARY"];
    v20 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
    [v20 addObject:v8];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_processSymptomsdNoDefaultRoute:(id)a3 symptomName:(id)a4
{
  v28[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_internalOrCarrierSeedBuild)
  {
    v8 = [v6 eventData];
    if (v8)
    {
      if (*(v8 + 4))
      {
        v9 = *(v8 + 24);
        v10 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v6 domain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220]];
        [(NSMutableArray *)self->_processedSymptoms addObject:v10];
        v11 = [MEMORY[0x277CBEB18] array];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
        v24 = [(SymptomExpertSystemHandler *)self arbitratorDictionaryForSymptom:v6 procName:@"symptomsd" interfaceType:v12 eventCount:0 duration:0];

        v13 = MEMORY[0x277CCAB68];
        v14 = [v10 objectForKeyedSubscript:@"DESCRIPTION"];
        v15 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v10];
        v16 = [v10 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
        v17 = [v10 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
        v18 = [v13 stringWithFormat:@"(Symptom (symptomName \"%@\", v7, v14, v15, v16, v17, @"symptomsd""];

        v27[0] = @"FACT_STRING";
        v27[1] = @"FACT_MODULE";
        v28[0] = v18;
        v28[1] = @"Symptoms";
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
        [v11 addObject:v19];

        v25[0] = @"FACT_STRING";
        v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v7];
        v25[1] = @"FACT_MODULE";
        v26[0] = v20;
        v26[1] = @"Symptoms";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
        [v11 addObject:v21];

        [v10 setObject:v11 forKey:@"FACTS_STRINGS"];
        [v10 setObject:v24 forKey:@"ARBITRATOR_EVENT_DICTIONARY"];
        v22 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
        [v22 addObject:v10];
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_processSymptomsdRnfSymptom:(id)a3 symptomName:(id)a4 categoryType:(id)a5
{
  v49[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_internalOrCarrierSeedBuild)
  {
    v11 = [v8 eventData];
    if (!v11 || (v12 = v11, (~*(v11 + 4) & 7) != 0))
    {
      v21 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v9;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "NDFSM Incorrect syntax for symptomsd symptom: %@, ignoring", buf, 0xCu);
      }
    }

    else
    {
      v42 = v9;
      v43 = v10;
      v13 = [MEMORY[0x277CCAB68] stringWithCapacity:20];
      v38 = v12[3];
      v40 = v12[4];
      v14 = v12[5];
      if (v14 >= 0x14)
      {
        v15 = 20;
      }

      else
      {
        v15 = v12[5];
      }

      if (v14)
      {
        v16 = 0;
        v17 = @"symptomsd";
        while (1)
        {
          v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v16];
          v19 = [v8 eventQualifierStringForKey:v18];

          if (v19)
          {
            if (v16 == 1)
            {
              goto LABEL_14;
            }

            if (v16)
            {
              [v13 appendString:{@", "}];
LABEL_14:
              [v13 appendString:v19];
              goto LABEL_15;
            }

            v20 = v19;

            v17 = v20;
          }

LABEL_15:

          if (v15 == ++v16)
          {
            goto LABEL_20;
          }
        }
      }

      v17 = @"symptomsd";
LABEL_20:
      v22 = [(SymptomExpertSystemHandler *)self symptomDictionaryForSymptom:v8 domain:*MEMORY[0x277D6B020] type:v43];
      [(NSMutableArray *)self->_processedSymptoms addObject:v22];
      v36 = [MEMORY[0x277CBEB18] array];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38];
      v37 = v17;
      v39 = [(SymptomExpertSystemHandler *)self arbitratorDictionaryForSymptom:v8 procName:v17 interfaceType:&unk_2847EF608 eventCount:v23 duration:v24];

      v35 = MEMORY[0x277CCAB68];
      v25 = [v22 objectForKeyedSubscript:@"DESCRIPTION"];
      v26 = [(NSMutableArray *)self->_processedSymptoms indexOfObject:v22];
      v27 = [v22 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
      v28 = [v22 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
      v34 = v17;
      v9 = v42;
      v41 = [v35 stringWithFormat:@"(Symptom (symptomName \"%@\""], v42, v25, v26, v27, v28, v34, v40, v15, v13);

      v48[0] = @"FACT_STRING";
      v48[1] = @"FACT_MODULE";
      v49[0] = v41;
      v49[1] = @"Symptoms";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
      [v36 addObject:v29];

      v46[0] = @"FACT_STRING";
      v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v42];
      v46[1] = @"FACT_MODULE";
      v47[0] = v30;
      v47[1] = @"Symptoms";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
      [v36 addObject:v31];

      [v22 setObject:v36 forKey:@"FACTS_STRINGS"];
      [v22 setObject:v39 forKey:@"ARBITRATOR_EVENT_DICTIONARY"];
      v32 = [(SymptomExpertSystemHandler *)self mutableArrayValueForKey:@"incomingSymptoms"];
      [v32 addObject:v22];

      v10 = v43;
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_usageUpdaterSymptom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_internalOrCarrierSeedBuild)
  {
    v6 = [v4 eventKey];
    if (v6)
    {
      v7 = [SymptomStore nameFromSymptomKey:v6];
      if (v7)
      {
        v8 = v7;
        if (![v7 isEqualToString:@"SYMPTOM_CELL_FLOW_USAGE_THRESHOLD"])
        {
          if (([v8 isEqualToString:@"SYMPTOM_FLOW_COUNT_NOT_MONOTONIC"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"SYMPTOM_ANOMALOUS_PHYSICAL_FLOW_COUNTS") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"SYMPTOM_SKYWALK_LOOKUP_ERROR"))
          {
            v15 = debuggabilityLogHandle;
            if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
            {
              goto LABEL_12;
            }

            v16 = 138412290;
            v17 = v8;
          }

          else
          {
            if ([v8 isEqualToString:@"SYMPTOM_FLOW_COUNT_NOT_MONOTONIC"])
            {
              goto LABEL_12;
            }

            v15 = debuggabilityLogHandle;
            if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
            {
              goto LABEL_12;
            }

            v16 = 138412290;
            v17 = v8;
          }

          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "NDFSM This is an unsupported symptomsd symptom: %@", &v16, 0xCu);
          goto LABEL_12;
        }

        [(SymptomExpertSystemHandler *)self _processAnomalousFlowSymptom:v5 symptomName:v8 categoryType:*MEMORY[0x277D6B220]];
LABEL_12:

        goto LABEL_13;
      }

      v13 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v6;
        v10 = "NDFSM Cannot get symptom name from eventKey:%@";
        v11 = v13;
        v12 = 12;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        v10 = "NDFSM Missing event key";
        v11 = v9;
        v12 = 2;
LABEL_10:
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
      }
    }

    v8 = 0;
    goto LABEL_12;
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_processAnomalousFlowSymptom:(id)a3 symptomName:(id)a4 categoryType:(id)a5
{
  v55[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 eventData];
  if (!v11 || (v12 = v11, (~*(v11 + 4) & 0x1F) != 0))
  {
    v21 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v51 = v9;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "NDFSM Incorrect syntax for symptomsd symptom: %@, ignoring", buf, 0xCu);
    }
  }

  else
  {
    v47 = self;
    v48 = v10;
    v49 = v9;
    v13 = [MEMORY[0x277CCAB68] stringWithCapacity:20];
    v42 = *(v12 + 24);
    v46 = *(v12 + 32);
    v14 = *(v12 + 40);
    v44 = *(v12 + 48);
    v40 = *(v12 + 56);
    if (v14 >= 0x14)
    {
      v15 = 20;
    }

    else
    {
      v15 = *(v12 + 40);
    }

    if (v14)
    {
      v16 = 0;
      v17 = @"symptomsd-flow";
      while (1)
      {
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v16];
        v19 = [v8 eventQualifierStringForKey:v18];

        if (v19)
        {
          if (v16 == 1)
          {
            goto LABEL_13;
          }

          if (v16)
          {
            [v13 appendString:{@", "}];
LABEL_13:
            [v13 appendString:v19];
            goto LABEL_14;
          }

          v20 = v19;

          v17 = v20;
        }

LABEL_14:

        if (v15 == ++v16)
        {
          goto LABEL_19;
        }
      }
    }

    v17 = @"symptomsd-flow";
LABEL_19:
    v22 = v17;
    v23 = [(SymptomExpertSystemHandler *)v47 symptomDictionaryForSymptom:v8 domain:*MEMORY[0x277D6B020] type:v48];
    [(NSMutableArray *)v47->_processedSymptoms addObject:v23];
    v45 = [MEMORY[0x277CBEB18] array];
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v42];
    v43 = [(SymptomExpertSystemHandler *)v47 arbitratorDictionaryForSymptom:v8 procName:v17 interfaceType:v24 eventCount:v25 duration:v26];

    v27 = MEMORY[0x277CCAB68];
    v28 = [v23 objectForKeyedSubscript:@"DESCRIPTION"];
    v29 = [(NSMutableArray *)v47->_processedSymptoms indexOfObject:v23];
    v30 = [v23 objectForKeyedSubscript:@"SIGNATURE_DOMAIN"];
    v41 = v23;
    v31 = [v23 objectForKeyedSubscript:@"SIGNATURE_TYPE"];
    v32 = objc_msgSend(v27, "stringWithFormat:", @"(Symptom (symptomName %@) (symptomDescription %@) (sequence %lu) (symptomDomain %@) (symptomType %@) (processName %@) (bytesCount %lld) (appCount %llu) (appList %@) (threshold 0) (hasDictForArbitrator TRUE)"), v49, v28, v29, v30, v31, v22, v46, v15, v13;

    if (v44)
    {
      v33 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:v44];
      v34 = [v33 interfaceName];
      [v32 appendFormat:@" (interfaceName \"%@\"", v34];
    }

    [v32 appendString:@""]);
    v54[0] = @"FACT_STRING";
    v54[1] = @"FACT_MODULE";
    v55[0] = v32;
    v55[1] = @"Symptoms";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
    [v45 addObject:v35];

    v52[0] = @"FACT_STRING";
    v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(EvaluateIncomingSymptom (symptomName \"%@\"", v49];
    v52[1] = @"FACT_MODULE";
    v53[0] = v36;
    v53[1] = @"Symptoms";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
    [v45 addObject:v37];

    [v41 setObject:v45 forKey:@"FACTS_STRINGS"];
    [v41 setObject:v43 forKey:@"ARBITRATOR_EVENT_DICTIONARY"];
    v38 = [(SymptomExpertSystemHandler *)v47 mutableArrayValueForKey:@"incomingSymptoms"];
    [v38 addObject:v41];

    v9 = v49;
    v10 = v48;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)handleEvent:(id)a3 forEventName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke;
  block[3] = &unk_27898A328;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "NDFSM: Inside SymptomsCAObserverDelegate handleEvent. Event is %@", &buf, 0xCu);
  }

  v4 = *(a1 + 40);
  if ((v4[380] & 1) == 0)
  {
    v13 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    v14 = *(a1 + 48);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    v15 = "NDFSM: Not yet observing CA Events. We will drop this %@ on the floor.";
    v16 = v13;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 12;
LABEL_18:
    _os_log_impl(&dword_23255B000, v16, v17, v15, &buf, v18);
    goto LABEL_34;
  }

  if ((v4[320] & 1) == 0)
  {
    v19 = debuggabilityLogHandle;
    if (v4[321] == 1)
    {
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      LOWORD(buf) = 0;
      v15 = "NDFSM: rules couldn't be loaded";
      v16 = v19;
      v17 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      LOWORD(buf) = 0;
      v15 = "NDFSM: Haven't yet started the Expert System.";
      v16 = v19;
      v17 = OS_LOG_TYPE_INFO;
    }

    v18 = 2;
    goto LABEL_18;
  }

  v5 = [v4 analyticsCLIPSMapping];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 48)];

  v7 = debuggabilityLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "ANALYTICS-CLIPS: Processing event with auto-template map.", &buf, 2u);
    }

    v8 = [v6 objectForKeyedSubscript:@"kAnalyticsCLIPSTemplateModule"];
    v9 = [*(a1 + 40) analyticsCLIPSModuleDictForModule:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"RequiredModules"];
      v12 = [v11 containsObject:@"Baseband"];
    }

    else
    {
      v12 = 0;
    }

    if ([*(a1 + 40) loadModule:v8 requiresBasebandModule:v12])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy__4;
      v57 = __Block_byref_object_dispose__4;
      v58 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = __Block_byref_object_copy__4;
      v50 = __Block_byref_object_dispose__4;
      v51 = [MEMORY[0x277CCAB68] string];
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__4;
      v44 = __Block_byref_object_dispose__4;
      v45 = 0;
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_660;
      v35 = &unk_27898BF78;
      p_buf = &buf;
      v38 = &v46;
      v36 = *(a1 + 32);
      v39 = &v40;
      [v6 enumerateKeysAndObjectsUsingBlock:&v32];
      if ([v47[5] length])
      {
        [v47[5] appendString:@""]);
        v21 = [MEMORY[0x277CBEB38] dictionary];
        [v21 setObject:*(a1 + 48) forKeyedSubscript:@"SYMPTOM_NAME"];
        [v21 setObject:*MEMORY[0x277D6B020] forKeyedSubscript:@"SIGNATURE_DOMAIN"];
        [v21 setObject:*MEMORY[0x277D6B218] forKeyedSubscript:@"SIGNATURE_TYPE"];
        v22 = v41[5];
        if (v22)
        {
          [v21 setObject:v22 forKeyedSubscript:@"MACH_TIMESTAMP"];
        }

        v23 = MEMORY[0x277CBEB18];
        v24 = v47[5];
        v52[0] = @"FACT_STRING";
        v52[1] = @"FACT_MODULE";
        v53[0] = v24;
        v53[1] = v8;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
        v26 = [v23 arrayWithObject:v25];
        [v21 setObject:v26 forKeyedSubscript:@"FACTS_STRINGS"];

        v27 = *(a1 + 32);
        if (v27)
        {
          [v21 setObject:v27 forKeyedSubscript:@"CONTEXT"];
        }

        [*(*(a1 + 40) + 416) addObject:v21];
        v28 = [*(a1 + 40) mutableArrayValueForKey:@"incomingSymptoms"];
        [v28 addObject:v21];
      }

      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v46, 8);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v29 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 32);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_ERROR, "ANALYTICS-CLIPS: Failed to load required modules: %@", &buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 48);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unexpected AWD Metric Name %@", &buf, 0xCu);
  }

LABEL_34:
  v31 = *MEMORY[0x277D85DE8];
}

void __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_660(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"kAnalyticsCLIPSTemplateName"])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithFormat:", @"(%@ "), *(*(*(a1 + 40) + 8) + 40);
    [v7 insertString:v8 atIndex:0];

    goto LABEL_40;
  }

  if ([v5 isEqualToString:@"kAnalyticsCLIPSTemplateModule"])
  {
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
    v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      if (v10)
      {
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(*(*(a1 + 48) + 8) + 40) appendFormat:@" (%@ \"%@\"", v12, v10];
          if ([v9 isEqualToString:@"timestamp"])
          {
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v10, "unsignedLongValue")}];
            v14 = *(*(a1 + 56) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(*(*(a1 + 48) + 8) + 40) appendFormat:@" (%@ %@)", v12, v10];
            if ([v9 isEqualToString:@"timestamp"])
            {
              objc_storeStrong((*(*(a1 + 56) + 8) + 40), v10);
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = *(*(*(a1 + 48) + 8) + 40);
              v30 = [v10 hexStringWithSpaces:0];
              [v29 appendFormat:@" (%@ \"%@\"", v12, v30];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v55 = __Block_byref_object_copy__4;
                *&v56 = __Block_byref_object_dispose__4;
                *(&v56 + 1) = [MEMORY[0x277CCAB68] string];
                v50[0] = MEMORY[0x277D85DD0];
                v50[1] = 3221225472;
                v50[2] = __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_2;
                v50[3] = &unk_27898BEB0;
                v53 = buf;
                v51 = v9;
                v35 = v12;
                v52 = v35;
                [v10 enumerateObjectsUsingBlock:v50];
                if ([*(*&buf[8] + 40) length])
                {
                  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@" (%@ %@)", v35, *(*&buf[8] + 40)];
                }

                _Block_object_dispose(buf, 8);
              }

              else
              {
                v36 = debuggabilityLogHandle;
                if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                {
                  v37 = v36;
                  v38 = objc_opt_class();
                  v39 = NSStringFromClass(v38);
                  *buf = 138413058;
                  *&buf[4] = v9;
                  *&buf[12] = 2112;
                  *&buf[14] = v12;
                  *&buf[22] = 2112;
                  v55 = v10;
                  LOWORD(v56) = 2112;
                  *(&v56 + 2) = v39;
                  _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_ERROR, "We currently only support converting NSArray, NSString, NSNumber, NSData values to a CLIPS fact. (metric:%@ slot:%@ value:%@ [%@])", buf, 0x2Au);
                }
              }
            }
          }
        }
      }

LABEL_38:

      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count] <= 1)
      {
        v21 = [v10 firstObject];

        v10 = v21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v10;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_681;
        v46[3] = &unk_27898BF00;
        v23 = *(a1 + 48);
        v47 = v22;
        v49 = v23;
        v48 = v9;
        v10 = v22;
        [v20 enumerateKeysAndObjectsUsingBlock:v46];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v10;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v55 = __Block_byref_object_copy__4;
          *&v56 = __Block_byref_object_dispose__4;
          *(&v56 + 1) = [MEMORY[0x277CBEB38] dictionary];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_687;
          v42[3] = &unk_27898BF28;
          v43 = v20;
          v45 = buf;
          v44 = v9;
          [v10 enumerateObjectsUsingBlock:v42];
          v28 = *(*&buf[8] + 40);
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_689;
          v41[3] = &unk_27898BF50;
          v41[4] = *(a1 + 48);
          [v28 enumerateKeysAndObjectsUsingBlock:v41];

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v31 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            v32 = v31;
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            *buf = 138412546;
            *&buf[4] = v10;
            *&buf[12] = 2112;
            *&buf[14] = v34;
            _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "We currently only support parsing NSDictionary and NSArray containers to a CLIPS fact. (%@ [%@])", buf, 0x16u);
          }
        }
      }

      goto LABEL_38;
    }

    if (!v6)
    {
LABEL_39:

      goto LABEL_40;
    }

    v24 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138412802;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v55 = v6;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "Unexpected class (%@) for value in ANALYTICS-CLIPS template map. key:%@ value:%@", buf, 0x20u);
    }
  }

  else if (v5)
  {
    v16 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unexpected class (%@) for key in ANALYTICS-CLIPS template map. key: %@", buf, 0x16u);
    }
  }

LABEL_40:

  v40 = *MEMORY[0x277D85DE8];
}

void __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_2(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(a1[6] + 8) + 40) appendFormat:@" %@", v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1[6] + 8) + 40) appendFormat:@" %@", v3];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = *(*(a1[6] + 8) + 40);
        v6 = [v3 hexStringWithSpaces:0];
        [v5 appendFormat:@" %@", v6];
      }

      else
      {
        v7 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          v8 = a1[4];
          v9 = a1[5];
          v10 = v7;
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = 138413058;
          v14 = v8;
          v15 = 2112;
          v16 = v9;
          v17 = 2112;
          v18 = v3;
          v19 = 2112;
          v20 = v12;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "We currently only support converting repeatable NSString, NSNumber or NSData values to a CLIPS fact. (metric:%@ slot:%@ value:%@ [%@])", buf, 0x2Au);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_681(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(*(*(a1 + 48) + 8) + 40) appendFormat:@" (%@ \"%@\"", v7, v8];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(*(*(a1 + 48) + 8) + 40) appendFormat:@" (%@ %@)", v7, v8];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = *(*(*(a1 + 48) + 8) + 40);
            v14 = [v8 hexStringWithSpaces:0];
            [v13 appendFormat:@" (%@ \"%@\"", v7, v14];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v15 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                v16 = *(a1 + 40);
                v17 = v15;
                v18 = objc_opt_class();
                v19 = NSStringFromClass(v18);
                *buf = 138413314;
                v24 = v16;
                v25 = 2112;
                v26 = v5;
                v27 = 2112;
                v28 = v7;
                v29 = 2112;
                v30 = v8;
                v31 = 2112;
                v32 = v19;
                _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "We currently only support converting NSString, NSNumber or NSData values to a CLIPS fact. (metric:%@.%@ slot:%@ value:%@ [%@])", buf, 0x34u);
              }

              goto LABEL_10;
            }

            v14 = v8;
            if ([v14 count])
            {
              objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "appendFormat:", @" (%@"), v7;
              v22[0] = MEMORY[0x277D85DD0];
              v22[1] = 3221225472;
              v22[2] = __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_2_685;
              v22[3] = &unk_27898BED8;
              v22[4] = *(a1 + 48);
              [v14 enumerateObjectsUsingBlock:v22];
              [*(*(*(a1 + 48) + 8) + 40) appendFormat:@""], v20, v21);
            }
          }
        }
      }
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v5)
  {
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = v9;
      v10 = objc_opt_class();
      v8 = NSStringFromClass(v10);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unexpected class (%@) for key in ANALYTICS-CLIPS template nested map. key: %@.%@ ", buf, 0x20u);
      goto LABEL_10;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

void __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_2_685(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(*(a1 + 32) + 8) + 40) appendFormat:@" %@", v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(*(a1 + 32) + 8) + 40) appendFormat:@" %@", v3];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = *(*(*(a1 + 32) + 8) + 40);
        v6 = [v3 hexStringWithSpaces:0];
        [v5 appendFormat:@" %@", v6];
      }

      else
      {
        v7 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          v8 = v7;
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138412546;
          v12 = v3;
          v13 = 2112;
          v14 = v10;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Unexpected subsequent level nested value type: %@ (%@)", buf, 0x16u);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_687(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = debuggabilityLogHandle;
    v8 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR);
    if (isKindOfClass)
    {
      if (!v8)
      {
        goto LABEL_9;
      }

      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v20 = v3;
      v21 = 2112;
      v22 = v11;
      v12 = "We currently only support parsing single level of nested AWD events. (%@ [%@])";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_9;
      }

      v9 = v7;
      v13 = objc_opt_class();
      v11 = NSStringFromClass(v13);
      *buf = 138412546;
      v20 = v3;
      v21 = 2112;
      v22 = v11;
      v12 = "We currently only support parsing nested NSDictionary containers to a CLIPS fact. (%@ [%@])";
    }

    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);

    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_2_688;
  v16[3] = &unk_27898BF00;
  v17 = v3;
  v15 = *(a1 + 40);
  v5 = v15;
  v18 = v15;
  [v4 enumerateKeysAndObjectsUsingBlock:v16];

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
}

void __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_2_688(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v9 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v7];
    if (!v9)
    {
      v9 = [MEMORY[0x277CCAB68] string];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v9 forKeyedSubscript:v7];
    }

    if (!v8)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 appendFormat:@" %@", v8];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v8 hexStringWithSpaces:0];
          [v9 appendFormat:@" %@", v14];
        }

        else
        {
          v15 = debuggabilityLogHandle;
          if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          v16 = *(a1 + 40);
          v14 = v15;
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          *buf = 138413314;
          v20 = v16;
          v21 = 2112;
          v22 = v5;
          v23 = 2112;
          v24 = v7;
          v25 = 2112;
          v26 = v8;
          v27 = 2112;
          v28 = v18;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "We currently only support converting NSString, NSNumber or NSData values to a CLIPS fact. (metric:%@.%@ slot:%@ value:%@ [%@])", buf, 0x34u);
        }

        goto LABEL_12;
      }

      [v9 appendFormat:@" %@", v8];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v5)
  {
    v10 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = v10;
      v11 = objc_opt_class();
      v8 = NSStringFromClass(v11);
      v12 = *(a1 + 40);
      *buf = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unexpected class (%@) for key in ANALYTICS-CLIPS template nested map. key: %@.%@", buf, 0x20u);
LABEL_13:
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __55__SymptomExpertSystemHandler_handleEvent_forEventName___block_invoke_689(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 length])
  {
    [*(*(*(a1 + 32) + 8) + 40) appendFormat:@" (%@ %@)", v6, v5];
  }
}

- (void)observer:(id)a3 didChangeConfiguration:(id)a4 type:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10 || ([v10 isEqualToString:@"AutoBugCapture-NDF-CLIPS"] & 1) == 0)
  {
    v13 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v19 = v11;
    v14 = "Received an unexpected AnalyticsConfigurationObserver configurationType %@";
LABEL_7:
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
    goto LABEL_8;
  }

  if (!v9)
  {
    v13 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v19 = v11;
    v14 = "There's no OTA configuration for type %@";
    goto LABEL_7;
  }

  v12 = [(ExpertSystemHandlerCore *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__SymptomExpertSystemHandler_observer_didChangeConfiguration_type___block_invoke;
  v16[3] = &unk_27898A7D0;
  v16[4] = self;
  v17 = v9;
  dispatch_async(v12, v16);

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
}

_BYTE *__67__SymptomExpertSystemHandler_observer_didChangeConfiguration_type___block_invoke(uint64_t a1)
{
  [*(a1 + 32) processIncomingOTAUpdate:*(a1 + 40)];
  result = *(a1 + 32);
  if (result[320] == 1)
  {

    return [result ingestPendingOTAUpdates];
  }

  return result;
}

- (void)processIncomingOTAUpdate:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v41;
    v35 = *v41;
    do
    {
      v6 = 0;
      do
      {
        if (*v41 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * v6);
        v8 = [v7 objectForKeyedSubscript:@"Module"];
        v9 = [v7 objectForKeyedSubscript:@"Version"];
        v10 = [v7 objectForKeyedSubscript:@"Platforms"];
        v11 = [v7 objectForKeyedSubscript:@"ExpiryDate"];
        v12 = [v7 objectForKeyedSubscript:@"Compressed_CLP"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
        {
          v13 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v45 = v8;
            v46 = 2112;
            v47 = v10;
            v48 = 2112;
            v49 = v9;
            _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Processing an OTA Update for module:%@, platforms:%@, version:%@", buf, 0x20u);
          }

          if ([v10 count])
          {
            v14 = [(CLIPSShim *)self->ruleEngine otaUpdatePlatformStringForDeviceClass:[(SystemProperties *)self->systemPropsRelay deviceClass]];
            if (v14 && [v10 containsObject:v14])
            {
              v15 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v45 = v14;
                v46 = 2112;
                v47 = v8;
                v48 = 2112;
                v49 = v10;
                _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "This device (%@) is supported by this OTA update %@ for %@", buf, 0x20u);
              }

              goto LABEL_22;
            }

            v17 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v45 = v14;
              v46 = 2112;
              v47 = v8;
              v48 = 2112;
              v49 = v10;
              _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "This device (%@) is NOT supported by this OTA update %@ for %@ and will be skipped", buf, 0x20u);
            }

LABEL_40:

            goto LABEL_41;
          }

          v18 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v45 = v8;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "This OTA update (%@) contains no platform info. Assuming it's ok.", buf, 0xCu);
          }

LABEL_22:
          v14 = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)self->_pendingOTACLIPSUpdates setObject:v14 forKeyedSubscript:v8];
          if (v11)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 length])
            {
              v19 = objc_alloc_init(MEMORY[0x277CCAA68]);
              [v19 setFormatOptions:{objc_msgSend(v19, "formatOptions") | 0x300}];
              v36 = v19;
              v20 = [v19 dateFromString:v11];
              if (!v20)
              {
                v28 = debuggabilityLogHandle;
                if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v45 = v11;
                  _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "The expirationDateString (%@) is invalid. Please use YYYY-MM-DDTHH:MM:SS+ZZ:ZZ", buf, 0xCu);
                }

                [v14 setObject:&unk_2847EF620 forKeyedSubscript:@"FailureReason"];

                goto LABEL_40;
              }

              v21 = v20;
              v22 = [MEMORY[0x277CBEAA8] date];
              if ([v21 compare:v22] == -1)
              {
                log = debuggabilityLogHandle;
                if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  v45 = v21;
                  v46 = 2112;
                  v47 = v11;
                  v48 = 2112;
                  v49 = v22;
                  _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_ERROR, "This OTA Update has expired (%@ [%@] compared to %@)", buf, 0x20u);
                }

                [v14 setObject:&unk_2847EF638 forKeyedSubscript:{@"FailureReason", log}];

                v5 = v35;
                goto LABEL_40;
              }

              v5 = v35;
              goto LABEL_28;
            }

            v26 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v45 = v11;
              _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "Expiration Date value is NOT valid: %@", buf, 0xCu);
            }

            v23 = v14;
            v24 = &unk_2847EF620;
LABEL_38:
            v25 = @"FailureReason";
          }

          else
          {
LABEL_28:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 length])
            {
              v27 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v45 = v9;
                _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Version value is NOT valid: %@", buf, 0xCu);
              }

              v23 = v14;
              v24 = &unk_2847EF650;
              goto LABEL_38;
            }

            [v14 setObject:v9 forKeyedSubscript:@"Version"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v29 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                v30 = v29;
                v31 = objc_opt_class();
                v37 = NSStringFromClass(v31);
                *buf = 138412290;
                v45 = v37;
                _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Compressed_CLP value is NOT a string: %@", buf, 0xCu);
              }

              v23 = v14;
              v24 = &unk_2847EF668;
              goto LABEL_38;
            }

            v23 = v14;
            v24 = v12;
            v25 = @"Constructs";
          }

          [v23 setObject:v24 forKeyedSubscript:v25];
          goto LABEL_40;
        }

        v16 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v45 = v8;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Module value is NOT valid: %@", buf, 0xCu);
        }

LABEL_41:

        ++v6;
      }

      while (v4 != v6);
      v32 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
      v4 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)ingestPendingOTAUpdates
{
  v2 = self;
  v64 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->states objectAtIndexedSubscript:2];
  v4 = [(ExpertSystemStateCore *)v2->currentState label];
  v40 = v3;
  v5 = [v3 label];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [(SymptomExpertSystemHandler *)v2 cancelDiagnosticSession:v2->_diagnosticSessionIdentifier];
  }

  [(CLIPSShim *)v2->ruleEngine clear];
  [(SymptomExpertSystemHandler *)v2 _removeAllObservers];
  v7 = [MEMORY[0x277CBEB18] array];
  [(NSMutableDictionary *)v2->_pendingOTACLIPSUpdates allKeys];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v58 = 0u;
  v8 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  p_isa = &v2->super.super.isa;
  v44 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v56;
    do
    {
      v13 = 0;
      v14 = v10;
      v15 = v11;
      do
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v55 + 1) + 8 * v13);

        v10 = [(NSMutableDictionary *)v2->_pendingOTACLIPSUpdates objectForKeyedSubscript:v11];

        ruleEngine = v2->ruleEngine;
        v17 = [v10 objectForKeyedSubscript:@"Constructs"];
        v18 = [v10 objectForKeyedSubscript:@"Version"];
        [(CLIPSShim *)ruleEngine setOTAUpdate:v17 version:v18 module:v11];

        v2 = p_isa;
        [v44 addObject:v11];
        ++v13;
        v14 = v10;
        v15 = v11;
      }

      while (v9 != v13);
      v9 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v9);

    v7 = v44;
  }

  [(NSMutableDictionary *)v2->_pendingOTACLIPSUpdates removeAllObjects];
  if ([v7 containsObject:@"COMMON"])
  {
    v19 = 0;
  }

  else
  {
    [v7 insertObject:@"COMMON" atIndex:0];
    v19 = 1;
  }

  if (([v7 containsObject:@"Modules"] & 1) == 0)
  {
    [v7 insertObject:@"Modules" atIndex:v19++];
  }

  if (([v7 containsObject:@"Networking"] & 1) == 0)
  {
    [v7 insertObject:@"Networking" atIndex:v19];
  }

  v20 = debuggabilityLogHandle;
  v21 = "atchItemsCommand";
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v62 = v7;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "Unsorted Pending OTA Load List is : %@", buf, 0xCu);
  }

  v22 = [v7 sortedArrayUsingComparator:&__block_literal_global_720];
  v23 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v62 = v22;
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "Sorted Load List is : %@", buf, 0xCu);
  }

  [(CLIPSShim *)v2->ruleEngine addModuleNamed:@"EXTERNAL" withConstruct:@"(defmodule EXTERNAL (export deffunction ?ALL))"];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v41 = v22;
  v24 = [v41 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v52;
LABEL_24:
    v28 = 0;
    v29 = v26;
    while (1)
    {
      if (*v52 != v27)
      {
        objc_enumerationMutation(v41);
      }

      v26 = *(*(&v51 + 1) + 8 * v28);

      v30 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = v26;
        _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "observer:didChangeConfiguration: About to load %@ module", buf, 0xCu);
      }

      if (![p_isa[39] loadConstructsForModule:v26])
      {
        break;
      }

      ++v28;
      v29 = v26;
      if (v25 == v28)
      {
        v25 = [v41 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v25)
        {
          goto LABEL_24;
        }

        v26 = 0;
        break;
      }
    }

    v21 = "ListWatchItemsCommand" + 5;
  }

  else
  {
    v26 = 0;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = [v41 reverseObjectEnumerator];
  v32 = [v31 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v48;
    v43 = *(v21 + 243);
    do
    {
      for (i = 0; i != v33; ++i)
      {
        v36 = v26;
        if (*v48 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v26 = *(*(&v47 + 1) + 8 * i);

        if (([v26 isEqualToString:@"COMMON"] & 1) == 0 && (objc_msgSend(v26, "isEqualToString:", @"Modules") & 1) == 0 && (objc_msgSend(v26, "isEqualToString:", @"Networking") & 1) == 0)
        {
          v37 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = v43;
            v62 = v26;
            _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_INFO, "observer:didChangeConfiguration: About to unload %@ module", buf, 0xCu);
          }

          [p_isa[39] unloadConstructsForModule:v26 unconditionally:1];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v33);
  }

  v38 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_INFO, "STOP ANALYTICS OBSERVERING ON ingestPendingOTAUpdates", buf, 2u);
  }

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __53__SymptomExpertSystemHandler_ingestPendingOTAUpdates__block_invoke_727;
  v46[3] = &unk_27898A0C8;
  v46[4] = p_isa;
  [p_isa stopAnalyticsObserving:v46];

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SymptomExpertSystemHandler_ingestPendingOTAUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  if ([v6 isEqualToString:@"COMMON"])
  {
    goto LABEL_2;
  }

  if ([v7 isEqualToString:@"COMMON"])
  {
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"Modules"])
  {
    v9 = [v7 isEqualToString:@"COMMON"] == 0;
    v10 = 1;
  }

  else
  {
    if (![v7 isEqualToString:@"Modules"])
    {
      if ([v6 isEqualToString:@"Baseband"] && (objc_msgSend(v7, "isEqualToString:", @"Modules") & 1) != 0)
      {
        goto LABEL_4;
      }

      if ([v6 isEqualToString:@"Modules"] && (objc_msgSend(v7, "isEqualToString:", @"Baseband") & 1) != 0)
      {
        goto LABEL_2;
      }

      if ([v6 isEqualToString:@"BasebandMAV"] && (objc_msgSend(v7, "isEqualToString:", @"Baseband") & 1) != 0)
      {
        goto LABEL_4;
      }

      if ([v6 isEqualToString:@"Baseband"] && (objc_msgSend(v7, "isEqualToString:", @"BasebandMAV") & 1) != 0)
      {
        goto LABEL_2;
      }

      if ([v6 isEqualToString:@"BasebandINT"] && (objc_msgSend(v7, "isEqualToString:", @"Baseband") & 1) != 0)
      {
        goto LABEL_4;
      }

      if ([v6 isEqualToString:@"Baseband"] && (objc_msgSend(v7, "isEqualToString:", @"BasebandINT") & 1) != 0)
      {
LABEL_2:
        v8 = -1;
        goto LABEL_12;
      }

      if (![v6 isEqualToString:@"BasebandDAL"] || (objc_msgSend(v7, "isEqualToString:", @"Baseband") & 1) == 0)
      {
        if ([v6 isEqualToString:@"Baseband"])
        {
          [v7 isEqualToString:@"BasebandDAL"];
        }

        goto LABEL_2;
      }

LABEL_4:
      v8 = 1;
      goto LABEL_12;
    }

    v9 = [v6 isEqualToString:@"COMMON"] == 0;
    v10 = -1;
  }

  if (v9)
  {
    v8 = -v10;
  }

  else
  {
    v8 = v10;
  }

LABEL_12:

  return v8;
}

uint64_t __53__SymptomExpertSystemHandler_ingestPendingOTAUpdates__block_invoke_727(uint64_t a1)
{
  [*(*(a1 + 32) + 312) reset];
  [*(a1 + 32) _addAllObservers];
  [*(a1 + 32) setDefaultFacts];
  [*(a1 + 32) runEngine];
  [*(*(a1 + 32) + 312) releaseAllFreeMemory];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Done ingesting the pending OTA Updates", v4, 2u);
  }

  return [*(a1 + 32) startCAEventObserverTimer];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SymptomExpertSystemHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_14 != -1)
  {
    dispatch_once(&sharedInstance_pred_14, block);
  }

  v2 = sharedInstance_sharedInstance_14;

  return v2;
}

void __44__SymptomExpertSystemHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_14;
  sharedInstance_sharedInstance_14 = v1;

  v3 = sharedInstance_sharedInstance_14;
  if (sharedInstance_sharedInstance_14)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [ConfigurationHandler setConfigurationObject:v3 forName:v5];
  }
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[SymptomExpertSystemHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

+ (BOOL)noteSymptom:(id)a3
{
  v3 = a3;
  v4 = +[SymptomExpertSystemHandler sharedInstance];
  v5 = [v4 noteSymptom:v3];

  return v5;
}

- (BOOL)noteSymptom:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 eventKey];
  if (self->administrativeState != 1)
  {
    failedToLoadDefaultRules = self->_failedToLoadDefaultRules;
    v13 = debuggabilityLogHandle;
    v14 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
    if (failedToLoadDefaultRules)
    {
      if (!v14)
      {
        goto LABEL_27;
      }

      *buf = 0;
      v15 = "NDFSM: auto bug capture is disabled because the rules couldn't be loaded";
      v16 = v13;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 2;
LABEL_21:
      _os_log_impl(&dword_23255B000, v16, v17, v15, buf, v18);
      goto LABEL_27;
    }

    if (!v14)
    {
      goto LABEL_27;
    }

    *buf = 138412290;
    v39 = v5;
    v15 = "NDFSM: auto bug capture is administratively OFF, ignoring symptom with key: %@";
    v16 = v13;
    goto LABEL_17;
  }

  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "NDFSM: receiving symptom with key: %@", buf, 0xCu);
  }

  v7 = [v4 eventData];
  if (!v7)
  {
    v19 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 138412290;
    v39 = v4;
    v15 = "symptom is corrupted: %@";
    v16 = v19;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_20;
  }

  v8 = (*(v7 + 16) >> 12);
  v9 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v39 = v5;
    v40 = 1024;
    v41 = v8;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "NDFSM: receiving symptom with key: %@ for reporter %u", buf, 0x12u);
  }

  if ((v8 - 103) >= 2)
  {
    switch(v8)
    {
      case 'c':
        v21 = [(ExpertSystemHandlerCore *)self queue];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __42__SymptomExpertSystemHandler_noteSymptom___block_invoke_2;
        v34[3] = &unk_27898A7D0;
        v34[4] = self;
        v35 = v4;
        dispatch_async(v21, v34);

        v11 = v35;
        goto LABEL_26;
      case 'j':
        v20 = [(ExpertSystemHandlerCore *)self queue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __42__SymptomExpertSystemHandler_noteSymptom___block_invoke_3;
        v32[3] = &unk_27898A7D0;
        v32[4] = self;
        v33 = v4;
        dispatch_async(v20, v32);

        v11 = v33;
        goto LABEL_26;
      case 'i':
        v10 = [(ExpertSystemHandlerCore *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __42__SymptomExpertSystemHandler_noteSymptom___block_invoke;
        block[3] = &unk_27898A7D0;
        block[4] = self;
        v37 = v4;
        dispatch_async(v10, block);

        v11 = v37;
LABEL_26:

        goto LABEL_27;
    }

    v22 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBTRACE_OS_LOG"];
    v23 = [v5 isEqualToString:v22];

    if (v23)
    {
      v24 = [(ExpertSystemHandlerCore *)self queue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __42__SymptomExpertSystemHandler_noteSymptom___block_invoke_4;
      v30[3] = &unk_27898A7D0;
      v30[4] = self;
      v31 = v4;
      dispatch_async(v24, v30);

      v11 = v31;
      goto LABEL_26;
    }

    v27 = [SymptomStore keyFromSymptomName:@"com.apple.ndfsm.stepper"];
    v28 = [v5 isEqualToString:v27];

    v29 = debuggabilityLogHandle;
    if (v28)
    {
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "NDFSM: received com.apple.ndfsm.stepper symptom", buf, 2u);
      }

      [(SymptomExpertSystemHandler *)self setStepper:[(SymptomExpertSystemHandler *)self stepper]+ 1];
      goto LABEL_27;
    }

    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 138412290;
    v39 = v5;
    v15 = "NDFSM: Unable to process symptom: %@";
    v16 = v29;
LABEL_17:
    v17 = OS_LOG_TYPE_INFO;
LABEL_20:
    v18 = 12;
    goto LABEL_21;
  }

LABEL_27:

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)internalStateDictionary
{
  v2 = +[SymptomExpertSystemHandler sharedInstance];
  v3 = [v2 internalStateDictionary];

  return v3;
}

- (id)internalStateDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->administrativeState];
  [v3 setObject:v4 forKeyedSubscript:@"adminEnabled"];

  v5 = [(ExpertSystemStateCore *)self->currentState label];
  [v3 setObject:v5 forKeyedSubscript:@"stateMachineState"];

  v6 = [(NSArray *)self->states objectAtIndexedSubscript:2];
  v7 = [(ExpertSystemStateCore *)self->currentState label];
  v8 = [v6 label];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v6 triggeringSymptom];
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D6AFE8]];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_loadedCLIPSRulesAndFacts];
  [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x277D6AFE0]];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_failedToLoadDefaultRules];
  [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D6AFD8]];

  v13 = [(CLIPSShim *)self->ruleEngine modules];
  v14 = [v13 copy];
  [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277D6AFD0]];

  return v3;
}

- (void)clipsConsoleOutput:(id)a3 consoleChannel:(const char *)a4 forEngine:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ((strlen(a4) != 6 || !strncmp(a4, "wtrace", 6uLL)) && (([v7 hasPrefix:@"==> f-"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"<== f-") & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"FIRE")))
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSince1970];
    v10 = v9;

    v11 = [v7 copy];
    if ([v11 hasPrefix:@"FIRE"])
    {
      v12 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }
    }

    v13 = [(ExpertSystemHandlerCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SymptomExpertSystemHandler_clipsConsoleOutput_consoleChannel_forEngine___block_invoke;
    block[3] = &unk_27898BFA0;
    v19 = v10;
    v17 = v11;
    v18 = self;
    v14 = v11;
    dispatch_async(v13, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __74__SymptomExpertSystemHandler_clipsConsoleOutput_consoleChannel_forEngine___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [v4 setObject:v2 forKeyedSubscript:*MEMORY[0x277D6B148]];

  [v4 setObject:*MEMORY[0x277D6B0C8] forKeyedSubscript:*MEMORY[0x277D6B150]];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277D6B128]];
  }

  [*(*(a1 + 40) + 432) addObject:v4];
}

- (void)registerAllCLIPSCallbacks
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ProbeManager *)self->_probeManager probeCallbackFunctions];
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
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        ruleEngine = self->ruleEngine;
        v10 = [v3 objectForKeyedSubscript:v8];
        [(CLIPSShim *)ruleEngine registerCallbackFunction:v8 selector:NSSelectorFromString(v10) target:self->_probeManager];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"startDiagnosticSession" selector:sel_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"startDiagnosticSessionWithRemote" selector:sel_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_triggerRemoteCase_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"snapshotDiagnosticSession" selector:sel_snapshotDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"addDiagnosticSessionInfo" selector:sel_addDiagnosticSession_hasDictionary_endSession_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"endDiagnosticSession" selector:sel_endDiagnosticSession_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"cancelDiagnosticSession" selector:sel_cancelDiagnosticSession_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"logSessionEventProbe" selector:sel_logSessionEventProbe_endpoint_interface_status_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"logSessionEventSymptom" selector:sel_logSessionEventSymptom_process_endpoint_interface_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"logSessionEventMessage" selector:sel_logSessionEventMessage_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"WaitForFactWithTemplateName" selector:sel_waitForFactWithTemplateName_module_timeout_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"CancelWaitForFactWithTemplateName" selector:sel_cancelWaitForFactWithTemplateName_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"AdjustStrobeTimer" selector:sel_adjustStrobeTimerInterval_maximum_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"InterfaceTypeForName" selector:sel_interfaceTypeForName_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"AnalyticsObserveModule" selector:sel_analyticsObserveModule_requiredModules_unloadModule_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"UnloadModule" selector:sel_unloadModule_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"DeactivateModule" selector:sel_deactivateModule_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"GetBatteryPercentage" selector:sel_getBatteryPercentage_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"RequestCoreTelephonyDumpViaDiagnosticExtension" selector:sel_requestCoreTelephonyDumpViaDiagnosticExtension_folderPrefix_dumpReason_resetBaseband_ target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"GetOperatorName" selector:sel_getOperatorName target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"GetSignalBars" selector:sel_getSignalBars target:self];
  [(CLIPSShim *)self->ruleEngine registerCallbackFunction:@"FetchCoreTelephonyLoggingEnabledStatus" selector:sel_fetchCoreTelephonyLoggingEnabledStatus target:self];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadDefaultRules
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_pendingOTACLIPSUpdates;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v20 = *v23;
    do
    {
      v6 = 0;
      v7 = v5;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v6);
        v5 = [(NSMutableDictionary *)self->_pendingOTACLIPSUpdates objectForKeyedSubscript:v8];

        ruleEngine = self->ruleEngine;
        v10 = [v5 objectForKeyedSubscript:@"Constructs"];
        v11 = [v5 objectForKeyedSubscript:@"Version"];
        [(CLIPSShim *)ruleEngine setOTAUpdate:v10 version:v11 module:v8];

        ++v6;
        v7 = v5;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->_pendingOTACLIPSUpdates removeAllObjects];
  if ([(CLIPSShim *)self->ruleEngine addModuleNamed:@"EXTERNAL" withConstruct:@"(defmodule EXTERNAL (export deffunction ?ALL))"]&& [(CLIPSShim *)self->ruleEngine loadConstructsForModule:@"COMMON"]&& [(CLIPSShim *)self->ruleEngine loadConstructsForModule:@"Modules"]&& [(CLIPSShim *)self->ruleEngine loadConstructsForModule:@"Networking"])
  {
    [(CLIPSShim *)self->ruleEngine logMemoryStatistics:@"NDFSM: Post-loadDefaultRulesForEngine memory usage by CLIPS"];
    self->_loadedCLIPSRulesAndFacts = 1;
    self->administrativeState = 1;
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [(SymptomExpertSystemHandler *)self setAnalyticsCLIPSMapping:v12];

    v13 = [MEMORY[0x277CBEB18] array];
    [(SymptomExpertSystemHandler *)self setAnalyticsCLIPSModules:v13];

    [(CLIPSShim *)self->ruleEngine reset];
    [(SymptomExpertSystemHandler *)self _addAllObservers];
    [(SymptomExpertSystemHandler *)self setDefaultFacts];
    [(SymptomExpertSystemHandler *)self runEngine];
    [(CLIPSShim *)self->ruleEngine releaseAllFreeMemory];
    clipsReleaseMemoryTimer = self->_clipsReleaseMemoryTimer;
    if (clipsReleaseMemoryTimer)
    {
      v15 = dispatch_time(0, 300000000000);
      dispatch_source_set_timer(clipsReleaseMemoryTimer, v15, 0x45D964B800uLL, 0xBEBC200uLL);
    }

    [(SymptomExpertSystemHandler *)self startCAEventObserverTimer];
    result = 1;
  }

  else
  {
    v17 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "\tNDFSM Disabling NDF because the rules are unloadable", buf, 2u);
    }

    self->_failedToLoadDefaultRules = 1;
    [(SymptomExpertSystemHandler *)self _administrativeDisable];
    result = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)loadModule:(id)a3 requiresBasebandModule:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([(CLIPSShim *)self->ruleEngine constructLoadStateForModule:v6]- 1) < 2)
  {
    goto LABEL_7;
  }

  if ((([v6 isEqualToString:@"Baseband"] & 1) != 0 || v4) && (-[CLIPSShim constructLoadStateForModule:](self->ruleEngine, "constructLoadStateForModule:", @"Baseband") - 3) <= 0xFFFFFFFFFFFFFFFDLL && !-[CLIPSShim loadConstructsForModule:](self->ruleEngine, "loadConstructsForModule:", @"Baseband"))
  {
    v12 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      v9 = "NDFSM: Failed to load baseband rules";
      v10 = v12;
      v11 = 2;
      goto LABEL_12;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if (![(CLIPSShim *)self->ruleEngine loadConstructsForModule:v6])
  {
    v8 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v6;
      v9 = "NDFSM: Failed to load %@ rules";
      v10 = v8;
      v11 = 12;
LABEL_12:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v9, &v15, v11);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_7:
  v7 = 1;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setDefaultFacts
{
  [(CLIPSShim *)self->ruleEngine updateAllModuleInfos];
  [(SymptomExpertSystemHandler *)self assertFactString:@"(OKToStartDiagnosticSession)" moduleName:@"COMMON" run:0];
  [(SymptomExpertSystemHandler *)self assertFactString:@"(AllProbesStatus)" moduleName:@"COMMON" run:0];
  if (self->_observingAnalyticsMetrics)
  {
    [(SymptomExpertSystemHandler *)self assertFactString:@"(observingAnalyticsMetrics)" moduleName:@"Modules" run:0];
  }

  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(StrobeTimer (diagnosingStrobeInterval %ld) (requestedInterval %ld) (defaultInterval %ld) (maximumDiagnosingTime %ld) (requestedMaxDiagnosingTime %ld) (defaultMaxDiagnosingTime %ld))", -[SymptomExpertSystemHandler diagnosingStrobeInterval](self, "diagnosingStrobeInterval"), -[SymptomExpertSystemHandler diagnosingStrobeInterval](self, "diagnosingStrobeInterval"), -[SymptomExpertSystemHandler diagnosingStrobeInterval](self, "diagnosingStrobeInterval"), -[SymptomExpertSystemHandler maximumDiagnosingTime](self, "maximumDiagnosingTime"), -[SymptomExpertSystemHandler maximumDiagnosingTime](self, "maximumDiagnosingTime"), -[SymptomExpertSystemHandler maximumDiagnosingTime](self, "maximumDiagnosingTime")];
  [(SymptomExpertSystemHandler *)self assertFactString:v3 moduleName:@"COMMON" run:0];
}

- (void)assertFactString:(id)a3 moduleName:(id)a4 run:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (self->administrativeState == 2)
  {
    v10 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "NDFSM: can't assert a fact string while administratively off", v17, 2u);
    }

    v11 = 0;
  }

  else
  {
    v12 = [(SymptomExpertSystemHandler *)self analyticsCLIPSModuleDictForModule:v9];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"RequiredModules"];
      v15 = [v14 containsObject:@"Baseband"];
    }

    else
    {
      v15 = 0;
    }

    if ([(SymptomExpertSystemHandler *)self loadModule:v9 requiresBasebandModule:v15])
    {
      v11 = [(CLIPSShim *)self->ruleEngine assertFactString:v8 moduleName:v9];
      if (v11)
      {
        [(CLIPSShim *)self->ruleEngine logFacts:4];
        if (v5)
        {
          [(SymptomExpertSystemHandler *)self runEngine];
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)retractFacts:(id)a3 runAfterLastFact:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        -[CLIPSShim retractFact:](self->ruleEngine, "retractFact:", [*(*(&v12 + 1) + 8 * v10++) pointerValue]);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(CLIPSShim *)self->ruleEngine logFacts:0];
  if (v4)
  {
    [(SymptomExpertSystemHandler *)self runEngine];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)retractFact:(void *)a3 moduleName:(id)a4 run:(BOOL)a5
{
  v5 = a5;
  [(CLIPSShim *)self->ruleEngine retractFact:a3, a4];
  [(CLIPSShim *)self->ruleEngine logFacts:0];
  if (v5)
  {

    [(SymptomExpertSystemHandler *)self runEngine];
  }
}

- (void)assertFactAndRun:(id)a3 module:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->administrativeState == 2 || ![v8 length])
  {
    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    v11 = [(ExpertSystemHandlerCore *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__SymptomExpertSystemHandler_assertFactAndRun_module_reply___block_invoke;
    v12[3] = &unk_27898BFC8;
    v13 = v9;
    v14 = self;
    v15 = v8;
    v16 = v10;
    dispatch_async(v11, v12);
  }
}

void __60__SymptomExpertSystemHandler_assertFactAndRun_module_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = @"COMMON";
  }

  v5 = v2;
  v3 = [*(a1 + 40) assertFactString:*(a1 + 48) moduleName:v2 run:1];
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, v3 != 0);
  }
}

- (void)assertFactAsSymptom:(id)a3 module:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->administrativeState != 2 && [v6 length])
  {
    v8 = [(ExpertSystemHandlerCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SymptomExpertSystemHandler_assertFactAsSymptom_module___block_invoke;
    block[3] = &unk_27898A328;
    v10 = v7;
    v11 = v6;
    v12 = self;
    dispatch_async(v8, block);
  }
}

void __57__SymptomExpertSystemHandler_assertFactAsSymptom_module___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = @"Symptoms";
  }

  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:@"PrivateAPI" forKeyedSubscript:@"SYMPTOM_NAME"];
  v4 = MEMORY[0x277CBEB18];
  v5 = *(a1 + 40);
  v10[0] = @"FACT_STRING";
  v10[1] = @"FACT_MODULE";
  v11[0] = v5;
  v11[1] = v2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v4 arrayWithObject:v6];
  [v3 setObject:v7 forKeyedSubscript:@"FACTS_STRINGS"];

  [*(*(a1 + 48) + 416) addObject:v3];
  v8 = [*(a1 + 48) mutableArrayValueForKey:@"incomingSymptoms"];
  [v8 addObject:v3];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)postCoreAnalyticsEvent:(id)a3 forEventName:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->administrativeState == 2 || ![v6 count])
  {
    v10 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      administrativeState = self->administrativeState;
      v12 = v10;
      *buf = 67109376;
      v19 = administrativeState;
      v20 = 2048;
      v21 = [v6 count];
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "NDFSM: postCoreAnalyticsEvent can't post because administrativeState (%u) or inEvent.count (%lu)", buf, 0x12u);
    }

    goto LABEL_7;
  }

  if (!v7)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SymptomExpertSystemHandler_postCoreAnalyticsEvent_forEventName___block_invoke;
  block[3] = &unk_27898A328;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  dispatch_async(v8, block);

  v9 = 1;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)probeStatusUpdate:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kNDFProbeName"];
  v6 = [v4 objectForKeyedSubscript:@"kNDFProbeCLIPSModule"];
  v7 = [v4 objectForKeyedSubscript:@"kNDFProbeStatus"];
  v8 = [v7 intValue];

  if (!v6)
  {
    v6 = @"Networking";
  }

  v9 = 0;
  if (v8 <= 1)
  {
    v10 = 0;
    v11 = 0;
    if ((v8 + 1) < 2)
    {
      goto LABEL_40;
    }

    if (v8 != 1)
    {
      goto LABEL_18;
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@Status", v5];
    if (!v11)
    {
      goto LABEL_39;
    }

    if ([(CLIPSShim *)self->ruleEngine deftemplateNamed:v11 moduleName:v6])
    {
      ruleEngine = self->ruleEngine;
      v16 = [v4 objectForKeyedSubscript:@"kNDFProbeContext"];
      v10 = [(CLIPSShim *)ruleEngine slotsStringForTemplate:v11 fromDictionary:v16 moduleName:v6];

      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@%@)", v11, v10];
      v17 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v9;
LABEL_25:
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "NDFSM: New Probe Fact String is %@", buf, 0xCu);
      }

LABEL_26:
      [(SymptomExpertSystemHandler *)self assertFactString:v9 moduleName:v6 run:1];
      goto LABEL_40;
    }

    v21 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 138412290;
    v26 = v11;
LABEL_38:
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "A deftemplate named %@ does not exist", buf, 0xCu);
    goto LABEL_39;
  }

  v10 = 0;
  v11 = 0;
  if ((v8 - 4) < 2)
  {
    goto LABEL_40;
  }

  if (v8 == 2)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@Result", v5];
    if (!v11)
    {
      goto LABEL_39;
    }

    if ([(CLIPSShim *)self->ruleEngine deftemplateNamed:v11 moduleName:v6])
    {
      v19 = self->ruleEngine;
      v20 = [v4 objectForKeyedSubscript:@"kNDFProbeContext"];
      v10 = [(CLIPSShim *)v19 slotsStringForTemplate:v11 fromDictionary:v20 moduleName:v6];

      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@%@ (result success))", v11, v10];
      v17 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v9;
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v21 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 138412290;
    v26 = v11;
    goto LABEL_38;
  }

  if (v8 == 3)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@Result", v5];
    if (v11)
    {
      if ([(CLIPSShim *)self->ruleEngine deftemplateNamed:v11 moduleName:v6])
      {
        v12 = self->ruleEngine;
        v13 = [v4 objectForKeyedSubscript:@"kNDFProbeContext"];
        v10 = [(CLIPSShim *)v12 slotsStringForTemplate:v11 fromDictionary:v13 moduleName:v6];

        v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@%@ (result failure))", v11, v10];
        v14 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v9;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "NDFSM: New Probe Fact String is %@", buf, 0xCu);
        }

        [(SymptomExpertSystemHandler *)self assertFactString:v9 moduleName:v6 run:1];
      }

      else
      {
        v22 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v11;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "A deftemplate named %@ does not exist", buf, 0xCu);
        }

        v9 = 0;
        v10 = 0;
      }

      if ([v5 isEqualToString:@"TCPDumpProbe"])
      {
        v23 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Canceling session due to TCPDump already being in progress", buf, 2u);
        }

        [(SymptomExpertSystemHandler *)self cancelDiagnosticSession:self->_diagnosticSessionIdentifier];
      }

      goto LABEL_40;
    }

LABEL_39:
    v9 = 0;
    v10 = 0;
    goto LABEL_40;
  }

LABEL_18:
  v18 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v26) = v8;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "NDFSM: Unexpected kNDFProbeStatus (%d)", buf, 8u);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_40:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)probeOutputFilePaths:(id)a3 forDiagSessionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SymptomExpertSystemHandler_probeOutputFilePaths_forDiagSessionUUID___block_invoke;
  block[3] = &unk_27898A328;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __70__SymptomExpertSystemHandler_probeOutputFilePaths_forDiagSessionUUID___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v19 = 138412290;
    v20 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NDFSM probeOutputFilePaths filePaths is %@", &v19, 0xCu);
  }

  if ([*(a1 + 32) count])
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      v4 = *(*(a1 + 48) + 424);
    }

    v5 = v4;
    v6 = [v5 length];
    v7 = debuggabilityLogHandle;
    v8 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        v19 = 138412290;
        v20 = v5;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "NDFSM storing probe output files for sessionUUID (%@) and for sessionless", &v19, 0xCu);
      }

      v9 = MEMORY[0x277CBEB18];
      v10 = [*(a1 + 48) diagnosticSessionOutput];
      v11 = [v10 objectForKeyedSubscript:v5];
      v12 = [v9 arrayWithArray:v11];

      [v12 addObjectsFromArray:*(a1 + 32)];
      v13 = [*(a1 + 48) diagnosticSessionOutput];
      [v13 setObject:v12 forKeyedSubscript:v5];

      [*(a1 + 48) addDiagnosticSession:v5 hasDictionary:MEMORY[0x277CBEC38] endSession:MEMORY[0x277CBEC28]];
    }

    else
    {
      if (v8)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "NDFSM storing probe output files only for sessionless context", &v19, 2u);
      }

      v14 = MEMORY[0x277CBEB18];
      v15 = [*(a1 + 48) diagnosticSessionOutput];
      v16 = [v15 objectForKeyedSubscript:@"DIAGNOSTIC_OUTPUT_TO_BE_PROCESSED"];
      v12 = [v14 arrayWithArray:v16];

      [v12 addObjectsFromArray:*(a1 + 32)];
      v17 = [*(a1 + 48) diagnosticSessionOutput];
      [v17 setObject:v12 forKeyedSubscript:@"DIAGNOSTIC_OUTPUT_TO_BE_PROCESSED"];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)probeFactString:(id)a3 module:(id)a4 goIntoDiagnosing:(BOOL)a5 run:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(ExpertSystemHandlerCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__SymptomExpertSystemHandler_probeFactString_module_goIntoDiagnosing_run___block_invoke;
  v15[3] = &unk_27898BFF0;
  v18 = a5;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, v15);
}

void __74__SymptomExpertSystemHandler_probeFactString_module_goIntoDiagnosing_run___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 320))
  {
    if (*(a1 + 56) != 1)
    {
LABEL_19:
      [v2 assertFactString:*(a1 + 40) moduleName:*(a1 + 48) run:*(a1 + 57)];
      goto LABEL_20;
    }

    v3 = [*(v2 + 40) objectAtIndexedSubscript:2];
    v4 = [*(*(a1 + 32) + 32) label];
    v5 = [v3 label];
    v6 = [v4 isEqualToString:v5];

    if ((v6 & 1) == 0)
    {
      v7 = *(*(a1 + 32) + 400);
      objc_sync_enter(v7);
      v8 = [*(*(a1 + 32) + 400) BOOLValue];
      v9 = debuggabilityLogHandle;
      v10 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          v11 = *(a1 + 40);
          v18 = 138412290;
          v19 = v11;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NDFSM: Ignoring diagnosing probeFactString because the AP will be sleeping momentarily.\nfact string:%@", &v18, 0xCu);
        }

        objc_sync_exit(v7);
        goto LABEL_18;
      }

      if (v10)
      {
        v16 = *(a1 + 40);
        v18 = 138412290;
        v19 = v16;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NDFSM: Bringing state to diagnosing because of %@.", &v18, 0xCu);
      }

      [*(a1 + 32) _bringStateToDiagnosing];
      objc_sync_exit(v7);
    }

    v7 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setLastSymptomRun:v7];
LABEL_18:

    v2 = *(a1 + 32);
    goto LABEL_19;
  }

  v12 = debuggabilityLogHandle;
  if (*(v2 + 321) == 1)
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      v13 = "NDFSM: rules couldn't be loaded";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_13:
      _os_log_impl(&dword_23255B000, v14, v15, v13, &v18, 2u);
    }
  }

  else if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    v13 = "NDFSM: Haven't yet started the Expert System.";
    v14 = v12;
    v15 = OS_LOG_TYPE_INFO;
    goto LABEL_13;
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)serviceAdded:(id)a3 type:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Got a service added: %@", &v11, 0xCu);
  }

  if (a4 == 1)
  {
    v8 = [v6 objectForKeyedSubscript:@"name"];
    v9 = v8;
    if (self->_airdropID && ([v8 isEqualToString:?] & 1) != 0)
    {
      goto LABEL_9;
    }
  }

  v9 = [(SymptomExpertSystemHandler *)self serviceToFactString:v6 type:a4];
  if (v9)
  {
    [(SymptomExpertSystemHandler *)self assertFactString:v9 moduleName:@"Networking" run:0];
  }

LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)serviceUpdated:(id)a3 type:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Got a service update: %@", &v11, 0xCu);
  }

  if (a4 == 1)
  {
    v8 = [v6 objectForKeyedSubscript:@"name"];
    v9 = v8;
    if (self->_airdropID && ([v8 isEqualToString:?] & 1) != 0)
    {
      goto LABEL_9;
    }
  }

  [(SymptomExpertSystemHandler *)self retractService:v6 type:a4];
  v9 = [(SymptomExpertSystemHandler *)self serviceToFactString:v6 type:a4];
  if (v9)
  {
    [(SymptomExpertSystemHandler *)self assertFactString:v9 moduleName:@"Networking" run:0];
  }

LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)serviceRemoved:(id)a3 type:(int64_t)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Got a service removed: %@", &v9, 0xCu);
  }

  [(SymptomExpertSystemHandler *)self retractService:v6 type:a4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)retractService:(id)a3 type:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!self->ruleEngine)
  {
    goto LABEL_27;
  }

  if (a4 == 2)
  {
    v8 = [v6 objectForKeyedSubscript:@"STATION_MAC"];
    if ([v8 length])
    {
      v12 = ether_ntoa([v8 bytes]);
      if (v12)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
        if (v13)
        {
          v14 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = v13;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "Removed AWDL service is %@", buf, 0xCu);
          }

          ruleEngine = self->ruleEngine;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:@"macAddress"];
          v11 = [(CLIPSShim *)ruleEngine matchFactsWithDeftemplateName:@"AWDLPeer" withSlotKeyValues:v16];
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_18;
      }
    }

    goto LABEL_15;
  }

  if (a4 != 1)
  {
    v17 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v30 = a4;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unsupported removed service type (%ld) for service %@", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_19;
  }

  v8 = [v6 objectForKeyedSubscript:@"dnsName"];
  if (!v8)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_18;
  }

  v9 = self->ruleEngine;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:@"dnsName"];
  v11 = [(CLIPSShim *)v9 matchFactsWithDeftemplateName:@"BonjourService" withSlotKeyValues:v10];

LABEL_18:
LABEL_19:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        -[SymptomExpertSystemHandler retractFact:moduleName:run:](self, "retractFact:moduleName:run:", [*(*(&v24 + 1) + 8 * i) pointerValue], @"Networking", 0);
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }

LABEL_27:
  v23 = *MEMORY[0x277D85DE8];
}

- (id)serviceToFactString:(id)a3 type:(int64_t)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4 == 2)
  {
    v18 = [v5 objectForKeyedSubscript:@"STATION_AWDL_SERVICES"];
    if ([v18 count])
    {
      v19 = v6;
      v7 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", CFSTR("(AWDLPeer (services "));
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v37;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v36 + 1) + 8 * i);
            if ([v25 hasPrefix:@"PTR"])
            {
              [v7 appendFormat:@" %@", v25];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
        }

        while (v22);
      }

      [v7 appendString:@""]);
      v6 = v19;
      v26 = [v19 objectForKeyedSubscript:@"STATION_HOSTNAME"];
      if ([v26 length])
      {
        [v7 appendFormat:@" (hostName \"%@\"", v26];
      }

      v27 = [v19 objectForKeyedSubscript:@"STATION_MAC"];
      if ([v27 length])
      {
        v28 = ether_ntoa([v27 bytes]);
        if (v28)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
          v30 = v29;
          if (v29)
          {
            [v7 appendFormat:@" (macAddress \"%@\"", v29];
          }
        }
      }

      v31 = [v19 objectForKeyedSubscript:@"STATION_RSSI"];
      v32 = v31;
      if (v31)
      {
        [v7 appendFormat:@" (rssi %d)", objc_msgSend(v31, "intValue")];
      }

      [v7 appendString:@""]);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (a4 == 1)
  {
    v7 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(BonjourService");
    v8 = [v6 objectForKeyedSubscript:@"dnsName"];
    if ([v8 length])
    {
      [v7 appendFormat:@" (dnsName \"%@\"", v8];
    }

    v9 = [v6 objectForKeyedSubscript:@"hostName"];

    if ([v9 length])
    {
      [v7 appendFormat:@" (hostName \"%@\"", v9];
    }

    v10 = [v6 objectForKeyedSubscript:@"ifindex"];
    if (objc_opt_respondsToSelector())
    {
      [v7 appendFormat:@" (interface %u)", objc_msgSend(v10, "unsignedIntValue")];
    }

    v11 = [v6 objectForKeyedSubscript:@"addresses"];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      do
      {
        v15 = 0;
        v16 = v9;
        do
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v40 + 1) + 8 * v15);
          v9 = [v11 objectForKeyedSubscript:v17];

          if ([v9 length])
          {
            [v7 appendFormat:@" (%@ \"%@\"", v17, v9];
          }

          ++v15;
          v16 = v9;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v13);
    }

    [v7 appendString:@""]);
  }

  else
  {
    v33 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v45 = a4;
      v46 = 2112;
      v47 = v6;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Unsupported service type (%ld) for service %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)startDiagnosticSessionWithDomain:(id)a3 type:(id)a4 subType:(id)a5 subTypeContext:(id)a6 processID:(id)a7 processName:(id)a8 bundleID:(id)a9 interfaceType:(id)a10 threshold:(id)a11 sessionDuration:(id)a12 triggerRemoteCase:(id)a13
{
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v40 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  queue = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __180__SymptomExpertSystemHandler_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_triggerRemoteCase___block_invoke;
  block[3] = &unk_27898C040;
  block[4] = self;
  v43 = v35;
  v44 = v34;
  v45 = v33;
  v46 = v19;
  v47 = v20;
  v48 = v22;
  v49 = v21;
  v50 = v23;
  v51 = v25;
  v52 = v24;
  v53 = v40;
  v41 = v40;
  v39 = v24;
  v38 = v25;
  v37 = v23;
  v26 = v21;
  v27 = v22;
  v28 = v20;
  v29 = v19;
  v30 = v33;
  v31 = v34;
  v32 = v35;
  dispatch_async(queue, block);
}

void __180__SymptomExpertSystemHandler_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_triggerRemoteCase___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, *(a1 + 32));
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    v9 = *(a1 + 88);
    v10 = [*(a1 + 96) stringValue];
    v11 = [*(a1 + 104) BOOLValue];
    *buf = 138414338;
    v12 = @"NO";
    v36 = v4;
    v37 = 2112;
    if (v11)
    {
      v12 = @"YES";
    }

    v38 = v3;
    v39 = 2112;
    v40 = v6;
    v41 = 2112;
    v42 = v5;
    v43 = 2112;
    v44 = v8;
    v45 = 2112;
    v46 = v7;
    v47 = 2112;
    v48 = v9;
    v49 = 2112;
    v50 = v10;
    v51 = 2112;
    v52 = v12;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NDFSM start domain:%@, type:%@, subType:%@, pid:%@, processName:%@, interfaceName:%@, bundleID:%@, threshold:%@, triggerRemote:%@", buf, 0x5Cu);
  }

  v13 = [*(a1 + 104) BOOLValue];
  v14 = *(a1 + 72);
  if (![v14 length] || objc_msgSend(v14, "isEqualToString:", @"(null)"))
  {
    v15 = *(a1 + 88);

    v14 = v15;
  }

  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(*(a1 + 112), "unsignedLongLongValue")}];
  v17 = objc_loadWeakRetained(&location);
  [v17 setDiagSessionExpectedEnd:v16];

  v18 = *(a1 + 40);
  v19 = *(*(a1 + 32) + 584);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 120);
  v23 = [*(a1 + 96) stringValue];
  v24 = [v19 signatureWithDomain:v18 type:v20 subType:v21 subtypeContext:v22 detectedProcess:v14 triggerThresholdValues:v23];

  if ([*(a1 + 80) length])
  {
    v25 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 80);
      *buf = 138412290;
      v36 = v26;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "NDFSM optional: Interface type: %@", buf, 0xCu);
    }

    [v24 setObject:*(a1 + 80) forKey:*MEMORY[0x277D6B1D8]];
  }

  v27 = *(*(a1 + 32) + 584);
  v28 = [*(a1 + 112) unsignedLongLongValue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __180__SymptomExpertSystemHandler_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_triggerRemoteCase___block_invoke_949;
  v31[3] = &unk_27898C018;
  objc_copyWeak(&v32, &location);
  v33 = v13;
  v31[4] = *(a1 + 32);
  if (([v27 startSessionWithSignature:v24 duration:0 events:0 payload:0 actions:v13 wantsRemoteCase:v31 reply:v28] & 1) == 0)
  {
    v29 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_ERROR, "NDFSM startDiagnosticSessionWithDomain failed to start", buf, 2u);
    }
  }

  objc_destroyWeak(&v32);

  objc_destroyWeak(&location);
  v30 = *MEMORY[0x277D85DE8];
}

void __180__SymptomExpertSystemHandler_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_triggerRemoteCase___block_invoke_949(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];

    if (v6)
    {
      v7 = [v5 queue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __180__SymptomExpertSystemHandler_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_triggerRemoteCase___block_invoke_2;
      v10[3] = &unk_27898A378;
      v11 = v3;
      v8 = v5;
      v14 = *(a1 + 48);
      v9 = *(a1 + 32);
      v12 = v8;
      v13 = v9;
      dispatch_async(v7, v10);
    }
  }
}

void __180__SymptomExpertSystemHandler_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_triggerRemoteCase___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && ([v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLValue"), v3, v2 = *(a1 + 32), v4))
  {
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B188]];
    [*(a1 + 40) setDiagnosticSessionIdentifier:v5];

    if (*(a1 + 56) == 1)
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D6B160]];
      v7 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v6;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "NDFSM case is requesting remote trigger. Triggering with group ID %@", buf, 0xCu);
      }
    }

    v8 = [*(a1 + 40) caseSignatures];
    v9 = [v8 count];

    if (v9)
    {
      [*(a1 + 40) sendCaseSignaturesToSDRWithSessionID:*(*(a1 + 48) + 424)];
    }

    v10 = [*(a1 + 40) diagnosticSessionOutput];
    v11 = [v10 objectForKeyedSubscript:@"DIAGNOSTIC_OUTPUT_TO_BE_PROCESSED"];

    if (v11)
    {
      v12 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v11;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "NDFSM DIAGNOSTIC_OUTPUT_TO_BE_PROCESSED is %@", buf, 0xCu);
      }

      v13 = [*(a1 + 40) diagnosticSessionOutput];
      v14 = [*(a1 + 40) diagnosticSessionIdentifier];
      [v13 setObject:v11 forKey:v14];

      v15 = *(a1 + 40);
      v16 = [v15 diagnosticSessionIdentifier];
      [v15 addDiagnosticSession:v16 hasDictionary:MEMORY[0x277CBEC38] endSession:MEMORY[0x277CBEC28]];

      v17 = [*(a1 + 40) diagnosticSessionOutput];
      [v17 removeObjectForKey:@"DIAGNOSTIC_OUTPUT_TO_BE_PROCESSED"];
    }

    v18 = [*(a1 + 48) diagnosticSessionOutput];
    v19 = [v18 objectForKeyedSubscript:@"DIAGNOSTIC_EXTENSION_PARAMS"];

    if (v19)
    {
      v20 = *(a1 + 40);
      v21 = [v20 diagnosticSessionIdentifier];
      [v20 addDiagnosticSession:v21 hasDictionary:MEMORY[0x277CBEC38] endSession:MEMORY[0x277CBEC28]];
    }

    v22 = *(a1 + 40);
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = [*(a1 + 40) diagnosticSessionIdentifier];
    v25 = [v23 initWithFormat:@"(DiagnosticCase (accepted TRUE) (uuid \"%@\"", v24];
    [v22 assertFactString:v25 moduleName:@"COMMON" run:1];

    v26 = [*(a1 + 40) diagnosticSessionIdentifier];
    v27 = *(a1 + 40);
    v28 = [v27 queue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __180__SymptomExpertSystemHandler_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_triggerRemoteCase___block_invoke_953;
    v35[3] = &unk_27898A7D0;
    v36 = *(a1 + 40);
    v37 = v26;
    v29 = v26;
    [v27 scheduleTimerFor:900 leeway:10 identifier:v29 queue:v28 eventHandler:v35 cancelHandler:0];
  }

  else
  {
    v30 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B168]];
    v31 = [v30 integerValue];

    v32 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v39 = v31;
      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "NDFSM startDiagnosticSessionWithDomain Responded with an error: %ld", buf, 0xCu);
    }

    v33 = *(a1 + 40);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(DiagnosticCase (accepted FALSE))"];
    [v33 assertFactString:v11 moduleName:@"COMMON" run:1];
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __180__SymptomExpertSystemHandler_startDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration_triggerRemoteCase___block_invoke_953(uint64_t a1)
{
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "NDFSM Session timeout timer fired. Cancelling overdue session.", v4, 2u);
  }

  return [*(a1 + 32) cancelDiagnosticSession:*(a1 + 40)];
}

- (void)snapshotDiagnosticSessionWithDomain:(id)a3 type:(id)a4 subType:(id)a5 subTypeContext:(id)a6 processID:(id)a7 processName:(id)a8 bundleID:(id)a9 interfaceType:(id)a10 threshold:(id)a11 sessionDuration:(id)a12
{
  v34 = a3;
  v33 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  queue = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __165__SymptomExpertSystemHandler_snapshotDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration___block_invoke;
  block[3] = &unk_27898C090;
  block[4] = self;
  v40 = v34;
  v41 = v33;
  v42 = v18;
  v43 = v20;
  v44 = v21;
  v45 = v23;
  v46 = v22;
  v47 = v24;
  v48 = v25;
  v49 = v19;
  v38 = v19;
  v37 = v25;
  v36 = v24;
  v26 = v22;
  v27 = v23;
  v28 = v21;
  v29 = v20;
  v30 = v18;
  v31 = v33;
  v32 = v34;
  dispatch_async(queue, block);
}

void __165__SymptomExpertSystemHandler_snapshotDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, *(a1 + 32));
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    v9 = *(a1 + 88);
    v10 = [*(a1 + 96) stringValue];
    *buf = 138414082;
    v32 = v3;
    v33 = 2112;
    v34 = v4;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v5;
    v39 = 2112;
    v40 = v8;
    v41 = 2112;
    v42 = v7;
    v43 = 2112;
    v44 = v9;
    v45 = 2112;
    v46 = v10;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NDFSM snapshot domain:%@, type:%@, subType:%@, pid:%@, processName:%@, interfaceName:%@, bundleID:%@, threshold:%@", buf, 0x52u);
  }

  v11 = *(a1 + 72);
  if (![v11 length] || objc_msgSend(v11, "isEqualToString:", @"(null)"))
  {
    v12 = *(a1 + 88);

    v11 = v12;
  }

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(*(a1 + 104), "unsignedLongLongValue")}];
  v14 = objc_loadWeakRetained(&location);
  [v14 setDiagSessionExpectedEnd:v13];

  v15 = *(a1 + 40);
  v16 = *(*(a1 + 32) + 584);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 112);
  v20 = [*(a1 + 96) stringValue];
  v21 = [v16 signatureWithDomain:v15 type:v17 subType:v18 subtypeContext:v19 detectedProcess:v11 triggerThresholdValues:v20];

  if ([*(a1 + 80) length])
  {
    v22 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 80);
      *buf = 138412290;
      v32 = v23;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "NDFSM optional: Interface type: %@", buf, 0xCu);
    }

    [v21 setObject:*(a1 + 80) forKey:*MEMORY[0x277D6B1D8]];
  }

  [*(a1 + 32) checkObfuscationsInAllCaseSignatures];
  v24 = [*(*(a1 + 32) + 432) copy];
  [*(*(a1 + 32) + 432) removeAllObjects];
  v25 = *(*(a1 + 32) + 584);
  v26 = [*(a1 + 104) unsignedLongLongValue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __165__SymptomExpertSystemHandler_snapshotDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration___block_invoke_958;
  v28[3] = &unk_27898C068;
  objc_copyWeak(&v29, &location);
  [v25 snapshotWithSignature:v21 duration:v24 events:0 payload:0 actions:v28 reply:v26];
  objc_destroyWeak(&v29);

  objc_destroyWeak(&location);
  v27 = *MEMORY[0x277D85DE8];
}

void __165__SymptomExpertSystemHandler_snapshotDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration___block_invoke_958(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];

    if (v6)
    {
      v7 = [v5 queue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __165__SymptomExpertSystemHandler_snapshotDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration___block_invoke_2;
      v8[3] = &unk_27898A7D0;
      v9 = v3;
      v10 = v5;
      dispatch_async(v7, v8);
    }
  }
}

uint64_t __165__SymptomExpertSystemHandler_snapshotDiagnosticSessionWithDomain_type_subType_subTypeContext_processID_processName_bundleID_interfaceType_threshold_sessionDuration___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && ([v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLValue"), v3, v2 = *(a1 + 32), (v4 & 1) != 0))
  {
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B188]];
    v6 = *(a1 + 40);
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(DiagnosticCase (accepted TRUE) (isSnapshot TRUE) (uuid \"%@\"", v5];
    [v6 assertFactString:v7 moduleName:@"COMMON" run:1];

    if (v5)
    {
      [*(a1 + 40) sendCaseSignaturesToSDRWithSessionID:v5];
      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "NDFSM (snapshot) Canceling timer", buf, 2u);
      }

      [*(a1 + 40) cancelTimerWithIdentifier:v5];

      goto LABEL_12;
    }
  }

  else
  {
    v9 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B168]];
    v10 = [v9 integerValue];

    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v18 = v10;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "NDFSM (snapshot) startDiagnosticSessionWithDomain Responded with an error: %ld", buf, 0xCu);
    }

    v12 = *(a1 + 40);
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(DiagnosticCase (accepted FALSE))"];
    [v12 assertFactString:v13 moduleName:@"COMMON" run:1];
  }

  v14 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "NDFSM (snapshot) Cannot cancel timer because we have no session ID", buf, 2u);
  }

LABEL_12:
  [*(a1 + 40) setDiagnosticSessionIdentifier:0];
  result = [*(a1 + 40) _bringStateToRunning];
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addDiagnosticSession:(id)a3 hasDictionary:(id)a4 endSession:(id)a5
{
  v37[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [(NSMutableArray *)self->_processedSymptoms count])
  {
    v11 = [(NSMutableArray *)self->_processedSymptoms objectAtIndexedSubscript:0];
    v12 = v11;
    if (v11)
    {
      v13 = MEMORY[0x277CBEB38];
      v14 = [v11 objectForKeyedSubscript:@"ARBITRATOR_EVENT_DICTIONARY"];
      v15 = [v13 dictionaryWithDictionary:v14];

      v16 = MEMORY[0x277CBEB38];
      v17 = [v12 objectForKeyedSubscript:@"ARBITRATOR_PAYLOAD_DICTIONARY"];
      v18 = [v16 dictionaryWithDictionary:v17];
    }

    else
    {
      v18 = 0;
      v15 = 0;
    }
  }

  else
  {
    v18 = 0;
    v15 = 0;
    v12 = 0;
  }

  v19 = [(SymptomExpertSystemHandler *)self diagnosticSessionOutput];
  v20 = [v19 objectForKeyedSubscript:v8];

  if (v20)
  {
    if (!v18)
    {
      v18 = [MEMORY[0x277CBEB38] dictionary];
    }

    v21 = *MEMORY[0x277D6B158];
    v22 = *MEMORY[0x277D6B140];
    v36[0] = *MEMORY[0x277D6B150];
    v36[1] = v22;
    v37[0] = v21;
    v37[1] = v20;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [v18 addEntriesFromDictionary:v23];

    v24 = [(SymptomExpertSystemHandler *)self diagnosticSessionOutput];
    [v24 setObject:0 forKeyedSubscript:v8];
  }

  v25 = [(SymptomExpertSystemHandler *)self diagnosticSessionOutput];
  v26 = [v25 objectForKeyedSubscript:@"DIAGNOSTIC_EXTENSION_PARAMS"];

  if (v26)
  {
    if (!v18)
    {
      v18 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v18 addEntriesFromDictionary:v26];
    v27 = [(SymptomExpertSystemHandler *)self diagnosticSessionOutput];
    [v27 setObject:0 forKeyedSubscript:@"DIAGNOSTIC_EXTENSION_PARAMS"];
  }

  if ([v15 count] || objc_msgSend(v18, "count"))
  {
    objc_initWeak(&location, self);
    sdrReporter = self->_sdrReporter;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __76__SymptomExpertSystemHandler_addDiagnosticSession_hasDictionary_endSession___block_invoke;
    v31[3] = &unk_27898C0E0;
    objc_copyWeak(&v34, &location);
    v32 = v10;
    v33 = v8;
    [(SDRDiagnosticReporter *)sdrReporter addToSession:v33 event:v15 payload:v18 reply:v31];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else if ([v10 BOOLValue])
  {
    v30 = [(SymptomExpertSystemHandler *)self diagnosticSessionIdentifier];
    [(SymptomExpertSystemHandler *)self endDiagnosticSession:v30];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __76__SymptomExpertSystemHandler_addDiagnosticSession_hasDictionary_endSession___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SymptomExpertSystemHandler_addDiagnosticSession_hasDictionary_endSession___block_invoke_2;
  block[3] = &unk_27898C0B8;
  v5 = a1[4];
  objc_copyWeak(&v7, a1 + 6);
  v6 = a1[5];
  dispatch_async(v3, block);

  objc_destroyWeak(&v7);
}

void __76__SymptomExpertSystemHandler_addDiagnosticSession_hasDictionary_endSession___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) BOOLValue])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained endDiagnosticSession:*(a1 + 40)];
  }
}

- (void)cancelDiagnosticSession:(id)a3
{
  v4 = a3;
  v5 = [(ExpertSystemHandlerCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SymptomExpertSystemHandler_cancelDiagnosticSession___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __54__SymptomExpertSystemHandler_cancelDiagnosticSession___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 312);
    v4 = v2;
    v5 = [v3 currentRuleName];
    v6 = *(a1 + 40);
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NDFSM cancelDiagSession - ruleName: %@ inside uuid is %@", &v11, 0x16u);
  }

  [*(*(a1 + 32) + 312) logFacts:1];
  [*(a1 + 32) cancelTimerWithIdentifier:*(a1 + 40)];
  if ([*(a1 + 40) length])
  {
    [*(*(a1 + 32) + 584) cancelSession:*(a1 + 40)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 424);
    *(v7 + 424) = 0;
  }

  result = [*(a1 + 32) _bringStateToRunning];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)endDiagnosticSession:(id)a3
{
  v4 = a3;
  v5 = [(ExpertSystemHandlerCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SymptomExpertSystemHandler_endDiagnosticSession___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __51__SymptomExpertSystemHandler_endDiagnosticSession___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 312);
    v4 = v2;
    v5 = [v3 currentRuleName];
    v6 = *(a1 + 40);
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NDFSM endDiagSession - ruleName: %@ inside uuid is %@", &v11, 0x16u);
  }

  [*(*(a1 + 32) + 312) logFacts:1];
  [*(a1 + 32) cancelTimerWithIdentifier:*(a1 + 40)];
  if ([*(a1 + 40) length])
  {
    [*(a1 + 32) sendCaseSignaturesToSDRWithSessionID:*(*(a1 + 32) + 424)];
    [*(*(a1 + 32) + 584) endSession:*(a1 + 40)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 424);
    *(v7 + 424) = 0;
  }

  result = [*(a1 + 32) _bringStateToRunning];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)checkObfuscationsInAllCaseSignatures
{
  v85 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_caseSignatures count])
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = self->_caseSignatures;
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v80 objects:v84 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v81;
      v6 = *MEMORY[0x277D6B0F8];
      v7 = *MEMORY[0x277D6B150];
      v8 = *MEMORY[0x277D6B128];
      v78 = *MEMORY[0x277D6B128];
      v79 = *MEMORY[0x277D6B0C8];
      v74 = *MEMORY[0x277D6B0F8];
      v75 = *v81;
      v73 = *MEMORY[0x277D6B150];
      do
      {
        v9 = 0;
        v76 = v4;
        do
        {
          if (*v81 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v80 + 1) + 8 * v9);
          v11 = [v10 objectForKeyedSubscript:v6];
          v12 = [v10 objectForKeyedSubscript:v7];
          v13 = [v12 isEqualToString:v79];

          if (v13)
          {
            v14 = [v10 objectForKeyedSubscript:v78];
            v15 = [(SymptomExpertSystemHandler *)self rangeOfValueForSlotName:@"hostName" in:v14];
            if (v16)
            {
              v17 = v15;
              v18 = v16;
              v19 = [v14 substringWithRange:{v15, v16}];
              v20 = [(SymptomExpertSystemHandler *)self obfuscatedPrimaryComponent:v19 obfuscationType:@"Host"];

              v21 = [v14 stringByReplacingCharactersInRange:v17 withString:{v18, v20}];

              v14 = v21;
            }

            else
            {
              v20 = 0;
            }

            v22 = [(SymptomExpertSystemHandler *)self rangeOfValueForSlotName:@"url" in:v14];
            if (v23)
            {
              v24 = v22;
              v25 = v23;
              v26 = [v14 substringWithRange:{v22, v23}];
              v27 = [(SymptomExpertSystemHandler *)self obfuscatedEndpoint:v26];

              v28 = [v14 stringByReplacingCharactersInRange:v24 withString:{v25, v27}];

              v14 = v28;
              v20 = v27;
            }

            v29 = [(SymptomExpertSystemHandler *)self rangeOfValueForSlotName:@"IPAddress" in:v14];
            if (v30)
            {
              v31 = v29;
              v32 = v30;
              v33 = [v14 substringWithRange:{v29, v30}];
              v34 = [(SymptomExpertSystemHandler *)self obfuscatedPrimaryComponent:v33 obfuscationType:@"IPAddress"];

              v35 = [v14 stringByReplacingCharactersInRange:v31 withString:{v32, v34}];

              v14 = v35;
              v20 = v34;
            }

            v36 = [(SymptomExpertSystemHandler *)self rangeOfValueForSlotName:@"IPv4Address" in:v14];
            if (v37)
            {
              v38 = v36;
              v39 = v37;
              v40 = [v14 substringWithRange:{v36, v37}];
              v41 = [(SymptomExpertSystemHandler *)self obfuscatedPrimaryComponent:v40 obfuscationType:@"IPAddress"];

              v42 = [v14 stringByReplacingCharactersInRange:v38 withString:{v39, v41}];

              v14 = v42;
              v20 = v41;
            }

            v43 = [(SymptomExpertSystemHandler *)self rangeOfValueForSlotName:@"IPv4LinkLocalAddress" in:v14];
            if (v44)
            {
              v45 = v43;
              v46 = v44;
              v47 = [v14 substringWithRange:{v43, v44}];
              v48 = [(SymptomExpertSystemHandler *)self obfuscatedPrimaryComponent:v47 obfuscationType:@"IPAddress"];

              v49 = [v14 stringByReplacingCharactersInRange:v45 withString:{v46, v48}];

              v14 = v49;
              v20 = v48;
            }

            v50 = [(SymptomExpertSystemHandler *)self rangeOfValueForSlotName:@"IPv6Address" in:v14];
            if (v51)
            {
              v52 = v50;
              v53 = v51;
              v54 = [v14 substringWithRange:{v50, v51}];
              v55 = [(SymptomExpertSystemHandler *)self obfuscatedPrimaryComponent:v54 obfuscationType:@"IPAddress"];

              v56 = [v14 stringByReplacingCharactersInRange:v52 withString:{v53, v55}];

              v14 = v56;
              v20 = v55;
            }

            v57 = [(SymptomExpertSystemHandler *)self rangeOfValueForSlotName:@"IPv6LinkLocalAddress" in:v14];
            if (v58)
            {
              v59 = v57;
              v60 = v58;
              v61 = [v14 substringWithRange:{v57, v58}];
              v62 = [(SymptomExpertSystemHandler *)self obfuscatedPrimaryComponent:v61 obfuscationType:@"IPAddress"];

              v63 = [v14 stringByReplacingCharactersInRange:v59 withString:{v60, v62}];

              v14 = v63;
              v20 = v62;
            }

            v64 = [(SymptomExpertSystemHandler *)self rangeOfValueForSlotName:@"macAddress" in:v14];
            if (v65)
            {
              v66 = v64;
              v67 = v65;
              v68 = [v14 substringWithRange:{v64, v65}];
              v69 = [(SymptomExpertSystemHandler *)self obfuscatedPrimaryComponent:v68 obfuscationType:@"MACAddress"];

              v70 = [v14 stringByReplacingCharactersInRange:v66 withString:{v67, v69}];

              v14 = v70;
              v20 = v69;
            }

            v6 = v74;
            v5 = v75;
            v7 = v73;
            [v10 setObject:v14 forKeyedSubscript:v78];

            v4 = v76;
          }

          if (v11)
          {
            v71 = [(SymptomExpertSystemHandler *)self obfuscatedEndpoint:v11];
            [v10 setObject:v71 forKeyedSubscript:v6];
          }

          ++v9;
        }

        while (v4 != v9);
        v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v80 objects:v84 count:16];
      }

      while (v4);
    }
  }

  v72 = *MEMORY[0x277D85DE8];
}

- (void)sendCaseSignaturesToSDRWithSessionID:(id)a3
{
  v4 = a3;
  if ([v4 length] && -[NSMutableArray count](self->_caseSignatures, "count"))
  {
    [(SymptomExpertSystemHandler *)self checkObfuscationsInAllCaseSignatures];
    objc_initWeak(&location, self);
    sdrReporter = self->_sdrReporter;
    caseSignatures = self->_caseSignatures;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __67__SymptomExpertSystemHandler_sendCaseSignaturesToSDRWithSessionID___block_invoke;
    v10 = &unk_27898C068;
    objc_copyWeak(&v11, &location);
    [(SDRDiagnosticReporter *)sdrReporter addToSession:v4 events:caseSignatures payload:0 reply:&v7];
    [(NSMutableArray *)self->_caseSignatures removeAllObjects:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __67__SymptomExpertSystemHandler_sendCaseSignaturesToSDRWithSessionID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained queue];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 queue];
      dispatch_async(v3, &__block_literal_global_987);

      WeakRetained = v4;
    }
  }
}

- (void)logSessionEventProbe:(id)a3 endpoint:(id)a4 interface:(id)a5 status:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SymptomExpertSystemHandler_logSessionEventProbe_endpoint_interface_status___block_invoke;
  block[3] = &unk_27898C108;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = self;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

void __77__SymptomExpertSystemHandler_logSessionEventProbe_endpoint_interface_status___block_invoke(uint64_t a1)
{
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v4 = [v2 numberWithDouble:?];
  [v10 setObject:v4 forKeyedSubscript:*MEMORY[0x277D6B148]];

  [v10 setObject:*MEMORY[0x277D6B0D8] forKeyedSubscript:*MEMORY[0x277D6B150]];
  v5 = *(a1 + 32);
  if (v5)
  {
    [v10 setObject:v5 forKeyedSubscript:*MEMORY[0x277D6B110]];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [v10 setObject:v6 forKeyedSubscript:*MEMORY[0x277D6B0F8]];
  }

  v7 = *(a1 + 48);
  v8 = v10;
  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x277D6B100]];
    v8 = v10;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D6B120]];
    v8 = v10;
  }

  [*(*(a1 + 64) + 432) addObject:v8];
  [*(a1 + 64) sendCaseSignaturesToSDRWithSessionID:*(*(a1 + 64) + 424)];
}

- (void)logSessionEventSymptom:(id)a3 process:(id)a4 endpoint:(id)a5 interface:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SymptomExpertSystemHandler_logSessionEventSymptom_process_endpoint_interface___block_invoke;
  block[3] = &unk_27898C108;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = self;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

void __80__SymptomExpertSystemHandler_logSessionEventSymptom_process_endpoint_interface___block_invoke(uint64_t a1)
{
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v4 = [v2 numberWithDouble:?];
  [v10 setObject:v4 forKeyedSubscript:*MEMORY[0x277D6B148]];

  [v10 setObject:*MEMORY[0x277D6B0E0] forKeyedSubscript:*MEMORY[0x277D6B150]];
  v5 = *(a1 + 32);
  if (v5)
  {
    [v10 setObject:v5 forKeyedSubscript:*MEMORY[0x277D6B110]];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [v10 setObject:v6 forKeyedSubscript:*MEMORY[0x277D6B118]];
  }

  v7 = *(a1 + 48);
  v8 = v10;
  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x277D6B0F8]];
    v8 = v10;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D6B100]];
    v8 = v10;
  }

  [*(*(a1 + 64) + 432) addObject:v8];
  [*(a1 + 64) sendCaseSignaturesToSDRWithSessionID:*(*(a1 + 64) + 424)];
}

- (void)logSessionEventMessage:(id)a3
{
  v4 = a3;
  v5 = [(ExpertSystemHandlerCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SymptomExpertSystemHandler_logSessionEventMessage___block_invoke;
  v7[3] = &unk_27898A7D0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__SymptomExpertSystemHandler_logSessionEventMessage___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v4 = [v2 numberWithDouble:?];
  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x277D6B148]];

  [v6 setObject:*MEMORY[0x277D6B0D0] forKeyedSubscript:*MEMORY[0x277D6B150]];
  v5 = *(a1 + 32);
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x277D6B110]];
  }

  [*(*(a1 + 40) + 432) addObject:v6];
  [*(a1 + 40) sendCaseSignaturesToSDRWithSessionID:*(*(a1 + 40) + 424)];
}

- (NSDataDetector)urlDetector
{
  v13 = *MEMORY[0x277D85DE8];
  urlDetector = self->_urlDetector;
  if (!urlDetector)
  {
    v10 = 0;
    v4 = [MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:&v10];
    v5 = v10;
    v6 = self->_urlDetector;
    self->_urlDetector = v4;

    if (!self->_urlDetector)
    {
      v7 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "cannot create URL Regex. Error: %@", buf, 0xCu);
      }
    }

    urlDetector = self->_urlDetector;
  }

  v8 = *MEMORY[0x277D85DE8];

  return urlDetector;
}

- (void)waitForFactWithTemplateName:(id)a3 module:(id)a4 timeout:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SymptomExpertSystemHandler *)self clipsFactsWaitTimers];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (v12)
  {
    v13 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "NDFSM: Already waiting for %@", buf, 0xCu);
    }
  }

  else
  {
    v14 = v9;
    if (!v14)
    {
      v14 = @"COMMON";
    }

    objc_initWeak(buf, self);
    v15 = [(ExpertSystemHandlerCore *)self queue];
    v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v15);

    v17 = [(SymptomExpertSystemHandler *)self clipsFactsWaitTimers];
    [v17 setObject:v16 forKeyedSubscript:v8];

    v18 = dispatch_time(0, 1000000000 * [v10 integerValue]);
    dispatch_source_set_timer(v16, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __73__SymptomExpertSystemHandler_waitForFactWithTemplateName_module_timeout___block_invoke;
    handler[3] = &unk_27898C130;
    objc_copyWeak(&v24, buf);
    v22 = v8;
    v23 = v14;
    v19 = v14;
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(v16);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __73__SymptomExpertSystemHandler_waitForFactWithTemplateName_module_timeout___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "NDFSM: Timed out waiting for %@", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(TimedOutWaitingFor_%@)", *(a1 + 32)];
    [WeakRetained assertFactString:v5 moduleName:*(a1 + 40) run:1];

    v6 = [WeakRetained clipsFactsWaitTimers];
    [v6 removeObjectForKey:*(a1 + 32)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllWaitingForFactTimers
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SymptomExpertSystemHandler *)self clipsFactsWaitTimers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SymptomExpertSystemHandler *)self cancelWaitForFactWithTemplateName:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [(SymptomExpertSystemHandler *)self clipsFactsWaitTimers];
  [v8 removeAllObjects];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelWaitForFactWithTemplateName:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SymptomExpertSystemHandler *)self clipsFactsWaitTimers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "NDFSM: Canceling timer for %@", &v9, 0xCu);
    }

    dispatch_source_cancel(v6);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)adjustStrobeTimerInterval:(id)a3 maximum:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SymptomExpertSystemHandler_adjustStrobeTimerInterval_maximum___block_invoke;
  block[3] = &unk_27898A328;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __64__SymptomExpertSystemHandler_adjustStrobeTimerInterval_maximum___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] integerValue];
  if (v2 == -1)
  {
    v3 = 900;
  }

  else
  {
    v3 = v2;
  }

  if ([a1[5] maximumDiagnosingTime] != v3)
  {
    v4 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = v3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "NDFSM: Adjusting the maximumDiagnosingTime to %lld", &v12, 0xCu);
    }

    [a1[5] setMaximumDiagnosingTime:v3];
  }

  v5 = [a1[5] diagnosingStrobeInterval];
  if (v5 != [a1[6] integerValue])
  {
    [a1[5] setDiagnosingStrobeInterval:{objc_msgSend(a1[6], "integerValue")}];
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "NDFSM: Adjusting the diagnosingStrobeInterval to %@", &v12, 0xCu);
    }

    v8 = [*(a1[5] + 5) objectAtIndexedSubscript:2];
    v9 = [v8 strobe];
    v10 = dispatch_time(0, 1000000000 * [a1[5] diagnosingStrobeInterval]);
    dispatch_source_set_timer(v9, v10, 1000000000 * [a1[5] diagnosingStrobeInterval], 0xBEBC200uLL);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)interfaceTypeForName:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    interfaceNameToType = self->_interfaceNameToType;
    if (!interfaceNameToType)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = self->_interfaceNameToType;
      self->_interfaceNameToType = v6;

      interfaceNameToType = self->_interfaceNameToType;
    }

    v8 = [(NSMutableDictionary *)interfaceNameToType objectForKeyedSubscript:v4];
    if (!v8)
    {
      if (([v4 isEqualToString:@"WiFi"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Cellular") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"WiredEthernet") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Loopback") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"Other"))
      {
        v8 = v4;
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceName:v4];
        v8 = +[InterfaceUtils stringForInterfaceType:](InterfaceUtils, "stringForInterfaceType:", [v12 type]);
        [(NSMutableDictionary *)self->_interfaceNameToType setObject:v8 forKeyedSubscript:v4];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "NDFSM: Returning interfaceType %@ for %@", &v13, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)analyticsCLIPSModuleDictForModule:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SymptomExpertSystemHandler *)self analyticsCLIPSModules];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"Module"];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)analyticsObserveModule:(id)a3 requiredModules:(id)a4 unloadModule:(id)a5
{
  v60[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB18] array];
  v43 = v8;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60[0] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];

      v9 = v12;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v9;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "NDFSM: analyticsObserveModule Unexpected requiredModules: %@", buf, 0xCu);
      }
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = v9;
    v14 = [v9 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v49;
      v18 = MEMORY[0x277CBEC28];
      do
      {
        v19 = 0;
        v20 = v16;
        do
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v48 + 1) + 8 * v19);

          v21 = [(SymptomExpertSystemHandler *)self analyticsObserveModule:v16 requiredModules:0 unloadModule:v18];
          if ([v10 BOOLValue])
          {
            [v11 addObject:v16];
          }

          ++v19;
          v20 = v16;
        }

        while (v15 != v19);
        v15 = [v9 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v15);

      v8 = v43;
    }
  }

  v22 = [(SymptomExpertSystemHandler *)self analyticsCLIPSModuleDictForModule:v8];

  if (v22)
  {
    v23 = MEMORY[0x277CBEC38];
  }

  else
  {
    if ([(CLIPSShim *)self->ruleEngine loadConstructsForModule:v8])
    {
      v24 = [(CLIPSShim *)self->ruleEngine setCurrentModule:v8];
      v25 = [(CLIPSShim *)self->ruleEngine deftemplatesMatchingPrefix:@"AnalyticsEvent_"];
      v26 = [(SymptomExpertSystemHandler *)self analyticsCLIPSMapping];
      [v26 addEntriesFromDictionary:v25];

      v27 = [(SymptomExpertSystemHandler *)self analyticsCLIPSModules];
      if (v9)
      {
        v55[0] = @"Module";
        v55[1] = @"RequiredModules";
        v56[0] = v8;
        v56[1] = v9;
        v28 = MEMORY[0x277CBEAC0];
        v29 = v56;
        v30 = v55;
        v31 = 2;
      }

      else
      {
        v53 = @"Module";
        v54 = v8;
        v28 = MEMORY[0x277CBEAC0];
        v29 = &v54;
        v30 = &v53;
        v31 = 1;
      }

      v32 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
      [v27 addObject:v32];

      v33 = [(CLIPSShim *)self->ruleEngine setCurrentModule:v24];
      v23 = MEMORY[0x277CBEC38];
      v8 = v43;
    }

    else
    {
      v23 = MEMORY[0x277CBEC28];
    }

    if ([v10 BOOLValue])
    {
      if ([v11 count])
      {
        [v11 insertObject:v8 atIndex:0];
      }

      else
      {
        [v11 addObject:v8];
      }
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v34 = v11;
  v35 = [v34 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = 0;
    v38 = *v45;
    do
    {
      v39 = 0;
      v40 = v37;
      do
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(v34);
        }

        v37 = *(*(&v44 + 1) + 8 * v39);

        [(SymptomExpertSystemHandler *)self unloadModule:v37];
        ++v39;
        v40 = v37;
      }

      while (v36 != v39);
      v36 = [v34 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v36);

    v8 = v43;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)unloadAnalyticsObservedModules
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(SymptomExpertSystemHandler *)self analyticsCLIPSModules];
  v4 = [v3 reverseObjectEnumerator];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v7;
      v12 = v8;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * v10);

        v8 = [v7 objectForKeyedSubscript:@"Module"];

        [(CLIPSShim *)self->ruleEngine unloadConstructsForModule:v8 unconditionally:0];
        ++v10;
        v11 = v7;
        v12 = v8;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deactivateModule:(id)a3
{
  ruleEngine = self->ruleEngine;
  v5 = a3;
  [(CLIPSShim *)ruleEngine deactivateModule:v5];
  [(CLIPSShim *)self->ruleEngine unloadConstructsForModule:v5 unconditionally:1];
}

- (void)requestCoreTelephonyDumpViaDiagnosticExtension:(id)a3 folderPrefix:(id)a4 dumpReason:(id)a5 resetBaseband:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
    if ([v10 BOOLValue])
    {
      if ([v13 BOOLValue])
      {
        v15 = @"dumpWithBasebandReset";
      }

      else
      {
        v15 = @"dump_attach";
      }

      [v14 setObject:v15 forKeyedSubscript:@"CellularExtensionCommandKey"];
    }

    else if ([v11 length])
    {
      [v14 setObject:@"attach" forKeyedSubscript:@"CellularExtensionCommandKey"];
      v17 = [CoreTelephonyShim dateTimeStringFromCTDumpFolderPrefix:v11];
      if ([v17 length])
      {
        [v14 setObject:v17 forKeyedSubscript:@"CellularExtensionFindLogsKey"];
      }
    }

    else
    {
      v20 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "folderPrefix is not valid", buf, 2u);
      }
    }

    if (v12 && [v12 length])
    {
      [v14 setObject:v12 forKeyedSubscript:@"CellularExtensionDumpReasonKey"];
    }

    v18 = [(SymptomExpertSystemHandler *)self deParamsDictForDiagnosticExtension:@"com.apple.DiagnosticExtensions.Cellular" withDEParams:v14];
    v19 = [(SymptomExpertSystemHandler *)self diagnosticSessionOutput];
    [v19 setObject:v18 forKeyedSubscript:@"DIAGNOSTIC_EXTENSION_PARAMS"];

    [(SymptomExpertSystemHandler *)self addDiagnosticSession:self->_diagnosticSessionIdentifier hasDictionary:MEMORY[0x277CBEC38] endSession:MEMORY[0x277CBEC28]];
  }

  else
  {
    v16 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Missing newDumpNum", v21, 2u);
    }
  }
}

- (id)deParamsDictForDiagnosticExtension:(id)a3 withDEParams:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D6B130];
  v14 = a4;
  v15 = v5;
  v13 = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getBatteryPercentage:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  [(PowerStateRelay *)self->powerRelay batteryPercentage];

  return [v3 numberWithDouble:?];
}

- (id)getOperatorName
{
  v3 = [(SymptomExpertSystemHandler *)self activeDataSIMOperatorName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(SymptomExpertSystemHandler *)self activeDataSIMOperatorName];
  }

  else
  {
    v6 = [(SymptomExpertSystemHandler *)self lastActiveDataSIMOperatorName];
    v7 = [v6 length];

    if (v7)
    {
      v5 = [(SymptomExpertSystemHandler *)self lastActiveDataSIMOperatorName];
    }

    else
    {
      v5 = &stru_2847966D8;
    }
  }

  return v5;
}

- (id)getSignalBars
{
  if ([(SymptomExpertSystemHandler *)self activeDataSIMSignalBars])
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [(SymptomExpertSystemHandler *)self activeDataSIMSignalBars];
LABEL_5:
    v5 = [v3 numberWithUnsignedInteger:v4];
    goto LABEL_6;
  }

  if ([(SymptomExpertSystemHandler *)self lastActiveDataSIMSignalBars])
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [(SymptomExpertSystemHandler *)self lastActiveDataSIMSignalBars];
    goto LABEL_5;
  }

  v5 = &unk_2847EF680;
LABEL_6:

  return v5;
}

- (void)fetchCoreTelephonyLoggingEnabledStatus
{
  v7 = 0;
  if ([(CoreTelephonyShim *)self->ctShim getBasebandTraceEnabledState:&v7 + 1 coreDumpEnabled:&v7])
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = @"FALSE";
    if (v7)
    {
      v5 = @"TRUE";
    }

    else
    {
      v5 = @"FALSE";
    }

    if (HIBYTE(v7))
    {
      v4 = @"TRUE";
    }

    v6 = [v3 initWithFormat:@"(CoreTelephonyLoggingEnabledStatus (coreDumpsEnabled %@) (basebandTracesEnabled %@))", v5, v4];
    [(SymptomExpertSystemHandler *)self probeFactString:v6 module:@"Baseband" goIntoDiagnosing:0 run:0];
  }

  else
  {
    [(SymptomExpertSystemHandler *)self probeFactString:@"(CoreTelephonyLoggingEnabledStatus (coreDumpsEnabled FALSE) (basebandTracesEnabled FALSE))" module:@"Baseband" goIntoDiagnosing:0 run:0];
  }
}

- (_NSRange)rangeOfValueForSlotName:(id)a3 in:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = objc_msgSend([v6 alloc], "initWithFormat:", @"(%@ "), v7;

  v9 = [v5 rangeOfString:v8];
  v11 = v10;

  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11)
  {
    v13 = v11 + v9;
    v14 = [v5 rangeOfString:@"\" options:? range:?], 0, v13, objc_msgSend(v5, "length"") + ~v13);
    v16 = v15 != 0;
    v17 = v14 > v13;
    if (v16 && v17)
    {
      v18 = v14 - v13;
    }

    else
    {
      v18 = 0;
    }

    if (v16 && v17)
    {
      v12 = v13;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v12;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

+ (BOOL)parseEndpoint:(id)a3 intoURL:(id *)a4 host:(id *)a5 scheme:(id *)a6 path:(id *)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = v11;
  if (!v11 || ![v11 length] || (v13 = objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]), "initWithString:", v12)) == 0)
  {
    v20 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v28 = 138412290;
      v29 = v12;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "Endpoint not a URL: %@", &v28, 0xCu);
    }

    v14 = 0;
LABEL_10:
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v19 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v13 host];
  if (!v15)
  {
    v27 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v28 = 138412290;
      v29 = v12;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "Endpoint has no host: %@", &v28, 0xCu);
    }

    goto LABEL_10;
  }

  v16 = v15;
  v17 = [v14 scheme];
  v18 = [v14 path];
  v19 = 1;
  if (a4)
  {
LABEL_11:
    v21 = v14;
    *a4 = v14;
  }

LABEL_12:
  if (a5)
  {
    v22 = v16;
    *a5 = v16;
  }

  if (a6)
  {
    v23 = v17;
    *a6 = v17;
  }

  if (a7)
  {
    v24 = v18;
    *a7 = v18;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)resetPreviousObfuscations
{
  v2 = [(SymptomExpertSystemHandler *)self obfuscations];
  [v2 removeAllObjects];
}

- (id)obfuscatedEndpoint:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v5 = [SymptomExpertSystemHandler parseEndpoint:v4 intoURL:&v25 host:&v24 scheme:&v23 path:&v22];
  v6 = v25;
  v7 = v24;
  v8 = v23;
  v9 = v22;
  if (!v5)
  {
    v15 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v4;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Endpoint malformed: %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v10 = [(SymptomExpertSystemHandler *)self primaryComponent:v7 obfuscationType:@"Host"];
  v11 = v10;
  if (!v10 || ([v10 objectForKeyedSubscript:@"EO_PRIMARY_STRING"], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "obfuscatedHost is missing!", buf, 2u);
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v13 = v12;
  if ([v9 length])
  {
    v14 = [(SymptomExpertSystemHandler *)self obfuscatedSubcomponent:v9 fromPrimaryEntry:v11 withKey:@"EO_SUBPATHS" obfuscation:@"Path"];
  }

  else
  {
    v14 = 0;
  }

  v20 = [MEMORY[0x277CCAB68] string];
  v21 = v20;
  if (v8)
  {
    [v20 appendFormat:@"%@://", v8];
  }

  [v21 appendFormat:@"%@", v13];
  if (v14)
  {
    [v21 appendFormat:@"/%@", v14];
  }

  v17 = v21;

LABEL_12:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)obfuscatedPrimaryComponent:(id)a3 obfuscationType:(id)a4
{
  v4 = [(SymptomExpertSystemHandler *)self primaryComponent:a3 obfuscationType:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"EO_PRIMARY_STRING"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)primaryComponent:(id)a3 obfuscationType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_obfuscations objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 objectForKeyedSubscript:v6];
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_obfuscations setObject:v9 forKeyedSubscript:v7];
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%lu", v7, objc_msgSend(v9, "count") + 1];
  v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:v11 forKey:@"EO_PRIMARY_STRING"];
  if (v12)
  {
    v10 = v12;
    [v9 setObject:v12 forKeyedSubscript:v6];
  }

  else
  {
    v13 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "componentEntry couldn't be created", buf, 2u);
    }

    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (id)obfuscatedSubcomponent:(id)a3 fromPrimaryEntry:(id)a4 withKey:(id)a5 obfuscation:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 objectForKeyedSubscript:v11];
  if (!v13)
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
    [v10 setObject:v13 forKeyedSubscript:v11];
  }

  v14 = [v13 objectForKeyedSubscript:v9];
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%lu", v12, objc_msgSend(v13, "count") + 1];
    [v13 setObject:v14 forKeyedSubscript:v9];
  }

  return v14;
}

- (void)startLoadDefaultRulesTimer:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  loadDefaultRulesTimer = self->_loadDefaultRulesTimer;
  v6 = debuggabilityLogHandle;
  v7 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
  if (loadDefaultRulesTimer)
  {
    if (v7)
    {
      *buf = 134217984;
      v19 = a3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Already have a _loadDefaultRulesTimer. Setting for %f second delay", buf, 0xCu);
    }

    v8 = self->_loadDefaultRulesTimer;
    v9 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    if (v7)
    {
      *buf = 134217984;
      v19 = a3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Create a new _loadDefaultRulesTimer. Setting for %f second delay", buf, 0xCu);
    }

    v10 = [(ExpertSystemHandlerCore *)self queue];
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);
    v12 = self->_loadDefaultRulesTimer;
    self->_loadDefaultRulesTimer = v11;

    v13 = self->_loadDefaultRulesTimer;
    v14 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    v15 = self->_loadDefaultRulesTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __57__SymptomExpertSystemHandler_startLoadDefaultRulesTimer___block_invoke;
    handler[3] = &unk_27898A0C8;
    handler[4] = self;
    dispatch_source_set_event_handler(v15, handler);
    dispatch_resume(self->_loadDefaultRulesTimer);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __57__SymptomExpertSystemHandler_startLoadDefaultRulesTimer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadDefaultRules];
  dispatch_source_cancel(*(*(a1 + 32) + 544));
  v2 = *(a1 + 32);
  v3 = *(v2 + 544);
  *(v2 + 544) = 0;
}

- (void)startCAEventObserverTimer
{
  v18 = *MEMORY[0x277D85DE8];
  clipsCAEventObserverTimer = self->_clipsCAEventObserverTimer;
  v4 = debuggabilityLogHandle;
  v5 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
  if (clipsCAEventObserverTimer)
  {
    if (v5)
    {
      *buf = 67109120;
      v17 = 15;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "Already have a _clipsCAEventObserverTimer. Setting for %d second delay", buf, 8u);
    }

    v6 = self->_clipsCAEventObserverTimer;
    v7 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    if (v5)
    {
      *buf = 67109120;
      v17 = 15;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "Create a new _clipsCAEventObserverTimer. Setting for %d second delay", buf, 8u);
    }

    v8 = [(ExpertSystemHandlerCore *)self queue];
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
    v10 = self->_clipsCAEventObserverTimer;
    self->_clipsCAEventObserverTimer = v9;

    v11 = self->_clipsCAEventObserverTimer;
    v12 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    v13 = self->_clipsCAEventObserverTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __55__SymptomExpertSystemHandler_startCAEventObserverTimer__block_invoke;
    handler[3] = &unk_27898A0C8;
    handler[4] = self;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_resume(self->_clipsCAEventObserverTimer);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__SymptomExpertSystemHandler_startCAEventObserverTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[63] allKeys];
  [v2 startAnalyticsObserving:v3];

  dispatch_source_cancel(*(*(a1 + 32) + 536));
  v4 = *(a1 + 32);
  v5 = *(v4 + 536);
  *(v4 + 536) = 0;
}

- (void)startAnalyticsObserving:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = debuggabilityLogHandle;
  if (v4)
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      *buf = 134217984;
      v25 = [v4 count];
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "ANALYTICS-CLIPS: Setting CAEventObserver configuration to [%lu entries]", buf, 0xCu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            v12 = *(*(&v19 + 1) + 8 * i);
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "ANALYTICS-CLIPS:        %@", buf, 0xCu);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    objc_initWeak(buf, self);
    v13 = [(SymptomExpertSystemHandler *)self symptomsCAObserver];
    v14 = [(ExpertSystemHandlerCore *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__SymptomExpertSystemHandler_startAnalyticsObserving___block_invoke;
    v17[3] = &unk_27898C158;
    objc_copyWeak(&v18, buf);
    [v13 addDelegate:self forEvents:v7 withQueue:v14 completion:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
    v4 = v16;
  }

  else if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "nil eventsOfInterest, not observing AWD", buf, 2u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__SymptomExpertSystemHandler_startAnalyticsObserving___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setObservingAnalyticsMetrics:a2];
    if ((a2 & 1) == 0)
    {
      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "ANALYTICS-CLIPS: Failed to set CAEventObserver configuration, error: %@", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopAnalyticsObserving:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_observingAnalyticsMetrics)
  {
    objc_initWeak(&location, self);
    v6 = [(SymptomExpertSystemHandler *)self symptomsCAObserver];
    v7 = [(ExpertSystemHandlerCore *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SymptomExpertSystemHandler_stopAnalyticsObserving___block_invoke;
    v8[3] = &unk_27898C180;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [v6 removeDelegate:self withQueue:v7 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

void __53__SymptomExpertSystemHandler_stopAnalyticsObserving___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = [WeakRetained analyticsCLIPSMapping];
      [v8 removeAllObjects];

      v9 = [v7 analyticsCLIPSModules];
      [v9 removeAllObjects];

      [v7 setObservingAnalyticsMetrics:0];
      v10 = *(a1 + 32);
      if (v10)
      {
        (*(v10 + 16))();
      }
    }

    else
    {
      v11 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "ANALYTICS-CLIPS: Failed to clear CAEventObserver observation because %@", &v13, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_processSymptomsdEnergyBackgroundRRCExcActivity:(uint64_t)a3 symptomName:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_begin_catch(a1);
  v5 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = a3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "NDFSM: Exception trying to convert %@ RRCExcActivity symptom offenders: %@", &v7, 0x16u);
  }

  objc_end_catch();
  v6 = *MEMORY[0x277D85DE8];
}

@end