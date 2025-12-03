@interface PLSleepWakeAgent
+ (id)entryEventForwardDefinitionPowerState;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventNoneDefinitionPowerNapConfig;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionCurrentMachWakeTime;
+ (id)entryEventPointDefinitionKernelState;
+ (id)entryEventPointDefinitionScheduledWake;
+ (id)entryEventPointDefinitionWakeGesture;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLSleepWakeAgent)init;
- (id)driverWakeReasons;
- (id)getLastSleepEntry;
- (id)getLastWakeEntry;
- (id)getPostWakeEntry:(unint64_t)entry;
- (id)getSleepStatisticsApps;
- (id)getThisWakeEntry:(id)entry withCurrentWakeTime:(unint64_t)time withIsDarkwake:(BOOL)darkwake withDidSleep:(BOOL)sleep;
- (id)sleepTriggers;
- (id)wakeReasonFromIORegistry;
- (id)wakeReasons;
- (id)wakeReasonsAsNSString;
- (id)wakeType;
- (unint64_t)getCurrentWakeTime;
- (unint64_t)getSleepSubclassKey;
- (unsigned)getIOPMRootDomain;
- (void)driverWakeReasons;
- (void)initOperatorDependancies;
- (void)logEventNonePowerNapConfig;
- (void)logEventPointCurrentScheduledWake;
- (void)logEventPointKernelState;
- (void)logEventPointWakeGesture:(id)gesture;
- (void)logSleepEntries:(id)entries;
- (void)logWakeEntries:(id)entries withCurrentTime:(unint64_t)time;
- (void)systemPoweredOn;
- (void)wakeReasons;
@end

@implementation PLSleepWakeAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLSleepWakeAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventNoneDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"PowerNapConfig";
  entryEventNoneDefinitionPowerNapConfig = [objc_opt_class() entryEventNoneDefinitionPowerNapConfig];
  v7[0] = entryEventNoneDefinitionPowerNapConfig;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventNoneDefinitionPowerNapConfig
{
  v16[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v15[0] = *MEMORY[0x277D3F4E8];
    v13 = *MEMORY[0x277D3F568];
    v14 = &unk_28714B128;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16[0] = v2;
    v15[1] = *MEMORY[0x277D3F540];
    v11[0] = @"BatteryPower";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v11[1] = @"ACPower";
    v12[0] = commonTypeDict_BoolFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
    v12[1] = commonTypeDict_BoolFormat2;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v16[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitions
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"WakeGesture";
  entryEventPointDefinitionWakeGesture = [self entryEventPointDefinitionWakeGesture];
  v12[0] = entryEventPointDefinitionWakeGesture;
  v11[1] = @"CurrentMachWakeTime";
  entryEventPointDefinitionCurrentMachWakeTime = [self entryEventPointDefinitionCurrentMachWakeTime];
  v12[1] = entryEventPointDefinitionCurrentMachWakeTime;
  v11[2] = @"KernelState";
  entryEventPointDefinitionKernelState = [self entryEventPointDefinitionKernelState];
  v12[2] = entryEventPointDefinitionKernelState;
  v11[3] = @"ScheduledWake";
  entryEventPointDefinitionScheduledWake = [self entryEventPointDefinitionScheduledWake];
  v12[3] = entryEventPointDefinitionScheduledWake;
  v11[4] = @"CoSocPower";
  entryEventPointDefinitionCoSocPower = [self entryEventPointDefinitionCoSocPower];
  v12[4] = entryEventPointDefinitionCoSocPower;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitionWakeGesture
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_28714B128;
  v17[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"Mode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v15[0] = commonTypeDict_IntegerFormat;
  v14[1] = @"Event";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat2;
  v14[2] = @"Display";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionCurrentMachWakeTime
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B128;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"CurrentMachWakeTime";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"WakeReasons";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v12[1] = commonTypeDict_StringFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitionKernelState
{
  v18[3] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F1B8] hasAOT] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F1B8], "hasLPW"))
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F558];
    v15[0] = *MEMORY[0x277D3F568];
    v15[1] = v2;
    v16[0] = &unk_28714B128;
    v16[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v18[0] = v3;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"State";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v13[1] = @"Reason";
    v14[0] = commonTypeDict_IntegerFormat;
    v11 = *MEMORY[0x277D3F5A8];
    v12 = &unk_287145658;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v17[2] = *MEMORY[0x277D3F4B0];
    v18[1] = v7;
    v18[2] = &unk_28714BC90;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitionScheduledWake
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B138;
  v23[1] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"EventTime";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v21[0] = commonTypeDict_DateFormat;
  v20[1] = @"Type";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v21[1] = commonTypeDict_StringFormat;
  v20[2] = @"PID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v21[2] = commonTypeDict_IntegerFormat;
  v20[3] = @"SleepWakeUUID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v21[3] = commonTypeDict_StringFormat2;
  v20[4] = @"WakeInfo";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v21[4] = commonTypeDict_StringFormat3;
  v20[5] = @"ProcessName";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat_withProcessName];
  v21[5] = commonTypeDict_StringFormat_withProcessName;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"PowerState";
  entryEventForwardDefinitionPowerState = [self entryEventForwardDefinitionPowerState];
  v8[1] = @"UserIdle";
  v9[0] = entryEventForwardDefinitionPowerState;
  entryEventForwardDefinitionUserIdle = [self entryEventForwardDefinitionUserIdle];
  v9[1] = entryEventForwardDefinitionUserIdle;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventForwardDefinitionPowerState
{
  v41[5] = *MEMORY[0x277D85DE8];
  v40[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F570];
  v38[0] = *MEMORY[0x277D3F568];
  v38[1] = v2;
  v39[0] = &unk_28714B148;
  v39[1] = MEMORY[0x277CBEBF8];
  v3 = *MEMORY[0x277D3F558];
  v38[2] = *MEMORY[0x277D3F550];
  v38[3] = v3;
  v39[2] = MEMORY[0x277CBEC28];
  v39[3] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277D3F4A0];
  v38[4] = *MEMORY[0x277D3F4F8];
  v38[5] = v4;
  v39[4] = MEMORY[0x277CBEC38];
  v39[5] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:6];
  v41[0] = v29;
  v40[1] = *MEMORY[0x277D3F540];
  v36[0] = @"State";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v37[0] = commonTypeDict_IntegerFormat;
  v36[1] = @"Event";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v37[1] = commonTypeDict_IntegerFormat2;
  v36[2] = @"Reason";
  v34 = *MEMORY[0x277D3F5A8];
  v35 = &unk_287145658;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v37[2] = v24;
  v36[3] = @"UUID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v37[3] = commonTypeDict_StringFormat;
  v36[4] = @"CurrentMachWakeTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v37[4] = commonTypeDict_IntegerFormat3;
  v36[5] = @"KernelSleepDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v37[5] = commonTypeDict_DateFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:6];
  v41[1] = v5;
  v41[2] = &unk_28714BCA8;
  v6 = *MEMORY[0x277D3F528];
  v40[2] = *MEMORY[0x277D3F4B0];
  v40[3] = v6;
  v41[3] = &unk_28714BCC0;
  v40[4] = *MEMORY[0x277D3F500];
  v32[0] = @"key";
  v30[0] = @"PID";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v30[1] = @"AppName";
  v31[0] = commonTypeDict_IntegerFormat4;
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withAppName = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat_withAppName];
  v31[1] = commonTypeDict_StringFormat_withAppName;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v32[1] = @"value";
  v33[0] = v11;
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v33[1] = commonTypeDict_StringFormat2;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v41[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (PLSleepWakeAgent)init
{
  v14.receiver = self;
  v14.super_class = PLSleepWakeAgent;
  v2 = [(PLAgent *)&v14 init];
  v3 = v2;
  if (v2)
  {
    lastSleepEntry = v2->_lastSleepEntry;
    v2->_lastSleepEntry = 0;

    lastWakeEntry = v3->_lastWakeEntry;
    v3->_lastWakeEntry = 0;

    v3->_systemPowerPortRef = 0;
    v3->_rootDomainConnect = IORegisterForSystemPower(v3, &v3->_systemPowerPortRef, PowerChangedCallback, &v3->_pmNotifier);
    v6 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F468]];
    canSleepSemaphore = v3->_canSleepSemaphore;
    v3->_canSleepSemaphore = v6;

    if (v3->_rootDomainConnect)
    {
      systemPowerPortRef = v3->_systemPowerPortRef;
      if (systemPowerPortRef)
      {
        workQueue = [(PLOperator *)v3 workQueue];
        IONotificationPortSetDispatchQueue(systemPowerPortRef, workQueue);
      }
    }

    [(PLSleepWakeAgent *)v3 registerForCapabilitiesChange];
    if ([(PLOperator *)v3 isDebugEnabled])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, fakeSleep, @"com.apple.powerlogd.PLSleepWakeAgent.fakeSleep", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v11 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v11, v3, fakeWakeBB, @"com.apple.powerlogd.PLSleepWakeAgent.fakeWakeBB", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v12, v3, fakeWakeWiFi, @"com.apple.powerlogd.PLSleepWakeAgent.fakeWakeWiFi", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v3;
}

- (void)initOperatorDependancies
{
  getLastSleepEntry = [(PLSleepWakeAgent *)self getLastSleepEntry];
  lastSleepEntry = self->_lastSleepEntry;
  self->_lastSleepEntry = getLastSleepEntry;

  getLastWakeEntry = [(PLSleepWakeAgent *)self getLastWakeEntry];
  lastWakeEntry = self->_lastWakeEntry;
  self->_lastWakeEntry = getLastWakeEntry;

  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v7 = [PLUtilities powerModelForOperatorName:@"Processor"];
    kPLSoCClassOfDevice = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", kPLSoCClassOfDevice];
    v10 = [v7 objectForKeyedSubscript:v9];
    [v10 doubleValue];
    [(PLSleepWakeAgent *)self setApSOCBasePower:?];

    [(PLSleepWakeAgent *)self apSOCBasePower];
    if (v11 <= 0.0)
    {
      [(PLSleepWakeAgent *)self setApSOCBasePower:30.0];
    }
  }

  storage = [(PLOperator *)self storage];
  v13 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"PowerState"];
  v14 = [storage lastEntryForKey:v13];

  if (!v14)
  {
    [(PLSleepWakeAgent *)self systemPoweredOn];
  }

  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v15 = objc_alloc(MEMORY[0x277D3F270]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__PLSleepWakeAgent_initOperatorDependancies__block_invoke;
    v20[3] = &unk_279A5BCB8;
    v20[4] = self;
    v16 = [v15 initWithOperator:self withRegistration:&unk_287147D48 withBlock:v20];
    [(PLSleepWakeAgent *)self setWakeGestureXPCListener:v16];
    if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001002)
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      [(PLSleepWakeAgent *)self apSOCBasePower];
      [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:52 withPower:monotonicDate withStartDate:?];

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:8 withChildNodeNames:&unk_28714BCD8 withStartDate:monotonicDate];
    }
  }

  [(PLSleepWakeAgent *)self registerForUserIdleNotification];
  [(PLSleepWakeAgent *)self logEventForwardUserIdle:IOPMUserIsActive() ^ 1];
}

void __44__PLSleepWakeAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogSleepWake();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __44__PLSleepWakeAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  [*(a1 + 32) logEventPointWakeGesture:v6];
}

- (void)logEventPointWakeGesture:(id)gesture
{
  v4 = *MEMORY[0x277D3F5E8];
  gestureCopy = gesture;
  v10 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:v4 andName:@"WakeGesture"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [gestureCopy objectForKeyedSubscript:@"mode"];
  [v6 setObject:v7 forKeyedSubscript:@"Mode"];

  v8 = [gestureCopy objectForKeyedSubscript:@"event"];
  [v6 setObject:v8 forKeyedSubscript:@"Event"];

  v9 = [gestureCopy objectForKeyedSubscript:@"display"];

  [v6 setObject:v9 forKeyedSubscript:@"Display"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointKernelState
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "Unable to query kernel metrics (%d)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)systemPoweredOn
{
  v3 = objc_autoreleasePoolPush();
  v4 = mach_absolute_time();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLSleepWakeAgent *)self logSleepEntries:monotonicDate];
  [(PLSleepWakeAgent *)self logWakeEntries:monotonicDate withCurrentTime:v4];
  if (([MEMORY[0x277D3F1B8] hasAOT] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F1B8], "hasLPW"))
  {
    [(PLSleepWakeAgent *)self logEventPointKernelState];
  }

  [(PLSleepWakeAgent *)self logEventPointCurrentScheduledWake];

  objc_autoreleasePoolPop(v3);
}

- (void)logSleepEntries:(id)entries
{
  v62 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v5 = objc_autoreleasePoolPush();
  v45 = 0;
  v46 = 0;
  v44 = 16;
  if (!sysctlbyname("kern.sleeptime", &v45, &v44, 0, 0))
  {
    v6 = [PLUtilities dateFromTimeval:v45, v46];
    v7 = [PLUtilities dateFromTimevalSystemTime:v45, v46];
    lastSleepEntry = self->_lastSleepEntry;
    v36 = v5;
    v37 = entriesCopy;
    v33 = 96;
    if (lastSleepEntry && (-[PLEntry dictionary](lastSleepEntry, "dictionary"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectForKeyedSubscript:@"KernelSleepDate"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "isEqualToDate:", v10), v10, v9, v11))
    {
      v12 = PLLogSleepWake();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSleepWakeAgent logSleepEntries:];
      }

      v39 = [[PLEventForwardPowerStateEntry alloc] initEntryWithState:1 withEvent:5 withReason:0 withKernelSleepDate:v7 withDate:entriesCopy];
    }

    else
    {
      v13 = PLLogSleepWake();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSleepWakeAgent logSleepEntries:];
      }

      v14 = [[PLEventForwardPowerStateEntry alloc] initEntryWithState:[(PLSleepWakeAgent *)self getSleepState] withEvent:4 withReason:0 withKernelSleepDate:v7 withDate:v6];
      v15 = self->_lastSleepEntry;
      v39 = v14;
      self->_lastSleepEntry = v14;

      if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
      {
        if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001002)
        {
          mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
          [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:52 withPower:v6 withStartDate:0.0];
        }

        mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
        [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:8 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:v6];
      }
    }

    selfCopy = self;
    [(PLSleepWakeAgent *)self getSleepStatisticsApps];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v43 = 0u;
    v18 = [obj countByEnumeratingWithState:&v40 objects:v61 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          v59[0] = @"PID";
          v23 = [v22 objectForKeyedSubscript:@"PID"];
          v59[1] = @"AppName";
          v60[0] = v23;
          v24 = [v22 objectForKeyedSubscript:@"AppName"];
          v60[1] = v24;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];

          v26 = [v22 objectForKeyedSubscript:@"ResponseType"];
          [(PLEntry *)v39 setObject:v26 forKeyedSubscript:v25];
        }

        v19 = [obj countByEnumeratingWithState:&v40 objects:v61 count:16];
      }

      while (v19);
    }

    v27 = PLLogSleepWake();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v29 = v45;
      v30 = v46;
      [v6 timeIntervalSince1970];
      v31 = *(&selfCopy->super.super.super.isa + v34);
      *buf = 134219266;
      v48 = v29;
      v49 = 1024;
      v50 = v30;
      v51 = 2048;
      v52 = v32;
      v53 = 2112;
      v54 = v7;
      v55 = 2112;
      v56 = v31;
      v57 = 2112;
      v58 = v39;
      _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "Ker_sleep_time.sec=%ld,kern_sleep_time.usec=%d,sleepDate=%f,kernelSleepDate=%@,lastsleep=%@,thissleep=%@", buf, 0x3Au);
    }

    [(PLOperator *)selfCopy logEntry:v39];
    v5 = v36;
    entriesCopy = v37;
  }

  objc_autoreleasePoolPop(v5);

  v28 = *MEMORY[0x277D85DE8];
}

- (unint64_t)getCurrentWakeTime
{
  v3 = 8;
  v4 = 0;
  if (sysctlbyname("machdep.wake_abstime", &v4, &v3, 0, 0))
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

- (id)getThisWakeEntry:(id)entry withCurrentWakeTime:(unint64_t)time withIsDarkwake:(BOOL)darkwake withDidSleep:(BOOL)sleep
{
  sleepCopy = sleep;
  if (darkwake)
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  if (darkwake)
  {
    v10 = 6;
  }

  else
  {
    v10 = 2;
  }

  entryCopy = entry;
  getCurrentWakeTimeKey = [(PLSleepWakeAgent *)self getCurrentWakeTimeKey];
  v13 = [PLEventForwardPowerStateEntry alloc];
  wakeReasons = [(PLSleepWakeAgent *)self wakeReasons];
  if (sleepCopy)
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  if (sleepCopy)
  {
    v16 = 0;
  }

  else
  {
    v16 = 5;
  }

  v17 = [(PLEventForwardPowerStateEntry *)v13 initEntryWithState:v15 withEvent:v16 withReason:wakeReasons withCurrentWakeTime:time withCurrentWakeTimeKey:getCurrentWakeTimeKey withDate:entryCopy];

  return v17;
}

- (id)getPostWakeEntry:(unint64_t)entry
{
  v5 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CurrentMachWakeTime"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:entry];
  [v6 setObject:v7 forKeyedSubscript:@"CurrentMachWakeTime"];

  wakeReasonsAsNSString = [(PLSleepWakeAgent *)self wakeReasonsAsNSString];
  [v6 setObject:wakeReasonsAsNSString forKeyedSubscript:@"WakeReasons"];

  return v6;
}

- (void)logWakeEntries:(id)entries withCurrentTime:(unint64_t)time
{
  v52[1] = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v7 = objc_autoreleasePoolPush();
  getCurrentWakeTime = [(PLSleepWakeAgent *)self getCurrentWakeTime];
  timeCopy = time;
  [PLUtilities secondsFromMachTime:time];
  v10 = v9;
  [PLUtilities secondsFromMachTime:getCurrentWakeTime];
  v12 = [entriesCopy dateByAddingTimeInterval:-(v10 - v11)];
  getCurrentWakeTimeKey = [(PLSleepWakeAgent *)self getCurrentWakeTimeKey];
  lastWakeEntry = self->_lastWakeEntry;
  if (!lastWakeEntry)
  {
    goto LABEL_6;
  }

  dictionary = [(PLEntry *)lastWakeEntry dictionary];
  v16 = [dictionary objectForKeyedSubscript:getCurrentWakeTimeKey];
  [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:getCurrentWakeTime];
  v17 = v12;
  v18 = entriesCopy;
  v19 = getCurrentWakeTimeKey;
  v21 = v20 = v7;
  v39 = [v16 isEqual:v21];

  v7 = v20;
  getCurrentWakeTimeKey = v19;
  entriesCopy = v18;
  v12 = v17;

  if (v39)
  {
    v22 = PLLogSleepWake();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLSleepWakeAgent logSleepEntries:];
    }

    v23 = [(PLSleepWakeAgent *)self getThisWakeEntry:entriesCopy withCurrentWakeTime:getCurrentWakeTime withIsDarkwake:0 withDidSleep:0];
  }

  else
  {
LABEL_6:
    v23 = [(PLSleepWakeAgent *)self getThisWakeEntry:v12 withCurrentWakeTime:getCurrentWakeTime withIsDarkwake:0 withDidSleep:1];
    objc_storeStrong(&self->_lastWakeEntry, v23);
    if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
    {
      if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001002)
      {
        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        [(PLSleepWakeAgent *)self apSOCBasePower];
        [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:52 withPower:v12 withStartDate:?];
      }

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:8 withChildNodeNames:&unk_28714BCF0 withStartDate:v12];
    }

    v26 = [(PLSleepWakeAgent *)self getPostWakeEntry:getCurrentWakeTime];
    v52[0] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
    [(PLOperator *)self postEntries:v27];
  }

  v28 = PLLogSleepWake();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [entriesCopy timeIntervalSince1970];
    v31 = v30;
    [v12 timeIntervalSince1970];
    v33 = v32;
    [PLUtilities secondsFromMachTime:getCurrentWakeTime];
    v35 = v34;
    [PLUtilities secondsFromMachTime:timeCopy];
    v36 = self->_lastWakeEntry;
    *buf = 134219266;
    v41 = v31;
    v42 = 2048;
    v43 = v33;
    v44 = 2048;
    v45 = v35;
    v46 = 2048;
    v47 = v37;
    v48 = 2112;
    v49 = v36;
    v50 = 2112;
    v51 = v23;
    _os_log_debug_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEBUG, "now=%f wakeDate=%f currentWakeTime=%f currentTime=%f lastWake=%@ thisWake=%@", buf, 0x3Eu);
  }

  [(PLOperator *)self logEntry:v23];
  objc_autoreleasePoolPop(v7);

  v29 = *MEMORY[0x277D85DE8];
}

- (id)wakeReasons
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 256;
  memset(v7, 0, sizeof(v7));
  if (sysctlbyname("kern.wakereason", v7, &v6, 0, 0) < 0)
  {
    v2 = PLLogSleepWake();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [PLSleepWakeAgent wakeReasons];
    }

    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v3 = [v2 tokenizedByString:@" "];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)wakeReasonsAsNSString
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 256;
  memset(v8, 0, sizeof(v8));
  if (sysctlbyname("kern.wakereason", v8, &v7, 0, 0) < 0)
  {
    v2 = PLLogSleepWake();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [PLSleepWakeAgent wakeReasons];
    }

    v4 = &stru_287103958;
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v4 = [v2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (unsigned)getIOPMRootDomain
{
  result = getIOPMRootDomain_gRoot;
  if (!getIOPMRootDomain_gRoot)
  {
    result = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], "IOPower:/IOPowerConnection/IOPMrootDomain");
    getIOPMRootDomain_gRoot = result;
  }

  return result;
}

- (unint64_t)getSleepSubclassKey
{
  getIOPMRootDomain = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  result = IORegistryEntryCreateCFProperty(getIOPMRootDomain, @"IOPMSystemSleepType", *MEMORY[0x277CBECE8], 0);
  valuePtr = 0;
  v6 = 0;
  if (result)
  {
    v4 = result;
    ByteSize = CFNumberGetByteSize(result);
    if (ByteSize == 8)
    {
      CFNumberGetValue(v4, kCFNumberSInt64Type, &v6);
    }

    else if (ByteSize == 4)
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
        v6 = valuePtr;
      }
    }

    CFRelease(v4);
    return v6;
  }

  return result;
}

- (id)sleepTriggers
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(PLSleepWakeAgent *)self getIOPMRootDomain:0];
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"Last Sleep Reason", *MEMORY[0x277CBECE8], 0);
  if (CFProperty && (v4 = CFProperty, CString = CFStringGetCString(CFProperty, &v9, 128, 0x8000100u), CFRelease(v4), CString))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v9];
  }

  else
  {
    v6 = &stru_287103958;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)wakeType
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buffer = 0u;
  v12 = 0u;
  getIOPMRootDomain = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  CFProperty = IORegistryEntryCreateCFProperty(getIOPMRootDomain, @"Wake Type", *MEMORY[0x277CBECE8], 0);
  if (CFProperty && (v4 = CFProperty, CString = CFStringGetCString(CFProperty, buffer, 128, 0x8000100u), CFRelease(v4), CString))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    v10 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)driverWakeReasons
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(PLSleepWakeAgent *)self getIOPMRootDomain:0];
  CFProperty = IORegistryEntryCreateCFProperty(v4, @"IOPMDriverWakeEvents", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFArrayGetTypeID() && (Count = CFArrayGetCount(v6)) != 0 && (v9 = Count, v10 = Count - 1, Count >= 1))
    {
      v11 = 0;
      v12 = 0;
      do
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
          v14 = CFGetTypeID(ValueAtIndex);
          if (v14 != CFDictionaryGetTypeID())
          {
            break;
          }

          Value = CFDictionaryGetValue(ValueAtIndex, @"Reason");
          v16 = CFGetTypeID(Value);
          if (v16 != CFStringGetTypeID())
          {
            break;
          }

          if (!CFStringGetCString(Value, &v23, 128, 0x8000100u))
          {
            goto LABEL_14;
          }

          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v23];
          [v3 addObject:v17];

          v12 = 1;
          if (v10 == v11++)
          {
            CFRelease(v6);
LABEL_22:
            v20 = v3;
            goto LABEL_18;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      CFRelease(v6);
      if (v12)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_14:
      CFRelease(v6);
    }
  }

  v19 = PLLogSleepWake();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [PLSleepWakeAgent driverWakeReasons];
  }

  v20 = MEMORY[0x277CBEBF8];
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)wakeReasonFromIORegistry
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buffer = 0u;
  v12 = 0u;
  getIOPMRootDomain = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  CFProperty = IORegistryEntryCreateCFProperty(getIOPMRootDomain, @"Wake Reason", *MEMORY[0x277CBECE8], 0);
  if (CFProperty && (v4 = CFProperty, CString = CFStringGetCString(CFProperty, buffer, 128, 0x8000100u), CFRelease(v4), CString))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    v10 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getLastSleepEntry
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Event" withValue:&unk_2871456A0 withComparisonOperation:0];
  [array addObject:v4];
  storage = [(PLOperator *)self storage];
  v6 = +[PLEventForwardPowerStateEntry entryKey];
  v7 = [storage lastEntryForKey:v6 withComparisons:array isSingleton:0];

  return v7;
}

- (id)getLastWakeEntry
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Event" withValue:&unk_287145658 withComparisonOperation:0];
  storage = [(PLOperator *)self storage];
  v5 = +[PLEventForwardPowerStateEntry entryKey];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [storage lastEntryForKey:v5 withComparisons:v6 isSingleton:0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getSleepStatisticsApps
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  getIOPMRootDomain = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  CFProperty = IORegistryEntryCreateCFProperty(getIOPMRootDomain, @"AppStatistics", *MEMORY[0x277CBECE8], 0);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = CFProperty;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = @"ResponseType";
    v10 = @"ResponseTimedOut";
    v11 = *v31;
    v29 = *v31;
    do
    {
      v12 = 0;
      v28 = v8;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = [v13 objectForKeyedSubscript:{v9, v28}];
        v15 = v14;
        if (v14 && (([v14 isEqualToString:v10] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"ResponseCancel")))
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v16 setObject:v15 forKeyedSubscript:v9];
          v17 = [v13 objectForKeyedSubscript:@"Name"];
          if (v17)
          {
            [v16 setObject:v17 forKeyedSubscript:@"AppName"];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
            v18 = v10;
            v19 = v9;
            v20 = v6;
            v22 = v21 = v3;
            [v16 setObject:v22 forKeyedSubscript:@"AppName"];

            v3 = v21;
            v6 = v20;
            v9 = v19;
            v10 = v18;
            v8 = v28;
          }

          v23 = [v13 objectForKeyedSubscript:@"Pid"];
          v24 = v23;
          if (v23)
          {
            [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "unsignedIntValue")}];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }
          v25 = ;
          [v16 setObject:v25 forKeyedSubscript:@"PID"];

          [v3 addObject:v16];
          v11 = v29;
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)logEventNonePowerNapConfig
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointCurrentScheduledWake
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke(uint64_t a1, void *a2)
{
  v4 = PLLogSleepWake();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_1();
    }

    v6 = [a2 objectForKeyedSubscript:@"returnCode"];
    v7 = [v6 integerValue];

    if (v7)
    {
      v4 = PLLogSleepWake();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_2(a2);
      }
    }

    else
    {
      v4 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ScheduledWake"];
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
      v9 = [a2 objectForKeyedSubscript:@"wakeData"];
      v10 = v9;
      if (v9)
      {
        v11 = MEMORY[0x277CBEAA8];
        v12 = [v9 objectForKeyedSubscript:@"time"];
        [v12 doubleValue];
        v13 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
        [v8 setObject:v13 forKeyedSubscript:@"EventTime"];

        v14 = [v10 objectForKeyedSubscript:@"eventtype"];
        [v8 setObject:v14 forKeyedSubscript:@"Type"];

        v15 = [v10 objectForKeyedSubscript:@"appPID"];
        [v8 setObject:v15 forKeyedSubscript:@"PID"];

        v16 = [v10 objectForKeyedSubscript:@"SleepWakeUUID"];
        [v8 setObject:v16 forKeyedSubscript:@"SleepWakeUUID"];

        v17 = [v10 objectForKeyedSubscript:@"wakeInfo"];
        [v8 setObject:v17 forKeyedSubscript:@"WakeInfo"];

        v18 = [v10 objectForKeyedSubscript:@"scheduledby"];
        [v8 setObject:v18 forKeyedSubscript:@"ProcessName"];

        [*(a1 + 32) logEntry:v8];
      }

      else
      {
        v19 = PLLogSleepWake();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_3();
        }
      }
    }
  }

  else if (v5)
  {
    __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_4();
  }
}

void __44__PLSleepWakeAgent_initOperatorDependancies__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)capabilitiesChanged:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logSleepEntries:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logSleepEntries:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)wakeReasons
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)driverWakeReasons
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"returnCode"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end