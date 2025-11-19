@interface PLAccountingDebugService
+ (void)load;
+ (void)printError:(id)a3;
- (BOOL)verifyLastPowerEventWithRootNodeID:(int)a3 withPower:(double)a4;
- (NSArray)testNames;
- (PLAccountingDebugService)init;
- (void)blockingClearQueues;
- (void)blockingLogGasGaugeWithTotalPower:(double)a3 withStartDate:(id)a4 withEndDate:(id)a5;
- (void)testAddRemoveDistributionEventForward;
- (void)testChunk;
- (void)testCorrection1;
- (void)testCorrection2;
- (void)testCorrection3;
- (void)testCorrection4;
- (void)testCorrectionInMemory;
- (void)testCurrentDistributionEventForward;
- (void)testDistribution1;
- (void)testDistribution2;
- (void)testDistribution3;
- (void)testDistribution4;
- (void)testDistribution5;
- (void)testPerformance;
- (void)testPowerEventIntervalOverlap;
- (void)testQualification1;
- (void)testQualification2;
- (void)testQualification3;
- (void)testReloadAfter1;
- (void)testReloadAfter2;
- (void)testReloadBefore1;
- (void)testReloadBefore2;
- (void)testShortDistributionEventDuration;
- (void)testShortQualificationEventDuration;
@end

@implementation PLAccountingDebugService

- (NSArray)testNames
{
  testNames = self->_testNames;
  if (!testNames)
  {
    self->_testNames = &unk_282C144C0;
    testNames = self->_testNames;
  }

  return testNames;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingDebugService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAccountingDebugService)init
{
  v21 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || !objc_msgSend(MEMORY[0x277D3F180], "BOOLForKey:ifNotSet:", @"PLAccountingDebugService_Debug", 0))
  {
    v12 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PLAccountingDebugService;
    v3 = [(PLOperator *)&v19 init];
    v4 = v3;
    if (v3)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [(PLAccountingDebugService *)v3 testNames];
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [@"com.apple.powerlogd.accounting." stringByAppendingString:*(*(&v15 + 1) + 8 * v9)];
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, NotificationCallback_0, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v7);
      }
    }

    self = v4;
    v12 = self;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)testDistribution1
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution1]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:148];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v26 = 138412290;
    v27 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v26, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [v9 dateByAddingTimeInterval:0.0];
  [v10 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C17E00 withStartDate:v11];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v12 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [v9 dateByAddingTimeInterval:3.0];
  [v12 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C17E28 withStartDate:v13];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:1.0];
  v14 = [MEMORY[0x277D3F0C0] debugInstance];
  v15 = [v9 dateByAddingTimeInterval:1.0];
  [v14 createPowerEventForwardWithRootNodeID:10 withPower:v15 withStartDate:3.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:3.0];
  v16 = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [v9 dateByAddingTimeInterval:2.0];
  [v16 createPowerEventForwardWithRootNodeID:10 withPower:v17 withStartDate:4.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:4.0];
  v18 = [&unk_282C144D8 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v18 withTotalEnergy:10 withRootNodeID:0.000833333333 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:10 withRootNodeID:0.000416666667 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:10 withRootNodeID:0.000416666667 withEpsilon:0.001];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v20 = MEMORY[0x277D3F178];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v22 = [v21 lastPathComponent];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution1]"];
  [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:197];

  v24 = PLLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v26 = 138412290;
    v27 = v19;
    _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", &v26, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)testDistribution2
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution2]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:202];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138412290;
    v26 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v25, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [v9 dateByAddingTimeInterval:1.0];
  v12 = [v9 dateByAddingTimeInterval:3.0];
  [v10 createPowerEventIntervalWithRootNodeID:2 withPower:v11 withStartDate:v12 withEndDate:5.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:5.0];
  v13 = [MEMORY[0x277D3F0C0] debugInstance];
  v14 = [v9 dateByAddingTimeInterval:0.0];
  [v13 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17E50 withEndDate:v14];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:1.0];
  v15 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [v9 dateByAddingTimeInterval:4.0];
  [v15 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17E78 withEndDate:v16];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.75];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App2" withWeight:0.25];
  v17 = [&unk_282C144F0 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v17 withTotalEnergy:2 withRootNodeID:0.00277777778 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:2 withRootNodeID:0.00208333333 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:2 withRootNodeID:0.000694444444 withEpsilon:0.001];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v19 = MEMORY[0x277D3F178];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v21 = [v20 lastPathComponent];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution2]"];
  [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:247];

  v23 = PLLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138412290;
    v26 = v18;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", &v25, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)testDistribution3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution3]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:252];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138412290;
    v26 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v25, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [v9 dateByAddingTimeInterval:0.0];
  v12 = [v9 dateByAddingTimeInterval:5.0];
  [v10 createPowerEventIntervalWithRootNodeID:2 withPower:v11 withStartDate:v12 withEndDate:8.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:8.0];
  v13 = [MEMORY[0x277D3F0C0] debugInstance];
  v14 = [v9 dateByAddingTimeInterval:1.0];
  [v13 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17EA0 withEndDate:v14];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:1.0];
  v15 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [v9 dateByAddingTimeInterval:10.0];
  [v15 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17EC8 withEndDate:v16];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  v17 = [&unk_282C14508 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v17 withTotalEnergy:2 withRootNodeID:0.0111111111 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"kernel_task" withTotalEnergy:2 withRootNodeID:0.00444444444 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:2 withRootNodeID:0.00666666667 withEpsilon:0.001];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v19 = MEMORY[0x277D3F178];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v21 = [v20 lastPathComponent];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution3]"];
  [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:296];

  v23 = PLLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138412290;
    v26 = v18;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", &v25, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)testDistribution4
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution4]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:301];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = 0.0;
  for (i = 1; i != 12; ++i)
  {
    v12 = [MEMORY[0x277D3F0C0] debugInstance];
    v13 = [v9 dateByAddingTimeInterval:v10];
    [v12 createPowerEventForwardWithRootNodeID:10 withPower:v13 withStartDate:i];

    [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:i];
    v14 = [MEMORY[0x277D3F0C0] debugInstance];
    v15 = [v9 dateByAddingTimeInterval:v10 + 0.5];
    [v14 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C17EF0 withStartDate:v15];

    [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.75];
    [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.25];
    v10 = v10 + 1.0;
  }

  v16 = [&unk_282C14520 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v16 withTotalEnergy:10 withRootNodeID:0.0152777778 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:10 withRootNodeID:0.0113541667 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:10 withRootNodeID:0.00378472222 withEpsilon:0.001];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v18 = MEMORY[0x277D3F178];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v20 = [v19 lastPathComponent];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution4]"];
  [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:341];

  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v17;
    _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)testDistribution5
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution5]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:346];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v32 = 138412290;
    v33 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v32, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [v9 dateByAddingTimeInterval:0.0];
  [v10 createPowerEventBackwardWithRootNodeID:11 withPower:v11 withEndDate:5.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:11 withPower:5.0];
  v12 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [v9 dateByAddingTimeInterval:5.0];
  [v12 createPowerEventBackwardWithRootNodeID:11 withPower:v13 withEndDate:10.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:11 withPower:10.0];
  v14 = [MEMORY[0x277D3F0C0] debugInstance];
  v15 = [v9 dateByAddingTimeInterval:1.0];
  [v14 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C17F18 withStartDate:v15];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:4 withNodeName:@"App1" withWeight:1.0];
  v16 = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [v9 dateByAddingTimeInterval:2.0];
  [v16 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C17F40 withStartDate:v17];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:4 withNodeName:@"App1" withWeight:1.0];
  v18 = [MEMORY[0x277D3F0C0] debugInstance];
  v19 = [v9 dateByAddingTimeInterval:4.0];
  [v18 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C17F68 withStartDate:v19];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:4 withNodeName:@"App2" withWeight:1.0];
  v20 = [MEMORY[0x277D3F0C0] debugInstance];
  v21 = [v9 dateByAddingTimeInterval:6.0];
  [v20 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C17F90 withStartDate:v21];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:4 withNodeName:@"App2" withWeight:1.0];
  v22 = [MEMORY[0x277D3F0C0] debugInstance];
  v23 = [v9 dateByAddingTimeInterval:0.0];
  [v22 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C17FB8 withStartDate:v23];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:3 withNodeName:@"apsd" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:3 withNodeName:@"App1" withWeight:0.5];
  v24 = [&unk_282C14538 objectAtIndexedSubscript:11];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v24 withTotalEnergy:11 withRootNodeID:0.0138888889 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"apsd" withTotalEnergy:11 withRootNodeID:0.00694444444 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:11 withRootNodeID:0.0115740741 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:11 withRootNodeID:0.00231481481 withEpsilon:0.001];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v26 = MEMORY[0x277D3F178];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v28 = [v27 lastPathComponent];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution5]"];
  [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:421];

  v30 = PLLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v32 = 138412290;
    v33 = v25;
    _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", &v32, 0xCu);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)testCorrection1
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection1]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:426];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v62 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [v9 dateByAddingTimeInterval:0.0];
  v12 = [v9 dateByAddingTimeInterval:1.0];
  [v10 addPowerMeasurementEventIntervalWithPower:v11 withStartDate:v12 withEndDate:5.0];

  v13 = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v14 = [v13 mutableCopy];

  [v14 removeObject:&unk_282C11820];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v55 objects:v60 count:16];
  v50 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v56;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v56 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v55 + 1) + 8 * i) intValue];
        v21 = [&unk_282C14550 objectAtIndexedSubscript:v20];
        v22 = [v21 intValue];

        switch(v22)
        {
          case 3:
            v25 = [MEMORY[0x277D3F0C0] debugInstance];
            v26 = [v9 dateByAddingTimeInterval:0.0];
            v27 = 1.0;
            v30 = [v9 dateByAddingTimeInterval:1.0];
            [v25 createPowerEventIntervalWithRootNodeID:v20 withPower:v26 withStartDate:v30 withEndDate:1.0];

            v15 = v50;
            break;
          case 2:
            v28 = [MEMORY[0x277D3F0C0] debugInstance];
            v29 = [v9 dateByAddingTimeInterval:0.0];
            [v28 createPowerEventBackwardWithRootNodeID:v20 withPower:v29 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:0.0];
            v25 = [MEMORY[0x277D3F0C0] debugInstance];
            v27 = 1.0;
            v26 = [v9 dateByAddingTimeInterval:1.0];
            [v25 createPowerEventBackwardWithRootNodeID:v20 withPower:v26 withEndDate:1.0];
            break;
          case 1:
            v23 = [MEMORY[0x277D3F0C0] debugInstance];
            v24 = [v9 dateByAddingTimeInterval:0.0];
            [v23 createPowerEventForwardWithRootNodeID:v20 withPower:v24 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:1.0];
            v25 = [MEMORY[0x277D3F0C0] debugInstance];
            v26 = [v9 dateByAddingTimeInterval:1.0];
            v27 = 2.0;
            [v25 createPowerEventForwardWithRootNodeID:v20 withPower:v26 withStartDate:2.0];
            break;
          default:
            v43 = v15;
            goto LABEL_27;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:v27];
      }

      v17 = [v15 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v31 = [MEMORY[0x277D3F0C0] debugInstance];
  v32 = [v9 dateByAddingTimeInterval:0.0];
  [v31 createPowerEventForwardWithRootNodeID:10 withPower:v32 withStartDate:1.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:1.0];
  v33 = [MEMORY[0x277D3F0C0] debugInstance];
  v34 = [v9 dateByAddingTimeInterval:1.0];
  [v33 createPowerEventForwardWithRootNodeID:10 withPower:v34 withStartDate:2.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:2.0];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v35 = v15;
  v36 = [v35 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v52;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v52 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v51 + 1) + 8 * j) intValue];
        v41 = [&unk_282C14568 objectAtIndexedSubscript:v40];
        -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v41, v40, (5.0 / ([v35 count] + 1) + -1.0) / 3600.0);
      }

      v37 = [v35 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v37);
  }

  v42 = [&unk_282C14580 objectAtIndexedSubscript:10];
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v42, 10, (5.0 / ([v35 count] + 1) + -1.0) / 3600.0);

  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v44 = MEMORY[0x277D3F178];
  v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v46 = [v45 lastPathComponent];
  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection1]"];
  [v44 logMessage:v43 fromFile:v46 fromFunction:v47 fromLineNumber:518];

  v48 = PLLogCommon();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v62 = v43;
    _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v15 = v50;
LABEL_27:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)testCorrection2
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection2]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:522];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v69 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [v9 dateByAddingTimeInterval:0.0];
  v12 = [v9 dateByAddingTimeInterval:1.0];
  [v10 addPowerMeasurementEventIntervalWithPower:v11 withStartDate:v12 withEndDate:5.0];

  v13 = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v14 = [v13 mutableCopy];

  [v14 removeObject:&unk_282C11880];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v62 objects:v67 count:16];
  v57 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v63;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v62 + 1) + 8 * i) intValue];
        v21 = [&unk_282C14598 objectAtIndexedSubscript:v20];
        v22 = [v21 intValue];

        switch(v22)
        {
          case 3:
            v34 = [MEMORY[0x277D3F0C0] debugInstance];
            v35 = [v9 dateByAddingTimeInterval:0.0];
            v36 = [v9 dateByAddingTimeInterval:1.0];
            [v34 createPowerEventIntervalWithRootNodeID:v20 withPower:v35 withStartDate:v36 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:1.0];
            v27 = [MEMORY[0x277D3F0C0] debugInstance];
            v28 = [v9 dateByAddingTimeInterval:1.0];
            v29 = 2.0;
            v37 = [v9 dateByAddingTimeInterval:2.0];
            [v27 createPowerEventIntervalWithRootNodeID:v20 withPower:v28 withStartDate:v37 withEndDate:2.0];

            v15 = v57;
            break;
          case 2:
            v30 = [MEMORY[0x277D3F0C0] debugInstance];
            v31 = [v9 dateByAddingTimeInterval:0.0];
            [v30 createPowerEventBackwardWithRootNodeID:v20 withPower:v31 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:0.0];
            v32 = [MEMORY[0x277D3F0C0] debugInstance];
            v33 = [v9 dateByAddingTimeInterval:1.0];
            [v32 createPowerEventBackwardWithRootNodeID:v20 withPower:v33 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:1.0];
            v27 = [MEMORY[0x277D3F0C0] debugInstance];
            v29 = 2.0;
            v28 = [v9 dateByAddingTimeInterval:2.0];
            [v27 createPowerEventBackwardWithRootNodeID:v20 withPower:v28 withEndDate:2.0];
            break;
          case 1:
            v23 = [MEMORY[0x277D3F0C0] debugInstance];
            v24 = [v9 dateByAddingTimeInterval:0.0];
            [v23 createPowerEventForwardWithRootNodeID:v20 withPower:v24 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:1.0];
            v25 = [MEMORY[0x277D3F0C0] debugInstance];
            v26 = [v9 dateByAddingTimeInterval:1.0];
            [v25 createPowerEventForwardWithRootNodeID:v20 withPower:v26 withStartDate:2.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:2.0];
            v27 = [MEMORY[0x277D3F0C0] debugInstance];
            v28 = [v9 dateByAddingTimeInterval:2.0];
            v29 = 3.0;
            [v27 createPowerEventForwardWithRootNodeID:v20 withPower:v28 withStartDate:3.0];
            break;
          default:
            v50 = v15;
            goto LABEL_27;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:v29];
      }

      v17 = [v15 countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v38 = [MEMORY[0x277D3F0C0] debugInstance];
  v39 = [v9 dateByAddingTimeInterval:0.0];
  v40 = [v9 dateByAddingTimeInterval:3.0];
  [v38 createPowerEventIntervalWithRootNodeID:2 withPower:v39 withStartDate:v40 withEndDate:1.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:1.0];
  v41 = [v15 count];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v42 = v15;
  v43 = [v42 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v59;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v59 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v58 + 1) + 8 * j) intValue];
        v48 = [&unk_282C145B0 objectAtIndexedSubscript:v47];
        [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:v48 withTotalCorrectionEnergy:v47 withRootNodeID:(5.0 / (v41 + 1) + -1.0) / 3600.0];
      }

      v44 = [v42 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v44);
  }

  v49 = [&unk_282C145C8 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:v49 withTotalCorrectionEnergy:2 withRootNodeID:0.0];

  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v51 = MEMORY[0x277D3F178];
  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v53 = [v52 lastPathComponent];
  v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection2]"];
  [v51 logMessage:v50 fromFile:v53 fromFunction:v54 fromLineNumber:629];

  v55 = PLLogCommon();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v69 = v50;
    _os_log_debug_impl(&dword_21A4C6000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v15 = v57;
LABEL_27:

  v56 = *MEMORY[0x277D85DE8];
}

- (void)testCorrection3
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection3]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:633];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [v9 dateByAddingTimeInterval:0.0];
  v12 = [v9 dateByAddingTimeInterval:1.0];
  [v10 addPowerMeasurementEventIntervalWithPower:v11 withStartDate:v12 withEndDate:5.0];

  v13 = [MEMORY[0x277D3F0C0] debugInstance];
  v14 = [v9 dateByAddingTimeInterval:1.0];
  v15 = [v9 dateByAddingTimeInterval:3.0];
  [v13 addPowerMeasurementEventIntervalWithPower:v14 withStartDate:v15 withEndDate:5.0];

  v16 = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v17 = [v16 mutableCopy];

  [v17 removeObject:&unk_282C11880];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v69 objects:v74 count:16];
  v64 = v18;
  if (v19)
  {
    v20 = v19;
    v21 = *v70;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v70 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v69 + 1) + 8 * i) intValue];
        v24 = [&unk_282C145E0 objectAtIndexedSubscript:v23];
        v25 = [v24 intValue];

        switch(v25)
        {
          case 3:
            v37 = [MEMORY[0x277D3F0C0] debugInstance];
            v38 = [v9 dateByAddingTimeInterval:0.0];
            v39 = [v9 dateByAddingTimeInterval:1.0];
            [v37 createPowerEventIntervalWithRootNodeID:v23 withPower:v38 withStartDate:v39 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v23 withPower:1.0];
            v30 = [MEMORY[0x277D3F0C0] debugInstance];
            v31 = [v9 dateByAddingTimeInterval:1.0];
            v32 = 2.0;
            v40 = [v9 dateByAddingTimeInterval:2.0];
            [v30 createPowerEventIntervalWithRootNodeID:v23 withPower:v31 withStartDate:v40 withEndDate:2.0];

            v18 = v64;
            break;
          case 2:
            v33 = [MEMORY[0x277D3F0C0] debugInstance];
            v34 = [v9 dateByAddingTimeInterval:0.0];
            [v33 createPowerEventBackwardWithRootNodeID:v23 withPower:v34 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v23 withPower:0.0];
            v35 = [MEMORY[0x277D3F0C0] debugInstance];
            v36 = [v9 dateByAddingTimeInterval:1.0];
            [v35 createPowerEventBackwardWithRootNodeID:v23 withPower:v36 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v23 withPower:1.0];
            v30 = [MEMORY[0x277D3F0C0] debugInstance];
            v32 = 2.0;
            v31 = [v9 dateByAddingTimeInterval:2.0];
            [v30 createPowerEventBackwardWithRootNodeID:v23 withPower:v31 withEndDate:2.0];
            break;
          case 1:
            v26 = [MEMORY[0x277D3F0C0] debugInstance];
            v27 = [v9 dateByAddingTimeInterval:0.0];
            [v26 createPowerEventForwardWithRootNodeID:v23 withPower:v27 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v23 withPower:1.0];
            v28 = [MEMORY[0x277D3F0C0] debugInstance];
            v29 = [v9 dateByAddingTimeInterval:1.0];
            [v28 createPowerEventForwardWithRootNodeID:v23 withPower:v29 withStartDate:2.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v23 withPower:2.0];
            v30 = [MEMORY[0x277D3F0C0] debugInstance];
            v31 = [v9 dateByAddingTimeInterval:2.0];
            v32 = 3.0;
            [v30 createPowerEventForwardWithRootNodeID:v23 withPower:v31 withStartDate:3.0];
            break;
          default:
            v57 = v18;
            goto LABEL_27;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v23 withPower:v32];
      }

      v20 = [v18 countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v41 = [MEMORY[0x277D3F0C0] debugInstance];
  v42 = [v9 dateByAddingTimeInterval:0.0];
  v43 = [v9 dateByAddingTimeInterval:1.0];
  [v41 createPowerEventIntervalWithRootNodeID:2 withPower:v42 withStartDate:v43 withEndDate:2.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:2.0];
  v44 = [MEMORY[0x277D3F0C0] debugInstance];
  v45 = [v9 dateByAddingTimeInterval:0.0];
  [v44 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17FE0 withEndDate:v45];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  v46 = [MEMORY[0x277D3F0C0] debugInstance];
  v47 = [v9 dateByAddingTimeInterval:4.0];
  [v46 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C18008 withEndDate:v47];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v48 = v18;
  v49 = [v48 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v66;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v66 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v65 + 1) + 8 * j) intValue];
        v54 = [&unk_282C145F8 objectAtIndexedSubscript:v53];
        -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v54, v53, (5.0 / ([v48 count] + 2) + -1.0) / 3600.0);
      }

      v50 = [v48 countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v50);
  }

  v55 = [&unk_282C14610 objectAtIndexedSubscript:2];
  v56 = [v48 count];
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:v55 withTotalCorrectionEnergy:2 withRootNodeID:(5.0 / (v56 + 2) + -1.0 + 5.0 / (v56 + 2) + -1.0) / 3600.0];

  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"kernel_task", 2, (5.0 / ([v48 count] + 2) + -1.0) / 3600.0);
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"App1", 2, (5.0 / ([v48 count] + 2) + -1.0) * 3.0 * 0.5 / 3600.0);
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v58 = MEMORY[0x277D3F178];
  v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v60 = [v59 lastPathComponent];
  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection3]"];
  [v58 logMessage:v57 fromFile:v60 fromFunction:v61 fromLineNumber:780];

  v62 = PLLogCommon();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v57;
    _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v18 = v64;
LABEL_27:

  v63 = *MEMORY[0x277D85DE8];
}

- (void)testCorrection4
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection4]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:785];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [v9 dateByAddingTimeInterval:0.0];
  v12 = [v9 dateByAddingTimeInterval:1.0];
  [v10 addPowerMeasurementEventIntervalWithPower:v11 withStartDate:v12 withEndDate:5.0];

  v13 = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v14 = [v13 mutableCopy];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v61 objects:v66 count:16];
  v56 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v62;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v61 + 1) + 8 * i) intValue];
        v21 = [&unk_282C14628 objectAtIndexedSubscript:v20];
        v22 = [v21 intValue];

        switch(v22)
        {
          case 3:
            v34 = [MEMORY[0x277D3F0C0] debugInstance];
            v35 = [v9 dateByAddingTimeInterval:0.0];
            v29 = 1.0;
            v36 = [v9 dateByAddingTimeInterval:1.0];
            [v34 createPowerEventIntervalWithRootNodeID:v20 withPower:v35 withStartDate:v36 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:1.0];
            v27 = [MEMORY[0x277D3F0C0] debugInstance];
            v28 = [v9 dateByAddingTimeInterval:1.0];
            v37 = [v9 dateByAddingTimeInterval:2.0];
            [v27 createPowerEventIntervalWithRootNodeID:v20 withPower:v28 withStartDate:v37 withEndDate:1.0];

            v15 = v56;
            break;
          case 2:
            v30 = [MEMORY[0x277D3F0C0] debugInstance];
            v31 = [v9 dateByAddingTimeInterval:0.0];
            [v30 createPowerEventBackwardWithRootNodeID:v20 withPower:v31 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:0.0];
            v32 = [MEMORY[0x277D3F0C0] debugInstance];
            v33 = [v9 dateByAddingTimeInterval:1.0];
            [v32 createPowerEventBackwardWithRootNodeID:v20 withPower:v33 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:1.0];
            v27 = [MEMORY[0x277D3F0C0] debugInstance];
            v29 = 2.0;
            v28 = [v9 dateByAddingTimeInterval:2.0];
            [v27 createPowerEventBackwardWithRootNodeID:v20 withPower:v28 withEndDate:2.0];
            break;
          case 1:
            v23 = [MEMORY[0x277D3F0C0] debugInstance];
            v24 = [v9 dateByAddingTimeInterval:0.0];
            [v23 createPowerEventForwardWithRootNodeID:v20 withPower:v24 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:1.0];
            v25 = [MEMORY[0x277D3F0C0] debugInstance];
            v26 = [v9 dateByAddingTimeInterval:1.0];
            [v25 createPowerEventForwardWithRootNodeID:v20 withPower:v26 withStartDate:2.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:2.0];
            v27 = [MEMORY[0x277D3F0C0] debugInstance];
            v28 = [v9 dateByAddingTimeInterval:2.0];
            v29 = 3.0;
            [v27 createPowerEventForwardWithRootNodeID:v20 withPower:v28 withStartDate:3.0];
            break;
          default:
            v49 = v15;
            goto LABEL_27;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v20 withPower:v29];
      }

      v17 = [v15 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v38 = [MEMORY[0x277D3F0C0] debugInstance];
  v39 = [v9 dateByAddingTimeInterval:0.0];
  [v38 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18030 withStartDate:v39];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v40 = [MEMORY[0x277D3F0C0] debugInstance];
  v41 = [v9 dateByAddingTimeInterval:3.0];
  [v40 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18058 withStartDate:v41];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v42 = v15;
  v43 = [v42 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v58;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v58 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v57 + 1) + 8 * j) intValue];
        v48 = [&unk_282C14640 objectAtIndexedSubscript:v47];
        -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v48, v47, (5.0 / [v42 count] + -1.0) / 3600.0);
      }

      v44 = [v42 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v44);
  }

  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"App1", 10, (5.0 / [v42 count] + -1.0) * 0.5 / 3600.0);
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"App2", 10, (5.0 / [v42 count] + -1.0) * 0.5 / 3600.0);
  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v50 = MEMORY[0x277D3F178];
  v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v52 = [v51 lastPathComponent];
  v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection4]"];
  [v50 logMessage:v49 fromFile:v52 fromFunction:v53 fromLineNumber:911];

  v54 = PLLogCommon();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v49;
    _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v15 = v56;
LABEL_27:

  v55 = *MEMORY[0x277D85DE8];
}

- (void)testQualification1
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification1]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:916];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v78 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v66 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = [MEMORY[0x277D3F0C0] allQualificationIDs];
  v10 = [v9 mutableCopy];

  [v10 removeObject:&unk_282C11880];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v71 objects:v76 count:16];
  v64 = v11;
  v65 = self;
  if (v12)
  {
    v13 = v12;
    v14 = *v72;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v72 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v71 + 1) + 8 * i) intValue];
        v17 = [&unk_282C14658 objectAtIndexedSubscript:v16];
        v18 = [v17 intValue];

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v21 = [MEMORY[0x277D3F0C0] debugInstance];
            v22 = [v66 dateByAddingTimeInterval:0.0];
            v25 = [v66 dateByAddingTimeInterval:5.0];
            [v21 createQualificationEventIntervalWithQualificationID:v16 withChildNodeNames:&unk_282C146D0 withStartDate:v22 withEndDate:v25];

            v11 = v64;
          }

          else
          {
            if (v18 != 4)
            {
LABEL_35:
              v29 = v11;
              goto LABEL_38;
            }

            v21 = [MEMORY[0x277D3F0C0] debugInstance];
            v22 = [v66 dateByAddingTimeInterval:1.0];
            [v21 createQualificationEventPointWithQualificationID:v16 withChildNodeNames:&unk_282C146E8 withStartDate:v22];
          }
        }

        else if (v18 == 1)
        {
          v23 = [MEMORY[0x277D3F0C0] debugInstance];
          v24 = [v66 dateByAddingTimeInterval:0.0];
          [v23 createQualificationEventForwardWithQualificationID:v16 withChildNodeNames:&unk_282C14670 withStartDate:v24];

          [(PLAccountingDebugService *)v65 verifyLastQualificationEventWithQualificationID:v16 withNodeName:@"__GLOBAL__"];
          self = v65;
          v21 = [MEMORY[0x277D3F0C0] debugInstance];
          v22 = [v66 dateByAddingTimeInterval:5.0];
          [v21 createQualificationEventForwardWithQualificationID:v16 withChildNodeNames:&unk_282C14688 withStartDate:v22];
        }

        else
        {
          if (v18 != 2)
          {
            goto LABEL_35;
          }

          v19 = [MEMORY[0x277D3F0C0] debugInstance];
          v20 = [v66 dateByAddingTimeInterval:0.0];
          [v19 createQualificationEventBackwardWithQualificationID:v16 withChildNodeNames:&unk_282C146A0 withEndDate:v20];

          [(PLAccountingDebugService *)v65 verifyLastQualificationEventWithQualificationID:v16 withNodeName:@"__GLOBAL__"];
          self = v65;
          v21 = [MEMORY[0x277D3F0C0] debugInstance];
          v22 = [v66 dateByAddingTimeInterval:5.0];
          [v21 createQualificationEventBackwardWithQualificationID:v16 withChildNodeNames:&unk_282C146B8 withEndDate:v22];
        }

        [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:v16 withNodeName:@"__GLOBAL__"];
      }

      v13 = [v11 countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v26 = [MEMORY[0x277D3F0C0] debugInstance];
  v27 = [v66 dateByAddingTimeInterval:0.0];
  v28 = [v66 dateByAddingTimeInterval:1.0];
  [v26 addPowerMeasurementEventIntervalWithPower:v27 withStartDate:v28 withEndDate:5.0];

  [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v29 = v70 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v68;
    while (2)
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v68 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v67 + 1) + 8 * j) intValue];
        v35 = [&unk_282C14700 objectAtIndexedSubscript:v34];
        v36 = [v35 intValue];

        switch(v36)
        {
          case 3:
            v41 = [MEMORY[0x277D3F0C0] debugInstance];
            v42 = [v66 dateByAddingTimeInterval:0.0];
            v43 = 1.0;
            [v66 dateByAddingTimeInterval:1.0];
            v49 = v48 = v29;
            [v41 createPowerEventIntervalWithRootNodeID:v34 withPower:v42 withStartDate:v49 withEndDate:1.0];

            v29 = v48;
            break;
          case 2:
            v44 = [MEMORY[0x277D3F0C0] debugInstance];
            v45 = [v66 dateByAddingTimeInterval:0.0];
            [v44 createPowerEventBackwardWithRootNodeID:v34 withPower:v45 withEndDate:0.0];

            [(PLAccountingDebugService *)v65 verifyLastPowerEventWithRootNodeID:v34 withPower:0.0];
            v46 = [MEMORY[0x277D3F0C0] debugInstance];
            v47 = [v66 dateByAddingTimeInterval:1.0];
            [v46 createPowerEventBackwardWithRootNodeID:v34 withPower:v47 withEndDate:1.0];

            [(PLAccountingDebugService *)v65 verifyLastPowerEventWithRootNodeID:v34 withPower:1.0];
            v41 = [MEMORY[0x277D3F0C0] debugInstance];
            v43 = 2.0;
            v42 = [v66 dateByAddingTimeInterval:2.0];
            [v41 createPowerEventBackwardWithRootNodeID:v34 withPower:v42 withEndDate:2.0];
            break;
          case 1:
            v37 = [MEMORY[0x277D3F0C0] debugInstance];
            v38 = [v66 dateByAddingTimeInterval:0.0];
            [v37 createPowerEventForwardWithRootNodeID:v34 withPower:v38 withStartDate:1.0];

            [(PLAccountingDebugService *)v65 verifyLastPowerEventWithRootNodeID:v34 withPower:1.0];
            v39 = [MEMORY[0x277D3F0C0] debugInstance];
            v40 = [v66 dateByAddingTimeInterval:1.0];
            [v39 createPowerEventForwardWithRootNodeID:v34 withPower:v40 withStartDate:2.0];

            [(PLAccountingDebugService *)v65 verifyLastPowerEventWithRootNodeID:v34 withPower:2.0];
            v41 = [MEMORY[0x277D3F0C0] debugInstance];
            v42 = [v66 dateByAddingTimeInterval:2.0];
            v43 = 3.0;
            [v41 createPowerEventForwardWithRootNodeID:v34 withPower:v42 withStartDate:3.0];
            break;
          default:
            v57 = v29;
            goto LABEL_37;
        }

        [(PLAccountingDebugService *)v65 verifyLastPowerEventWithRootNodeID:v34 withPower:v43];
      }

      v31 = [v29 countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v50 = [MEMORY[0x277D3F0C0] debugInstance];
  v51 = [v66 dateByAddingTimeInterval:0.0];
  [v50 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18080 withStartDate:v51];

  [(PLAccountingDebugService *)v65 verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)v65 verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v52 = [MEMORY[0x277D3F0C0] debugInstance];
  v53 = [v66 dateByAddingTimeInterval:3.0];
  [v52 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C180A8 withStartDate:v53];

  [(PLAccountingDebugService *)v65 verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)v65 verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v54 = [MEMORY[0x277D3F0C0] debugInstance];
  v55 = [v66 dateByAddingTimeInterval:0.0];
  [v54 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14718 withStartDate:v55];

  v56 = [&unk_282C14730 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)v65 verifyAggregateRootNodeEnergyWithNodeName:v56 withRootNodeID:10 withEnergy:v66 withDate:0.0];

  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](v65, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App1", 10, v66, 5.0 / [v29 count] * 0.5 / 3600.0);
  -[PLAccountingDebugService verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:](v65, "verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:", 2, 10, @"App1", v66, 5.0 / [v29 count] * 0.5 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](v65, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App2", 10, v66, 5.0 / [v29 count] * 0.5 / 3600.0);
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v58 = MEMORY[0x277D3F178];
  v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v60 = [v59 lastPathComponent];
  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification1]"];
  [v58 logMessage:v57 fromFile:v60 fromFunction:v61 fromLineNumber:1093];

  v62 = PLLogCommon();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v78 = v57;
    _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_37:
  v11 = v64;

LABEL_38:
  v63 = *MEMORY[0x277D85DE8];
}

- (void)testQualification2
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification2]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1097];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v87 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] allQualificationIDs];
  v11 = [v10 mutableCopy];

  [v11 removeObject:&unk_282C11880];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v80 objects:v85 count:16];
  v74 = v12;
  v75 = self;
  if (v13)
  {
    v14 = v13;
    v15 = *v81;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v81 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v80 + 1) + 8 * v16) intValue];
        v18 = [&unk_282C14748 objectAtIndexedSubscript:v17];
        v19 = [v18 intValue];

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v22 = [MEMORY[0x277D3F0C0] debugInstance];
            v23 = [v9 dateByAddingTimeInterval:0.0];
            v26 = [v9 dateByAddingTimeInterval:5.0];
            [v22 createQualificationEventIntervalWithQualificationID:v17 withChildNodeNames:&unk_282C147C0 withStartDate:v23 withEndDate:v26];

            v12 = v74;
          }

          else
          {
            if (v19 != 4)
            {
LABEL_35:
              v38 = v12;
              goto LABEL_38;
            }

            v22 = [MEMORY[0x277D3F0C0] debugInstance];
            v23 = [v9 dateByAddingTimeInterval:0.0];
            [v22 createQualificationEventPointWithQualificationID:v17 withChildNodeNames:&unk_282C147D8 withStartDate:v23];
          }
        }

        else if (v19 == 1)
        {
          v24 = [MEMORY[0x277D3F0C0] debugInstance];
          v25 = [v9 dateByAddingTimeInterval:0.0];
          [v24 createQualificationEventForwardWithQualificationID:v17 withChildNodeNames:&unk_282C14760 withStartDate:v25];

          [(PLAccountingDebugService *)v75 verifyLastQualificationEventWithQualificationID:v17 withNodeName:@"__GLOBAL__"];
          self = v75;
          v22 = [MEMORY[0x277D3F0C0] debugInstance];
          v23 = [v9 dateByAddingTimeInterval:5.0];
          [v22 createQualificationEventForwardWithQualificationID:v17 withChildNodeNames:&unk_282C14778 withStartDate:v23];
        }

        else
        {
          if (v19 != 2)
          {
            goto LABEL_35;
          }

          v20 = [MEMORY[0x277D3F0C0] debugInstance];
          v21 = [v9 dateByAddingTimeInterval:0.0];
          [v20 createQualificationEventBackwardWithQualificationID:v17 withChildNodeNames:&unk_282C14790 withEndDate:v21];

          [(PLAccountingDebugService *)v75 verifyLastQualificationEventWithQualificationID:v17 withNodeName:@"__GLOBAL__"];
          self = v75;
          v22 = [MEMORY[0x277D3F0C0] debugInstance];
          v23 = [v9 dateByAddingTimeInterval:5.0];
          [v22 createQualificationEventBackwardWithQualificationID:v17 withChildNodeNames:&unk_282C147A8 withEndDate:v23];
        }

        [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:v17 withNodeName:@"__GLOBAL__"];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v80 objects:v85 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v27 = [MEMORY[0x277D3F0C0] debugInstance];
  v28 = [v9 dateByAddingTimeInterval:0.0];
  [v27 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C147F0 withStartDate:v28];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:2 withNodeName:@"locationd"];
  v29 = [MEMORY[0x277D3F0C0] debugInstance];
  v30 = [v9 dateByAddingTimeInterval:1.0];
  [v29 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14808 withStartDate:v30];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:2 withNodeName:@"locationd"];
  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:2 withNodeName:@"App1"];
  v31 = [MEMORY[0x277D3F0C0] debugInstance];
  v32 = [v9 dateByAddingTimeInterval:3.0];
  [v31 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14820 withStartDate:v32];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:2 withNodeName:@"locationd"];
  v33 = [MEMORY[0x277D3F0C0] debugInstance];
  v34 = [v9 dateByAddingTimeInterval:0.0];
  v35 = [v9 dateByAddingTimeInterval:3.0];
  [v33 addPowerMeasurementEventIntervalWithPower:v34 withStartDate:v35 withEndDate:5.0];

  v36 = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v37 = [v36 mutableCopy];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v38 = v37;
  v39 = [v38 countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v77;
    while (2)
    {
      v42 = 0;
      do
      {
        if (*v77 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v76 + 1) + 8 * v42) intValue];
        v44 = [&unk_282C14838 objectAtIndexedSubscript:v43];
        v45 = [v44 intValue];

        switch(v45)
        {
          case 3:
            v56 = [MEMORY[0x277D3F0C0] debugInstance];
            v57 = [v9 dateByAddingTimeInterval:0.0];
            [v9 dateByAddingTimeInterval:1.0];
            v59 = v58 = v38;
            [v56 createPowerEventIntervalWithRootNodeID:v43 withPower:v57 withStartDate:v59 withEndDate:1.0];

            [(PLAccountingDebugService *)v75 verifyLastPowerEventWithRootNodeID:v43 withPower:1.0];
            self = v75;
            v50 = [MEMORY[0x277D3F0C0] debugInstance];
            v51 = [v9 dateByAddingTimeInterval:1.0];
            v60 = [v9 dateByAddingTimeInterval:2.0];
            [v50 createPowerEventIntervalWithRootNodeID:v43 withPower:v51 withStartDate:v60 withEndDate:1.0];

            v38 = v58;
            break;
          case 2:
            v52 = [MEMORY[0x277D3F0C0] debugInstance];
            v53 = [v9 dateByAddingTimeInterval:0.0];
            [v52 createPowerEventBackwardWithRootNodeID:v43 withPower:v53 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v43 withPower:1.0];
            v54 = [MEMORY[0x277D3F0C0] debugInstance];
            v55 = [v9 dateByAddingTimeInterval:1.0];
            [v54 createPowerEventBackwardWithRootNodeID:v43 withPower:v55 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v43 withPower:1.0];
            v50 = [MEMORY[0x277D3F0C0] debugInstance];
            v51 = [v9 dateByAddingTimeInterval:2.0];
            [v50 createPowerEventBackwardWithRootNodeID:v43 withPower:v51 withEndDate:1.0];
            break;
          case 1:
            v46 = [MEMORY[0x277D3F0C0] debugInstance];
            v47 = [v9 dateByAddingTimeInterval:0.0];
            [v46 createPowerEventForwardWithRootNodeID:v43 withPower:v47 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v43 withPower:1.0];
            v48 = [MEMORY[0x277D3F0C0] debugInstance];
            v49 = [v9 dateByAddingTimeInterval:1.0];
            [v48 createPowerEventForwardWithRootNodeID:v43 withPower:v49 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v43 withPower:1.0];
            v50 = [MEMORY[0x277D3F0C0] debugInstance];
            v51 = [v9 dateByAddingTimeInterval:2.0];
            [v50 createPowerEventForwardWithRootNodeID:v43 withPower:v51 withStartDate:1.0];
            break;
          default:
            v67 = v38;
            goto LABEL_37;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v43 withPower:1.0];
        ++v42;
      }

      while (v40 != v42);
      v40 = [v38 countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v61 = [MEMORY[0x277D3F0C0] debugInstance];
  v62 = [v9 dateByAddingTimeInterval:0.0];
  [v61 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C180D0 withStartDate:v62];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v63 = [MEMORY[0x277D3F0C0] debugInstance];
  v64 = [v9 dateByAddingTimeInterval:3.0];
  [v63 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C180F8 withStartDate:v64];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v65 = [&unk_282C14850 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:v65 withRootNodeID:10 withEnergy:v9 withDate:0.0];

  v66 = [&unk_282C14868 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:2 withRootNodeID:10 withNodeName:v66 withQualificationEnergy:v9 withDate:0.0];

  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App1", 10, v9, 5.0 / [v38 count] / 3600.0);
  -[PLAccountingDebugService verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:](self, "verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:", 2, 10, @"App1", v9, 5.0 / [v38 count] * 0.25 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App2", 10, v9, 5.0 / [v38 count] / 3600.0);
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:2 withRootNodeID:10 withNodeName:@"App2" withQualificationEnergy:v9 withDate:0.0];
  v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v68 = MEMORY[0x277D3F178];
  v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v70 = [v69 lastPathComponent];
  v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification2]"];
  [v68 logMessage:v67 fromFile:v70 fromFunction:v71 fromLineNumber:1307];

  v72 = PLLogCommon();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v87 = v67;
    _os_log_debug_impl(&dword_21A4C6000, v72, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_37:
  v12 = v74;

LABEL_38:
  v73 = *MEMORY[0x277D85DE8];
}

- (void)testQualification3
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification3]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1311];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v83 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] allQualificationIDs];
  v11 = [v10 mutableCopy];

  [v11 removeObject:&unk_282C118B0];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v76 objects:v81 count:16];
  v70 = v12;
  v71 = self;
  if (v13)
  {
    v14 = v13;
    v15 = *v77;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v77 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v76 + 1) + 8 * v16) intValue];
        v18 = [&unk_282C14880 objectAtIndexedSubscript:v17];
        v19 = [v18 intValue];

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v22 = [MEMORY[0x277D3F0C0] debugInstance];
            v23 = [v9 dateByAddingTimeInterval:0.0];
            v26 = [v9 dateByAddingTimeInterval:5.0];
            [v22 createQualificationEventIntervalWithQualificationID:v17 withChildNodeNames:&unk_282C148F8 withStartDate:v23 withEndDate:v26];

            v12 = v70;
          }

          else
          {
            if (v19 != 4)
            {
LABEL_35:
              v36 = v12;
              goto LABEL_38;
            }

            v22 = [MEMORY[0x277D3F0C0] debugInstance];
            v23 = [v9 dateByAddingTimeInterval:0.0];
            [v22 createQualificationEventPointWithQualificationID:v17 withChildNodeNames:&unk_282C14910 withStartDate:v23];
          }
        }

        else if (v19 == 1)
        {
          v24 = [MEMORY[0x277D3F0C0] debugInstance];
          v25 = [v9 dateByAddingTimeInterval:0.0];
          [v24 createQualificationEventForwardWithQualificationID:v17 withChildNodeNames:&unk_282C14898 withStartDate:v25];

          [(PLAccountingDebugService *)v71 verifyLastQualificationEventWithQualificationID:v17 withNodeName:@"__GLOBAL__"];
          self = v71;
          v22 = [MEMORY[0x277D3F0C0] debugInstance];
          v23 = [v9 dateByAddingTimeInterval:5.0];
          [v22 createQualificationEventForwardWithQualificationID:v17 withChildNodeNames:&unk_282C148B0 withStartDate:v23];
        }

        else
        {
          if (v19 != 2)
          {
            goto LABEL_35;
          }

          v20 = [MEMORY[0x277D3F0C0] debugInstance];
          v21 = [v9 dateByAddingTimeInterval:0.0];
          [v20 createQualificationEventBackwardWithQualificationID:v17 withChildNodeNames:&unk_282C148C8 withEndDate:v21];

          [(PLAccountingDebugService *)v71 verifyLastQualificationEventWithQualificationID:v17 withNodeName:@"__GLOBAL__"];
          self = v71;
          v22 = [MEMORY[0x277D3F0C0] debugInstance];
          v23 = [v9 dateByAddingTimeInterval:5.0];
          [v22 createQualificationEventBackwardWithQualificationID:v17 withChildNodeNames:&unk_282C148E0 withEndDate:v23];
        }

        [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:v17 withNodeName:@"__GLOBAL__"];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v27 = [MEMORY[0x277D3F0C0] debugInstance];
  v28 = [v9 dateByAddingTimeInterval:0.0];
  [v27 createQualificationEventPointWithQualificationID:11 withChildNodeNames:&unk_282C14928 withStartDate:v28];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:11 withNodeName:@"App1"];
  v29 = [MEMORY[0x277D3F0C0] debugInstance];
  v30 = [v9 dateByAddingTimeInterval:1.0];
  [v29 createQualificationEventPointWithQualificationID:11 withChildNodeNames:&unk_282C14940 withStartDate:v30];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:11 withNodeName:@"App2"];
  v31 = [MEMORY[0x277D3F0C0] debugInstance];
  v32 = [v9 dateByAddingTimeInterval:0.0];
  v33 = [v9 dateByAddingTimeInterval:3.0];
  [v31 addPowerMeasurementEventIntervalWithPower:v32 withStartDate:v33 withEndDate:5.0];

  v34 = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v35 = [v34 mutableCopy];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v73;
    while (2)
    {
      v40 = 0;
      do
      {
        if (*v73 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v72 + 1) + 8 * v40) intValue];
        v42 = [&unk_282C14958 objectAtIndexedSubscript:v41];
        v43 = [v42 intValue];

        switch(v43)
        {
          case 3:
            v54 = [MEMORY[0x277D3F0C0] debugInstance];
            v55 = [v9 dateByAddingTimeInterval:0.0];
            [v9 dateByAddingTimeInterval:1.0];
            v57 = v56 = v36;
            [v54 createPowerEventIntervalWithRootNodeID:v41 withPower:v55 withStartDate:v57 withEndDate:1.0];

            [(PLAccountingDebugService *)v71 verifyLastPowerEventWithRootNodeID:v41 withPower:1.0];
            self = v71;
            v48 = [MEMORY[0x277D3F0C0] debugInstance];
            v49 = [v9 dateByAddingTimeInterval:1.0];
            v58 = [v9 dateByAddingTimeInterval:2.0];
            [v48 createPowerEventIntervalWithRootNodeID:v41 withPower:v49 withStartDate:v58 withEndDate:1.0];

            v36 = v56;
            break;
          case 2:
            v50 = [MEMORY[0x277D3F0C0] debugInstance];
            v51 = [v9 dateByAddingTimeInterval:0.0];
            [v50 createPowerEventBackwardWithRootNodeID:v41 withPower:v51 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v41 withPower:1.0];
            v52 = [MEMORY[0x277D3F0C0] debugInstance];
            v53 = [v9 dateByAddingTimeInterval:1.0];
            [v52 createPowerEventBackwardWithRootNodeID:v41 withPower:v53 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v41 withPower:1.0];
            v48 = [MEMORY[0x277D3F0C0] debugInstance];
            v49 = [v9 dateByAddingTimeInterval:2.0];
            [v48 createPowerEventBackwardWithRootNodeID:v41 withPower:v49 withEndDate:1.0];
            break;
          case 1:
            v44 = [MEMORY[0x277D3F0C0] debugInstance];
            v45 = [v9 dateByAddingTimeInterval:0.0];
            [v44 createPowerEventForwardWithRootNodeID:v41 withPower:v45 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v41 withPower:1.0];
            v46 = [MEMORY[0x277D3F0C0] debugInstance];
            v47 = [v9 dateByAddingTimeInterval:1.0];
            [v46 createPowerEventForwardWithRootNodeID:v41 withPower:v47 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v41 withPower:1.0];
            v48 = [MEMORY[0x277D3F0C0] debugInstance];
            v49 = [v9 dateByAddingTimeInterval:2.0];
            [v48 createPowerEventForwardWithRootNodeID:v41 withPower:v49 withStartDate:1.0];
            break;
          default:
            v63 = v36;
            goto LABEL_37;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v41 withPower:1.0];
        ++v40;
      }

      while (v38 != v40);
      v38 = [v36 countByEnumeratingWithState:&v72 objects:v80 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v59 = [MEMORY[0x277D3F0C0] debugInstance];
  v60 = [v9 dateByAddingTimeInterval:0.0];
  [v59 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C18120 withEndDate:v60];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App2" withWeight:0.5];
  v61 = [&unk_282C14970 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:v61 withRootNodeID:2 withEnergy:v9 withDate:0.0];

  v62 = [&unk_282C14988 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:11 withRootNodeID:2 withNodeName:v62 withQualificationEnergy:v9 withDate:0.0];

  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App1", 2, v9, 5.0 / [v36 count] / 3600.0);
  -[PLAccountingDebugService verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:](self, "verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:", 11, 2, @"App1", v9, 5.0 / [v36 count] * 0.25 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App2", 2, v9, 5.0 / [v36 count] / 3600.0);
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:11 withRootNodeID:2 withNodeName:@"App2" withQualificationEnergy:v9 withDate:0.0];
  v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v64 = MEMORY[0x277D3F178];
  v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v66 = [v65 lastPathComponent];
  v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification3]"];
  [v64 logMessage:v63 fromFile:v66 fromFunction:v67 fromLineNumber:1503];

  v68 = PLLogCommon();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v83 = v63;
    _os_log_debug_impl(&dword_21A4C6000, v68, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_37:
  v12 = v70;

LABEL_38:
  v69 = *MEMORY[0x277D85DE8];
}

- (void)testReloadBefore1
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore1]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1509];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", v9];
  v11 = MEMORY[0x277D3F178];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v13 = [v12 lastPathComponent];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore1]"];
  [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:1512];

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v10;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v16 = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [v9 dateByAddingTimeInterval:0.0];
  [v16 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18148 withStartDate:v17];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v18 = [MEMORY[0x277D3F0C0] debugInstance];
  v19 = [v9 dateByAddingTimeInterval:4.0];
  [v18 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18170 withStartDate:v19];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.75];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.25];
  v20 = [MEMORY[0x277D3F0C0] debugInstance];
  v21 = [v9 dateByAddingTimeInterval:0.0];
  [v20 createPowerEventForwardWithRootNodeID:10 withPower:v21 withStartDate:5.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:5.0];
  v22 = [MEMORY[0x277D3F0C0] debugInstance];
  v23 = [v9 dateByAddingTimeInterval:5.0];
  [v22 createPowerEventForwardWithRootNodeID:10 withPower:v23 withStartDate:10.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:10.0];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v25 = MEMORY[0x277D3F178];
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v27 = [v26 lastPathComponent];
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore1]"];
  [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:1548];

  v29 = PLLogCommon();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v24;
    _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)testReloadAfter1
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter1]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1552];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v33 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277D3F2A0] sharedCore];
  v10 = [v9 storage];
  v11 = [MEMORY[0x277D3F0E0] entryKey];
  v12 = [v10 entriesForKey:v11];

  v13 = [v12 firstObject];
  v14 = [v13 range];
  v15 = [v14 startDate];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", v15];
  v17 = MEMORY[0x277D3F178];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v19 = [v18 lastPathComponent];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter1]"];
  [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:1558];

  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v33 = v16;
    _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v22 = [MEMORY[0x277D3F0C0] debugInstance];
  v23 = [v15 dateByAddingTimeInterval:6.0];
  [v22 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18198 withStartDate:v23];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:1.0];
  v24 = [&unk_282C149A0 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v24 withTotalEnergy:10 withRootNodeID:0.00694444444 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:10 withRootNodeID:0.00381944444 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:10 withRootNodeID:0.003125 withEpsilon:0.001];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v26 = MEMORY[0x277D3F178];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v28 = [v27 lastPathComponent];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter1]"];
  [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:1582];

  v30 = PLLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v33 = v25;
    _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)testReloadBefore2
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore2]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1586];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", v9];
  v11 = MEMORY[0x277D3F178];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v13 = [v12 lastPathComponent];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore2]"];
  [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:1589];

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v10;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v16 = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [v9 dateByAddingTimeInterval:0.0];
  v18 = [v9 dateByAddingTimeInterval:1.0];
  [v16 addPowerMeasurementEventIntervalWithPower:v17 withStartDate:v18 withEndDate:5.0];

  v19 = [MEMORY[0x277D3F0C0] debugInstance];
  v20 = [v9 dateByAddingTimeInterval:1.0];
  v21 = [v9 dateByAddingTimeInterval:3.0];
  [v19 addPowerMeasurementEventIntervalWithPower:v20 withStartDate:v21 withEndDate:5.0];

  v22 = [MEMORY[0x277D3F0C0] debugInstance];
  v23 = [v9 dateByAddingTimeInterval:0.0];
  [v22 createPowerEventBackwardWithRootNodeID:2 withPower:v23 withEndDate:1.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:1.0];
  v24 = [MEMORY[0x277D3F0C0] debugInstance];
  v25 = [v9 dateByAddingTimeInterval:1.0];
  [v24 createPowerEventBackwardWithRootNodeID:2 withPower:v25 withEndDate:1.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:1.0];
  v26 = [MEMORY[0x277D3F0C0] debugInstance];
  v27 = [v9 dateByAddingTimeInterval:0.0];
  [v26 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C181C0 withEndDate:v27];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  v28 = [MEMORY[0x277D3F0C0] debugInstance];
  v29 = [v9 dateByAddingTimeInterval:4.0];
  [v28 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C181E8 withEndDate:v29];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v31 = MEMORY[0x277D3F178];
  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v33 = [v32 lastPathComponent];
  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore2]"];
  [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:1634];

  v35 = PLLogCommon();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v30;
    _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)testReloadAfter2
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter2]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1637];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v80 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277D3F2A0] sharedCore];
  v10 = [v9 storage];
  v11 = [MEMORY[0x277D3F0B8] entryKey];
  v12 = [v10 entriesForKey:v11];

  v66 = v12;
  v65 = [v12 firstObject];
  v13 = [v65 range];
  v14 = [v13 startDate];

  v68 = v14;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", v14];
  v16 = MEMORY[0x277D3F178];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v18 = [v17 lastPathComponent];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter2]"];
  [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:1643];

  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v80 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v21 = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v22 = [v21 mutableCopy];

  [v22 removeObject:&unk_282C11880];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v73 objects:v78 count:16];
  v67 = v23;
  if (v24)
  {
    v25 = v24;
    v26 = *v74;
    while (2)
    {
      v27 = 0;
      do
      {
        if (*v74 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v73 + 1) + 8 * v27) intValue];
        v29 = [&unk_282C149B8 objectAtIndexedSubscript:v28];
        v30 = [v29 intValue];

        switch(v30)
        {
          case 3:
            v42 = [MEMORY[0x277D3F0C0] debugInstance];
            v43 = [v68 dateByAddingTimeInterval:0.0];
            v44 = [v68 dateByAddingTimeInterval:1.0];
            [v42 createPowerEventIntervalWithRootNodeID:v28 withPower:v43 withStartDate:v44 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v28 withPower:1.0];
            v35 = [MEMORY[0x277D3F0C0] debugInstance];
            v36 = [v68 dateByAddingTimeInterval:1.0];
            v37 = 2.0;
            v23 = v67;
            v45 = [v68 dateByAddingTimeInterval:2.0];
            [v35 createPowerEventIntervalWithRootNodeID:v28 withPower:v36 withStartDate:v45 withEndDate:2.0];

            break;
          case 2:
            v38 = [MEMORY[0x277D3F0C0] debugInstance];
            v39 = [v68 dateByAddingTimeInterval:0.0];
            [v38 createPowerEventBackwardWithRootNodeID:v28 withPower:v39 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v28 withPower:0.0];
            v40 = [MEMORY[0x277D3F0C0] debugInstance];
            v41 = [v68 dateByAddingTimeInterval:1.0];
            [v40 createPowerEventBackwardWithRootNodeID:v28 withPower:v41 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v28 withPower:1.0];
            v35 = [MEMORY[0x277D3F0C0] debugInstance];
            v37 = 2.0;
            v36 = [v68 dateByAddingTimeInterval:2.0];
            [v35 createPowerEventBackwardWithRootNodeID:v28 withPower:v36 withEndDate:2.0];
            break;
          case 1:
            v31 = [MEMORY[0x277D3F0C0] debugInstance];
            v32 = [v68 dateByAddingTimeInterval:0.0];
            [v31 createPowerEventForwardWithRootNodeID:v28 withPower:v32 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v28 withPower:1.0];
            v33 = [MEMORY[0x277D3F0C0] debugInstance];
            v34 = [v68 dateByAddingTimeInterval:1.0];
            [v33 createPowerEventForwardWithRootNodeID:v28 withPower:v34 withStartDate:2.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v28 withPower:2.0];
            v35 = [MEMORY[0x277D3F0C0] debugInstance];
            v36 = [v68 dateByAddingTimeInterval:2.0];
            v37 = 3.0;
            [v35 createPowerEventForwardWithRootNodeID:v28 withPower:v36 withStartDate:3.0];
            break;
          default:
            v56 = v23;
            v62 = v65;
            v63 = v66;
            goto LABEL_29;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:v28 withPower:v37];
        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v73 objects:v78 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v46 = v23;
  v47 = [v46 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v70;
    do
    {
      v50 = 0;
      do
      {
        if (*v70 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [*(*(&v69 + 1) + 8 * v50) intValue];
        v52 = [&unk_282C149D0 objectAtIndexedSubscript:v51];
        -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v52, v51, (5.0 / ([v46 count] + 1) + -1.0) / 3600.0);

        v53 = [&unk_282C149E8 objectAtIndexedSubscript:v51];
        -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", v53, v51, v68, 5.0 / ([v46 count] + 1) / 3600.0);

        ++v50;
      }

      while (v48 != v50);
      v48 = [v46 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v48);
  }

  v54 = [&unk_282C14A00 objectAtIndexedSubscript:2];
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v54, 2, (5.0 / ([v46 count] + 1) + -1.0) / 3600.0);

  v55 = [&unk_282C14A18 objectAtIndexedSubscript:2];
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", v55, 2, v68, 5.0 / ([v46 count] + 1) / 3600.0);

  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"kernel_task", 2, (5.0 / ([v46 count] + 1) + -1.0) * 0.5 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"kernel_task", 2, v68, ((5.0 / ([v46 count] + 1) + -1.0) * 0.5 + 0.5) / 3600.0);
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"App1", 2, (5.0 / ([v46 count] + 1) + -1.0) * 3.0 * 0.25 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App1", 2, v68, ((5.0 / ([v46 count] + 1) + -1.0) * 3.0 * 0.25 + 0.5 + 0.25) / 3600.0);
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v57 = MEMORY[0x277D3F178];
  v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v59 = [v58 lastPathComponent];
  v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter2]"];
  [v57 logMessage:v56 fromFile:v59 fromFunction:v60 fromLineNumber:1750];

  v61 = PLLogCommon();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v80 = v56;
    _os_log_debug_impl(&dword_21A4C6000, v61, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v62 = v65;
  v63 = v66;
  v23 = v67;
LABEL_29:

  v64 = *MEMORY[0x277D85DE8];
}

- (void)testChunk
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testChunk]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1756];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = 0.0;
  v12 = [v9 dateByAddingTimeInterval:0.0];
  [v10 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18210 withStartDate:v12];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v13 = [MEMORY[0x277D3F0C0] debugInstance];
  v41 = v9;
  v14 = [v9 dateByAddingTimeInterval:1.0];
  [v13 createPowerEventForwardWithRootNodeID:10 withPower:v14 withStartDate:5.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:5.0];
  [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
  sleep((v15 * 0.5));
  v16 = 0;
  do
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"i=%i", v16];
    v18 = MEMORY[0x277D3F178];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
    v20 = [v19 lastPathComponent];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testChunk]"];
    [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:1782];

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v43 = v17;
      _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v23 = [&unk_282C14A30 objectAtIndexedSubscript:10];
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    v25 = v24 * v11 * 5.0 / 3600.0;
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v23 withTotalEnergy:10 withRootNodeID:v25 withEpsilon:v26 * 5.0 * 0.5];

    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    v28 = v27 * v11 * 5.0 * 0.5 / 3600.0;
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:10 withRootNodeID:v28 withEpsilon:v29 * 5.0 * 0.25];
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    v31 = v30 * v11 * 5.0 * 0.5 / 3600.0;
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:10 withRootNodeID:v31 withEpsilon:v32 * 5.0 * 0.25];
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    sleep(v33);
    v11 = v11 + 1.0;
    v16 = (v16 + 1);
  }

  while (v16 != 3);
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v35 = MEMORY[0x277D3F178];
  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v37 = [v36 lastPathComponent];
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testChunk]"];
  [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:1798];

  v39 = PLLogCommon();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v34;
    _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)testPerformance
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1802];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__9;
  v62 = __Block_byref_object_dispose__9;
  v63 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = dispatch_group_create();
  v10 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance1"];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PLAccountingDebugService_testPerformance__block_invoke;
  block[3] = &unk_27825DC18;
  block[4] = &buf;
  v36 = xmmword_21AA21CD0;
  v55 = xmmword_21AA21CD0;
  dispatch_async(v10, block);

  v11 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance1"];
  dispatch_group_async(v9, v11, &__block_literal_global_33);

  v12 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance2"];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __43__PLAccountingDebugService_testPerformance__block_invoke_649;
  v52[3] = &unk_27825DC18;
  v52[4] = &buf;
  v53 = xmmword_21AA21CE0;
  dispatch_async(v12, v52);

  v13 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance2"];
  dispatch_group_async(v9, v13, &__block_literal_global_662);

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__9;
  v50 = __Block_byref_object_dispose__9;
  v14 = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v51 = [v14 mutableCopy];

  v15 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance3"];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __43__PLAccountingDebugService_testPerformance__block_invoke_669;
  v43[3] = &unk_27825DC40;
  v44 = xmmword_21AA21CF0;
  v45 = 0x4000000000000000;
  v43[4] = &buf;
  v43[5] = &v46;
  dispatch_async(v15, v43);

  v16 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance3"];
  dispatch_group_async(v9, v16, &__block_literal_global_681);

  v17 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance4"];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __43__PLAccountingDebugService_testPerformance__block_invoke_688;
  v41[3] = &unk_27825DC18;
  v41[4] = &buf;
  v42 = xmmword_21AA21CD0;
  dispatch_async(v17, v41);

  v18 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance4"];
  dispatch_group_async(v9, v18, &__block_literal_global_715);

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v19 = [v47[5] count];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v47[5];
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v58 count:16];
  v22 = 20.0 / v19 + -4.0;
  if (v21)
  {
    v23 = *v38;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v37 + 1) + 8 * i) intValue];
        v26 = [&unk_282C14AF0 objectAtIndexedSubscript:v25];
        [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:v26 withTotalCorrectionEnergy:v25 withRootNodeID:v22 / 3600.0];
      }

      v21 = [v20 countByEnumeratingWithState:&v37 objects:v58 count:16];
    }

    while (v21);
  }

  v27 = v22 * 0.5 / 3600.0;
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:@"apsd" withTotalCorrectionEnergy:11 withRootNodeID:v27];
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:@"apsd" withRootNodeID:11 withEnergy:*(*(&buf + 1) + 40) withDate:0.0];
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:@"App1" withTotalCorrectionEnergy:11 withRootNodeID:v27];
  v28 = (v22 + 4.0) * 0.5 / 3600.0;
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:@"App1" withRootNodeID:11 withEnergy:*(*(&buf + 1) + 40) withDate:v28];
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:@"App2" withTotalCorrectionEnergy:11 withRootNodeID:v27];
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:@"App2" withRootNodeID:11 withEnergy:*(*(&buf + 1) + 40) withDate:v28];
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:2 withRootNodeID:11 withNodeName:@"App2" withQualificationEnergy:*(*(&buf + 1) + 40) withDate:v28];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v30 = MEMORY[0x277D3F178];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v32 = [v31 lastPathComponent];
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]"];
  [v30 logMessage:v29 fromFile:v32 fromFunction:v33 fromLineNumber:2019];

  v34 = PLLogCommon();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *v56 = 138412290;
    v57 = v29;
    _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", v56, 0xCu);
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&buf, 8);

  v35 = *MEMORY[0x277D85DE8];
}

void __43__PLAccountingDebugService_testPerformance__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testPerformance1"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:1812];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412290;
    v19 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v18, 0xCu);
  }

  for (i = *(a1 + 40); i <= 5.0; i = i + *(a1 + 48))
  {
    v9 = [MEMORY[0x277D3F0C0] debugInstance];
    v10 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:i];
    [v9 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18238 withStartDate:v10];

    sleep(*(a1 + 48));
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"end testPerformance1"];
  v12 = MEMORY[0x277D3F178];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v14 = [v13 lastPathComponent];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1825];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412290;
    v19 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_642()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"join testPerformance1"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:1828];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_649(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testPerformance2"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:1835];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412290;
    v19 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v18, 0xCu);
  }

  for (i = *(a1 + 40); i <= 5.0; i = i + *(a1 + 48))
  {
    v9 = [MEMORY[0x277D3F0C0] debugInstance];
    v10 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:i];
    [v9 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C18260 withStartDate:v10];

    sleep(*(a1 + 48));
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"end testPerformance2"];
  v12 = MEMORY[0x277D3F178];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v14 = [v13 lastPathComponent];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1848];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412290;
    v19 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_660()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"join testPerformance2"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:1851];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_669(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = 0x277CCA000uLL;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testPerformance3"];
  v4 = 0x277D3F000uLL;
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v5 logMessage:v3 fromFile:v7 fromFunction:v8 fromLineNumber:1861];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v44 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v10 = *(a1 + 48);
  if (v10 <= 5.0)
  {
    v18 = 0x277D3F000uLL;
    v19 = &unk_282C14A48;
    do
    {
      v20 = [*(v18 + 192) debugInstance];
      v21 = *(a1 + 56);
      v22 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10];
      v23 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10 + *(a1 + 64)];
      [v20 addPowerMeasurementEventIntervalWithPower:v22 withStartDate:v23 withEndDate:v21];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = *(*(*(a1 + 40) + 8) + 40);
      v24 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      v25 = v18;
      if (v24)
      {
        v26 = v24;
        v27 = *v39;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = [*(*(&v38 + 1) + 8 * i) intValue];
            v30 = [v19 objectAtIndexedSubscript:v29];
            v31 = [v30 intValue];

            switch(v31)
            {
              case 3:
                v32 = [*(v25 + 192) debugInstance];
                v33 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10];
                [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10 + *(a1 + 64)];
                v34 = v19;
                v36 = v35 = v25;
                [v32 createPowerEventIntervalWithRootNodeID:v29 withPower:v33 withStartDate:v36 withEndDate:1.0];

                v25 = v35;
                v19 = v34;
                break;
              case 2:
                v32 = [*(v25 + 192) debugInstance];
                v33 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10];
                [v32 createPowerEventBackwardWithRootNodeID:v29 withPower:v33 withEndDate:1.0];
                break;
              case 1:
                v32 = [*(v25 + 192) debugInstance];
                v33 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10];
                [v32 createPowerEventForwardWithRootNodeID:v29 withPower:v33 withStartDate:1.0];
                break;
              default:
                goto LABEL_7;
            }
          }

          v26 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v26);
      }

      sleep(*(a1 + 64));
      v10 = v10 + *(a1 + 64);
      v2 = 0x277CCA000;
      v18 = v25;
      v4 = 0x277D3F000;
    }

    while (v10 <= 5.0);
  }

  v11 = [*(v2 + 3240) stringWithFormat:@"end testPerformance3"];
  v12 = *(v4 + 376);
  v13 = [*(v2 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v14 = [v13 lastPathComponent];
  v15 = [*(v2 + 3240) stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  obj = v11;
  [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1907];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v44 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_7:
  v17 = *MEMORY[0x277D85DE8];
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_679()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"join testPerformance3"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:1910];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_688(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = 0x277CCA000uLL;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testPerformance4"];
  v4 = 0x277D3F000uLL;
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v5 logMessage:v3 fromFile:v7 fromFunction:v8 fromLineNumber:1917];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v40 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v10 = [MEMORY[0x277D3F0C0] allQualificationIDs];
  v11 = [v10 mutableCopy];

  [v11 removeObject:&unk_282C11880];
  v12 = *(a1 + 40);
  if (v12 <= 5.0)
  {
    v19 = 0uLL;
    v33 = v11;
    do
    {
      v36 = v19;
      v37 = v19;
      v34 = v19;
      v35 = v19;
      v13 = v11;
      v20 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        while (2)
        {
          v23 = 0;
          do
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v13);
            }

            v24 = [*(*(&v34 + 1) + 8 * v23) intValue];
            v25 = [&unk_282C14A60 objectAtIndexedSubscript:v24];
            v26 = [v25 intValue];

            if (v26 > 2)
            {
              if (v26 == 3)
              {
                v27 = [MEMORY[0x277D3F0C0] debugInstance];
                v28 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
                v29 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12 + *(a1 + 48)];
                [v27 createQualificationEventIntervalWithQualificationID:v24 withChildNodeNames:&unk_282C14AA8 withStartDate:v28 withEndDate:v29];
              }

              else
              {
                if (v26 != 4)
                {
LABEL_26:
                  v11 = v33;
                  goto LABEL_27;
                }

                v27 = [MEMORY[0x277D3F0C0] debugInstance];
                v28 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
                [v27 createQualificationEventPointWithQualificationID:v24 withChildNodeNames:&unk_282C14AC0 withStartDate:v28];
              }
            }

            else if (v26 == 1)
            {
              v27 = [MEMORY[0x277D3F0C0] debugInstance];
              v28 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
              [v27 createQualificationEventForwardWithQualificationID:v24 withChildNodeNames:&unk_282C14A78 withStartDate:v28];
            }

            else
            {
              if (v26 != 2)
              {
                goto LABEL_26;
              }

              v27 = [MEMORY[0x277D3F0C0] debugInstance];
              v28 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
              [v27 createQualificationEventBackwardWithQualificationID:v24 withChildNodeNames:&unk_282C14A90 withEndDate:v28];
            }

            ++v23;
          }

          while (v21 != v23);
          v21 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v30 = [MEMORY[0x277D3F0C0] debugInstance];
      v31 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
      [v30 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14AD8 withStartDate:v31];

      sleep(*(a1 + 48));
      v12 = v12 + *(a1 + 48);
      v2 = 0x277CCA000;
      v4 = 0x277D3F000;
      v11 = v33;
      v19 = 0uLL;
    }

    while (v12 <= 5.0);
  }

  v13 = [*(v2 + 3240) stringWithFormat:@"end testPerformance4"];
  v14 = *(v4 + 376);
  v15 = [*(v2 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v16 = [v15 lastPathComponent];
  v17 = [*(v2 + 3240) stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:1971];

  v18 = PLLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v40 = v13;
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_27:
  v32 = *MEMORY[0x277D85DE8];
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_713()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"join testPerformance4"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:1974];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)testShortDistributionEventDuration
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testShortDistributionEventDuration]"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2023];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }

  v8 = 0.0;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  do
  {
    v10 = [MEMORY[0x277D3F0C0] debugInstance];
    v11 = [v9 dateByAddingTimeInterval:v8];
    [v10 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18288 withStartDate:v11];

    v8 = v8 + 0.001;
  }

  while (v8 < 0.01);
  v12 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [v9 dateByAddingTimeInterval:0.01];
  [v12 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C182B0 withStartDate:v13];

  v14 = [MEMORY[0x277D3F0C0] debugInstance];
  [v14 createPowerEventForwardWithRootNodeID:10 withPower:v9 withStartDate:10.0];

  v15 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [v9 dateByAddingTimeInterval:0.01];
  [v15 createPowerEventForwardWithRootNodeID:10 withPower:v16 withStartDate:10.0];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v18 = MEMORY[0x277D3F178];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v20 = [v19 lastPathComponent];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testShortDistributionEventDuration]"];
  [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:2046];

  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v17;
    _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)testShortQualificationEventDuration
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testShortQualificationEventDuration]"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2050];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }

  v8 = 0.0;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  do
  {
    v10 = [MEMORY[0x277D3F0C0] debugInstance];
    v11 = [v9 dateByAddingTimeInterval:v8];
    [v10 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14B08 withStartDate:v11];

    v8 = v8 + 0.001;
  }

  while (v8 < 1.0);
  v12 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [v9 dateByAddingTimeInterval:1.0];
  [v12 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14B20 withStartDate:v13];

  v14 = [MEMORY[0x277D3F0C0] debugInstance];
  [v14 createPowerEventForwardWithRootNodeID:10 withPower:v9 withStartDate:10.0];

  v15 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [v9 dateByAddingTimeInterval:1.0];
  [v15 createPowerEventForwardWithRootNodeID:10 withPower:v16 withStartDate:10.0];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v18 = MEMORY[0x277D3F178];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v20 = [v19 lastPathComponent];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testShortQualificationEventDuration]"];
  [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:2073];

  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v17;
    _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)testAddRemoveDistributionEventForward
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testAddRemoveDistributionEventForward]"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2077];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v32 = 138412290;
    v33 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v32, 0xCu);
  }

  v8 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = [MEMORY[0x277D3F0C0] debugInstance];
  [v9 createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:@"App1" withStartDate:v8];

  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [v8 dateByAddingTimeInterval:1.0];
  [v10 createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:@"App2" withStartDate:v11];

  v12 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [v8 dateByAddingTimeInterval:2.0];
  [v12 createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:@"App1" withStartDate:v13];

  v14 = [MEMORY[0x277D3F0C0] debugInstance];
  v15 = [v8 dateByAddingTimeInterval:3.0];
  [v14 createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:@"App2" withStartDate:v15];

  v16 = [MEMORY[0x277D3F0C0] debugInstance];
  [v16 createDistributionEventForwardWithDistributionID:7 withChildNodeNameToWeight:&unk_282C182D8 withStartDate:v8];

  v17 = [MEMORY[0x277D3F0C0] debugInstance];
  v18 = [v8 dateByAddingTimeInterval:1.0];
  [v17 createDistributionEventForwardWithDistributionID:7 withRemovingChildNodeName:@"App1" withStartDate:v18];

  v19 = [MEMORY[0x277D3F0C0] debugInstance];
  v20 = [v8 dateByAddingTimeInterval:2.0];
  [v19 createDistributionEventForwardWithDistributionID:7 withRemovingChildNodeName:@"App2" withStartDate:v20];

  v21 = [MEMORY[0x277D3F0C0] debugInstance];
  v22 = [v8 dateByAddingTimeInterval:3.0];
  [v21 createDistributionEventForwardWithDistributionID:7 withAddingChildNodeName:@"App2" withStartDate:v22];

  v23 = [MEMORY[0x277D3F0C0] debugInstance];
  v24 = [v8 dateByAddingTimeInterval:4.0];
  [v23 createDistributionEventForwardWithDistributionID:7 withAddingChildNodeName:@"App1" withStartDate:v24];

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v26 = MEMORY[0x277D3F178];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v28 = [v27 lastPathComponent];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testAddRemoveDistributionEventForward]"];
  [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:2109];

  v30 = PLLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v32 = 138412290;
    v33 = v25;
    _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", &v32, 0xCu);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)testCorrectionInMemory
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrectionInMemory]"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2113];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412290;
    v22 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v21, 0xCu);
  }

  v8 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = [MEMORY[0x277D3F0C0] debugInstance];
  [v9 createPowerEventForwardWithRootNodeID:10 withPower:v8 withStartDate:5.0];

  sleep(2u);
  v10 = [MEMORY[0x277CBEAA8] monotonicDate];

  v11 = [MEMORY[0x277D3F0C0] debugInstance];
  v12 = [v10 dateByAddingTimeInterval:-10.0];
  [v11 createPowerEventIntervalWithRootNodeID:2 withPower:v12 withStartDate:v10 withEndDate:10.0];

  v13 = [MEMORY[0x277D3F0C0] debugInstance];
  [v13 createPowerEventForwardWithRootNodeID:10 withPower:v10 withStartDate:0.0];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v15 = MEMORY[0x277D3F178];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v17 = [v16 lastPathComponent];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrectionInMemory]"];
  [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:2131];

  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412290;
    v22 = v14;
    _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", &v21, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)testPowerEventIntervalOverlap
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPowerEventIntervalOverlap]"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2135];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v27 = 138412290;
    v28 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v27, 0xCu);
  }

  v8 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = [MEMORY[0x277D3F0C0] debugInstance];
  v10 = [v8 dateByAddingTimeInterval:-10.0];
  [v9 createPowerEventIntervalWithRootNodeID:6 withPower:v10 withStartDate:v8 withEndDate:10.0];

  sleep(2u);
  v11 = [MEMORY[0x277CBEAA8] monotonicDate];

  v12 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [v11 dateByAddingTimeInterval:-4.0];
  [v12 createPowerEventIntervalWithRootNodeID:6 withPower:v13 withStartDate:v11 withEndDate:10.0];

  sleep(2u);
  v14 = [MEMORY[0x277CBEAA8] monotonicDate];

  v15 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [v14 dateByAddingTimeInterval:-2.0];
  [v15 createPowerEventIntervalWithRootNodeID:6 withPower:v16 withStartDate:v14 withEndDate:10.0];

  sleep(2u);
  v17 = [MEMORY[0x277CBEAA8] monotonicDate];

  v18 = [MEMORY[0x277D3F0C0] debugInstance];
  v19 = [v17 dateByAddingTimeInterval:-0.5];
  [v18 createPowerEventIntervalWithRootNodeID:6 withPower:v19 withStartDate:v17 withEndDate:10.0];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v21 = MEMORY[0x277D3F178];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v23 = [v22 lastPathComponent];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPowerEventIntervalOverlap]"];
  [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:2164];

  v25 = PLLogCommon();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v27 = 138412290;
    v28 = v20;
    _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", &v27, 0xCu);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)testCurrentDistributionEventForward
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCurrentDistributionEventForward]"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2168];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412290;
    v29 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v28, 0xCu);
  }

  v8 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = [MEMORY[0x277D3F0C0] debugInstance];
  [v9 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18300 withStartDate:v8];

  v10 = [MEMORY[0x277D3F0C0] debugInstance];
  [v10 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C18328 withStartDate:v8];

  sleep(1u);
  v11 = [MEMORY[0x277D3F0C0] debugInstance];
  v12 = [v8 dateByAddingTimeInterval:1.0];
  [v11 createDistributionEventForwardWithDistributionID:3 withAddingChildNodeName:@"App3" withStartDate:v12];

  v13 = [MEMORY[0x277D3F0C0] debugInstance];
  v14 = [v13 currentDistributionEventForwardWithDistributionID:3];
  v15 = [&unk_282C18350 isEqualToDictionary:v14];

  if ((v15 & 1) == 0)
  {
    [objc_opt_class() printError:@"testCurrentDistributionEventForward:: currentDistributionEventForwardWithDistributionID does not match"];
  }

  sleep(1u);
  v16 = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [v8 dateByAddingTimeInterval:2.0];
  [v16 createDistributionEventForwardWithDistributionID:3 withRemovingChildNodeName:@"App3" withStartDate:v17];

  v18 = [MEMORY[0x277D3F0C0] debugInstance];
  v19 = [v18 currentDistributionEventForwardWithDistributionID:3];
  v20 = [&unk_282C18378 isEqualToDictionary:v19];

  if ((v20 & 1) == 0)
  {
    [objc_opt_class() printError:@"testCurrentDistributionEventForward:: currentDistributionEventForwardWithDistributionID does not match"];
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v22 = MEMORY[0x277D3F178];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v24 = [v23 lastPathComponent];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCurrentDistributionEventForward]"];
  [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:2198];

  v26 = PLLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412290;
    v29 = v21;
    _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", &v28, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)verifyLastPowerEventWithRootNodeID:(int)a3 withPower:(double)a4
{
  v45[1] = *MEMORY[0x277D85DE8];
  [(PLAccountingDebugService *)self blockingClearQueues];
  if (a3 <= 0)
  {
    v35 = objc_opt_class();
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastPowerEventWithRootNodeID:withPower:]"];
    [v35 printError:v36];

    v37 = 2377;
LABEL_11:
    NSLog(&cfstr_FailReturnedFr.isa, v37);
    v32 = 0;
    goto LABEL_16;
  }

  v6 = a3;
  v7 = [&unk_282C14B68 objectAtIndexedSubscript:a3];
  v8 = [v7 intValue];

  if ((v8 - 1) >= 3)
  {
    v37 = 2398;
    goto LABEL_11;
  }

  v9 = [**(&unk_27825DCF0 + (v8 - 1)) entryKey];
  v10 = objc_alloc(MEMORY[0x277D3F260]);
  v11 = *MEMORY[0x277D3F3E0];
  v12 = [&unk_282C14B80 objectAtIndexedSubscript:v6];
  v13 = [v10 initWithKey:v11 withValue:v12 withComparisonOperation:0];

  v14 = [MEMORY[0x277D3F2A0] sharedCore];
  v15 = [v14 storage];
  v16 = [MEMORY[0x277D3F0C8] entryKey];
  v45[0] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v18 = [v15 entriesForKey:v16 withComparisons:v17];

  if (v18)
  {
    v19 = [v18 firstObject];
    v20 = objc_alloc(MEMORY[0x277D3F260]);
    v21 = *MEMORY[0x277D3F438];
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v19, "entryID")}];
    v23 = [v20 initWithKey:v21 withValue:v22 withComparisonOperation:0];

    v24 = [MEMORY[0x277D3F2A0] sharedCore];
    v25 = [v24 storage];
    v44 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v27 = [v25 entriesForKey:v9 withComparisons:v26];

    if (v27 && [v27 count])
    {
      v28 = [v27 lastObject];
      v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277D3F430]];
      [v29 doubleValue];
      v31 = vabdd_f64(v30 / 1000.0, a4);

      v32 = v31 <= 0.001;
      if (v31 > 0.001)
      {
        v33 = objc_opt_class();
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastPowerEventWithRootNodeID:withPower:]"];
        [v33 printError:v34];

        NSLog(&cfstr_FailReturnedFr.isa, 2428);
      }
    }

    else
    {
      v38 = objc_opt_class();
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastPowerEventWithRootNodeID:withPower:]"];
      [v38 printError:v39];

      NSLog(&cfstr_FailReturnedFr.isa, 2421);
      v32 = 0;
    }
  }

  else
  {
    v40 = objc_opt_class();
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastPowerEventWithRootNodeID:withPower:]"];
    [v40 printError:v41];

    NSLog(&cfstr_FailReturnedFr.isa, 2409);
    v32 = 0;
  }

LABEL_16:
  v42 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)blockingLogGasGaugeWithTotalPower:(double)a3 withStartDate:(id)a4 withEndDate:(id)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"GasGauge"];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__9;
  v26 = __Block_byref_object_dispose__9;
  v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withDate:v8];
  [v23[5] setObject:v9 forKeyedSubscript:@"timestampEnd"];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v23[5] setObject:v11 forKeyedSubscript:@"TotalPower"];

  v12 = dispatch_semaphore_create(0);
  v13 = objc_alloc(MEMORY[0x277D3F1A8]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__PLAccountingDebugService_blockingLogGasGaugeWithTotalPower_withStartDate_withEndDate___block_invoke;
  v19[3] = &unk_27825DC68;
  v21 = &v22;
  v14 = v12;
  v20 = v14;
  v15 = [v13 initWithOperator:self forEntryKey:v10 withBlock:v19];
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  v28 = @"entry";
  v29[0] = v23[5];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [v16 postNotificationName:@"PLBatteryAgent.fakeLogEntry" object:0 userInfo:v17];

  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  _Block_object_dispose(&v22, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __88__PLAccountingDebugService_blockingLogGasGaugeWithTotalPower_withStartDate_withEndDate___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v6 objectForKeyedSubscript:@"timestampEnd"];
  v4 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"timestampEnd"];
  v5 = [v3 isEqualToDate:v4];

  if (v5)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (void)blockingClearQueues
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_826;
  v28[3] = &unk_2782591D0;
  v28[4] = self;
  dispatch_sync(v4, v28);

  v5 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_832;
  v27[3] = &unk_2782591D0;
  v27[4] = self;
  dispatch_sync(v5, v27);

  v6 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_838;
  v26[3] = &unk_2782591D0;
  v26[4] = self;
  dispatch_sync(v6, v26);

  v7 = MEMORY[0x277D3F258];
  v8 = [MEMORY[0x277D3F178] storageQueueNameForClass:objc_opt_class()];
  v9 = [v7 workQueueForKey:v8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_843;
  v25[3] = &unk_2782591D0;
  v25[4] = self;
  dispatch_sync(v9, v25);

  v10 = [MEMORY[0x277D3F2A0] sharedCore];
  v11 = [v10 storage];
  [v11 blockingFlushCachesWithReason:@"PLAccountingDebugService"];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_851;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v12;
    if (qword_2811F7BD0 != -1)
    {
      dispatch_once(&qword_2811F7BD0, &v20);
    }

    if (byte_2811F7BA5 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"flushes cleared", v20, v21, v22, v23, v24];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:2715];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F7BA8 != -1)
    {
      dispatch_once(&qword_2811F7BA8, block);
    }

    if (_MergedGlobals_99 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingEngine work queue cleared"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2700];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_99 = result;
  return result;
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke_826(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_827;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F7BB0 != -1)
    {
      dispatch_once(&qword_2811F7BB0, block);
    }

    if (byte_2811F7BA1 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingDistributionManager work queue cleared"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2703];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_827(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA1 = result;
  return result;
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke_832(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_833;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F7BB8 != -1)
    {
      dispatch_once(&qword_2811F7BB8, block);
    }

    if (byte_2811F7BA2 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingCorrectionManager work queue cleared"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2706];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_833(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA2 = result;
  return result;
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke_838(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_839;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F7BC0 != -1)
    {
      dispatch_once(&qword_2811F7BC0, block);
    }

    if (byte_2811F7BA3 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingQualificationManager work queue cleared"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2709];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_839(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA3 = result;
  return result;
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke_843(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_844;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F7BC8 != -1)
    {
      dispatch_once(&qword_2811F7BC8, block);
    }

    if (byte_2811F7BA4 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingOperator storage queue cleared"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2712];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_844(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA4 = result;
  return result;
}

uint64_t __47__PLAccountingDebugService_blockingClearQueues__block_invoke_851(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA5 = result;
  return result;
}

+ (void)printError:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"&&&&&&&&&&&&&&&&&&%@&&&&&&&&&&&&&&&&&&", a3];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingDebugService printError:]"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:2719];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end