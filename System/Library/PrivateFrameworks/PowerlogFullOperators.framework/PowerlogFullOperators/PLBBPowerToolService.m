@interface PLBBPowerToolService
+ (id)entryAggregateDefinitions;
+ (id)entryArmUtil;
+ (id)entryCauseDefinition;
+ (id)entryCauseHelperDefinition;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)containsExclusionsAfterCleanupWithDate:(id)a3;
- (BOOL)doesCurrPeriodHaveProblem:(id)a3;
- (BOOL)isPackageTimeValidWithEntry:(id)a3;
- (BOOL)isPackageValidWithEntry:(id)a3;
- (PLBBPowerToolService)init;
- (PLTelephonyConnection)connection;
- (double)calculateMaxPerepherialPercentageWithEntry:(id)a3;
- (double)percentageHistogramFromArray:(id)a3;
- (id)analazeCauseResultsReturnCause:(CauseDurations *)a3;
- (id)findCauseWithEntry:(id)a3;
- (void)analazeIntervalWithSnapshot:(CauseSnapshot *)a3 withDuration:(CauseDurations *)a4 withInterval:(double)a5 withEntry:(id)a6;
- (void)collectExtraDataForPackage:(id)a3;
- (void)handleAudioCallback:(id)a3;
- (void)handleDisplayCallback:(id)a3;
- (void)handleExclusionWithState:(BOOL)a3 withExclusion:(unsigned __int8)a4;
- (void)handleHotspotCallback:(id)a3;
- (void)handleMavBBHwOtherCallback:(id)a3;
- (void)handleProblemWithEntry:(id)a3;
- (void)initOperatorDependancies;
- (void)lteRRCCallback:(id)a3;
- (void)msgLiteCallback:(id)a3;
- (void)resetAllCounters:(id)a3;
- (void)resetStructuresWithSnapshot:(CauseSnapshot *)a3 withDuration:(CauseDurations *)a4;
- (void)submitAWD;
- (void)telActivityCallback:(id)a3;
- (void)wcdmaRRCCallback:(id)a3;
- (void)writeToHelperTable:(id)a3 WithValue:(double)a4 withDate:(id)a5;
@end

@implementation PLBBPowerToolService

+ (id)entryEventPointDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"bbPowerPointCause";
  v3 = [a1 entryCauseDefinition];
  v8[1] = @"bbPowerPointCauseHelper";
  v9[0] = v3;
  v4 = [a1 entryCauseHelperDefinition];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryCauseDefinition
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_2870FEF40;
  v25[1] = MEMORY[0x277CBEC28];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"cause";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat];
  v23[0] = v19;
  v22[1] = @"causeTimeStamp";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_DateFormat];
  v23[1] = v17;
  v22[2] = @"causeDuration";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[2] = v15;
  v22[3] = @"ArmUtil";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v23[3] = v4;
  v22[4] = @"IsContinuous";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v23[4] = v6;
  v22[5] = @"PerepherialMax";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v23[5] = v8;
  v22[6] = @"APExclusion";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryCauseHelperDefinition
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_2870FEF40;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"BBPowerName";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v12[1] = @"Value";
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

+ (id)entryAggregateDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"AggregatedARMUtil";
  v2 = [a1 entryArmUtil];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryArmUtil
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_2870FEF40;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"ArmUtilBucket";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[1] = @"ArmUtilCount";
  v21[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_2870FEF50;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_2870FEF50;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = @"ArmUtilCount";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLBBPowerToolService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLBBPowerToolService)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_9;
  }

  v6.receiver = self;
  v6.super_class = PLBBPowerToolService;
  self = [(PLOperator *)&v6 init];
  if (self)
  {
    if ([MEMORY[0x277D3F208] internalBuild])
    {
      if ([MEMORY[0x277D3F180] BOOLForKey:@"PLBasebandPostProcessing"] && objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
      {
        v3 = [MEMORY[0x277D3F6D8] sharedTelephonyConnection];
        [v3 enableDiagLogging];

        goto LABEL_8;
      }

      if ([MEMORY[0x277D3F208] isBasebandClass:1003003])
      {
        goto LABEL_8;
      }
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

LABEL_8:
  self = self;
  v4 = self;
LABEL_10:

  return v4;
}

- (void)initOperatorDependancies
{
  [(PLBBPowerToolService *)self setExclusionMask:0];
  v3 = objc_opt_new();
  [(PLBBPowerToolService *)self setStartExclusionPeriods:v3];

  v4 = objc_opt_new();
  [(PLBBPowerToolService *)self setEndExclusionPeriods:v4];

  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBBPowerToolService *)self setNotToRemoveDate:v5];

  [(PLBBPowerToolService *)self setSendAWD:0];
  [(PLBBPowerToolService *)self setDoesCurrPackageHasProblem:0];
  [(PLBBPowerToolService *)self setDoesPrevPackageHasProblem:0];
  [(PLBBPowerToolService *)self setIsUIAlertEnabled:1];
  [MEMORY[0x277D3F180] doubleForKey:@"ArmUtilityThreshold" ifNotSet:80.0];
  [(PLBBPowerToolService *)self setArmUtilityThresholdVal:?];
  [MEMORY[0x277D3F180] doubleForKey:@"MagicDeltaThreshold" ifNotSet:10.0];
  [(PLBBPowerToolService *)self setMagicDeltaThresholdVal:?];
  [MEMORY[0x277D3F180] doubleForKey:@"OOSDuration" ifNotSet:80.0];
  [(PLBBPowerToolService *)self setOosDurationVal:?];
  [MEMORY[0x277D3F180] doubleForKey:@"RRCDisconnected" ifNotSet:80.0];
  [(PLBBPowerToolService *)self setRrcDisconnectedVal:?];
  [(PLBBPowerToolService *)self resetAllCounters:0];
  v6 = [MEMORY[0x277D3F6D8] sharedTelephonyConnection];
  objc_storeWeak(&self->_connection, v6);

  v7 = *MEMORY[0x277D3F5D0];
  v8 = [MEMORY[0x277D3F678] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F738]];
  v9 = objc_alloc(MEMORY[0x277D3F1A8]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke;
  v48[3] = &unk_279A58F10;
  v48[4] = self;
  v10 = [v9 initWithOperator:self forEntryKey:v8 withBlock:v48];
  [(PLBBPowerToolService *)self setAudioEventCallback:v10];
  if ([MEMORY[0x277D3F6A0] shouldLogDisplay])
  {
    v11 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F7B0]];
    v12 = objc_alloc(MEMORY[0x277D3F1A8]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_2;
    v47[3] = &unk_279A58F10;
    v47[4] = self;
    v13 = [v12 initWithOperator:self forEntryKey:v11 withBlock:v47];
    [(PLBBPowerToolService *)self setDisplayEventCallback:v13];
  }

  v14 = [MEMORY[0x277D3F6C8] entryKeyForType:v7 andName:*MEMORY[0x277D3F7C0]];
  v15 = objc_alloc(MEMORY[0x277D3F1A8]);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_3;
  v46[3] = &unk_279A58F10;
  v46[4] = self;
  v39 = v14;
  v38 = [v15 initWithOperator:self forEntryKey:v14 withBlock:v46];
  [(PLBBPowerToolService *)self setHotspotEventCallback:?];
  v16 = [MEMORY[0x277D3F680] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F748]];
  v17 = objc_alloc(MEMORY[0x277D3F1A8]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_4;
  v45[3] = &unk_279A58F10;
  v45[4] = self;
  v37 = v16;
  v18 = [v17 initWithOperator:self forEntryKey:v16 withBlock:v45];
  [(PLBBPowerToolService *)self setBbHwOtherCallback:v18];
  if ([MEMORY[0x277D3F180] BOOLForKey:@"PLBasebandPostProcessing"])
  {
    v36 = [MEMORY[0x277D3F680] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F6F8]];
    v19 = objc_alloc(MEMORY[0x277D3F1A8]);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_5;
    v44[3] = &unk_279A58F10;
    v44[4] = self;
    v35 = [v19 initWithOperator:self forEntryKey:v36 withBlock:v44];
    [(PLBBPowerToolService *)self setMsgLiteCallback:v35];
    v34 = [MEMORY[0x277D3F680] entryKeyForType:v7 andName:*MEMORY[0x277D3F6F0]];
    v20 = objc_alloc(MEMORY[0x277D3F1A8]);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_6;
    v43[3] = &unk_279A58F10;
    v43[4] = self;
    v21 = [v20 initWithOperator:self forEntryKey:v34 withBlock:v43];
    [(PLBBPowerToolService *)self setWcdmaRRCCallback:v21];
    v22 = [MEMORY[0x277D3F680] entryKeyForType:v7 andName:*MEMORY[0x277D3F6E8]];
    v23 = objc_alloc(MEMORY[0x277D3F1A8]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_7;
    v42[3] = &unk_279A58F10;
    v42[4] = self;
    v24 = v10;
    v25 = v8;
    v26 = [v23 initWithOperator:self forEntryKey:v22 withBlock:v42];
    [(PLBBPowerToolService *)self setLteRRCCallback:v26];
    v27 = [MEMORY[0x277D3F680] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F700]];
    v28 = objc_alloc(MEMORY[0x277D3F1A8]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_8;
    v41[3] = &unk_279A58F10;
    v41[4] = self;
    v29 = [v28 initWithOperator:self forEntryKey:v27 withBlock:v41];
    [(PLBBPowerToolService *)self setTelActivityCallback:v29];

    v8 = v25;
    v10 = v24;
  }

  v30 = objc_alloc(MEMORY[0x277D3F1F0]);
  v31 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v32 = *MEMORY[0x277CBE580];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_9;
  v40[3] = &unk_279A58F10;
  v40[4] = self;
  v33 = [v30 initWithWorkQueue:v31 forNotification:v32 withBlock:v40];

  [(PLBBPowerToolService *)self setDailyTaskNotification:v33];
  [(PLBBPowerToolService *)self setupInitExclusions];
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAudioCallback:a2];
  }

  return result;
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleDisplayCallback:a2];
  }

  return result;
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleHotspotCallback:a2];
  }

  return result;
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleMavBBHwOtherCallback:a2];
  }

  return result;
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_5(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) msgLiteCallback:a2];
  }

  return result;
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_6(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) wcdmaRRCCallback:a2];
  }

  return result;
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_7(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) lteRRCCallback:a2];
  }

  return result;
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) telActivityCallback:a2];
  }

  return result;
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_9(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_10;
    v15 = &unk_279A593B8;
    v16 = @"DailyTasks";
    v17 = v3;
    if (rrcDisconnected_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&rrcDisconnected_block_invoke_defaultOnce, &v12);
    }

    v4 = rrcDisconnected_block_invoke_classDebugEnabled;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DailyTasks notification!", v12, v13, v14, v15];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBBPowerToolService.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBPowerToolService initOperatorDependancies]_block_invoke_9"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:330];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PLAWDNetworkUsage *)v5 handleNameConnectionCallback:v10];
      }
    }
  }

  [*(a1 + 32) submitAWD];
  return [*(a1 + 32) setIsUIAlertEnabled:1];
}

uint64_t __48__PLBBPowerToolService_initOperatorDependancies__block_invoke_10(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  rrcDisconnected_block_invoke_classDebugEnabled = result;
  return result;
}

- (void)writeToHelperTable:(id)a3 WithValue:(double)a4 withDate:(id)a5
{
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = *MEMORY[0x277D3F5E8];
  v10 = a5;
  v11 = [(PLOperator *)PLBBPowerToolService entryKeyForType:v9 andName:@"bbPowerPointCauseHelper"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11 withDate:v10];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"BBPowerName", v8];
  v14 = [(PLOperator *)self storage];
  v15 = [(PLBBPowerToolService *)self notToRemoveDate];
  [v15 timeIntervalSince1970];
  v17 = v16;
  v27[0] = v13;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v19 = [v14 entriesForKey:v11 before:1 timeInterval:1 count:v18 withFilters:v17];

  if ([v19 count])
  {
    v20 = [v19 objectAtIndexedSubscript:0];
    v21 = [(PLOperator *)self storage];
    v22 = [v20 entryDate];
    v26 = v13;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    [v21 deleteAllEntriesForKey:v11 beforeTimestamp:v22 withFilters:v23];
  }

  [v12 setObject:v8 forKeyedSubscript:@"BBPowerName"];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v12 setObject:v24 forKeyedSubscript:@"Value"];

  [(PLOperator *)self logEntry:v12];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)msgLiteCallback:(id)a3
{
  v8 = [a3 objectForKey:@"entry"];
  v4 = [v8 objectForKeyedSubscript:@"EventCode"];
  [v4 doubleValue];
  v6 = v5;

  if (v6 == 1010)
  {
    v7 = [v8 entryDate];
    [(PLBBPowerToolService *)self writeToHelperTable:@"prachCount" WithValue:v7 withDate:0.0];
  }
}

- (void)wcdmaRRCCallback:(id)a3
{
  v13 = [a3 objectForKey:@"entry"];
  v4 = [v13 objectForKeyedSubscript:@"EventCode"];
  [v4 doubleValue];
  v6 = v5;

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [v13 objectForKeyedSubscript:@"CurrState"];
  v9 = [v7 initWithString:v8];

  if (v6 == 571)
  {
    if ([v9 isEqual:@"Disconnected"])
    {
      v10 = [v13 entryDate];
      v11 = 0.0;
    }

    else
    {
      v12 = [v9 isEqual:@"CellDCH"];
      v10 = [v13 entryDate];
      if (v12)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 2.0;
      }
    }

    [(PLBBPowerToolService *)self writeToHelperTable:@"wcdmaRRCState" WithValue:v10 withDate:v11];
  }
}

- (void)lteRRCCallback:(id)a3
{
  v12 = [a3 objectForKey:@"entry"];
  v4 = [v12 objectForKeyedSubscript:@"EventCode"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v12 objectForKeyedSubscript:@"State"];
  v8 = v7;
  if (v6 == 1606)
  {
    if ([v7 isEqual:@"Disconnected"])
    {
      v9 = [v12 entryDate];
      v10 = 0.0;
    }

    else
    {
      v11 = [v8 isEqual:@"CellDCH"];
      v9 = [v12 entryDate];
      if (v11)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 2.0;
      }
    }

    [(PLBBPowerToolService *)self writeToHelperTable:@"lteRRCState" WithValue:v9 withDate:v10];
  }
}

- (void)telActivityCallback:(id)a3
{
  v12 = [a3 objectForKey:@"entry"];
  v4 = [v12 objectForKeyedSubscript:@"campedRat"];
  if ([v4 isEqualToString:@"Unknown"])
  {
    v5 = [v12 entryDate];
    v6 = 0.0;
  }

  else if ([v4 isEqualToString:@"UMTS"])
  {
    v5 = [v12 entryDate];
    v6 = 1.0;
  }

  else
  {
    v7 = [v4 isEqualToString:@"LTE"];
    v5 = [v12 entryDate];
    if (v7)
    {
      v6 = 2.0;
    }

    else
    {
      v6 = 3.0;
    }
  }

  [(PLBBPowerToolService *)self writeToHelperTable:@"campedRat" WithValue:v5 withDate:v6];

  v8 = [v12 objectForKeyedSubscript:@"signalStrength"];
  [v8 doubleValue];
  v10 = v9;
  v11 = [v12 entryDate];
  [(PLBBPowerToolService *)self writeToHelperTable:@"strength" WithValue:v11 withDate:v10];
}

- (void)resetAllCounters:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [v5 entryDate];
    [(PLBBPowerToolService *)self setNotToRemoveDate:v4];
  }

  [(PLBBPowerToolService *)self setElapsedDenumerator:0.0];
  [(PLBBPowerToolService *)self setTotalNormalARMUtility:0.0];
  [(PLBBPowerToolService *)self setStartSamplingDate:0];
  if ([(PLBBPowerToolService *)self doesCurrPackageHasProblem])
  {
    [(PLBBPowerToolService *)self setDoesPrevPackageHasProblem:1];
    [(PLBBPowerToolService *)self setDoesCurrPackageHasProblem:0];
  }

  else
  {
    [(PLBBPowerToolService *)self setDoesPrevPackageHasProblem:0];
  }
}

- (void)handleAudioCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  if (v4)
  {
    v7 = v4;
    v5 = [v4 objectForKeyedSubscript:@"Active"];
    v6 = [v5 BOOLValue];

    [(PLBBPowerToolService *)self handleExclusionWithState:v6 withExclusion:1];
    v4 = v7;
  }
}

- (void)handleDisplayCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  if (v4)
  {
    v7 = v4;
    v5 = [v4 objectForKeyedSubscript:@"Active"];
    v6 = [v5 BOOLValue];

    [(PLBBPowerToolService *)self handleExclusionWithState:v6 withExclusion:2];
    v4 = v7;
  }
}

- (void)handleHotspotCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  if (v4)
  {
    v7 = v4;
    v5 = [v4 objectForKeyedSubscript:@"Active"];
    v6 = [v5 BOOLValue];

    [(PLBBPowerToolService *)self handleExclusionWithState:v6 withExclusion:4];
    v4 = v7;
  }
}

- (void)handleExclusionWithState:(BOOL)a3 withExclusion:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PLBBPowerToolService *)self exclusionMask];
  if (v5)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x277CBEAA8] monotonicDate];
      v9 = [(PLBBPowerToolService *)self startExclusionPeriods];
      [v9 addObject:v8];
    }

    v10 = [(PLBBPowerToolService *)self exclusionMask]| v4;

    [(PLBBPowerToolService *)self setExclusionMask:v10];
  }

  else if (v4)
  {
    if (v7)
    {
      [(PLBBPowerToolService *)self setExclusionMask:[(PLBBPowerToolService *)self exclusionMask]& ~v4];
      if (![(PLBBPowerToolService *)self exclusionMask])
      {
        v12 = [(PLBBPowerToolService *)self endExclusionPeriods];
        v11 = [MEMORY[0x277CBEAA8] monotonicDate];
        [v12 addObject:v11];
      }
    }
  }
}

- (void)handleMavBBHwOtherCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F710]];

  if (v5)
  {
    if ([(PLBBPowerToolService *)self isPackageValidWithEntry:v4])
    {
      [(PLBBPowerToolService *)self collectExtraDataForPackage:v4];
      [(PLBBPowerToolService *)self elapsedDenumerator];
      if (v6 >= 600.0)
      {
        if (-[PLBBPowerToolService doesCurrPeriodHaveProblem:](self, "doesCurrPeriodHaveProblem:", v4) && [MEMORY[0x277D3F180] BOOLForKey:@"PLBasebandPostProcessing"])
        {
          if ([(PLBBPowerToolService *)self isUIAlertEnabled])
          {
            v21 = 0;
            CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, @"BB Power tool button", @"Submit bug", @"Continue", 0, 0, &v21);
            [(PLBBPowerToolService *)self setIsUIAlertEnabled:0];
          }

          [(PLBBPowerToolService *)self setDoesCurrPackageHasProblem:1];
          goto LABEL_12;
        }

        if ([(PLOperator *)self isDebugEnabled])
        {
LABEL_12:
          [(PLBBPowerToolService *)self handleProblemWithEntry:v4];
        }

LABEL_13:
        [(PLBBPowerToolService *)self resetAllCounters:v4];
      }
    }

    else
    {
      if (![(PLOperator *)self isDebugEnabled])
      {
        goto LABEL_13;
      }

      v7 = [(PLOperator *)PLBBPowerToolService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"bbPowerPointCause"];
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
      [(PLBBPowerToolService *)self collectExtraDataForPackage:v4];
      [(PLBBPowerToolService *)self doesCurrPeriodHaveProblem:v4];
      [(PLBBPowerToolService *)self handleProblemWithEntry:v4];
      v9 = [v4 entryDate];
      v10 = [v9 copy];
      [(PLBBPowerToolService *)self setStartSamplingDate:v10];

      v11 = [(PLBBPowerToolService *)self startSamplingDate];
      [v8 setObject:v11 forKeyedSubscript:@"causeTimeStamp"];

      v12 = MEMORY[0x277CCABB0];
      [(PLBBPowerToolService *)self elapsedDenumerator];
      v13 = [v12 numberWithDouble:?];
      [v8 setObject:v13 forKeyedSubscript:@"causeDuration"];

      [v8 setObject:@"exclusion" forKeyedSubscript:@"cause"];
      v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLBBPowerToolService doesPrevPackageHasProblem](self, "doesPrevPackageHasProblem")}];
      [v8 setObject:v14 forKeyedSubscript:@"IsContinuous"];

      v15 = MEMORY[0x277CCABB0];
      [(PLBBPowerToolService *)self gArmUtil];
      v16 = [v15 numberWithDouble:?];
      [v8 setObject:v16 forKeyedSubscript:@"ArmUtil"];

      v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLBBPowerToolService gPerepherialMax](self, "gPerepherialMax")}];
      [v8 setObject:v17 forKeyedSubscript:@"PerepherialMax"];

      v18 = MEMORY[0x277CCABB0];
      v19 = [(PLBBPowerToolService *)self startExclusionPeriods];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
      [v8 setObject:v20 forKeyedSubscript:@"APExclusion"];

      [(PLOperator *)self logEntry:v8];
      [(PLBBPowerToolService *)self resetAllCounters:v4];
    }
  }
}

- (BOOL)doesCurrPeriodHaveProblem:(id)a3
{
  v4 = a3;
  [(PLBBPowerToolService *)self totalNormalARMUtility];
  v6 = v5;
  [(PLBBPowerToolService *)self elapsedDenumerator];
  v8 = v6 / (v7 * 32768.0);
  [(PLBBPowerToolService *)self setGArmUtil:v8];
  v9 = [(PLOperator *)PLBBPowerToolService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregatedARMUtil"];
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [v10 setObject:v11 forKeyedSubscript:@"ArmUtilBucket"];

  [v10 setObject:&unk_2870FF220 forKeyedSubscript:@"ArmUtilCount"];
  [(PLOperator *)self logEntry:v10];
  [(PLBBPowerToolService *)self armUtilityThresholdVal];
  v13 = v12;
  if (v8 <= v12 && [(PLOperator *)self isDebugEnabled])
  {
    v14 = [(PLOperator *)PLBBPowerToolService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"bbPowerPointCause"];
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
    v16 = [v4 entryDate];
    v17 = [v16 copy];
    [(PLBBPowerToolService *)self setStartSamplingDate:v17];

    v18 = [(PLBBPowerToolService *)self startSamplingDate];
    [v15 setObject:v18 forKeyedSubscript:@"causeTimeStamp"];

    v19 = MEMORY[0x277CCABB0];
    [(PLBBPowerToolService *)self elapsedDenumerator];
    v20 = [v19 numberWithDouble:?];
    [v15 setObject:v20 forKeyedSubscript:@"causeDuration"];

    [v15 setObject:@"No problem found" forKeyedSubscript:@"cause"];
    v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLBBPowerToolService doesPrevPackageHasProblem](self, "doesPrevPackageHasProblem")}];
    [v15 setObject:v21 forKeyedSubscript:@"IsContinuous"];

    v22 = MEMORY[0x277CCABB0];
    [(PLBBPowerToolService *)self gArmUtil];
    v23 = [v22 numberWithDouble:?];
    [v15 setObject:v23 forKeyedSubscript:@"ArmUtil"];

    v24 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLBBPowerToolService gPerepherialMax](self, "gPerepherialMax")}];
    [v15 setObject:v24 forKeyedSubscript:@"PerepherialMax"];

    v25 = MEMORY[0x277CCABB0];
    v26 = [(PLBBPowerToolService *)self startExclusionPeriods];
    v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    [v15 setObject:v27 forKeyedSubscript:@"APExclusion"];

    [(PLOperator *)self logEntry:v15];
  }

  return v8 > v13;
}

- (void)collectExtraDataForPackage:(id)a3
{
  v18 = a3;
  v4 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3F728]];
  [v4 doubleValue];
  v6 = v5;

  [(PLBBPowerToolService *)self elapsedDenumerator];
  [(PLBBPowerToolService *)self setElapsedDenumerator:v6 * 0.0000305175781 + v7];
  v8 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3F828]];
  [v8 doubleValue];
  v10 = v9 / v6;
  v11 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3F820]];
  [v11 doubleValue];
  v13 = 100.0 - (v12 / v6 * 100.0 + v10 * 100.0);

  [(PLBBPowerToolService *)self totalNormalARMUtility];
  [(PLBBPowerToolService *)self setTotalNormalARMUtility:v14 + v6 * v13];
  v15 = [(PLBBPowerToolService *)self startSamplingDate];

  if (!v15)
  {
    v16 = [v18 entryDate];
    v17 = [v16 copy];
    [(PLBBPowerToolService *)self setStartSamplingDate:v17];
  }
}

- (void)handleProblemWithEntry:(id)a3
{
  v4 = [(PLBBPowerToolService *)self findCauseWithEntry:a3];
  v5 = [(PLOperator *)PLBBPowerToolService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"bbPowerPointCause"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = [(PLBBPowerToolService *)self startSamplingDate];
  [v6 setObject:v7 forKeyedSubscript:@"causeTimeStamp"];

  v8 = MEMORY[0x277CCABB0];
  [(PLBBPowerToolService *)self elapsedDenumerator];
  v9 = [v8 numberWithDouble:?];
  [v6 setObject:v9 forKeyedSubscript:@"causeDuration"];

  [v6 setObject:v4 forKeyedSubscript:@"cause"];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLBBPowerToolService doesPrevPackageHasProblem](self, "doesPrevPackageHasProblem")}];
  [v6 setObject:v10 forKeyedSubscript:@"IsContinuous"];

  v11 = MEMORY[0x277CCABB0];
  [(PLBBPowerToolService *)self gArmUtil];
  v12 = [v11 numberWithDouble:?];
  [v6 setObject:v12 forKeyedSubscript:@"ArmUtil"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLBBPowerToolService gPerepherialMax](self, "gPerepherialMax")}];
  [v6 setObject:v13 forKeyedSubscript:@"PerepherialMax"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [(PLBBPowerToolService *)self startExclusionPeriods];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  [v6 setObject:v16 forKeyedSubscript:@"APExclusion"];

  [(PLOperator *)self logEntry:v6];
  v17 = [(PLBBPowerToolService *)self connection];
  v18 = MEMORY[0x277CCACA8];
  v19 = [(PLBBPowerToolService *)self startSamplingDate];
  [(PLBBPowerToolService *)self elapsedDenumerator];
  v21 = [v18 stringWithFormat:@"Auto-trigger of core dump by Powerlog: bb-powertool, startTime = %@ duration = %f", v19, v20];;
  v22 = [v17 requestBasebandStateDump:v21];

  if ((v22 & 1) == 0 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v23 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBPowerToolService_handleProblemWithEntry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v23;
    if (handleProblemWithEntry__defaultOnce != -1)
    {
      dispatch_once(&handleProblemWithEntry__defaultOnce, block);
    }

    if (handleProblemWithEntry__classDebugEnabled == 1)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"BBPowerTool: BB snapshot failed"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBBPowerToolService.m"];
      v27 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBPowerToolService handleProblemWithEntry:]"];
      [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:705];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [(PLAWDNetworkUsage *)v24 handleNameConnectionCallback:v29];
      }
    }
  }
}

uint64_t __47__PLBBPowerToolService_handleProblemWithEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleProblemWithEntry__classDebugEnabled = result;
  return result;
}

- (void)resetStructuresWithSnapshot:(CauseSnapshot *)a3 withDuration:(CauseDurations *)a4
{
  a3->var1 = 0.0;
  a3->var2 = 0;
  a3->var0 = 3;
  a4->var0 = 0;
  *&a4->var1 = 0u;
  *&a4->var3 = 0u;
}

- (id)analazeCauseResultsReturnCause:(CauseDurations *)a3
{
  var1 = a3->var1;
  [(PLBBPowerToolService *)self elapsedDenumerator];
  v7 = v6;
  var2 = a3->var2;
  [(PLBBPowerToolService *)self elapsedDenumerator];
  v10 = v9;
  var4 = a3->var4;
  [(PLBBPowerToolService *)self elapsedDenumerator];
  if (a3->var0 > 50)
  {
    return @"RACHFail";
  }

  v14 = v12;
  [(PLBBPowerToolService *)self oosDurationVal];
  if (var1 / v7 * 100.0 > v15)
  {
    return @"OOS";
  }

  [(PLBBPowerToolService *)self rrcDisconnectedVal];
  if (var2 / v10 * 100.0 > v16)
  {
    return @"TcXONotShutting";
  }

  if (var4 / v14 * 100.0 >= 50.0)
  {
    return @"MarginalCoverage";
  }

  return @"Unknown";
}

- (void)analazeIntervalWithSnapshot:(CauseSnapshot *)a3 withDuration:(CauseDurations *)a4 withInterval:(double)a5 withEntry:(id)a6
{
  if (!a3->var0)
  {
    v6 = 8;
    goto LABEL_8;
  }

  if (a3->var0 == 1 && !a3->var2)
  {
    a4->var2 = a4->var2 + a5;
  }

  if (a3->var1 < -100.0)
  {
    v6 = 32;
LABEL_8:
    *(&a4->var0 + v6) = *(&a4->var0 + v6) + a5;
  }
}

- (id)findCauseWithEntry:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLBBPowerToolService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"bbPowerPointCauseHelper"];
  v6 = [(PLOperator *)self storage];
  v31 = v5;
  v7 = [v6 entriesForKey:v5];

  v32 = v4;
  v8 = [v4 entryDate];
  v9 = MEMORY[0x277CBEAA8];
  [(PLBBPowerToolService *)self elapsedDenumerator];
  v11 = [v9 dateWithTimeInterval:v8 sinceDate:-v10];
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  [(PLBBPowerToolService *)self resetStructuresWithSnapshot:&v36 withDuration:v34];
  v33 = v11;
  if (![v7 count])
  {
    goto LABEL_22;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = [v7 objectAtIndexedSubscript:v12];
    v15 = [v14 entryDate];
    v16 = [v15 compare:v11];

    if (v16 == 1)
    {
      v17 = [v14 entryDate];
      v18 = [v17 earlierDate:v8];
      [v11 timeIntervalSinceDate:v18];
      v20 = v19;

      v21 = [v14 entryDate];

      [(PLBBPowerToolService *)self analazeIntervalWithSnapshot:&v36 withDuration:v34 withInterval:v14 withEntry:v20];
      v13 = 1;
      v11 = v21;
    }

    v22 = [v14 objectForKeyedSubscript:@"BBPowerName"];
    if ([v22 isEqualToString:@"campedRat"])
    {
      v23 = [v14 objectForKeyedSubscript:@"Value"];
      [v23 doubleValue];
      v36 = v24;
LABEL_15:

      goto LABEL_16;
    }

    if ([v22 isEqualToString:@"strength"])
    {
      v23 = [v14 objectForKeyedSubscript:@"Value"];
      [v23 doubleValue];
      v37 = v25;
      goto LABEL_15;
    }

    if ([v22 isEqualToString:@"prachCount"])
    {
      if (v13)
      {
        ++LODWORD(v34[0]);
      }
    }

    else if ([v22 isEqualToString:@"wcdmaRRCState"] || objc_msgSend(v22, "isEqualToString:", @"lteRRCState"))
    {
      v23 = [v14 objectForKeyedSubscript:@"Value"];
      [v23 doubleValue];
      v38 = v26;
      goto LABEL_15;
    }

LABEL_16:
    v27 = [v14 entryDate];
    v28 = [v27 compare:v8];

    if (v28 == 1)
    {
      goto LABEL_21;
    }

    if (v12 == [v7 count] - 1)
    {
      break;
    }

    if ([v7 count] <= ++v12)
    {
      goto LABEL_22;
    }
  }

  [v11 timeIntervalSinceDate:v8];
  [(PLBBPowerToolService *)self analazeIntervalWithSnapshot:&v36 withDuration:v34 withInterval:v14 withEntry:?];
LABEL_21:

LABEL_22:
  v29 = [(PLBBPowerToolService *)self analazeCauseResultsReturnCause:v34];

  return v29;
}

- (BOOL)isPackageValidWithEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F708]];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F728]];
  [v8 doubleValue];
  v10 = v7 / v9 * 100.0;

  [(PLBBPowerToolService *)self calculateMaxPerepherialPercentageWithEntry:v4];
  v12 = v11;
  [(PLBBPowerToolService *)self setGPerepherialMax:v11];
  [(PLBBPowerToolService *)self armUtilityThresholdVal];
  v14 = v13;
  [(PLBBPowerToolService *)self magicDeltaThresholdVal];
  v19 = 100.0 - v10 <= v14 - v15 && ([(PLBBPowerToolService *)self armUtilityThresholdVal], v17 = v16, [(PLBBPowerToolService *)self magicDeltaThresholdVal], v17 - v18 >= v12) && [(PLBBPowerToolService *)self isPackageTimeValidWithEntry:v4];

  return v19;
}

- (BOOL)isPackageTimeValidWithEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 entryDate];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F728]];

  [v6 doubleValue];
  v8 = v7 * -0.0000305175781;

  v9 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v5 sinceDate:v8];
  v10 = [(PLBBPowerToolService *)self notToRemoveDate];
  v11 = [v9 compare:v10];

  if (v11 == -1)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_17;
  }

  if ([(PLBBPowerToolService *)self containsExclusionsAfterCleanupWithDate:v9])
  {
    v12 = [(PLBBPowerToolService *)self startExclusionPeriods];
    v13 = [v12 count];
    v14 = [(PLBBPowerToolService *)self endExclusionPeriods];
    if (v13 == [v14 count])
    {

LABEL_7:
      v17 = [(PLBBPowerToolService *)self startExclusionPeriods];
      v18 = [v17 objectAtIndexedSubscript:0];
      v19 = [v9 compare:v18];
      if (v19 == -1 && (-[PLBBPowerToolService startExclusionPeriods](self, "startExclusionPeriods"), v13 = objc_claimAutoreleasedReturnValue(), [v13 objectAtIndexedSubscript:0], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "compare:") == 1))
      {
        v20 = 1;
      }

      else
      {
        v21 = [(PLBBPowerToolService *)self endExclusionPeriods];
        v22 = [v21 objectAtIndexedSubscript:0];
        if ([v9 compare:v22] == -1)
        {
          v23 = [(PLBBPowerToolService *)self endExclusionPeriods];
          [v23 objectAtIndexedSubscript:0];
          v24 = v26 = v13;
          v20 = [v5 compare:v24] == 1;

          v13 = v26;
        }

        else
        {
          v20 = 0;
        }

        if (v19 != -1)
        {
          goto LABEL_16;
        }
      }

LABEL_16:
      v15 = !v20;
      goto LABEL_17;
    }

    v13 = [(PLBBPowerToolService *)self endExclusionPeriods];
    v16 = [v13 count];

    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v15 = 1;
LABEL_17:

  return v15;
}

- (BOOL)containsExclusionsAfterCleanupWithDate:(id)a3
{
  v4 = a3;
  v5 = [(PLBBPowerToolService *)self startExclusionPeriods];
  v6 = [v5 count];

  if (v6)
  {
    while (1)
    {
      v7 = [(PLBBPowerToolService *)self endExclusionPeriods];
      v8 = [v7 count];
      if (v8)
      {
        v5 = [(PLBBPowerToolService *)self endExclusionPeriods];
        v6 = [v5 objectAtIndexedSubscript:0];
        if ([v4 compare:v6] == -1)
        {
          break;
        }
      }

      v9 = [(PLBBPowerToolService *)self endExclusionPeriods];
      v10 = [v9 count];

      if (v8)
      {
      }

      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = [(PLBBPowerToolService *)self startExclusionPeriods];
      [v11 removeObjectAtIndex:0];

      v12 = [(PLBBPowerToolService *)self endExclusionPeriods];
      [v12 removeObjectAtIndex:0];

      v13 = [(PLBBPowerToolService *)self startExclusionPeriods];
      v14 = [v13 count];

      if (!v14)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v15 = 1;
  }

  else
  {
LABEL_8:
    v15 = 0;
  }

  return v15;
}

- (double)percentageHistogramFromArray:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v16 + 1) + 8 * i) doubleValue];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v12 = [v4 objectAtIndexedSubscript:{objc_msgSend(v4, "count") - 1}];
    [v12 doubleValue];
    v11 = v13 / v8 * 100.0;
  }

  else
  {
    v11 = 0.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (double)calculateMaxPerepherialPercentageWithEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F838]];
  if (([MEMORY[0x277D3F208] isBasebandClass:1003001] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003003))
  {
    [(PLBBPowerToolService *)self percentageHistogramFromArray:v5];
    v7 = v6;
    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F720]];

    [(PLBBPowerToolService *)self percentageHistogramFromArray:v8];
    if (v7 < v9)
    {
      v7 = v9;
    }

    v10 = MEMORY[0x277D3F840];
    v11 = MEMORY[0x277D3F718];
    v12 = MEMORY[0x277D3F830];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F810]];

    [(PLBBPowerToolService *)self percentageHistogramFromArray:v8];
    v7 = v20;
    v10 = MEMORY[0x277D3F818];
    v11 = MEMORY[0x277D3F808];
    v12 = MEMORY[0x277D3F800];
  }

  v13 = [v4 objectForKeyedSubscript:*v12];

  [(PLBBPowerToolService *)self percentageHistogramFromArray:v13];
  if (v7 < v14)
  {
    v7 = v14;
  }

  v15 = [v4 objectForKeyedSubscript:*v11];

  [(PLBBPowerToolService *)self percentageHistogramFromArray:v15];
  if (v7 < v16)
  {
    v7 = v16;
  }

  v17 = [v4 objectForKeyedSubscript:*v10];

  [(PLBBPowerToolService *)self percentageHistogramFromArray:v17];
  if (v7 < v18)
  {
    v7 = v18;
  }

  return v7;
}

- (void)submitAWD
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D7BC58]) initWithComponentId:31 andBlockOnConfiguration:1];
  v4 = [v3 newMetricContainerWithIdentifier:2031617];
  v5 = v4;
  if (v4)
  {
    v59 = v4;
    v60 = v3;
    v61 = objc_alloc_init(MEMORY[0x277D817E0]);
    v6 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
    v7 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v6 timeIntervalSince1970];
    v9 = v8;
    [v7 timeIntervalSince1970];
    v11 = v10 - v9;

    v12 = 0x279A58000uLL;
    v13 = [(PLOperator *)PLBBPowerToolService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregatedARMUtil"];
    v14 = [(PLOperator *)self storage];
    v58 = v13;
    v15 = [v14 aggregateEntriesForKey:v13 withBucketLength:86400.0 inTimeIntervalRange:{v9, v11}];

    v57 = v15;
    v16 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v15];
    v96 = 0;
    memset(v95, 0, sizeof(v95));
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v66 objects:v94 count:16];
    if (v17)
    {
      v18 = v17;
      v64 = self;
      v19 = *v67;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v67 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v66 + 1) + 8 * i);
          v22 = [v21 objectForKeyedSubscript:@"ArmUtilBucket"];
          [v22 doubleValue];
          v24 = v23;

          v25 = [v21 objectForKeyedSubscript:@"ArmUtilCount"];
          [v25 doubleValue];
          *(v95 + v24) = v26;
        }

        v18 = [v16 countByEnumeratingWithState:&v66 objects:v94 count:16];
      }

      while (v18);
      self = v64;
      v12 = 0x279A58000;
    }

    else
    {
      v24 = 0;
    }

    [v61 setArmUtilityPDFs:v95 count:101];
    v27 = [*(v12 + 2608) entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"bbPowerPointCause"];
    v28 = [(PLOperator *)self storage];
    v56 = v27;
    v29 = [v28 entriesForKey:v27];

    v93 = 0;
    memset(v92, 0, sizeof(v92));
    v91 = 0;
    memset(v90, 0, sizeof(v90));
    v89 = 0;
    memset(v88, 0, sizeof(v88));
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    v83 = 0;
    memset(v82, 0, sizeof(v82));
    v81 = 0;
    memset(v80, 0, sizeof(v80));
    v79 = 0;
    memset(v78, 0, sizeof(v78));
    memset(v77, 0, sizeof(v77));
    memset(v76, 0, sizeof(v76));
    memset(v75, 0, sizeof(v75));
    memset(v74, 0, sizeof(v74));
    memset(v73, 0, sizeof(v73));
    memset(v72, 0, sizeof(v72));
    memset(v71, 0, sizeof(v71));
    memset(v70, 0, sizeof(v70));
    v65 = v29;
    if ([v29 count] != -1)
    {
      v30 = 0;
      v31 = 0;
      v63 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 1;
      while (1)
      {
        v36 = v31;
        if ([v65 count] != v30)
        {
          v39 = [v65 objectAtIndexedSubscript:v30];
          v40 = [v39 objectForKeyedSubscript:@"ArmUtil"];
          [v40 doubleValue];
          v24 = v41;

          v36 = [v39 objectForKeyedSubscript:@"cause"];

          if (v35 == 1)
          {
            v33 = 0;
            v32 = 1;
            v34 = v24;
            LODWORD(v63) = 1;
            HIDWORD(v63) = v24;
            goto LABEL_27;
          }

          v62 = v34;
          v42 = [v39 objectForKeyedSubscript:@"IsContinuous"];
          v43 = [v42 BOOLValue];

          if (v43)
          {
            v44 = [v31 isEqualToString:v36];
            v45 = v63;
            v46 = HIDWORD(v63);
            if (v44)
            {
              v46 = (v24 + HIDWORD(v63) * v63) / (v63 + 1);
              v45 = v63 + 1;
            }

            else
            {
              v33 = 1;
            }

            v63 = __PAIR64__(v46, v45);
            v47 = v24 + v62 * v32;
            v48 = ++v32;
            v34 = v47 / v48;
LABEL_27:

            if ((v33 & 1) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_28;
          }

          v34 = v62;
        }

        if (v34 <= 0x3C)
        {
          v37 = 60;
        }

        else
        {
          v37 = v34;
        }

        ++*(v78 + (v37 - 60));
        v38 = 120 * v32;
        if (v38 >= 0xB)
        {
          v38 = 11;
        }

        ++*(v70 + v38);
        v33 = 1;
        v34 = v24;
        v32 = 1;
LABEL_28:
        if (v31)
        {
          if (HIDWORD(v63) <= 0x3C)
          {
            v49 = 60;
          }

          else
          {
            v49 = HIDWORD(v63);
          }

          if (120 * v32 >= 0xB)
          {
            v50 = 11;
          }

          else
          {
            v50 = 120 * v32;
          }

          if ([v31 isEqualToString:@"RACHFail"])
          {
            v51 = v77;
            v52 = v92;
            goto LABEL_50;
          }

          if ([v31 isEqualToString:@"OOS"])
          {
            v51 = v76;
            v52 = v90;
            goto LABEL_50;
          }

          if ([v31 isEqualToString:@"TcXONotShutting"])
          {
            v51 = v75;
            v52 = v88;
            goto LABEL_50;
          }

          if ([v31 isEqualToString:@"MarginalCoverage"])
          {
            v51 = v74;
            v52 = v86;
            goto LABEL_50;
          }

          if ([v31 isEqualToString:@"Background"])
          {
            v51 = v73;
            v52 = v84;
            goto LABEL_50;
          }

          if ([v31 isEqualToString:@"struckInDCH"])
          {
            v51 = v72;
            v52 = v82;
            goto LABEL_50;
          }

          if ([v31 isEqualToString:@"Unknown"])
          {
            v51 = v71;
            v52 = v80;
LABEL_50:
            v33 = 0;
            ++*(v52 + (v49 - 60));
            ++*(v51 + v50);
          }

          else
          {
            v33 = 0;
          }

          LODWORD(v63) = 1;
          HIDWORD(v63) = v24;
        }

LABEL_52:
        v53 = v36;

        v30 = v35;
        v54 = [v65 count] + 1 > v35++;
        v31 = v53;
        if (!v54)
        {
          goto LABEL_56;
        }
      }
    }

    v53 = 0;
LABEL_56:
    v3 = v60;
    [v61 setTimestamp:{objc_msgSend(v60, "getAWDTimestamp")}];
    [v61 setCauseCodeRACHFailARMUtilitys:v92 count:41];
    [v61 setCauseCodeRACHFailDurations:v77 count:12];
    [v61 setCauseCodeOOSARMUtilitys:v90 count:41];
    [v61 setCauseCodeOOSDurations:v76 count:12];
    [v61 setCauseCodeTcXONotShuttingARMUtilitys:v88 count:41];
    [v61 setCauseCodeTcXONotShuttingDurations:v75 count:12];
    [v61 setCauseCodeMarginalCoverageARMUtilitys:v86 count:41];
    [v61 setCauseCodeMarginalCoverageDurations:v74 count:12];
    [v61 setCauseCodeBackgroundActivityARMUtilitys:v84 count:41];
    [v61 setCauseCodeBackgroundActivityDurations:v73 count:12];
    [v61 setCauseCodeStruckInDCHARMUtilitys:v82 count:41];
    [v61 setCauseCodeStruckInDCHDurations:v72 count:12];
    [v61 setCauseCodeUnknownARMUtilitys:v80 count:41];
    [v61 setCauseCodeUnknownDurations:v71 count:12];
    v5 = v59;
    [v59 setMetric:v61];
    [v60 submitMetric:v59];
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (PLTelephonyConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end