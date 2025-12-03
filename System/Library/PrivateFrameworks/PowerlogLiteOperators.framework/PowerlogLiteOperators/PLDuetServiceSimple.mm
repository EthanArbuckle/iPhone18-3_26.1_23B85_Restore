@interface PLDuetServiceSimple
- (PLDuetServiceSimple)init;
- (double)capUtilizationInSeconds:(double)seconds withUpperBoundInError:(double)error withCapInError:(double)inError withCappedUpperBound:(double)bound;
- (double)numCPUSecondsForBundleID:(id)d;
- (double)numCPUSecondsForPid:(int)pid;
- (id)didReceiveStopEventWithPayload:(id)payload;
- (void)didReceiveReset;
- (void)didReceiveStartEventWithPayload:(id)payload;
- (void)initOperatorDependancies:(id)dependancies;
@end

@implementation PLDuetServiceSimple

- (PLDuetServiceSimple)init
{
  v4.receiver = self;
  v4.super_class = PLDuetServiceSimple;
  v2 = [(PLDuetServiceSimple *)&v4 init];
  [(PLDuetServiceImpl *)v2 setDuetService:0];
  return v2;
}

- (void)initOperatorDependancies:(id)dependancies
{
  v48[1] = *MEMORY[0x277D85DE8];
  dependanciesCopy = dependancies;
  if (dependanciesCopy)
  {
    [(PLDuetServiceImpl *)self setDuetService:dependanciesCopy];
    v5 = objc_alloc(MEMORY[0x277D3F270]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke;
    v46[3] = &unk_27825A1D8;
    v46[4] = self;
    v6 = [v5 initWithOperator:dependanciesCopy withRegistration:&unk_282C19CF0 withBlock:v46];
    [(PLDuetServiceImpl *)self setEventListener:v6];

    v7 = objc_alloc(MEMORY[0x277D3F278]);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_2;
    v45[3] = &unk_278259810;
    v45[4] = self;
    v8 = [v7 initWithOperator:dependanciesCopy withRegistration:&unk_282C19D18 withBlock:v45];
    [(PLDuetServiceImpl *)self setEnergyResponder:v8];

    v9 = objc_alloc(MEMORY[0x277D3F270]);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_3;
    v44[3] = &unk_27825A1D8;
    v44[4] = self;
    v10 = [v9 initWithOperator:dependanciesCopy withRegistration:&unk_282C19D40 withBlock:v44];
    [(PLDuetServiceSimple *)self setResetListener:v10];

    [(PLDuetServiceSimple *)self setIsCharging:0];
    v11 = objc_alloc(MEMORY[0x277D3F1A8]);
    v12 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_4;
    v43[3] = &unk_2782597E8;
    v43[4] = self;
    v13 = [v11 initWithOperator:dependanciesCopy forEntryKey:v12 withBlock:v43];
    [(PLDuetServiceSimple *)self setChargingListener:v13];

    duetService = [(PLDuetServiceImpl *)self duetService];
    LODWORD(v12) = [duetService isDebugEnabled];

    if (v12)
    {
      selfCopy = self;
      v15 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ComplicationEvents"];
      v16 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_282C13080 withComparisonOperation:6];
      storage = [dependanciesCopy storage];
      v48[0] = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
      v36 = v15;
      v19 = [storage entriesForKey:v15 withComparisons:v18];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v40;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v40 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v39 + 1) + 8 * i);
            storage2 = [dependanciesCopy storage];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_348;
            v38[3] = &unk_2782591D0;
            v38[4] = v25;
            [storage2 updateEntry:v25 withBlock:v38];
          }

          v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v22);
      }

      self = selfCopy;
    }

    duetService2 = [(PLDuetServiceImpl *)self duetService];
    isDebugEnabled = [duetService2 isDebugEnabled];

    if (isDebugEnabled)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, testStartEvent, @"com.apple.powerlogd.PLDuetService.testStartEvent", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v30 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v30, self, testStartEvent2, @"com.apple.powerlogd.PLDuetService.testStartEvent2", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v31 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v31, self, testStopEvent, @"com.apple.powerlogd.PLDuetService.testStopEvent", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v32 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v32, self, testStopEvent2, @"com.apple.powerlogd.PLDuetService.testStopEvent2", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v33 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v33, self, testReset, @"com.apple.powerlogd.PLDuetService.testReset", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v34 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v34, self, testCapping, @"com.apple.powerlogd.PLDuetService.testCapping", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v4 objectForKeyedSubscript:@"IsCharging"];
  [*(a1 + 32) setIsCharging:{objc_msgSend(v3, "BOOLValue")}];
}

void __48__PLDuetServiceSimple_initOperatorDependancies___block_invoke_348(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"timestampEnd"];
}

- (void)didReceiveStartEventWithPayload:(id)payload
{
  v88 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v74 = payloadCopy;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke;
    v84[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v84[4] = v5;
    if (qword_2811F69E0 != -1)
    {
      dispatch_once(&qword_2811F69E0, v84);
    }

    if (byte_2811F695B == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStartEventWithPayload:]"];
      [v7 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:813];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v87 = payloadCopy;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      payloadCopy = v74;
    }
  }

  v12 = [payloadCopy objectForKeyedSubscript:@"bundleID"];
  v13 = [payloadCopy objectForKeyedSubscript:@"info"];
  v14 = [v13 objectForKeyedSubscript:@"pid"];
  intValue = [v14 intValue];

  bundleIDToState = [(PLDuetServiceSimple *)self bundleIDToState];
  v17 = [bundleIDToState objectForKeyedSubscript:v12];

  v73 = v12;
  if (v17)
  {
    v18 = [(PLDuetServiceSimple *)self didReceiveStopEventWithPayload:payloadCopy];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_375;
      v83[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v83[4] = v19;
      if (qword_2811F69E8 != -1)
      {
        dispatch_once(&qword_2811F69E8, v83);
      }

      if (byte_2811F695C == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Second start arrived. Dropping energy on floor %@", v18];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent2 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStartEventWithPayload:]"];
        [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:822];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v87 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v12 = v73;
        payloadCopy = v74;
      }
    }
  }

  v26 = objc_opt_new();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v26 setStartDate:monotonicDate];

  if (intValue < 1)
  {
    [(PLDuetServiceSimple *)self numCPUSecondsForBundleID:v12];
  }

  else
  {
    [(PLDuetServiceSimple *)self numCPUSecondsForPid:intValue];
  }

  [v26 setCpuSeconds:?];
  v28 = [payloadCopy objectForKeyedSubscript:@"info"];
  [v26 setInfo:v28];

  duetService = [(PLDuetServiceImpl *)self duetService];
  if (duetService)
  {
    v30 = duetService;
    duetService2 = [(PLDuetServiceImpl *)self duetService];
    isDebugEnabled = [duetService2 isDebugEnabled];

    if (isDebugEnabled)
    {
      v33 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ComplicationEvents"];
      v34 = objc_alloc(MEMORY[0x277D3F190]);
      monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
      v36 = [v34 initWithEntryKey:v33 withDate:monotonicDate2];

      [v36 setObject:v12 forKeyedSubscript:@"BundleID"];
      info = [v26 info];
      v38 = [info description];
      [v36 setObject:v38 forKeyedSubscript:@"Info"];

      v39 = MEMORY[0x277CCABB0];
      [v26 cpuSeconds];
      v40 = [v39 numberWithDouble:?];
      [v36 setObject:v40 forKeyedSubscript:@"CPUSecondsStart"];

      duetService3 = [(PLDuetServiceImpl *)self duetService];

      if (duetService3)
      {
        duetService4 = [(PLDuetServiceImpl *)self duetService];
        [duetService4 logEntry:v36];
      }
    }
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  bundleIDToState2 = [(PLDuetServiceSimple *)self bundleIDToState];
  allValues = [bundleIDToState2 allValues];

  v45 = [allValues countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v80;
    v75 = v26;
    selfCopy = self;
    do
    {
      v48 = 0;
      do
      {
        if (*v80 != v47)
        {
          objc_enumerationMutation(allValues);
        }

        v49 = *(*(&v79 + 1) + 8 * v48);
        endDate = [v49 endDate];

        if (!endDate)
        {
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v51 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_388;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v51;
            if (qword_2811F69F0 != -1)
            {
              dispatch_once(&qword_2811F69F0, block);
            }

            if (byte_2811F695D == 1)
            {
              v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"state=%@", v49];
              v53 = MEMORY[0x277D3F178];
              v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              lastPathComponent3 = [v54 lastPathComponent];
              v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStartEventWithPayload:]"];
              [v53 logMessage:v52 fromFile:lastPathComponent3 fromFunction:v56 fromLineNumber:846];

              v57 = PLLogCommon();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v87 = v52;
                _os_log_debug_impl(&dword_21A4C6000, v57, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v26 = v75;
              self = selfCopy;
            }
          }

          overlappingStates = [v49 overlappingStates];
          [overlappingStates addObject:v26];

          overlappingStates2 = [v26 overlappingStates];
          [overlappingStates2 addObject:v49];
        }

        ++v48;
      }

      while (v46 != v48);
      v46 = [allValues countByEnumeratingWithState:&v79 objects:v85 count:16];
    }

    while (v46);
  }

  bundleIDToState3 = [(PLDuetServiceSimple *)self bundleIDToState];
  v61 = v73;
  [bundleIDToState3 setObject:v26 forKeyedSubscript:v73];

  v62 = v74;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v63 = objc_opt_class();
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_394;
    v77[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v77[4] = v63;
    if (qword_2811F69F8 != -1)
    {
      dispatch_once(&qword_2811F69F8, v77);
    }

    if (byte_2811F695E == 1)
    {
      v64 = MEMORY[0x277CCACA8];
      bundleIDToState4 = [(PLDuetServiceSimple *)self bundleIDToState];
      v66 = [v64 stringWithFormat:@"bundleIDToState=%@", bundleIDToState4];

      v67 = MEMORY[0x277D3F178];
      v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent4 = [v68 lastPathComponent];
      v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStartEventWithPayload:]"];
      [v67 logMessage:v66 fromFile:lastPathComponent4 fromFunction:v70 fromLineNumber:854];

      v71 = PLLogCommon();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v87 = v66;
        _os_log_debug_impl(&dword_21A4C6000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v61 = v73;
      v62 = v74;
    }
  }

  v72 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F695B = result;
  return result;
}

uint64_t __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_375(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F695C = result;
  return result;
}

uint64_t __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_388(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F695D = result;
  return result;
}

uint64_t __55__PLDuetServiceSimple_didReceiveStartEventWithPayload___block_invoke_394(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F695E = result;
  return result;
}

- (id)didReceiveStopEventWithPayload:(id)payload
{
  v221 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v214[0] = MEMORY[0x277D85DD0];
    v214[1] = 3221225472;
    v214[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke;
    v214[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v214[4] = v5;
    v6 = v214;
    if (qword_2811F6A00 != -1)
    {
      dispatch_once(&qword_2811F6A00, v6);
    }

    if (byte_2811F695F == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
      [v8 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v11 fromLineNumber:876];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v220 = payloadCopy;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = [payloadCopy objectForKeyedSubscript:@"bundleID"];
  v184 = [payloadCopy objectForKeyedSubscript:@"info"];
  bundleIDToState = [(PLDuetServiceSimple *)self bundleIDToState];
  v185 = v13;
  v15 = [bundleIDToState objectForKeyedSubscript:v13];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v213[0] = MEMORY[0x277D85DD0];
    v213[1] = 3221225472;
    v213[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_400;
    v213[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v213[4] = v16;
    v17 = v213;
    if (qword_2811F6A08 != -1)
    {
      dispatch_once(&qword_2811F6A08, v17);
    }

    if (byte_2811F6960 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"state=%@", v15];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:881];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v220 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v15)
  {
    info = [v15 info];
    v25 = [info objectForKeyedSubscript:@"pid"];
    intValue = [v25 intValue];

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v15 setEndDate:monotonicDate];

    if (intValue < 1)
    {
      [(PLDuetServiceSimple *)self numCPUSecondsForBundleID:v185];
    }

    else
    {
      [(PLDuetServiceSimple *)self numCPUSecondsForPid:intValue];
    }

    v30 = v28;
    [v15 cpuSeconds];
    v32 = v30 - v31;
    if (v32 >= 0.0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0.0;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v34 = objc_opt_class();
      v212[0] = MEMORY[0x277D85DD0];
      v212[1] = 3221225472;
      v212[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_403;
      v212[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v212[4] = v34;
      v35 = v212;
      if (qword_2811F6A10 != -1)
      {
        dispatch_once(&qword_2811F6A10, v35);
      }

      if (byte_2811F6961 == 1)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"CPU duration=%f", *&v33];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent3 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v37 logMessage:v36 fromFile:lastPathComponent3 fromFunction:v40 fromLineNumber:892];

        v41 = PLLogCommon();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v36;
          _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLDuetServiceSimple *)self capUtilizationInSeconds:v33 withUpperBoundInError:90.0 withCapInError:1.0 withCappedUpperBound:30.0];
    v43 = v42;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v44 = objc_opt_class();
      v211[0] = MEMORY[0x277D85DD0];
      v211[1] = 3221225472;
      v211[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_409;
      v211[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v211[4] = v44;
      v45 = v211;
      if (qword_2811F6A18 != -1)
      {
        dispatch_once(&qword_2811F6A18, v45);
      }

      if (byte_2811F6962 == 1)
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capped CPU duration=%f", *&v43];
        v47 = MEMORY[0x277D3F178];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent4 = [v48 lastPathComponent];
        v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v47 logMessage:v46 fromFile:lastPathComponent4 fromFunction:v50 fromLineNumber:897];

        v51 = PLLogCommon();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v46;
          _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v52 = v43 * 0.0277777778;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v53 = objc_opt_class();
      v210[0] = MEMORY[0x277D85DD0];
      v210[1] = 3221225472;
      v210[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_415;
      v210[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v210[4] = v53;
      v54 = v210;
      if (qword_2811F6A20 != -1)
      {
        dispatch_once(&qword_2811F6A20, v54);
      }

      if (byte_2811F6963 == 1)
      {
        v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"cpuSecondsEnd=%f, cpuEnergy=%f", *&v30, v43 * 0.0277777778];
        v56 = MEMORY[0x277D3F178];
        v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent5 = [v57 lastPathComponent];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v56 logMessage:v55 fromFile:lastPathComponent5 fromFunction:v59 fromLineNumber:900];

        v60 = PLLogCommon();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v55;
          _os_log_debug_impl(&dword_21A4C6000, v60, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v183 = payloadCopy;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    obj = [v15 overlappingStates];
    v188 = [obj countByEnumeratingWithState:&v206 objects:v218 count:16];
    if (v188)
    {
      v187 = *v207;
      v61 = 0.0;
      v62 = v15;
      do
      {
        v63 = 0;
        do
        {
          if (*v207 != v187)
          {
            objc_enumerationMutation(obj);
          }

          v64 = *(*(&v206 + 1) + 8 * v63);
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v65 = objc_opt_class();
            v205[0] = MEMORY[0x277D85DD0];
            v205[1] = 3221225472;
            v205[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_421;
            v205[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v205[4] = v65;
            v66 = v205;
            if (qword_2811F6A28 != -1)
            {
              dispatch_once(&qword_2811F6A28, v66);
            }

            if (byte_2811F6964 == 1)
            {
              v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"overlappingState=%@", v64];
              v68 = MEMORY[0x277D3F178];
              v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              lastPathComponent6 = [v69 lastPathComponent];
              v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
              [v68 logMessage:v67 fromFile:lastPathComponent6 fromFunction:v71 fromLineNumber:906];

              v72 = PLLogCommon();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v220 = v67;
                _os_log_debug_impl(&dword_21A4C6000, v72, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v15 = v62;
            }
          }

          startDate = [v64 startDate];
          startDate2 = [v15 startDate];
          v75 = [startDate laterDate:startDate2];

          endDate = [v64 endDate];
          if (endDate)
          {
            endDate2 = [v64 endDate];
            endDate3 = [v15 endDate];
            v79 = [endDate2 earlierDate:endDate3];

            v15 = v62;
          }

          else
          {
            endDate2 = [v15 endDate];
            v79 = endDate2;
          }

          [v79 timeIntervalSinceDate:v75];
          v81 = v80;
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v82 = objc_opt_class();
            v204[0] = MEMORY[0x277D85DD0];
            v204[1] = 3221225472;
            v204[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_427;
            v204[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v204[4] = v82;
            v83 = v204;
            if (qword_2811F6A30 != -1)
            {
              dispatch_once(&qword_2811F6A30, v83);
            }

            if (byte_2811F6965 == 1)
            {
              selfCopy = self;
              v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"overlappingState=%@", v64];
              v86 = MEMORY[0x277D3F178];
              v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              lastPathComponent7 = [v87 lastPathComponent];
              v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
              [v86 logMessage:v85 fromFile:lastPathComponent7 fromFunction:v89 fromLineNumber:911];

              v90 = PLLogCommon();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v220 = v85;
                _os_log_debug_impl(&dword_21A4C6000, v90, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              self = selfCopy;
              v15 = v62;
            }
          }

          v61 = v61 + v81;

          ++v63;
        }

        while (v188 != v63);
        v188 = [obj countByEnumeratingWithState:&v206 objects:v218 count:16];
      }

      while (v188);
    }

    else
    {
      v61 = 0.0;
    }

    [v15 duration];
    v92 = v91;
    payloadCopy = v183;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v93 = objc_opt_class();
      v203[0] = MEMORY[0x277D85DD0];
      v203[1] = 3221225472;
      v203[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_430;
      v203[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v203[4] = v93;
      v94 = v203;
      if (qword_2811F6A38 != -1)
      {
        dispatch_once(&qword_2811F6A38, v94);
      }

      if (byte_2811F6966 == 1)
      {
        v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"SOC duration=%f", *&v92];
        v96 = MEMORY[0x277D3F178];
        v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent8 = [v97 lastPathComponent];
        v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v96 logMessage:v95 fromFile:lastPathComponent8 fromFunction:v99 fromLineNumber:918];

        v100 = PLLogCommon();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v95;
          _os_log_debug_impl(&dword_21A4C6000, v100, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLDuetServiceSimple *)self capUtilizationInSeconds:v92 withUpperBoundInError:90.0 withCapInError:10.0 withCappedUpperBound:30.0];
    v102 = v101;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v103 = objc_opt_class();
      v202[0] = MEMORY[0x277D85DD0];
      v202[1] = 3221225472;
      v202[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_436;
      v202[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v202[4] = v103;
      v104 = v202;
      if (qword_2811F6A40 != -1)
      {
        dispatch_once(&qword_2811F6A40, v104);
      }

      if (byte_2811F6967 == 1)
      {
        v105 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capped SOC duration=%f", *&v102];
        v106 = MEMORY[0x277D3F178];
        v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent9 = [v107 lastPathComponent];
        v109 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v106 logMessage:v105 fromFile:lastPathComponent9 fromFunction:v109 fromLineNumber:923];

        v110 = PLLogCommon();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v105;
          _os_log_debug_impl(&dword_21A4C6000, v110, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v111 = v102 * (v102 * 0.00833333333) / (v61 + v102);
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v112 = objc_opt_class();
      v201[0] = MEMORY[0x277D85DD0];
      v201[1] = 3221225472;
      v201[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_442;
      v201[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v201[4] = v112;
      v113 = v201;
      if (qword_2811F6A48 != -1)
      {
        dispatch_once(&qword_2811F6A48, v113);
      }

      if (byte_2811F6968 == 1)
      {
        v114 = [MEMORY[0x277CCACA8] stringWithFormat:@"socEnergy=%f", *&v111];
        v115 = MEMORY[0x277D3F178];
        v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent10 = [v116 lastPathComponent];
        v118 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v115 logMessage:v114 fromFile:lastPathComponent10 fromFunction:v118 fromLineNumber:927];

        v119 = PLLogCommon();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v114;
          _os_log_debug_impl(&dword_21A4C6000, v119, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    info2 = [v15 info];
    v121 = [info2 objectForKeyedSubscript:@"pushType"];
    if ([v121 isEqualToString:@"waking"])
    {
      v122 = 0.125;
    }

    else
    {
      v122 = 0.0277777778;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v123 = objc_opt_class();
      v200[0] = MEMORY[0x277D85DD0];
      v200[1] = 3221225472;
      v200[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_454;
      v200[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v200[4] = v123;
      v124 = v200;
      if (qword_2811F6A50 != -1)
      {
        dispatch_once(&qword_2811F6A50, v124);
      }

      if (byte_2811F6969 == 1)
      {
        v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"wakingNonWakingEnergy=%f", *&v122];
        v126 = MEMORY[0x277D3F178];
        v127 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent11 = [v127 lastPathComponent];
        v129 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v126 logMessage:v125 fromFile:lastPathComponent11 fromFunction:v129 fromLineNumber:931];

        v130 = PLLogCommon();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v125;
          _os_log_debug_impl(&dword_21A4C6000, v130, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v131 = [v184 objectForKeyedSubscript:@"cellDuration"];
    v132 = [v131 integerValue] / 1000.0;
    v133 = [v184 objectForKeyedSubscript:@"wifiDuration"];
    v134 = [v133 integerValue] / 1000.0 * 0.0611111111 + v132 * 0.222222222;
    v135 = [v184 objectForKeyedSubscript:@"btDuration"];
    v136 = v134 + [v135 integerValue] / 1000.0 * 0.0277777778;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v137 = objc_opt_class();
      v199[0] = MEMORY[0x277D85DD0];
      v199[1] = 3221225472;
      v199[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_469;
      v199[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v199[4] = v137;
      v138 = v199;
      if (qword_2811F6A58 != -1)
      {
        dispatch_once(&qword_2811F6A58, v138);
      }

      if (byte_2811F696A == 1)
      {
        v139 = [MEMORY[0x277CCACA8] stringWithFormat:@"networkEnergy=%f", *&v136];
        v140 = MEMORY[0x277D3F178];
        v141 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent12 = [v141 lastPathComponent];
        v143 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v140 logMessage:v139 fromFile:lastPathComponent12 fromFunction:v143 fromLineNumber:938];

        v144 = PLLogCommon();
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v139;
          _os_log_debug_impl(&dword_21A4C6000, v144, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    bundleIDToState2 = [(PLDuetServiceSimple *)self bundleIDToState];
    [bundleIDToState2 removeObjectForKey:v185];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v146 = objc_opt_class();
      v198[0] = MEMORY[0x277D85DD0];
      v198[1] = 3221225472;
      v198[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_475;
      v198[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v198[4] = v146;
      v147 = v198;
      if (qword_2811F6A60 != -1)
      {
        dispatch_once(&qword_2811F6A60, v147);
      }

      if (byte_2811F696B == 1)
      {
        v148 = MEMORY[0x277CCACA8];
        bundleIDToState3 = [(PLDuetServiceSimple *)self bundleIDToState];
        v149 = [v148 stringWithFormat:@"bundleIDToState=%@", bundleIDToState3];

        v151 = MEMORY[0x277D3F178];
        v152 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent13 = [v152 lastPathComponent];
        v154 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v151 logMessage:v149 fromFile:lastPathComponent13 fromFunction:v154 fromLineNumber:942];

        v155 = PLLogCommon();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v149;
          _os_log_debug_impl(&dword_21A4C6000, v155, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v156 = 0.0;
    if (![(PLDuetServiceSimple *)self isCharging])
    {
      v157 = v52 + v111 + v122 + v136;
      if (v157 < 0.0)
      {
        v157 = 0.0;
      }

      if (v157 <= 1.4)
      {
        v156 = v157;
      }

      else
      {
        v156 = 1.4;
      }
    }

    duetService = [(PLDuetServiceImpl *)self duetService];
    if (duetService)
    {
      v159 = duetService;
      duetService2 = [(PLDuetServiceImpl *)self duetService];
      isDebugEnabled = [duetService2 isDebugEnabled];

      if (isDebugEnabled)
      {
        v162 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ComplicationEvents"];
        v163 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"BundleID" withValue:v185 withComparisonOperation:0];
        v164 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_282C13080 withComparisonOperation:6];
        duetService3 = [(PLDuetServiceImpl *)self duetService];
        storage = [duetService3 storage];
        v217[0] = v163;
        v217[1] = v164;
        v167 = [MEMORY[0x277CBEA60] arrayWithObjects:v217 count:2];
        v168 = [storage lastEntryForKey:v162 withComparisons:v167 isSingleton:0];

        duetService4 = [(PLDuetServiceImpl *)self duetService];
        storage2 = [duetService4 storage];
        v190[0] = MEMORY[0x277D85DD0];
        v190[1] = 3221225472;
        v190[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_476;
        v190[3] = &unk_278261DB0;
        v171 = v168;
        v191 = v171;
        v192 = v30;
        v193 = v52;
        v194 = v111;
        v195 = v122;
        v196 = v136;
        v197 = v156;
        [storage2 updateEntry:v171 withBlock:v190];

        payloadCopy = v183;
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v172 = objc_opt_class();
      v189[0] = MEMORY[0x277D85DD0];
      v189[1] = 3221225472;
      v189[2] = __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_2;
      v189[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v189[4] = v172;
      v173 = v189;
      if (qword_2811F6A68 != -1)
      {
        dispatch_once(&qword_2811F6A68, v173);
      }

      if (byte_2811F696C == 1)
      {
        v174 = [MEMORY[0x277CCACA8] stringWithFormat:@"Returning Sum: %f", *&v156];
        v175 = MEMORY[0x277D3F178];
        v176 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent14 = [v176 lastPathComponent];
        v178 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple didReceiveStopEventWithPayload:]"];
        [v175 logMessage:v174 fromFile:lastPathComponent14 fromFunction:v178 fromLineNumber:970];

        v179 = PLLogCommon();
        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v220 = v174;
          _os_log_debug_impl(&dword_21A4C6000, v179, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v215 = @"energy";
    v180 = [MEMORY[0x277CCABB0] numberWithDouble:v156];
    v216 = v180;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
  }

  else
  {
    v29 = 0;
  }

  v181 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F695F = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_400(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6960 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_403(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6961 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_409(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6962 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_415(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6963 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_421(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6964 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_427(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6965 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_430(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6966 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_436(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6967 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_442(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6968 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_454(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6969 = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_469(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F696A = result;
  return result;
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_475(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F696B = result;
  return result;
}

void __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_476(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"timestampEnd"];

  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"CPUSecondsEnd"];

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"CPUEnergy"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"SOCEnergy"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"WakingNonWakingEnergy"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"NetworkEnergy"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"EnergyReturned"];
}

uint64_t __54__PLDuetServiceSimple_didReceiveStopEventWithPayload___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F696C = result;
  return result;
}

- (double)capUtilizationInSeconds:(double)seconds withUpperBoundInError:(double)error withCapInError:(double)inError withCappedUpperBound:(double)bound
{
  if (seconds < bound)
  {
    bound = seconds;
  }

  if (seconds <= error)
  {
    inError = bound;
  }

  return fmax(inError, 0.0);
}

- (double)numCPUSecondsForPid:(int)pid
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v3 = proc_pid_rusage(pid, 0, &v6);
  result = 0.0;
  if (!v3)
  {
    [MEMORY[0x277D3F258] secondsFromMachTime:{v7, 0.0}];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)numCPUSecondsForBundleID:(id)d
{
  v3 = MEMORY[0x28223BE20](self, a2);
  v56 = *MEMORY[0x277D85DE8];
  v5 = v4;
  v48 = v5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke;
    v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v52[4] = v6;
    if (qword_2811F6A70 != -1)
    {
      dispatch_once(&qword_2811F6A70, v52);
    }

    if (byte_2811F696D == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v5];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple numCPUSecondsForBundleID:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:985];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *__b = 138412290;
        *&__b[4] = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", __b, 0xCu);
      }

      v5 = v48;
    }
  }

  duetService = [v3 duetService];

  if (duetService)
  {
    memset(__b, 255, 0x1000uLL);
    v14 = proc_listpids(1u, 0, __b, 4096);
    if (v14 >= 1)
    {
      v15 = v14;
      v16 = __b;
      do
      {
        v18 = *v16++;
        v17 = v18;
        if (v18 < 1)
        {
          goto LABEL_33;
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v19 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_502;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v19;
          if (qword_2811F6A78 != -1)
          {
            dispatch_once(&qword_2811F6A78, block);
          }

          if (byte_2811F696E == 1)
          {
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"pid=%i", v17];
            v21 = MEMORY[0x277D3F178];
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent2 = [v22 lastPathComponent];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple numCPUSecondsForBundleID:]"];
            [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:998];

            v25 = PLLogCommon();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              buffer = 138412290;
              v54 = v20;
              _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", &buffer, 0xCu);
            }
          }
        }

        duetService2 = [v3 duetService];
        storage = [duetService2 storage];
        v28 = [storage processIDEntryForPid:v17];
        v29 = [v28 objectForKeyedSubscript:@"BundleID"];

        if (!v29)
        {
          v30 = [MEMORY[0x277D3F258] bundleIDFromPid:v17];
          if (!v30)
          {
            if (proc_name(v17, &buffer, 0x40u) < 1)
            {
              v29 = 0;
              goto LABEL_24;
            }

            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:&buffer];
          }

          v29 = v30;
        }

LABEL_24:
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v31 = objc_opt_class();
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_508;
          v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v50[4] = v31;
          if (qword_2811F6A80 != -1)
          {
            dispatch_once(&qword_2811F6A80, v50);
          }

          if (byte_2811F696F == 1)
          {
            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"pidBundleID=%@", v29];
            v33 = MEMORY[0x277D3F178];
            v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent3 = [v34 lastPathComponent];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple numCPUSecondsForBundleID:]"];
            [v33 logMessage:v32 fromFile:lastPathComponent3 fromFunction:v36 fromLineNumber:1013];

            v37 = PLLogCommon();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              buffer = 138412290;
              v54 = v32;
              _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "%@", &buffer, 0xCu);
            }

            v5 = v48;
          }
        }

        if ([v29 isEqualToString:v5])
        {
          [v3 numCPUSecondsForPid:v17];
          v38 = v45;
          goto LABEL_45;
        }

LABEL_33:
        --v15;
      }

      while (v15);
    }

    v38 = 0.0;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v39 = objc_opt_class();
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_514;
      v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v49[4] = v39;
      if (qword_2811F6A88 != -1)
      {
        dispatch_once(&qword_2811F6A88, v49);
      }

      if (byte_2811F6970 == 1)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not find matching pid"];
        v40 = MEMORY[0x277D3F178];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent4 = [v41 lastPathComponent];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceSimple numCPUSecondsForBundleID:]"];
        [v40 logMessage:v29 fromFile:lastPathComponent4 fromFunction:v43 fromLineNumber:1020];

        v44 = PLLogCommon();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          buffer = 138412290;
          v54 = v29;
          _os_log_debug_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_DEBUG, "%@", &buffer, 0xCu);
        }

        v5 = v48;
LABEL_45:
      }
    }
  }

  else
  {
    v38 = 0.0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F696D = result;
  return result;
}

uint64_t __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_502(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F696E = result;
  return result;
}

uint64_t __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_508(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F696F = result;
  return result;
}

uint64_t __48__PLDuetServiceSimple_numCPUSecondsForBundleID___block_invoke_514(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6970 = result;
  return result;
}

- (void)didReceiveReset
{
  bundleIDToState = [(PLDuetServiceSimple *)self bundleIDToState];
  [bundleIDToState removeAllObjects];
}

@end