@interface PLDebugService
+ (id)entryAggregateDefinitionAggregateTest;
+ (id)entryAggregateDefinitionAggregateTestSmall;
+ (id)entryAggregateDefinitionAggregateTestSplitAndBucket;
+ (id)entryAggregateDefinitionAggregateTestVerySmall;
+ (id)entryAggregateDefinitions;
+ (id)entryEventNoneDefinitionArrayTest;
+ (id)entryEventNoneDefinitionFastInsertTest;
+ (id)entryEventNoneDefinitionPLAPITest;
+ (id)entryEventNoneDefinitionSleepNotificationTest;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionTest;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)rawWrite:(id)write;
- (PLDebugService)init;
- (id)filledTestArrayEntry;
- (id)getValueForPropertyName:(id)name forEnergyMonitor:(id)monitor;
- (id)handleEnergyMonitorDebugQuery:(id)query;
- (id)testPLAPIAccounting_AddPowerMeasurementEventInterval:(id)interval;
- (id)testPLAPIAccounting_CreateDistributionEventForwardAdd:(id)add;
- (id)testPLAPIAccounting_CreateDistributionEventForwardChild:(id)child;
- (id)testPLAPIAccounting_CreateDistributionEventForwardRem:(id)rem;
- (id)testPLAPIAccounting_CreateDistributionEventInterval:(id)interval;
- (id)testPLAPIAccounting_CreateDistributionEventPoint:(id)point;
- (id)testPLAPIAccounting_CreatePowerEventBackward:(id)backward;
- (id)testPLAPIAccounting_CreatePowerEventForward:(id)forward;
- (id)testPLAPIAccounting_CreatePowerEventInterval:(id)interval;
- (id)testPLAPIAccounting_CreateQualificationEventBackward:(id)backward;
- (id)testPLAPIAccounting_CreateQualificationEventForwardAdd:(id)add;
- (id)testPLAPIAccounting_CreateQualificationEventForwardChild:(id)child;
- (id)testPLAPIAccounting_CreateQualificationEventForwardRem:(id)rem;
- (id)testPLAPIAccounting_CreateQualificationEventInterval:(id)interval;
- (id)testPLAPIAccounting_CreateQualificationEventPoint:(id)point;
- (id)testPLAPIAccounting_ExistingTest:(id)test;
- (id)testPLAPICore_DeleteAllEntriesForKey:(id)key;
- (id)testPLAPICore_DeleteAllEntriesForKeyBTWF:(id)f;
- (id)testPLAPICore_DeleteAllEntriesForKeyWF:(id)f;
- (id)testPLAPICore_DeleteEntry:(id)entry;
- (id)testPLAPICore_DeleteEntryForKey:(id)key;
- (id)testPLAPICore_EntriesForKeyBeforeTICWF:(id)f;
- (id)testPLAPICore_EntriesForKeyInTimeRange:(id)range;
- (id)testPLAPICore_EntriesForKeyWithProperties:(id)properties;
- (id)testPLAPICore_LastEntryForKeyWC:(id)c;
- (id)testPLAPICore_LastEntryForKeyWSEK:(id)k;
- (id)testPLAPICore_UpdateEntry:(id)entry;
- (id)testPLAPICore_WriteEntries:(id)entries;
- (id)testPLAPICore_WriteEntry:(id)entry;
- (id)test_LogErr:(id)err str:(id)str;
- (id)test_LogPass:(id)pass str:(id)str;
- (void)aggregateDataFromSignpost;
- (void)constructAppIdentifierColumns;
- (void)constructAppIdentifierTables;
- (void)constructDMATables;
- (void)constructTrimQueries;
- (void)currentBasebandTime;
- (void)fireSignificantBatteryChangeNotification;
- (void)initOperatorDependancies;
- (void)iterateAgents;
- (void)iterateServices;
- (void)populateIdentifiers:(id)identifiers;
- (void)printNullTestResultsForEntry:(id)entry withDescription:(id)description;
- (void)stressActivityScheduler;
- (void)stressAggregateSmall;
- (void)stressAggregateVerySmall;
- (void)stressCache;
- (void)stressCacheSmall;
- (void)stressMidnightCalculation;
- (void)stressMonotonicTimer;
- (void)stressMonotonicTimer2;
- (void)stressMonotonicTimer3;
- (void)stressObjectForKey;
- (void)stressPLEntry;
- (void)stressSetObjectForKey;
- (void)stressTaskingSubmission;
- (void)stressTimer;
- (void)testABM;
- (void)testAllEntryKeyRequests;
- (void)testArchive;
- (void)testArray;
- (void)testBlockingFlushCaches;
- (void)testCompression;
- (void)testDailyTasks;
- (void)testEntryApplicationAgent;
- (void)testEntryDelete;
- (void)testEntryLogRequestedForEntryKey:(id)key;
- (void)testEntryQueries;
- (void)testEntrySleep;
- (void)testEntryWake;
- (void)testExit;
- (void)testFastInserts;
- (void)testGenerateOTASubmission;
- (void)testGenerateSafeguardSubmission;
- (void)testMonotonicAggregateEntries;
- (void)testMonotonicAggregateEntriesExtendedTime;
- (void)testMonotonicTimerThroughSleep;
- (void)testProportionateAggregateEntries;
- (void)testQuarantineExit;
- (void)testScheduleSafeguardSubmission;
- (void)testTrimBGSQL;
- (void)testTrimCESQL;
- (void)testTrimEPSQL;
- (void)testTrimXCSQL;
- (void)testUTF8;
@end

@implementation PLDebugService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLDebugService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Test";
  entryEventPointDefinitionTest = [self entryEventPointDefinitionTest];
  v7[0] = entryEventPointDefinitionTest;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointDefinitionTest
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_282C1CB58;
  v18[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v3;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"StringKey1";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v16[0] = commonTypeDict_StringFormat;
  v15[1] = @"StringKey2";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v16[1] = commonTypeDict_StringFormat2;
  v15[2] = @"DefaultKey1";
  v13 = *MEMORY[0x277D3F5A8];
  v14 = &unk_282C12EE8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryAggregateDefinitions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"AggregateTest";
  entryAggregateDefinitionAggregateTest = [self entryAggregateDefinitionAggregateTest];
  v11[0] = entryAggregateDefinitionAggregateTest;
  v10[1] = @"AggregateTestSmall";
  entryAggregateDefinitionAggregateTestSmall = [self entryAggregateDefinitionAggregateTestSmall];
  v11[1] = entryAggregateDefinitionAggregateTestSmall;
  v10[2] = @"AggregateTestVerySmall";
  entryAggregateDefinitionAggregateTestVerySmall = [self entryAggregateDefinitionAggregateTestVerySmall];
  v11[2] = entryAggregateDefinitionAggregateTestVerySmall;
  v10[3] = @"AggregateTestSplitAndBucket";
  entryAggregateDefinitionAggregateTestSplitAndBucket = [self entryAggregateDefinitionAggregateTestSplitAndBucket];
  v11[3] = entryAggregateDefinitionAggregateTestSplitAndBucket;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryAggregateDefinitionAggregateTest
{
  v50[4] = *MEMORY[0x277D85DE8];
  v49[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v47[0] = *MEMORY[0x277D3F568];
  v47[1] = v2;
  v48[0] = &unk_282C1CB68;
  v48[1] = MEMORY[0x277CBEC28];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v50[0] = v29;
  v49[1] = *MEMORY[0x277D3F540];
  v45[0] = @"PrimaryKey1";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v46[0] = commonTypeDict_StringFormat;
  v45[1] = @"PrimaryKey2";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v46[1] = commonTypeDict_StringFormat2;
  v45[2] = @"SumField";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat_aggregateFunction_sum];
  v46[2] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v45[3] = @"SumField2";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat_aggregateFunction_sum];
  v46[3] = commonTypeDict_RealFormat_aggregateFunction_sum2;
  v45[4] = @"MinField";
  v4 = *MEMORY[0x277D3F530];
  v42[0] = *MEMORY[0x277D3F5A8];
  v3 = v42[0];
  v42[1] = v4;
  v5 = MEMORY[0x277CBEC38];
  v44[0] = &unk_282C12F00;
  v44[1] = MEMORY[0x277CBEC38];
  v43 = *MEMORY[0x277D3F480];
  v6 = v43;
  v44[2] = &unk_282C12F18;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v42 count:3];
  v46[4] = v20;
  v45[5] = @"AverageField";
  v40[0] = v3;
  v40[1] = v4;
  v41[0] = &unk_282C12F00;
  v41[1] = v5;
  v40[2] = v6;
  v41[2] = &unk_282C12F30;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v46[5] = v7;
  v45[6] = @"MaxField";
  v38[0] = v3;
  v38[1] = v4;
  v39[0] = &unk_282C12F00;
  v39[1] = v5;
  v38[2] = v6;
  v39[2] = &unk_282C12F48;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v46[6] = v8;
  v45[7] = @"NumericalField";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v46[7] = commonTypeDict_RealFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:8];
  v50[1] = v11;
  v49[2] = *MEMORY[0x277D3F478];
  v36[0] = &unk_282C1CB78;
  v34 = *MEMORY[0x277D3F470];
  v12 = v34;
  v35 = &unk_282C1CB88;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v37[0] = v13;
  v36[1] = &unk_282C1CB88;
  v32 = v12;
  v33 = &unk_282C1CB98;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v37[1] = v14;
  v36[2] = &unk_282C1CB98;
  v30 = v12;
  v31 = &unk_282C1CBA8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v37[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v49[3] = *MEMORY[0x277D3F488];
  v50[2] = v16;
  v50[3] = &unk_282C168D8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)entryAggregateDefinitionAggregateTestSmall
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1CBB8;
  v25[1] = MEMORY[0x277CBEC28];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v17;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"PrimaryKey1";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v23[0] = commonTypeDict_IntegerFormat;
  v22[1] = @"PrimaryKey2";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v23[1] = commonTypeDict_StringFormat;
  v22[2] = @"SumField";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat_aggregateFunction_sum];
  v23[2] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v22[3] = @"SumField2";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat_aggregateFunction_sum];
  v23[3] = commonTypeDict_RealFormat_aggregateFunction_sum2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v27[1] = v9;
  v26[2] = *MEMORY[0x277D3F478];
  v20 = &unk_282C1CBC8;
  v18 = *MEMORY[0x277D3F470];
  v19 = &unk_282C1CB88;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v26[3] = *MEMORY[0x277D3F488];
  v27[2] = v11;
  v27[3] = &unk_282C168F0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryAggregateDefinitionAggregateTestVerySmall
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1CB58;
  v21[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v3;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"PrimaryKey1";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v18[1] = @"SumField";
  v19[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
  v19[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v23[1] = v8;
  v22[2] = *MEMORY[0x277D3F478];
  v16 = &unk_282C1CBC8;
  v14 = *MEMORY[0x277D3F470];
  v15 = &unk_282C1CB88;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v22[3] = *MEMORY[0x277D3F488];
  v23[2] = v10;
  v23[3] = &unk_282C16908;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryAggregateDefinitionAggregateTestSplitAndBucket
{
  v32[4] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v29[0] = *MEMORY[0x277D3F568];
  v29[1] = v2;
  v30[0] = &unk_282C1CB58;
  v30[1] = MEMORY[0x277CBEC28];
  v29[2] = *MEMORY[0x277D3F490];
  v30[2] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v32[0] = v18;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"PrimaryKey1";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v28[0] = commonTypeDict_IntegerFormat;
  v27[1] = @"SumField";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
  v28[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v27[2] = @"SumField2";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum2 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat_aggregateFunction_sum];
  v28[2] = commonTypeDict_RealFormat_aggregateFunction_sum2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v32[1] = v7;
  v31[2] = *MEMORY[0x277D3F478];
  v25[0] = &unk_282C1CBC8;
  v23 = *MEMORY[0x277D3F470];
  v8 = v23;
  v24 = &unk_282C1CB88;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v9;
  v25[1] = &unk_282C1CB88;
  v21 = v8;
  v22 = &unk_282C1CB88;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v26[1] = v10;
  v25[2] = &unk_282C1CB98;
  v19 = v8;
  v20 = &unk_282C1CB88;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v26[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v31[3] = *MEMORY[0x277D3F488];
  v32[2] = v12;
  v32[3] = &unk_282C16920;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventNoneDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"PLAPITest";
  entryEventNoneDefinitionPLAPITest = [self entryEventNoneDefinitionPLAPITest];
  v8[1] = @"ArrayTest";
  v9[0] = entryEventNoneDefinitionPLAPITest;
  entryEventNoneDefinitionArrayTest = [self entryEventNoneDefinitionArrayTest];
  v9[1] = entryEventNoneDefinitionArrayTest;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventNoneDefinitionPLAPITest
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1CBD8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"entry1";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"entry2";
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

+ (id)entryEventNoneDefinitionArrayTest
{
  v26[3] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v23 = *MEMORY[0x277D3F568];
  v24 = &unk_282C1CB58;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v15;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"RandomString";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v22[0] = commonTypeDict_StringFormat;
  v21[1] = @"RandomNumber";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v22[1] = commonTypeDict_RealFormat;
  v21[2] = @"StaticArrayType";
  v7 = *MEMORY[0x277D3F598];
  v18[0] = *MEMORY[0x277D3F5A8];
  v6 = v18[0];
  v18[1] = v7;
  v20[0] = &unk_282C12F60;
  v20[1] = &unk_282C12F78;
  v19 = *MEMORY[0x277D3F5A0];
  v8 = v19;
  v20[2] = &unk_282C12F90;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v18 count:3];
  v22[2] = v9;
  v21[3] = @"DynamicArrayType";
  v16[0] = v6;
  v16[1] = v8;
  v17[0] = &unk_282C12F60;
  v17[1] = &unk_282C12F90;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v22[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v25[2] = *MEMORY[0x277D3F4B0];
  v26[1] = v11;
  v26[2] = &unk_282C16938;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventNoneDefinitionSleepNotificationTest
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_282C1CB58;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"NotificationType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v14[0] = commonTypeDict_IntegerFormat;
  v13[1] = @"Listener";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v14[1] = commonTypeDict_StringFormat;
  v13[2] = @"FiredTimestamp";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v14[2] = commonTypeDict_DateFormat;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventNoneDefinitionFastInsertTest
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1CB58;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"iteration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (PLDebugService)init
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = 0x277D3F000uLL;
  if (([MEMORY[0x277D3F180] BOOLForKey:@"PLDebugService_Enabled" ifNotSet:0] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "debugEnabled"))
  {
    v96.receiver = self;
    v96.super_class = PLDebugService;
    v4 = [(PLOperator *)&v96 init];
    if (v4)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testMonotonicAggregateEntries", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v6 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v6, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testMonotonicAggregateEntriesExtendedTime", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v7 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v7, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testProportionateAggregateEntries", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v8 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v8, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testEntryQueries", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v9 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v9, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testEntryDelete", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v10 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v10, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testEntryApplicationAgent", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v11 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v11, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testEntrySleep", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v12, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testEntryWake", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v13 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v13, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testAllEntryKeyRequests", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v14 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v14, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testFastInserts", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v15 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v15, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.ABM", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v16 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v16, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.TestArrays", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v17 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v17, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.generateOTASubmission", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v18 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v18, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.generateSafeguardSubmission", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v19 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v19, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.scheduleSafeguardSubmission", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v20 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v20, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressTaskingSubmission", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v21 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v21, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.dailyTasks", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v22 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v22, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.archive", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v23 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v23, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.trimEPSQL", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v24 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v24, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.trimCESQL", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v25 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v25, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.trimXCSQL", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v26 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v26, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.logSizeOfStagingEntryCache", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v27 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v27, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.dumpStagingEntryCache", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v28 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v28, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stresstimer", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v29 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v29, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressplentry", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v30 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v30, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stresscache", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v31 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v31, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stresscachesmall", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v32 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v32, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressObjectForKey", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v33 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v33, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressSetObjectForKey", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v34 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v34, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressActivityScheduler", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v35 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v35, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressMidnightCalculation", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v36 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v36, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressMonotonicTimer", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v37 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v37, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressMonotonicTimer2", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v38 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v38, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressMonotonicTimer3", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v39 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v39, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testMonotonicTimerThroughSleep", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v40 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v40, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.currentBasebandTime", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v41 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v41, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testExit", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v42 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v42, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testQuarantineExit", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v43 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v43, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressAggregateSmall", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v44 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v44, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.stressAggregateVerySmall", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v45 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v45, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testUTF8", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v46 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v46, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testCompression", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v47 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v47, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.testBlockingFlushCaches", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v48 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v48, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.fireSBC", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v49 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v49, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.aggregateDataFromSignpost", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v50 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v50, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.appIdentifierTables", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v51 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v51, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.appIdentifierColumns", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v52 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v52, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.DMATables", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v53 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v53, v4, TestEntryQueriesRequested, @"com.apple.powerlogd.trimQueries", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      registeredOperators = [MEMORY[0x277D3F168] registeredOperators];
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"allAgentClasses=%@", registeredOperators];
      v56 = MEMORY[0x277D3F178];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
      lastPathComponent = [v57 lastPathComponent];
      v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService init]"];
      [v56 logMessage:v55 fromFile:lastPathComponent fromFunction:v59 fromLineNumber:386];

      v60 = PLLogCommon();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v100 = v55;
        _os_log_debug_impl(&dword_21A4C6000, v60, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      obj = registeredOperators;
      v61 = 0x277CCA000uLL;
      v83 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
      if (v83)
      {
        v82 = *v93;
        do
        {
          v62 = 0;
          do
          {
            if (*v93 != v82)
            {
              objc_enumerationMutation(obj);
            }

            v84 = v62;
            v63 = *(*(&v92 + 1) + 8 * v62);
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            entryKeys = [v63 entryKeys];
            v64 = [entryKeys countByEnumeratingWithState:&v88 objects:v97 count:16];
            if (v64)
            {
              v65 = v64;
              v86 = *v89;
              do
              {
                v66 = 0;
                do
                {
                  if (*v89 != v86)
                  {
                    objc_enumerationMutation(entryKeys);
                  }

                  v67 = [*(v61 + 3240) stringWithFormat:@"com.apple.powerlogd.testEntryLog.%@", *(*(&v88 + 1) + 8 * v66)];
                  if ([*(v3 + 384) debugEnabled])
                  {
                    v68 = objc_opt_class();
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = __22__PLDebugService_init__block_invoke;
                    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                    block[4] = v68;
                    if (qword_2811F6930 != -1)
                    {
                      dispatch_once(&qword_2811F6930, block);
                    }

                    if (_MergedGlobals_1_58 == 1)
                    {
                      v69 = v4;
                      v70 = v3;
                      v71 = [*(v61 + 3240) stringWithFormat:@"signing up for notification %@", v67];
                      v72 = MEMORY[0x277D3F178];
                      v73 = [*(v61 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
                      lastPathComponent2 = [v73 lastPathComponent];
                      v75 = [*(v61 + 3240) stringWithUTF8String:"-[PLDebugService init]"];
                      [v72 logMessage:v71 fromFile:lastPathComponent2 fromFunction:v75 fromLineNumber:390];

                      v76 = PLLogCommon();
                      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v100 = v71;
                        _os_log_debug_impl(&dword_21A4C6000, v76, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }

                      v3 = v70;
                      v4 = v69;
                      v61 = 0x277CCA000;
                    }
                  }

                  v77 = CFNotificationCenterGetDarwinNotifyCenter();
                  CFNotificationCenterAddObserver(v77, v4, TestEntryLogRequested, v67, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

                  ++v66;
                }

                while (v65 != v66);
                v65 = [entryKeys countByEnumeratingWithState:&v88 objects:v97 count:16];
              }

              while (v65);
            }

            v62 = v84 + 1;
          }

          while (v84 + 1 != v83);
          v83 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
        }

        while (v83);
      }
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v79 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

uint64_t __22__PLDebugService_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_58 = result;
  return result;
}

- (void)printNullTestResultsForEntry:(id)entry withDescription:(id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB68];
  entryCopy = entry;
  v7 = [v5 stringWithFormat:@"%@:\n***\n", description];
  v8 = [entryCopy objectForKeyedSubscript:@"RandomString"];
  [v7 appendFormat:@"RandomString=%@\n", v8];

  v9 = [entryCopy objectForKeyedSubscript:@"RandomString"];
  [v7 appendFormat:@"RandomString.class=%@\n", objc_opt_class()];

  keys = [entryCopy keys];
  [v7 appendFormat:@"allKeys=%@\n", keys];

  allValues = [entryCopy allValues];
  [v7 appendFormat:@"allValues=%@\n", allValues];

  dictionary = [entryCopy dictionary];
  [v7 appendFormat:@"dictionary=%@\n", dictionary];

  [v7 appendFormat:@"entry=%@\n", entryCopy];
  v13 = [entryCopy objectForKeyedSubscript:@"RandomString"];

  if (v13)
  {
    [v7 appendString:@"\n!!!!!!!!!!!!!!!!!This should not log!!!!!!!!!!!!!!!!!!!!!!!!!\n"];
  }

  [v7 appendString:@" \n***\n\n\n"];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v7];
  v15 = MEMORY[0x277D3F178];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v16 lastPathComponent];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService printNullTestResultsForEntry:withDescription:]"];
  [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:413];

  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v14;
    _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)initOperatorDependancies
{
  v89 = *MEMORY[0x277D85DE8];
  if ([(PLOperator *)self isDebugEnabledForKey:@"NULLTest"])
  {
    v3 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"ArrayTest"];
    v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
    [v4 setObject:0 forKeyedSubscript:@"RandomString"];
    [(PLDebugService *)self printNullTestResultsForEntry:v4 withDescription:@"nilSetEntry"];
    [(PLOperator *)self logEntry:v4];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
    null = [MEMORY[0x277CBEB68] null];
    [v5 setObject:null forKeyedSubscript:@"RandomString"];

    [(PLDebugService *)self printNullTestResultsForEntry:v5 withDescription:@"nsnullSetEntry"];
    [(PLOperator *)self logEntry:v5];
    v69 = v3;
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
    [(PLDebugService *)self printNullTestResultsForEntry:v7 withDescription:@"notSetEntry"];
    [(PLOperator *)self logEntry:v7];
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    null2 = [MEMORY[0x277CBEB68] null];
    null3 = [MEMORY[0x277CBEB68] null];
    v12 = [v8 stringWithFormat:@"nil=%@ nil.class=%@ NSNull=%@ NSNull.class=%@", 0, v9, null2, objc_opt_class()];

    v13 = MEMORY[0x277D3F178];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
    lastPathComponent = [v14 lastPathComponent];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]"];
    [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:435];

    v17 = PLLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v86 = v12;
      _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Null test done"];
    v19 = MEMORY[0x277D3F178];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
    lastPathComponent2 = [v20 lastPathComponent];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]"];
    [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:436];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v86 = v18;
      _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v24 = [objc_alloc(MEMORY[0x277D3F270]) initWithOperator:self withRegistration:&unk_282C19818 withBlock:&__block_literal_global_60];
  [(PLDebugService *)self setXpcListenerPLLog:v24];
  v25 = objc_alloc(MEMORY[0x277D3F270]);
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_379;
  v84[3] = &unk_27825A1D8;
  v84[4] = self;
  v26 = [v25 initWithOperator:self withRegistration:&unk_282C19840 withBlock:v84];
  [(PLDebugService *)self setAggregateTestListener:v26];
  v27 = objc_alloc(MEMORY[0x277D3F278]);
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_2;
  v83[3] = &unk_278259810;
  v83[4] = self;
  v70 = [v27 initWithOperator:self withRegistration:&unk_282C19868 withBlock:v83];
  [(PLDebugService *)self setAggregateTestResponder:?];
  v28 = objc_alloc(MEMORY[0x277D3F270]);
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_416;
  v82[3] = &unk_27825A1D8;
  v82[4] = self;
  v68 = [v28 initWithOperator:self withRegistration:&unk_282C19890 withBlock:v82];
  [(PLDebugService *)self setSchemaTestListener:?];
  if ([(PLOperator *)self isDebugEnabledForKey:@"PowerAssertion"])
  {
    v29 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:@"PLPowerAssertionAgent_EventInterval_Assertion" forUpdateOrInsert:2 withBlock:&__block_literal_global_439];
    [(PLDebugService *)self setAssertionListener:v29];
    v30 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:@"PLPowerAssertionAgent_EventInterval_Assertion" forUpdateOrInsert:1 withBlock:&__block_literal_global_445];
    [(PLDebugService *)self setAssertionNewListener:v30];
    v31 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:@"PLPowerAssertionAgent_EventInterval_Assertion" forUpdateOrInsert:0 withBlock:&__block_literal_global_451];
    [(PLDebugService *)self setAssertionUpdateListener:v31];
  }

  if ([(PLOperator *)self isDebugEnabledForKey:@"SleepNotification"])
  {
    v67 = v26;
    v32 = v24;
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Setup SleepNotification test!"];
    v34 = MEMORY[0x277D3F178];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
    lastPathComponent3 = [v35 lastPathComponent];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]"];
    [v34 logMessage:v33 fromFile:lastPathComponent3 fromFunction:v37 fromLineNumber:532];

    v38 = PLLogCommon();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v86 = v33;
      _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_461;
    v81[3] = &unk_2782597E8;
    v81[4] = self;
    v39 = [MEMORY[0x277D3F1A8] sleepEntryNotificationWithOperator:self withBlock:v81];
    [(PLDebugService *)self setSleepNotification:v39];
    v40 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F468]];
    [(PLDebugService *)self setCanSleepSemaphore:v40];

    canSleepSemaphore = [(PLDebugService *)self canSleepSemaphore];
    [canSleepSemaphore signalInterestByObject:self];

    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_478;
    v80[3] = &unk_2782597E8;
    v80[4] = self;
    v42 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v80];
    [(PLDebugService *)self setCanSleepNotification:v42];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_485;
    v79[3] = &unk_2782597E8;
    v79[4] = self;
    v43 = [MEMORY[0x277D3F1A8] wakeEntryNotificationWithOperator:self withBlock:v79];
    [(PLDebugService *)self setWakeNotification:v43];

    v24 = v32;
    v26 = v67;
  }

  v44 = objc_alloc(MEMORY[0x277D3F278]);
  v45 = dispatch_get_global_queue(-32768, 0);
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_499;
  v78[3] = &unk_278259810;
  v78[4] = self;
  v46 = [v44 initWithWorkQueue:v45 withRegistration:&unk_282C198B8 withBlock:v78];

  [(PLDebugService *)self setXpcResponderPLAPITest:v46];
  v47 = objc_alloc(MEMORY[0x277D3F270]);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_619;
  v77[3] = &unk_27825A1D8;
  v77[4] = self;
  v48 = [v47 initWithOperator:self withRegistration:&unk_282C198E0 withBlock:v77];
  [(PLDebugService *)self setClientFrameworkTestListener:v48];

  v49 = objc_alloc(MEMORY[0x277D3F278]);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_2_624;
  v76[3] = &unk_278259810;
  v76[4] = self;
  v50 = [v49 initWithOperator:self withRegistration:&unk_282C19908 withBlock:v76];
  [(PLDebugService *)self setClientFrameworkTestResponder:v50];

  v51 = objc_alloc(MEMORY[0x277D3F270]);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_3;
  v75[3] = &unk_27825A1D8;
  v75[4] = self;
  v52 = [v51 initWithOperator:self withRegistration:&unk_282C19930 withBlock:v75];
  [(PLDebugService *)self setClientFrameworkTestListenerNonAllowlisted:v52];

  v53 = objc_alloc(MEMORY[0x277D3F278]);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_4;
  v74[3] = &unk_278259810;
  v74[4] = self;
  v54 = [v53 initWithOperator:self withRegistration:&unk_282C19958 withBlock:v74];
  [(PLDebugService *)self setClientFrameworkTestResponderNonAllowlisted:v54];

  array = [MEMORY[0x277CBEB18] array];
  [(PLDebugService *)self setClientFrameworkTestDataBatch:array];

  v56 = objc_alloc(MEMORY[0x277D3F270]);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_5;
  v73[3] = &unk_27825A1D8;
  v73[4] = self;
  v57 = [v56 initWithOperator:self withRegistration:&unk_282C19980 withBlock:v73];
  [(PLDebugService *)self setClientFrameworkTestListenerBatch:v57];

  v58 = objc_alloc(MEMORY[0x277D3F278]);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_6;
  v72[3] = &unk_278259810;
  v72[4] = self;
  v59 = [v58 initWithOperator:self withRegistration:&unk_282C199A8 withBlock:v72];
  [(PLDebugService *)self setClientFrameworkTestResponderBatch:v59];

  if ([(PLOperator *)self isDebugEnabledForKey:@"EnergyMonitorDebug"])
  {
    v60 = PLLogCommon();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v86 = @"/tmp/energy_monitor_debug_config.plist";
      _os_log_impl(&dword_21A4C6000, v60, OS_LOG_TYPE_INFO, "EnergyMonitor Debug mode enabled, reading from plist at %@", buf, 0xCu);
    }

    v61 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/tmp/energy_monitor_debug_config.plist"];
    v62 = PLLogCommon();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v86 = v61;
      _os_log_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_INFO, "mockData=%@", buf, 0xCu);
    }

    if (v61)
    {
      v63 = [objc_alloc(MEMORY[0x277D3F050]) initWithDebugMode:1 andMockData:v61 andCompletionBlock:&__block_literal_global_663];
      [(PLDebugService *)self setEnergyMonitorDebugInstance:v63];
    }

    else
    {
      v63 = PLLogCommon();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v86 = 0;
        v87 = 2112;
        v88 = @"/tmp/energy_monitor_debug_config.plist";
        _os_log_error_impl(&dword_21A4C6000, v63, OS_LOG_TYPE_ERROR, "error: mockData=%@ at path=%@", buf, 0x16u);
      }
    }
  }

  v64 = objc_alloc(MEMORY[0x277D3F278]);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_668;
  v71[3] = &unk_278259810;
  v71[4] = self;
  v65 = [v64 initWithOperator:self withRegistration:&unk_282C199D0 withBlock:v71];
  [(PLDebugService *)self setEnergyMonitorDebugResponder:v65];

  v66 = *MEMORY[0x277D85DE8];
}

void __42__PLDebugService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"got callback! %@", a5];
  v6 = MEMORY[0x277D3F178];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v8 = [v7 lastPathComponent];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke"];
  [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:440];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_379(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *MEMORY[0x277D3F5B8];
  v7 = a5;
  v26 = [(PLOperator *)PLDebugService entryKeyForType:v6 andName:@"AggregateTest"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v26];
  v9 = [v7 objectForKeyedSubscript:@"PrimaryKey1"];
  [v8 setObject:v9 forKeyedSubscript:@"PrimaryKey1"];

  v10 = [v7 objectForKeyedSubscript:@"PrimaryKey2"];
  [v8 setObject:v10 forKeyedSubscript:@"PrimaryKey2"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v7 objectForKeyedSubscript:@"SumField"];
  [v12 doubleValue];
  v13 = [v11 numberWithDouble:?];
  [v8 setObject:v13 forKeyedSubscript:@"SumField"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v7 objectForKeyedSubscript:@"SumField2"];
  [v15 doubleValue];
  v16 = [v14 numberWithDouble:?];
  [v8 setObject:v16 forKeyedSubscript:@"SumField2"];

  v17 = MEMORY[0x277CCABB0];
  v18 = [v7 objectForKeyedSubscript:@"AverageField"];
  [v18 doubleValue];
  v19 = [v17 numberWithDouble:?];
  [v8 setObject:v19 forKeyedSubscript:@"AverageField"];

  v20 = MEMORY[0x277CCABB0];
  v21 = [v7 objectForKeyedSubscript:@"MaxField"];
  [v21 doubleValue];
  v22 = [v20 numberWithDouble:?];
  [v8 setObject:v22 forKeyedSubscript:@"MaxField"];

  v23 = MEMORY[0x277CCABB0];
  v24 = [v7 objectForKeyedSubscript:@"MinField"];

  [v24 doubleValue];
  v25 = [v23 numberWithDouble:?];
  [v8 setObject:v25 forKeyedSubscript:@"MinField"];

  [*(a1 + 32) logEntry:v8];
}

id __42__PLDebugService_initOperatorDependancies__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregateTest"];
  v8 = [v6 objectForKeyedSubscript:@"bucketLength"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v6 objectForKeyedSubscript:@"location"];
  [v11 doubleValue];
  v13 = v12;
  v50 = v6;
  v14 = [v6 objectForKeyedSubscript:@"length"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [*(a1 + 32) storage];
  v49 = v7;
  v18 = [v17 aggregateEntriesForKey:v7 withBucketLength:v10 inTimeIntervalRange:{v13, v16}];

  v19 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v56;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v55 + 1) + 8 * i) serializedForJSON];
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v22);
  }

  v26 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v20];
  v27 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v28 = v26;
  v29 = [v28 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v52;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v52 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v51 + 1) + 8 * j) serializedForJSON];
        [v27 addObject:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v30);
  }

  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"summarizedEntries=%@", v28];
  v35 = MEMORY[0x277D3F178];
  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v37 = [v36 lastPathComponent];
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke_2"];
  [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:479];

  v39 = PLLogCommon();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v62 = v34;
    _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"resultEntries=%@", v20];
  v41 = MEMORY[0x277D3F178];
  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v43 = [v42 lastPathComponent];
  v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke"];
  [v41 logMessage:v40 fromFile:v43 fromFunction:v44 fromLineNumber:480];

  v45 = PLLogCommon();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v62 = v40;
    _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v59[0] = @"results";
  v59[1] = @"summarizedResults";
  v60[0] = v19;
  v60[1] = v27;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_416(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v48 = v6;
  obj = [v6 allKeys];
  v8 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
    v41 = *MEMORY[0x277D3F5E0];
    v42 = *v56;
    do
    {
      v11 = 0;
      v43 = v9;
      do
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * v11);
        if (([v12 isEqualToString:@"count"] & 1) == 0)
        {
          v47 = v11;
          v13 = [(PLOperator *)PLDebugService entryKeyForType:v41 andName:v12];
          v46 = [MEMORY[0x277D3F198] definitionForEntryKey:v13];
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logging entryKey %@ with definition %@", v13, v46];
          v15 = MEMORY[0x277D3F178];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
          v17 = [v16 lastPathComponent];
          v18 = v14;
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke"];
          [v15 logMessage:v18 fromFile:v17 fromFunction:v19 fromLineNumber:492];

          v20 = PLLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v61 = v18;
            _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v21 = objc_opt_new();
          [v7 setObject:v21 forKeyedSubscript:v13];

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v45 = v12;
          v22 = [v48 objectForKeyedSubscript:v12];
          v23 = [v22 countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v52;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v52 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v51 + 1) + 8 * i);
                v28 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
                v49[0] = MEMORY[0x277D85DD0];
                v49[1] = 3221225472;
                v49[2] = __42__PLDebugService_initOperatorDependancies__block_invoke_424;
                v49[3] = &unk_27825F748;
                v50 = v28;
                v29 = v28;
                [v27 enumerateKeysAndObjectsUsingBlock:v49];
                v30 = [v7 objectForKeyedSubscript:v13];
                [v30 addObject:v29];

                [*(a1 + 32) logEntry:v29];
              }

              v24 = [v22 countByEnumeratingWithState:&v51 objects:v59 count:16];
            }

            while (v24);
          }

          v31 = MEMORY[0x277CCACA8];
          v32 = [v48 objectForKeyedSubscript:v45];
          v33 = [v7 objectForKeyedSubscript:v13];
          v34 = [v31 stringWithFormat:@"payload[%@]=%@ entries[%@]=%@", v45, v32, v13, v33];

          v35 = MEMORY[0x277D3F178];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
          v37 = [v36 lastPathComponent];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke_2"];
          [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:506];

          v39 = PLLogCommon();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v61 = v34;
            _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v10 = v42;
          v9 = v43;
          v11 = v47;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v9);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_436(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"AssertionListener callback: name=%@ userInfo=%@", a3, a2];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:516];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_443(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"AssertionNewListener callback: name=%@ userInfo=%@", a3, a2];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:521];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_449(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"AssertionUpdateListener callback: name=%@ userInfo=%@", a3, a2];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:526];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_461(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"sleepListener block: %@", v4];
  v6 = MEMORY[0x277D3F178];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v8 = [v7 lastPathComponent];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke"];
  [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:534];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v11 = [v4 objectForKeyedSubscript:@"entry"];

  v12 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"SleepNotificationTest"];
  v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v14 = [v11 objectForKeyedSubscript:@"Event"];
  [v13 setObject:v14 forKeyedSubscript:@"NotificationType"];

  [v13 setObject:@"sleepListener" forKeyedSubscript:@"Listener"];
  v15 = [v11 entryDate];
  [v13 setObject:v15 forKeyedSubscript:@"FiredTimestamp"];

  [*(a1 + 32) logEntry:v13];
  v16 = *MEMORY[0x277D85DE8];
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_478(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"canSleepListener block: %@", v4];
  v6 = MEMORY[0x277D3F178];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v8 = [v7 lastPathComponent];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke"];
  [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:549];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v11 = [v4 objectForKeyedSubscript:@"entry"];

  v12 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"SleepNotificationTest"];
  v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v14 = [v11 objectForKeyedSubscript:@"Event"];
  [v13 setObject:v14 forKeyedSubscript:@"NotificationType"];

  [v13 setObject:@"canSleepListener" forKeyedSubscript:@"Listener"];
  v15 = [v11 entryDate];
  [v13 setObject:v15 forKeyedSubscript:@"FiredTimestamp"];

  v16 = [*(a1 + 32) canSleepSemaphore];
  [v16 signalDoneByObject:*(a1 + 32)];

  [*(a1 + 32) logEntry:v13];
  v17 = *MEMORY[0x277D85DE8];
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_485(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"wakeListener block: %@", v4];
  v6 = MEMORY[0x277D3F178];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v8 = [v7 lastPathComponent];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService initOperatorDependancies]_block_invoke"];
  [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:562];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v11 = [v4 objectForKeyedSubscript:@"entry"];

  v12 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"SleepNotificationTest"];
  v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v14 = [v11 objectForKeyedSubscript:@"Event"];
  [v13 setObject:v14 forKeyedSubscript:@"NotificationType"];

  [v13 setObject:@"wakeListener" forKeyedSubscript:@"Listener"];
  v15 = [v11 entryDate];
  [v13 setObject:v15 forKeyedSubscript:@"FiredTimestamp"];

  [*(a1 + 32) logEntry:v13];
  v16 = *MEMORY[0x277D85DE8];
}

id __42__PLDebugService_initOperatorDependancies__block_invoke_499(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"testBucket"];
  v8 = [v6 objectForKeyedSubscript:@"testName"];
  v9 = [v6 mutableCopy];

  v10 = MEMORY[0x277CBEBF8];
  v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  [v9 setObject:v11 forKeyedSubscript:@"pass"];

  v12 = [v10 mutableCopy];
  [v9 setObject:v12 forKeyedSubscript:@"error"];

  if ([v7 isEqualToString:@"PLCore"])
  {
    if ([v8 isEqualToString:@"WriteEntry"] || objc_msgSend(v8, "isEqualToString:", @"WriteEntries"))
    {
      v13 = [*(a1 + 32) testPLAPICore_WriteEntry:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"UpdateEntry"])
    {
      v13 = [*(a1 + 32) testPLAPICore_UpdateEntry:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"DeleteEntry"])
    {
      v13 = [*(a1 + 32) testPLAPICore_DeleteEntry:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"DeleteEntryForKey"])
    {
      v13 = [*(a1 + 32) testPLAPICore_DeleteEntryForKey:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"DeleteAllEntriesForKey"])
    {
      v13 = [*(a1 + 32) testPLAPICore_DeleteAllEntriesForKey:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"DeleteAllEntriesForKeyWF"])
    {
      v13 = [*(a1 + 32) testPLAPICore_DeleteAllEntriesForKeyWF:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"DeleteAllEntriesForKeyBTWF"])
    {
      v13 = [*(a1 + 32) testPLAPICore_DeleteAllEntriesForKeyBTWF:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"EntriesForKeyWithProperties"])
    {
      v13 = [*(a1 + 32) testPLAPICore_EntriesForKeyWithProperties:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"EntriesForKeyInTimeRange"])
    {
      v13 = [*(a1 + 32) testPLAPICore_EntriesForKeyInTimeRange:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"EntriesForKeyBeforeTICWF"])
    {
      v13 = [*(a1 + 32) testPLAPICore_EntriesForKeyBeforeTICWF:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"LastEntryForKeyWSEK"])
    {
      v13 = [*(a1 + 32) testPLAPICore_LastEntryForKeyWSEK:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"LastEntryForKeyWC"])
    {
      v13 = [*(a1 + 32) testPLAPICore_LastEntryForKeyWC:v9];
      goto LABEL_62;
    }
  }

  else if ([v7 isEqualToString:@"PLAccountingEngineInput"])
  {
    v14 = *(a1 + 32);
    v15 = objc_opt_new();
    [v14 setAccDS:v15];

    v16 = [MEMORY[0x277D3F0C0] debugInstance];
    [v16 reset];

    if ([v8 isEqualToString:@"CreatePowerEventForward"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreatePowerEventForward:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreatePowerEventBackward"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreatePowerEventBackward:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreatePowerEventInterval"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreatePowerEventInterval:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"AddPowerMeasurementEventInterval"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_AddPowerMeasurementEventInterval:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateDistributionEventForwardAdd"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateDistributionEventForwardAdd:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateDistributionEventForwardRem"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateDistributionEventForwardRem:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateDistributionEventForwardChild"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateDistributionEventForwardChild:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateDistributionEventInterval"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateDistributionEventInterval:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateDistributionEventPoint"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateDistributionEventPoint:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateQualificationEventForwardAdd"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateQualificationEventForwardAdd:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateQualificationEventForwardRem"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateQualificationEventForwardRem:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateQualificationEventForwardChild"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateQualificationEventForwardChild:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateQualificationEventBackward"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateQualificationEventBackward:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateQualificationEventInterval"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateQualificationEventInterval:v9];
      goto LABEL_62;
    }

    if ([v8 isEqualToString:@"CreateQualificationEventPoint"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_CreateQualificationEventPoint:v9];
      goto LABEL_62;
    }
  }

  else if ([v7 isEqualToString:@"PLAccountingEngineCore"])
  {
    v17 = *(a1 + 32);
    v18 = objc_opt_new();
    [v17 setAccDS:v18];

    v19 = [MEMORY[0x277D3F0C0] debugInstance];
    [v19 reset];

    if ([v8 isEqualToString:@"ExistingTest"])
    {
      v13 = [*(a1 + 32) testPLAPIAccounting_ExistingTest:v9];
      goto LABEL_62;
    }
  }

  v13 = v9;
LABEL_62:
  v20 = v13;

  return v20;
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = a5;
  v6 = [v10 objectForKeyedSubscript:@"ClearData"];
  v7 = [v6 BOOLValue];

  v8 = [*(a1 + 32) clientFrameworkTestDataBatch];
  v9 = v8;
  if (v7)
  {
    [v8 removeAllObjects];
  }

  else
  {
    [v8 addObject:v10];
  }
}

id __42__PLDebugService_initOperatorDependancies__block_invoke_6(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Data";
  v1 = [*(a1 + 32) clientFrameworkTestDataBatch];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void __42__PLDebugService_initOperatorDependancies__block_invoke_660(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_INFO, "Running completion block in debug mode with energyReport=%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)test_LogErr:(id)err str:(id)str
{
  errCopy = err;
  strCopy = str;
  v7 = [errCopy objectForKeyedSubscript:@"error"];
  strCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"--> ERROR: %@", strCopy];

  [v7 addObject:strCopy];
  v9 = [errCopy objectForKeyedSubscript:@"error"];
  lastObject = [v9 lastObject];
  NSLog(&stru_282B642A0.isa, lastObject);

  return errCopy;
}

- (id)test_LogPass:(id)pass str:(id)str
{
  passCopy = pass;
  strCopy = str;
  v7 = [passCopy objectForKeyedSubscript:@"pass"];
  strCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"--> PASS: %@", strCopy];

  [v7 addObject:strCopy];
  v9 = [passCopy objectForKeyedSubscript:@"pass"];
  lastObject = [v9 lastObject];
  NSLog(&stru_282B642A0.isa, lastObject);

  return passCopy;
}

- (BOOL)rawWrite:(id)write
{
  writeCopy = write;
  v55 = dispatch_semaphore_create(0);
  v4 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v5 = [writeCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [writeCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v10 = [writeCopy objectForKeyedSubscript:@"objT"];
  v11 = [v10 objectForKeyedSubscript:@"validity"];
  intValue = [v11 intValue];
  v56 = intValue != -1;

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v15 = [storage countOfEntriesForKey:v4];

  v16 = [writeCopy objectForKeyedSubscript:@"testName"];
  if (([v16 isEqualToString:@"WriteEntry"] & 1) == 0)
  {
    v17 = [writeCopy objectForKeyedSubscript:@"testName"];
    v18 = [v17 isEqualToString:@"WriteEntries"];

    v19 = v18 ^ 1;
    if (intValue != -1)
    {
      v19 = 1;
    }

    v56 = v19;
  }

  v54 = writeCopy;
  v20 = [writeCopy objectForKeyedSubscript:@"testName"];
  v21 = [v20 isEqualToString:@"WriteEntries"];

  if (v21)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (longValue >= 1)
    {
      v23 = 0;
      if (v56)
      {
        v24 = v4;
      }

      else
      {
        v24 = 0;
      }

      do
      {
        v25 = objc_alloc(MEMORY[0x277D3F190]);
        v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v23];
        v27 = [v25 initWithEntryKey:v24 withDate:v26];
        [array addObject:v27];

        ++v23;
      }

      while (longValue != v23);
    }

    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    storage2 = [mEMORY[0x277D3F2A0]2 storage];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __27__PLDebugService_rawWrite___block_invoke;
    v59[3] = &unk_2782591D0;
    v30 = v55;
    v60 = v30;
    [storage2 writeEntries:array withCompletionBlock:v59];

    if (v56)
    {
      dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else if (longValue >= 1)
  {
    v31 = 0;
    if (v56)
    {
      v32 = v4;
    }

    else
    {
      v32 = 0;
    }

    do
    {
      v33 = objc_alloc(MEMORY[0x277D3F190]);
      v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v31];
      v35 = [v33 initWithEntryKey:v32 withDate:v34];

      mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
      storage3 = [mEMORY[0x277D3F2A0]3 storage];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __27__PLDebugService_rawWrite___block_invoke_2;
      v57[3] = &unk_2782591D0;
      v38 = v55;
      v58 = v38;
      [storage3 writeEntry:v35 withCompletionBlock:v57];

      if (v56)
      {
        dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
      }

      ++v31;
    }

    while (longValue != v31);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]4 = [MEMORY[0x277D3F2A0] sharedCore];
    storage4 = [mEMORY[0x277D3F2A0]4 storage];
    [storage4 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]5 = [MEMORY[0x277D3F2A0] sharedCore];
  storage5 = [mEMORY[0x277D3F2A0]5 storage];
  v43 = [storage5 countOfEntriesForKey:v4];

  v44 = MEMORY[0x277CCACA8];
  v45 = [v54 objectForKeyedSubscript:@"testName"];
  v46 = [v45 isEqualToString:@"WriteEntries"];
  v47 = @"y";
  if (v46)
  {
    v47 = @"ies";
  }

  if (v15 + longValue != v43 && v56)
  {
    v48 = [v44 stringWithFormat:@"WriteEntr%@ (%ld times) failed.  Before:%ld, After:%ld", v47, longValue, v15, v43];
    v49 = [(PLDebugService *)self test_LogErr:v54 str:v48];
  }

  else
  {
    v48 = [v44 stringWithFormat:@"WriteEntr%@ (%ld times) passed.  Before:%ld, After:%ld", v47, longValue, v15, v43];
    v50 = [(PLDebugService *)self test_LogPass:v54 str:v48];
  }

  return 1;
}

- (id)testPLAPICore_WriteEntry:(id)entry
{
  entryCopy = entry;
  [(PLDebugService *)self rawWrite:entryCopy];

  return entryCopy;
}

- (id)testPLAPICore_WriteEntries:(id)entries
{
  entriesCopy = entries;
  [(PLDebugService *)self rawWrite:entriesCopy];

  return entriesCopy;
}

- (id)testPLAPICore_UpdateEntry:(id)entry
{
  entryCopy = entry;
  v45 = dispatch_semaphore_create(0);
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [entryCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"iterations"];
  longValue = [v7 longValue];

  v9 = [entryCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v10 BOOLValue];

  v11 = [entryCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  intValue = [v12 intValue];

  selfCopy = self;
  v42 = entryCopy;
  [(PLDebugService *)self rawWrite:entryCopy];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v43 = v5;
  v44 = [storage entriesForKey:v5];

  if (longValue >= 1)
  {
    for (i = 0; i != longValue; ++i)
    {
      mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
      storage2 = [mEMORY[0x277D3F2A0]2 storage];
      if (intValue == -1)
      {
        selfCopy2 = 0;
        v19 = v44;
      }

      else
      {
        v19 = v44;
        self = [v44 objectAtIndexedSubscript:i];
        selfCopy2 = self;
      }

      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __44__PLDebugService_testPLAPICore_UpdateEntry___block_invoke;
      v46[3] = &unk_27825CFA0;
      v47 = v19;
      v49 = i;
      v21 = v45;
      v48 = v21;
      [storage2 updateEntry:selfCopy2 withBlock:v46];
      if (intValue == -1)
      {
      }

      else
      {

        dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
    storage3 = [mEMORY[0x277D3F2A0]3 storage];
    [storage3 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]4 = [MEMORY[0x277D3F2A0] sharedCore];
  storage4 = [mEMORY[0x277D3F2A0]4 storage];
  v26 = [storage4 entriesForKey:v5];

  v27 = entryCopy;
  if (longValue < 1)
  {
    goto LABEL_22;
  }

  v28 = 0;
  v29 = 0;
  do
  {
    v30 = v28 + 1;
    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v28 + 1)];
    v32 = [v26 objectAtIndexedSubscript:v28];
    entryDate = [v32 entryDate];
    v34 = [entryDate compare:v31];

    if (v34)
    {
      ++v29;
    }

    v28 = v30;
  }

  while (longValue != v30);
  v35 = !v29 || intValue == -1;
  v27 = v42;
  if (v35)
  {
LABEL_22:
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"UpdateEntry (%ld times) passed.", longValue];
    v36 = [(PLDebugService *)selfCopy test_LogPass:v27 str:v37];
  }

  else
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"UpdateEntry (%ld times) failed - times .  Failures: %ld, array:%@", longValue, v29, v26];
    v38 = [(PLDebugService *)selfCopy test_LogErr:v42 str:v37];
  }

  return v27;
}

intptr_t __44__PLDebugService_testPLAPICore_UpdateEntry___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(*(a1 + 48) + 1)];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];
  [v3 setEntryDate:v2];

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

- (id)testPLAPICore_DeleteEntry:(id)entry
{
  entryCopy = entry;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [entryCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"iterations"];
  longValue = [v7 longValue];

  v9 = [entryCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v10 BOOLValue];

  v11 = [entryCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  intValue = [v12 intValue];

  [(PLDebugService *)self rawWrite:entryCopy];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v16 = [storage countOfEntriesForKey:v5];

  mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
  storage2 = [mEMORY[0x277D3F2A0]2 storage];
  v35 = v5;
  v19 = [storage2 entriesForKey:v5];

  if (longValue >= 1)
  {
    for (i = 0; i != longValue; ++i)
    {
      mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
      storage3 = [mEMORY[0x277D3F2A0]3 storage];
      v23 = storage3;
      if (intValue == -1)
      {
        [storage3 deleteEntry:0];
      }

      else
      {
        v24 = [v19 objectAtIndexedSubscript:i];
        [v23 deleteEntry:v24];
      }
    }
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]4 = [MEMORY[0x277D3F2A0] sharedCore];
    storage4 = [mEMORY[0x277D3F2A0]4 storage];
    [storage4 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]5 = [MEMORY[0x277D3F2A0] sharedCore];
  storage5 = [mEMORY[0x277D3F2A0]5 storage];
  v29 = [storage5 countOfEntriesForKey:v35];

  if (v29 == ((v16 - longValue) & ~((v16 - longValue) >> 63)))
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteEntry (%ld times) passed.  Before:%ld, After:%ld", longValue, v16, v29];
    v31 = [(PLDebugService *)self test_LogPass:entryCopy str:v30];
  }

  else
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteEntry (%ld times) failed.  Before:%ld, After:%ld", longValue, v16, v29];
    v32 = [(PLDebugService *)self test_LogErr:entryCopy str:v30];
  }

  return entryCopy;
}

- (id)testPLAPICore_DeleteEntryForKey:(id)key
{
  keyCopy = key;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [keyCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"iterations"];
  longValue = [v7 longValue];

  v9 = [keyCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v10 BOOLValue];

  v11 = [keyCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  intValue = [v12 intValue];

  selfCopy = self;
  v53 = keyCopy;
  [(PLDebugService *)self rawWrite:keyCopy];
  v14 = 0x277D3F000uLL;
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v17 = [storage entriesForKey:v5];
  NSLog(&cfstr_Before.isa, v17);

  mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
  storage2 = [mEMORY[0x277D3F2A0]2 storage];
  v51 = [storage2 countOfEntriesForKey:v5];

  mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
  storage3 = [mEMORY[0x277D3F2A0]3 storage];
  v22 = v5;
  v23 = [storage3 entriesForKey:v5];

  if (longValue >= 1)
  {
    v24 = 0;
    if (intValue == -1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v5;
    }

    do
    {
      v26 = [v23 objectAtIndexedSubscript:v24];
      entryID = [v26 entryID];

      sharedCore = [*(v14 + 672) sharedCore];
      storage4 = [sharedCore storage];
      [storage4 deleteEntryForKey:v25 WithRowID:entryID];

      v30 = [v23 objectAtIndexedSubscript:v24];
      sharedCore2 = [*(v14 + 672) sharedCore];
      [sharedCore2 storage];
      v32 = longValue;
      v34 = v33 = v14;
      NSLog(&cfstr_DeletingWithRo.isa, v30, entryID, [v34 countOfEntriesForKey:v22]);

      v14 = v33;
      longValue = v32;

      ++v24;
    }

    while (v32 != v24);
  }

  if (bOOLValue)
  {
    [*(v14 + 672) sharedCore];
    v36 = v35 = v14;
    storage5 = [v36 storage];
    [storage5 blockingFlushCachesWithReason:@"testAPI"];

    v14 = v35;
  }

  [*(v14 + 672) sharedCore];
  v39 = v38 = v14;
  storage6 = [v39 storage];
  v41 = [storage6 entriesForKey:v22];
  NSLog(&cfstr_After.isa, v41);

  sharedCore3 = [*(v38 + 672) sharedCore];
  storage7 = [sharedCore3 storage];
  v44 = [storage7 countOfEntriesForKey:v22];

  if (v44 == ((v51 - longValue) & ~((v51 - longValue) >> 63)))
  {
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteEntryForKey (%ld times) passed.  Before:%ld, After:%ld", longValue, v51, v44];
    v46 = v53;
    v47 = [(PLDebugService *)selfCopy test_LogPass:v53 str:v45];
  }

  else
  {
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteEntryForKey (%ld times) failed.  Before:%ld, After:%ld", longValue, v51, v44];
    v46 = v53;
    v48 = [(PLDebugService *)selfCopy test_LogErr:v53 str:v45];
  }

  return v46;
}

- (id)testPLAPICore_DeleteAllEntriesForKey:(id)key
{
  keyCopy = key;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [keyCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v7 BOOLValue];

  v9 = [keyCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"validity"];
  intValue = [v10 intValue];

  [(PLDebugService *)self rawWrite:keyCopy];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v14 = [storage countOfEntriesForKey:v5];

  mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
  storage2 = [mEMORY[0x277D3F2A0]2 storage];
  v17 = storage2;
  if (intValue == -1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v5;
  }

  [storage2 deleteAllEntriesForKey:v18];

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
    storage3 = [mEMORY[0x277D3F2A0]3 storage];
    [storage3 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]4 = [MEMORY[0x277D3F2A0] sharedCore];
  storage4 = [mEMORY[0x277D3F2A0]4 storage];
  v23 = [storage4 countOfEntriesForKey:v5];

  if (!v23 || intValue == -1)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteAllEntriesForKey passed.  Before:%ld, After:%ld", v14, v23];
    v26 = [(PLDebugService *)self test_LogPass:keyCopy str:v24];
  }

  else
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteAllEntriesForKey failed.  Before:%ld, After:%ld", v14, v23];
    v25 = [(PLDebugService *)self test_LogErr:keyCopy str:v24];
  }

  return keyCopy;
}

- (id)testPLAPICore_DeleteAllEntriesForKeyWF:(id)f
{
  fCopy = f;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [fCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v7 BOOLValue];

  v9 = [fCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"validity"];
  intValue = [v10 intValue];

  [(PLDebugService *)self rawWrite:fCopy];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v14 = [storage countOfEntriesForKey:v5];

  mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
  storage2 = [mEMORY[0x277D3F2A0]2 storage];
  v17 = storage2;
  if (intValue == -1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v5;
  }

  [storage2 deleteAllEntriesForKey:v18 withFilters:0];

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
    storage3 = [mEMORY[0x277D3F2A0]3 storage];
    [storage3 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]4 = [MEMORY[0x277D3F2A0] sharedCore];
  storage4 = [mEMORY[0x277D3F2A0]4 storage];
  v23 = [storage4 countOfEntriesForKey:v5];

  if (!v23 || intValue == -1)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteAllEntriesForKeyWF passed.  Before:%ld, After:%ld", v14, v23];
    v26 = [(PLDebugService *)self test_LogPass:fCopy str:v24];
  }

  else
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteAllEntriesForKeyWF failed.  Before:%ld, After:%ld", v14, v23];
    v25 = [(PLDebugService *)self test_LogErr:fCopy str:v24];
  }

  return fCopy;
}

- (id)testPLAPICore_DeleteAllEntriesForKeyBTWF:(id)f
{
  fCopy = f;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [fCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v7 BOOLValue];

  v9 = [fCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"validity"];
  intValue = [v10 intValue];

  [(PLDebugService *)self rawWrite:fCopy];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v14 = [storage countOfEntriesForKey:v5];

  mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
  storage2 = [mEMORY[0x277D3F2A0]2 storage];
  if (intValue == -1)
  {
    v17 = 0;
  }

  else
  {
    v17 = v5;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [storage2 deleteAllEntriesForKey:v17 beforeTimestamp:date withFilters:0];

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
    storage3 = [mEMORY[0x277D3F2A0]3 storage];
    [storage3 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]4 = [MEMORY[0x277D3F2A0] sharedCore];
  storage4 = [mEMORY[0x277D3F2A0]4 storage];
  v23 = [storage4 countOfEntriesForKey:v5];

  if (!v23 || intValue == -1)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteAllEntriesForKeyBTWF passed.  Before:%ld, After:%ld", v14, v23];
    v26 = [(PLDebugService *)self test_LogPass:fCopy str:v24];
  }

  else
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleteAllEntriesForKeyBTWF failed.  Before:%ld, After:%ld", v14, v23];
    v25 = [(PLDebugService *)self test_LogErr:fCopy str:v24];
  }

  return fCopy;
}

- (id)testPLAPICore_EntriesForKeyWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  [(PLDebugService *)self rawWrite:propertiesCopy];
  v6 = [propertiesCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v7 BOOLValue];

  v9 = [propertiesCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"validity"];
  intValue = [v10 intValue];

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v14 = [storage countOfEntriesForKey:v5];

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    storage2 = [mEMORY[0x277D3F2A0]2 storage];
    [storage2 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
  storage3 = [mEMORY[0x277D3F2A0]3 storage];
  v19 = storage3;
  if (intValue == -1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v5;
  }

  v21 = [storage3 entriesForKey:v20 withProperties:0];
  v22 = [v21 count];

  if (v14 == v22 || intValue == -1)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyWithProperties passed.  Before:%ld, After:%ld", v14, v22];
    v25 = [(PLDebugService *)self test_LogPass:propertiesCopy str:v23];
  }

  else
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyWithProperties failed.  Before:%ld, After:%ld", v14, v22];
    v24 = [(PLDebugService *)self test_LogErr:propertiesCopy str:v23];
  }

  return propertiesCopy;
}

- (id)testPLAPICore_EntriesForKeyInTimeRange:(id)range
{
  rangeCopy = range;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [rangeCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v7 BOOLValue];

  v9 = [rangeCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"validity"];
  intValue = [v10 intValue];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  date = [MEMORY[0x277CBEAA8] date];
  [v12 timeIntervalSince1970];
  v15 = v14;
  [date timeIntervalSince1970];
  v17 = v16 - v15;

  [(PLDebugService *)self rawWrite:rangeCopy];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v20 = [storage countOfEntriesForKey:v5];

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    storage2 = [mEMORY[0x277D3F2A0]2 storage];
    [storage2 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
  storage3 = [mEMORY[0x277D3F2A0]3 storage];
  v25 = storage3;
  if (intValue == -1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v5;
  }

  v27 = [storage3 entriesForKey:v26 inTimeRange:0 withFilters:{v15, v17}];
  v28 = [v27 count];

  if (v20 == v28 || intValue == -1)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyInTimeRange passed.  Before:%ld, After:%ld", v20, v28];
    v31 = [(PLDebugService *)self test_LogPass:rangeCopy str:v29];
  }

  else
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyInTimeRange failed.  Before:%ld, After:%ld", v20, v28];
    v30 = [(PLDebugService *)self test_LogErr:rangeCopy str:v29];
  }

  return rangeCopy;
}

- (id)testPLAPICore_EntriesForKeyBeforeTICWF:(id)f
{
  fCopy = f;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [fCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v7 BOOLValue];

  v9 = [fCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"validity"];
  intValue = [v10 intValue];

  [(PLDebugService *)self rawWrite:fCopy];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v14 = [storage countOfEntriesForKey:v5];

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    storage2 = [mEMORY[0x277D3F2A0]2 storage];
    [storage2 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
  storage3 = [mEMORY[0x277D3F2A0]3 storage];
  v19 = storage3;
  if (intValue == -1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v5;
  }

  v21 = [storage3 entriesForKey:v20 before:1 timeInterval:v14 count:0 withFilters:1.79769313e308];
  v22 = [v21 count];

  if (v14 == v22 || intValue == -1)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyBeforeTICWF passed.  Before:%ld, After:%ld", v14, v22];
    v25 = [(PLDebugService *)self test_LogPass:fCopy str:v23];
  }

  else
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyBeforeTICWF failed.  Before:%ld, After:%ld", v14, v22];
    v24 = [(PLDebugService *)self test_LogErr:fCopy str:v23];
  }

  return fCopy;
}

- (id)testPLAPICore_LastEntryForKeyWSEK:(id)k
{
  kCopy = k;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [kCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v7 BOOLValue];

  v9 = [kCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"validity"];
  intValue = [v10 intValue];

  [(PLDebugService *)self rawWrite:kCopy];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v14 = [storage entriesForKey:v5];
  lastObject = [v14 lastObject];

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    storage2 = [mEMORY[0x277D3F2A0]2 storage];
    [storage2 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
  storage3 = [mEMORY[0x277D3F2A0]3 storage];
  v20 = storage3;
  if (intValue == -1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v5;
  }

  v22 = [storage3 lastEntryForKey:v21 withSubEntryKey:0];

  if ([lastObject compare:v22])
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyInTimeRange failed.  Array:%@, LEFK:%@", lastObject, v22];
    v24 = [(PLDebugService *)self test_LogErr:kCopy str:v23];
  }

  else
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyInTimeRange passed.  Array:%@, LEFK:%@", lastObject, v22];
    v25 = [(PLDebugService *)self test_LogPass:kCopy str:v23];
  }

  return kCopy;
}

- (id)testPLAPICore_LastEntryForKeyWC:(id)c
{
  v29[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  v5 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PLAPITest"];
  v6 = [cCopy objectForKeyedSubscript:@"objT"];
  v7 = [v6 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v7 BOOLValue];

  v9 = [cCopy objectForKeyedSubscript:@"objT"];
  v10 = [v9 objectForKeyedSubscript:@"validity"];
  intValue = [v10 intValue];

  [(PLDebugService *)self rawWrite:cCopy];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v14 = [storage entriesForKey:v5];
  lastObject = [v14 lastObject];

  v16 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:v5 withValue:v5 withComparisonOperation:0];
  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    storage2 = [mEMORY[0x277D3F2A0]2 storage];
    [storage2 blockingFlushCachesWithReason:@"testAPI"];
  }

  mEMORY[0x277D3F2A0]3 = [MEMORY[0x277D3F2A0] sharedCore];
  storage3 = [mEMORY[0x277D3F2A0]3 storage];
  if (intValue == -1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v5;
  }

  v29[0] = v16;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v23 = [storage3 lastEntryForKey:v21 withComparisons:v22 isSingleton:1];

  if ([lastObject compare:v23])
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyInTimeRange failed.  Array:%@, LEFK:%@", lastObject, v23];
    v25 = [(PLDebugService *)self test_LogErr:cCopy str:v24];
  }

  else
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"EntriesForKeyInTimeRange passed.  Array:%@, LEFK:%@", lastObject, v23];
    v26 = [(PLDebugService *)self test_LogPass:cCopy str:v24];
  }

  v27 = *MEMORY[0x277D85DE8];

  return cCopy;
}

- (id)testPLAPIAccounting_CreatePowerEventForward:(id)forward
{
  forwardCopy = forward;
  v5 = [forwardCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [forwardCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [forwardCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      do
      {
        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        date = [MEMORY[0x277CBEAA8] date];
        [debugInstance createPowerEventForwardWithRootNodeID:0 withPower:date withStartDate:1.0];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        date2 = [MEMORY[0x277CBEAA8] date];
        [debugInstance2 createPowerEventForwardWithRootNodeID:10 withPower:date2 withStartDate:-1.0];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createPowerEventForwardWithRootNodeID:10 withPower:0 withStartDate:1.0];

        --longValue;
      }

      while (longValue);
    }

    v19 = @"CreatePowerEventForward (negative) passed.";
    goto LABEL_11;
  }

  if (longValue >= 1)
  {
    do
    {
      debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
      date3 = [MEMORY[0x277CBEAA8] date];
      [debugInstance4 createPowerEventForwardWithRootNodeID:10 withPower:date3 withStartDate:1.0];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v18 = [accDS verifyLastPowerEventWithRootNodeID:10 withPower:1.0];

  if (v18)
  {
    v19 = @"CreatePowerEventForward passed.";
LABEL_11:
    v25 = [(PLDebugService *)self test_LogPass:forwardCopy str:v19];
    goto LABEL_13;
  }

  v26 = [(PLDebugService *)self test_LogErr:forwardCopy str:@"CreatePowerEventForward failed."];
LABEL_13:

  return forwardCopy;
}

- (id)testPLAPIAccounting_CreatePowerEventBackward:(id)backward
{
  backwardCopy = backward;
  v5 = [backwardCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [backwardCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [backwardCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      do
      {
        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        date = [MEMORY[0x277CBEAA8] date];
        [debugInstance createPowerEventBackwardWithRootNodeID:0 withPower:date withEndDate:2.0];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        date2 = [MEMORY[0x277CBEAA8] date];
        [debugInstance2 createPowerEventBackwardWithRootNodeID:11 withPower:date2 withEndDate:-1.0];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createPowerEventBackwardWithRootNodeID:11 withPower:0 withEndDate:2.0];

        --longValue;
      }

      while (longValue);
    }

    v19 = @"CreatePowerEventBackward (negative) passed.";
    goto LABEL_11;
  }

  if (longValue >= 1)
  {
    do
    {
      debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
      date3 = [MEMORY[0x277CBEAA8] date];
      [debugInstance4 createPowerEventBackwardWithRootNodeID:11 withPower:date3 withEndDate:2.0];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v18 = [accDS verifyLastPowerEventWithRootNodeID:11 withPower:2.0];

  if (v18)
  {
    v19 = @"CreatePowerEventBackward passed.";
LABEL_11:
    v25 = [(PLDebugService *)self test_LogPass:backwardCopy str:v19];
    goto LABEL_13;
  }

  v26 = [(PLDebugService *)self test_LogErr:backwardCopy str:@"CreatePowerEventBackward failed."];
LABEL_13:

  return backwardCopy;
}

- (id)testPLAPIAccounting_CreatePowerEventInterval:(id)interval
{
  intervalCopy = interval;
  v5 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      do
      {
        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        date = [MEMORY[0x277CBEAA8] date];
        date2 = [MEMORY[0x277CBEAA8] date];
        [debugInstance createPowerEventIntervalWithRootNodeID:0 withPower:date withStartDate:date2 withEndDate:3.0];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        date3 = [MEMORY[0x277CBEAA8] date];
        date4 = [MEMORY[0x277CBEAA8] date];
        [debugInstance2 createPowerEventIntervalWithRootNodeID:2 withPower:date3 withStartDate:date4 withEndDate:-1.0];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        date5 = [MEMORY[0x277CBEAA8] date];
        [debugInstance3 createPowerEventIntervalWithRootNodeID:2 withPower:0 withStartDate:date5 withEndDate:3.0];

        debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
        date6 = [MEMORY[0x277CBEAA8] date];
        [debugInstance4 createPowerEventIntervalWithRootNodeID:2 withPower:date6 withStartDate:0 withEndDate:3.0];

        --longValue;
      }

      while (longValue);
    }

    v20 = @"CreatePowerEventInterval (negative) passed.";
    goto LABEL_11;
  }

  if (longValue >= 1)
  {
    do
    {
      debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
      date7 = [MEMORY[0x277CBEAA8] date];
      date8 = [MEMORY[0x277CBEAA8] date];
      [debugInstance5 createPowerEventIntervalWithRootNodeID:2 withPower:date7 withStartDate:date8 withEndDate:3.0];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v19 = [accDS verifyLastPowerEventWithRootNodeID:2 withPower:3.0];

  if (v19)
  {
    v20 = @"CreatePowerEventInterval passed.";
LABEL_11:
    v31 = [(PLDebugService *)self test_LogPass:intervalCopy str:v20];
    goto LABEL_13;
  }

  v32 = [(PLDebugService *)self test_LogErr:intervalCopy str:@"CreatePowerEventInterval failed."];
LABEL_13:

  return intervalCopy;
}

- (id)testPLAPIAccounting_AddPowerMeasurementEventInterval:(id)interval
{
  intervalCopy = interval;
  v5 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue < 1)
    {
      v18 = @"AddPowerMeasurementEventInterval (negative) passed.";
    }

    else
    {
      v18 = @"AddPowerMeasurementEventInterval (negative) passed.";
      do
      {
        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        date = [MEMORY[0x277CBEAA8] date];
        date2 = [MEMORY[0x277CBEAA8] date];
        [debugInstance addPowerMeasurementEventIntervalWithPower:date withStartDate:date2 withEndDate:-1.0];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        date3 = [MEMORY[0x277CBEAA8] date];
        [debugInstance2 addPowerMeasurementEventIntervalWithPower:0 withStartDate:date3 withEndDate:4.0];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        date4 = [MEMORY[0x277CBEAA8] date];
        [debugInstance3 addPowerMeasurementEventIntervalWithPower:date4 withStartDate:0 withEndDate:4.0];

        --longValue;
      }

      while (longValue);
    }
  }

  else
  {
    if (longValue >= 1)
    {
      do
      {
        debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
        v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
        date5 = [MEMORY[0x277CBEAA8] date];
        [debugInstance4 addPowerMeasurementEventIntervalWithPower:v14 withStartDate:date5 withEndDate:4.0];

        --longValue;
      }

      while (longValue);
    }

    if (bOOLValue)
    {
      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      storage = [mEMORY[0x277D3F2A0] storage];
      [storage blockingFlushCachesWithReason:@"testAPI"];
    }

    v18 = @"AddPowerMeasurementEventInterval passed.";
  }

  v26 = [(PLDebugService *)self test_LogPass:intervalCopy str:v18];

  return intervalCopy;
}

- (id)testPLAPIAccounting_CreateDistributionEventForwardAdd:(id)add
{
  addCopy = add;
  v5 = [addCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [addCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [addCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      do
      {
        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        date = [MEMORY[0x277CBEAA8] date];
        [debugInstance createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:&stru_282B650A0 withStartDate:date];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        date2 = [MEMORY[0x277CBEAA8] date];
        [debugInstance2 createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:0 withStartDate:date2];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:@"App1" withStartDate:0];

        --longValue;
      }

      while (longValue);
    }

    v20 = @"CreateDistributionEventForwardAdd (negative) passed.";
    goto LABEL_11;
  }

  if (longValue >= 1)
  {
    do
    {
      debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
      date3 = [MEMORY[0x277CBEAA8] date];
      v15 = [date3 dateByAddingTimeInterval:-5.0];
      [debugInstance4 createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:@"App1" withStartDate:v15];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v19 = [accDS verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:1.0];

  if (v19)
  {
    v20 = @"CreateDistributionEventForwardAdd passed.";
LABEL_11:
    v26 = [(PLDebugService *)self test_LogPass:addCopy str:v20];
    goto LABEL_13;
  }

  v27 = [(PLDebugService *)self test_LogErr:addCopy str:@"CreateDistributionEventForwardAdd failed."];
LABEL_13:

  return addCopy;
}

- (id)testPLAPIAccounting_CreateDistributionEventForwardRem:(id)rem
{
  remCopy = rem;
  v5 = [remCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [remCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [remCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      do
      {
        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        date = [MEMORY[0x277CBEAA8] date];
        [debugInstance createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:&stru_282B650A0 withStartDate:date];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        date2 = [MEMORY[0x277CBEAA8] date];
        [debugInstance2 createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:0 withStartDate:date2];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:@"App1" withStartDate:0];

        --longValue;
      }

      while (longValue);
    }

    v21 = @"CreateDistributionEventForwardRem (negative) passed.";
    goto LABEL_11;
  }

  if (longValue >= 1)
  {
    do
    {
      date3 = [MEMORY[0x277CBEAA8] date];
      v14 = [date3 dateByAddingTimeInterval:-5.0];

      debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
      [debugInstance4 createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:@"App1" withStartDate:v14];

      debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
      [debugInstance5 createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:@"App1" withStartDate:v14];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v20 = [accDS verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:1.0];

  if (v20)
  {
    v21 = @"CreateDistributionEventForwardRem passed.";
LABEL_11:
    v27 = [(PLDebugService *)self test_LogPass:remCopy str:v21];
    goto LABEL_13;
  }

  v28 = [(PLDebugService *)self test_LogErr:remCopy str:@"CreateDistributionEventForwardRem failed."];
LABEL_13:

  return remCopy;
}

- (id)testPLAPIAccounting_CreateDistributionEventForwardChild:(id)child
{
  childCopy = child;
  v5 = [childCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [childCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [childCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      v21 = MEMORY[0x277CBEC10];
      do
      {
        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        date = [MEMORY[0x277CBEAA8] date];
        [debugInstance createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C19A20 withStartDate:date];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        date2 = [MEMORY[0x277CBEAA8] date];
        [debugInstance2 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:v21 withStartDate:date2];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C19A48 withStartDate:0];

        --longValue;
      }

      while (longValue);
    }

    v20 = @"CreateDistributionEventForwardChild (negative) passed.";
    goto LABEL_12;
  }

  if (longValue >= 1)
  {
    do
    {
      date3 = [MEMORY[0x277CBEAA8] date];
      v14 = [date3 dateByAddingTimeInterval:-5.0];

      debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
      [debugInstance4 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C199F8 withStartDate:v14];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v19 = [accDS verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:1.0];

  if (v19)
  {
    v20 = @"CreateDistributionEventForwardChild passed.";
LABEL_12:
    v27 = [(PLDebugService *)self test_LogPass:childCopy str:v20];
    goto LABEL_14;
  }

  v28 = [(PLDebugService *)self test_LogErr:childCopy str:@"CreateDistributionEventForwardChild failed."];
LABEL_14:

  return childCopy;
}

- (id)testPLAPIAccounting_CreateDistributionEventInterval:(id)interval
{
  intervalCopy = interval;
  v5 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    selfCopy = self;
    v37 = intervalCopy;
    if (longValue >= 1)
    {
      v23 = MEMORY[0x277CBEC10];
      do
      {
        date = [MEMORY[0x277CBEAA8] date];
        v25 = [date dateByAddingTimeInterval:-5.0];

        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        v27 = [v25 dateByAddingTimeInterval:-10.0];
        [debugInstance createDistributionEventIntervalWithDistributionID:20 withChildNodeNameToWeight:&unk_282C19A98 withStartDate:v27 withEndDate:v25];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        v29 = [v25 dateByAddingTimeInterval:-10.0];
        [debugInstance2 createDistributionEventIntervalWithDistributionID:20 withChildNodeNameToWeight:v23 withStartDate:v29 withEndDate:v25];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createDistributionEventIntervalWithDistributionID:20 withChildNodeNameToWeight:&unk_282C19AC0 withStartDate:0 withEndDate:v25];

        debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
        v32 = [v25 dateByAddingTimeInterval:-10.0];
        [debugInstance4 createDistributionEventIntervalWithDistributionID:20 withChildNodeNameToWeight:&unk_282C19AE8 withStartDate:v32 withEndDate:0];

        --longValue;
      }

      while (longValue);
    }

    v21 = @"CreateDistributionEventInterval (negative) passed.";
    selfCopy2 = selfCopy;
    intervalCopy = v37;
    goto LABEL_12;
  }

  if (longValue >= 1)
  {
    do
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v14 = [date2 dateByAddingTimeInterval:-5.0];

      debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
      v16 = [v14 dateByAddingTimeInterval:-10.0];
      [debugInstance5 createDistributionEventIntervalWithDistributionID:20 withChildNodeNameToWeight:&unk_282C19A70 withStartDate:v16 withEndDate:v14];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v20 = [accDS verifyLastDistributionEventWithDistributionID:20 withNodeName:@"App1" withWeight:1.0];

  if (v20)
  {
    v21 = @"CreateDistributionEventInterval passed.";
    selfCopy2 = self;
LABEL_12:
    v33 = [(PLDebugService *)selfCopy2 test_LogPass:intervalCopy str:v21, selfCopy, v37];
    goto LABEL_14;
  }

  v34 = [(PLDebugService *)self test_LogErr:intervalCopy str:@"CreateDistributionEventInterval failed."];
LABEL_14:

  return intervalCopy;
}

- (id)testPLAPIAccounting_CreateDistributionEventPoint:(id)point
{
  pointCopy = point;
  v5 = [pointCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [pointCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [pointCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      v21 = MEMORY[0x277CBEC10];
      do
      {
        date = [MEMORY[0x277CBEAA8] date];
        v23 = [date dateByAddingTimeInterval:-5.0];

        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C19B38 withStartDate:v23];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance2 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:v21 withStartDate:v23];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C19B60 withStartDate:0];

        --longValue;
      }

      while (longValue);
    }

    v20 = @"CreateDistributionEventPoint (negative) passed.";
    goto LABEL_12;
  }

  if (longValue >= 1)
  {
    do
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v14 = [date2 dateByAddingTimeInterval:-5.0];

      debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
      [debugInstance4 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C19B10 withStartDate:v14];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v19 = [accDS verifyLastDistributionEventWithDistributionID:4 withNodeName:@"App1" withWeight:1.0];

  if (v19)
  {
    v20 = @"CreateDistributionEventPoint passed.";
LABEL_12:
    v27 = [(PLDebugService *)self test_LogPass:pointCopy str:v20];
    goto LABEL_14;
  }

  v28 = [(PLDebugService *)self test_LogErr:pointCopy str:@"CreateDistributionEventPoint failed."];
LABEL_14:

  return pointCopy;
}

- (id)testPLAPIAccounting_CreateQualificationEventForwardAdd:(id)add
{
  addCopy = add;
  v5 = [addCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [addCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [addCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    v30 = addCopy;
    if (longValue >= 1)
    {
      do
      {
        date = [MEMORY[0x277CBEAA8] date];
        v23 = [date dateByAddingTimeInterval:-5.0];

        NSLog(&cfstr_HereLineD.isa, 1555);
        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance createQualificationEventForwardWithQualificationID:2 withAddingChildNodeName:0 withStartDate:v23];

        NSLog(&cfstr_HereLineD.isa, 1559);
        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance2 createQualificationEventForwardWithQualificationID:2 withAddingChildNodeName:&stru_282B650A0 withStartDate:v23];

        NSLog(&cfstr_HereLineD.isa, 1563);
        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createQualificationEventForwardWithQualificationID:2 withAddingChildNodeName:@"App2" withStartDate:0];

        NSLog(&cfstr_HereLineD.isa, 1567);
        --longValue;
      }

      while (longValue);
    }

    v20 = @"CreateQualificationEventForwardAdd (negative) passed.";
    selfCopy2 = self;
    addCopy = v30;
    goto LABEL_11;
  }

  if (longValue >= 1)
  {
    do
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v14 = [date2 dateByAddingTimeInterval:-5.0];

      debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
      [debugInstance4 createQualificationEventForwardWithQualificationID:2 withAddingChildNodeName:@"App2" withStartDate:v14];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v19 = [accDS verifyLastQualificationEventWithQualificationID:2 withNodeName:@"App2"];

  if (v19)
  {
    v20 = @"CreateQualificationEventForwardAdd passed.";
    selfCopy2 = self;
LABEL_11:
    v27 = [(PLDebugService *)selfCopy2 test_LogPass:addCopy str:v20];
    goto LABEL_13;
  }

  v28 = [(PLDebugService *)self test_LogErr:addCopy str:@"CreateQualificationEventForwardAdd failed."];
LABEL_13:

  return addCopy;
}

- (id)testPLAPIAccounting_CreateQualificationEventForwardRem:(id)rem
{
  remCopy = rem;
  v5 = [remCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [remCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [remCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      do
      {
        date = [MEMORY[0x277CBEAA8] date];
        v24 = [date dateByAddingTimeInterval:-5.0];

        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance createQualificationEventForwardWithQualificationID:2 withRemovingChildNodeName:0 withStartDate:v24];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance2 createQualificationEventForwardWithQualificationID:2 withRemovingChildNodeName:&stru_282B650A0 withStartDate:v24];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createQualificationEventForwardWithQualificationID:2 withRemovingChildNodeName:@"App2" withStartDate:0];

        --longValue;
      }

      while (longValue);
    }

    v22 = @"CreateQualificationEventForwardRem (negative) passed.";
    goto LABEL_11;
  }

  if (longValue >= 1)
  {
    do
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v14 = [date2 dateByAddingTimeInterval:-5.0];

      debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
      [debugInstance4 createQualificationEventForwardWithQualificationID:2 withAddingChildNodeName:@"App3" withStartDate:v14];

      debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
      [debugInstance5 createQualificationEventForwardWithQualificationID:2 withAddingChildNodeName:@"App2" withStartDate:v14];

      debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
      [debugInstance6 createQualificationEventForwardWithQualificationID:2 withRemovingChildNodeName:@"App2" withStartDate:v14];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v21 = [accDS verifyLastQualificationEventWithQualificationID:2 withNodeName:@"App3"];

  if (v21)
  {
    v22 = @"CreateQualificationEventForwardRem passed.";
LABEL_11:
    v28 = [(PLDebugService *)self test_LogPass:remCopy str:v22];
    goto LABEL_13;
  }

  v29 = [(PLDebugService *)self test_LogErr:remCopy str:@"CreateQualificationEventForwardRem failed."];
LABEL_13:

  return remCopy;
}

- (id)testPLAPIAccounting_CreateQualificationEventForwardChild:(id)child
{
  childCopy = child;
  v5 = [childCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [childCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [childCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      v21 = MEMORY[0x277CBEBF8];
      do
      {
        date = [MEMORY[0x277CBEAA8] date];
        v23 = [date dateByAddingTimeInterval:-5.0];

        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C16968 withStartDate:v23];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance2 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:v21 withStartDate:v23];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C16980 withStartDate:0];

        --longValue;
      }

      while (longValue);
    }

    v20 = @"CreateQualificationEventForwardChild (negative) passed.";
    goto LABEL_12;
  }

  if (longValue >= 1)
  {
    do
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v14 = [date2 dateByAddingTimeInterval:-5.0];

      debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
      [debugInstance4 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C16950 withStartDate:v14];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v19 = [accDS verifyLastQualificationEventWithQualificationID:2 withNodeName:@"App2"];

  if (v19)
  {
    v20 = @"CreateQualificationEventForwardChild passed.";
LABEL_12:
    v27 = [(PLDebugService *)self test_LogPass:childCopy str:v20];
    goto LABEL_14;
  }

  v28 = [(PLDebugService *)self test_LogErr:childCopy str:@"CreateQualificationEventForwardChild failed."];
LABEL_14:

  return childCopy;
}

- (id)testPLAPIAccounting_CreateQualificationEventBackward:(id)backward
{
  backwardCopy = backward;
  v5 = [backwardCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [backwardCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [backwardCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue < 1)
    {
      v18 = @"CreateQualificationEventBackward (negative) passed.";
    }

    else
    {
      selfCopy = self;
      v19 = MEMORY[0x277CBEBF8];
      v18 = @"CreateQualificationEventBackward (negative) passed.";
      do
      {
        date = [MEMORY[0x277CBEAA8] date];
        v21 = [date dateByAddingTimeInterval:-5.0];

        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance createQualificationEventBackwardWithQualificationID:1 withChildNodeNames:&unk_282C169B0 withEndDate:v21];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance2 createQualificationEventBackwardWithQualificationID:1 withChildNodeNames:v19 withEndDate:v21];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createQualificationEventBackwardWithQualificationID:1 withChildNodeNames:&unk_282C169C8 withEndDate:0];

        --longValue;
      }

      while (longValue);
      self = selfCopy;
    }
  }

  else
  {
    if (longValue >= 1)
    {
      do
      {
        date2 = [MEMORY[0x277CBEAA8] date];
        v14 = [date2 dateByAddingTimeInterval:-5.0];

        debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance4 createQualificationEventBackwardWithQualificationID:0 withChildNodeNames:&unk_282C16998 withEndDate:v14];

        --longValue;
      }

      while (longValue);
    }

    if (bOOLValue)
    {
      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      storage = [mEMORY[0x277D3F2A0] storage];
      [storage blockingFlushCachesWithReason:@"testAPI"];
    }

    v18 = @"CreateQualificationEventBackward passed.";
  }

  v25 = [(PLDebugService *)self test_LogPass:backwardCopy str:v18];

  return backwardCopy;
}

- (id)testPLAPIAccounting_CreateQualificationEventInterval:(id)interval
{
  intervalCopy = interval;
  v5 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [intervalCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    selfCopy = self;
    v37 = intervalCopy;
    if (longValue >= 1)
    {
      v23 = MEMORY[0x277CBEBF8];
      do
      {
        date = [MEMORY[0x277CBEAA8] date];
        v25 = [date dateByAddingTimeInterval:-5.0];

        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        v27 = [v25 dateByAddingTimeInterval:-10.0];
        [debugInstance createQualificationEventIntervalWithQualificationID:12 withChildNodeNames:&unk_282C169F8 withStartDate:v27 withEndDate:v25];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        v29 = [v25 dateByAddingTimeInterval:-10.0];
        [debugInstance2 createQualificationEventIntervalWithQualificationID:12 withChildNodeNames:v23 withStartDate:v29 withEndDate:v25];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createQualificationEventIntervalWithQualificationID:12 withChildNodeNames:&unk_282C16A10 withStartDate:0 withEndDate:v25];

        debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
        v32 = [v25 dateByAddingTimeInterval:-10.0];
        [debugInstance4 createQualificationEventIntervalWithQualificationID:12 withChildNodeNames:&unk_282C16A28 withStartDate:v32 withEndDate:0];

        --longValue;
      }

      while (longValue);
    }

    v21 = @"CreateQualificationEventInterval (negative) passed.";
    selfCopy2 = selfCopy;
    intervalCopy = v37;
    goto LABEL_12;
  }

  if (longValue >= 1)
  {
    do
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v14 = [date2 dateByAddingTimeInterval:-5.0];

      debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
      v16 = [v14 dateByAddingTimeInterval:-10.0];
      [debugInstance5 createQualificationEventIntervalWithQualificationID:12 withChildNodeNames:&unk_282C169E0 withStartDate:v16 withEndDate:v14];

      --longValue;
    }

    while (longValue);
  }

  if (bOOLValue)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  accDS = [(PLDebugService *)self accDS];
  v20 = [accDS verifyLastQualificationEventWithQualificationID:12 withNodeName:@"App2"];

  if (v20)
  {
    v21 = @"CreateQualificationEventInterval passed.";
    selfCopy2 = self;
LABEL_12:
    v33 = [(PLDebugService *)selfCopy2 test_LogPass:intervalCopy str:v21, selfCopy, v37];
    goto LABEL_14;
  }

  v34 = [(PLDebugService *)self test_LogErr:intervalCopy str:@"CreateQualificationEventInterval failed."];
LABEL_14:

  return intervalCopy;
}

- (id)testPLAPIAccounting_CreateQualificationEventPoint:(id)point
{
  pointCopy = point;
  v5 = [pointCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  longValue = [v6 longValue];

  v8 = [pointCopy objectForKeyedSubscript:@"objT"];
  v9 = [v8 objectForKeyedSubscript:@"flush"];
  bOOLValue = [v9 BOOLValue];

  v11 = [pointCopy objectForKeyedSubscript:@"objT"];
  v12 = [v11 objectForKeyedSubscript:@"validity"];
  LODWORD(v9) = [v12 intValue];

  if (v9 == -1)
  {
    if (longValue >= 1)
    {
      selfCopy = self;
      v20 = MEMORY[0x277CBEBF8];
      do
      {
        date = [MEMORY[0x277CBEAA8] date];
        v22 = [date dateByAddingTimeInterval:-5.0];

        debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
        v24 = [v22 dateByAddingTimeInterval:-10.0];
        [debugInstance createQualificationEventPointWithQualificationID:0 withChildNodeNames:&unk_282C16A58 withStartDate:v24];

        debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
        v26 = [v22 dateByAddingTimeInterval:-10.0];
        [debugInstance2 createQualificationEventPointWithQualificationID:0 withChildNodeNames:v20 withStartDate:v26];

        debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
        [debugInstance3 createQualificationEventPointWithQualificationID:0 withChildNodeNames:&unk_282C16A70 withStartDate:0];

        --longValue;
      }

      while (longValue);
      self = selfCopy;
    }

    v19 = @"CreateQualificationEventPoint (negative) passed.";
  }

  else
  {
    if (longValue >= 1)
    {
      do
      {
        date2 = [MEMORY[0x277CBEAA8] date];
        v14 = [date2 dateByAddingTimeInterval:-5.0];

        debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
        v16 = [v14 dateByAddingTimeInterval:-10.0];
        [debugInstance4 createQualificationEventPointWithQualificationID:0 withChildNodeNames:&unk_282C16A40 withStartDate:v16];

        --longValue;
      }

      while (longValue);
    }

    if (bOOLValue)
    {
      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      storage = [mEMORY[0x277D3F2A0] storage];
      [storage blockingFlushCachesWithReason:@"testAPI"];
    }

    v19 = @"CreateQualificationEventPoint passed.";
  }

  v28 = [(PLDebugService *)self test_LogPass:pointCopy str:v19];

  return pointCopy;
}

- (id)testPLAPIAccounting_ExistingTest:(id)test
{
  testCopy = test;
  v5 = [testCopy objectForKeyedSubscript:@"objT"];
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  [v6 longValue];

  v7 = [testCopy objectForKeyedSubscript:@"objT"];
  v8 = [v7 objectForKeyedSubscript:@"flush"];
  LODWORD(v6) = [v8 BOOLValue];

  if (v6)
  {
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    [storage blockingFlushCachesWithReason:@"testAPI"];
  }

  v11 = [(PLDebugService *)self test_LogPass:testCopy str:@"CreateQualificationEventPoint passed."];

  return testCopy;
}

- (void)constructTrimQueries
{
  v13 = *MEMORY[0x277D85DE8];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v3 = [MEMORY[0x277D3F178] allOperatorTablesToTrimConditionsForTrimDate:monotonicDate];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Trim Queries %@", v3];
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService constructTrimQueries]"];
  [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1977];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)constructAppIdentifierTables
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  agents = [mEMORY[0x277D3F2A0] agents];
  operators = [agents operators];
  allValues = [operators allValues];

  obj = allValues;
  v7 = [allValues countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v25 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        entryKeys = [*(*(&v30 + 1) + 8 * i) entryKeys];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [entryKeys countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(entryKeys);
              }

              v15 = *(*(&v26 + 1) + 8 * j);
              v16 = [MEMORY[0x277D3F198] definitionForEntryKey:v15];
              if ([MEMORY[0x277D3F198] hasAppIdentifierKeysForEntryDefinition:v16])
              {
                [v2 addObject:v15];
              }
            }

            v12 = [entryKeys countByEnumeratingWithState:&v26 objects:v36 count:16];
          }

          while (v12);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v8);
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"App identifier tables are %@", v2];
  v18 = MEMORY[0x277D3F178];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v19 lastPathComponent];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService constructAppIdentifierTables]"];
  [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:1997];

  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v17;
    _os_log_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)constructDMATables
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  agents = [mEMORY[0x277D3F2A0] agents];
  operators = [agents operators];
  allValues = [operators allValues];

  obj = allValues;
  v7 = [allValues countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        entryKeys = [*(*(&v25 + 1) + 8 * i) entryKeys];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [entryKeys countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(entryKeys);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              v16 = [MEMORY[0x277D3F198] definitionForEntryKey:v15];
              if ([MEMORY[0x277D3F198] hasDMAKeysForEntryDefinition:v16])
              {
                [v2 addObject:v15];
              }
            }

            v12 = [entryKeys countByEnumeratingWithState:&v21 objects:v31 count:16];
          }

          while (v12);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v8);
  }

  v17 = PLLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "DMA tables are %@", buf, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)populateIdentifiers:(id)identifiers
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  identifiersCopy = identifiers;
  v4 = [identifiersCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = 0x277D3F000uLL;
    v22 = identifiersCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        sharedSQLiteConnection = [*(v7 + 528) sharedSQLiteConnection];
        v12 = [sharedSQLiteConnection tableExistsForTableName:v9];

        if (v12)
        {
          v13 = [MEMORY[0x277D3F198] definitionForEntryKey:v9];
          if ([MEMORY[0x277D3F198] hasAppIdentifierKeysForEntryDefinition:v13])
          {
            v14 = objc_opt_new();
            v15 = objc_opt_new();
            v16 = objc_opt_new();
            v17 = [MEMORY[0x277D3F198] keyConfigsForEntryDefinition:v13];
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __38__PLDebugService_populateIdentifiers___block_invoke;
            v23[3] = &unk_278261CB0;
            v18 = v14;
            v24 = v18;
            v19 = v15;
            v25 = v19;
            v20 = v16;
            v26 = v20;
            [v17 enumerateKeysAndObjectsUsingBlock:v23];
            if ([v18 count])
            {
              [qword_2811F6938 setObject:v18 forKeyedSubscript:v9];
            }

            if ([v19 count])
            {
              [qword_2811F6940 setObject:v19 forKeyedSubscript:v9];
            }

            if ([v20 count])
            {
              [qword_2811F6948 setObject:v20 forKeyedSubscript:v9];
            }

            identifiersCopy = v22;
            v7 = 0x277D3F000;
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v5 != v8);
      v5 = [identifiersCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __38__PLDebugService_populateIdentifiers___block_invoke(id *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3F4D0]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [a1[4] addObject:v12];
  }

  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3F4A8]];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    [a1[5] addObject:v12];
  }

  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3F560]];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    [a1[6] addObject:v12];
  }
}

- (void)iterateAgents
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  agents = [mEMORY[0x277D3F2A0] agents];
  operators = [agents operators];
  allValues = [operators allValues];

  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        entryKeys = [*(*(&v13 + 1) + 8 * v10) entryKeys];
        [(PLDebugService *)self populateIdentifiers:entryKeys];

        ++v10;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)iterateServices
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  services = [mEMORY[0x277D3F2A0] services];
  operators = [services operators];
  allValues = [operators allValues];

  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        entryKeys = [*(*(&v13 + 1) + 8 * v10) entryKeys];
        [(PLDebugService *)self populateIdentifiers:entryKeys];

        ++v10;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)constructAppIdentifierColumns
{
  v30 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = qword_2811F6938;
  qword_2811F6938 = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v6 = qword_2811F6940;
  qword_2811F6940 = dictionary2;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v8 = qword_2811F6948;
  qword_2811F6948 = dictionary3;

  [(PLDebugService *)self iterateAgents];
  [(PLDebugService *)self iterateServices];
  [qword_2811F6938 setObject:&unk_282C16A88 forKeyedSubscript:@"PLAccountingOperator_EventNone_Nodes"];
  qword_2811F6938 = [MEMORY[0x277CCACA8] stringWithFormat:@"tableNameToBundleIdentifier is %@", qword_2811F6938];
  v10 = MEMORY[0x277D3F178];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v11 lastPathComponent];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService constructAppIdentifierColumns]"];
  [v10 logMessage:qword_2811F6938 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2086];

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = qword_2811F6938;
    _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  qword_2811F6940 = [MEMORY[0x277CCACA8] stringWithFormat:@"tableNameToAppIdentifier is %@", qword_2811F6940];
  v16 = MEMORY[0x277D3F178];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent2 = [v17 lastPathComponent];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService constructAppIdentifierColumns]"];
  [v16 logMessage:qword_2811F6940 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:2087];

  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = qword_2811F6940;
    _os_log_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  qword_2811F6948 = [MEMORY[0x277CCACA8] stringWithFormat:@"tableNameToProcessIdentifier is %@", qword_2811F6948];
  v22 = MEMORY[0x277D3F178];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent3 = [v23 lastPathComponent];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService constructAppIdentifierColumns]"];
  [v22 logMessage:qword_2811F6948 fromFile:lastPathComponent3 fromFunction:v25 fromLineNumber:2088];

  v26 = PLLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = qword_2811F6948;
    _os_log_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)aggregateDataFromSignpost
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "Manually aggregate data from Signpost", v3, 2u);
  }

  [MEMORY[0x277D3F188] logAggregatedDataFromSignpostWithStartDate:0 withEndDate:0];
}

- (void)fireSignificantBatteryChangeNotification
{
  v3 = objc_opt_new();
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Manually firing SBC", v5, 2u);
  }

  [MEMORY[0x277D3F258] postNotificationName:@"PLBatteryAgent_EventBackward_Battery.filtered.Level_0_1.Level_7_1800.Level_8_300" object:self userInfo:v3];
}

- (void)testCompression
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1026);
}

void __33__PLDebugService_testCompression__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D3F258] compressWithSource:@"/tmp/test.txt" withDestination:@"/tmp/test_out.gz" withLevel:4];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"compression result=%i", v0];
  v2 = MEMORY[0x277D3F178];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v4 = [v3 lastPathComponent];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testCompression]_block_invoke"];
  [v2 logMessage:v1 fromFile:v4 fromFunction:v5 fromLineNumber:2114];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v9 = v1;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)testUTF8
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__PLDebugService_testUTF8__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __26__PLDebugService_testUTF8__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testUTF8]_block_invoke"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2120];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412290;
    v19 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v18, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277D3F190]);
  v9 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Test"];
  v10 = [v8 initWithEntryKey:v9];

  [v10 setObject:@"MyEuro=€" forKeyedSubscript:@"StringKey1"];
  [v10 setObject:@"test" forKeyedSubscript:@"StringKey2"];
  [v10 setObject:&unk_282C19B88 forKeyedSubscript:@"DefaultKey1"];
  [*(a1 + 32) logEntry:v10];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v12 = MEMORY[0x277D3F178];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v14 = [v13 lastPathComponent];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testUTF8]_block_invoke"];
  [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:2129];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412290;
    v19 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stressAggregateSmall
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1064);
}

void __38__PLDebugService_stressAggregateSmall__block_invoke()
{
  v32 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressAggregateSmall]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:2135];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v30 = 138412290;
    v31 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v30, 0xCu);
  }

  v6 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregateTestSmall"];
  v7 = [MEMORY[0x277D3F2A0] sharedCore];
  v8 = [v7 storage];
  [v8 deleteAllEntriesForKey:v6];

  v9 = 0;
  do
  {
    v10 = objc_alloc(MEMORY[0x277D3F190]);
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    v12 = [v10 initWithEntryKey:v6 withDate:v11];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:v9 / 0x96u];
    [v12 setObject:v13 forKeyedSubscript:@"PrimaryKey1"];

    [v12 setObject:@"TestKey" forKeyedSubscript:@"PrimaryKey2"];
    [v12 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField"];
    [v12 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField2"];
    v14 = [MEMORY[0x277D3F2A0] sharedCore];
    v15 = [v14 storage];
    [v15 writeAggregateEntry:v12];

    v16 = objc_alloc(MEMORY[0x277D3F190]);
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    v18 = [v16 initWithEntryKey:@"PLDisplayAgent_EventForward_Display" withDate:v17];

    v19 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    [v18 setObject:v19 forKeyedSubscript:@"Brightness"];

    v20 = [MEMORY[0x277D3F2A0] sharedCore];
    [v20 storage];
    v22 = v21 = v6;
    [v22 writeEntry:v18 withCompletionBlock:0];

    v6 = v21;
    v9 = (v9 + 1);
  }

  while (v9 != 15000);
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v24 = MEMORY[0x277D3F178];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v26 = [v25 lastPathComponent];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressAggregateSmall]_block_invoke"];
  [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:2162];

  v28 = PLLogCommon();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v30 = 138412290;
    v31 = v23;
    _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", &v30, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)stressAggregateVerySmall
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1075);
}

void __42__PLDebugService_stressAggregateVerySmall__block_invoke()
{
  v31 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressAggregateVerySmall]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:2168];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v29 = 138412290;
    v30 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v29, 0xCu);
  }

  v6 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregateTestVerySmall"];
  v7 = [MEMORY[0x277D3F2A0] sharedCore];
  v8 = [v7 storage];
  [v8 deleteAllEntriesForKey:v6];

  v9 = 0;
  do
  {
    v10 = objc_alloc(MEMORY[0x277D3F190]);
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    v12 = [v10 initWithEntryKey:v6 withDate:v11];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:v9 / 0x96u];
    [v12 setObject:v13 forKeyedSubscript:@"PrimaryKey1"];

    [v12 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField"];
    v14 = [MEMORY[0x277D3F2A0] sharedCore];
    v15 = [v14 storage];
    [v15 writeAggregateEntry:v12];

    v16 = objc_alloc(MEMORY[0x277D3F190]);
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    v18 = [v16 initWithEntryKey:@"PLDisplayAgent_EventForward_Display" withDate:v17];

    v19 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    [v18 setObject:v19 forKeyedSubscript:@"Brightness"];

    v20 = [MEMORY[0x277D3F2A0] sharedCore];
    v21 = [v20 storage];
    [v21 writeEntry:v18 withCompletionBlock:0];

    v9 = (v9 + 1);
  }

  while (v9 != 15000);
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v23 = MEMORY[0x277D3F178];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v25 = [v24 lastPathComponent];
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressAggregateVerySmall]_block_invoke"];
  [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:2193];

  v27 = PLLogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v29 = 138412290;
    v30 = v22;
    _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", &v29, 0xCu);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)testExit
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1077);
}

- (void)testQuarantineExit
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1079);
}

- (void)testBlockingFlushCaches
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PLDebugService_testBlockingFlushCaches__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __41__PLDebugService_testBlockingFlushCaches__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) storage];
  [v1 blockingFlushCachesWithReason:@"PLDebugService"];
}

- (void)stressMonotonicTimer
{
  v39 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = 0x277CBE000uLL;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressMonotonicTimer: begin"];
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer]"];
  [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:2218];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v11 = 10;
  do
  {
    v12 = MEMORY[0x277D3F1E0];
    v13 = [*(v3 + 2728) monotonicDateWithTimeIntervalSinceNow:5.0];
    workQueue = [(PLOperator *)self workQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __38__PLDebugService_stressMonotonicTimer__block_invoke;
    v35[3] = &unk_27825B230;
    v15 = monotonicDate;
    v36 = v15;
    [v12 debugScheduledTimerWithMonotonicFireDate:v13 withInterval:workQueue withQueue:v35 withBlock:0.0];
    v17 = v16 = v3;

    [array addObject:v17];
    v18 = dispatch_time(0, 2000000000);
    workQueue2 = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PLDebugService_stressMonotonicTimer__block_invoke_1091;
    block[3] = &unk_278259658;
    v20 = v15;
    v33 = v20;
    v34 = v17;
    v21 = v17;
    v3 = v16;
    v22 = v21;
    dispatch_after(v18, workQueue2, block);

    sleep(3u);
    --v11;
  }

  while (v11);
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressMonotonicTimer: end"];
  v24 = MEMORY[0x277D3F178];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent2 = [v25 lastPathComponent];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer]"];
  [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:2241];

  v28 = PLLogCommon();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v23;
    _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v29 = *MEMORY[0x277D85DE8];
}

void __38__PLDebugService_stressMonotonicTimer__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  [a2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = [v2 stringWithFormat:@"PLDebugService::stressMonotonicTimer: *********fired********* at now=%f", v3];
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer]_block_invoke"];
  [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2228];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __38__PLDebugService_stressMonotonicTimer__block_invoke_1091(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  v5 = [v2 stringWithFormat:@"PLDebugService::stressMonotonicTimer: reschedule at now=%f", v4];

  v6 = MEMORY[0x277D3F178];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v8 = [v7 lastPathComponent];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer]_block_invoke"];
  [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:2234];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v11 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:2.0];
  [*(a1 + 40) setMonotonicFireDate:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stressMonotonicTimer2
{
  v29 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressMonotonicTimer2: begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer2]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2248];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v8 = 0;
  v9 = 10;
  do
  {
    v10 = v8;
    v11 = MEMORY[0x277D3F1E0];
    v12 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:5.0];
    workQueue = [(PLOperator *)self workQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__PLDebugService_stressMonotonicTimer2__block_invoke;
    v25[3] = &unk_27825B230;
    v14 = monotonicDate;
    v26 = v14;
    v8 = [v11 debugScheduledTimerWithMonotonicFireDate:v12 withInterval:workQueue withQueue:v25 withBlock:0.0];

    sleep(1u);
    --v9;
  }

  while (v9);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressMonotonicTimer2: end"];
  v16 = MEMORY[0x277D3F178];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent2 = [v17 lastPathComponent];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer2]"];
  [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:2263];

  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
}

void __39__PLDebugService_stressMonotonicTimer2__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  [a2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = [v2 stringWithFormat:@"PLDebugService::stressMonotonicTimer2: *********fired********* at now=%f", v3];
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer2]_block_invoke"];
  [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2258];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stressMonotonicTimer3
{
  v28 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressMonotonicTimer3: begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer3]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2270];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v27 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v8 = 10;
  do
  {
    v9 = MEMORY[0x277D3F1E0];
    v10 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:3.0];
    workQueue = [(PLOperator *)self workQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__PLDebugService_stressMonotonicTimer3__block_invoke;
    v24[3] = &unk_27825B230;
    v12 = monotonicDate;
    v25 = v12;
    v13 = [v9 debugScheduledTimerWithMonotonicFireDate:v10 withInterval:workQueue withQueue:v24 withBlock:3.0];

    sleep(1u);
    sleep(1u);

    --v8;
  }

  while (v8);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressMonotonicTimer3: end"];
  v15 = MEMORY[0x277D3F178];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent2 = [v16 lastPathComponent];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer3]"];
  [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:2287];

  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v27 = v14;
    _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x277D85DE8];
}

void __39__PLDebugService_stressMonotonicTimer3__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  [a2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = [v2 stringWithFormat:@"PLDebugService::stressMonotonicTimer3: *********fired********* at now=%f", v3];
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMonotonicTimer3]_block_invoke"];
  [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2280];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)testMonotonicTimerThroughSleep
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v6 = [v3 stringWithFormat:@"PLDebugService::testMonotonicTimerThroughSleep: begin at now=%f", v5];

  v7 = MEMORY[0x277D3F178];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v8 lastPathComponent];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testMonotonicTimerThroughSleep]"];
  [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2293];

  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v12 = MEMORY[0x277D3F1E0];
  v13 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:60.0];
  workQueue = [(PLOperator *)self workQueue];
  v15 = [v12 debugScheduledTimerWithMonotonicFireDate:v13 withInterval:workQueue withQueue:&__block_literal_global_1120 withBlock:300.0];
  v16 = monotonicTimer;
  monotonicTimer = v15;

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::testMonotonicTimerThroughSleep: end"];
  v18 = MEMORY[0x277D3F178];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent2 = [v19 lastPathComponent];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testMonotonicTimerThroughSleep]"];
  [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:2300];

  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = v17;
    _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __48__PLDebugService_testMonotonicTimerThroughSleep__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  [a2 timeIntervalSince1970];
  v4 = [v2 stringWithFormat:@"PLDebugService::testMonotonicTimerThroughSleep: *********fired********* at now=%f", v3];
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testMonotonicTimerThroughSleep]_block_invoke"];
  [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2298];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stressActivityScheduler
{
  v34[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressActivityScheduler: begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressActivityScheduler]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:2304];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }

  v9 = [MEMORY[0x277D3F138] timeCriterionWithInterval:60.0];
  v34[0] = v9;
  pluggedInCriterion = [MEMORY[0x277D3F130] pluggedInCriterion];
  v34[1] = pluggedInCriterion;
  displayOffCriterion = [MEMORY[0x277D3F130] displayOffCriterion];
  v34[2] = displayOffCriterion;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__18;
  v32 = __Block_byref_object_dispose__18;
  v33 = @"PLDebugService::scheduler";
  mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
  v14 = *(*(&buf + 1) + 40);
  v15 = [MEMORY[0x277D3F138] timeCriterionWithInterval:3600.0];
  workQueue = [(PLOperator *)self workQueue];
  [mEMORY[0x277D3F140] scheduleActivityWithIdentifier:v14 withCriteria:v12 withMustRunCriterion:v15 withQueue:workQueue withInterruptBlock:&__block_literal_global_1133 withActivityBlock:&__block_literal_global_1144];

  v17 = dispatch_time(0, 120000000000);
  v18 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PLDebugService_stressActivityScheduler__block_invoke_1152;
  block[3] = &unk_27825A990;
  block[4] = &buf;
  dispatch_after(v17, v18, block);

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressActivityScheduler: end"];
  v20 = MEMORY[0x277D3F178];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent2 = [v21 lastPathComponent];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressActivityScheduler]"];
  [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:2340];

  v24 = PLLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 138412290;
    v28 = v19;
    _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", v27, 0xCu);
  }

  _Block_object_dispose(&buf, 8);
  v25 = *MEMORY[0x277D85DE8];
}

void __41__PLDebugService_stressActivityScheduler__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::scheduler interrupted!"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressActivityScheduler]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:2315];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __41__PLDebugService_stressActivityScheduler__block_invoke_1141()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressActivityScheduler: BLOCK begin"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressActivityScheduler]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:2326];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v6 = dispatch_semaphore_create(0);
  v7 = dispatch_time(0, 5000000000);
  v8 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PLDebugService_stressActivityScheduler__block_invoke_1148;
  block[3] = &unk_2782591D0;
  v9 = v6;
  v18 = v9;
  dispatch_after(v7, v8, block);

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressActivityScheduler: BLOCK end"];
  v11 = MEMORY[0x277D3F178];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v13 = [v12 lastPathComponent];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressActivityScheduler]_block_invoke_2"];
  [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:2332];

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v10;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __41__PLDebugService_stressActivityScheduler__block_invoke_1152(uint64_t a1)
{
  v2 = [MEMORY[0x277D3F140] sharedInstance];
  [v2 cancelActivityWithIdentifier:*(*(*(a1 + 32) + 8) + 40)];
}

- (void)currentBasebandTime
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1157);
}

void __37__PLDebugService_currentBasebandTime__block_invoke()
{
  v1 = [MEMORY[0x277D3F248] sharedInstance];
  v0 = [v1 currentTimeFromTimeReference:3 toTimeReference:3];
}

- (void)stressMidnightCalculation
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1160);
}

void __43__PLDebugService_stressMidnightCalculation__block_invoke()
{
  v37[6] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1414915200.0];
  v37[0] = v0;
  v1 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1414918800.0];
  v37[1] = v1;
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1414922400.0];
  v37[2] = v2;
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1425805200.0];
  v37[3] = v3;
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1425808800.0];
  v37[4] = v4;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1425812400.0];
  v37[5] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:6];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v29 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [MEMORY[0x277CBEAA8] nearestMidnightBeforeDate:v10];
        [v11 timeIntervalSinceDate:v10];
        if (v12 > 0.0)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: d=%@, previousMidnight=%@", v10, v11];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
          v16 = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMidnightCalculation]_block_invoke"];
          [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:2368];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v35 = v13;
            _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v19 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:v10];
        [v19 timeIntervalSinceDate:v10];
        if (v20 < 0.0)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: d=%@, nextMidnight=%@", v10, v11];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
          v24 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressMidnightCalculation]_block_invoke"];
          [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:2373];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v35 = v21;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stressCacheSmall
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PLDebugService_stressCacheSmall__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __34__PLDebugService_stressCacheSmall__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"stressCacheSmall::begin"];
  v2 = MEMORY[0x277D3F178];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v4 = [v3 lastPathComponent];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressCacheSmall]_block_invoke"];
  [v2 logMessage:v1 fromFile:v4 fromFunction:v5 fromLineNumber:2381];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v27 = v1;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v7 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregateTestSmall"];
  v8 = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 5000; ++i)
  {
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(i / 0x1F4u) * 3600.0 + 1.0];
    v11 = v7;
    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withDate:v10];
    [v12 setObject:@"TestApp" forKeyedSubscript:@"PrimaryKey1"];
    [v12 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField"];
    [v8 addObject:v12];

    v7 = v11;
  }

  v13 = *(a1 + 32);
  v24 = v11;
  v25 = v8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v13 logEntries:v14 withGroupID:v11];

  v15 = [*(a1 + 32) storage];
  [v15 flushCachesWithReason:@"debug stressCache"];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"stressCacheSmall::end"];
  v17 = MEMORY[0x277D3F178];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v19 = [v18 lastPathComponent];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressCacheSmall]_block_invoke"];
  [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:2401];

  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v27 = v16;
    _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)stressCache
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__PLDebugService_stressCache__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __29__PLDebugService_stressCache__block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregateTest"];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = 1;
  do
  {
    v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v1];
    [v4 setObject:@"TestApp" forKeyedSubscript:@"PrimaryKey1"];
    [v4 setObject:@"TestApp2" forKeyedSubscript:@"PrimaryKey2"];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    [v4 setObject:v5 forKeyedSubscript:@"SumField"];

    [v2 addObject:v4];
    v3 = (v3 + 1);
  }

  while (v3 != 11);
  v6 = *(a1 + 32);
  v11 = v1;
  v12[0] = v2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 logEntries:v7 withGroupID:v1];

  v8 = [*(a1 + 32) storage];
  [v8 flushCachesWithReason:@"debug stressCache"];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stressSetObjectForKey
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1183);
}

void __39__PLDebugService_stressSetObjectForKey__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:@"PLDebugService_Aggregate_AggregateTest"];
  v2 = 10000000;
  do
  {
    [v1 setObject:&unk_282C12FC0 forKeyedSubscript:@"NumericalField"];
    --v2;
  }

  while (v2);

  objc_autoreleasePoolPop(v0);
}

- (void)stressObjectForKey
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1188);
}

void __36__PLDebugService_stressObjectForKey__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:@"PLDebugService_Aggregate_AggregateTest"];
  [v1 setObject:&unk_282C12FC0 forKeyedSubscript:@"NumericalField"];
  v2 = 10000000;
  do
  {
    v3 = [v1 objectForKeyedSubscript:@"NumericalField"];
    [v3 doubleValue];

    --v2;
  }

  while (v2);

  objc_autoreleasePoolPop(v0);
}

- (void)stressPLEntry
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLDebugService_stressPLEntry__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __31__PLDebugService_stressPLEntry__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filling Array of Entries"];
  v4 = 0x277D3F000uLL;
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressPLEntry]_block_invoke"];
  [v5 logMessage:v3 fromFile:v7 fromFunction:v8 fromLineNumber:2458];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v10 = 0;
  v39 = a1;
  do
  {
    HIDWORD(v11) = -858993459 * v10;
    LODWORD(v11) = HIDWORD(v11);
    if ((v11 >> 1) <= 0x19999999)
    {
      v12 = v2;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"entries.count=%lu", objc_msgSend(v2, "count")];
      v14 = v4;
      v15 = *(v4 + 376);
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressPLEntry]_block_invoke"];
      [v15 logMessage:v13 fromFile:v17 fromFunction:v18 fromLineNumber:2460];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v4 = v14;
      v2 = v12;
      a1 = v39;
    }

    v20 = [*(a1 + 32) filledTestArrayEntry];
    [v2 addObject:v20];

    ++v10;
  }

  while (v10 != 10000);
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filled array of entries to count of %lu, sleeping for 10 seconds", objc_msgSend(v2, "count")];
  v22 = *(v4 + 376);
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v24 = [v23 lastPathComponent];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressPLEntry]_block_invoke"];
  [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:2463];

  v26 = PLLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v21;
    _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  sleep(0xAu);
  v27 = [v2 objectAtIndexedSubscript:0];
  v28 = [v27 entryKey];

  v29 = *(v39 + 32);
  v40 = v28;
  v41 = v2;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  [v29 logEntries:v30 withGroupID:v28];

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged and done!"];
  v32 = *(v4 + 376);
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v34 = [v33 lastPathComponent];
  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressPLEntry]_block_invoke"];
  [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:2467];

  v36 = PLLogCommon();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v31;
    _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)stressTimer
{
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__PLDebugService_stressTimer__block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v4 = xmmword_21AA22330;
  dispatch_async(v2, v3);
}

void __29__PLDebugService_stressTimer__block_invoke(uint64_t a1)
{
  while (1)
  {
    v2 = objc_alloc(MEMORY[0x277D3F250]);
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(a1 + 32)];
    v4 = *(a1 + 32);
    v5 = dispatch_get_global_queue(2, 0);
    v6 = [v2 initWithFireDate:v3 withInterval:0 withTolerance:0 repeats:v5 withUserInfo:&__block_literal_global_1204 withQueue:v4 withBlock:0.0];
    v7 = timer;
    timer = v6;

    sleep(*(a1 + 40));
  }
}

void __29__PLDebugService_stressTimer__block_invoke_2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::stressTimer: timer fired, timer=%@", timer];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressTimer]_block_invoke_2"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:2485];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v8 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)testDailyTasks
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"fire Daily Tasks"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testDailyTasks]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2493];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v11, 0xCu);
  }

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  [storage dailyTasks];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)testArchive
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::testArchive"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testArchive]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2498];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v11, 0xCu);
  }

  mEMORY[0x277D3F158] = [MEMORY[0x277D3F158] sharedInstance];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [mEMORY[0x277D3F158] runActivityWithLastCompletedDate:monotonicDate];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)testTrimEPSQL
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::testTrimEPSQL"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testTrimEPSQL]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2503];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  mEMORY[0x277D3F158] = [MEMORY[0x277D3F158] sharedInstance];
  [mEMORY[0x277D3F158] trimExtendedPersistenceLog];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)testTrimCESQL
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::testTrimCESQL"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testTrimCESQL]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2508];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  mEMORY[0x277D3F158] = [MEMORY[0x277D3F158] sharedInstance];
  [mEMORY[0x277D3F158] trimCleanEnergyLog];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)testTrimXCSQL
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::testTrimXCSQL"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testTrimXCSQL]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2513];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  mEMORY[0x277D3F158] = [MEMORY[0x277D3F158] sharedInstance];
  [mEMORY[0x277D3F158] trimXcodeOrganizerLog];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)testTrimBGSQL
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLDebugService::testTrimBGSQL"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testTrimBGSQL]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2518];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  mEMORY[0x277D3F158] = [MEMORY[0x277D3F158] sharedInstance];
  [mEMORY[0x277D3F158] trimBackgroundProcessingLog];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)filledTestArrayEntry
{
  v2 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"ArrayTest"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v2];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"RandomString"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:rand()];
  [v3 setObject:v6 forKeyedSubscript:@"RandomNumber"];

  v7 = objc_opt_new();
  v8 = 10;
  do
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:rand()];
    [v7 addObject:v9];

    --v8;
  }

  while (v8);
  [v3 setObject:v7 forKeyedSubscript:@"StaticArrayType"];
  [v3 setObject:v7 forKeyedSubscript:@"DynamicArrayType"];

  return v3;
}

- (void)testABM
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"firing ABM tests"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testABM]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2539];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v8 = MEMORY[0x277CCACA8];
  mEMORY[0x277D3F120] = [MEMORY[0x277D3F120] sharedABMClient];
  getLTESleepManagerStats = [mEMORY[0x277D3F120] getLTESleepManagerStats];
  v11 = [v8 stringWithFormat:@"ABM LTE Sleep MGR stats = %@", getLTESleepManagerStats];

  v12 = MEMORY[0x277D3F178];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent2 = [v13 lastPathComponent];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testABM]"];
  [v12 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v15 fromLineNumber:2540];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  mEMORY[0x277D3F120]2 = [MEMORY[0x277D3F120] sharedABMClient];
  getBasebandTimeAndLatency = [mEMORY[0x277D3F120]2 getBasebandTimeAndLatency];

  v19 = MEMORY[0x277CCACA8];
  time = [getBasebandTimeAndLatency time];
  [getBasebandTimeAndLatency latency];
  v22 = [v19 stringWithFormat:@"ABM BB time = %@, latency = %f", time, v21];

  v23 = MEMORY[0x277D3F178];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent3 = [v24 lastPathComponent];
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testABM]"];
  [v23 logMessage:v22 fromFile:lastPathComponent3 fromFunction:v26 fromLineNumber:2543];

  v27 = PLLogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v22;
    _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)testArray
{
  v22 = *MEMORY[0x277D85DE8];
  filledTestArrayEntry = [(PLDebugService *)self filledTestArrayEntry];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test array!! entry=%@", filledTestArrayEntry];
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testArray]"];
  [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:2549];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [(PLOperator *)self logEntry:filledTestArrayEntry];
  v10 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"ArrayTest"];
  storage = [(PLOperator *)self storage];
  v12 = [storage lastEntryForKey:v10];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test array!! dbRead=%@", v12];
  v14 = MEMORY[0x277D3F178];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent2 = [v15 lastPathComponent];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testArray]"];
  [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:2554];

  v18 = PLLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v13;
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)testGenerateOTASubmission
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting generateOTASubmission"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testGenerateOTASubmission]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2558];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  mEMORY[0x277D3F238] = [MEMORY[0x277D3F238] sharedInstance];
  [mEMORY[0x277D3F238] generateOTASubmissionAndSendTaskingEndSubmission:1];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)testGenerateSafeguardSubmission
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting generateSafeguardSubmission"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testGenerateSafeguardSubmission]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2564];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  mEMORY[0x277D3F298] = [MEMORY[0x277D3F298] sharedInstance];
  [mEMORY[0x277D3F298] performSubmission];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)testScheduleSafeguardSubmission
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting generateSafeguardSubmission"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testScheduleSafeguardSubmission]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2571];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  mEMORY[0x277D3F298] = [MEMORY[0x277D3F298] sharedInstance];
  [mEMORY[0x277D3F298] scheduleSubmission];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stressTaskingSubmission
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting stressTaskingSubmission"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService stressTaskingSubmission]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2577];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v11, 0xCu);
  }

  v8 = 100;
  do
  {
    mEMORY[0x277D3F238] = [MEMORY[0x277D3F238] sharedInstance];
    [mEMORY[0x277D3F238] generateOTASubmissionAndSendTaskingEndSubmission:1];

    --v8;
  }

  while (v8);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)testFastInserts
{
  v6 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"FastInsertTest"];
  v3 = 0;
  do
  {
    v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    [v4 setObject:v5 forKeyedSubscript:@"iteration"];

    [(PLOperator *)self logEntry:v4];
    v3 = (v3 + 1);
  }

  while (v3 != 2000);
}

- (void)testAllEntryKeyRequests
{
  v82 = *MEMORY[0x277D85DE8];
  v61 = [MEMORY[0x277D3F258] allSubClassesForClass:objc_opt_class()];
  v2 = [v61 sortedArrayUsingComparator:&__block_literal_global_1259];
  group = dispatch_group_create();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v74 objects:v81 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v75;
    v62 = *v75;
    v63 = v3;
    do
    {
      v7 = 0;
      v64 = v5;
      do
      {
        if (*v75 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v65 = v7;
        v8 = *(*(&v74 + 1) + 8 * v7);
        className = [v8 className];
        v10 = [className hasPrefix:@"PLBBAgent"];

        if (v10)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"<rdar://problem/16693449> BBAgent: selector for entryDefinition has to be available on the Operator"];
          v12 = MEMORY[0x277D3F178];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
          lastPathComponent = [v13 lastPathComponent];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testAllEntryKeyRequests]"];
          [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2613];

          v16 = PLLogCommon();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_33;
          }

LABEL_14:
          *buf = 138412290;
          v80 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_33;
        }

        className2 = [v8 className];
        v18 = [className2 hasPrefix:@"PLIOReport"];

        if (v18)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"<rdar://problem/16694077> PLIOReport should use kPLEDLogSelector in the definitions to setup trigger for requests"];
          v19 = MEMORY[0x277D3F178];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
          lastPathComponent2 = [v20 lastPathComponent];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testAllEntryKeyRequests]"];
          [v19 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:2615];

          v16 = PLLogCommon();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_33;
          }

          goto LABEL_14;
        }

        className3 = [v8 className];
        v24 = [className3 hasPrefix:@"PLVideoAgent"];

        if (v24)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"<rdar://problem/16694177> PLVideoAgent_EventForward_VRPStatus needs to either be kPLEDOnDemandQuery: @(NO) or have method for requesting"];
          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
          lastPathComponent3 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testAllEntryKeyRequests]"];
          [v25 logMessage:v11 fromFile:lastPathComponent3 fromFunction:v28 fromLineNumber:2617];

          v16 = PLLogCommon();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_33;
          }

          goto LABEL_14;
        }

        entryKeys = [v8 entryKeys];
        v30 = [entryKeys sortedArrayUsingSelector:sel_compare_];

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v16 = v30;
        v31 = [v16 countByEnumeratingWithState:&v70 objects:v78 count:16];
        if (v31)
        {
          v32 = v31;
          v68 = *v71;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v71 != v68)
              {
                objc_enumerationMutation(v16);
              }

              v34 = *(*(&v70 + 1) + 8 * i);
              v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! entryKey=%@, entryKeys=%@", v34, v16];
              v36 = MEMORY[0x277D3F178];
              v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
              lastPathComponent4 = [v37 lastPathComponent];
              v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testAllEntryKeyRequests]"];
              [v36 logMessage:v35 fromFile:lastPathComponent4 fromFunction:v39 fromLineNumber:2622];

              v40 = PLLogCommon();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v80 = v35;
                _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              if ([MEMORY[0x277D3F198] isOnDemandQueryableForEntryKey:v34])
              {
                v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Requesting %@", v34];
                v42 = MEMORY[0x277D3F178];
                v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
                lastPathComponent5 = [v43 lastPathComponent];
                v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testAllEntryKeyRequests]"];
                [v42 logMessage:v41 fromFile:lastPathComponent5 fromFunction:v45 fromLineNumber:2624];

                v46 = PLLogCommon();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v80 = v41;
                  _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v47 = dispatch_get_global_queue(2, 0);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __41__PLDebugService_testAllEntryKeyRequests__block_invoke_1286;
                block[3] = &unk_278259658;
                block[4] = v34;
                block[5] = self;
                dispatch_group_async(group, v47, block);
              }

              else
              {
                v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Skipping %@", v34];
                v49 = MEMORY[0x277D3F178];
                v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
                lastPathComponent6 = [v50 lastPathComponent];
                v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testAllEntryKeyRequests]"];
                [v49 logMessage:v48 fromFile:lastPathComponent6 fromFunction:v52 fromLineNumber:2635];

                v53 = PLLogCommon();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v80 = v48;
                  _os_log_debug_impl(&dword_21A4C6000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            v32 = [v16 countByEnumeratingWithState:&v70 objects:v78 count:16];
          }

          while (v32);
          v11 = v16;
          v3 = v63;
          v5 = v64;
          v6 = v62;
        }

        else
        {
          v11 = v16;
        }

LABEL_33:

        v7 = v65 + 1;
      }

      while (v65 + 1 != v5);
      v5 = [v3 countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v5);
  }

  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"all requests sent... wait time."];
  v55 = MEMORY[0x277D3F178];
  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent7 = [v56 lastPathComponent];
  v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testAllEntryKeyRequests]"];
  [v55 logMessage:v54 fromFile:lastPathComponent7 fromFunction:v58 fromLineNumber:2642];

  v59 = PLLogCommon();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v80 = v54;
    _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v60 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLDebugService_testAllEntryKeyRequests__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 className];
  v6 = [v4 className];

  v7 = [v5 compare:v6];
  return v7;
}

void __41__PLDebugService_testAllEntryKeyRequests__block_invoke_1286(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v18 = 0;
  v4 = [MEMORY[0x277D3F1A8] requestEntryForEntryKey:v2 forOperator:v3 withTimeout:&v18 error:60.0];
  v5 = v18;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Timeout %@: %@", *(a1 + 32), v5];
    v8 = MEMORY[0x277D3F178];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
    v10 = [v9 lastPathComponent];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testAllEntryKeyRequests]_block_invoke"];
    [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2631];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v7;
LABEL_7:
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Response %@: %@", *(a1 + 32), v4];
    v13 = MEMORY[0x277D3F178];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
    v15 = [v14 lastPathComponent];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testAllEntryKeyRequests]_block_invoke"];
    [v13 logMessage:v7 fromFile:v15 fromFunction:v16 fromLineNumber:2629];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v7;
      goto LABEL_7;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)testEntrySleep
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"faking a sleep"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntrySleep]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2647];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"DEBUG_FakeSleep" object:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)testEntryWake
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"faking a wake"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryWake]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2652];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"DEBUG_FakeWake" object:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)testEntryLogRequestedForEntryKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = objc_autoreleasePoolPush();
  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"posting %@", keyCopy];
  v7 = MEMORY[0x277D3F178];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent = [v8 lastPathComponent];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryLogRequestedForEntryKey:]"];
  [v7 logMessage:keyCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2658];

  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = keyCopy;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v12 = [MEMORY[0x277D3F1A8] requestEntryForEntryKey:keyCopy forOperator:self withTimeout:0 error:60.0];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"DONE! %@=%@", keyCopy, v12];
  v14 = MEMORY[0x277D3F178];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  lastPathComponent2 = [v15 lastPathComponent];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryLogRequestedForEntryKey:]"];
  [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:2660];

  v18 = PLLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v13;
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)testEntryApplicationAgent
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PLDebugService_testEntryApplicationAgent__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __43__PLDebugService_testEntryApplicationAgent__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) storage];
  v4 = [v3 lastEntryForKey:@"PLApplicationAgent_EventForward_Application"];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastApp=%@", v4];
  v6 = MEMORY[0x277D3F178];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v8 = [v7 lastPathComponent];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryApplicationAgent]_block_invoke"];
  [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:2668];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v11 = [*(a1 + 32) storage];
  [v11 loadDynamicValuesIntoEntry:v4];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastApp(w/D)=%@", v4];
  v13 = MEMORY[0x277D3F178];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v15 = [v14 lastPathComponent];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryApplicationAgent]_block_invoke"];
  [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:2670];

  v17 = PLLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v12;
    _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)testEntryDelete
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PLDebugService_testEntryDelete__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __33__PLDebugService_testEntryDelete__block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__18;
  v67 = __Block_byref_object_dispose__18;
  v61 = a1;
  v2 = [*(a1 + 32) storage];
  v68 = [v2 lastEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleting %@ in...", v64[5]];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryDelete]_block_invoke"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:2679];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v70 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  LODWORD(v9) = 11;
  do
  {
    sleep(1u);
    v9 = (v9 - 1);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d...", v9];
    v11 = MEMORY[0x277D3F178];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
    v13 = [v12 lastPathComponent];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryDelete]_block_invoke"];
    [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:2682];

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v70 = v10;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  while (v9 > 1);
  v16 = [*(v61 + 32) storage];
  [v16 deleteEntry:v64[5]];

  v17 = [*(v61 + 32) storage];
  v60 = [v17 lastEntryForKey:@"PLIOReportAgent_EventBackward_IOReport"];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleting %@ in...", v60];
  v19 = MEMORY[0x277D3F178];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v21 = [v20 lastPathComponent];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryDelete]_block_invoke"];
  [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:2687];

  v23 = PLLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v70 = v18;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  LODWORD(v24) = 11;
  do
  {
    sleep(1u);
    v24 = (v24 - 1);
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d...", v24];
    v26 = MEMORY[0x277D3F178];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
    v28 = [v27 lastPathComponent];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryDelete]_block_invoke"];
    [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:2690];

    v30 = PLLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v70 = v25;
      _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  while (v24 > 1);
  v31 = [*(v61 + 32) storage];
  [v31 deleteEntry:v60];

  v32 = [*(v61 + 32) storage];
  v33 = [v32 lastEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];
  v34 = v64[5];
  v64[5] = v33;

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"updating %@ in...", v64[5]];
  v36 = MEMORY[0x277D3F178];
  v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v38 = [v37 lastPathComponent];
  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryDelete]_block_invoke"];
  [v36 logMessage:v35 fromFile:v38 fromFunction:v39 fromLineNumber:2695];

  v40 = PLLogCommon();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v70 = v35;
    _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  LODWORD(v41) = 11;
  do
  {
    sleep(1u);
    v41 = (v41 - 1);
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d...", v41];
    v43 = MEMORY[0x277D3F178];
    v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
    v45 = [v44 lastPathComponent];
    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryDelete]_block_invoke"];
    [v43 logMessage:v42 fromFile:v45 fromFunction:v46 fromLineNumber:2698];

    v47 = PLLogCommon();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v70 = v42;
      _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  while (v41 > 1);
  v48 = *(v61 + 32);
  v49 = v64[5];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __33__PLDebugService_testEntryDelete__block_invoke_1342;
  v62[3] = &unk_27825A990;
  v62[4] = &v63;
  [v48 updateEntry:v49 withBlock:v62];
  v50 = [*(v61 + 32) storage];
  v51 = [v50 entryForKey:@"PLBatteryAgent_EventBackward_Battery" withID:{objc_msgSend(v64[5], "entryID")}];

  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"PreUpdate=%@\nPostUpdate=%@", v64[5], v51];
  v53 = MEMORY[0x277D3F178];
  v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v55 = [v54 lastPathComponent];
  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryDelete]_block_invoke"];
  [v53 logMessage:v52 fromFile:v55 fromFunction:v56 fromLineNumber:2708];

  v57 = PLLogCommon();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v70 = v52;
    _os_log_debug_impl(&dword_21A4C6000, v57, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  _Block_object_dispose(&v63, 8);
  objc_autoreleasePoolPop(context);
  v58 = *MEMORY[0x277D85DE8];
}

uint64_t __33__PLDebugService_testEntryDelete__block_invoke_1342(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsCharging"];
  [*(*(*(a1 + 32) + 8) + 40) setObject:&unk_282C12FD8 forKeyedSubscript:@"ChemID"];
  v2 = *(*(*(a1 + 32) + 8) + 40);

  return [v2 setObject:&unk_282C12FF0 forKeyedSubscript:@"DesignCapacity"];
}

- (void)testEntryQueries
{
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PLDebugService_testEntryQueries__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __34__PLDebugService_testEntryQueries__block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) storage];
  v3 = [v2 lastEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v73 = v3;
  v7 = [v4 stringWithFormat:@"Last Battery(%@)=%@", v6, v3];

  v8 = MEMORY[0x277D3F178];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v10 = [v9 lastPathComponent];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryQueries]_block_invoke"];
  [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2718];

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v13 = [*(a1 + 32) storage];
  v14 = [v13 entriesForKey:@"PLBatteryAgent_EventBackward_Battery" startingFromRowID:232 count:1 withFilters:0];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"row %lld=%@", 232, v14];
  v16 = MEMORY[0x277D3F178];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v18 = [v17 lastPathComponent];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryQueries]_block_invoke"];
  [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:2725];

  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v21 = [*(a1 + 32) storage];
  v22 = [v21 entriesForKey:@"PLBatteryAgent_EventBackward_Battery" startingFromRowID:232 count:5 withFilters:0];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"row %lld + 5=%@", 232, v22];
  v24 = MEMORY[0x277D3F178];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v26 = [v25 lastPathComponent];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryQueries]_block_invoke"];
  [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:2728];

  v28 = PLLogCommon();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v23;
    _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v29 = [*(a1 + 32) storage];
  v30 = [v29 entriesForKey:@"PLBatteryAgent_EventBackward_Battery" startingFromRowID:232 count:-5 withFilters:0];

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"row %lld - 5=%@", 232, v30];
  v32 = MEMORY[0x277D3F178];
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v34 = [v33 lastPathComponent];
  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryQueries]_block_invoke"];
  [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:2731];

  v36 = PLLogCommon();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v31;
    _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v37 = [v30 objectAtIndexedSubscript:0];
  v38 = [v37 entryDate];

  v39 = [MEMORY[0x277D3F268] formattedStringForDate:v38];
  v40 = [v38 dateByAddingTimeInterval:300.0];
  v41 = [MEMORY[0x277D3F268] formattedStringForDate:v40];
  v42 = v40;
  v72 = v38;
  [v38 timeIntervalSince1970];
  v44 = v43;
  [v42 timeIntervalSince1970];
  v46 = v45;

  v47 = v46 - v44;
  [*(a1 + 32) storage];
  v49 = v48 = a1;
  v50 = [v49 entriesForKey:@"PLBatteryAgent_EventBackward_Battery" inTimeRange:0 withFilters:{v44, v47}];

  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"row %@ - %@=%@", v39, v41, v50];
  v52 = MEMORY[0x277D3F178];
  v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v54 = [v53 lastPathComponent];
  v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryQueries]_block_invoke"];
  [v52 logMessage:v51 fromFile:v54 fromFunction:v55 fromLineNumber:2740];

  v56 = PLLogCommon();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v51;
    _os_log_debug_impl(&dword_21A4C6000, v56, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v57 = [*(v48 + 32) storage];
  v58 = [v57 entriesForKey:@"PLBatteryAgent_EventBackward_Battery" inTimeRange:10 withCountOfEntriesBefore:10 withCountOfEntriesAfter:0 withFilters:{v44, v47}];

  v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"row %@ - %@ +/- 10=%@", v39, v41, v58];
  v60 = MEMORY[0x277D3F178];
  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v62 = [v61 lastPathComponent];
  v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryQueries]_block_invoke"];
  [v60 logMessage:v59 fromFile:v62 fromFunction:v63 fromLineNumber:2743];

  v64 = PLLogCommon();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v59;
    _os_log_debug_impl(&dword_21A4C6000, v64, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  sleep(5u);
  v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"alright memory go down!"];
  v66 = MEMORY[0x277D3F178];
  v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v68 = [v67 lastPathComponent];
  v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testEntryQueries]_block_invoke"];
  [v66 logMessage:v65 fromFile:v68 fromFunction:v69 fromLineNumber:2746];

  v70 = PLLogCommon();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v65;
    _os_log_debug_impl(&dword_21A4C6000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v71 = *MEMORY[0x277D85DE8];
}

- (void)testMonotonicAggregateEntries
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1382);
}

void __47__PLDebugService_testMonotonicAggregateEntries__block_invoke()
{
  v26 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testMonotonicAggregateEntries"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testMonotonicAggregateEntries]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:2755];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v6 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregateTestSplitAndBucket"];
  v7 = [MEMORY[0x277D3F2A0] sharedCore];
  v8 = [v7 storage];
  [v8 deleteAllEntriesForKey:v6];

  for (i = 0; i != 15000; ++i)
  {
    v10 = objc_alloc(MEMORY[0x277D3F190]);
    v11 = [MEMORY[0x277CBEAA8] monotonicDate];
    v12 = [v10 initWithEntryKey:v6 withDate:v11];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:i / 0x96u];
    [v12 setObject:v13 forKeyedSubscript:@"PrimaryKey1"];

    [v12 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField"];
    [v12 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField2"];
    v14 = [MEMORY[0x277D3F2A0] sharedCore];
    v15 = [v14 storage];
    [v15 writeAggregateEntry:v12];
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"end testMonotonicAggregateEntries"];
  v17 = MEMORY[0x277D3F178];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v19 = [v18 lastPathComponent];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testMonotonicAggregateEntries]_block_invoke"];
  [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:2775];

  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = v16;
    _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)testMonotonicAggregateEntriesExtendedTime
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1390);
}

void __59__PLDebugService_testMonotonicAggregateEntriesExtendedTime__block_invoke()
{
  v28 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testMonotonicAggregateEntriesExtendedTime"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testMonotonicAggregateEntriesExtendedTime]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:2783];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v27 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v6 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregateTestSplitAndBucket"];
  v7 = [MEMORY[0x277D3F2A0] sharedCore];
  v8 = [v7 storage];
  [v8 deleteAllEntriesForKey:v6];

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = objc_alloc(MEMORY[0x277D3F190]);
    v12 = [MEMORY[0x277CBEAA8] monotonicDate];
    v13 = [v12 dateByAddingTimeInterval:v9];
    v14 = [v11 initWithEntryKey:v6 withDate:v13];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:v10 / 0x96u];
    [v14 setObject:v15 forKeyedSubscript:@"PrimaryKey1"];

    [v14 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField"];
    [v14 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField2"];
    v16 = [MEMORY[0x277D3F2A0] sharedCore];
    v17 = [v16 storage];
    [v17 writeAggregateEntry:v14];

    ++v10;
    v9 += 60;
  }

  while (v9 != 900000);
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"end testMonotonicAggregateEntriesExtendedTime"];
  v19 = MEMORY[0x277D3F178];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v21 = [v20 lastPathComponent];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testMonotonicAggregateEntriesExtendedTime]_block_invoke"];
  [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:2803];

  v23 = PLLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v27 = v18;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)testProportionateAggregateEntries
{
  workQueue = [(PLOperator *)self workQueue];
  dispatch_async(workQueue, &__block_literal_global_1398);
}

void __51__PLDebugService_testProportionateAggregateEntries__block_invoke()
{
  v53 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testProportionateAggregateEntries"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testProportionateAggregateEntries]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:2811];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v52 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v6 = [(PLOperator *)PLDebugService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AggregateTestSplitAndBucket"];
  v7 = [MEMORY[0x277D3F2A0] sharedCore];
  v8 = [v7 storage];
  [v8 deleteAllEntriesForKey:v6];

  v9 = objc_alloc(MEMORY[0x277D3F190]);
  v10 = [MEMORY[0x277CBEAA8] monotonicDate];
  v11 = [v9 initWithEntryKey:v6 withDate:v10];

  [v11 setObject:&unk_282C12FC0 forKeyedSubscript:@"PrimaryKey1"];
  [v11 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField"];
  [v11 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField2"];
  v12 = [MEMORY[0x277D3F2A0] sharedCore];
  v13 = [v12 storage];
  v14 = [MEMORY[0x277CBEAA8] monotonicDate];
  v15 = [MEMORY[0x277CBEAA8] monotonicDate];
  v16 = [v15 dateByAddingTimeInterval:60.0];
  v48 = v11;
  [v13 writeProportionateAggregateEntry:v11 withStartDate:v14 withEndDate:v16];

  v17 = objc_alloc(MEMORY[0x277D3F190]);
  v18 = [MEMORY[0x277CBEAA8] monotonicDate];
  v19 = [v17 initWithEntryKey:v6 withDate:v18];

  [v19 setObject:&unk_282C13008 forKeyedSubscript:@"PrimaryKey1"];
  [v19 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField"];
  [v19 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField2"];
  v20 = [MEMORY[0x277D3F2A0] sharedCore];
  v21 = [v20 storage];
  v22 = [MEMORY[0x277CBEAA8] monotonicDate];
  v23 = [MEMORY[0x277CBEAA8] monotonicDate];
  v24 = [v23 dateByAddingTimeInterval:3600.0];
  [v21 writeProportionateAggregateEntry:v19 withStartDate:v22 withEndDate:v24];

  v25 = objc_alloc(MEMORY[0x277D3F190]);
  v26 = [MEMORY[0x277CBEAA8] monotonicDate];
  v27 = [v25 initWithEntryKey:v6 withDate:v26];

  [v27 setObject:&unk_282C13020 forKeyedSubscript:@"PrimaryKey1"];
  [v27 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField"];
  [v27 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField2"];
  v28 = [MEMORY[0x277D3F2A0] sharedCore];
  v29 = [v28 storage];
  v30 = [MEMORY[0x277CBEAA8] monotonicDate];
  v31 = [MEMORY[0x277CBEAA8] monotonicDate];
  v32 = [v31 dateByAddingTimeInterval:7200.0];
  [v29 writeProportionateAggregateEntry:v27 withStartDate:v30 withEndDate:v32];

  v33 = objc_alloc(MEMORY[0x277D3F190]);
  v34 = [MEMORY[0x277CBEAA8] monotonicDate];
  v49 = v6;
  v35 = [v33 initWithEntryKey:v6 withDate:v34];

  [v35 setObject:&unk_282C13038 forKeyedSubscript:@"PrimaryKey1"];
  [v35 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField"];
  [v35 setObject:&unk_282C12FC0 forKeyedSubscript:@"SumField2"];
  v36 = [MEMORY[0x277D3F2A0] sharedCore];
  v37 = [v36 storage];
  v38 = [MEMORY[0x277CBEAA8] monotonicDate];
  v39 = [MEMORY[0x277CBEAA8] monotonicDate];
  v40 = [v39 dateByAddingTimeInterval:93600.0];
  [v37 writeProportionateAggregateEntry:v35 withStartDate:v38 withEndDate:v40];

  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"end testProportionateAggregateEntries"];
  v42 = MEMORY[0x277D3F178];
  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDebugService.m"];
  v44 = [v43 lastPathComponent];
  v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDebugService testProportionateAggregateEntries]_block_invoke"];
  [v42 logMessage:v41 fromFile:v44 fromFunction:v45 fromLineNumber:2858];

  v46 = PLLogCommon();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v52 = v41;
    _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v47 = *MEMORY[0x277D85DE8];
}

- (id)handleEnergyMonitorDebugQuery:(id)query
{
  v53[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  energyMonitorDebugInstance = [(PLDebugService *)self energyMonitorDebugInstance];

  if (!energyMonitorDebugInstance)
  {
    v17 = &unk_282C19BB0;
    goto LABEL_12;
  }

  v6 = [queryCopy objectForKeyedSubscript:@"queryType"];
  if (([v6 isEqualToString:@"reportStartEvent"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"reportStopEvent"))
  {
    if ([v6 isEqualToString:@"getValueForPropertyName"])
    {
      v21 = v6;
      v22 = [queryCopy objectForKeyedSubscript:@"propertyName"];
      energyMonitorDebugInstance2 = [(PLDebugService *)self energyMonitorDebugInstance];
      v24 = [(PLDebugService *)self getValueForPropertyName:v22 forEnergyMonitor:energyMonitorDebugInstance2];

      if ([v22 isEqualToString:@"discretionaryIntervals"])
      {
        v25 = objc_opt_new();
        v26 = [v24 objectForKeyedSubscript:@"discretionaryIntervals"];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __48__PLDebugService_handleEnergyMonitorDebugQuery___block_invoke;
        v44[3] = &unk_278261D58;
        v45 = v25;
        v27 = v25;
        [v26 enumerateKeysAndObjectsUsingBlock:v44];
        v52 = @"response";
        v53[0] = v27;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
        v28 = v45;
      }

      else
      {
        if (![v22 isEqualToString:@"quickEnergySnapshots"])
        {
          v48 = @"response";
          v49 = v24;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          goto LABEL_29;
        }

        v32 = objc_opt_new();
        v26 = [v24 objectForKeyedSubscript:@"quickEnergySnapshots"];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __48__PLDebugService_handleEnergyMonitorDebugQuery___block_invoke_3;
        v42[3] = &unk_27825B950;
        v43 = v32;
        v27 = v32;
        [v26 enumerateObjectsUsingBlock:v42];
        v50 = @"response";
        v51 = v27;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v28 = v43;
      }

LABEL_29:
      v6 = v21;
      goto LABEL_11;
    }

    if ([v6 isEqualToString:@"updateMockData"])
    {
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/tmp/energy_monitor_debug_config.plist"];
      if (v29)
      {
        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v47 = v29;
          _os_log_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_INFO, "Updating mockData with newMockData=%@", buf, 0xCu);
        }

        energyMonitorDebugInstance3 = [(PLDebugService *)self energyMonitorDebugInstance];
        [energyMonitorDebugInstance3 updateMockData:v29];

        v18 = &unk_282C19BD8;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_11;
    }

    if ([v6 isEqualToString:@"reportChargingStatus"])
    {
      v33 = [queryCopy objectForKeyedSubscript:@"chargingStatus"];
      bOOLValue = [v33 BOOLValue];

      energyMonitorDebugInstance4 = [(PLDebugService *)self energyMonitorDebugInstance];
      [energyMonitorDebugInstance4 reportChargingStatus:bOOLValue];

      v18 = &unk_282C19C00;
      goto LABEL_11;
    }

    if (![v6 isEqualToString:@"runMethod"])
    {
      v18 = &unk_282C19C50;
      goto LABEL_11;
    }

    v36 = [queryCopy objectForKeyedSubscript:@"methodName"];
    if ([v36 isEqualToString:@"generateEnergyReport"])
    {
      v37 = v6;
      energyMonitorDebugInstance5 = [(PLDebugService *)self energyMonitorDebugInstance];
      [energyMonitorDebugInstance5 generateEnergyReport];
    }

    else
    {
      if (![v36 isEqualToString:@"queryPowerlogForDiscretionaryEnergy"])
      {
LABEL_39:

        v18 = &unk_282C19C28;
        goto LABEL_11;
      }

      v37 = v6;
      energyMonitorDebugInstance5 = [(PLDebugService *)self energyMonitorDebugInstance];
      [energyMonitorDebugInstance5 queryPowerlogForDiscretionaryEnergy];
    }

    v6 = v37;
    goto LABEL_39;
  }

  v40 = [queryCopy objectForKeyedSubscript:{@"activityName", self}];
  v7 = [queryCopy objectForKeyedSubscript:@"involvedIdentifiers"];
  v8 = MEMORY[0x277CCABB0];
  v9 = [queryCopy objectForKeyedSubscript:@"requiresNetwork"];
  v10 = [v8 numberWithBool:{objc_msgSend(v9, "BOOLValue")}];

  v11 = [queryCopy objectForKeyedSubscript:@"quality"];
  v12 = [queryCopy objectForKeyedSubscript:@"cell"];
  v41 = queryCopy;
  v13 = [queryCopy objectForKeyedSubscript:@"wifi"];
  v14 = objc_opt_new();
  [v14 setObject:v7 forKeyedSubscript:@"involvedIdentifiers"];
  [v14 setObject:v10 forKeyedSubscript:@"requiresNetwork"];
  [v14 setObject:v11 forKeyedSubscript:@"quality"];
  [v14 setObject:v12 forKeyedSubscript:@"cell"];
  [v14 setObject:v13 forKeyedSubscript:@"wifi"];
  if ([v6 isEqualToString:@"reportStartEvent"])
  {
    energyMonitorDebugInstance6 = [v39 energyMonitorDebugInstance];
    v16 = v40;
    [energyMonitorDebugInstance6 reportStartEvent:v40 withInfo:v14];
LABEL_9:

    goto LABEL_10;
  }

  v16 = v40;
  if ([v6 isEqualToString:@"reportStopEvent"])
  {
    energyMonitorDebugInstance6 = [v39 energyMonitorDebugInstance];
    [energyMonitorDebugInstance6 reportStopEvent:v40 withInfo:v14];
    goto LABEL_9;
  }

LABEL_10:

  v18 = 0;
  queryCopy = v41;
LABEL_11:
  v17 = v18;

LABEL_12:
  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

void __48__PLDebugService_handleEnergyMonitorDebugQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__PLDebugService_handleEnergyMonitorDebugQuery___block_invoke_2;
  v9[3] = &unk_27825B950;
  v10 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

void __48__PLDebugService_handleEnergyMonitorDebugQuery___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
  [v2 addObject:v3];
}

void __48__PLDebugService_handleEnergyMonitorDebugQuery___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
  [v2 addObject:v3];
}

- (id)getValueForPropertyName:(id)name forEnergyMonitor:(id)monitor
{
  v52 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  monitorCopy = monitor;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v51 = nameCopy;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Getting value for propertyName=%@", buf, 0xCu);
  }

  if ([nameCopy isEqualToString:@"discretionaryIntervals"])
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      intervalManager = [monitorCopy intervalManager];
      identifierToDiscretionaryIntervals = [intervalManager identifierToDiscretionaryIntervals];
      *buf = 138412290;
      v51 = identifierToDiscretionaryIntervals;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "value=%@", buf, 0xCu);
    }

    v48 = nameCopy;
    intervalManager2 = [monitorCopy intervalManager];
    identifierToDiscretionaryIntervals2 = [intervalManager2 identifierToDiscretionaryIntervals];
    v49 = identifierToDiscretionaryIntervals2;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"quickEnergySnapshots"])
  {
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      quickEnergySnapshots = [monitorCopy quickEnergySnapshots];
      *buf = 138412290;
      v51 = quickEnergySnapshots;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "value=%@", buf, 0xCu);
    }

    v46 = nameCopy;
    intervalManager2 = [monitorCopy quickEnergySnapshots];
    v47 = intervalManager2;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v47;
    v15 = &v46;
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"lastPowerlogResponse"])
  {
    v44 = nameCopy;
    intervalManager2 = [monitorCopy lastPowerlogResponse];
    v45 = intervalManager2;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v45;
    v15 = &v44;
LABEL_29:
    v11 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
LABEL_30:

    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"lastReportedTotalEnergy"])
  {
    v42 = nameCopy;
    v16 = MEMORY[0x277CCABB0];
    [monitorCopy lastReportedTotalEnergy];
    intervalManager2 = [v16 numberWithDouble:?];
    v43 = intervalManager2;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v43;
    v15 = &v42;
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"lastReportedCPUEnergy"])
  {
    v40 = nameCopy;
    v17 = MEMORY[0x277CCABB0];
    [monitorCopy lastReportedCPUEnergy];
    intervalManager2 = [v17 numberWithDouble:?];
    v41 = intervalManager2;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v41;
    v15 = &v40;
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"lastReportedNetworkEnergy"])
  {
    v38 = nameCopy;
    v18 = MEMORY[0x277CCABB0];
    [monitorCopy lastReportedNetworkEnergy];
    intervalManager2 = [v18 numberWithDouble:?];
    v39 = intervalManager2;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v39;
    v15 = &v38;
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"accumulatedCPUEnergy"])
  {
    v36 = nameCopy;
    v21 = MEMORY[0x277CCABB0];
    [monitorCopy accumulatedCPUEnergy];
    intervalManager2 = [v21 numberWithDouble:?];
    v37 = intervalManager2;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v37;
    v15 = &v36;
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"accumulatedNetworkEnergy"])
  {
    v34 = nameCopy;
    v23 = MEMORY[0x277CCABB0];
    [monitorCopy accumulatedNetworkEnergy];
    intervalManager2 = [v23 numberWithDouble:?];
    v35 = intervalManager2;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v35;
    v15 = &v34;
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"isCharging"])
  {
    v32 = nameCopy;
    intervalManager2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(monitorCopy, "isCharging")}];
    v33 = intervalManager2;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v33;
    v15 = &v32;
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"mockData"])
  {
    v24 = PLLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      mockData = [monitorCopy mockData];
      *buf = 138412290;
      v51 = mockData;
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "value=%@", buf, 0xCu);
    }

    v30 = nameCopy;
    intervalManager2 = [monitorCopy mockData];
    v31 = intervalManager2;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v31;
    v15 = &v30;
    goto LABEL_29;
  }

  v28 = nameCopy;
  v29 = @"No value found for propertyName";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
LABEL_31:

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

@end