@interface PLEnergyIssuesService
+ (BOOL)isTestRackDevice:(id)a3 withExpGroup:(id)a4 internalKeyDetected:(BOOL)a5;
+ (BOOL)shouldPopUpForPowerException;
+ (BOOL)shouldPopUpForPowerExceptionForProcess:(id)a3;
+ (BOOL)shouldPopUpForPowerExceptionWithFatalCount:(id)a3 withNonFatalCount:(id)a4 withMitigationsEnabled:(BOOL)a5;
+ (BOOL)supportsUrsa;
+ (id)createIssueEntriesFrom:(id)a3 forKey:(id)a4 now:(id)a5 midnight:(id)a6;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventIntervalDefinitionsUrsaIssues;
+ (id)entryEventPointDefinitionUrsaInteraction;
+ (id)entryEventPointDefinitionUrsaSummary;
+ (id)entryEventPointDefinitions;
+ (id)parseBootArgs:(id)a3;
+ (void)load;
- (BOOL)buildVersionChanged;
- (BOOL)isValidUrsaEntry:(id)a3;
- (BOOL)postUrsaNotification:(id)a3;
- (BOOL)requestUrsaNotificationAndLog:(id)a3;
- (BOOL)shouldUpdateTableFrom:(id)a3 newPayload:(id)a4;
- (PLEnergyIssuesService)init;
- (__CFDictionary)createAssertionThreshold:(int)a3 withAggregateLimit:(int)a4;
- (double)defaultFetchWindow;
- (id)extractActionfromEntry:(id)a3;
- (id)extractProcessNameFromEntry:(id)a3;
- (id)getRepeatingTaskWith:(id)a3 needsSubmit:(BOOL *)a4;
- (id)insertSystemTime:(id)a3 fromPLEntry:(id)a4;
- (id)queryExistingUrsaEntries:(id)a3;
- (void)addUrsaResponders;
- (void)checkUrsaBootArgs;
- (void)deregister:(id)a3;
- (void)deregisterUrsa;
- (void)executeUrsaClientCallWithBlock:(id)a3;
- (void)handleAssertionNotifications;
- (void)handlePeriodicTableUpdateCallback:(id)a3 withRequestUUID:(id)a4 withPayload:(id)a5 forEntry:(id)a6;
- (void)handlePowerException:(id)a3;
- (void)handleUrsaCallback:(id)a3 withRequestUUID:(id)a4 withPayload:(id)a5;
- (void)handleUrsaTask:(id)a3;
- (void)initOperatorDependancies;
- (void)initializeSafeguardsSystem;
- (void)initializeUrsa;
- (void)logPowerExceptionTelemetry:(id)a3 withNotified:(BOOL)a4 withRequestUUID:(id)a5;
- (void)processExistingEntriesSequentially;
- (void)registerPowerExceptionCallbacks;
- (void)registerTaskWith:(id)a3 inQueue:(id)a4 launchHandler:(id)a5;
- (void)registerUrsa;
- (void)runPeriodic:(double)a3 withFlag:(id)a4;
- (void)setAssertionThresholds;
- (void)submitTask:(id)a3;
- (void)updateExistingTableEntry:(id)a3 withResponsePayload:(id)a4;
- (void)updateParamsForUrsaTask:(id)a3;
- (void)updateTask:(id)a3;
- (void)writeUrsaNotificationToTable:(id)a3;
@end

@implementation PLEnergyIssuesService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLEnergyIssuesService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLEnergyIssuesService)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLEnergyIssuesService;
    self = [(PLOperator *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    [(PLEnergyIssuesService *)self setAssertionThresholds];
    [(PLEnergyIssuesService *)self initializeSafeguardsSystem];

    [(PLEnergyIssuesService *)self initializeUrsa];
  }
}

- (__CFDictionary)createAssertionThreshold:(int)a3 withAggregateLimit:(int)a4
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = a3;
  v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
  v11 = a4;
  v9 = CFNumberCreate(v6, kCFNumberIntType, &v11);
  CFDictionarySetValue(Mutable, @"Asssertion Duration Limit", v8);
  CFDictionarySetValue(Mutable, @"Aggregate Assertion Limit", v9);
  CFRelease(v8);
  CFRelease(v9);
  return Mutable;
}

- (void)setAssertionThresholds
{
  v28 = *MEMORY[0x277D85DE8];
  valueCallBacks = *byte_282B5B5D8;
  v3 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], &valueCallBacks);
  CFDictionarySetValue(v3, @"Default Limits", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"backboardd", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"SpringBoard", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"mediaserverd", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"locationd", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"InCallService", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"itunesstored", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"CommCenter", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"assertiond", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"nsurlsessiond", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"MobileMail", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"assetsd", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"iaptransportd", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"bluetoothd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"identityservicesd", [(PLEnergyIssuesService *)self createAssertionThreshold:1800 withAggregateLimit:1800]);
  CFDictionarySetValue(v3, @"cloudd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:3600]);
  CFDictionarySetValue(v3, @"backupd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"apsd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"ReportCrash", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"com.apple.TapToRadar", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"iapd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"Music", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"pmset", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"Tap-To-Radar", [(PLEnergyIssuesService *)self createAssertionThreshold:7200 withAggregateLimit:3150]);
  CFDictionarySetValue(v3, @"callservicesd", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"terminusd", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"wifid", [(PLEnergyIssuesService *)self createAssertionThreshold:999999 withAggregateLimit:2250]);
  CFDictionarySetValue(v3, @"softwareupdateservicesd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"sharingd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"homed", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  CFDictionarySetValue(v3, @"dasd", [(PLEnergyIssuesService *)self createAssertionThreshold:3600 withAggregateLimit:999999]);
  v4 = IOPMSetAssertionExceptionLimits();
  v5 = [MEMORY[0x277D3F180] debugEnabled];
  if (v4)
  {
    if (v5)
    {
      v6 = objc_opt_class();
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __47__PLEnergyIssuesService_setAssertionThresholds__block_invoke_120;
      v22 = &__block_descriptor_40_e5_v8__0lu32l8;
      v23 = v6;
      if (qword_2811F4C38 != -1)
      {
        dispatch_once(&qword_2811F4C38, &v19);
      }

      if (byte_2811F4C29 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsuccessful initialization of thresholds", v19, v20, v21, v22, v23];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLEnergyIssuesService.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLEnergyIssuesService setAssertionThresholds]"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:802];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v7;
LABEL_18:
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }
  }

  else if (v5)
  {
    v13 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLEnergyIssuesService_setAssertionThresholds__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v13;
    if (qword_2811F4C30 != -1)
    {
      dispatch_once(&qword_2811F4C30, block);
    }

    if (_MergedGlobals_1_31 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Succesful initialization of thresholds"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLEnergyIssuesService.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLEnergyIssuesService setAssertionThresholds]"];
      [v14 logMessage:v7 fromFile:v16 fromFunction:v17 fromLineNumber:799];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v7;
        goto LABEL_18;
      }

LABEL_13:
    }
  }

  if (v3)
  {
    CFDictionaryRemoveAllValues(v3);
    CFRelease(v3);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLEnergyIssuesService_setAssertionThresholds__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_31 = result;
  return result;
}

uint64_t __47__PLEnergyIssuesService_setAssertionThresholds__block_invoke_120(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4C29 = result;
  return result;
}

- (void)handleAssertionNotifications
{
  v2 = dispatch_queue_create("PM test queue", 0);
  IOPMScheduleAssertionExceptionNotification();
}

+ (id)entryEventIntervalDefinitions
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v7 = @"UrsaDefinition";
    v3 = [a1 entryEventIntervalDefinitionsUrsaIssues];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventIntervalDefinitionsUrsaIssues
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C448;
  v29[1] = &unk_282C118C8;
  v28[2] = *MEMORY[0x277D3F588];
  v29[2] = &unk_282C1C458;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"radar";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v27[0] = v23;
  v26[1] = @"impact";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v27[1] = v21;
  v26[2] = @"timestampStart";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_DateFormat];
  v27[2] = v19;
  v26[3] = @"timestampEnd";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_DateFormat];
  v27[3] = v17;
  v26[4] = @"hitIn";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v27[4] = v15;
  v26[5] = @"fixedIn";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v27[5] = v4;
  v26[6] = @"isCritical";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v27[6] = v6;
  v26[7] = @"timestampInvalid";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_DateFormat];
  v27[7] = v8;
  v26[8] = @"driMessage";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"UrsaSummary";
  v3 = [a1 entryEventPointDefinitionUrsaSummary];
  v8[1] = @"UrsaInteraction";
  v9[0] = v3;
  v4 = [a1 entryEventPointDefinitionUrsaInteraction];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventPointDefinitionUrsaSummary
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (+[PLEnergyIssuesService supportsUrsa])
  {
    v25[0] = *MEMORY[0x277D3F4E8];
    v23 = *MEMORY[0x277D3F568];
    v24 = &unk_282C1C468;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26[0] = v20;
    v25[1] = *MEMORY[0x277D3F540];
    v21[0] = @"requestId";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_StringFormat];
    v22[0] = v18;
    v21[1] = @"countBui";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v22[1] = v16;
    v21[2] = @"countNotification";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v22[2] = v14;
    v21[3] = @"error";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v22[3] = v3;
    v21[4] = @"peProcess";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat];
    v22[4] = v5;
    v21[5] = @"peReason";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v22[5] = v7;
    v21[6] = @"peFK_ID";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v22[6] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
    v26[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionUrsaInteraction
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (+[PLEnergyIssuesService supportsUrsa])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_282C1C478;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"source";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_StringFormat];
    v14[0] = v4;
    v13[1] = @"radar";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v14[1] = v6;
    v13[2] = @"action";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_StringFormat];
    v14[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (BOOL)supportsUrsa
{
  v2 = [MEMORY[0x277D3F208] internalBuild];
  if (v2)
  {
    if ([MEMORY[0x277D3F208] nonUIBuild])
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = [MEMORY[0x277D3F1B8] isVirtualDevice] ^ 1;
    }
  }

  return v2;
}

- (void)initializeUrsa
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(PLEnergyIssuesService *)self setUrsaStatus:-1];
  if (!+[PLEnergyIssuesService supportsUrsa])
  {
    goto LABEL_24;
  }

  v4 = dispatch_semaphore_create(1);
  [(PLEnergyIssuesService *)self setCurrentUrsaCloudKitTask:v4];

  v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [(PLEnergyIssuesService *)self setUrsaClientQueue:v5];

  v6 = [(PLEnergyIssuesService *)self ursaClientQueue];
  [v6 setMaxConcurrentOperationCount:1];

  v7 = [(PLEnergyIssuesService *)self ursaClientQueue];
  [v7 setQualityOfService:17];

  v8 = [(PLEnergyIssuesService *)self ursaClientQueue];
  [v8 setName:@"com.apple.powerlog.ursaClient"];

  [MEMORY[0x277D3F180] setObject:0 forKey:@"kUrsaEnabledKey" saveToDisk:1];
  [MEMORY[0x277D3F180] setObject:0 forKey:@"kUrsaNotificationEnabledKey" saveToDisk:1];
  [(PLEnergyIssuesService *)self addUrsaResponders];
  v9 = [MEMORY[0x277D3F180] BOOLForKey:@"UrsaUserSetting" ifNotSet:0];
  v10 = [MEMORY[0x277D3F258] mobileUserADG];
  v11 = [MEMORY[0x277D3F258] experimentGroup];
  v12 = +[PLEnergyIssuesService isTestRackDevice:withExpGroup:internalKeyDetected:](PLEnergyIssuesService, "isTestRackDevice:withExpGroup:internalKeyDetected:", v10, v11, [MEMORY[0x277D3F258] hasInternalKey]);

  v13 = PLLogUrsa();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 67109120;
    *v32 = v12;
    _os_log_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEFAULT, "test rack: %d", &v31, 8u);
  }

  v14 = _os_feature_enabled_impl();
  if (v9)
  {
    v15 = PLLogUrsa();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEFAULT, "Forcing enablement", &v31, 2u);
    }

    goto LABEL_9;
  }

  if (!v12 & v14)
  {
LABEL_9:
    v16 = PLLogUrsa();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      *v32 = @"enabled";
      _os_log_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEFAULT, "Feature %@", &v31, 0xCu);
    }

    v17 = _os_feature_enabled_impl();
    v18 = [MEMORY[0x277D3F258] buildVersion];
    v19 = [MEMORY[0x277D3F180] objectForKey:@"UrsaBuildOverride" ifNotSet:0];
    if (v19)
    {
      v20 = PLLogUrsa();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 138412546;
        *v32 = v18;
        *&v32[8] = 2112;
        v33 = v19;
        _os_log_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEFAULT, "overriding build: %@ -> %@", &v31, 0x16u);
      }

      v21 = v19;
      v18 = v21;
    }

    v22 = [_TtC21PowerlogLiteOperators10UrsaClient alloc];
    v23 = [(PLEnergyIssuesService *)self isUrsaDevModeEnabled];
    v24 = [MEMORY[0x277D3F258] crashReporterKey];
    v25 = [MEMORY[0x277D3F1B8] getHardwareModel];
    v26 = -[UrsaClient initClient:crKey:build:device:isiPad:isBeta:](v22, "initClient:crKey:build:device:isiPad:isBeta:", v23, v24, v18, v25, [MEMORY[0x277D3F208] isiPad], v17);
    [(PLEnergyIssuesService *)self setUrsaClient:v26];

    [(PLEnergyIssuesService *)self registerPowerExceptionCallbacks];
    [(PLEnergyIssuesService *)self registerUrsa];
    LOBYTE(v31) = 0;
    v27 = [(PLEnergyIssuesService *)self getUrsaTask:&v31];
    [(PLEnergyIssuesService *)self updateParamsForUrsaTask:v27];
    if (v31 == 1)
    {
      [(PLEnergyIssuesService *)self submitTask:v27];
    }

    else
    {
      [(PLEnergyIssuesService *)self updateTask:v27];
    }

    if ([(PLEnergyIssuesService *)self buildVersionChanged])
    {
      [(PLEnergyIssuesService *)self postUrsaNotification:&unk_282C183A0];
    }

    [(PLEnergyIssuesService *)self checkUrsaBootArgs];

    goto LABEL_24;
  }

  v28 = PLLogUrsa();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [MEMORY[0x277D3F208] internalBuild];
    v31 = 67109376;
    *v32 = v29;
    *&v32[4] = 1024;
    *&v32[6] = v12;
    _os_log_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEFAULT, "Feature disabled int=%d adg=%d", &v31, 0xEu);
  }

  [(PLEnergyIssuesService *)self deregisterUrsa];
LABEL_24:
  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)buildVersionChanged
{
  if (qword_2811F4C50 != -1)
  {
    dispatch_once(&qword_2811F4C50, &__block_literal_global_238);
  }

  return byte_2811F4C2A;
}

void __44__PLEnergyIssuesService_buildVersionChanged__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D3F180] objectForKey:@"kPLBatteryUrsaLastBuildKey"];
  v1 = PLLogUrsa();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v11 = [MEMORY[0x277D3F258] buildVersion];
    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v1, OS_LOG_TYPE_DEBUG, "Checking for update. Current build = %@, last build = %@.", &v12, 0x16u);
  }

  if (!v0)
  {
    v4 = MEMORY[0x277D3F180];
    v5 = MEMORY[0x277D3F258];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277D3F258] buildVersion];
    v3 = [v0 isEqualToString:v2];

    if (v3)
    {
      byte_2811F4C2A = 0;
      goto LABEL_13;
    }

    v4 = MEMORY[0x277D3F180];
    v5 = MEMORY[0x277D3F258];
LABEL_12:
    v9 = [v5 buildVersion];
    [v4 setObject:v9 forKey:@"kPLBatteryUrsaLastBuildKey" saveToDisk:1];

    byte_2811F4C2A = 1;
    goto LABEL_13;
  }

  v6 = PLLogUrsa();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v0;
    _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Invalid last build type: %@", &v12, 0xCu);
  }

  v7 = MEMORY[0x277D3F180];
  v8 = [MEMORY[0x277D3F258] buildVersion];
  [v7 setObject:v8 forKey:@"kPLBatteryUrsaLastBuildKey" saveToDisk:1];

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)addUrsaResponders
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke;
  v8[3] = &unk_278259810;
  v8[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C183C8 withBlock:v8];
  [(PLEnergyIssuesService *)self setUrsaResponder:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_6;
  v7[3] = &unk_27825A1D8;
  v7[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C18440 withBlock:v7];
  [(PLEnergyIssuesService *)self setUrsaInteractionListener:v6];
}

id __42__PLEnergyIssuesService_addUrsaResponders__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v104 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v10 count])
  {
    v17 = &unk_282C183F0;
    goto LABEL_28;
  }

  v11 = [*(a1 + 32) ursaClient];

  if (!v11)
  {
    v17 = &unk_282C18418;
    goto LABEL_28;
  }

  v12 = PLLogUrsa();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEFAULT, "handling test CLI query %@", &buf, 0xCu);
  }

  v13 = [v10 objectForKeyedSubscript:@"flag"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__10;
  v102 = __Block_byref_object_dispose__10;
  v103 = [MEMORY[0x277CBEB38] dictionary];
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__10;
  v97 = __Block_byref_object_dispose__10;
  v98 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__10;
  v91 = __Block_byref_object_dispose__10;
  v92 = dispatch_semaphore_create(0);
  v14 = [v10 objectForKeyedSubscript:@"networkPeriodic"];
  v15 = v14 == 0;

  if (v15)
  {
    v18 = [v10 objectForKeyedSubscript:@"networkAdmit"];
    v19 = v18 == 0;

    if (v19)
    {
      v23 = [v10 objectForKeyedSubscript:@"runPeriodic"];
      v24 = v23 == 0;

      if (v24)
      {
        v26 = [v10 objectForKeyedSubscript:@"runAdmit"];
        v27 = v26 == 0;

        if (v27)
        {
          v57 = [v10 objectForKeyedSubscript:@"rateLimit"];
          v58 = v57 == 0;

          if (v58)
          {
            v62 = [v10 objectForKeyedSubscript:@"loadBuild"];
            v63 = v62 == 0;

            if (v63)
            {
              goto LABEL_25;
            }

            v64 = [v10 objectForKeyedSubscript:@"buildVersion"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v66 = MEMORY[0x277D3F180];
            if (isKindOfClass)
            {
              v67 = [v10 objectForKeyedSubscript:@"buildVersion"];
              [v66 setObject:v67 forKey:@"kPLBatteryUrsaLastBuildKey" saveToDisk:1];
            }

            else
            {
              [MEMORY[0x277D3F180] setObject:0 forKey:@"kPLBatteryUrsaLastBuildKey" saveToDisk:1];
            }
          }

          else
          {
            v59 = [v10 objectForKeyedSubscript:@"rateLimit"];
            v60 = [v59 isEqualToString:@"get"];

            if (v60)
            {
              [MEMORY[0x277D3F180] doubleForKey:@"UrsaNotifyAfter" ifNotSet:0.0];
              v61 = [MEMORY[0x277CCABB0] numberWithDouble:?];
              [*(*(&buf + 1) + 40) setObject:v61 forKeyedSubscript:@"notifyAfter"];
            }

            else
            {
              v68 = [v10 objectForKeyedSubscript:@"rateLimit"];
              v69 = [v68 isEqualToString:@"clear"];

              if (v69)
              {
                [MEMORY[0x277D3F180] setObject:0 forKey:@"UrsaNotifyAfter" saveToDisk:1];
                [*(*(&buf + 1) + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cleared"];
              }
            }
          }

          dispatch_semaphore_signal(v88[5]);
          goto LABEL_25;
        }

        v28 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:@"ursaRunAdmitCLI"];
        v29 = [v10 objectForKeyedSubscript:@"ProcessName"];
        [v28 setObject:v29 forKeyedSubscript:@"ProcessName"];

        v30 = MEMORY[0x277CCABB0];
        v31 = [v10 objectForKeyedSubscript:@"IssueType"];
        v32 = [v30 numberWithInt:{objc_msgSend(v31, "intValue")}];
        [v28 setObject:v32 forKeyedSubscript:@"IssueType"];

        v33 = MEMORY[0x277CCABB0];
        v34 = [v10 objectForKeyedSubscript:@"MitigationType"];
        v35 = [v33 numberWithInt:{objc_msgSend(v34, "intValue")}];
        [v28 setObject:v35 forKeyedSubscript:@"MitigationType"];

        v36 = MEMORY[0x277CCABB0];
        v37 = [v10 objectForKeyedSubscript:@"MitigationReason"];
        v38 = [v36 numberWithInt:{objc_msgSend(v37, "intValue")}];
        [v28 setObject:v38 forKeyedSubscript:@"MitigationReason"];

        v39 = MEMORY[0x277CCABB0];
        v40 = [v10 objectForKeyedSubscript:@"EstimatedEnergy"];
        v41 = [v39 numberWithInt:{objc_msgSend(v40, "intValue")}];
        [v28 setObject:v41 forKeyedSubscript:@"EstimatedEnergy"];

        v42 = MEMORY[0x277CCABB0];
        v43 = [v10 objectForKeyedSubscript:@"FatalCount"];
        v44 = [v42 numberWithInt:{objc_msgSend(v43, "intValue")}];
        [v28 setObject:v44 forKeyedSubscript:@"FatalCount"];

        v45 = MEMORY[0x277CCABB0];
        v46 = [v10 objectForKeyedSubscript:@"NonFatalCount"];
        v47 = [v45 numberWithInt:{objc_msgSend(v46, "intValue")}];
        [v28 setObject:v47 forKeyedSubscript:@"NonFatalCount"];

        v48 = MEMORY[0x277CCABB0];
        v49 = [v10 objectForKeyedSubscript:@"ThresholdCPUUsage"];
        v50 = [v48 numberWithInt:{objc_msgSend(v49, "intValue")}];
        [v28 setObject:v50 forKeyedSubscript:@"ThresholdCPUUsage"];

        v51 = MEMORY[0x277CCABB0];
        v52 = [v10 objectForKeyedSubscript:@"TimeWindowSize"];
        v53 = [v51 numberWithInt:{objc_msgSend(v52, "intValue")}];
        [v28 setObject:v53 forKeyedSubscript:@"TimeWindowSize"];

        v54 = MEMORY[0x277CCABB0];
        v55 = [v10 objectForKeyedSubscript:@"timestampEnd"];
        v56 = [v54 numberWithInt:{objc_msgSend(v55, "intValue")}];
        [v28 setObject:v56 forKeyedSubscript:@"timestampEnd"];

        [*(a1 + 32) handlePowerException:v28];
        dispatch_semaphore_signal(v88[5]);
      }

      else
      {
        v25 = [*(a1 + 32) workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_5;
        block[3] = &unk_278259658;
        block[4] = *(a1 + 32);
        v75 = v13;
        dispatch_async(v25, block);

        [*(*(&buf + 1) + 40) setObject:@"running periodic" forKeyedSubscript:@"success"];
        dispatch_semaphore_signal(v88[5]);
      }
    }

    else
    {
      v20 = [v10 objectForKeyedSubscript:@"networkAdmit"];
      v21 = *(a1 + 32);
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_3;
      v76[3] = &unk_27825DDA0;
      v76[4] = v21;
      v22 = v20;
      v77 = v22;
      v78 = v13;
      p_buf = &buf;
      v80 = &v93;
      v81 = &v87;
      [v21 executeUrsaClientCallWithBlock:v76];
    }
  }

  else
  {
    v16 = *(a1 + 32);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_277;
    v82[3] = &unk_27825DD78;
    v82[4] = v16;
    v83 = v13;
    v84 = &buf;
    v85 = &v93;
    v86 = &v87;
    [v16 executeUrsaClientCallWithBlock:v82];
  }

LABEL_25:
  v70 = v88[5];
  v71 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v70, v71))
  {
    [*(*(&buf + 1) + 40) setObject:@"timed out waiting for response" forKeyedSubscript:@"error"];
  }

  [*(*(&buf + 1) + 40) setObject:v94[5] forKeyedSubscript:@"requestUUID"];
  v17 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v87, 8);

  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&buf, 8);

LABEL_28:
  v72 = *MEMORY[0x277D85DE8];

  return v17;
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_277(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_2;
  v4[3] = &unk_27825DD50;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 periodicCheckSince:v3 flag:v4 completionHandler:0.0];
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = a4;
  [v8 setObject:a2 forKeyedSubscript:@"error"];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"payload"];
  dispatch_semaphore_signal(*(*(*(a1 + 56) + 8) + 40));
  dsema = [*(a1 + 32) currentUrsaCloudKitTask];

  dispatch_semaphore_signal(dsema);
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_4;
  v5[3] = &unk_27825DD50;
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v5[4] = *(a1 + 32);
  [v2 shouldAdmitFor:v3 impact:0 flag:v4 completionHandler:v5];
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = a4;
  [v8 setObject:a2 forKeyedSubscript:@"error"];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"payload"];
  dispatch_semaphore_signal(*(*(*(a1 + 56) + 8) + 40));
  dsema = [*(a1 + 32) currentUrsaCloudKitTask];

  dispatch_semaphore_signal(dsema);
}

uint64_t __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 defaultFetchWindow];
  v3 = *(a1 + 40);

  return [v2 runPeriodic:v3 withFlag:?];
}

void __42__PLEnergyIssuesService_addUrsaResponders__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogUrsa();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Payload from Ursa Interaction via XPC: %@", &v11, 0xCu);
  }

  if (v6)
  {
    v8 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaInteraction"];
    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
    [*(a1 + 32) logEntry:v9];
  }

  else
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "No payload available", &v11, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerUrsa
{
  objc_initWeak(&location, self);
  v3 = [(PLOperator *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__PLEnergyIssuesService_registerUrsa__block_invoke;
  v4[3] = &unk_27825DDC8;
  objc_copyWeak(&v5, &location);
  [(PLEnergyIssuesService *)self registerTaskWith:@"com.apple.PerfPowerServices.ursaTask" inQueue:v3 launchHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__PLEnergyIssuesService_registerUrsa__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUrsaTask:v3];
}

- (void)registerTaskWith:(id)a3 inQueue:(id)a4 launchHandler:(id)a5
{
  v7 = MEMORY[0x277CF0808];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 sharedScheduler];
  [v11 registerForTaskWithIdentifier:v10 usingQueue:v9 launchHandler:v8];
}

- (id)getRepeatingTaskWith:(id)a3 needsSubmit:(BOOL *)a4
{
  v5 = [MEMORY[0x277CF0808] sharedScheduler];
  v6 = [v5 taskRequestForIdentifier:@"com.apple.PerfPowerServices.ursaTask"];

  *a4 = 0;
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277CF07E0]) initWithIdentifier:@"com.apple.PerfPowerServices.ursaTask"];
    *a4 = 1;
  }

  return v6;
}

- (void)updateParamsForUrsaTask:(id)a3
{
  v3 = a3;
  [v3 setPriority:1];
  [v3 setRequiresNetworkConnectivity:1];
  [v3 setRequiresExternalPower:0];
  [v3 setInterval:21600.0];
}

- (void)submitTask:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogUrsa();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 identifier];
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Submitting task with id, %@...", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CF0808] sharedScheduler];
  v13 = 0;
  v7 = [v6 submitTaskRequest:v3 error:&v13];
  v8 = v13;

  v9 = PLLogUrsa();
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v11 = [v3 identifier];
    *buf = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v8;
    _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Failed to submit task with id, %@, error: %@", buf, 0x16u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 identifier];
    *buf = 138412290;
    v15 = v11;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Submitted task with id, %@", buf, 0xCu);
LABEL_6:
  }

LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateTask:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogUrsa();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 identifier];
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Updating task with id, %@...", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CF0808] sharedScheduler];
  v13 = 0;
  v7 = [v6 updateTaskRequest:v3 error:&v13];
  v8 = v13;

  v9 = PLLogUrsa();
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v11 = [v3 identifier];
    *buf = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v8;
    _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Failed to update task with id, %@, error: %@", buf, 0x16u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 identifier];
    *buf = 138412290;
    v15 = v11;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Updated task with id, %@ successfully", buf, 0xCu);
LABEL_6:
  }

LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deregisterUrsa
{
  [(PLEnergyIssuesService *)self setUrsaClient:0];
  [(PLEnergyIssuesService *)self setUrsaResponder:0];
  [(PLEnergyIssuesService *)self setUrsaInteractionListener:0];
  v3 = [(PLEnergyIssuesService *)self currentUrsaCloudKitTask];

  if (v3)
  {
    v4 = [(PLEnergyIssuesService *)self currentUrsaCloudKitTask];
    dispatch_semaphore_signal(v4);

    [(PLEnergyIssuesService *)self setCurrentUrsaCloudKitTask:0];
  }

  v5 = [(PLEnergyIssuesService *)self ursaClientQueue];

  if (v5)
  {
    v6 = [(PLEnergyIssuesService *)self ursaClientQueue];
    [v6 cancelAllOperations];

    [(PLEnergyIssuesService *)self setUrsaClientQueue:0];
  }

  v7 = [MEMORY[0x277CF0808] sharedScheduler];
  v9 = [v7 taskRequestForIdentifier:@"com.apple.PerfPowerServices.ursaTask"];

  v8 = v9;
  if (v9)
  {
    [(PLEnergyIssuesService *)self deregister:v9];
    v8 = v9;
  }
}

- (void)deregister:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogUrsa();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 identifier];
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Deregistering task with id, %@...", &v13, 0xCu);
  }

  v6 = [MEMORY[0x277CF0808] sharedScheduler];
  v7 = [v3 identifier];
  v8 = [v6 deregisterTaskWithIdentifier:v7];

  v9 = PLLogUrsa();
  v10 = v9;
  if (!v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v11 = [v3 identifier];
    v13 = 138412290;
    v14 = v11;
    _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Failed to deregister task with id, %@", &v13, 0xCu);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 identifier];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Deregistered task with id, %@", &v13, 0xCu);
LABEL_6:
  }

LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleUrsaTask:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__PLEnergyIssuesService_handleUrsaTask___block_invoke;
  v5[3] = &unk_2782591D0;
  v5[4] = self;
  v4 = a3;
  [v4 setExpirationHandler:v5];
  [(PLEnergyIssuesService *)self runPeriodic:0 withFlag:0.0];
  [v4 setTaskCompleted];
}

void __40__PLEnergyIssuesService_handleUrsaTask___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ursaClient];
  [v1 cancel];
}

- (void)runPeriodic:(double)a3 withFlag:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 <= 0.0)
  {
    [(PLEnergyIssuesService *)self defaultFetchWindow];
    a3 = v7;
  }

  v8 = PLLogUrsa();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v15 = a3;
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Running periodic with table update since %.2f %@", buf, 0x16u);
  }

  [(PLEnergyIssuesService *)self processExistingEntriesSequentially];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__PLEnergyIssuesService_runPeriodic_withFlag___block_invoke;
  v11[3] = &unk_27825CFA0;
  v13 = a3;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  [(PLEnergyIssuesService *)self executeUrsaClientCallWithBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __46__PLEnergyIssuesService_runPeriodic_withFlag___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PLEnergyIssuesService_runPeriodic_withFlag___block_invoke_2;
  v5[3] = &unk_27825DDF0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [v2 periodicCheckSince:v4 flag:v5 completionHandler:v3];
}

- (double)defaultFetchWindow
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [MEMORY[0x277CBEAA8] nearestMidnightBeforeDate:v2];
  v4 = PLLogUrsa();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "defaulting to %@", &v9, 0xCu);
  }

  [v3 timeIntervalSince1970];
  v6 = v5;

  v7 = *MEMORY[0x277D85DE8];
  return v6 + -86400.0;
}

- (void)processExistingEntriesSequentially
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [v3 dateByAddingTimeInterval:-1209600.0];

  v5 = [(PLEnergyIssuesService *)self queryExistingUrsaEntries:v4];
  v6 = PLLogUrsa();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = [v5 count];
    _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Found %lu existing entries for update", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([(PLEnergyIssuesService *)self isValidUrsaEntry:v12])
        {
          v13 = [(PLEnergyIssuesService *)self extractProcessNameFromEntry:v12];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __59__PLEnergyIssuesService_processExistingEntriesSequentially__block_invoke;
          v17[3] = &unk_27825D6E8;
          v17[4] = self;
          v18 = v13;
          v19 = v12;
          v14 = v13;
          [(PLEnergyIssuesService *)self executeUrsaClientCallWithBlock:v17];
        }

        else
        {
          v14 = PLLogUrsa();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 dictionary];
            *buf = 138412290;
            v26 = v15;
            _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "Invalid PLEntry. Skipping update for %@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __59__PLEnergyIssuesService_processExistingEntriesSequentially__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PLEnergyIssuesService_processExistingEntriesSequentially__block_invoke_2;
  v6[3] = &unk_27825DE18;
  v4 = v3;
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v2 shouldAdmitFor:v4 impact:0 flag:0 completionHandler:v6];
}

void __59__PLEnergyIssuesService_processExistingEntriesSequentially__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PLLogUrsa();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v17 = 138412802;
    v18 = v11;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Callback for %@ - error:%@ payload:%@", &v17, 0x20u);
  }

  if (!v7 && v9)
  {
    v12 = [v9 mutableCopy];
    v13 = [v12 objectForKeyedSubscript:@"process"];

    if (!v13)
    {
      v14 = [*(a1 + 40) extractProcessNameFromEntry:*(a1 + 48)];
      [v12 setObject:v14 forKeyedSubscript:@"process"];
    }

    v15 = [v12 objectForKeyedSubscript:@"action"];

    if (!v15)
    {
      [v12 setObject:@"ttr" forKeyedSubscript:@"action"];
    }

    [*(a1 + 40) handlePeriodicTableUpdateCallback:0 withRequestUUID:v8 withPayload:v12 forEntry:*(a1 + 48)];
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    v12 = PLLogUrsa();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, "Entry failed with error: %@", &v17, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

- (id)queryExistingUrsaEntries:(id)a3
{
  v3 = *MEMORY[0x277D3F5D8];
  v4 = a3;
  v5 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:v3 andName:@"UrsaDefinition"];
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCABB0];
  [v4 timeIntervalSince1970];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 stringWithFormat:@"%@ >= %@ AND INSTR(%@, ':') > 0", @"timestampEnd", v10, @"driMessage"];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"SUBSTR(p1.%@, INSTR(p1.%@, ':') + 1) = SUBSTR(p2.%@, INSTR(p2.%@, ':') + 1)", @"driMessage", @"driMessage", @"driMessage", @"driMessage"];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT MAX(%@) FROM %@ p2 WHERE %@ ", @"timestampEnd", v5, v12];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM %@ p1 WHERE %@ AND %@ = (%@) ORDER BY %@ DESC", v5, v11, @"timestampEnd", v13, @"timestampEnd"];;
  v15 = [MEMORY[0x277D3F2A0] sharedCore];
  v16 = [v15 storage];
  v17 = [v16 entriesForKey:v5 withQuery:v14];

  return v17;
}

- (void)handlePeriodicTableUpdateCallback:(id)a3 withRequestUUID:(id)a4 withPayload:(id)a5 forEntry:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__PLEnergyIssuesService_handlePeriodicTableUpdateCallback_withRequestUUID_withPayload_forEntry___block_invoke;
  block[3] = &unk_27825DE40;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v23 = self;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  dispatch_async(v14, block);
}

void __96__PLEnergyIssuesService_handlePeriodicTableUpdateCallback_withRequestUUID_withPayload_forEntry___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaSummary"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v2];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:@"requestId"];
  if (*(a1 + 40))
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"error"];
  }

  else if (*(a1 + 48) && [*(a1 + 56) shouldUpdateTableFrom:*(a1 + 64) newPayload:?])
  {
    v6 = PLLogUrsa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 56) extractProcessNameFromEntry:*(a1 + 64)];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "handling callback for %@", &v8, 0xCu);
    }

    [*(a1 + 56) updateExistingTableEntry:*(a1 + 64) withResponsePayload:*(a1 + 48)];
  }

  [*(a1 + 56) logEntry:v3];
  v4 = [*(a1 + 56) currentUrsaCloudKitTask];
  dispatch_semaphore_signal(v4);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateExistingTableEntry:(id)a3 withResponsePayload:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"UrsaDefinition"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [v7 objectForKeyedSubscript:@"action"];

  v11 = MEMORY[0x277CCACA8];
  if (v10)
  {
    v12 = [v7 objectForKeyedSubscript:@"action"];
    v13 = [v7 objectForKeyedSubscript:@"process"];
    v14 = [v11 stringWithFormat:@"%@:%@", v12, v13];
  }

  else
  {
    v12 = [v7 objectForKeyedSubscript:@"process"];
    v14 = [v11 stringWithFormat:@"%@:%@", @"ttr", v12];
  }

  [v9 setObject:v14 forKeyedSubscript:@"driMessage"];
  v15 = [v7 objectForKeyedSubscript:@"radar"];
  [v9 setObject:v15 forKeyedSubscript:@"radar"];

  v16 = [v6 objectForKeyedSubscript:@"hitIn"];
  [v9 setObject:v16 forKeyedSubscript:@"hitIn"];

  v17 = [v6 objectForKeyedSubscript:@"timestampEnd"];
  [v9 setObject:v17 forKeyedSubscript:@"timestampEnd"];

  v18 = [v7 objectForKeyedSubscript:@"fixedIn"];
  [v9 setObject:v18 forKeyedSubscript:@"fixedIn"];

  v19 = [v7 objectForKeyedSubscript:@"impact"];
  [v9 setObject:v19 forKeyedSubscript:@"impact"];

  [(PLOperator *)self logEntry:v9];
  v20 = [MEMORY[0x277D3F2A0] sharedCore];
  v21 = [v20 storage];
  [v21 deleteEntryForKey:v8 WithRowID:{objc_msgSend(v6, "entryID")}];

  v22 = PLLogUrsa();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v6 dictionary];
    v24 = [v9 dictionary];
    *buf = 138412546;
    v27 = v23;
    v28 = 2112;
    v29 = v24;
    _os_log_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEFAULT, "Updated table entry for %@ with new entry %@", buf, 0x16u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleUrsaCallback:(id)a3 withRequestUUID:(id)a4 withPayload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLOperator *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__PLEnergyIssuesService_handleUrsaCallback_withRequestUUID_withPayload___block_invoke;
  v15[3] = &unk_2782591A8;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __72__PLEnergyIssuesService_handleUrsaCallback_withRequestUUID_withPayload___block_invoke(uint64_t a1)
{
  v13 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaSummary"];
  v2 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"requestId"];
  if (*(a1 + 40))
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"error"];
    goto LABEL_3;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"admit"];
    if (v5)
    {
      v6 = [*(a1 + 48) objectForKeyedSubscript:@"admit"];
      v7 = [v6 BOOLValue];

      if (v7)
      {
        v5 = [*(a1 + 56) requestUrsaNotificationAndLog:*(a1 + 48)];
      }

      else
      {
        v5 = 0;
      }
    }

    v8 = [*(a1 + 48) objectForKeyedSubscript:@"action"];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = [*(a1 + 48) objectForKeyedSubscript:@"action"];
    if ([v9 isEqual:@"livability"])
    {
    }

    else
    {
      v10 = [*(a1 + 48) objectForKeyedSubscript:@"action"];
      v11 = [v10 isEqual:@"softwareUpdate"];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v5 = [*(a1 + 56) requestUrsaNotificationAndLog:*(a1 + 48)];
LABEL_16:
    v12 = [*(a1 + 48) objectForKeyedSubscript:@"process"];

    if (v12)
    {
      [*(a1 + 56) logPowerExceptionTelemetry:*(a1 + 48) withNotified:v5 withRequestUUID:*(a1 + 32)];
    }
  }

LABEL_3:
  [*(a1 + 56) logEntry:v2];
  v3 = [*(a1 + 56) currentUrsaCloudKitTask];
  dispatch_semaphore_signal(v3);
}

- (void)logPowerExceptionTelemetry:(id)a3 withNotified:(BOOL)a4 withRequestUUID:(id)a5
{
  v6 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v29 = PLLogUrsa();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_ERROR, "Invalid payload for log-power-exception event", buf, 2u);
    }

    goto LABEL_31;
  }

  v32 = v6;
  v33 = v9;
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = *v37;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v36 + 1) + 8 * i);
      v18 = [v12 objectForKeyedSubscript:v17];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 setObject:v18 forKeyedSubscript:v17];
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v18 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = MEMORY[0x277CCACA8];
          [v18 timeIntervalSince1970];
          v19 = [v20 stringWithFormat:@"%.0f", v21];
        }

        else
        {
          if (!v18)
          {
            goto LABEL_16;
          }

          v19 = [v18 description];
        }
      }

      v22 = v19;
      [v11 setObject:v19 forKeyedSubscript:v17];

LABEL_16:
    }

    v14 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v14);
LABEL_18:

  v23 = [v11 objectForKeyedSubscript:@"admit"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [v11 objectForKeyedSubscript:@"admit"];
    v25 = [v24 isEqualToString:@"1"];

    v10 = v33;
    v26 = self;
    v27 = v32;
    if (v25)
    {
      v28 = @"true";
      goto LABEL_25;
    }
  }

  else
  {

    v10 = v33;
    v26 = self;
    v27 = v32;
  }

  v28 = @"false";
LABEL_25:
  [v11 setObject:v28 forKeyedSubscript:@"admit"];
  if (v27)
  {
    v30 = @"true";
  }

  else
  {
    v30 = @"false";
  }

  [v11 setObject:v30 forKeyedSubscript:@"notified"];
  if (v10)
  {
    [v11 setObject:v10 forKeyedSubscript:@"requestUUID"];
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __81__PLEnergyIssuesService_logPowerExceptionTelemetry_withNotified_withRequestUUID___block_invoke;
  v34[3] = &unk_278259658;
  v34[4] = v26;
  v35 = v11;
  v29 = v11;
  [(PLEnergyIssuesService *)v26 executeUrsaClientCallWithBlock:v34];

LABEL_31:
  v31 = *MEMORY[0x277D85DE8];
}

void __81__PLEnergyIssuesService_logPowerExceptionTelemetry_withNotified_withRequestUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__PLEnergyIssuesService_logPowerExceptionTelemetry_withNotified_withRequestUUID___block_invoke_2;
  v4[3] = &unk_27825DDF0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 reportTelemetryEvent:@"log-power-exception" payload:v3 flag:0 completionHandler:v4];
}

void __81__PLEnergyIssuesService_logPowerExceptionTelemetry_withNotified_withRequestUUID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLLogUrsa();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "failed to log power exception event <%@>: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "logged power exception event <%@>", &v11, 0xCu);
  }

  v9 = [*(a1 + 32) currentUrsaCloudKitTask];
  dispatch_semaphore_signal(v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)requestUrsaNotificationAndLog:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "invalid power exception, skipping notify", buf, 2u);
    }

    goto LABEL_10;
  }

  v6 = [v4 objectForKeyedSubscript:@"process"];

  if (v6)
  {
    [(PLEnergyIssuesService *)self writeUrsaNotificationToTable:v5];
  }

  if (!+[PLEnergyIssuesService shouldPopUpForPowerException])
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, "skipping notify due to rate limit", v10, 2u);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  v7 = [(PLEnergyIssuesService *)self postUrsaNotification:v5];
LABEL_11:

  return v7;
}

- (BOOL)postUrsaNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogUrsa();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v4;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "posting %@", &v21, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:@"admit"];

  if (v6)
  {
    v7 = [(PLOperator *)self storage];
    [v7 blockingFlushCachesWithReason:@"ursa-ttr"];
  }

  v8 = PLQueryRegistered();
  v9 = v8;
  if (!v8 || ([v8 objectForKeyedSubscript:@"UrsaNotificationState"], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v14 = PLLogUrsa();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      v16 = "invalid response";
      v17 = v14;
      v18 = 2;
LABEL_15:
      _os_log_error_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_ERROR, v16, &v21, v18);
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v11 = [v9 objectForKeyedSubscript:@"UrsaNotificationState"];
  v12 = [v11 BOOLValue];

  v13 = PLLogUrsa();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412546;
      v22 = v4;
      v23 = 2112;
      v24 = v9;
      v16 = "failed to post notification, %@ -> %@";
      v17 = v14;
      v18 = 22;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v4;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "posted notification %@ -> %@", &v21, 0x16u);
  }

  v15 = 1;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)writeUrsaNotificationToTable:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"UrsaDefinition"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = [v4 objectForKeyedSubscript:@"action"];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"action"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 stringByAppendingString:@":"];

  v10 = [v4 objectForKeyedSubscript:@"process"];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"process"];
    v12 = [v9 stringByAppendingString:v11];

    v9 = v12;
  }

  [v6 setObject:v9 forKeyedSubscript:@"driMessage"];
  v13 = [v4 objectForKeyedSubscript:@"radar"];

  if (v13)
  {
    v14 = [v4 objectForKeyedSubscript:@"radar"];
    [v6 setObject:v14 forKeyedSubscript:@"radar"];
  }

  v15 = [v4 objectForKeyedSubscript:@"fixedIn"];

  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:@"fixedIn"];
    [v6 setObject:v16 forKeyedSubscript:@"fixedIn"];
  }

  v17 = [v4 objectForKeyedSubscript:@"impact"];

  if (v17)
  {
    v18 = [v4 objectForKeyedSubscript:@"impact"];
    [v6 setObject:v18 forKeyedSubscript:@"impact"];
  }

  else
  {
    [v6 setObject:&unk_282C118E0 forKeyedSubscript:@"impact"];
  }

  v19 = [v4 objectForKeyedSubscript:@"timestamp"];

  if (v19)
  {
    v20 = [v4 objectForKeyedSubscript:@"timestamp"];
    [v6 setObject:v20 forKeyedSubscript:@"timestampEnd"];
  }

  v21 = [MEMORY[0x277D3F258] buildVersion];
  [v6 setObject:v21 forKeyedSubscript:@"hitIn"];

  [(PLOperator *)self logEntry:v6];
  v22 = PLLogUrsa();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v6 dictionary];
    v25 = 138412546;
    v26 = @"UrsaDefinition";
    v27 = 2112;
    v28 = v23;
    _os_log_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEFAULT, "wrote notification data to %@ table: %@", &v25, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)executeUrsaClientCallWithBlock:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCA8C8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __56__PLEnergyIssuesService_executeUrsaClientCallWithBlock___block_invoke;
  v12 = &unk_27825DE68;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = [v5 blockOperationWithBlock:&v9];
  v8 = [(PLEnergyIssuesService *)self ursaClientQueue:v9];
  [v8 addOperation:v7];
}

uint64_t __56__PLEnergyIssuesService_executeUrsaClientCallWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentUrsaCloudKitTask];
  v3 = dispatch_time(0, 300000000000);
  dispatch_semaphore_wait(v2, v3);

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)checkUrsaBootArgs
{
  v35 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] deviceRebooted])
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:*MEMORY[0x277D3F070]];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"ursa"];
      v6 = PLLogUrsa();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "checking for boot args", &buf, 2u);
      }

      v7 = [MEMORY[0x277D3F258] deviceBootArgs];
      v8 = [PLEnergyIssuesService parseBootArgs:v7];

      v9 = PLLogUrsa();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_INFO, "found args: %@", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__10;
      v33 = __Block_byref_object_dispose__10;
      v34 = 0;
      v10 = [v5 objectForKeyedSubscript:@"bootargs"];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __42__PLEnergyIssuesService_checkUrsaBootArgs__block_invoke;
      v23 = &unk_27825DE90;
      v11 = v8;
      v24 = v11;
      p_buf = &buf;
      [v10 enumerateKeysAndObjectsUsingBlock:&v20];

      if (*(*(&buf + 1) + 40))
      {
        v12 = PLLogUrsa();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(*(&buf + 1) + 40);
          *v28 = 138412290;
          v29 = v13;
          _os_log_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEFAULT, "notifying boot arg %@", v28, 0xCu);
        }

        v14 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaSummary", v20, v21, v22, v23];
        v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
        [v15 setObject:@"bootarg" forKeyedSubscript:@"requestId"];
        [v15 setObject:&unk_282C118F8 forKeyedSubscript:@"countNotification"];
        [(PLOperator *)self logEntry:v15];
        v16 = [(PLOperator *)self storage];
        [v16 blockingFlushCachesWithReason:@"ursa"];

        v17 = *(*(&buf + 1) + 40);
        v26 = @"bootarg";
        v27 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [(PLEnergyIssuesService *)self postUrsaNotification:v18];
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v5 = PLLogUrsa();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "failed to read configuration", &buf, 2u);
      }
    }
  }

  else
  {
    v4 = PLLogUrsa();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "skipping boot arg check", &buf, 2u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __42__PLEnergyIssuesService_checkUrsaBootArgs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"values"];

    if (v9)
    {
      v10 = MEMORY[0x277CBEB98];
      v11 = [v7 objectForKeyedSubscript:@"values"];
      v12 = [v10 setWithArray:v11];

      v13 = [*(a1 + 32) objectForKeyedSubscript:v6];
      if ([v12 containsObject:v13])
      {
        v14 = PLLogUrsa();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = v6;
          _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_INFO, "found boot arg:%@", &v16, 0xCu);
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)registerPowerExceptionCallbacks
{
  if (_os_feature_enabled_impl())
  {
    v3 = objc_alloc(MEMORY[0x277D3F1A8]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__PLEnergyIssuesService_registerPowerExceptionCallbacks__block_invoke;
    v6[3] = &unk_2782597E8;
    v6[4] = self;
    v4 = [v3 initWithOperator:self forEntryKey:@"XPCMetrics_CPUViolations_1_2" withBlock:v6];
    [(PLEnergyIssuesService *)self setPowerExceptionListener:v4];
  }

  else
  {
    v5 = PLLogUrsa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "skipping registration for power exceptions callbacks", buf, 2u);
    }
  }
}

void __56__PLEnergyIssuesService_registerPowerExceptionCallbacks__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"FromPowerExceptions"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"ScenarioIdentifier"];
      if ([v7 isEqualToString:@"ScheduledIntensive"])
      {
        v8 = PLLogUrsa();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "skipping PE due to schedule", v9, 2u);
        }
      }

      else
      {
        [*(a1 + 32) handlePowerException:v4];
      }
    }

    else
    {
      v7 = PLLogUrsa();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "skipping PE due to not-PE", v10, 2u);
      }
    }
  }

  else
  {
    v7 = PLLogUrsa();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "invalid PE entry", buf, 2u);
    }
  }
}

- (void)handlePowerException:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogUrsa();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = v4;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "handling PE %@", buf, 0xCu);
  }

  if (!v4)
  {
    v9 = PLLogUrsa();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "nil entry recieved in listener", buf, 2u);
    }

    goto LABEL_56;
  }

  v6 = [v4 objectForKeyedSubscript:@"IssueType"];
  if ([v6 intValue])
  {
    v7 = [v4 objectForKeyedSubscript:@"IssueType"];
    v8 = [v7 intValue] == 1;

    if (!v8)
    {
      v9 = PLLogUrsa();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "skipping non-CPU PE";
LABEL_15:
        v13 = v9;
        v14 = OS_LOG_TYPE_INFO;
        v15 = 2;
LABEL_20:
        _os_log_impl(&dword_21A4C6000, v13, v14, v10, buf, v15);
        goto LABEL_56;
      }

      goto LABEL_56;
    }
  }

  else
  {
  }

  v11 = [v4 objectForKeyedSubscript:@"MitigationType"];
  v12 = [v11 intValue];

  if (!v12)
  {
    v16 = [v4 objectForKeyedSubscript:@"MitigationReason"];
    v17 = [v16 intValue];

    if (v17 <= 0x1A && ((1 << v17) & 0x4760842) != 0)
    {
      v9 = PLLogUrsa();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v53) = v17;
        v10 = "skipping exempt PE due to %d";
        v13 = v9;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 8;
        goto LABEL_20;
      }

      goto LABEL_56;
    }

LABEL_21:
    v18 = PLLogUrsa();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v4;
      _os_log_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_INFO, "handling PE entry:%@", buf, 0xCu);
    }

    v9 = [v4 objectForKeyedSubscript:@"CoalitionName"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 length])
    {
      v19 = PLLogUrsa();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEFAULT, "falling back to process name", buf, 2u);
      }

      v20 = [v4 objectForKeyedSubscript:@"ProcessName"];

      v9 = v20;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
    {
      if ([v9 hasPrefix:@"xpc."])
      {
        v21 = [v9 substringFromIndex:4];

        v9 = v21;
      }

      v22 = [v4 objectForKeyedSubscript:@"EstimatedEnergy"];
      v23 = [v22 unsignedIntValue];

      v46 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UrsaSummary"];
      v24 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v46];
      [v24 setObject:v9 forKeyedSubscript:@"peProcess"];
      [v24 setObject:&unk_282C118E0 forKeyedSubscript:@"countNotification"];
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NSObject entryID](v4, "entryID")}];
      [v24 setObject:v25 forKeyedSubscript:@"peFK_ID"];

      v26 = [(PLEnergyIssuesService *)self safeguardsManagingClient];
      v51 = 0;
      v27 = [v26 getMitigationPolicy:&v51];
      v28 = v51;
      v29 = [v27 BOOLValue];

      if (v28)
      {
        v30 = PLLogUrsa();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = v28;
          _os_log_error_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_ERROR, "failed to read mitigation policy: %@", buf, 0xCu);
        }
      }

      v31 = PLLogUrsa();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v53) = v29;
        _os_log_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEFAULT, "mitigations are %d", buf, 8u);
      }

      v32 = [v4 objectForKeyedSubscript:@"FatalCount"];
      v33 = [v4 objectForKeyedSubscript:@"NonFatalCount"];
      if ([PLEnergyIssuesService shouldPopUpForPowerExceptionWithFatalCount:v32 withNonFatalCount:v33 withMitigationsEnabled:v29])
      {
        v34 = [v4 objectForKeyedSubscript:@"ThresholdCPUUsage"];
        v35 = [v34 intValue];

        v36 = PLLogUrsa();
        v37 = v36;
        if (v35)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v9;
            _os_log_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEFAULT, "notify exception (%@)", buf, 0xCu);
          }

          [MEMORY[0x277D3F058] defaultBatteryEnergyCapacity];
          v39 = v38;
          v40 = v23 / 0x3E8;
          if (v38 >= v40)
          {
            v43 = [v4 objectForKeyedSubscript:@"TimeWindowSize"];
            v44 = [v43 intValue];

            v41 = ((360000 * v40) / v39 / v44);
          }

          else
          {
            v41 = 0;
          }

          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __46__PLEnergyIssuesService_handlePowerException___block_invoke;
          v47[3] = &unk_27825DEB8;
          v47[4] = self;
          v48 = v9;
          v50 = v41;
          v49 = v4;
          [(PLEnergyIssuesService *)self executeUrsaClientCallWithBlock:v47];
          [v24 setObject:&unk_282C118F8 forKeyedSubscript:@"countNotification"];
        }

        else
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_ERROR, "skipping notify due to not threshold-based", buf, 2u);
          }
        }
      }

      else
      {
        v42 = PLLogUrsa();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_INFO, "skipping notify", buf, 2u);
        }

        [v24 setObject:@"pePolicy" forKeyedSubscript:@"peReason"];
      }

      [(PLOperator *)self logEntry:v24];
    }

    else
    {
      v24 = PLLogUrsa();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_ERROR, "invalid proc name for exception", buf, 2u);
      }
    }

    goto LABEL_56;
  }

  if (v12 != -1)
  {
    goto LABEL_21;
  }

  v9 = PLLogUrsa();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v10 = "skipping PE";
    goto LABEL_15;
  }

LABEL_56:

  v45 = *MEMORY[0x277D85DE8];
}

void __46__PLEnergyIssuesService_handlePowerException___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ursaClient];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PLEnergyIssuesService_handlePowerException___block_invoke_2;
  v5[3] = &unk_27825DE18;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  [v2 shouldAdmitFor:v4 impact:v3 flag:0 completionHandler:v5];
}

void __46__PLEnergyIssuesService_handlePowerException___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) insertSystemTime:a4 fromPLEntry:*(a1 + 40)];
  v9 = [v8 objectForKeyedSubscript:@"process"];

  if (!v9)
  {
    [v8 setObject:*(a1 + 48) forKeyedSubscript:@"process"];
  }

  v10 = [v8 objectForKeyedSubscript:@"action"];

  if (!v10)
  {
    [v8 setObject:@"ttr" forKeyedSubscript:@"action"];
  }

  [*(a1 + 32) handleUrsaCallback:v11 withRequestUUID:v7 withPayload:v8];
}

- (id)insertSystemTime:(id)a3 fromPLEntry:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v5 || (isKindOfClass & 1) != 0)
  {
    v9 = PLLogUrsa();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "invalid payload for timestamp", &v25, 2u);
    }

    goto LABEL_16;
  }

  v8 = [v5 mutableCopy];
  if (!v8)
  {
    v15 = PLLogUrsa();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "failed to copy payload dictionary", &v25, 2u);
    }

    v9 = 0;
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v9 = v8;
  if (v6)
  {
    v10 = [v6 objectForKeyedSubscript:@"timestampEnd"];

    if (v10)
    {
      v11 = [v6 objectForKeyedSubscript:@"timestampEnd"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = PLLogUrsa();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v25 = 138412290;
            v26 = v11;
            _os_log_error_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_ERROR, "violation end time is neither NSNumber nor NSDate: %@", &v25, 0xCu);
          }

          v24 = v9;
          goto LABEL_31;
        }

        v18 = MEMORY[0x277CBEAA8];
        [v11 doubleValue];
        v12 = [v18 dateWithTimeIntervalSince1970:?];
      }

      v19 = v12;
      v20 = [v12 convertFromMonotonicToSystem];
      if (v20)
      {
        [v9 setObject:v20 forKeyedSubscript:@"timestamp"];
      }

      else
      {
        v21 = PLLogUrsa();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v25) = 0;
          _os_log_error_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_ERROR, "failed to convert exception monotonic time to system time", &v25, 2u);
        }
      }

      v22 = v9;

LABEL_31:
      v14 = v9;
      goto LABEL_17;
    }
  }

  v13 = PLLogUrsa();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "invalid violation monotonic time for exception", &v25, 2u);
  }

  v9 = v9;
  v14 = v9;
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)isValidUrsaEntry:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"driMessage"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v5;
        if (![v5 length]|| [v5 rangeOfString:@":"]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = PLLogUrsa();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "driMessage empty or missing ':'", buf, 2u);
          }

          v7 = 0;
          goto LABEL_40;
        }

        v6 = [v4 objectForKeyedSubscript:@"timestampEnd"];
        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v11 = [v4 objectForKeyedSubscript:@"hitIn"];
            if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              if ([v11 length])
              {
                v12 = [v4 objectForKeyedSubscript:@"radar"];
                if (v12)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v13 = PLLogUrsa();
                    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "radar present but not NSNumber", buf, 2u);
                    }

                    v7 = 0;
                    goto LABEL_62;
                  }
                }

                v13 = [v4 objectForKeyedSubscript:@"impact"];
                if (v13)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v14 = PLLogUrsa();
                    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "impact present but not NSNumber", buf, 2u);
                    }

                    v7 = 0;
                    goto LABEL_61;
                  }
                }

                v14 = [v4 objectForKeyedSubscript:@"fixedIn"];
                if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v15 = PLLogUrsa();
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "fixedInBuild present but not NSString", buf, 2u);
                  }
                }

                else
                {
                  v15 = [v5 componentsSeparatedByString:@":"];
                  if ([v15 count]== 2)
                  {
                    v16 = [v15 objectAtIndexedSubscript:0];
                    if ([v16 length])
                    {
                      v22 = v16;
                      v7 = 1;
                      v17 = [v15 objectAtIndexedSubscript:1];
                      v21 = [v17 length];

                      if (v21)
                      {
LABEL_60:

LABEL_61:
LABEL_62:

                        goto LABEL_36;
                      }
                    }

                    else
                    {
                    }
                  }

                  v20 = PLLogUrsa();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v24 = v5;
                    _os_log_error_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_ERROR, "driMessage format invalid, expected 'action:process' got '%@'", buf, 0xCu);
                  }
                }

                v7 = 0;
                goto LABEL_60;
              }

              v12 = PLLogUrsa();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v19 = "hitInBuild is empty string";
LABEL_50:
                _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, v19, buf, 2u);
              }
            }

            else
            {
              v12 = PLLogUrsa();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v19 = "hitInBuild missing or not a string";
                goto LABEL_50;
              }
            }

            v7 = 0;
LABEL_36:

LABEL_39:
LABEL_40:

            goto LABEL_15;
          }

          v11 = PLLogUrsa();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
LABEL_38:
            v7 = 0;
            goto LABEL_39;
          }

          *buf = 0;
          v18 = "timestampEnd not NSDate or NSNumber";
        }

        else
        {
          v11 = PLLogUrsa();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          *buf = 0;
          v18 = "timestampEnd missing";
        }

        _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, v18, buf, 2u);
        goto LABEL_38;
      }
    }

    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "driMessage missing or not a string", buf, 2u);
    }
  }

  else
  {
    v5 = PLLogUrsa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Entry is nil", buf, 2u);
    }
  }

  v7 = 0;
LABEL_15:

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)shouldUpdateTableFrom:(id)a3 newPayload:(id)a4
{
  LOBYTE(v4) = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = [(PLEnergyIssuesService *)self extractActionfromEntry:a3];
    v9 = [v7 objectForKeyedSubscript:@"action"];

    if (v9 && ([v8 isEqualToString:@"softwareUpdate"] & 1) == 0)
    {
      v4 = [v8 isEqualToString:v9] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (id)extractActionfromEntry:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"driMessage"];
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)extractProcessNameFromEntry:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"driMessage"];
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)parseBootArgs:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__PLEnergyIssuesService_parseBootArgs___block_invoke;
  v11[3] = &unk_278259C68;
  v8 = v7;
  v12 = v8;
  [v6 enumerateObjectsUsingBlock:v11];
  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __39__PLEnergyIssuesService_parseBootArgs___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    if ([v3 rangeOfString:@"="] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) setObject:@"?" forKeyedSubscript:v3];
    }

    else
    {
      v4 = [v3 componentsSeparatedByString:@"="];
      if ([v4 count] == 2)
      {
        v5 = [v4 firstObject];
        v6 = [v4 lastObject];
        v7 = v6;
        if (v5 && v6)
        {
          [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
        }

        else
        {
          v8 = PLLogUrsa();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v10 = 138412290;
            v11 = v3;
            _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "failed to parse %@", &v10, 0xCu);
          }
        }
      }

      else
      {
        v5 = PLLogUrsa();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = v3;
          _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "failed to parse %@", &v10, 0xCu);
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)createIssueEntriesFrom:(id)a3 forKey:(id)a4 now:(id)a5 midnight:(id)a6
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v61 = a4;
  v62 = a5;
  v59 = a6;
  if (v9)
  {
    v60 = [MEMORY[0x277CBEB18] array];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v58 = v9;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (!v11)
    {
      goto LABEL_51;
    }

    v12 = v11;
    v13 = @"radar";
    v14 = @"impact";
    v64 = *v75;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v75 != v64)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v74 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:{v13, v58}];
        v18 = [v16 objectForKeyedSubscript:v14];
        v71 = [v16 objectForKeyedSubscript:@"timestampStart"];
        v70 = [v16 objectForKeyedSubscript:@"timestampEnd"];
        v69 = [v16 objectForKeyedSubscript:@"hitIn"];
        v68 = [v16 objectForKeyedSubscript:@"fixedIn"];
        v73 = [v16 objectForKeyedSubscript:@"isCritical"];
        v67 = [v16 objectForKeyedSubscript:@"timestampInvalid"];
        v72 = [v16 objectForKeyedSubscript:@"driMessage"];
        v19 = [v16 objectForKeyedSubscript:@"notificationMessage"];
        v65 = v18;
        v66 = v19;
        if (!v17 || !v18 || !v71 || !v70 || !v69 || !v68 || !v73 || !v67 || !v72 || !v19)
        {
          v29 = PLLogUrsa();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v79 = v16;
          v37 = v29;
          v38 = "Insufficient information for issue. Given information: %@";
          goto LABEL_49;
        }

        v20 = [MEMORY[0x277CBEB68] null];
        if (v17 == v20)
        {
          goto LABEL_28;
        }

        v21 = [MEMORY[0x277CBEB68] null];
        if (v73 == v21)
        {
          goto LABEL_27;
        }

        v63 = v17;
        v22 = v14;
        v23 = v13;
        v24 = v10;
        v25 = [MEMORY[0x277CBEB68] null];
        v26 = v25;
        if (v72 == v25)
        {

          v10 = v24;
          v13 = v23;
          v14 = v22;
LABEL_27:

LABEL_28:
LABEL_29:
          v29 = PLLogUrsa();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v79 = v16;
          v37 = v29;
          v38 = "Null data found in issue: %@";
LABEL_49:
          _os_log_error_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
          goto LABEL_30;
        }

        v27 = [MEMORY[0x277CBEB68] null];

        v28 = v66 == v27;
        v10 = v24;
        v13 = v23;
        v14 = v22;
        v17 = v63;
        if (v28)
        {
          goto LABEL_29;
        }

        v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v61 withDate:v62];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v63, "unsignedIntValue")}];
        [v29 setObject:v30 forKeyedSubscript:v13];

        v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v73, "BOOLValue")}];
        [v29 setObject:v31 forKeyedSubscript:@"isCritical"];

        [v29 setObject:v72 forKeyedSubscript:@"driMessage"];
        [v29 setObject:v66 forKeyedSubscript:@"notificationMessage"];
        v32 = [MEMORY[0x277CBEB68] null];

        if (v67 == v32)
        {
          v34 = 0.0;
LABEL_33:
          [v29 setObject:v59 forKeyedSubscript:@"timestampInvalid"];
          v36 = 0;
          goto LABEL_34;
        }

        [v67 doubleValue];
        v34 = v33;
        if (v33 == 0.0)
        {
          goto LABEL_33;
        }

        v35 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        [v29 setObject:v35 forKeyedSubscript:@"timestampInvalid"];

        v36 = 1;
LABEL_34:
        v39 = [MEMORY[0x277CBEB68] null];

        if (v65 != v39)
        {
          v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v65, "unsignedIntValue")}];
          [v29 setObject:v40 forKeyedSubscript:v22];
        }

        v41 = [MEMORY[0x277CBEB68] null];

        if (v71 != v41)
        {
          v42 = MEMORY[0x277CCABB0];
          [v71 doubleValue];
          v43 = [v42 numberWithDouble:?];
          [v29 setObject:v43 forKeyedSubscript:@"timestampStart"];
        }

        v44 = [MEMORY[0x277CBEB68] null];

        if (v70 != v44)
        {
          v45 = MEMORY[0x277CCABB0];
          [v70 doubleValue];
          v46 = [v45 numberWithDouble:?];
          [v29 setObject:v46 forKeyedSubscript:@"timestampEnd"];
        }

        v47 = [MEMORY[0x277CBEB68] null];

        if (v69 != v47)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithString:?];
          [v29 setObject:v48 forKeyedSubscript:@"hitIn"];
        }

        v49 = [MEMORY[0x277CBEB68] null];

        if (v68 != v49)
        {
          v50 = [MEMORY[0x277CCACA8] stringWithString:?];
          [v29 setObject:v50 forKeyedSubscript:@"fixedIn"];
        }

        v51 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v34];
        v52 = v51;
        if (!v36 || ([v51 laterDate:v62], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "isEqualToDate:", v62), v53, (v54 & 1) == 0))
        {
          [v60 addObject:v29];
        }

        v17 = v63;
LABEL_30:

        ++v15;
      }

      while (v12 != v15);
      v55 = [v10 countByEnumeratingWithState:&v74 objects:v80 count:16];
      v12 = v55;
      if (!v55)
      {
LABEL_51:

        v9 = v58;
        goto LABEL_53;
      }
    }
  }

  v60 = 0;
LABEL_53:

  v56 = *MEMORY[0x277D85DE8];

  return v60;
}

+ (BOOL)shouldPopUpForPowerExceptionWithFatalCount:(id)a3 withNonFatalCount:(id)a4 withMitigationsEnabled:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = !v5 || [a3 intValue] >= 1 && objc_msgSend(v7, "intValue") > 0;

  return v8;
}

+ (BOOL)shouldPopUpForPowerExceptionForProcess:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (qword_2811F4C60 != -1)
    {
      dispatch_once(&qword_2811F4C60, &__block_literal_global_496);
    }

    v4 = [qword_2811F4C58 containsObject:v3];
  }

  else
  {
    v5 = PLLogUrsa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "invalid proc name", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t __64__PLEnergyIssuesService_shouldPopUpForPowerExceptionForProcess___block_invoke()
{
  qword_2811F4C58 = [MEMORY[0x277CBEB98] setWithArray:&unk_282C14B98];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)shouldPopUpForPowerException
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [MEMORY[0x277D3F180] doubleForKey:@"UrsaNotifyAfter" ifNotSet:0.0];
  if (v3 == 0.0 || (v4 = v3, [v2 timeIntervalSince1970], v5 >= v4))
  {
    v6 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:v2];
    [v6 timeIntervalSince1970];
    v8 = v7;

    v9 = MEMORY[0x277D3F180];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v11 = 1;
    [v9 setObject:v10 forKey:@"UrsaNotifyAfter" saveToDisk:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isTestRackDevice:(id)a3 withExpGroup:(id)a4 internalKeyDetected:(BOOL)a5
{
  v5 = a5;
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([a4 isEqualToString:@"carry"])
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      v9 = "carry expGroup detected";
LABEL_7:
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, v9, v14, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      v9 = "internal key detected";
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v13 = [v7 length];
  v10 = v13 != 0;
  v8 = PLLogUrsa();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v13 != 0;
    _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, "adg set: %d", v14, 8u);
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)initializeSafeguardsSystem
{
  if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3F068]);
    safeguardsManagingClient = self->_safeguardsManagingClient;
    self->_safeguardsManagingClient = v3;

    if (!self->_safeguardsManagingClient)
    {
      v5 = PLLogComputeSafeguards();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "initializeSafeguardsSystem: Failed to alloc/init _safeguardsManagingClient", v6, 2u);
      }
    }
  }
}

@end