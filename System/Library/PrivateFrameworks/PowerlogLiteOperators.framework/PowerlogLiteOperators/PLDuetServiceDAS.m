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
- (int64_t)fileProtectionTypeStringToEnum:(id)a3;
- (void)didReceiveDASActivityEventWithPayload:(id)a3;
- (void)didReceiveDASActivityLifecycleEventWithPayload:(id)a3;
- (void)didReceiveDASBudgetEventWithPayload:(id)a3;
- (void)didReceiveDASDataBudgetEventWithPayload:(id)a3;
- (void)didReceiveDASInfoEventWithPayload:(id)a3;
- (void)didReceiveDASPoliciesBlockingCriteriaEventWithPayload:(id)a3;
- (void)didReceiveDASPredictionEventWithPayload:(id)a3;
- (void)didReceiveDASReportEventWithPayload:(id)a3;
- (void)didReceiveDASTrialEventWithPayload:(id)a3;
- (void)initOperatorDependanciesDAS:(id)a3;
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
    v3 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PLDuetServiceDAS;
    v4 = [(PLDuetServiceDAS *)&v6 init];
    [(PLDuetServiceDAS *)v4 setDuetService:0];
    self = v4;
    v3 = self;
  }

  return v3;
}

+ (id)entryEventNoneDefinitionsDASPoliciesBlockingCriteria
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setObject:&unk_282C1C188 forKeyedSubscript:*MEMORY[0x277D3F568]];
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3F4D8]];
  v16[0] = @"Policy";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v17[0] = v4;
  v16[1] = @"Utility";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v17[1] = v6;
  v16[2] = @"Maintenance";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v17[2] = v8;
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
  v75 = [MEMORY[0x277D3F198] sharedInstance];
  v74 = [v75 commonTypeDict_StringFormat];
  v80[0] = v74;
  v79[1] = @"ProcessName";
  v73 = [MEMORY[0x277D3F198] sharedInstance];
  v72 = [v73 commonTypeDict_StringFormat_withProcessName];
  v80[1] = v72;
  v79[2] = @"Priority";
  v71 = [MEMORY[0x277D3F198] sharedInstance];
  v70 = [v71 commonTypeDict_IntegerFormat];
  v80[2] = v70;
  v79[3] = @"PID";
  v69 = [MEMORY[0x277D3F198] sharedInstance];
  v68 = [v69 commonTypeDict_IntegerFormat];
  v80[3] = v68;
  v79[4] = @"StartDate";
  v67 = [MEMORY[0x277D3F198] sharedInstance];
  v66 = [v67 commonTypeDict_DateFormat];
  v80[4] = v66;
  v79[5] = @"EndDate";
  v65 = [MEMORY[0x277D3F198] sharedInstance];
  v64 = [v65 commonTypeDict_DateFormat];
  v80[5] = v64;
  v79[6] = @"Duration";
  v63 = [MEMORY[0x277D3F198] sharedInstance];
  v62 = [v63 commonTypeDict_IntegerFormat];
  v80[6] = v62;
  v79[7] = @"SuspendRequestDate";
  v61 = [MEMORY[0x277D3F198] sharedInstance];
  v60 = [v61 commonTypeDict_DateFormat];
  v80[7] = v60;
  v79[8] = @"SuspensionDelay";
  v59 = [MEMORY[0x277D3F198] sharedInstance];
  v58 = [v59 commonTypeDict_IntegerFormat];
  v80[8] = v58;
  v79[9] = @"ScheduleAfterDate";
  v57 = [MEMORY[0x277D3F198] sharedInstance];
  v56 = [v57 commonTypeDict_DateFormat];
  v80[9] = v56;
  v79[10] = @"ScheduleBeforeDate";
  v55 = [MEMORY[0x277D3F198] sharedInstance];
  v54 = [v55 commonTypeDict_DateFormat];
  v80[10] = v54;
  v79[11] = @"BeyondDeadline";
  v53 = [MEMORY[0x277D3F198] sharedInstance];
  v52 = [v53 commonTypeDict_BoolFormat];
  v80[11] = v52;
  v79[12] = @"Interval";
  v51 = [MEMORY[0x277D3F198] sharedInstance];
  v50 = [v51 commonTypeDict_IntegerFormat];
  v80[12] = v50;
  v79[13] = @"FileProtection";
  v49 = [MEMORY[0x277D3F198] sharedInstance];
  v48 = [v49 commonTypeDict_IntegerFormat];
  v80[13] = v48;
  v79[14] = @"IsCPUIntensive";
  v47 = [MEMORY[0x277D3F198] sharedInstance];
  v46 = [v47 commonTypeDict_BoolFormat];
  v80[14] = v46;
  v79[15] = @"IsMemoryIntensive";
  v45 = [MEMORY[0x277D3F198] sharedInstance];
  v44 = [v45 commonTypeDict_BoolFormat];
  v80[15] = v44;
  v79[16] = @"RequiresPlugin";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_BoolFormat];
  v80[16] = v42;
  v79[17] = @"RequiresNetwork";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_BoolFormat];
  v80[17] = v40;
  v79[18] = @"RequiresInexpensiveNetworking";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_BoolFormat];
  v80[18] = v38;
  v79[19] = @"RequiresUnconstrainedNetworking";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_BoolFormat];
  v80[19] = v36;
  v79[20] = @"RequiresDeviceInactivity";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_BoolFormat];
  v80[20] = v34;
  v79[21] = @"RequiresSignificantUserInactivity";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v33 commonTypeDict_BoolFormat];
  v80[21] = v31;
  v79[22] = @"TriggersRestart";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_BoolFormat];
  v80[22] = v29;
  v79[23] = @"Energy";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v80[23] = v27;
  v79[24] = @"NetworkTaskSize";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v80[24] = v25;
  v79[25] = @"OptimalScore";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v80[25] = v23;
  v79[26] = @"ScoreWhenRun";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v80[26] = v21;
  v79[27] = @"OptimalScorePercentage";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v80[27] = v19;
  v79[28] = @"BundleID";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat_withBundleID];
  v80[28] = v17;
  v79[29] = @"Application";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat_withAppName];
  v80[29] = v4;
  v79[30] = @"InvolvedProcesses";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withProcessName];
  v80[30] = v6;
  v79[31] = @"GroupName";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v80[31] = v8;
  v79[32] = @"SuspensionReason";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v80[32] = v10;
  v79[33] = @"Limitations";
  v11 = [MEMORY[0x277D3F198] sharedInstance];
  v12 = [v11 commonTypeDict_IntegerFormat];
  v80[33] = v12;
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
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_StringFormat];
  v53[0] = v49;
  v52[1] = @"startTime";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_DateFormat];
  v53[1] = v47;
  v52[2] = @"endTime";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_DateFormat];
  v53[2] = v45;
  v52[3] = @"duration";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_IntegerFormat];
  v53[3] = v43;
  v52[4] = @"optimalScore";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v53[4] = v41;
  v52[5] = @"scoreWhenRun";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_IntegerFormat];
  v53[5] = v39;
  v52[6] = @"networkTaskSize";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_IntegerFormat];
  v53[6] = v37;
  v52[7] = @"priority";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_IntegerFormat];
  v53[7] = v35;
  v52[8] = @"requiresPlugin";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_BoolFormat];
  v53[8] = v33;
  v52[9] = @"requiresInexpensiveNetworking";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_BoolFormat];
  v53[9] = v31;
  v52[10] = @"application";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_StringFormat_withBundleID];
  v53[10] = v29;
  v52[11] = @"bundleID";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_StringFormat_withBundleID];
  v53[11] = v27;
  v52[12] = @"involvedProcesses";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat_withBundleID];
  v53[12] = v25;
  v52[13] = @"requiresDeviceInactivity";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_BoolFormat];
  v53[13] = v23;
  v52[14] = @"isCpuIntensive";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_BoolFormat];
  v53[14] = v21;
  v52[15] = @"isMemoryIntensive";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_BoolFormat];
  v53[15] = v19;
  v52[16] = @"scoreNetworkQualityPolicy";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v53[16] = v17;
  v52[17] = @"scoreBatteryLevelPolicy";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v53[17] = v15;
  v52[18] = @"scoreEnergyBudgetPolicy";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v53[18] = v4;
  v52[19] = @"scoreChargerPluggedInPolicy";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v53[19] = v6;
  v52[20] = @"scoreDeviceActivityPolicy";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v53[20] = v8;
  v52[21] = @"scoreApplicationPolicy";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v53[21] = v10;
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v10 = v4;
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"queuedTasks";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
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
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v19[0] = v15;
  v18[1] = @"trialTreatmentId";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v19[1] = v4;
  v18[2] = @"trialDeploymentId";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v19[2] = v6;
  v18[3] = @"trialStartDate";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_DateFormat];
  v19[3] = v8;
  v18[4] = @"trialEndDate";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat];
  v19[4] = v10;
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
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v14[1] = @"applicationPredictionArray";
  v15[0] = v5;
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
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
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat];
  v30[0] = v26;
  v29[1] = @"PowerlogEnergyReportedLast";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v30[1] = v24;
  v29[2] = @"PowerlogTimestampPrevious";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_DateFormat];
  v30[2] = v22;
  v29[3] = @"PowerlogTimestampLast";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_DateFormat];
  v30[3] = v20;
  v29[4] = @"CPUEnergyPrevious";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v30[4] = v18;
  v29[5] = @"NetworkEnergyPrevious";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v30[5] = v16;
  v29[6] = @"CPUEnergyLast";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v30[6] = v14;
  v29[7] = @"NetworkEnergyLast";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v30[7] = v3;
  v29[8] = @"CPUEnergyCurrent";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v30[8] = v5;
  v29[9] = @"NetworkEnergyCurrent";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v30[9] = v7;
  v29[10] = @"DidReport";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_BoolFormat];
  v30[10] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v34[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)initOperatorDependanciesDAS:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
    {
      [(PLDuetServiceDAS *)self setDuetService:v4];
      v5 = objc_alloc(MEMORY[0x277D3F270]);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke;
      v34[3] = &unk_27825A1D8;
      v34[4] = self;
      v6 = [v5 initWithOperator:v4 withRegistration:&unk_282C17B80 withBlock:v34];
      [(PLDuetServiceDAS *)self setDasTrialEventListener:v6];

      v7 = objc_alloc(MEMORY[0x277D3F270]);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_2;
      v33[3] = &unk_27825A1D8;
      v33[4] = self;
      v8 = [v7 initWithOperator:v4 withRegistration:&unk_282C17BA8 withBlock:v33];
      [(PLDuetServiceDAS *)self setDasActivityEventListener:v8];

      v9 = objc_alloc(MEMORY[0x277D3F270]);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_3;
      v32[3] = &unk_27825A1D8;
      v32[4] = self;
      v10 = [v9 initWithOperator:v4 withRegistration:&unk_282C17BD0 withBlock:v32];
      [(PLDuetServiceDAS *)self setDasActivityLifecycleEventListener:v10];

      v11 = objc_alloc(MEMORY[0x277D3F270]);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_4;
      v31[3] = &unk_27825A1D8;
      v31[4] = self;
      v12 = [v11 initWithOperator:v4 withRegistration:&unk_282C17BF8 withBlock:v31];
      [(PLDuetServiceDAS *)self setDasInfoEventListener:v12];

      v13 = objc_alloc(MEMORY[0x277D3F270]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_5;
      v30[3] = &unk_27825A1D8;
      v30[4] = self;
      v14 = [v13 initWithOperator:v4 withRegistration:&unk_282C17C20 withBlock:v30];
      [(PLDuetServiceDAS *)self setDasPoliciesBlockingCriteriaEventListener:v14];

      v15 = objc_alloc(MEMORY[0x277D3F270]);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_6;
      v29[3] = &unk_27825A1D8;
      v29[4] = self;
      v16 = [v15 initWithOperator:v4 withRegistration:&unk_282C17C48 withBlock:v29];
      [(PLDuetServiceDAS *)self setDasPredictionEventListener:v16];

      v17 = objc_alloc(MEMORY[0x277D3F270]);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_340;
      v28[3] = &unk_27825A1D8;
      v28[4] = self;
      v18 = [v17 initWithOperator:v4 withRegistration:&unk_282C17C70 withBlock:v28];
      [(PLDuetServiceDAS *)self setDasBudgetEventListener:v18];

      v19 = objc_alloc(MEMORY[0x277D3F270]);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_2_348;
      v27[3] = &unk_27825A1D8;
      v27[4] = self;
      v20 = [v19 initWithOperator:v4 withRegistration:&unk_282C17C98 withBlock:v27];
      [(PLDuetServiceDAS *)self setDasDataBudgetEventListener:v20];

      v21 = objc_alloc(MEMORY[0x277D3F270]);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __48__PLDuetServiceDAS_initOperatorDependanciesDAS___block_invoke_3_356;
      v26[3] = &unk_27825A1D8;
      v26[4] = self;
      v22 = [v21 initWithOperator:v4 withRegistration:&unk_282C17CC0 withBlock:v26];
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

- (void)didReceiveDASActivityEventWithPayload:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASActivityEventWithPayload:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:482];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v76 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v76 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "didReceiveDASActivityEvent: payload=%@", buf, 0xCu);
  }

  if (v4)
  {
    v13 = [v4 objectForKeyedSubscript:@"dasTasks"];
    if (v13)
    {
      v14 = v13;
      v15 = [(PLDuetServiceDAS *)self duetService];

      if (v15)
      {
        v62 = self;
        context = objc_autoreleasePoolPush();
        v60 = *MEMORY[0x277D3F5E0];
        v66 = [PLOperator entryKeyForType:"entryKeyForType:andName:" andName:?];
        v65 = objc_opt_new();
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v63 = v4;
        obj = [v4 objectForKeyedSubscript:@"dasTasks"];
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

        v51 = [(PLDuetServiceDAS *)v62 duetService];

        if (v51)
        {
          v52 = [(PLDuetServiceDAS *)v62 duetService];
          v72 = v66;
          v73 = v65;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          [v52 logEntries:v53 withGroupID:v66];
        }

        v54 = [(PLOperator *)PLDuetService entryKeyForType:v60 andName:@"DASDropCount"];
        v55 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v54];
        v4 = v63;
        v56 = [v63 objectForKeyedSubscript:@"droppedCount"];
        [v55 setObject:v56 forKeyedSubscript:@"droppedCount"];

        v57 = [(PLDuetServiceDAS *)v62 duetService];

        if (v57)
        {
          v58 = [(PLDuetServiceDAS *)v62 duetService];
          [v58 logEntry:v55];
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

- (void)didReceiveDASActivityLifecycleEventWithPayload:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "didReceiveDASActivityLifecycle payload=%@", &v15, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"DASActivityLifecycle"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v4];
  v9 = [v4 objectForKeyedSubscript:@"FileProtection"];
  v10 = [(PLDuetServiceDAS *)self fileProtectionTypeStringToEnum:v9];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [v8 setObject:v11 forKeyedSubscript:@"FileProtection"];

  v12 = [(PLDuetServiceDAS *)self duetService];

  if (v12)
  {
    v13 = [(PLDuetServiceDAS *)self duetService];
    [v13 logEntry:v8];
  }

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDASInfoEventWithPayload:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", v4, block, v22, v23, v24, v25];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASInfoEventWithPayload:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:549];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    v12 = [(PLDuetServiceDAS *)self duetService];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"DASInfo"];
      v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
      v16 = [v4 objectForKeyedSubscript:@"eventsCoalesced"];
      [v15 setObject:v16 forKeyedSubscript:@"eventsCoalesced"];

      v17 = [v4 objectForKeyedSubscript:@"queuedTasks"];
      [v15 setObject:v17 forKeyedSubscript:@"queuedTasks"];

      v18 = [(PLDuetServiceDAS *)self duetService];

      if (v18)
      {
        v19 = [(PLDuetServiceDAS *)self duetService];
        [v19 logEntry:v15];
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

- (void)didReceiveDASBudgetEventWithPayload:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", v4, block, v22, v23, v24, v25];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASBudgetEventWithPayload:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:563];

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
    v27 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "energyBudget payload=%@", buf, 0xCu);
  }

  if (v4)
  {
    v13 = [(PLDuetServiceDAS *)self duetService];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DASEnergyBudgetAvailable"];
      v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
      v17 = [v4 objectForKeyedSubscript:@"energyAvailable"];
      [v16 setObject:v17 forKeyedSubscript:@"energyAvailable"];

      v18 = [(PLDuetServiceDAS *)self duetService];

      if (v18)
      {
        v19 = [(PLDuetServiceDAS *)self duetService];
        [v19 logEntry:v16];
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

- (void)didReceiveDASDataBudgetEventWithPayload:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && ([(PLDuetServiceDAS *)self duetService], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = PLLogDuetServiceDAS();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Received dataBudget payload: %@", &v13, 0xCu);
    }

    v7 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DASDataBudgetAvailable"];
    v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
    v9 = [v4 objectForKeyedSubscript:@"dataAvailable"];
    [v8 setObject:v9 forKeyedSubscript:@"dataAvailable"];

    v10 = [(PLDuetServiceDAS *)self duetService];

    if (v10)
    {
      v11 = [(PLDuetServiceDAS *)self duetService];
      [v11 logEntry:v8];
    }
  }

  else
  {
    v7 = PLLogDuetServiceDAS();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Empty Payload for dataBudget %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDASReportEventWithPayload:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", v4, block, v21, v22, v23, v24];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASReportEventWithPayload:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:596];

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
    v26 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "energyReport payload=%@", buf, 0xCu);
  }

  if (v4)
  {
    v13 = [(PLDuetServiceDAS *)self duetService];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"DASEnergyBudgetReport"];
      v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withRawData:v4];
      v17 = [(PLDuetServiceDAS *)self duetService];

      if (v17)
      {
        v18 = [(PLDuetServiceDAS *)self duetService];
        [v18 logEntry:v16];
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

- (void)didReceiveDASPredictionEventWithPayload:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetServiceDAS.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceDAS didReceiveDASPredictionEventWithPayload:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:609];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    v12 = [(PLDuetServiceDAS *)self duetService];

    if (v12)
    {
      context = objc_autoreleasePoolPush();
      v42 = *MEMORY[0x277D3F5D0];
      v36 = [PLOperator entryKeyForType:"entryKeyForType:andName:" andName:?];
      v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v36];
      v14 = [v4 objectForKeyedSubscript:@"powerPluggedInPrediction"];
      [v13 setObject:v14 forKeyedSubscript:@"powerPluggedInPrediction"];

      v15 = [v4 objectForKeyedSubscript:@"cellQualityPrediction"];
      [v13 setObject:v15 forKeyedSubscript:@"cellQualityPrediction"];

      v16 = [v4 objectForKeyedSubscript:@"deviceActivityPrediction"];
      [v13 setObject:v16 forKeyedSubscript:@"deviceActivityPrediction"];

      v17 = [v4 objectForKeyedSubscript:@"wiFiAssociatedPrediction"];
      [v13 setObject:v17 forKeyedSubscript:@"wiFiAssociatedPrediction"];

      v18 = [(PLDuetServiceDAS *)self duetService];

      if (v18)
      {
        v19 = [(PLDuetServiceDAS *)self duetService];
        [v19 logEntry:v13];
      }

      v35 = v13;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v38 = v4;
      obj = [v4 objectForKeyedSubscript:@"applicationUsagePrediction"];
      v43 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v43)
      {
        v40 = *v51;
        v41 = self;
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
            v24 = [v21 allKeys];
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v25 = [v24 countByEnumeratingWithState:&v46 objects:v57 count:16];
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
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v46 + 1) + 8 * i);
                  [v22 setObject:v29 forKeyedSubscript:@"applicationBundleID"];
                  v30 = [v21 objectForKeyedSubscript:v29];
                  [v22 setObject:v30 forKeyedSubscript:@"applicationPredictionArray"];

                  [v23 addObject:v22];
                }

                v26 = [v24 countByEnumeratingWithState:&v46 objects:v57 count:16];
              }

              while (v26);
            }

            v31 = [(PLDuetServiceDAS *)v41 duetService];

            if (v31)
            {
              v32 = [(PLDuetServiceDAS *)v41 duetService];
              v55 = v44;
              v56 = v23;
              v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
              [v32 logEntries:v33 withGroupID:v44];
            }

            v20 = v45 + 1;
          }

          while (v45 + 1 != v43);
          v43 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v43);
      }

      objc_autoreleasePoolPop(context);
      v4 = v38;
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

- (void)didReceiveDASPoliciesBlockingCriteriaEventWithPayload:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "DASPoliciesBlockingCriteria payload=%@", buf, 0xCu);
  }

  v6 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"DASPoliciesBlockingCriteria"];
  context = objc_autoreleasePoolPush();
  [v4 objectForKeyedSubscript:@"Evaluations"];
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

        v16 = [(PLDuetServiceDAS *)self duetService];
        [v16 logEntry:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDASTrialEventWithPayload:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "DASTrial payload=%@", &v12, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DASTrial"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v4];
  v9 = [(PLDuetServiceDAS *)self duetService];

  if (v9)
  {
    v10 = [(PLDuetServiceDAS *)self duetService];
    [v10 logEntry:v8];
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)fileProtectionTypeStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ClassA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ClassB"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ClassC"])
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