@interface PLPowerAssertionAgent
+ (BOOL)shouldOptimizeSmallAssertions;
+ (id)entryEventForwardDefinitionAssertion;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitionAggregateReset;
+ (id)entryEventPointDefinitionBufferStatus;
+ (id)entryEventPointDefinitionSnapshotReason;
+ (id)entryEventPointDefinitionTimedOutProcesses;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)assertionSnapshotTimerActive;
- (PLPowerAssertionAgent)init;
- (id)assertTypeToEnumMapping;
- (id)sanitizeAssertionNameForEntry:(id)a3;
- (id)startEndActionsToEnumMapping;
- (void)checkAssertionBufferFullNotificationRate;
- (void)handleStateChange;
- (void)initOperatorDependancies;
- (void)logAggregatedAssertionActivity;
- (void)logAggregatedAssertionActivityPLDataStructure;
- (void)logEventForwardAssertion;
- (void)logEventForwardAssertionWithReason:(id)a3 asSnapshot:(BOOL)a4;
- (void)logInterval:(id)a3;
- (void)logSnapshot:(id)a3;
- (void)setAssertionSnapshotTimerActive:(BOOL)a3;
- (void)updateDisplayState;
- (void)updateOptimizeSubSecondAssertions;
- (void)updatePluggedInState;
@end

@implementation PLPowerAssertionAgent

uint64_t __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke(uint64_t a1)
{
  ChannelID = IOReportChannelGetChannelID();
  ValueAtIndex = IOReportArrayGetValueAtIndex();
  v4 = IOReportArrayGetValueAtIndex();
  v5 = IOReportArrayGetValueAtIndex();
  if (ValueAtIndex < 0 || v4 < 0 || v5 < 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else if (ValueAtIndex || v4 || v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:IOReportArrayGetValueAtIndex()];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithInt:ChannelID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  return 0;
}

- (void)logAggregatedAssertionActivityPLDataStructure
{
  v87 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v58 = IOPMCopyAssertionActivityAggregate();
    v59 = objc_opt_new();
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 0;
    v57 = [MEMORY[0x277CBEAA8] monotonicDate];
    if (v58)
    {
      v73 = MEMORY[0x277D85DD0];
      v74 = 3221225472;
      v75 = __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke;
      v76 = &unk_27825B868;
      v78 = &v79;
      v77 = v59;
      IOReportIterate();
    }

    if (v59 && [v59 count])
    {
      v2 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
      v3 = [v2 count] == 0;

      if (v3)
      {
        v60 = 0;
      }

      else
      {
        v4 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
        v56 = [v4 objectForKeyedSubscript:@"assertionAggregatedDate"];

        v61 = [MEMORY[0x277CBEB38] dictionary];
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v5 = v59;
        v6 = [v5 countByEnumeratingWithState:&v69 objects:v86 count:16];
        if (v6)
        {
          v60 = 0;
          v7 = *v70;
          v8 = 0.0;
          do
          {
            v9 = 0;
            v60 += v6;
            do
            {
              if (*v70 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v69 + 1) + 8 * v9);
              v11 = [v5 objectForKeyedSubscript:v10];
              v12 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
              v13 = [v12 objectForKeyedSubscript:@"assertionAggregated"];
              v14 = [v13 objectForKeyedSubscript:v10];

              [v11 doubleValue];
              v16 = v15;
              [v14 doubleValue];
              v18 = v17;

              v8 = v8 + v16 - v18;
              ++v9;
            }

            while (v6 != v9);
            v6 = [v5 countByEnumeratingWithState:&v69 objects:v86 count:16];
          }

          while (v6);
        }

        else
        {
          v60 = 0;
          v8 = 0.0;
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v21 = v5;
        v22 = [v21 countByEnumeratingWithState:&v65 objects:v85 count:16];
        if (v22)
        {
          v23 = *v66;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v66 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v65 + 1) + 8 * i);
              v26 = [v21 objectForKeyedSubscript:v25];
              v27 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
              v28 = [v27 objectForKeyedSubscript:@"assertionAggregated"];
              v29 = [v28 objectForKeyedSubscript:v25];

              if (v8 > 0.0)
              {
                [v26 doubleValue];
                v31 = v30;
                [v29 doubleValue];
                v33 = (v31 - v32) / v8;
                if (v33 > 0.05)
                {
                  v34 = -[PLPowerAssertionAgent bundleIDForAssertionProcessPID:](self, "bundleIDForAssertionProcessPID:", [v25 integerValue]);
                  v35 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
                  [v61 setObject:v35 forKeyedSubscript:v34];
                }
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v65 objects:v85 count:16];
          }

          while (v22);
        }

        v36 = [MEMORY[0x277D3F0C0] sharedInstance];
        [v36 createDistributionEventIntervalWithDistributionID:22 withChildNodeNameToWeight:v61 withStartDate:v56 withEndDate:v57];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v37 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke_2;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v37;
          if (qword_2811F42B0 != -1)
          {
            dispatch_once(&qword_2811F42B0, block);
          }

          if (byte_2811F417C == 1)
          {
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"+++++++++++++++++++++++++++++++++++++++++"];
            v39 = MEMORY[0x277D3F178];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            v41 = [v40 lastPathComponent];
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivityPLDataStructure]"];
            [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:1234];

            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v84 = v38;
              _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v44 = objc_opt_class();
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke_625;
          v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v63[4] = v44;
          if (qword_2811F42B8 != -1)
          {
            dispatch_once(&qword_2811F42B8, v63);
          }

          if (byte_2811F417D == 1)
          {
            v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Newlogging: start date: %@, end dat %@, accounting:%@", v56, v57, v61];
            v46 = MEMORY[0x277D3F178];
            v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            v48 = [v47 lastPathComponent];
            v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivityPLDataStructure]"];
            [v46 logMessage:v45 fromFile:v48 fromFunction:v49 fromLineNumber:1235];

            v50 = PLLogCommon();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v84 = v45;
              _os_log_debug_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }
      }

      v51 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
      [v51 setObject:v59 forKeyedSubscript:@"assertionAggregated"];

      v52 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSamplePLDataStructure];
      [v52 setObject:v57 forKeyedSubscript:@"assertionAggregatedDate"];

      if ([(PLPowerAssertionAgent *)self aggregateMaxPIDCount]>= v60)
      {
        v53 = *(v80 + 6);
        v54 = [(PLPowerAssertionAgent *)self aggregteZeroDeltaCount];
        v19 = v60;
        if (v54 != (v60 == v53))
        {
          [(PLPowerAssertionAgent *)self logEventPointAggregateResetWithReason:0 withPidCount:?];
          goto LABEL_48;
        }

        v20 = 4;
      }

      else
      {
        v20 = 3;
        v19 = v60;
      }
    }

    else
    {
      v19 = 0;
      v20 = 1;
    }

    [(PLPowerAssertionAgent *)self resetIOPMSetAssertionActivityAggregatePLDataStructureWithReason:v20 withPidCount:v19];
LABEL_48:

    _Block_object_dispose(&v79, 8);
  }

  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_185(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_186;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F41A0 != -1)
    {
      dispatch_once(&qword_2811F41A0, block);
    }

    if (byte_2811F4162 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fired on Battery level"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:399];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventForwardAssertionWithReason:&unk_282C106C8 asSnapshot:0];
  result = [*(a1 + 32) logAggregatedAssertionActivityPLDataStructure];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_190(uint64_t a1)
{
  [*(a1 + 32) setAssertionSnapshotTimerActive:1];
  v2 = *(a1 + 32);

  return [v2 setAssertionBufferFullNotificationActive:1 withReason:@"wake"];
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLPowerAssertionAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"SnapshotReason";
  v3 = [a1 entryEventPointDefinitionSnapshotReason];
  v11[0] = v3;
  v10[1] = @"BufferStatus";
  v4 = [a1 entryEventPointDefinitionBufferStatus];
  v11[1] = v4;
  v10[2] = @"AggregateReset";
  v5 = [a1 entryEventPointDefinitionAggregateReset];
  v11[2] = v5;
  v10[3] = @"TimedOutProcesses";
  v6 = [a1 entryEventPointDefinitionTimedOutProcesses];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionAggregateReset
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1BEA8;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"PidCount";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"Reason";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionTimedOutProcesses
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BEA8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"ProcessName";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withProcessName];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Assertion";
  v2 = [a1 entryEventForwardDefinitionAssertion];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventForwardDefinitionAssertion
{
  v38[2] = *MEMORY[0x277D85DE8];
  v37[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F498];
  v35[0] = *MEMORY[0x277D3F568];
  v35[1] = v2;
  v36[0] = &unk_282C1BEB8;
  v36[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v35[2] = *MEMORY[0x277D3F4D8];
  v35[3] = v3;
  v36[2] = MEMORY[0x277CBEC38];
  v36[3] = MEMORY[0x277CBEC38];
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
  v38[0] = v30;
  v37[1] = *MEMORY[0x277D3F540];
  v33[0] = @"Action";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v34[0] = v28;
  v33[1] = @"timestampActionOffset";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat];
  v34[1] = v26;
  v33[2] = @"GlobalUniqueID";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v34[2] = v24;
  v33[3] = @"pid";
  v4 = *MEMORY[0x277D3F538];
  v31[0] = *MEMORY[0x277D3F5A8];
  v31[1] = v4;
  v32[0] = &unk_282C106B0;
  v32[1] = &unk_282C140B8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v34[3] = v23;
  v33[4] = @"AssertName";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v34[4] = v21;
  v33[5] = @"AssertType";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v34[5] = v19;
  v33[6] = @"AssertionOnBehalfOfPID";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v34[6] = v17;
  v33[7] = @"GlobalUniqueIDReference";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v34[7] = v6;
  v33[8] = @"FrameworkBundleID";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat_withBundleID];
  v34[8] = v8;
  v33[9] = @"InstanceMetadata";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v34[9] = v10;
  v33[10] = @"Category";
  v11 = [MEMORY[0x277D3F198] sharedInstance];
  v12 = [v11 commonTypeDict_IntegerFormat];
  v34[10] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:11];
  v38[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventPointDefinitionSnapshotReason
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BEB8;
  v13[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Reason";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionBufferStatus
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1BEB8;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Reason";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"TotalCount";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PLPowerAssertionAgent)init
{
  v14.receiver = self;
  v14.super_class = PLPowerAssertionAgent;
  v2 = [(PLAgent *)&v14 init];
  v3 = v2;
  if (v2)
  {
    assertionBufferFullNotificationRearmTimer = v2->_assertionBufferFullNotificationRearmTimer;
    v2->_assertionBufferFullNotificationRearmTimer = 0;

    v3->_assertionBufferFullNotificationActive = 0;
    v5 = objc_opt_new();
    assertionBufferNotificationTracking = v3->_assertionBufferNotificationTracking;
    v3->_assertionBufferNotificationTracking = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionUUIDCache = v3->_assertionUUIDCache;
    v3->_assertionUUIDCache = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    UUIDStartEntryCache = v3->_UUIDStartEntryCache;
    v3->_UUIDStartEntryCache = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    subSecondUUIDStartEntryCache = v3->_subSecondUUIDStartEntryCache;
    v3->_subSecondUUIDStartEntryCache = v11;

    v3->_gameMode = 0;
    v3->_displayOn = 0;
    v3->_pluggedIn = 0;
    v3->_optimizesSubSecondAssertions = 0;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [(PLPowerAssertionAgent *)self startEndActionsToEnumMapping];
  startEndActionsToEnum = self->_startEndActionsToEnum;
  self->_startEndActionsToEnum = v3;

  v5 = [(PLPowerAssertionAgent *)self assertTypeToEnumMapping];
  assertTypeToEnum = self->_assertTypeToEnum;
  self->_assertTypeToEnum = v5;

  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_282C106C8, &unk_282C106E0, &unk_282C106F8, &unk_282C10710, 0}];
  logAssertNameForActions = self->_logAssertNameForActions;
  self->_logAssertNameForActions = v7;

  v9 = objc_opt_new();
  assertionAggregatedLastSamplePLDataStructure = self->_assertionAggregatedLastSamplePLDataStructure;
  self->_assertionAggregatedLastSamplePLDataStructure = v9;

  v11 = objc_opt_new();
  assertionAggregatedLastSample = self->_assertionAggregatedLastSample;
  self->_assertionAggregatedLastSample = v11;

  [(PLPowerAssertionAgent *)self resetIOPMSetAssertionActivityAggregateWithReason:1 withPidCount:0];
  self->_firstBufferDrain = 1;
  self->_lastActivityOverflow = 0;
  v13 = IOPMSetAssertionActivityLog();
  [(PLOperator *)self defaultDoubleForKey:@"AggregateAssertionResetTime"];
  v15 = v14;
  v16 = objc_alloc(MEMORY[0x277D3F250]);
  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v15];
  v18 = [(PLOperator *)self workQueue];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke;
  v60[3] = &unk_278259C40;
  v60[4] = self;
  v19 = [v16 initWithFireDate:v17 withInterval:1 withTolerance:0 repeats:v18 withUserInfo:v60 withQueue:v15 withBlock:0.0];
  [(PLPowerAssertionAgent *)self setRunQueryTimer:v19];

  if ([(PLOperator *)self isDebugEnabled])
  {
    if (v13)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"******  ERROR ********* 0x%x", v13];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:363];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v62 = v20;
LABEL_15:
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"We have assertion Activity logging"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v28 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]"];
      [v26 logMessage:v20 fromFile:v28 fromFunction:v29 fromLineNumber:365];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v62 = v20;
        goto LABEL_15;
      }
    }
  }

  if ([(PLOperator *)self defaultBoolForKey:@"AnyChange"])
  {
    v30 = objc_opt_new();
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_154;
    v59[3] = &unk_2782597E8;
    v59[4] = self;
    v31 = [v30 initWithOperator:self forNotification:@"com.apple.system.powermanagement.assertions.anychange" requireState:0 withBlock:v59];
    [(PLPowerAssertionAgent *)self setAssertionNotification:v31];

    IOPMAssertionNotify();
  }

  v32 = objc_alloc(MEMORY[0x277D3F160]);
  v33 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_165;
  v58[3] = &unk_2782597E8;
  v58[4] = self;
  v34 = [v32 initWithWorkQueue:v33 forNotification:@"com.apple.powerlogd.flushAssertionBuffer" requireState:0 withBlock:v58];

  [(PLPowerAssertionAgent *)self setFlushAssertionBufferCFNotification:v34];
  v35 = objc_opt_new();
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_176;
  v57[3] = &unk_2782597E8;
  v57[4] = self;
  v36 = [v35 initWithOperator:self forNotification:@"com.apple.powermanagement.assertions.logHighWM" requireState:0 withBlock:v57];
  [(PLPowerAssertionAgent *)self setAssertionBufferFullNotification:v36];

  [(PLPowerAssertionAgent *)self setAssertionBufferFullNotificationActive:1 withReason:@"init"];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_185;
  v56[3] = &unk_2782597E8;
  v56[4] = self;
  v37 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v56];
  [(PLPowerAssertionAgent *)self setBatteryLevelNotificiations:v37];

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_190;
  v55[3] = &unk_2782597E8;
  v55[4] = self;
  v38 = [MEMORY[0x277D3F1A8] wakeEntryNotificationWithOperator:self withBlock:v55];
  [(PLPowerAssertionAgent *)self setWakeNotification:v38];

  [(PLPowerAssertionAgent *)self setAssertionSnapshotTimerActive:1];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_194;
  v54[3] = &unk_2782597E8;
  v54[4] = self;
  v39 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v54];
  [(PLPowerAssertionAgent *)self setCanSleepNotification:v39];

  v40 = objc_alloc(MEMORY[0x277D3F1F0]);
  v41 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v42 = *MEMORY[0x277CBE580];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_3;
  v53[3] = &unk_2782597E8;
  v53[4] = self;
  v43 = [v40 initWithWorkQueue:v41 forNotification:v42 withBlock:v53];

  [(PLPowerAssertionAgent *)self setDailyTaskNotification:v43];
  self->_aggregateMaxPIDCount = [(PLOperator *)self defaultLongForKey:@"AggregateMaxPidCount"];
  self->_aggregteZeroDeltaCount = [(PLOperator *)self defaultLongForKey:@"AggregateZeroDeltaCount"];
  if (_os_feature_enabled_impl())
  {
    v44 = PLLogAssertion();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_INFO, "enableSubSecondAssertionOptimization is enabled", buf, 2u);
    }

    v45 = objc_alloc(MEMORY[0x277D3F1F0]);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_209;
    v52[3] = &unk_2782597E8;
    v52[4] = self;
    v46 = [v45 initWithOperator:self forNotification:@"PLGameModeNotification" withBlock:v52];
    consoleModeListener = self->_consoleModeListener;
    self->_consoleModeListener = v46;

    v48 = [MEMORY[0x277D3F220] sharedInstance];
    [(PLPowerAssertionAgent *)self setStateTracker:v48];

    v49 = [(PLPowerAssertionAgent *)self stateTracker];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_214;
    v51[3] = &unk_2782591D0;
    v51[4] = self;
    [v49 registerForStates:5 withOperator:self withBlock:v51];
  }

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_154(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F4190 != -1)
    {
      dispatch_once(&qword_2811F4190, block);
    }

    if (_MergedGlobals_1_18 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"assertion notification handler"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:371];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  result = [*(a1 + 32) logEventForwardAssertionWithReason:&unk_282C106E0 asSnapshot:0];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_18 = result;
  return result;
}

void __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_165(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) logInterval:&unk_282C10728];
  if (([*(a1 + 32) lastActivityOverflow] & 1) == 0)
  {
    [*(a1 + 32) logSnapshot:&unk_282C10740];
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Flushing the assertion buffer"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:385];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_176(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_177;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F4198 != -1)
    {
      dispatch_once(&qword_2811F4198, block);
    }

    if (byte_2811F4161 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"assertion buffer notification handler"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:391];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventForwardAssertionWithReason:&unk_282C10710 asSnapshot:0];
  v10 = [*(a1 + 32) assertionBufferNotificationTracking];
  v11 = [MEMORY[0x277CBEAA8] date];
  [v10 addObject:v11];

  result = [*(a1 + 32) checkAssertionBufferFullNotificationRate];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_177(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4161 = result;
  return result;
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_2_186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4162 = result;
  return result;
}

void __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_4;
    block[3] = &unk_27825A310;
    v27 = @"DailyTasks";
    v28 = v11;
    if (qword_2811F41A8 != -1)
    {
      dispatch_once(&qword_2811F41A8, block);
    }

    v12 = byte_2811F4163;

    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"DailyTasks notification!"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent initOperatorDependancies]_block_invoke_3"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:420];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
      }
    }
  }

  objc_initWeak(location, *(a1 + 32));
  v19 = objc_alloc(MEMORY[0x277D3F250]);
  v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
  v21 = [*(a1 + 32) workQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_203;
  v24[3] = &unk_27825A810;
  objc_copyWeak(&v25, location);
  v22 = [v19 initWithFireDate:v20 withInterval:0 withTolerance:0 repeats:v21 withUserInfo:v24 withQueue:0.0 withBlock:0.0];

  [v22 arm];
  objc_destroyWeak(&v25);
  objc_destroyWeak(location);

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_4(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F4163 = result;
  return result;
}

void __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_203(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logSnapshotAtMidnight:0];
}

void __49__PLPowerAssertionAgent_initOperatorDependancies__block_invoke_209(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogAssertion();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification from Console Mode change: %@", &v13, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"gameMode"];
  v9 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"gameMode"];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = 1;
    }
  }

  [*(a1 + 32) setGameMode:v9];
  v10 = PLLogAssertion();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [*(a1 + 32) gameMode];
    v13 = 67109120;
    LODWORD(v14) = v12;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Game Mode set to: %d", &v13, 8u);
  }

  [*(a1 + 32) updateOptimizeSubSecondAssertions];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleStateChange
{
  v3 = [(PLPowerAssertionAgent *)self stateTracker];
  v4 = [v3 stateChanged:4];

  if (v4)
  {
    [(PLPowerAssertionAgent *)self updateDisplayState];
  }

  v5 = [(PLPowerAssertionAgent *)self stateTracker];
  v6 = [v5 stateChanged:1];

  if (v6)
  {

    [(PLPowerAssertionAgent *)self updatePluggedInState];
  }
}

- (void)updateDisplayState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(PLPowerAssertionAgent *)self stateTracker];
  v4 = [v3 getCurrState:4];

  v5 = PLLogAssertion();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Display state has changed to: %@", &v7, 0xCu);
  }

  -[PLPowerAssertionAgent setDisplayOn:](self, "setDisplayOn:", [v4 intValue] == 1);
  [(PLPowerAssertionAgent *)self updateOptimizeSubSecondAssertions];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updatePluggedInState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(PLPowerAssertionAgent *)self stateTracker];
  v4 = [v3 getCurrState:1];
  v5 = [v4 BOOLValue];

  v6 = PLLogAssertion();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "PluggedIn state has changed to: %d", v8, 8u);
  }

  [(PLPowerAssertionAgent *)self setPluggedIn:v5];
  [(PLPowerAssertionAgent *)self updateOptimizeSubSecondAssertions];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateOptimizeSubSecondAssertions
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PLPowerAssertionAgent *)self gameMode]|| [(PLPowerAssertionAgent *)self displayOn]|| [(PLPowerAssertionAgent *)self pluggedIn];
  [(PLPowerAssertionAgent *)self setOptimizesSubSecondAssertions:v3];
  v4 = PLLogAssertion();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109888;
    v6[1] = [(PLPowerAssertionAgent *)self optimizesSubSecondAssertions];
    v7 = 1024;
    v8 = [(PLPowerAssertionAgent *)self gameMode];
    v9 = 1024;
    v10 = [(PLPowerAssertionAgent *)self displayOn];
    v11 = 1024;
    v12 = [(PLPowerAssertionAgent *)self pluggedIn];
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "In updateOptimizeSubSecondAssertions: %d; self.gameMode: %d; self.displayOn: %d; self.pluggedIn: %d ", v6, 0x1Au);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)startEndActionsToEnumMapping
{
  startEndActionsToEnum = self->_startEndActionsToEnum;
  if (!startEndActionsToEnum)
  {
    self->_startEndActionsToEnum = &unk_282C174F0;
    startEndActionsToEnum = self->_startEndActionsToEnum;
  }

  return startEndActionsToEnum;
}

- (id)assertTypeToEnumMapping
{
  assertTypeToEnum = self->_assertTypeToEnum;
  if (!assertTypeToEnum)
  {
    self->_assertTypeToEnum = &unk_282C17518;
    assertTypeToEnum = self->_assertTypeToEnum;
  }

  return assertTypeToEnum;
}

- (void)checkAssertionBufferFullNotificationRate
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CBEAA8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F41B0 != -1)
  {
    dispatch_once(&qword_2811F41B0, block);
  }

  v5 = [v4 dateWithTimeIntervalSinceNow:0.0 - *&qword_2811F41B8];
  v6 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        if ([v12 compare:v5] == -1)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v9);
  }

  v13 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
  [v13 removeObjectsInArray:v6];

  v14 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = MEMORY[0x277D3F268];
    v46 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
    v17 = [v46 firstObject];
    v18 = [v16 formattedStringForDate:v17];
    v19 = v3;
    v20 = MEMORY[0x277D3F268];
    v21 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
    v22 = [v21 lastObject];
    v23 = [v20 formattedStringForDate:v22];
    v24 = [v15 stringWithFormat:@"start=%@ end=%@", v18, v23];

    v3 = v19;
    v25 = v24;

    v14 = 0x277D3F000;
  }

  else
  {
    v25 = 0;
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_2;
  v49[3] = &unk_2782591D0;
  v49[4] = self;
  if (qword_2811F41C0 != -1)
  {
    dispatch_once(&qword_2811F41C0, v49);
  }

  v26 = qword_2811F41C8;
  v27 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
  v28 = [v27 count];

  if (v28 >= v26)
  {
    [(PLPowerAssertionAgent *)self setAssertionBufferFullNotificationActive:0 withReason:@"CheckRate"];
    if ([*(v14 + 384) debugEnabled])
    {
      v38 = objc_opt_class();
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_3;
      v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v48[4] = v38;
      if (qword_2811F41D0 != -1)
      {
        dispatch_once(&qword_2811F41D0, v48);
      }

      if (byte_2811F4164 == 1)
      {
        v39 = MEMORY[0x277CCACA8];
        v40 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
        v32 = [v39 stringWithFormat:@"assertion storm! count=%lu %@", objc_msgSend(v40, "count"), v25];

        v41 = MEMORY[0x277D3F178];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
        v43 = [v42 lastPathComponent];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent checkAssertionBufferFullNotificationRate]"];
        [v41 logMessage:v32 fromFile:v43 fromFunction:v44 fromLineNumber:658];

        v37 = PLLogCommon();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v56 = v32;
          goto LABEL_32;
        }

LABEL_29:
      }
    }
  }

  else if ([*(v14 + 384) debugEnabled])
  {
    v29 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_430;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v29;
    if (qword_2811F41D8 != -1)
    {
      dispatch_once(&qword_2811F41D8, v47);
    }

    if (byte_2811F4165 == 1)
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = [(PLPowerAssertionAgent *)self assertionBufferNotificationTracking];
      v32 = [v30 stringWithFormat:@"no storm! count=%lu %@", objc_msgSend(v31, "count"), v25];

      v33 = MEMORY[0x277D3F178];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v35 = [v34 lastPathComponent];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent checkAssertionBufferFullNotificationRate]"];
      [v33 logMessage:v32 fromFile:v35 fromFunction:v36 fromLineNumber:660];

      v37 = PLLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v56 = v32;
LABEL_32:
        _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  objc_autoreleasePoolPop(v3);
  v45 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"HWTimeWindow"];
  qword_2811F41B8 = v2;
  return result;
}

uint64_t __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"HWCountLimit"];
  qword_2811F41C8 = result;
  return result;
}

uint64_t __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4164 = result;
  return result;
}

uint64_t __65__PLPowerAssertionAgent_checkAssertionBufferFullNotificationRate__block_invoke_430(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4165 = result;
  return result;
}

uint64_t __77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4166 = result;
  return result;
}

uint64_t __77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_440(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4167 = result;
  return result;
}

uint64_t __77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_456(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4168 = result;
  return result;
}

uint64_t __77__PLPowerAssertionAgent_setAssertionBufferFullNotificationActive_withReason___block_invoke_461(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"HWRearmTimeInterval"];
  qword_2811F4200 = v2;
  return result;
}

- (void)setAssertionSnapshotTimerActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLPowerAssertionAgent *)self assertionSnapShotTimer];

  if (v5)
  {
    v6 = [(PLPowerAssertionAgent *)self assertionSnapShotTimer];
    [v6 invalidate];
  }

  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PLPowerAssertionAgent_setAssertionSnapshotTimerActive___block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    if (qword_2811F4208 != -1)
    {
      dispatch_once(&qword_2811F4208, block);
    }

    v7 = *&qword_2811F4210;
    if (![MEMORY[0x277D3F180] fullMode])
    {
      v7 = v7 * 6.0;
    }

    v8 = objc_alloc(MEMORY[0x277D3F250]);
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v7];
    v10 = [(PLOperator *)self workQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__PLPowerAssertionAgent_setAssertionSnapshotTimerActive___block_invoke_2;
    v12[3] = &unk_278259C40;
    v12[4] = self;
    v11 = [v8 initWithFireDate:v9 withInterval:1 withTolerance:0 repeats:v10 withUserInfo:v12 withQueue:v7 withBlock:0.0];
    [(PLPowerAssertionAgent *)self setAssertionSnapShotTimer:v11];
  }

  else
  {

    [(PLPowerAssertionAgent *)self setAssertionSnapShotTimer:0];
  }
}

uint64_t __57__PLPowerAssertionAgent_setAssertionSnapshotTimerActive___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"SnapShotInterval"];
  qword_2811F4210 = v2;
  return result;
}

- (BOOL)assertionSnapshotTimerActive
{
  v2 = [(PLPowerAssertionAgent *)self assertionSnapShotTimer];
  v3 = v2 == 0;

  return v3;
}

- (id)sanitizeAssertionNameForEntry:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v3 length] >= 0x3E9)
    {
      v4 = [v3 substringToIndex:1000];

      v3 = v4;
    }

    if ([v3 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = v3;
      v5 = v3;
    }

    else
    {
      v7 = [v3 stringByReplacingOccurrencesOfString:@"" withString:&stru_282B650A0];;
      v8 = [v7 stringByReplacingOccurrencesOfString:@"." withString:&stru_282B650A0];

      v9 = [v8 stringByReplacingOccurrencesOfString:@"*" withString:&stru_282B650A0];

      v10 = [v9 stringByReplacingOccurrencesOfString:@"?" withString:&stru_282B650A0];

      v11 = [v10 stringByReplacingOccurrencesOfString:@"@" withString:&stru_282B650A0];

      v12 = [v11 stringByReplacingOccurrencesOfString:@"\\"" withString:&stru_282B650A0];

      v5 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:&stru_282B650A0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldOptimizeSmallAssertions
{
  if (qword_2811F4218 != -1)
  {
    dispatch_once(&qword_2811F4218, &__block_literal_global_490);
  }

  return byte_2811F4169;
}

uint64_t __54__PLPowerAssertionAgent_shouldOptimizeSmallAssertions__block_invoke()
{
  if ([MEMORY[0x277D3F180] liteMode])
  {
    result = 1;
  }

  else
  {
    result = [MEMORY[0x277D3F180] taskMode];
  }

  byte_2811F4169 = result;
  return result;
}

- (void)logEventForwardAssertion
{
  [(PLPowerAssertionAgent *)self logEventForwardAssertionWithReason:&unk_282C10650 asSnapshot:0];

  [(PLPowerAssertionAgent *)self logEventForwardAssertionWithReason:&unk_282C106C8 asSnapshot:1];
}

- (void)logSnapshot:(id)a3
{
  v102 = *MEMORY[0x277D85DE8];
  v4 = a3;
  AssertionsByPID = 0;
  v5 = IOPMCopyAssertionsByProcess(&AssertionsByPID);
  if (v5)
  {
    v6 = v5;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __37__PLPowerAssertionAgent_logSnapshot___block_invoke;
      v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v94[4] = v7;
      if (qword_2811F4220 != -1)
      {
        dispatch_once(&qword_2811F4220, v94);
      }

      if (byte_2811F416A == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Call to IOPMCopyAssertionsByProcess failed with error 0x%x", v6];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logSnapshot:]"];
        v73 = v8;
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:790];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v101 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        goto LABEL_53;
      }
    }

    goto LABEL_54;
  }

  v70 = v4;
  v78 = objc_opt_new();
  v77 = [MEMORY[0x277CBEAA8] monotonicDate];
  v14 = AssertionsByPID;
  v76 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Assertion"];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v73 = v14;
  obj = [(__CFDictionary *)v14 allKeys];
  v74 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
  if (!v74)
  {
    goto LABEL_49;
  }

  v72 = *v91;
  v15 = 0x277CCA000;
  v16 = @"Category";
  do
  {
    v17 = 0;
    do
    {
      if (*v91 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v75 = v17;
      v18 = *(*(&v90 + 1) + 8 * v17);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v80 = v18;
      v81 = [v73 objectForKey:?];
      v83 = [v81 countByEnumeratingWithState:&v86 objects:v98 count:16];
      if (v83)
      {
        v19 = *v87;
        v79 = *v87;
        do
        {
          v20 = 0;
          do
          {
            if (*v87 != v19)
            {
              objc_enumerationMutation(v81);
            }

            v21 = *(*(&v86 + 1) + 8 * v20);
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v22 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __37__PLPowerAssertionAgent_logSnapshot___block_invoke_496;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v22;
              if (qword_2811F4228 != -1)
              {
                dispatch_once(&qword_2811F4228, block);
              }

              if (byte_2811F416B == 1)
              {
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"rawAssertion=%@", v21];
                v24 = MEMORY[0x277D3F178];
                v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                v26 = [v25 lastPathComponent];
                v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logSnapshot:]"];
                [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:801];

                v28 = PLLogCommon();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v101 = v23;
                  _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v15 = 0x277CCA000uLL;
              }
            }

            v29 = [v21 objectForKeyedSubscript:@"GlobalUniqueID"];
            v30 = *(v15 + 2992);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v32 = v16;
              v33 = v15;
              v34 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v76];
              [v34 setEntryDate:v77];
              v35 = [v21 objectForKeyedSubscript:@"AssertStartWhen"];
              v36 = [v34 entryDate];
              v82 = v35;
              [v35 timeIntervalSinceDate:v36];
              v38 = v37 * 1000.0;

              v39 = [*(v33 + 2992) numberWithDouble:v38];
              [v34 setObject:v39 forKeyedSubscript:@"timestampActionOffset"];

              [v34 setObject:v80 forKeyedSubscript:@"pid"];
              [v34 setObject:&unk_282C10650 forKeyedSubscript:@"Action"];
              v40 = [v21 objectForKeyedSubscript:@"GlobalUniqueID"];
              [v34 setObject:v40 forKeyedSubscript:@"GlobalUniqueID"];

              v41 = [v21 objectForKeyedSubscript:@"AssertName"];
              v42 = [(PLPowerAssertionAgent *)self sanitizeAssertionNameForEntry:v41];
              [v34 setObject:v42 forKeyedSubscript:@"AssertName"];

              v43 = [(PLPowerAssertionAgent *)self assertTypeToEnum];
              v44 = [v21 objectForKeyedSubscript:@"AssertType"];
              v45 = [v43 objectForKeyedSubscript:v44];
              [v34 setObject:v45 forKeyedSubscript:@"AssertType"];

              v46 = [v34 objectForKeyedSubscript:@"AssertType"];

              if (!v46)
              {
                [v34 setObject:&unk_282C10758 forKeyedSubscript:@"AssertType"];
              }

              v47 = [v21 objectForKeyedSubscript:@"AssertionOnBehalfOfPID"];
              [v34 setObject:v47 forKeyedSubscript:@"AssertionOnBehalfOfPID"];

              v16 = v32;
              v48 = [v21 objectForKeyedSubscript:v32];

              if (v48)
              {
                v49 = [v21 objectForKeyedSubscript:v32];
                [v34 setObject:v49 forKeyedSubscript:v32];
              }

              v50 = [v21 objectForKeyedSubscript:@"InstanceMetadata"];

              if (v50)
              {
                v51 = [v21 objectForKeyedSubscript:@"InstanceMetadata"];
                if ([v51 length] >= 0x21)
                {
                  v52 = [v51 substringToIndex:32];

                  v51 = v52;
                }

                [v34 setObject:v51 forKeyedSubscript:@"InstanceMetadata"];
              }

              v53 = [v21 objectForKeyedSubscript:@"FrameworkBundleID"];

              if (v53)
              {
                v54 = [v21 objectForKeyedSubscript:@"FrameworkBundleID"];
                [v34 setObject:v54 forKeyedSubscript:@"FrameworkBundleID"];
              }

              [v78 addObject:v34];
              v19 = v79;
              v55 = v82;
LABEL_37:

              v15 = 0x277CCA000;
              goto LABEL_45;
            }

            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v56 = objc_opt_class();
              v84[0] = MEMORY[0x277D85DD0];
              v84[1] = 3221225472;
              v84[2] = __37__PLPowerAssertionAgent_logSnapshot___block_invoke_505;
              v84[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v84[4] = v56;
              if (qword_2811F4230 != -1)
              {
                dispatch_once(&qword_2811F4230, v84);
              }

              if (byte_2811F416C == 1)
              {
                v57 = MEMORY[0x277CCACA8];
                v58 = [v21 objectForKeyedSubscript:@"GlobalUniqueID"];
                v34 = [v57 stringWithFormat:@"ERROR: GlobalUniqueID for assertion is not a number: %@", v58];

                v59 = MEMORY[0x277D3F178];
                v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                v61 = [v60 lastPathComponent];
                v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logSnapshot:]"];
                [v59 logMessage:v34 fromFile:v61 fromFunction:v62 fromLineNumber:831];

                v55 = PLLogCommon();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v101 = v34;
                  _os_log_debug_impl(&dword_21A4C6000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                goto LABEL_37;
              }
            }

LABEL_45:
            ++v20;
          }

          while (v83 != v20);
          v83 = [v81 countByEnumeratingWithState:&v86 objects:v98 count:16];
        }

        while (v83);
      }

      v17 = v75 + 1;
    }

    while (v75 + 1 != v74);
    v74 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
  }

  while (v74);
LABEL_49:

  v13 = v78;
  if ([v78 count])
  {
    v63 = v76;
    v96 = v76;
    v97 = v78;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    [(PLOperator *)self logEntries:v64 withGroupID:v76];
    v4 = v70;
    v65 = 0x278257000;
    v66 = 0x277D3F000;
  }

  else
  {
    v66 = 0x277D3F000uLL;
    v63 = v76;
    v64 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v76];
    [v64 setIsErrorEntry:1];
    [v64 setObject:@"No assertions open" forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)self logEntry:v64];
    v4 = v70;
    v65 = 0x278257000uLL;
  }

  v67 = [*(v65 + 3640) entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SnapshotReason"];
  v68 = [objc_alloc(*(v66 + 400)) initWithEntryKey:v67];
  [v68 setObject:v4 forKeyedSubscript:@"Reason"];
  [(PLOperator *)self logEntry:v68];

LABEL_53:
LABEL_54:

  v69 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLPowerAssertionAgent_logSnapshot___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416A = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logSnapshot___block_invoke_496(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416B = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logSnapshot___block_invoke_505(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416C = result;
  return result;
}

- (void)logInterval:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke;
  block[3] = &unk_27825B7C8;
  v19 = @"logAssertNameChange";
  v20 = 0;
  if (qword_2811F4238 != -1)
  {
    dispatch_once(&qword_2811F4238, block);
  }

  if (logInterval__prevRefCnt == -1)
  {
    logInterval__prevRefCnt = [MEMORY[0x277D3F180] longForKey:@"assertionCookie" ifNotSet:0xFFFFFFFFLL];
  }

  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"0[xX][0-9a-fA-F]+" options:0 error:0];
  v6 = PLLogAssertion();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v17 = [(PLPowerAssertionAgent *)self optimizesSubSecondAssertions];
    *buf = 67109120;
    LODWORD(v22) = v17;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "self.optimizesSubSecondAssertions %d", buf, 8u);
  }

  [(PLOperator *)self defaultDoubleForKey:@"subSecondAssertionDuration"];
  v8 = v7;
  v9 = PLLogAssertion();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v22 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "subSecondAssertionDuration %f", buf, 0xCu);
  }

  v10 = [(PLOperator *)self workQueue];
  v11 = v5;
  v12 = v4;
  v13 = IOPMCopyAssertionActivityUpdateWithCallback();

  if (v13)
  {
    v14 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BufferStatus"];
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
    [v15 setObject:&unk_282C108A8 forKeyedSubscript:@"TotalCount"];
    [(PLOperator *)self logEntry:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  byte_2811F416D = result;
  return result;
}

void __37__PLPowerAssertionAgent_logInterval___block_invoke_525(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v244 = *MEMORY[0x277D85DE8];
  v6 = 0x277D3F000uLL;
  v7 = MEMORY[0x277D3F180];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:logInterval__prevRefCnt];
  [v7 setObject:v8 forKey:@"assertionCookie" saveToDisk:1];

  v211 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = a4;
  v208 = objc_opt_new();
  v210 = *MEMORY[0x277D3F5E8];
  v207 = [PLOperator entryKeyForType:"entryKeyForType:andName:" andName:?];
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v230 objects:v243 count:16];
  v11 = 0x277D3F000;
  v201 = a1;
  if (v10)
  {
    v12 = v10;
    v13 = *v231;
    do
    {
      v14 = 0;
      do
      {
        if (*v231 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v230 + 1) + 8 * v14);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v16 = *(a1 + 32);
          v17 = objc_opt_class();
          v229[0] = MEMORY[0x277D85DD0];
          v229[1] = 3221225472;
          v229[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_2;
          v229[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v229[4] = v17;
          v18 = v229;
          if (qword_2811F4240 != -1)
          {
            dispatch_once(&qword_2811F4240, v18);
          }

          if (byte_2811F416E == 1)
          {
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"timedOutProcessLog=%@", v15];
            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            v22 = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke"];
            [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:878];

            v24 = PLLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v242 = v19;
              _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            a1 = v201;
            v6 = 0x277D3F000uLL;
            v11 = 0x277D3F000uLL;
          }
        }

        v25 = [objc_alloc(*(v11 + 400)) initWithEntryKey:v207 withDate:v211];
        [v25 setObject:v15 forKeyedSubscript:@"ProcessName"];
        [v208 addObject:v25];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v230 objects:v243 count:16];
    }

    while (v12);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = *(a1 + 32);
    v27 = objc_opt_class();
    v228[0] = MEMORY[0x277D85DD0];
    v228[1] = 3221225472;
    v228[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_531;
    v228[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v228[4] = v27;
    v28 = v228;
    if (qword_2811F4248 != -1)
    {
      dispatch_once(&qword_2811F4248, v28);
    }

    if (byte_2811F416F == 1)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"processCreates=%@\n", v208];
      v30 = MEMORY[0x277D3F178];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v32 = [v31 lastPathComponent];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
      [v30 logMessage:v29 fromFile:v32 fromFunction:v33 fromLineNumber:883];

      v34 = PLLogCommon();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v242 = v29;
        _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v11 = 0x277D3F000;
    }
  }

  if ([v208 count])
  {
    v35 = *(a1 + 32);
    v239 = v207;
    v240 = v208;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
    [v35 logEntries:v36 withGroupID:v207];
  }

  v192 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:v210 andName:@"BufferStatus"];
  v37 = a2;
  v205 = objc_opt_new();
  v204 = [(PLOperator *)PLPowerAssertionAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Assertion"];
  v199 = objc_opt_new();
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v203 = v37;
  v209 = [v203 countByEnumeratingWithState:&v224 objects:v238 count:16];
  if (v209)
  {
    v206 = *v225;
    do
    {
      v38 = 0;
      do
      {
        if (*v225 != v206)
        {
          objc_enumerationMutation(v203);
        }

        v39 = *(*(&v224 + 1) + 8 * v38);
        if ([*(v6 + 384) debugEnabled])
        {
          v40 = *(a1 + 32);
          v41 = objc_opt_class();
          v223[0] = MEMORY[0x277D85DD0];
          v223[1] = 3221225472;
          v223[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_538;
          v223[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v223[4] = v41;
          v42 = v223;
          if (qword_2811F4250 != -1)
          {
            dispatch_once(&qword_2811F4250, v42);
          }

          if (byte_2811F4170 == 1)
          {
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"activityLog=%@", v39];
            v44 = MEMORY[0x277D3F178];
            v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            v46 = [v45 lastPathComponent];
            v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
            [v44 logMessage:v43 fromFile:v46 fromFunction:v47 fromLineNumber:900];

            v48 = PLLogCommon();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v242 = v43;
              _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v11 = 0x277D3F000uLL;
          }
        }

        contexta = objc_autoreleasePoolPush();
        v49 = [v39 objectForKeyedSubscript:@"GlobalUniqueID"];
        v215 = [v39 objectForKeyedSubscript:@"AssertPID"];
        v50 = [v39 objectForKeyedSubscript:@"Action"];
        v51 = [*(a1 + 32) startEndActionsToEnum];
        v214 = v50;
        v52 = [v51 objectForKeyedSubscript:v50];

        if (v52)
        {
          v53 = v52;
        }

        else
        {
          v53 = &unk_282C10878;
        }

        if ((*(a1 + 64) & 1) != 0 || ([v53 isEqualToNumber:&unk_282C106C8] & 1) == 0)
        {
          v54 = [objc_alloc(*(v11 + 400)) initWithEntryKey:v204 withDate:v211];
          v55 = [v39 objectForKeyedSubscript:@"ActivityTime"];

          if (v55)
          {
            v56 = [v39 objectForKeyedSubscript:@"ActivityTime"];
            v57 = [v54 entryDate];
            [v56 timeIntervalSinceDate:v57];
            v59 = v58 * 1000.0;

            v60 = [MEMORY[0x277CCABB0] numberWithDouble:v59];
            [v54 setObject:v60 forKeyedSubscript:@"timestampActionOffset"];
          }

          else
          {
            if ([*(v6 + 384) debugEnabled])
            {
              v61 = *(a1 + 32);
              v62 = objc_opt_class();
              v222[0] = MEMORY[0x277D85DD0];
              v222[1] = 3221225472;
              v222[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_547;
              v222[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v222[4] = v62;
              v63 = v222;
              if (qword_2811F4258 != -1)
              {
                dispatch_once(&qword_2811F4258, v63);
              }

              if (byte_2811F4171 == 1)
              {
                v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing key: ActivityTime, in the payload"];
                v65 = MEMORY[0x277D3F178];
                v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                v67 = [v66 lastPathComponent];
                v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
                [v65 logMessage:v64 fromFile:v67 fromFunction:v68 fromLineNumber:917];

                v69 = PLLogCommon();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v242 = v64;
                  _os_log_debug_impl(&dword_21A4C6000, v69, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                a1 = v201;
              }
            }

            [v54 setObject:0 forKeyedSubscript:@"timestampActionOffset"];
          }

          [v54 setObject:v49 forKeyedSubscript:@"GlobalUniqueID"];
          [v54 setObject:v215 forKeyedSubscript:@"pid"];
          v70 = [*(a1 + 32) logAssertNameForActions];
          v71 = [v70 containsObject:v53];

          if (v71)
          {
            v72 = [v39 objectForKeyedSubscript:@"Category"];

            if (v72)
            {
              v73 = [v39 objectForKeyedSubscript:@"Category"];
              [v54 setObject:v73 forKeyedSubscript:@"Category"];
            }

            v74 = [v39 objectForKeyedSubscript:@"InstanceMetadata"];

            if (v74)
            {
              v75 = [v39 objectForKeyedSubscript:@"InstanceMetadata"];
              if ([v75 length] >= 0x21)
              {
                v76 = [v75 substringToIndex:32];

                v75 = v76;
              }

              [v54 setObject:v75 forKeyedSubscript:@"InstanceMetadata"];
            }

            v77 = [v39 objectForKeyedSubscript:@"FrameworkBundleID"];

            if (v77)
            {
              v78 = [v39 objectForKeyedSubscript:@"FrameworkBundleID"];
              [v54 setObject:v78 forKeyedSubscript:@"FrameworkBundleID"];
            }
          }

          v79 = [*(a1 + 32) logAssertNameForActions];
          v80 = [v79 containsObject:v53];

          if (v80)
          {
            v81 = *(a1 + 32);
            v82 = [v39 objectForKeyedSubscript:@"AssertName"];
            v83 = [v81 sanitizeAssertionNameForEntry:v82];
            [v54 setObject:v83 forKeyedSubscript:@"AssertName"];
          }

          else
          {
            [v54 setObject:0 forKeyedSubscript:@"AssertName"];
          }

          [v54 setObject:v53 forKeyedSubscript:@"Action"];
          v84 = [*(a1 + 32) assertTypeToEnum];
          v85 = [v39 objectForKeyedSubscript:@"AssertType"];
          [v84 objectForKeyedSubscript:v85];
          v87 = v86 = a1;
          [v54 setObject:v87 forKeyedSubscript:@"AssertType"];

          v88 = [v54 objectForKeyedSubscript:@"AssertType"];

          if (!v88)
          {
            [v54 setObject:&unk_282C10758 forKeyedSubscript:@"AssertType"];
          }

          v89 = [v39 objectForKeyedSubscript:@"AssertionOnBehalfOfPID"];
          [v54 setObject:v89 forKeyedSubscript:@"AssertionOnBehalfOfPID"];

          [v205 addObject:v54];
          a1 = v86;
          if ([*(v86 + 32) optimizesSubSecondAssertions])
          {
            v6 = 0x277D3F000;
            if ([v53 intValue] == 4)
            {
              v90 = [*(a1 + 32) subSecondUUIDStartEntryCache];
              v91 = [v90 objectForKeyedSubscript:v49];

              if (v91)
              {
                v92 = [v54 objectForKeyedSubscript:@"timestampActionOffset"];
                [v92 doubleValue];
                v94 = v93;
                v95 = [v91 objectForKeyedSubscript:@"timestampActionOffset"];
                [v95 doubleValue];
                v97 = v94 - v96;

                if (v97 < *(a1 + 56))
                {
                  [v199 addObject:v54];
                  [v199 addObject:v91];
                }

LABEL_91:
                v11 = 0x277D3F000;
              }

              else
              {
                v11 = 0x277D3F000;
              }

LABEL_100:

LABEL_101:
              goto LABEL_102;
            }

            v11 = 0x277D3F000;
            if ([v53 intValue])
            {
              goto LABEL_101;
            }

            v133 = [*(a1 + 32) subSecondUUIDStartEntryCache];
LABEL_94:
            v91 = v133;
            [v133 setObject:v54 forKey:v49];
            goto LABEL_100;
          }

          v6 = 0x277D3F000;
          v11 = 0x277D3F000;
          if (!+[PLPowerAssertionAgent shouldOptimizeSmallAssertions])
          {
            goto LABEL_101;
          }

          if ([v53 intValue] != 4)
          {
            if ([v53 intValue])
            {
              goto LABEL_101;
            }

            v133 = [*(a1 + 32) UUIDStartEntryCache];
            goto LABEL_94;
          }

          v98 = [*(a1 + 32) UUIDStartEntryCache];
          v91 = [v98 objectForKeyedSubscript:v49];

          if (v91)
          {
            v99 = [v54 objectForKeyedSubscript:@"timestampActionOffset"];
            [v99 doubleValue];
            v101 = v100;
            v102 = [v91 objectForKeyedSubscript:@"timestampActionOffset"];
            [v102 doubleValue];
            v104 = v101 - v103;

            if (v104 >= 1000.0)
            {
              goto LABEL_91;
            }

            v197 = [v91 objectForKeyedSubscript:@"AssertName"];
            v105 = [*(a1 + 40) stringByReplacingMatchesInString:v197 options:0 range:0 withTemplate:{objc_msgSend(v197, "length"), @"HEX"}];
            v106 = MEMORY[0x277CCACA8];
            v107 = [v91 objectForKeyedSubscript:@"pid"];
            v108 = [v91 objectForKeyedSubscript:@"AssertionOnBehalfOfPID"];
            v109 = [v91 objectForKeyedSubscript:@"AssertType"];
            v198 = v105;
            v110 = [v106 stringWithFormat:@"%@, %@, %@, %@", v107, v108, v109, v105];

            a1 = v201;
            v111 = [*(v201 + 32) assertionUUIDCache];
            v112 = [v111 valueForKey:v110];

            v200 = v112;
            if (!v112)
            {
              v132 = [*(v201 + 32) assertionUUIDCache];
              [v132 setObject:v49 forKey:v110];
              v6 = 0x277D3F000uLL;
              goto LABEL_97;
            }

            v6 = 0x277D3F000uLL;
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v113 = *(v201 + 32);
              v114 = objc_opt_class();
              v221[0] = MEMORY[0x277D85DD0];
              v221[1] = 3221225472;
              v221[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_559;
              v221[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v221[4] = v114;
              v115 = v221;
              if (qword_2811F4260 != -1)
              {
                dispatch_once(&qword_2811F4260, v115);
              }

              if (byte_2811F4172 == 1)
              {
                v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion before optimization=%@\n", v91];
                v194 = MEMORY[0x277D3F178];
                v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                v118 = [v117 lastPathComponent];
                v119 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
                [v194 logMessage:v116 fromFile:v118 fromFunction:v119 fromLineNumber:985];

                v120 = v116;
                v121 = PLLogCommon();
                if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v242 = v120;
                  _os_log_debug_impl(&dword_21A4C6000, v121, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                a1 = v201;
                v6 = 0x277D3F000uLL;
              }
            }

            [v91 setObject:&stru_282B650A0 forKeyedSubscript:@"AssertName"];
            v122 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v200, "unsignedLongLongValue")}];
            [v91 setObject:v122 forKeyedSubscript:@"GlobalUniqueIDReference"];

            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v123 = *(a1 + 32);
              v124 = objc_opt_class();
              v220[0] = MEMORY[0x277D85DD0];
              v220[1] = 3221225472;
              v220[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_565;
              v220[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v220[4] = v124;
              v125 = v220;
              if (qword_2811F4268 != -1)
              {
                dispatch_once(&qword_2811F4268, v125);
              }

              if (byte_2811F4173 == 1)
              {
                v126 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion after optimization=%@\n", v91];
                v195 = MEMORY[0x277D3F178];
                v127 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
                v128 = [v127 lastPathComponent];
                v129 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
                v130 = v195;
                v196 = v126;
                [v130 logMessage:v126 fromFile:v128 fromFunction:v129 fromLineNumber:988];

                v131 = PLLogCommon();
                if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v242 = v196;
                  _os_log_debug_impl(&dword_21A4C6000, v131, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                a1 = v201;
                v6 = 0x277D3F000;
                v132 = v196;
LABEL_97:
              }
            }
          }

          v11 = 0x277D3F000;
          goto LABEL_100;
        }

LABEL_102:

        objc_autoreleasePoolPop(contexta);
        ++v38;
      }

      while (v209 != v38);
      v209 = [v203 countByEnumeratingWithState:&v224 objects:v238 count:16];
    }

    while (v209);
  }

  if ([*(v6 + 384) debugEnabled])
  {
    v134 = *(a1 + 32);
    v135 = objc_opt_class();
    v219[0] = MEMORY[0x277D85DD0];
    v219[1] = 3221225472;
    v219[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_571;
    v219[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v219[4] = v135;
    v136 = v219;
    if (qword_2811F4270 != -1)
    {
      dispatch_once(&qword_2811F4270, v136);
    }

    if (byte_2811F4174 == 1)
    {
      v137 = [MEMORY[0x277CCACA8] stringWithFormat:@"creates=%@\n", v205];
      v138 = MEMORY[0x277D3F178];
      v139 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v140 = [v139 lastPathComponent];
      v141 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
      [v138 logMessage:v137 fromFile:v140 fromFunction:v141 fromLineNumber:1000];

      v142 = PLLogCommon();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v242 = v137;
        _os_log_debug_impl(&dword_21A4C6000, v142, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v11 = 0x277D3F000uLL;
    }
  }

  v143 = [*(a1 + 32) optimizesSubSecondAssertions];
  v144 = [v205 count];
  if (v143)
  {
    if (v144)
    {
      v145 = PLLogAssertion();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
      {
        v189 = [v205 count];
        *buf = 134217984;
        v242 = v189;
        _os_log_debug_impl(&dword_21A4C6000, v145, OS_LOG_TYPE_DEBUG, "creates count %lu", buf, 0xCu);
      }

      v146 = PLLogAssertion();
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
      {
        v190 = [v199 count];
        *buf = 134217984;
        v242 = v190;
        _os_log_debug_impl(&dword_21A4C6000, v146, OS_LOG_TYPE_DEBUG, "subSecondAssertions count %lu", buf, 0xCu);
      }

      if ([v199 count])
      {
        [v205 removeObjectsInArray:v199];
      }

      v147 = PLLogAssertion();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
      {
        v191 = [v205 count];
        *buf = 134217984;
        v242 = v191;
        _os_log_debug_impl(&dword_21A4C6000, v147, OS_LOG_TYPE_DEBUG, "final creates count %lu", buf, 0xCu);
      }

      v148 = *(a1 + 32);
      v149 = v204;
      v236 = v204;
      v237 = v205;
      v150 = MEMORY[0x277CBEAC0];
      v151 = &v237;
      v152 = &v236;
      goto LABEL_124;
    }
  }

  else if (v144)
  {
    v148 = *(a1 + 32);
    v149 = v204;
    v234 = v204;
    v235 = v205;
    v150 = MEMORY[0x277CBEAC0];
    v151 = &v235;
    v152 = &v234;
LABEL_124:
    v153 = [v150 dictionaryWithObjects:v151 forKeys:v152 count:1];
    [v148 logEntries:v153 withGroupID:v149];
    goto LABEL_126;
  }

  v153 = [objc_alloc(*(v11 + 400)) initWithEntryKey:v204];
  [v153 setIsErrorEntry:1];
  [v153 setObject:@"No assertions created" forKeyedSubscript:@"__PLEntryErrorString__"];
  [*(a1 + 32) logEntry:v153];
LABEL_126:

  v154 = [*(a1 + 32) assertionUUIDCache];
  [v154 removeAllObjects];

  v155 = [*(a1 + 32) UUIDStartEntryCache];
  [v155 removeAllObjects];

  v156 = [*(a1 + 32) subSecondUUIDStartEntryCache];
  [v156 removeAllObjects];

  v157 = [objc_alloc(*(v11 + 400)) initWithEntryKey:v192];
  if ([*(a1 + 32) firstBufferDrain])
  {
    v158 = &unk_282C10740;
  }

  else
  {
    v158 = *(a1 + 48);
  }

  [v157 setObject:v158 forKeyedSubscript:@"Reason"];
  v159 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v203, "count")}];
  [v157 setObject:v159 forKeyedSubscript:@"TotalCount"];

  [*(a1 + 32) logEntry:v157];
  if ([*(v6 + 384) debugEnabled])
  {
    v160 = *(a1 + 32);
    v161 = objc_opt_class();
    v218[0] = MEMORY[0x277D85DD0];
    v218[1] = 3221225472;
    v218[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_580;
    v218[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v218[4] = v161;
    v162 = v218;
    if (qword_2811F4278 != -1)
    {
      dispatch_once(&qword_2811F4278, v162);
    }

    if (byte_2811F4175 == 1)
    {
      v163 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer usage: %@", v157];
      v164 = MEMORY[0x277D3F178];
      v165 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v166 = [v165 lastPathComponent];
      v167 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
      [v164 logMessage:v163 fromFile:v166 fromFunction:v167 fromLineNumber:1041];

      v168 = PLLogCommon();
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v242 = v163;
        _os_log_debug_impl(&dword_21A4C6000, v168, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v169 = [*(v6 + 384) debugEnabled];
  if (a3)
  {
    if (v169)
    {
      v170 = *(a1 + 32);
      v171 = objc_opt_class();
      v217[0] = MEMORY[0x277D85DD0];
      v217[1] = 3221225472;
      v217[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_586;
      v217[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v217[4] = v171;
      v172 = v217;
      if (qword_2811F4280 != -1)
      {
        dispatch_once(&qword_2811F4280, v172);
      }

      if (byte_2811F4176 == 1)
      {
        v173 = [MEMORY[0x277CCACA8] stringWithFormat:@"buffer overflowed (%lu), taking snapshot", objc_msgSend(v203, "count")];
        v174 = MEMORY[0x277D3F178];
        v175 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
        v176 = [v175 lastPathComponent];
        v177 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
        [v174 logMessage:v173 fromFile:v176 fromFunction:v177 fromLineNumber:1045];

        v178 = PLLogCommon();
        if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v242 = v173;
          _os_log_debug_impl(&dword_21A4C6000, v178, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [*(a1 + 32) logEventForwardAssertionWithReason:&unk_282C10710 asSnapshot:1];
  }

  else if (v169)
  {
    v179 = *(a1 + 32);
    v180 = objc_opt_class();
    v216[0] = MEMORY[0x277D85DD0];
    v216[1] = 3221225472;
    v216[2] = __37__PLPowerAssertionAgent_logInterval___block_invoke_592;
    v216[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v216[4] = v180;
    v181 = v216;
    if (qword_2811F4288 != -1)
    {
      dispatch_once(&qword_2811F4288, v181);
    }

    if (byte_2811F4177 == 1)
    {
      v182 = [MEMORY[0x277CCACA8] stringWithFormat:@"No buffer overflow (%lu)", objc_msgSend(v203, "count")];
      v183 = MEMORY[0x277D3F178];
      v184 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
      v185 = [v184 lastPathComponent];
      v186 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logInterval:]_block_invoke_2"];
      [v183 logMessage:v182 fromFile:v185 fromFunction:v186 fromLineNumber:1048];

      v187 = PLLogCommon();
      if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v242 = v182;
        _os_log_debug_impl(&dword_21A4C6000, v187, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) setFirstBufferDrain:0];
  [*(a1 + 32) setLastActivityOverflow:a3];

  v188 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416E = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_531(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F416F = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_538(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4170 = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_547(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4171 = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_559(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4172 = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_565(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4173 = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_571(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4174 = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_580(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4175 = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4176 = result;
  return result;
}

uint64_t __37__PLPowerAssertionAgent_logInterval___block_invoke_592(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4177 = result;
  return result;
}

- (void)logEventForwardAssertionWithReason:(id)a3 asSnapshot:(BOOL)a4
{
  if (a4)
  {
    [(PLPowerAssertionAgent *)self logSnapshot:a3];
  }

  else
  {
    [(PLPowerAssertionAgent *)self logInterval:a3];
  }
}

- (void)logAggregatedAssertionActivity
{
  v55 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = IOPMCopyAssertionActivityAggregate();
    v4 = [MEMORY[0x277CBEAA8] monotonicDate];
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    if (v3)
    {
      v5 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
      v6 = [v5 objectForKey:@"assertionAggregated"];

      if (v6)
      {
        v7 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
        v35 = [v7 objectForKeyedSubscript:@"assertionAggregatedDate"];

        v8 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
        [v8 objectForKey:@"assertionAggregated"];
        SamplesDelta = IOReportCreateSamplesDelta();

        v44[0] = 0;
        v44[1] = v44;
        v44[2] = 0x2020000000;
        v44[3] = 0;
        v38 = 0;
        v39 = &v38;
        v40 = 0x3032000000;
        v41 = __Block_byref_object_copy__4;
        v42 = __Block_byref_object_dispose__4;
        v43 = [MEMORY[0x277CBEB38] dictionary];
        block[13] = MEMORY[0x277D85DD0];
        block[14] = 3221225472;
        block[15] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke;
        block[16] = &unk_27825B818;
        block[17] = v44;
        block[18] = &v49;
        IOReportIterate();
        block[5] = MEMORY[0x277D85DD0];
        block[6] = 3221225472;
        block[7] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_2;
        block[8] = &unk_27825B840;
        block[9] = self;
        block[10] = &v45;
        block[11] = v44;
        block[12] = &v38;
        IOReportIterate();
        v10 = [MEMORY[0x277D3F0C0] sharedInstance];
        [v10 createDistributionEventIntervalWithDistributionID:22 withChildNodeNameToWeight:v39[5] withStartDate:v35 withEndDate:v4];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v11 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_613;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v11;
          if (qword_2811F42A0 != -1)
          {
            dispatch_once(&qword_2811F42A0, block);
          }

          if (byte_2811F417A == 1)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"+++++++++++++++++++++++++++++++++++++++++"];
            v13 = MEMORY[0x277D3F178];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            v15 = [v14 lastPathComponent];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivity]"];
            [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:1149];

            v17 = PLLogCommon();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v54 = v12;
              _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v18 = objc_opt_class();
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_619;
          v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v36[4] = v18;
          if (qword_2811F42A8 != -1)
          {
            dispatch_once(&qword_2811F42A8, v36);
          }

          if (byte_2811F417B == 1)
          {
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"OLDlogging: start date: %@, end dat %@, accounting:%@", v35, v4, v39[5]];
            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
            v22 = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivity]"];
            [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:1150];

            v24 = PLLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v54 = v19;
              _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        _Block_object_dispose(&v38, 8);

        _Block_object_dispose(v44, 8);
      }

      v25 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
      [v25 setObject:v3 forKey:@"assertionAggregated"];

      v26 = [(PLPowerAssertionAgent *)self assertionAggregatedLastSample];
      [v26 setObject:v4 forKey:@"assertionAggregatedDate"];

      v27 = *(v50 + 6);
      v28 = [(PLPowerAssertionAgent *)self aggregateMaxPIDCount];
      v29 = *(v50 + 6);
      if (v28 >= v27)
      {
        v31 = *(v46 + 6);
        v32 = [(PLPowerAssertionAgent *)self aggregteZeroDeltaCount];
        v33 = v29 == v31;
        v29 = *(v50 + 6);
        if (v32 != v33)
        {
          [(PLPowerAssertionAgent *)self logEventPointAggregateResetWithReason:0 withPidCount:*(v50 + 6)];
          goto LABEL_25;
        }

        v30 = 4;
      }

      else
      {
        v30 = 3;
      }
    }

    else
    {
      v29 = 0;
      v30 = 1;
    }

    [(PLPowerAssertionAgent *)self resetIOPMSetAssertionActivityAggregateWithReason:v30 withPidCount:v29];
LABEL_25:
    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v49, 8);
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) += IOReportArrayGetValueAtIndex();
  ++*(*(*(a1 + 40) + 8) + 24);
  return 0;
}

uint64_t __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  ChannelID = IOReportChannelGetChannelID();
  ValueAtIndex = IOReportArrayGetValueAtIndex();
  v4 = IOReportArrayGetValueAtIndex();
  v5 = IOReportArrayGetValueAtIndex();
  if (ValueAtIndex < 0 || v4 < 0 || (v6 = v5, v5 < 0))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    if (ValueAtIndex || v4 || v5)
    {
      if (*(*(*(a1 + 48) + 8) + 24) >= 1)
      {
        v7 = IOReportArrayGetValueAtIndex() / *(*(*(a1 + 48) + 8) + 24);
        if (v7 > 0.05)
        {
          v8 = [*(a1 + 32) bundleIDForAssertionProcessPID:ChannelID];
          v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v9 forKeyedSubscript:v8];

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v10 = *(a1 + 32);
            v11 = objc_opt_class();
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_3;
            v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v31[4] = v11;
            if (qword_2811F4290 != -1)
            {
              dispatch_once(&qword_2811F4290, v31);
            }

            if (byte_2811F4178 == 1)
            {
              v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total %llu, name %@, contribution %d, weight %f", *(*(*(a1 + 48) + 8) + 24), v8, ChannelID, *&v7];
              v28 = MEMORY[0x277D3F178];
              v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
              v13 = [v29 lastPathComponent];
              v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivity]_block_invoke_2"];
              [v28 logMessage:v12 fromFile:v13 fromFunction:v14 fromLineNumber:1134];

              v15 = PLLogCommon();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v33 = v12;
                _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }
        }
      }
    }

    else
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_608;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v17;
      if (qword_2811F4298 != -1)
      {
        dispatch_once(&qword_2811F4298, block);
      }

      if (byte_2811F4179 == 1)
      {
        v18 = MEMORY[0x277CCACA8];
        v19 = [*(a1 + 32) bundleIDForAssertionProcessPID:ChannelID];
        v20 = [v18 stringWithFormat:@"pid=%d name=%@ eff1=%lld eff2=%lld eff3=%lld", ChannelID, v19, ValueAtIndex, v4, v6];

        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPowerAssertionAgent.m"];
        v23 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPowerAssertionAgent logAggregatedAssertionActivity]_block_invoke_2"];
        [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:1140];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4178 = result;
  return result;
}

uint64_t __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_608(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4179 = result;
  return result;
}

uint64_t __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_613(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F417A = result;
  return result;
}

uint64_t __55__PLPowerAssertionAgent_logAggregatedAssertionActivity__block_invoke_619(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F417B = result;
  return result;
}

uint64_t __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F417C = result;
  return result;
}

uint64_t __70__PLPowerAssertionAgent_logAggregatedAssertionActivityPLDataStructure__block_invoke_625(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F417D = result;
  return result;
}

@end