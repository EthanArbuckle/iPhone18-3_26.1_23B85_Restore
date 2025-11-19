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
- (id)getPostWakeEntry:(unint64_t)a3;
- (id)getSleepStatisticsApps;
- (id)getThisWakeEntry:(id)a3 withCurrentWakeTime:(unint64_t)a4 withIsDarkwake:(BOOL)a5 withDidSleep:(BOOL)a6;
- (id)sleepTriggers;
- (id)wakeReasonFromIORegistry;
- (id)wakeReasons;
- (id)wakeReasonsAsNSString;
- (id)wakeType;
- (unint64_t)getCurrentWakeTime;
- (unint64_t)getSleepSubclassKey;
- (unsigned)getIOPMRootDomain;
- (void)initOperatorDependancies;
- (void)logEventNonePowerNapConfig;
- (void)logEventPointCurrentScheduledWake;
- (void)logEventPointKernelState;
- (void)logEventPointWakeGesture:(id)a3;
- (void)logSleepEntries:(id)a3;
- (void)logWakeEntries:(id)a3 withCurrentTime:(unint64_t)a4;
- (void)systemPoweredOn;
@end

@implementation PLSleepWakeAgent

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

- (id)wakeReasonsAsNSString
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 256;
  memset(v11, 0, sizeof(v11));
  if (sysctlbyname("kern.wakereason", v11, &v8, 0, 0) < 0)
  {
    v2 = PLLogSleepWake();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = *__error();
      *buf = 67109120;
      v10 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Could not get wake reason (errno: %d)", buf, 8u);
    }

    v4 = &stru_282B650A0;
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v4 = [v2 stringByTrimmingCharactersInSet:v3];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)systemPoweredOn
{
  v3 = objc_autoreleasePoolPush();
  v4 = mach_absolute_time();
  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLSleepWakeAgent *)self logSleepEntries:v5];
  [(PLSleepWakeAgent *)self logWakeEntries:v5 withCurrentTime:v4];
  if (([MEMORY[0x277D3F1B8] hasAOT] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F1B8], "hasLPW"))
  {
    [(PLSleepWakeAgent *)self logEventPointKernelState];
  }

  [(PLSleepWakeAgent *)self logEventPointCurrentScheduledWake];

  objc_autoreleasePoolPop(v3);
}

- (id)getSleepStatisticsApps
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  CFProperty = IORegistryEntryCreateCFProperty(v4, @"AppStatistics", *MEMORY[0x277CBECE8], 0);
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

- (id)wakeReasons
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 256;
  memset(v10, 0, sizeof(v10));
  if (sysctlbyname("kern.wakereason", v10, &v7, 0, 0) < 0)
  {
    v2 = PLLogSleepWake();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = *__error();
      *buf = 67109120;
      v9 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Could not get wake reason (errno: %d)", buf, 8u);
    }

    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    v3 = [v2 tokenizedByString:@" "];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)logEventPointCurrentScheduledWake
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(PLOperator *)self workQueue];
  v3 = IOPMCopyCurrentScheduledWake();

  if (v3)
  {
    v4 = PLLogSleepWake();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v7 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "IOPMCopyCurrentScheduledWake Error: %x", buf, 8u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __53__PLSleepWakeAgent_logEventPointCurrentScheduledWake__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = PLLogSleepWake();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      v22 = 138412290;
      v23 = a2;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "IOPMCopyCurrentScheduledWake payload=%@", &v22, 0xCu);
    }

    v6 = [a2 objectForKeyedSubscript:@"returnCode"];
    v7 = [v6 integerValue];

    if (v7)
    {
      v4 = PLLogSleepWake();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v8 = [a2 objectForKeyedSubscript:@"returnCode"];
        v22 = 138412290;
        v23 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Current wake is not a RTC wake. Return code: %@", &v22, 0xCu);
      }
    }

    else
    {
      v4 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ScheduledWake"];
      v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
      v10 = [a2 objectForKeyedSubscript:@"wakeData"];
      v11 = v10;
      if (v10)
      {
        v12 = MEMORY[0x277CBEAA8];
        v13 = [v10 objectForKeyedSubscript:@"time"];
        [v13 doubleValue];
        v14 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
        [v9 setObject:v14 forKeyedSubscript:@"EventTime"];

        v15 = [v11 objectForKeyedSubscript:@"eventtype"];
        [v9 setObject:v15 forKeyedSubscript:@"Type"];

        v16 = [v11 objectForKeyedSubscript:@"appPID"];
        [v9 setObject:v16 forKeyedSubscript:@"PID"];

        v17 = [v11 objectForKeyedSubscript:@"SleepWakeUUID"];
        [v9 setObject:v17 forKeyedSubscript:@"SleepWakeUUID"];

        v18 = [v11 objectForKeyedSubscript:@"wakeInfo"];
        [v9 setObject:v18 forKeyedSubscript:@"WakeInfo"];

        v19 = [v11 objectForKeyedSubscript:@"scheduledby"];
        [v9 setObject:v19 forKeyedSubscript:@"ProcessName"];

        [*(a1 + 32) logEntry:v9];
      }

      else
      {
        v20 = PLLogSleepWake();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v22) = 0;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "IOPMCopyCurrentScheduledWake payload[kPLIOKitWakeData] is nil", &v22, 2u);
        }
      }
    }
  }

  else if (v5)
  {
    LOWORD(v22) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "IOPMCopyCurrentScheduledWake payload is nil", &v22, 2u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLSleepWakeAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventNoneDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"PowerNapConfig";
  v2 = [objc_opt_class() entryEventNoneDefinitionPowerNapConfig];
  v7[0] = v2;
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
    v14 = &unk_282C1BFF8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16[0] = v2;
    v15[1] = *MEMORY[0x277D3F540];
    v11[0] = @"BatteryPower";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_BoolFormat];
    v11[1] = @"ACPower";
    v12[0] = v4;
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_BoolFormat];
    v12[1] = v6;
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
  v3 = [a1 entryEventPointDefinitionWakeGesture];
  v12[0] = v3;
  v11[1] = @"CurrentMachWakeTime";
  v4 = [a1 entryEventPointDefinitionCurrentMachWakeTime];
  v12[1] = v4;
  v11[2] = @"KernelState";
  v5 = [a1 entryEventPointDefinitionKernelState];
  v12[2] = v5;
  v11[3] = @"ScheduledWake";
  v6 = [a1 entryEventPointDefinitionScheduledWake];
  v12[3] = v6;
  v11[4] = @"CoSocPower";
  v7 = [a1 entryEventPointDefinitionCoSocPower];
  v12[4] = v7;
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
  v17[0] = &unk_282C1BFF8;
  v17[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"Mode";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v15[0] = v5;
  v14[1] = @"Event";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"Display";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
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
  v14 = &unk_282C1BFF8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"CurrentMachWakeTime";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"WakeReasons";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v12[1] = v6;
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
    v16[0] = &unk_282C1BFF8;
    v16[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v18[0] = v3;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"State";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v13[1] = @"Reason";
    v14[0] = v5;
    v11 = *MEMORY[0x277D3F5A8];
    v12 = &unk_282C10BA8;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v17[2] = *MEMORY[0x277D3F4B0];
    v18[1] = v7;
    v18[2] = &unk_282C14100;
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
  v23[0] = &unk_282C1C008;
  v23[1] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"EventTime";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_DateFormat];
  v21[0] = v17;
  v20[1] = @"Type";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v21[1] = v15;
  v20[2] = @"PID";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v21[2] = v4;
  v20[3] = @"SleepWakeUUID";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v21[3] = v6;
  v20[4] = @"WakeInfo";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v21[4] = v8;
  v20[5] = @"ProcessName";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat_withProcessName];
  v21[5] = v10;
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
  v3 = [a1 entryEventForwardDefinitionPowerState];
  v8[1] = @"UserIdle";
  v9[0] = v3;
  v4 = [a1 entryEventForwardDefinitionUserIdle];
  v9[1] = v4;
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
  v39[0] = &unk_282C1C018;
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
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v37[0] = v27;
  v36[1] = @"Event";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v37[1] = v25;
  v36[2] = @"Reason";
  v34 = *MEMORY[0x277D3F5A8];
  v35 = &unk_282C10BA8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v37[2] = v24;
  v36[3] = @"UUID";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_StringFormat];
  v37[3] = v22;
  v36[4] = @"CurrentMachWakeTime";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v37[4] = v20;
  v36[5] = @"KernelSleepDate";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_DateFormat];
  v37[5] = v18;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:6];
  v41[1] = v5;
  v41[2] = &unk_282C14118;
  v6 = *MEMORY[0x277D3F528];
  v40[2] = *MEMORY[0x277D3F4B0];
  v40[3] = v6;
  v41[3] = &unk_282C14130;
  v40[4] = *MEMORY[0x277D3F500];
  v32[0] = @"key";
  v30[0] = @"PID";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v30[1] = @"AppName";
  v31[0] = v8;
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat_withAppName];
  v31[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v32[1] = @"value";
  v33[0] = v11;
  v12 = [MEMORY[0x277D3F198] sharedInstance];
  v13 = [v12 commonTypeDict_StringFormat];
  v33[1] = v13;
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
        v9 = [(PLOperator *)v3 workQueue];
        IONotificationPortSetDispatchQueue(systemPowerPortRef, v9);
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
  v3 = [(PLSleepWakeAgent *)self getLastSleepEntry];
  lastSleepEntry = self->_lastSleepEntry;
  self->_lastSleepEntry = v3;

  v5 = [(PLSleepWakeAgent *)self getLastWakeEntry];
  lastWakeEntry = self->_lastWakeEntry;
  self->_lastWakeEntry = v5;

  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v7 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"Processor"];
    v8 = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v8];
    v10 = [v7 objectForKeyedSubscript:v9];
    [v10 doubleValue];
    [(PLSleepWakeAgent *)self setApSOCBasePower:?];

    [(PLSleepWakeAgent *)self apSOCBasePower];
    if (v11 <= 0.0)
    {
      [(PLSleepWakeAgent *)self setApSOCBasePower:30.0];
    }
  }

  v12 = [(PLOperator *)self storage];
  v13 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"PowerState"];
  v14 = [v12 lastEntryForKey:v13];

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
    v20[3] = &unk_27825A1D8;
    v20[4] = self;
    v16 = [v15 initWithOperator:self withRegistration:&unk_282C17978 withBlock:v20];
    [(PLSleepWakeAgent *)self setWakeGestureXPCListener:v16];
    if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001002)
    {
      v17 = [MEMORY[0x277CBEAA8] monotonicDate];
      v18 = [MEMORY[0x277D3F0C0] sharedInstance];
      [(PLSleepWakeAgent *)self apSOCBasePower];
      [v18 createPowerEventForwardWithRootNodeID:52 withPower:v17 withStartDate:?];

      v19 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v19 createQualificationEventForwardWithQualificationID:8 withChildNodeNames:&unk_282C14148 withStartDate:v17];
    }
  }

  [(PLSleepWakeAgent *)self registerForUserIdleNotification];
  [(PLSleepWakeAgent *)self logEventForwardUserIdle:IOPMUserIsActive() ^ 1];
}

void __44__PLSleepWakeAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSleepWake();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Wake-Gesture-Event Lift to Wake! %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointWakeGesture:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointWakeGesture:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v10 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:v4 andName:@"WakeGesture"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [v5 objectForKeyedSubscript:@"mode"];
  [v6 setObject:v7 forKeyedSubscript:@"Mode"];

  v8 = [v5 objectForKeyedSubscript:@"event"];
  [v6 setObject:v8 forKeyedSubscript:@"Event"];

  v9 = [v5 objectForKeyedSubscript:@"display"];

  [v6 setObject:v9 forKeyedSubscript:@"Display"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointKernelState
{
  v38[1] = *MEMORY[0x277D85DE8];
  memset(v33, 0, 512);
  v32 = 1960;
  v3 = sysctlbyname("kern.aotmetrics", v33, &v32, 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = PLLogSleepWake();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v36 = v4;
      v6 = "Unable to query kernel metrics (%d)";
      v7 = v5;
      v8 = 8;
LABEL_4:
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    }
  }

  else
  {
    if (!LODWORD(v33[0]))
    {
      v5 = PLLogSleepWake();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v6 = "No kernel sleep in after last reading";
      v7 = v5;
      v8 = 2;
      goto LABEL_4;
    }

    v30 = self;
    if (LODWORD(v33[0]) >= 0x18)
    {
      v9 = 24;
    }

    else
    {
      v9 = LODWORD(v33[0]);
    }

    v5 = [MEMORY[0x277CBEB18] array];
    v10 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"KernelState"];
    v11 = [MEMORY[0x277D3F1B8] hasLPW];
    v12 = 0;
    v13 = &v34;
    v14 = (v9 - 1);
    v15 = &v33[2] + 8;
    v31 = v11;
    do
    {
      if ((v12 != 0) | v11 & 1)
      {
        v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(*v13 & 0x3FF) / 1000.0 + (*v13 >> 10)];
        v17 = [v16 convertFromSystemToMonotonic];

        v18 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withDate:v17];
        [v18 setObject:&unk_282C10BD8 forKeyedSubscript:@"State"];
        [v5 addObject:v18];
      }

      if ((v12 < v14) | v11 & 1)
      {
        v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v13[24] & 0x3FF) / 1000.0 + (v13[24] >> 10)];
        v20 = [v19 convertFromSystemToMonotonic];

        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
        [v21 tokenizedByString:@" "];
        v22 = v14;
        v23 = v9;
        v24 = v10;
        v26 = v25 = v5;

        v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v24 withDate:v20];
        [v27 setObject:&unk_282C10BA8 forKeyedSubscript:@"State"];
        [v27 setObject:v26 forKeyedSubscript:@"Reason"];
        [v25 addObject:v27];

        v5 = v25;
        v10 = v24;
        v9 = v23;
        v14 = v22;
        v11 = v31;
      }

      ++v12;
      v15 += 64;
      ++v13;
    }

    while (v9 != v12);
    if ([v5 count])
    {
      v37 = v10;
      v38[0] = v5;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      [(PLOperator *)v30 logEntries:v28 withGroupID:v10];
    }
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)logSleepEntries:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v45 = 0;
  v46 = 0;
  v44 = 16;
  if (!sysctlbyname("kern.sleeptime", &v45, &v44, 0, 0))
  {
    v6 = [MEMORY[0x277D3F258] dateFromTimeval:{v45, v46}];
    v7 = [MEMORY[0x277D3F258] dateFromTimevalSystemTime:{v45, v46}];
    lastSleepEntry = self->_lastSleepEntry;
    v36 = v5;
    v37 = v4;
    v33 = 96;
    if (lastSleepEntry && (-[PLEntry dictionary](lastSleepEntry, "dictionary"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectForKeyedSubscript:@"KernelSleepDate"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "isEqualToDate:", v10), v10, v9, v11))
    {
      v12 = PLLogSleepWake();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "DidNotSleep", buf, 2u);
      }

      v39 = [[PLEventForwardPowerStateEntry alloc] initEntryWithState:1 withEvent:5 withReason:0 withKernelSleepDate:v7 withDate:v4];
    }

    else
    {
      v13 = PLLogSleepWake();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "DidSleep", buf, 2u);
      }

      v14 = [[PLEventForwardPowerStateEntry alloc] initEntryWithState:[(PLSleepWakeAgent *)self getSleepState] withEvent:4 withReason:0 withKernelSleepDate:v7 withDate:v6];
      v15 = self->_lastSleepEntry;
      v39 = v14;
      self->_lastSleepEntry = v14;

      if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
      {
        if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001002)
        {
          v16 = [MEMORY[0x277D3F0C0] sharedInstance];
          [v16 createPowerEventForwardWithRootNodeID:52 withPower:v6 withStartDate:0.0];
        }

        v17 = [MEMORY[0x277D3F0C0] sharedInstance];
        [v17 createQualificationEventForwardWithQualificationID:8 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:v6];
      }
    }

    v35 = self;
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
      v31 = *(&v35->super.super.super.isa + v34);
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
      _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "Ker_sleep_time.sec=%ld,kern_sleep_time.usec=%d,sleepDate=%f,kernelSleepDate=%@,lastsleep=%@,thissleep=%@", buf, 0x3Au);
    }

    [(PLOperator *)v35 logEntry:v39];
    v5 = v36;
    v4 = v37;
  }

  objc_autoreleasePoolPop(v5);

  v28 = *MEMORY[0x277D85DE8];
}

- (id)getThisWakeEntry:(id)a3 withCurrentWakeTime:(unint64_t)a4 withIsDarkwake:(BOOL)a5 withDidSleep:(BOOL)a6
{
  v6 = a6;
  if (a5)
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  if (a5)
  {
    v10 = 6;
  }

  else
  {
    v10 = 2;
  }

  v11 = a3;
  v12 = [(PLSleepWakeAgent *)self getCurrentWakeTimeKey];
  v13 = [PLEventForwardPowerStateEntry alloc];
  v14 = [(PLSleepWakeAgent *)self wakeReasons];
  if (v6)
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  if (v6)
  {
    v16 = 0;
  }

  else
  {
    v16 = 5;
  }

  v17 = [(PLEventForwardPowerStateEntry *)v13 initEntryWithState:v15 withEvent:v16 withReason:v14 withCurrentWakeTime:a4 withCurrentWakeTimeKey:v12 withDate:v11];

  return v17;
}

- (id)getPostWakeEntry:(unint64_t)a3
{
  v5 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CurrentMachWakeTime"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v6 setObject:v7 forKeyedSubscript:@"CurrentMachWakeTime"];

  v8 = [(PLSleepWakeAgent *)self wakeReasonsAsNSString];
  [v6 setObject:v8 forKeyedSubscript:@"WakeReasons"];

  return v6;
}

- (void)logWakeEntries:(id)a3 withCurrentTime:(unint64_t)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [(PLSleepWakeAgent *)self getCurrentWakeTime];
  v38 = a4;
  [MEMORY[0x277D3F258] secondsFromMachTime:a4];
  v10 = v9;
  [MEMORY[0x277D3F258] secondsFromMachTime:v8];
  v12 = [v6 dateByAddingTimeInterval:-(v10 - v11)];
  v13 = [(PLSleepWakeAgent *)self getCurrentWakeTimeKey];
  lastWakeEntry = self->_lastWakeEntry;
  if (!lastWakeEntry)
  {
    goto LABEL_6;
  }

  v15 = [(PLEntry *)lastWakeEntry dictionary];
  v16 = [v15 objectForKeyedSubscript:v13];
  [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  v17 = v12;
  v18 = v6;
  v19 = v13;
  v21 = v20 = v7;
  v39 = [v16 isEqual:v21];

  v7 = v20;
  v13 = v19;
  v6 = v18;
  v12 = v17;

  if (v39)
  {
    v22 = PLLogSleepWake();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "DidNotSleep", buf, 2u);
    }

    v23 = [(PLSleepWakeAgent *)self getThisWakeEntry:v6 withCurrentWakeTime:v8 withIsDarkwake:0 withDidSleep:0];
  }

  else
  {
LABEL_6:
    v23 = [(PLSleepWakeAgent *)self getThisWakeEntry:v12 withCurrentWakeTime:v8 withIsDarkwake:0 withDidSleep:1];
    objc_storeStrong(&self->_lastWakeEntry, v23);
    if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
    {
      if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001002)
      {
        v24 = [MEMORY[0x277D3F0C0] sharedInstance];
        [(PLSleepWakeAgent *)self apSOCBasePower];
        [v24 createPowerEventForwardWithRootNodeID:52 withPower:v12 withStartDate:?];
      }

      v25 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v25 createQualificationEventForwardWithQualificationID:8 withChildNodeNames:&unk_282C14160 withStartDate:v12];
    }

    v26 = [(PLSleepWakeAgent *)self getPostWakeEntry:v8];
    v52[0] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
    [(PLOperator *)self postEntries:v27];
  }

  v28 = PLLogSleepWake();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [v6 timeIntervalSince1970];
    v31 = v30;
    [v12 timeIntervalSince1970];
    v33 = v32;
    [MEMORY[0x277D3F258] secondsFromMachTime:v8];
    v35 = v34;
    [MEMORY[0x277D3F258] secondsFromMachTime:v38];
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
    _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "now=%f wakeDate=%f currentWakeTime=%f currentTime=%f lastWake=%@ thisWake=%@", buf, 0x3Eu);
  }

  [(PLOperator *)self logEntry:v23];
  objc_autoreleasePoolPop(v7);

  v29 = *MEMORY[0x277D85DE8];
}

- (unint64_t)getSleepSubclassKey
{
  v2 = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  result = IORegistryEntryCreateCFProperty(v2, @"IOPMSystemSleepType", *MEMORY[0x277CBECE8], 0);
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
    v6 = &stru_282B650A0;
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
  v2 = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"Wake Type", *MEMORY[0x277CBECE8], 0);
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
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *buffer = 0u;
  v25 = 0u;
  v4 = [(PLSleepWakeAgent *)self getIOPMRootDomain];
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

          if (!CFStringGetCString(Value, buffer, 128, 0x8000100u))
          {
            goto LABEL_14;
          }

          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
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
    *v23 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "Error when get kIOPMDriverWakeEventsKey", v23, 2u);
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
  v2 = [(PLSleepWakeAgent *)self getIOPMRootDomain];
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"Wake Reason", *MEMORY[0x277CBECE8], 0);
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Event" withValue:&unk_282C10BF0 withComparisonOperation:0];
  [v3 addObject:v4];
  v5 = [(PLOperator *)self storage];
  v6 = +[PLEventForwardPowerStateEntry entryKey];
  v7 = [v5 lastEntryForKey:v6 withComparisons:v3 isSingleton:0];

  return v7;
}

- (id)getLastWakeEntry
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Event" withValue:&unk_282C10BA8 withComparisonOperation:0];
  v4 = [(PLOperator *)self storage];
  v5 = +[PLEventForwardPowerStateEntry entryKey];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v4 lastEntryForKey:v5 withComparisons:v6 isSingleton:0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)logEventNonePowerNapConfig
{
  v28 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v3 = [(PLSleepWakeAgent *)self getIOPMRootDomain];
    v4 = IORegistryEntrySearchCFProperty(v3, "IOService", @"SystemPowerProfileOverrideDict", *MEMORY[0x277CBECE8], 1u);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFDictionaryGetTypeID())
      {
        v7 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PowerNapConfig"];
        v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
        Value = CFDictionaryGetValue(v5, @"Battery Power");
        if (Value)
        {
          v10 = Value;
          v11 = CFGetTypeID(Value);
          if (v11 == CFDictionaryGetTypeID())
          {
            v12 = PLLogSleepWake();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v26 = 138412290;
              v27 = v10;
              _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Battery Power = %@\n", &v26, 0xCu);
            }

            v13 = CFDictionaryGetValue(v10, @"DarkWakeBackgroundTasks");
            if (v13)
            {
              v14 = v13;
              v15 = CFGetTypeID(v13);
              if (v15 == CFBooleanGetTypeID())
              {
                v16 = [MEMORY[0x277CCABB0] numberWithBool:CFBooleanGetValue(v14) != 0];
                [v8 setObject:v16 forKeyedSubscript:@"BatteryPower"];
              }
            }
          }
        }

        v17 = CFDictionaryGetValue(v5, @"AC Power");
        if (v17)
        {
          v18 = v17;
          v19 = CFGetTypeID(v17);
          if (v19 == CFDictionaryGetTypeID())
          {
            v20 = PLLogSleepWake();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v26 = 138412290;
              v27 = v18;
              _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "AC Power = %@\n", &v26, 0xCu);
            }

            v21 = CFDictionaryGetValue(v18, @"DarkWakeBackgroundTasks");
            if (v21)
            {
              v22 = v21;
              v23 = CFGetTypeID(v21);
              if (v23 == CFBooleanGetTypeID())
              {
                v24 = [MEMORY[0x277CCABB0] numberWithBool:CFBooleanGetValue(v22) != 0];
                [v8 setObject:v24 forKeyedSubscript:@"ACPower"];
              }
            }
          }
        }

        [(PLOperator *)self logEntry:v8];
      }

      CFRelease(v5);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end