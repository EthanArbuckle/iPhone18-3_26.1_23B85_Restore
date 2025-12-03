@interface PLDuetServiceDAS
+ (id)entryEventBackwardDefinitionsDASEnergyBudgetReport;
+ (id)entryEventForwardDefinitionsDASApplicationPrediction;
+ (id)entryEventForwardDefinitionsDASDataBudgetAvailable;
+ (id)entryEventForwardDefinitionsDASEnergyBudgetAvailable;
+ (id)entryEventForwardDefinitionsDASPrediction;
+ (id)entryEventForwardDefinitionsDASTrial;
+ (id)entryEventNoneDefinitionsDASActivity;
+ (id)entryEventNoneDefinitionsDASActivityDropCount;
+ (id)entryEventNoneDefinitionsDASActivityLifecycle;
+ (id)entryEventNoneDefinitionsDASInfo;
+ (id)entryEventNoneDefinitionsDASPoliciesBlockingCriteria;
- (PLDuetServiceDAS)init;
- (PLService)duetService;
- (int64_t)fileProtectionTypeStringToEnum:(id)enum;
- (void)didReceiveDASActivityEventWithPayload:(id)payload;
- (void)didReceiveDASActivityLifecycleEventWithPayload:(id)payload;
- (void)didReceiveDASBudgetEventWithPayload:(id)payload;
- (void)didReceiveDASDataBudgetEventWithPayload:(id)payload;
- (void)didReceiveDASInfoEventWithPayload:(id)payload;
- (void)didReceiveDASPoliciesBlockingCriteriaEventWithPayload:(id)payload;
- (void)didReceiveDASPredictionEventWithPayload:(id)payload;
- (void)didReceiveDASReportEventWithPayload:(id)payload;
- (void)didReceiveDASTrialEventWithPayload:(id)payload;
- (void)initOperatorDependanciesDAS:(id)s;
@end

@implementation PLDuetServiceDAS

- (PLService)duetService
{
  WeakRetained = objc_loadWeakRetained(&self->_duetService);

  return WeakRetained;
}

- (PLDuetServiceDAS)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PLDuetServiceDAS;
    v4 = [(PLDuetServiceDAS *)&v6 init];
    [(PLDuetServiceDAS *)v4 setDuetService:0];
    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)entryEventNoneDefinitionsDASPoliciesBlockingCriteria
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setObject:&unk_282C1C188 forKeyedSubscript:*MEMORY[0x277D3F568]];
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3F4D8]];
  v16[0] = @"Policy";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v17[0] = commonTypeDict_StringFormat;
  v16[1] = @"Utility";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v17[1] = commonTypeDict_IntegerFormat;
  v16[2] = @"Maintenance";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = *MEMORY[0x277D3F540];
  v14[0] = *MEMORY[0x277D3F4E8];
  v14[1] = v10;
  v15[0] = v2;
  v15[1] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventNoneDefinitionsDASActivityLifecycle
{
  v80[34] = *MEMORY[0x277D85DE8];
  v76 = objc_opt_new();
  [v76 setObject:&unk_282C1C198 forKeyedSubscript:*MEMORY[0x277D3F568]];
  v2 = MEMORY[0x277CBEC38];
  [v76 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3F4A0]];
  [v76 setObject:v2 forKeyedSubscript:*MEMORY[0x277D3F4D8]];
  v79[0] = @"Name";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v80[0] = commonTypeDict_StringFormat;
  v79[1] = @"ProcessName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withProcessName];
  v80[1] = commonTypeDict_StringFormat_withProcessName;
  v79[2] = @"Priority";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v80[2] = commonTypeDict_IntegerFormat;
  v79[3] = @"PID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v80[3] = commonTypeDict_IntegerFormat2;
  v79[4] = @"StartDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v80[4] = commonTypeDict_DateFormat;
  v79[5] = @"EndDate";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_DateFormat];
  v80[5] = commonTypeDict_DateFormat2;
  v79[6] = @"Duration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v80[6] = commonTypeDict_IntegerFormat3;
  v79[7] = @"SuspendRequestDate";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_DateFormat];
  v80[7] = commonTypeDict_DateFormat3;
  v79[8] = @"SuspensionDelay";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v80[8] = commonTypeDict_IntegerFormat4;
  v79[9] = @"ScheduleAfterDate";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat4 = [mEMORY[0x277D3F198]10 commonTypeDict_DateFormat];
  v80[9] = commonTypeDict_DateFormat4;
  v79[10] = @"ScheduleBeforeDate";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat5 = [mEMORY[0x277D3F198]11 commonTypeDict_DateFormat];
  v80[10] = commonTypeDict_DateFormat5;
  v79[11] = @"BeyondDeadline";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]12 commonTypeDict_BoolFormat];
  v80[11] = commonTypeDict_BoolFormat;
  v79[12] = @"Interval";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v80[12] = commonTypeDict_IntegerFormat5;
  v79[13] = @"FileProtection";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v80[13] = commonTypeDict_IntegerFormat6;
  v79[14] = @"IsCPUIntensive";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
  v80[14] = commonTypeDict_BoolFormat2;
  v79[15] = @"IsMemoryIntensive";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]16 commonTypeDict_BoolFormat];
  v80[15] = commonTypeDict_BoolFormat3;
  v79[16] = @"RequiresPlugin";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]17 commonTypeDict_BoolFormat];
  v80[16] = commonTypeDict_BoolFormat4;
  v79[17] = @"RequiresNetwork";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat5 = [mEMORY[0x277D3F198]18 commonTypeDict_BoolFormat];
  v80[17] = commonTypeDict_BoolFormat5;
  v79[18] = @"RequiresInexpensiveNetworking";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat6 = [mEMORY[0x277D3F198]19 commonTypeDict_BoolFormat];
  v80[18] = commonTypeDict_BoolFormat6;
  v79[19] = @"RequiresUnconstrainedNetworking";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat7 = [mEMORY[0x277D3F198]20 commonTypeDict_BoolFormat];
  v80[19] = commonTypeDict_BoolFormat7;
  v79[20] = @"RequiresDeviceInactivity";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat8 = [mEMORY[0x277D3F198]21 commonTypeDict_BoolFormat];
  v80[20] = commonTypeDict_BoolFormat8;
  v79[21] = @"RequiresSignificantUserInactivity";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat9 = [mEMORY[0x277D3F198]22 commonTypeDict_BoolFormat];
  v80[21] = commonTypeDict_BoolFormat9;
  v79[22] = @"TriggersRestart";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat10 = [mEMORY[0x277D3F198]23 commonTypeDict_BoolFormat];
  v80[22] = commonTypeDict_BoolFormat10;
  v79[23] = @"Energy";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v80[23] = commonTypeDict_IntegerFormat7;
  v79[24] = @"NetworkTaskSize";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v80[24] = commonTypeDict_IntegerFormat8;
  v79[25] = @"OptimalScore";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v80[25] = commonTypeDict_IntegerFormat9;
  v79[26] = @"ScoreWhenRun";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v80[26] = commonTypeDict_IntegerFormat10;
  v79[27] = @"OptimalScorePercentage";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v80[27] = commonTypeDict_IntegerFormat11;
  v79[28] = @"BundleID";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]29 commonTypeDict_StringFormat_withBundleID];
  v80[28] = commonTypeDict_StringFormat_withBundleID;
  v79[29] = @"Application";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withAppName = [mEMORY[0x277D3F198]30 commonTypeDict_StringFormat_withAppName];
  v80[29] = commonTypeDict_StringFormat_withAppName;
  v79[30] = @"InvolvedProcesses";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName2 = [mEMORY[0x277D3F198]31 commonTypeDict_StringFormat_withProcessName];
  v80[30] = commonTypeDict_StringFormat_withProcessName2;
  v79[31] = @"GroupName";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]32 commonTypeDict_StringFormat];
  v80[31] = commonTypeDict_StringFormat2;
  v79[32] = @"SuspensionReason";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat];
  v80[32] = commonTypeDict_IntegerFormat12;
  v79[33] = @"Limitations";
  mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat];
  v80[33] = commonTypeDict_IntegerFormat13;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:34];

  v13 = *MEMORY[0x277D3F540];
  v77[0] = *MEMORY[0x277D3F4E8];
  v77[1] = v13;
  v78[0] = v76;
  v78[1] = v32;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventNoneDefinitionsDASActivity
{
  v57[2] = *MEMORY[0x277D85DE8];
  v56[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v54[0] = *MEMORY[0x277D3F568];
  v54[1] = v2;
  v55[0] = &unk_282C1C1A8;
  v55[1] = MEMORY[0x277CBEC38];
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
  v57[0] = v51;
  v56[1] = *MEMORY[0x277D3F540];
  v52[0] = @"taskName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v53[0] = commonTypeDict_StringFormat;
  v52[1] = @"startTime";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v53[1] = commonTypeDict_DateFormat;
  v52[2] = @"endTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v53[2] = commonTypeDict_DateFormat2;
  v52[3] = @"duration";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v53[3] = commonTypeDict_IntegerFormat;
  v52[4] = @"optimalScore";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v53[4] = commonTypeDict_IntegerFormat2;
  v52[5] = @"scoreWhenRun";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v53[5] = commonTypeDict_IntegerFormat3;
  v52[6] = @"networkTaskSize";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v53[6] = commonTypeDict_IntegerFormat4;
  v52[7] = @"priority";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v53[7] = commonTypeDict_IntegerFormat5;
  v52[8] = @"requiresPlugin";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]9 commonTypeDict_BoolFormat];
  v53[8] = commonTypeDict_BoolFormat;
  v52[9] = @"requiresInexpensiveNetworking";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]10 commonTypeDict_BoolFormat];
  v53[9] = commonTypeDict_BoolFormat2;
  v52[10] = @"application";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]11 commonTypeDict_StringFormat_withBundleID];
  v53[10] = commonTypeDict_StringFormat_withBundleID;
  v52[11] = @"bundleID";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]12 commonTypeDict_StringFormat_withBundleID];
  v53[11] = commonTypeDict_StringFormat_withBundleID2;
  v52[12] = @"involvedProcesses";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID3 = [mEMORY[0x277D3F198]13 commonTypeDict_StringFormat_withBundleID];
  v53[12] = commonTypeDict_StringFormat_withBundleID3;
  v52[13] = @"requiresDeviceInactivity";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]14 commonTypeDict_BoolFormat];
  v53[13] = commonTypeDict_BoolFormat3;
  v52[14] = @"isCpuIntensive";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
  v53[14] = commonTypeDict_BoolFormat4;
  v52[15] = @"isMemoryIntensive";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat5 = [mEMORY[0x277D3F198]16 commonTypeDict_BoolFormat];
  v53[15] = commonTypeDict_BoolFormat5;
  v52[16] = @"scoreNetworkQualityPolicy";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v53[16] = commonTypeDict_IntegerFormat6;
  v52[17] = @"scoreBatteryLevelPolicy";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v53[17] = commonTypeDict_IntegerFormat7;
  v52[18] = @"scoreEnergyBudgetPolicy";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v53[18] = commonTypeDict_IntegerFormat8;
  v52[19] = @"scoreChargerPluggedInPolicy";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v53[19] = commonTypeDict_IntegerFormat9;
  v52[20] = @"scoreDeviceActivityPolicy";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v53[20] = commonTypeDict_IntegerFormat10;
  v52[21] = @"scoreApplicationPolicy";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v53[21] = commonTypeDict_IntegerFormat11;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:22];
  v57[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventNoneDefinitionsDASActivityDropCount
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C188;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"droppedCount";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventNoneDefinitionsDASInfo
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1C188;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"eventsCoalesced";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"queuedTasks";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionsDASPrediction
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3F598];
  v15[0] = *MEMORY[0x277D3F5A8];
  v15[1] = v2;
  v16[0] = &unk_282C11550;
  v16[1] = &unk_282C11568;
  v15[2] = *MEMORY[0x277D3F5A0];
  v16[2] = &unk_282C11580;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C188;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v4;
  v13[1] = *MEMORY[0x277D3F540];
  v9[0] = @"powerPluggedInPrediction";
  v9[1] = @"cellQualityPrediction";
  v10[0] = v3;
  v10[1] = v3;
  v9[2] = @"deviceActivityPrediction";
  v9[3] = @"wiFiAssociatedPrediction";
  v10[2] = v3;
  v10[3] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionsDASTrial
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1C188;
  v21[1] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"trialExperimentId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v19[0] = commonTypeDict_StringFormat;
  v18[1] = @"trialTreatmentId";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v19[1] = commonTypeDict_StringFormat2;
  v18[2] = @"trialDeploymentId";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v19[2] = commonTypeDict_IntegerFormat;
  v18[3] = @"trialStartDate";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v19[3] = commonTypeDict_DateFormat;
  v18[4] = @"trialEndDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v19[4] = commonTypeDict_DateFormat2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionsDASApplicationPrediction
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C188;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"applicationBundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v14[1] = @"applicationPredictionArray";
  v15[0] = commonTypeDict_StringFormat_withBundleID;
  v6 = *MEMORY[0x277D3F598];
  v12[0] = *MEMORY[0x277D3F5A8];
  v12[1] = v6;
  v13[0] = &unk_282C11550;
  v13[1] = &unk_282C11568;
  v12[2] = *MEMORY[0x277D3F5A0];
  v13[2] = &unk_282C11580;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v19[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionsDASEnergyBudgetAvailable
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C188;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"energyAvailable";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionsDASDataBudgetAvailable
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C188;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"dataAvailable";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitionsDASEnergyBudgetReport
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = *MEMORY[0x277D3F4E8];
  v31 = *MEMORY[0x277D3F568];
  v32 = &unk_282C1C188;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v34[0] = v28;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"PowerlogEnergyReportedPrevious";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v30[0] = commonTypeDict_IntegerFormat;
  v29[1] = @"PowerlogEnergyReportedLast";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v30[1] = commonTypeDict_IntegerFormat2;
  v29[2] = @"PowerlogTimestampPrevious";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v30[2] = commonTypeDict_DateFormat;
  v29[3] = @"PowerlogTimestampLast";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v30[3] = commonTypeDict_DateFormat2;
  v29[4] = @"CPUEnergyPrevious";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v30[4] = commonTypeDict_IntegerFormat3;
  v29[5] = @"NetworkEnergyPrevious";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v30[5] = commonTypeDict_IntegerFormat4;
  v29[6] = @"CPUEnergyLast";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v30[6] = commonTypeDict_IntegerFormat5;
  v29[7] = @"NetworkEnergyLast";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v30[7] = commonTypeDict_IntegerFormat6;
  v29[8] = @"CPUEnergyCurrent";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v30[8] = commonTypeDict_IntegerFormat7;
  v29[9] = @"NetworkEnergyCurrent";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v30[9] = commonTypeDict_IntegerFormat8;
  v29[10] = @"DidReport";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]11 commonTypeDict_BoolFormat];
  v30[10] = commonTypeDict_BoolFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v34[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)initOperatorDependanciesDAS:(id)s
{
  sCopy = s;
  if (sCopy)
  {
    if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
    {
      [(PLDuetServiceDAS *)self setDuetService:sCopy];
      v5 = objc_alloc(MEMORY[0x277D3F270]);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke;
      v34[3] = &unk_27825A1D8;
      v34[4] = self;
      v6 = [v5 initWithOperator:sCopy withRegistration:&unk_282C17B80 withBlock:v34];
      [(PLDuetServiceDAS *)self setDasTrialEventListener:v6];

      v7 = objc_alloc(MEMORY[0x277D3F270]);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_2;
      v33[3] = &unk_27825A1D8;
      v33[4] = self;
      v8 = [v7 initWithOperator:sCopy withRegistration:&unk_282C17BA8 withBlock:v33];
      [(PLDuetServiceDAS *)self setDasActivityEventListener:v8];

      v9 = objc_alloc(MEMORY[0x277D3F270]);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_3;
      v32[3] = &unk_27825A1D8;
      v32[4] = self;
      v10 = [v9 initWithOperator:sCopy withRegistration:&unk_282C17BD0 withBlock:v32];
      [(PLDuetServiceDAS *)self setDasActivityLifecycleEventListener:v10];

      v11 = objc_alloc(MEMORY[0x277D3F270]);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_4;
      v31[3] = &unk_27825A1D8;
      v31[4] = self;
      v12 = [v11 initWithOperator:sCopy withRegistration:&unk_282C17BF8 withBlock:v31];
      [(PLDuetServiceDAS *)self setDasInfoEventListener:v12];

      v13 = objc_alloc(MEMORY[0x277D3F270]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_5;
      v30[3] = &unk_27825A1D8;
      v30[4] = self;
      v14 = [v13 initWithOperator:sCopy withRegistration:&unk_282C17C20 withBlock:v30];
      [(PLDuetServiceDAS *)self setDasPoliciesBlockingCriteriaEventListener:v14];

      v15 = objc_alloc(MEMORY[0x277D3F270]);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_6;
      v29[3] = &unk_27825A1D8;
      v29[4] = self;
      v16 = [v15 initWithOperator:sCopy withRegistration:&unk_282C17C48 withBlock:v29];
      [(PLDuetServiceDAS *)self setDasPredictionEventListener:v16];

      v17 = objc_alloc(MEMORY[0x277D3F270]);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_340;
      v28[3] = &unk_27825A1D8;
      v28[4] = self;
      v18 = [v17 initWithOperator:sCopy withRegistration:&unk_282C17C70 withBlock:v28];
      [(PLDuetServiceDAS *)self setDasBudgetEventListener:v18];

      v19 = objc_alloc(MEMORY[0x277D3F270]);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_2_348;
      v27[3] = &unk_27825A1D8;
      v27[4] = self;
      v20 = [v19 initWithOperator:sCopy withRegistration:&unk_282C17C98 withBlock:v27];
      [(PLDuetServiceDAS *)self setDasDataBudgetEventListener:v20];

      v21 = objc_alloc(MEMORY[0x277D3F270]);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_3_356;
      v26[3] = &unk_27825A1D8;
      v26[4] = self;
      v22 = [v21 initWithOperator:sCopy withRegistration:&unk_282C17CC0 withBlock:v26];
      [(PLDuetServiceDAS *)self setDasEnergyReportEventListener:v22];

      if ([MEMORY[0x277D3F180] taskMode])
      {
        v23 = PLLogDuetServiceDAS();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEFAULT, "PerfPowerServices is ready to receive Background Processing Payload", v25, 2u);
        }

        v24 = dispatch_time(0, 60000000000);
        dispatch_after(v24, MEMORY[0x277D85CD0], &__block_literal_global_360);
      }
    }
  }
}

void __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_358()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = notify_post("com.apple.perfpowerservices.reportfeaturestatus");
  v1 = PLLogDuetServiceDAS();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "com.apple.perfpowerservices.reportfeaturestatus";
      v6 = 1024;
      v7 = v0;
      _os_log_error_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_ERROR, "Failed to post %s : %d", &v4, 0x12u);
    }
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "com.apple.perfpowerservices.reportfeaturestatus";
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "Posted %s", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDASActivityEventWithPayload:(id)payload
{
  v77 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLDuetServiceDAS_didReceiveDASActivityEventWithPayload___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F78A0 != -1)
    {
      dispatch_once(&qword_2811F78A0, block);
    }

    if (_MergedGlobals_93 == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASActivityEventWithPayload:]"];
      [v7 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:482];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v76 = payloadCopy;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = payloadCopy;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "didReceiveDASActivityEvent: payload=%@", buf, 0xCu);
  }

  if (payloadCopy)
  {
    v13 = [payloadCopy objectForKeyedSubscript:@"dasTasks"];
    if (v13)
    {
      v14 = v13;
      duetService = [(PLDuetServiceDAS *)self duetService];

      if (duetService)
      {
        selfCopy = self;
        context = objc_autoreleasePoolPush();
        v60 = *MEMORY[0x277D3F5E0];
        v66 = [PLOperator entryKeyForType:"entryKeyForType:andName:" andName:?];
        v65 = objc_opt_new();
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v63 = payloadCopy;
        obj = [payloadCopy objectForKeyedSubscript:@"dasTasks"];
        v16 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = @"timeWhenRun";
          v19 = *v68;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v68 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v67 + 1) + 8 * i);
              v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v66];
              v23 = [v21 objectForKeyedSubscript:@"taskName"];
              [v22 setObject:v23 forKeyedSubscript:@"taskName"];

              v24 = [v21 objectForKeyedSubscript:@"startTime"];
              [v22 setObject:v24 forKeyedSubscript:@"startTime"];

              v25 = [v21 objectForKeyedSubscript:@"endTime"];
              [v22 setObject:v25 forKeyedSubscript:@"endTime"];

              v26 = [v21 objectForKey:v18];

              if (v26)
              {
                v27 = [v21 objectForKeyedSubscript:v18];
                [v27 timeIntervalSince1970];
                v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:floor(v28)];
                [v29 convertFromSystemToMonotonic];
                v31 = v30 = v18;
                [v22 setEntryDate:v31];

                v18 = v30;
              }

              v32 = [v21 objectForKeyedSubscript:@"duration"];
              [v22 setObject:v32 forKeyedSubscript:@"duration"];

              v33 = [v21 objectForKeyedSubscript:@"optimalScore"];
              [v22 setObject:v33 forKeyedSubscript:@"optimalScore"];

              v34 = [v21 objectForKeyedSubscript:@"scoreWhenRun"];
              [v22 setObject:v34 forKeyedSubscript:@"scoreWhenRun"];

              v35 = [v21 objectForKeyedSubscript:@"networkTaskSize"];
              [v22 setObject:v35 forKeyedSubscript:@"networkTaskSize"];

              v36 = [v21 objectForKeyedSubscript:@"priority"];
              [v22 setObject:v36 forKeyedSubscript:@"priority"];

              v37 = [v21 objectForKeyedSubscript:@"requiresPlugin"];
              [v22 setObject:v37 forKeyedSubscript:@"requiresPlugin"];

              v38 = [v21 objectForKeyedSubscript:@"requiresInexpensiveNetworking"];
              [v22 setObject:v38 forKeyedSubscript:@"requiresInexpensiveNetworking"];

              v39 = [v21 objectForKeyedSubscript:@"application"];
              [v22 setObject:v39 forKeyedSubscript:@"application"];

              v40 = [v21 objectForKeyedSubscript:@"bundleID"];
              [v22 setObject:v40 forKeyedSubscript:@"bundleID"];

              v41 = [v21 objectForKeyedSubscript:@"involvedProcesses"];
              [v22 setObject:v41 forKeyedSubscript:@"involvedProcesses"];

              if ([MEMORY[0x277D3F180] fullMode])
              {
                v42 = [v21 objectForKeyedSubscript:@"requiresDeviceInactivity"];
                [v22 setObject:v42 forKeyedSubscript:@"requiresDeviceInactivity"];

                v43 = [v21 objectForKeyedSubscript:@"isCpuIntensive"];
                [v22 setObject:v43 forKeyedSubscript:@"isCpuIntensive"];

                v44 = [v21 objectForKeyedSubscript:@"isMemoryIntensive"];
                [v22 setObject:v44 forKeyedSubscript:@"isMemoryIntensive"];

                v45 = [v21 objectForKeyedSubscript:@"scoreNetworkQualityPolicy"];
                [v22 setObject:v45 forKeyedSubscript:@"scoreNetworkQualityPolicy"];

                v46 = [v21 objectForKeyedSubscript:@"scoreBatteryLevelPolicy"];
                [v22 setObject:v46 forKeyedSubscript:@"scoreBatteryLevelPolicy"];

                v47 = [v21 objectForKeyedSubscript:@"scoreEnergyBudgetPolicy"];
                [v22 setObject:v47 forKeyedSubscript:@"scoreEnergyBudgetPolicy"];

                v48 = [v21 objectForKeyedSubscript:@"scoreChargerPluggedInPolicy"];
                [v22 setObject:v48 forKeyedSubscript:@"scoreChargerPluggedInPolicy"];

                v49 = [v21 objectForKeyedSubscript:@"scoreDeviceActivityPolicy"];
                [v22 setObject:v49 forKeyedSubscript:@"scoreDeviceActivityPolicy"];

                v50 = [v21 objectForKeyedSubscript:@"scoreApplicationPolicy"];
                [v22 setObject:v50 forKeyedSubscript:@"scoreApplicationPolicy"];
              }

              [v65 addObject:v22];
            }

            v17 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
          }

          while (v17);
        }

        duetService2 = [(PLDuetServiceDAS *)selfCopy duetService];

        if (duetService2)
        {
          duetService3 = [(PLDuetServiceDAS *)selfCopy duetService];
          v72 = v66;
          v73 = v65;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          [duetService3 logEntries:v53 withGroupID:v66];
        }

        v54 = [(PLOperator *)PLDuetService entryKeyForType:v60 andName:@"DASDropCount"];
        v55 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v54];
        payloadCopy = v63;
        v56 = [v63 objectForKeyedSubscript:@"droppedCount"];
        [v55 setObject:v56 forKeyedSubscript:@"droppedCount"];

        duetService4 = [(PLDuetServiceDAS *)selfCopy duetService];

        if (duetService4)
        {
          duetService5 = [(PLDuetServiceDAS *)selfCopy duetService];
          [duetService5 logEntry:v55];
        }

        objc_autoreleasePoolPop(context);
      }
    }
  }

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t __58__PLDuetServiceDAS_didReceiveDASActivityEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_93 = result;
  return result;
}

- (void)didReceiveDASActivityLifecycleEventWithPayload:(id)payload
{
  v17 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = payloadCopy;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "didReceiveDASActivityLifecycle payload=%@", &v15, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"DASActivityLifecycle"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:payloadCopy];
  v9 = [payloadCopy objectForKeyedSubscript:@"FileProtection"];
  v10 = [(PLDuetServiceDAS *)self fileProtectionTypeStringToEnum:v9];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [v8 setObject:v11 forKeyedSubscript:@"FileProtection"];

  duetService = [(PLDuetServiceDAS *)self duetService];

  if (duetService)
  {
    duetService2 = [(PLDuetServiceDAS *)self duetService];
    [duetService2 logEntry:v8];
  }

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDASInfoEventWithPayload:(id)payload
{
  v28 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __54__PLDuetServiceDAS_didReceiveDASInfoEventWithPayload___block_invoke;
    v24 = &__block_descriptor_40_e5_v8__0lu32l8;
    v25 = v5;
    if (qword_2811F78A8 != -1)
    {
      dispatch_once(&qword_2811F78A8, &block);
    }

    if (byte_2811F7889 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy, block, v22, v23, v24, v25];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASInfoEventWithPayload:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:549];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (payloadCopy)
  {
    duetService = [(PLDuetServiceDAS *)self duetService];

    if (duetService)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"DASInfo"];
      v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
      v16 = [payloadCopy objectForKeyedSubscript:@"eventsCoalesced"];
      [v15 setObject:v16 forKeyedSubscript:@"eventsCoalesced"];

      v17 = [payloadCopy objectForKeyedSubscript:@"queuedTasks"];
      [v15 setObject:v17 forKeyedSubscript:@"queuedTasks"];

      duetService2 = [(PLDuetServiceDAS *)self duetService];

      if (duetService2)
      {
        duetService3 = [(PLDuetServiceDAS *)self duetService];
        [duetService3 logEntry:v15];
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __54__PLDuetServiceDAS_didReceiveDASInfoEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7889 = result;
  return result;
}

- (void)didReceiveDASBudgetEventWithPayload:(id)payload
{
  v28 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __56__PLDuetServiceDAS_didReceiveDASBudgetEventWithPayload___block_invoke;
    v24 = &__block_descriptor_40_e5_v8__0lu32l8;
    v25 = v5;
    if (qword_2811F78B0 != -1)
    {
      dispatch_once(&qword_2811F78B0, &block);
    }

    if (byte_2811F788A == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy, block, v22, v23, v24, v25];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASBudgetEventWithPayload:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:563];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v27 = payloadCopy;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "energyBudget payload=%@", buf, 0xCu);
  }

  if (payloadCopy)
  {
    duetService = [(PLDuetServiceDAS *)self duetService];

    if (duetService)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DASEnergyBudgetAvailable"];
      v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
      v17 = [payloadCopy objectForKeyedSubscript:@"energyAvailable"];
      [v16 setObject:v17 forKeyedSubscript:@"energyAvailable"];

      duetService2 = [(PLDuetServiceDAS *)self duetService];

      if (duetService2)
      {
        duetService3 = [(PLDuetServiceDAS *)self duetService];
        [duetService3 logEntry:v16];
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLDuetServiceDAS_didReceiveDASBudgetEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F788A = result;
  return result;
}

- (void)didReceiveDASDataBudgetEventWithPayload:(id)payload
{
  v15 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (payloadCopy && ([(PLDuetServiceDAS *)self duetService], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = PLLogDuetServiceDAS();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = payloadCopy;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Received dataBudget payload: %@", &v13, 0xCu);
    }

    v7 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DASDataBudgetAvailable"];
    v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
    v9 = [payloadCopy objectForKeyedSubscript:@"dataAvailable"];
    [v8 setObject:v9 forKeyedSubscript:@"dataAvailable"];

    duetService = [(PLDuetServiceDAS *)self duetService];

    if (duetService)
    {
      duetService2 = [(PLDuetServiceDAS *)self duetService];
      [duetService2 logEntry:v8];
    }
  }

  else
  {
    v7 = PLLogDuetServiceDAS();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = payloadCopy;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Empty Payload for dataBudget %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDASReportEventWithPayload:(id)payload
{
  v27 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __56__PLDuetServiceDAS_didReceiveDASReportEventWithPayload___block_invoke;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v5;
    if (qword_2811F78B8 != -1)
    {
      dispatch_once(&qword_2811F78B8, &block);
    }

    if (byte_2811F788B == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy, block, v21, v22, v23, v24];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASReportEventWithPayload:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:596];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = payloadCopy;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "energyReport payload=%@", buf, 0xCu);
  }

  if (payloadCopy)
  {
    duetService = [(PLDuetServiceDAS *)self duetService];

    if (duetService)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"DASEnergyBudgetReport"];
      v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withRawData:payloadCopy];
      duetService2 = [(PLDuetServiceDAS *)self duetService];

      if (duetService2)
      {
        duetService3 = [(PLDuetServiceDAS *)self duetService];
        [duetService3 logEntry:v16];
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLDuetServiceDAS_didReceiveDASReportEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F788B = result;
  return result;
}

- (void)didReceiveDASPredictionEventWithPayload:(id)payload
{
  v61 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PLDuetServiceDAS_didReceiveDASPredictionEventWithPayload___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F78C0 != -1)
    {
      dispatch_once(&qword_2811F78C0, block);
    }

    if (byte_2811F788C == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASPredictionEventWithPayload:]"];
      [v7 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:609];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = payloadCopy;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (payloadCopy)
  {
    duetService = [(PLDuetServiceDAS *)self duetService];

    if (duetService)
    {
      context = objc_autoreleasePoolPush();
      v42 = *MEMORY[0x277D3F5D0];
      v36 = [PLOperator entryKeyForType:"entryKeyForType:andName:" andName:?];
      v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v36];
      v14 = [payloadCopy objectForKeyedSubscript:@"powerPluggedInPrediction"];
      [v13 setObject:v14 forKeyedSubscript:@"powerPluggedInPrediction"];

      v15 = [payloadCopy objectForKeyedSubscript:@"cellQualityPrediction"];
      [v13 setObject:v15 forKeyedSubscript:@"cellQualityPrediction"];

      v16 = [payloadCopy objectForKeyedSubscript:@"deviceActivityPrediction"];
      [v13 setObject:v16 forKeyedSubscript:@"deviceActivityPrediction"];

      v17 = [payloadCopy objectForKeyedSubscript:@"wiFiAssociatedPrediction"];
      [v13 setObject:v17 forKeyedSubscript:@"wiFiAssociatedPrediction"];

      duetService2 = [(PLDuetServiceDAS *)self duetService];

      if (duetService2)
      {
        duetService3 = [(PLDuetServiceDAS *)self duetService];
        [duetService3 logEntry:v13];
      }

      v35 = v13;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v38 = payloadCopy;
      obj = [payloadCopy objectForKeyedSubscript:@"applicationUsagePrediction"];
      v43 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v43)
      {
        v40 = *v51;
        selfCopy = self;
        do
        {
          v20 = 0;
          do
          {
            if (*v51 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v45 = v20;
            v21 = *(*(&v50 + 1) + 8 * v20);
            v44 = [(PLOperator *)PLDuetService entryKeyForType:v42 andName:@"DASApplicationUsagePrediction"];
            v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v44];
            v23 = objc_opt_new();
            allKeys = [v21 allKeys];
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v25 = [allKeys countByEnumeratingWithState:&v46 objects:v57 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v47;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v47 != v27)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v29 = *(*(&v46 + 1) + 8 * i);
                  [v22 setObject:v29 forKeyedSubscript:@"applicationBundleID"];
                  v30 = [v21 objectForKeyedSubscript:v29];
                  [v22 setObject:v30 forKeyedSubscript:@"applicationPredictionArray"];

                  [v23 addObject:v22];
                }

                v26 = [allKeys countByEnumeratingWithState:&v46 objects:v57 count:16];
              }

              while (v26);
            }

            duetService4 = [(PLDuetServiceDAS *)selfCopy duetService];

            if (duetService4)
            {
              duetService5 = [(PLDuetServiceDAS *)selfCopy duetService];
              v55 = v44;
              v56 = v23;
              v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
              [duetService5 logEntries:v33 withGroupID:v44];
            }

            v20 = v45 + 1;
          }

          while (v45 + 1 != v43);
          v43 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v43);
      }

      objc_autoreleasePoolPop(context);
      payloadCopy = v38;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PLDuetServiceDAS_didReceiveDASPredictionEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F788C = result;
  return result;
}

- (void)didReceiveDASPoliciesBlockingCriteriaEventWithPayload:(id)payload
{
  v27 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = payloadCopy;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "DASPoliciesBlockingCriteria payload=%@", buf, 0xCu);
  }

  v6 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"DASPoliciesBlockingCriteria"];
  context = objc_autoreleasePoolPush();
  [payloadCopy objectForKeyedSubscript:@"Evaluations"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
        v13 = [v11 objectForKeyedSubscript:@"Policy"];
        [v12 setObject:v13 forKeyedSubscript:@"Policy"];

        v14 = [v11 objectForKeyedSubscript:&unk_282C115C8];
        [v12 setObject:v14 forKeyedSubscript:@"Utility"];

        v15 = [v11 objectForKeyedSubscript:&unk_282C115E0];
        [v12 setObject:v15 forKeyedSubscript:@"Maintenance"];

        duetService = [(PLDuetServiceDAS *)self duetService];
        [duetService logEntry:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDASTrialEventWithPayload:(id)payload
{
  v14 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = payloadCopy;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "DASTrial payload=%@", &v12, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DASTrial"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:payloadCopy];
  duetService = [(PLDuetServiceDAS *)self duetService];

  if (duetService)
  {
    duetService2 = [(PLDuetServiceDAS *)self duetService];
    [duetService2 logEntry:v8];
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)fileProtectionTypeStringToEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"ClassA"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"ClassB"])
  {
    v4 = 2;
  }

  else if ([enumCopy isEqualToString:@"ClassC"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end