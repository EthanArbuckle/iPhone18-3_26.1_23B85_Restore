@interface PLAppTimeService
+ (id)entryAggregateDefinitionAppRunTime;
+ (id)entryAggregateDefinitionAppUsageEvents;
+ (id)entryAggregateDefinitionCellularCondition;
+ (id)entryAggregateDefinitionMetrics;
+ (id)entryAggregateDefinitionUsageTime;
+ (id)entryAggregateDefinitions;
+ (void)load;
- (PLAppTimeService)init;
- (double)convertCPUTimeToBackgroundTime:(double)a3 withDuration:(double)a4;
- (double)getCPUTime:(id)a3;
- (id)backgroundAppToBundleIDmapping;
- (id)buildCallBack:(id)a3 withGroup:(BOOL)a4 withHandler:(id)a5;
- (id)generateExcludedBGBundleIDs;
- (id)getWidgetParentAppForBundleID:(id)a3;
- (id)remapCloudDocsBundleID:(id)a3;
- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4;
- (void)addAudioAndLocationTimeAtDate:(id)a3;
- (void)addAudioTimeAtDate:(id)a3;
- (void)addAudioTimeAtDate:(id)a3 forBundleID:(id)a4;
- (void)addAudioUseFromforBundleID:(id)a3 AtDate:(id)a4;
- (void)addCarPlayUseFromLayoutEntry:(id)a3 AtDate:(id)a4;
- (void)addCellularConditionTimeAtDate:(id)a3;
- (void)addForegroundTimeAtDate:(id)a3 withNewLayoutElementsArray:(id)a4;
- (void)addNotificationCountFromUserInfo:(id)a3 AtDate:(id)a4;
- (void)addNowPlayingTimeAtDate:(id)a3;
- (void)addStatusBarTimeAtDate:(id)a3;
- (void)addWidgetUseFromUserInfo:(id)a3 AtDate:(id)a4;
- (void)chunkAppsOnScreenAtDate:(id)a3;
- (void)chunkScreenOnAggregationAtDate:(id)a3;
- (void)debugAppTimeService;
- (void)handleApplicationCallback:(id)a3;
- (void)handleAudioCallback:(id)a3;
- (void)handleBackgroundTransferCallback:(id)a3;
- (void)handleBatteryCallback:(id)a3;
- (void)handleCellularConditionCallback:(id)a3;
- (void)handleCoalitionCallback:(id)a3;
- (void)handleCoalitionCallback:(id)a3 withNewCoalitionArray:(id)a4;
- (void)handleDisplayCallback:(id)a3;
- (void)handleInCallServiceCallback:(id)a3;
- (void)handleNotificationCallback:(id)a3;
- (void)handleNowPlayingCallback:(id)a3;
- (void)handlePluginCallback:(id)a3;
- (void)handlePowerOutCallback:(id)a3;
- (void)handleScreenStateCallback:(id)a3;
- (void)handleSleepCallBack:(id)a3;
- (void)handleStatusBarCallback:(id)a3;
- (void)handleTelephonyRegistrationCallback:(id)a3;
- (void)handleWakeCallBack:(id)a3;
- (void)handleWidgetCallback:(id)a3;
- (void)initOperatorDependancies;
- (void)loadWatchKitExtensionsSet;
- (void)logAppUsageEventForKey:(id)a3 withBundleID:(id)a4 withDate:(id)a5;
- (void)periodicUpdateAppRunTimeWithDate:(id)a3;
- (void)resetLayoutElementsPLEntryArray:(id)a3 withNowDate:(id)a4;
- (void)updateAggregationsAtDate:(id)a3 withNewAPState:(BOOL)a4;
- (void)updateAggregationsAtDate:(id)a3 withNewPluggedInState:(BOOL)a4;
- (void)updateAggregationsAtDate:(id)a3 withNewScreenState:(int)a4;
- (void)updateAggregationsAtSBCWithDate:(id)a3 withLongestCoalitionBGTime:(double)a4 withCoalitionLength:(double)a5;
- (void)updateAppRunTimeForBundleId:(id)a3 withAppStateUpdateType:(int)a4 withNowDate:(id)a5;
- (void)updateBackgroundAppsForBundleID:(id)a3 withState:(unsigned int)a4 withDate:(id)a5;
- (void)updateBackgroundTimeForAppStateEntry:(id)a3;
- (void)updateBackgroundTimeInDBForBundleId:(id)a3 withTime:(double)a4 withDate:(id)a5;
- (void)updateCoalitionsAppsOnScreenSet:(id)a3;
- (void)updateInCallServiceTimeAtDate:(id)a3;
- (void)updateInCallServiceTimeInDBForBundleId:(id)a3 withTime:(double)a4 withDate:(id)a5;
- (void)updatePiPModeAppsSet:(id)a3 withAppRole:(id)a4;
- (void)updatePluggedInTimeAtDate:(id)a3 withDiff:(double)a4;
- (void)updatePowerOutTimeInDBForBundleId:(id)a3;
- (void)updateScreenOffTimeAtDate:(id)a3 withDiff:(double)a4;
- (void)updateScreenOnTimeAtDate:(id)a3 withDiff:(double)a4;
- (void)updateScreenOnTimeInDBForBundleId:(id)a3 withTime:(double)a4 withDate:(id)a5;
@end

@implementation PLAppTimeService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAppTimeService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryAggregateDefinitions
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"AppRunTime";
  v3 = [a1 entryAggregateDefinitionAppRunTime];
  v12[0] = v3;
  v11[1] = @"UsageTime";
  v4 = [a1 entryAggregateDefinitionUsageTime];
  v12[1] = v4;
  v11[2] = @"Metrics";
  v5 = [a1 entryAggregateDefinitionMetrics];
  v12[2] = v5;
  v11[3] = @"CellularCondition";
  v6 = [a1 entryAggregateDefinitionCellularCondition];
  v12[3] = v6;
  v11[4] = @"AppUsageEvents";
  v7 = [a1 entryAggregateDefinitionAppUsageEvents];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryAggregateDefinitionAppRunTime
{
  v59[4] = *MEMORY[0x277D85DE8];
  v58[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F490];
  v56[0] = *MEMORY[0x277D3F568];
  v56[1] = v2;
  v57[0] = &unk_28714BB58;
  v57[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F590];
  v56[2] = *MEMORY[0x277D3F4A0];
  v56[3] = v3;
  v57[2] = MEMORY[0x277CBEC38];
  v57[3] = &unk_287147B60;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:4];
  v59[0] = v42;
  v58[1] = *MEMORY[0x277D3F540];
  v54[0] = @"BundleID";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_StringFormat_withBundleID];
  v55[0] = v40;
  v54[1] = @"ScreenOnTime";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_RealFormat];
  v55[1] = v38;
  v54[2] = @"BackgroundTime";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_RealFormat];
  v55[2] = v36;
  v54[3] = @"ScreenOnPluggedInTime";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_RealFormat];
  v55[3] = v34;
  v54[4] = @"BackgroundPluggedInTime";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_RealFormat];
  v55[4] = v32;
  v54[5] = @"BackgroundAudioNowPlayingTime";
  v52 = *MEMORY[0x277D3F5A8];
  v4 = v52;
  v53 = &unk_287147B78;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v55[5] = v31;
  v54[6] = @"BackgroundLocationTime";
  v50 = v4;
  v51 = &unk_287147B78;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v55[6] = v30;
  v54[7] = @"BackgroundAudioNowPlayingPluggedInTime";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_RealFormat];
  v55[7] = v28;
  v54[8] = @"BackgroundLocationPluggedInTime";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_RealFormat];
  v55[8] = v26;
  v54[9] = @"BackgroundLocationAudioTime";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_RealFormat];
  v55[9] = v24;
  v54[10] = @"BackgroundLocationAudioPluggedInTime";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_RealFormat];
  v55[10] = v22;
  v54[11] = @"BackgroundAudioPlayingTime";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_RealFormat];
  v55[11] = v20;
  v54[12] = @"BackgroundAudioPlayingTimePluggedIn";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_RealFormat];
  v55[12] = v18;
  v54[13] = @"InCallScreenOnTime";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v55[13] = v6;
  v54[14] = @"InCallBackgroundTime";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v55[14] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:15];
  v59[1] = v9;
  v58[2] = *MEMORY[0x277D3F478];
  v48[0] = &unk_28714BB68;
  v46 = *MEMORY[0x277D3F470];
  v10 = v46;
  v47 = &unk_28714BB78;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v48[1] = &unk_28714BB88;
  v49[0] = v11;
  v44 = v10;
  v45 = &unk_28714BB98;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v49[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v59[2] = v13;
  v58[3] = *MEMORY[0x277D3F488];
  v43[0] = @"ScreenOnTime";
  v43[1] = @"BackgroundTime";
  v43[2] = @"BackgroundAudioNowPlayingTime";
  v43[3] = @"BackgroundLocationTime";
  v43[4] = @"ScreenOnPluggedInTime";
  v43[5] = @"BackgroundPluggedInTime";
  v43[6] = @"BackgroundAudioNowPlayingPluggedInTime";
  v43[7] = @"BackgroundLocationPluggedInTime";
  v43[8] = @"BackgroundLocationAudioTime";
  v43[9] = @"BackgroundLocationAudioPluggedInTime";
  v43[10] = @"BackgroundAudioPlayingTime";
  v43[11] = @"BackgroundAudioPlayingTimePluggedIn";
  v43[12] = @"InCallScreenOnTime";
  v43[13] = @"InCallBackgroundTime";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:14];
  v59[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)entryAggregateDefinitionMetrics
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v23[0] = *MEMORY[0x277D3F568];
  v23[1] = v2;
  v3 = *MEMORY[0x277D3F590];
  v23[2] = *MEMORY[0x277D3F490];
  v23[3] = v3;
  v24[0] = &unk_28714BBA8;
  v24[1] = MEMORY[0x277CBEC38];
  v24[2] = MEMORY[0x277CBEC38];
  v24[3] = &unk_287147B90;
  v23[4] = *MEMORY[0x277D3F588];
  v24[4] = &unk_28714BBB8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];
  v26[0] = v16;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"BundleId";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v22[0] = v5;
  v21[1] = @"byteswritten";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v22[1] = v7;
  v21[2] = @"bytesread";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v22[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v26[1] = v10;
  v25[2] = *MEMORY[0x277D3F478];
  v19 = &unk_28714BB68;
  v17 = *MEMORY[0x277D3F470];
  v18 = &unk_28714BB78;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v25[3] = *MEMORY[0x277D3F488];
  v26[2] = v12;
  v26[3] = &unk_28714E768;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryAggregateDefinitionCellularCondition
{
  v28[4] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F490];
  v25[0] = *MEMORY[0x277D3F568];
  v25[1] = v2;
  v3 = *MEMORY[0x277D3F590];
  v25[2] = *MEMORY[0x277D3F4A0];
  v25[3] = v3;
  v26[0] = &unk_28714BBC8;
  v26[1] = MEMORY[0x277CBEC38];
  v26[2] = MEMORY[0x277CBEC38];
  v26[3] = &unk_287147B90;
  v25[4] = *MEMORY[0x277D3F588];
  v26[4] = &unk_28714BBB8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];
  v28[0] = v17;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"BundleID";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v16 commonTypeDict_StringFormat_withBundleID];
  v24[0] = v4;
  v23[1] = @"SignalBars";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v24[1] = v6;
  v23[2] = @"CellUsageTime";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v24[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v28[1] = v9;
  v27[2] = *MEMORY[0x277D3F478];
  v21 = &unk_28714BB68;
  v19 = *MEMORY[0x277D3F470];
  v20 = &unk_28714BB78;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v28[2] = v11;
  v27[3] = *MEMORY[0x277D3F488];
  v18 = @"CellUsageTime";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v28[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryAggregateDefinitionUsageTime
{
  v27[4] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v26[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F490];
    v24[0] = *MEMORY[0x277D3F568];
    v24[1] = v3;
    v25[0] = &unk_28714BBD8;
    v25[1] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v27[0] = v16;
    v26[1] = *MEMORY[0x277D3F540];
    v22[0] = @"ScreenOn";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v15 commonTypeDict_IntegerFormat_withUnit_s];
    v23[0] = v4;
    v22[1] = @"ScreenOff";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat_withUnit_s];
    v23[1] = v6;
    v22[2] = @"PluggedIn";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat_withUnit_s];
    v23[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v27[1] = v9;
    v26[2] = *MEMORY[0x277D3F478];
    v20 = &unk_28714BB68;
    v18 = *MEMORY[0x277D3F470];
    v19 = &unk_28714BBE8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v27[2] = v11;
    v26[3] = *MEMORY[0x277D3F488];
    v17[0] = @"ScreenOn";
    v17[1] = @"ScreenOff";
    v17[2] = @"PluggedIn";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v27[3] = v12;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entryAggregateDefinitionAppUsageEvents
{
  v40[4] = *MEMORY[0x277D85DE8];
  v39[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v37[0] = *MEMORY[0x277D3F568];
  v37[1] = v2;
  v3 = MEMORY[0x277CBEC38];
  v38[0] = &unk_28714BBA8;
  v38[1] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277D3F588];
  v37[2] = *MEMORY[0x277D3F590];
  v37[3] = v4;
  v38[2] = &unk_287147B90;
  v38[3] = &unk_28714BBF8;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v40[0] = v22;
  v39[1] = *MEMORY[0x277D3F540];
  v35[0] = @"BundleID";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_StringFormat_withBundleID];
  v36[0] = v20;
  v35[1] = @"NotificationCount";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v19 commonTypeDict_IntegerFormat];
  v36[1] = v5;
  v35[2] = @"HasWidgetActive";
  v7 = *MEMORY[0x277D3F530];
  v32[0] = *MEMORY[0x277D3F5A8];
  v6 = v32[0];
  v32[1] = v7;
  v34[0] = &unk_287147BA8;
  v34[1] = v3;
  v33 = *MEMORY[0x277D3F480];
  v8 = v33;
  v34[2] = &unk_287147BA8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v32 count:3];
  v36[2] = v9;
  v35[3] = @"HasCarPlayUsage";
  v30[0] = v6;
  v30[1] = v7;
  v31[0] = &unk_287147BA8;
  v31[1] = v3;
  v30[2] = v8;
  v31[2] = &unk_287147BA8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v36[3] = v10;
  v35[4] = @"HasAudioUsage";
  v28[0] = v6;
  v28[1] = v7;
  v29[0] = &unk_287147BA8;
  v29[1] = v3;
  v28[2] = v8;
  v29[2] = &unk_287147BA8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v36[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
  v40[1] = v12;
  v39[2] = *MEMORY[0x277D3F478];
  v26 = &unk_28714BB88;
  v24 = *MEMORY[0x277D3F470];
  v25 = &unk_28714BBF8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v40[2] = v14;
  v39[3] = *MEMORY[0x277D3F488];
  v23[0] = @"NotificationCount";
  v23[1] = @"HasWidgetActive";
  v23[2] = @"HasCarPlayUsage";
  v23[3] = @"HasAudioUsage";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v40[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)loadWatchKitExtensionsSet
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  watchkitExtensions = self->_watchkitExtensions;
  self->_watchkitExtensions = v3;

  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
  v6 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginType" withValue:@"com.apple.watchkit" withComparisonOperation:0];
  v22[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

  v8 = [(PLOperator *)self storage];
  v9 = [v8 entriesForKey:v5 withComparisons:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) objectForKeyedSubscript:{@"PluginId", v17}];
        if (v15)
        {
          [(NSMutableSet *)self->_watchkitExtensions addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (PLAppTimeService)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || +[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLAppTimeService;
    self = [(PLOperator *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_226(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_debug_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEBUG, "Calling power out with %@ %@ %@", &v12, 0x20u);
  }

  [*(a1 + 32) handlePowerOutCallback:v7];
  v11 = *MEMORY[0x277D85DE8];
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_6_246(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__PLAppTimeService_initOperatorDependancies__block_invoke_7;
    v16 = &unk_279A5E8C8;
    v17 = @"AppTimeService";
    v18 = v5;
    if (kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_defaultOnce, &v13);
    }

    v6 = kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_classDebugEnabled;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device Going to Sleep", v13, v14, v15, v16];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService initOperatorDependancies]_block_invoke_6"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:663];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) handleSleepCallBack:{v3, v13, v14, v15, v16}];
}

uint64_t __44__PLAppTimeService_initOperatorDependancies__block_invoke_7(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_classDebugEnabled = result;
  return result;
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_258(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_259;
    v16 = &unk_279A5E8C8;
    v17 = @"AppTimeService";
    v18 = v5;
    if (kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_2_defaultOnce, &v13);
    }

    v6 = kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_2_classDebugEnabled;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device Woke Up", v13, v14, v15, v16];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService initOperatorDependancies]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:667];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) handleWakeCallBack:{v3, v13, v14, v15, v16}];
}

uint64_t __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_259(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLAppTimeServiceAggregateNameHasAudioUsage_block_invoke_2_classDebugEnabled = result;
  return result;
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_264(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) periodicUpdateAppRunTimeWithDate:v2];
  [*(a1 + 32) chunkScreenOnAggregationAtDate:v2];
  [*(a1 + 32) updateAggregationsAtDate:v2 withNewPluggedInState:{objc_msgSend(*(a1 + 32), "deviceIsPluggedIn")}];
}

- (id)buildCallBack:(id)a3 withGroup:(BOOL)a4 withHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupID_%@", v8];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277D3F1A8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__PLAppTimeService_buildCallBack_withGroup_withHandler___block_invoke;
  v16[3] = &unk_279A5FE78;
  v17 = v9;
  v13 = v9;
  v14 = [v12 initWithOperator:self forEntryKey:v11 withBlock:v16];

  return v14;
}

uint64_t __56__PLAppTimeService_buildCallBack_withGroup_withHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)debugAppTimeService
{
  v3 = objc_alloc(MEMORY[0x277CBEBB8]);
  v4 = [MEMORY[0x277CBEAA8] date];
  v6 = [v3 initWithFireDate:v4 interval:self target:sel_testService selector:0 userInfo:1 repeats:20.0];

  v5 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v5 addTimer:v6 forMode:*MEMORY[0x277CBE640]];
}

- (void)handleWakeCallBack:(id)a3
{
  v6 = [a3 objectForKey:@"entry"];
  v4 = [v6 entryDate];
  [(PLAppTimeService *)self periodicUpdateAppRunTimeWithDate:v4];

  v5 = [v6 entryDate];
  [(PLAppTimeService *)self updateAggregationsAtDate:v5 withNewAPState:1];

  [(PLAppTimeService *)self setIsAPOn:1];
}

- (void)handleSleepCallBack:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  v5 = [v4 entryDate];
  [(PLAppTimeService *)self periodicUpdateAppRunTimeWithDate:v5];

  v6 = [v4 entryDate];
  [(PLAppTimeService *)self updateAggregationsAtDate:v6 withNewAPState:0];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService handleSleepCallBack:?];
  }

  v8 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  [v8 removeAllObjects];

  [(PLAppTimeService *)self setIsAPOn:0];
  if ([(PLAppTimeService *)self inCallNow])
  {
    v9 = [v4 entryDate];
    v10 = [(PLAppTimeService *)self lastCallTime];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;

    v13 = [(PLAppTimeService *)self lastCallBundleID];
    v14 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:v13 withTime:v14 withDate:v12];

    [(PLAppTimeService *)self setInCallNow:0];
  }
}

- (void)handleCoalitionCallback:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v9 = [v4 monotonicDate];
  v6 = [v5 objectForKey:@"group"];

  v7 = [(PLAppTimeService *)self entryKeyPLCoalitionAgentEventIntervalCoalition];
  v8 = [v6 objectForKeyedSubscript:v7];

  [(PLAppTimeService *)self handleCoalitionCallback:v9 withNewCoalitionArray:v8];
}

- (void)handleScreenStateCallback:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v9 = [v4 monotonicDate];
  [(PLAppTimeService *)self addNowPlayingTimeAtDate:v9];
  [(PLAppTimeService *)self addStatusBarTimeAtDate:v9];
  [(PLAppTimeService *)self addCellularConditionTimeAtDate:v9];
  [(PLAppTimeService *)self addAudioTimeAtDate:v9];
  v6 = [v5 objectForKey:@"group"];

  v7 = [(PLAppTimeService *)self entryKeyPLScreenStateAgentScreenState];
  v8 = [v6 objectForKeyedSubscript:v7];

  [(PLAppTimeService *)self addForegroundTimeAtDate:v9 withNewLayoutElementsArray:v8];
  [(PLAppTimeService *)self addCarPlayUseFromLayoutEntry:v8 AtDate:v9];
}

- (void)handleApplicationCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  [(PLAppTimeService *)self updateBackgroundTimeForAppStateEntry:v4];
}

- (void)handleBatteryCallback:(id)a3
{
  v21 = a3;
  v4 = [v21 objectForKeyedSubscript:@"entry"];
  v5 = [v4 objectForKeyedSubscript:@"ExternalConnected"];
  v6 = [v5 BOOLValue];

  v7 = [v21 objectForKeyedSubscript:@"entry"];
  v8 = [v7 objectForKeyedSubscript:@"CurrentCapacity"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v21 objectForKeyedSubscript:@"entry"];
  v12 = [v11 objectForKeyedSubscript:@"MaxCapacity"];
  [v12 doubleValue];
  v14 = v13;

  v15 = 0.0;
  if (v14 > 0.0)
  {
    v15 = v10 * 100.0 / v14;
  }

  v16 = [PLUtilities isPingPongChargingWith:v6 andBatteryLevelPercent:v15];
  v17 = [v21 objectForKeyedSubscript:@"entry"];
  v18 = [v17 objectForKeyedSubscript:@"IsCharging"];
  v19 = ([v18 BOOLValue] | v16) & 1;

  if (v19 != [(PLAppTimeService *)self deviceIsPluggedIn])
  {
    v20 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAppTimeService *)self addForegroundTimeAtDate:v20 withNewLayoutElementsArray:0];
    [(PLAppTimeService *)self updateInCallServiceTimeAtDate:v20];
    [(PLAppTimeService *)self addAudioTimeAtDate:v20];
    [(PLAppTimeService *)self addNowPlayingTimeAtDate:v20];
    [(PLAppTimeService *)self addStatusBarTimeAtDate:v20];
    [(PLAppTimeService *)self updateAggregationsAtDate:v20 withNewPluggedInState:v19];
  }

  [(PLAppTimeService *)self setDeviceIsPluggedIn:v19];
}

- (void)handleNotificationCallback:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 monotonicDate];
  [(PLAppTimeService *)self addNotificationCountFromUserInfo:v5 AtDate:v6];
}

- (void)handleWidgetCallback:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 monotonicDate];
  [(PLAppTimeService *)self addWidgetUseFromUserInfo:v5 AtDate:v6];
}

- (void)handleDisplayCallback:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"Active"];
  v7 = [v6 intValue];

  if (v7 == 2)
  {
    if (_os_feature_enabled_impl())
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  if ([(PLAppTimeService *)self inCallNow]&& v7 != [(PLAppTimeService *)self displayState]&& ([(PLAppTimeService *)self displayState]== 1 || v7 == 1))
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService handleDisplayCallback:];
    }

    v9 = [v5 entryDate];
    [(PLAppTimeService *)self updateInCallServiceTimeAtDate:v9];
  }

  v10 = [v5 objectForKeyedSubscript:@"Block"];
  v11 = [v10 isEqualToString:@"Backlight"];

  if (v11)
  {
    if (!v7)
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleDisplayCallback:];
      }

      v13 = [v5 entryDate];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:v13];

      v14 = [v5 entryDate];
      [(PLAppTimeService *)self addForegroundTimeAtDate:v14 withNewLayoutElementsArray:0];
    }

    v15 = [v5 entryDate];
    [(PLAppTimeService *)self updateAggregationsAtDate:v15 withNewScreenState:v7];

    if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
    {
      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleDisplayCallback:?];
      }

      if ([(PLAppTimeService *)self displayState]|| (v7 - 1) > 1)
      {
        goto LABEL_28;
      }

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleDisplayCallback:v5];
      }
    }

    else if ((v7 - 1) > 1)
    {
      goto LABEL_28;
    }

    v18 = [v5 entryDate];
    [(PLAppTimeService *)self setLastScreenOnTime:v18];

LABEL_28:
    [(PLAppTimeService *)self setDisplayState:v7];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __42__PLAppTimeService_handleDisplayCallback___block_invoke;
      v32 = &__block_descriptor_40_e5_v8__0lu32l8;
      v33 = v19;
      if (handleDisplayCallback__defaultOnce != -1)
      {
        dispatch_once(&handleDisplayCallback__defaultOnce, &block);
      }

      if (handleDisplayCallback__classDebugEnabled == 1)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = [v5 objectForKeyedSubscript:@"Active"];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLAppTimeService displayState](self, "displayState")}];
        v23 = [v20 stringWithFormat:@"Got display %@ %@ %@", v4, v21, v22, block, v30, v31, v32, v33];

        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleDisplayCallback:]"];
        [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:960];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __42__PLAppTimeService_handleDisplayCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleDisplayCallback__classDebugEnabled = result;
  return result;
}

- (void)handlePowerOutCallback:(id)a3
{
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService handlePowerOutCallback:];
  }

  v6 = [v4 objectForKey:@"time"];
  [(PLAppTimeService *)self updatePowerOutTimeInDBForBundleId:v6];
}

- (void)updatePowerOutTimeInDBForBundleId:(id)a3
{
  v4 = a3;
  [v4 doubleValue];
  v6 = v5;
  v11 = [MEMORY[0x277CBEAA8] monotonicDate];
  v7 = objc_alloc(MEMORY[0x277D3F190]);
  v8 = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
  v9 = [v7 initWithEntryKey:v8 withDate:v11];

  [v9 setObject:@"PowerOutAccessories" forKeyedSubscript:@"BundleID"];
  [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnTime"];
  [v9 setObject:v4 forKeyedSubscript:@"BackgroundTime"];

  [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v11 sinceDate:v6];
  [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:v11 withEndDate:v10];
}

- (void)handleInCallServiceCallback:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"status"];
  if ([v6 isEqualToString:@"callStart"])
  {
    [(PLAppTimeService *)self setInCallNow:1];
    v7 = [v5 entryDate];
    [(PLAppTimeService *)self setLastCallTime:v7];

    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 objectForKeyedSubscript:@"bundleID"];
    if (v9)
    {
      v10 = [v5 objectForKeyedSubscript:@"bundleID"];
    }

    else
    {
      v10 = &stru_287103958;
    }

    v17 = [v8 stringWithFormat:@"%@", v10];
    [(PLAppTimeService *)self setLastCallBundleID:v17];

    if (v9)
    {
    }
  }

  else if ([v6 isEqualToString:@"callStop"])
  {
    v11 = [v5 entryDate];
    v12 = [(PLAppTimeService *)self lastCallTime];
    [v11 timeIntervalSinceDate:v12];
    v14 = v13;

    v15 = [v5 objectForKeyedSubscript:@"bundleID"];
    v16 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:v15 withTime:v16 withDate:v14];

    [(PLAppTimeService *)self setInCallNow:0];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLAppTimeService_handleInCallServiceCallback___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v18;
    if (handleInCallServiceCallback__defaultOnce != -1)
    {
      dispatch_once(&handleInCallServiceCallback__defaultOnce, block);
    }

    if (handleInCallServiceCallback__classDebugEnabled == 1)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [v5 objectForKeyedSubscript:@"bundleID"];
      v21 = [v5 objectForKeyedSubscript:@"status"];
      v22 = [v5 objectForKeyedSubscript:@"callType"];
      v23 = [v19 stringWithFormat:@"Got InCallService %@ %@ %@ %@", v4, v20, v21, v22];

      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v26 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleInCallServiceCallback:]"];
      [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:1001];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __48__PLAppTimeService_handleInCallServiceCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleInCallServiceCallback__classDebugEnabled = result;
  return result;
}

- (void)handlePluginCallback:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"PluginType"];
  v7 = [v6 isEqualToString:@"com.apple.watchkit"];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"PluginId"];

    if (v8)
    {
      watchkitExtensions = self->_watchkitExtensions;
      v10 = [v5 objectForKeyedSubscript:@"PluginId"];
      [(NSMutableSet *)watchkitExtensions addObject:v10];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __41__PLAppTimeService_handlePluginCallback___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v11;
    if (handlePluginCallback__defaultOnce != -1)
    {
      dispatch_once(&handlePluginCallback__defaultOnce, &block);
    }

    if (handlePluginCallback__classDebugEnabled == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Plugin %@", v4, block, v19, v20, v21, v22];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handlePluginCallback:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:1015];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __41__PLAppTimeService_handlePluginCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePluginCallback__classDebugEnabled = result;
  return result;
}

- (void)handleAudioCallback:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"entry"];
  v6 = [v5 objectForKey:@"ApplicationName"];
  v7 = [v5 objectForKey:@"Operation"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if ([v7 isEqualToString:@"AudioPlayback_Start"])
    {
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleAudioCallback:];
      }

      v11 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      v12 = [v5 entryDate];
      [v11 setObject:v12 forKey:v6];

      v13 = [v5 entryDate];
      [(PLAppTimeService *)self addAudioTimeAtDate:v13];
    }

    else
    {
      v14 = [v8 isEqualToString:@"AudioPlayback_Stop"];
      v15 = PLLogCommon();
      v13 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService handleAudioCallback:];
        }

        v16 = [v5 entryDate];
        [(PLAppTimeService *)self addAudioTimeAtDate:v16];

        v13 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        [v13 removeObjectForKey:v6];
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PLAppTimeService handleAudioCallback:];
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __40__PLAppTimeService_handleAudioCallback___block_invoke;
      v27 = &__block_descriptor_40_e5_v8__0lu32l8;
      v28 = v17;
      if (handleAudioCallback__defaultOnce != -1)
      {
        dispatch_once(&handleAudioCallback__defaultOnce, &block);
      }

      if (handleAudioCallback__classDebugEnabled == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Audio callback %@", v4, block, v25, v26, v27, v28];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleAudioCallback:]"];
        [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:1045];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __40__PLAppTimeService_handleAudioCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleAudioCallback__classDebugEnabled = result;
  return result;
}

- (void)handleNowPlayingCallback:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"State"];
  v7 = [v6 intValue];

  v8 = [v5 entryDate];
  [(PLAppTimeService *)self addNowPlayingTimeAtDate:v8];

  if (v7 == 1)
  {
    v9 = [v5 objectForKeyedSubscript:@"BundleID"];
    [(PLAppTimeService *)self setNowPlayingBundleID:v9];
  }

  else
  {
    [(PLAppTimeService *)self setNowPlayingBundleID:0];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __45__PLAppTimeService_handleNowPlayingCallback___block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v10;
    if (handleNowPlayingCallback__defaultOnce != -1)
    {
      dispatch_once(&handleNowPlayingCallback__defaultOnce, &block);
    }

    if (handleNowPlayingCallback__classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", v4, block, v18, v19, v20, v21];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleNowPlayingCallback:]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1059];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __45__PLAppTimeService_handleNowPlayingCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleNowPlayingCallback__classDebugEnabled = result;
  return result;
}

- (void)handleStatusBarCallback:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"Status"];
  v7 = [v6 intValue];

  v8 = [v5 entryDate];
  [(PLAppTimeService *)self addStatusBarTimeAtDate:v8];

  if (v7 == 1)
  {
    v9 = [v5 objectForKeyedSubscript:@"BundleID"];
    [(PLAppTimeService *)self setStatusBarBundleID:v9];
  }

  else
  {
    [(PLAppTimeService *)self setStatusBarBundleID:0];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __44__PLAppTimeService_handleStatusBarCallback___block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v10;
    if (handleStatusBarCallback__defaultOnce != -1)
    {
      dispatch_once(&handleStatusBarCallback__defaultOnce, &block);
    }

    if (handleStatusBarCallback__classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", v4, block, v18, v19, v20, v21];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleStatusBarCallback:]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1073];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __44__PLAppTimeService_handleStatusBarCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleStatusBarCallback__classDebugEnabled = result;
  return result;
}

- (void)handleCellularConditionCallback:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"subsId"];

  if (!v6 || ([v5 objectForKeyedSubscript:@"subsId"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "integerValue"), v7, (v8 & 0xFFFFFFFFFFFFFFFDLL) == 0))
  {
    v9 = [v5 objectForKeyedSubscript:@"signalBars"];
    v10 = [v9 integerValue];

    v11 = [v5 objectForKeyedSubscript:@"airplaneMode"];
    v12 = [v11 isEqualToString:@"on"];

    if (v10 >= 4)
    {
      v10 = 4;
    }

    if (v10 != [(PLAppTimeService *)self lastSignalBar]|| v12 != [(PLAppTimeService *)self lastAirplaneModeStatus])
    {
      v13 = [v5 entryDate];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:v13];
    }

    [(PLAppTimeService *)self setLastSignalBar:v10];
    [(PLAppTimeService *)self setLastAirplaneModeStatus:v12];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __52__PLAppTimeService_handleCellularConditionCallback___block_invoke;
      v24 = &__block_descriptor_40_e5_v8__0lu32l8;
      v25 = v14;
      if (handleCellularConditionCallback__defaultOnce != -1)
      {
        dispatch_once(&handleCellularConditionCallback__defaultOnce, &block);
      }

      if (handleCellularConditionCallback__classDebugEnabled == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got CellularCondition callback %@", v4, block, v22, v23, v24, v25];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleCellularConditionCallback:]"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:1104];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __52__PLAppTimeService_handleCellularConditionCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleCellularConditionCallback__classDebugEnabled = result;
  return result;
}

- (void)handleTelephonyRegistrationCallback:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"entry"];
  if (v4)
  {
    v13 = v4;
    v5 = [v4 objectForKeyedSubscript:@"status"];

    v4 = v13;
    if (v5)
    {
      v6 = [v13 objectForKeyedSubscript:@"subsId"];

      v4 = v13;
      if (!v6 || ([v13 objectForKeyedSubscript:@"subsId"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "integerValue"), v7, v4 = v13, (v8 & 0xFFFFFFFFFFFFFFFDLL) == 0))
      {
        v9 = [v4 objectForKeyedSubscript:@"status"];
        if ([v9 isEqualToString:@"RegisteredHome"])
        {
          v10 = 1;
        }

        else
        {
          v11 = [v13 objectForKeyedSubscript:@"status"];
          v10 = [v11 isEqualToString:@"RegisteredRoaming"];
        }

        if (v10 != [(PLAppTimeService *)self lastTelephonyRegistrationStatus])
        {
          v12 = [v13 entryDate];
          [(PLAppTimeService *)self addCellularConditionTimeAtDate:v12];
        }

        [(PLAppTimeService *)self setLastTelephonyRegistrationStatus:v10];
        v4 = v13;
      }
    }
  }
}

- (id)remapCloudDocsBundleID:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"com.apple.clouddocs."])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"com.apple.clouddocs.", "length")}];
    v5 = [v4 rangeOfString:@"."];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v4 substringFromIndex:v5 + v6];
      if (v7)
      {
        v8 = v7;

        goto LABEL_7;
      }
    }
  }

  v8 = v3;
LABEL_7:

  return v8;
}

- (void)handleBackgroundTransferCallback:(id)a3
{
  v4 = a3;
  if (handleBackgroundTransferCallback__onceToken != -1)
  {
    [PLAppTimeService handleBackgroundTransferCallback:];
  }

  v5 = [v4 objectForKeyedSubscript:@"entry"];
  v6 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (handleBackgroundTransferCallback__defaultOnce != -1)
    {
      dispatch_once(&handleBackgroundTransferCallback__defaultOnce, block);
    }

    if (handleBackgroundTransferCallback__classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"entry=%@", v5];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:1159];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v14 = [v5 objectForKeyedSubscript:@"originatingClientID"];
  if (v14)
  {
    v15 = @"originatingClientID";
  }

  else
  {
    v15 = @"bundleID";
  }

  v16 = [v5 objectForKeyedSubscript:v15];

  v17 = [(PLAppTimeService *)self remapCloudDocsBundleID:v16];

  if (v17)
  {
    v18 = [v5 objectForKeyedSubscript:@"taskUUID"];
    if (!v18 || ([v5 objectForKeyedSubscript:@"state"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "intValue"), v19, !v20))
    {
LABEL_47:

      goto LABEL_48;
    }

    if (v20 == 1)
    {
      v21 = [(PLAppTimeService *)self coalitionsAppsOnScreen];
      v22 = [v21 containsObject:v17];

      if (v22)
      {
        goto LABEL_40;
      }

      v23 = [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent objectForKeyedSubscript:v17];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v24 = objc_opt_class();
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_415;
        v71[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v71[4] = v24;
        if (handleBackgroundTransferCallback__defaultOnce_413 != -1)
        {
          dispatch_once(&handleBackgroundTransferCallback__defaultOnce_413, v71);
        }

        if (handleBackgroundTransferCallback__classDebugEnabled_414 == 1)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Running: backgroundTransferEvent=%@", v23];
          v65 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          v27 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v65 logMessage:v25 fromFile:v27 fromFunction:v28 fromLineNumber:1176];

          v29 = v25;
          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v6 = 0x277D3F000;
        }
      }

      if (!v23)
      {
        v23 = objc_alloc_init(PLBackgroundTransferEvent);
        v31 = [v5 entryDate];
        [(PLBackgroundTransferEvent *)v23 setStartDate:v31];

        [(PLBackgroundTransferEvent *)v23 setBundleID:v17];
        v32 = [MEMORY[0x277CBEB58] set];
        [(PLBackgroundTransferEvent *)v23 setTaskUUIDs:v32];

        [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent setObject:v23 forKeyedSubscript:v17];
      }

      v33 = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      [v33 addObject:v18];
    }

    else
    {
      v23 = [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent objectForKeyedSubscript:v17];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v34 = objc_opt_class();
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_422;
        v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v70[4] = v34;
        if (handleBackgroundTransferCallback__defaultOnce_420 != -1)
        {
          dispatch_once(&handleBackgroundTransferCallback__defaultOnce_420, v70);
        }

        if (handleBackgroundTransferCallback__classDebugEnabled_421 == 1)
        {
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cancelled, Completed, Failed: backgroundTransferEvent=%@", v23];
          v66 = MEMORY[0x277D3F178];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          v37 = [v36 lastPathComponent];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v66 logMessage:v35 fromFile:v37 fromFunction:v38 fromLineNumber:1193];

          v39 = v35;
          v40 = PLLogCommon();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v6 = 0x277D3F000uLL;
        }
      }

      if (!v23)
      {
        goto LABEL_39;
      }

      v41 = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      [v41 removeObject:v18];

      v42 = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      v43 = [v42 count];

      if (v43)
      {
        goto LABEL_39;
      }

      [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent removeObjectForKey:v17];
      v44 = [(PLAppTimeService *)self coalitionsAppsOnScreen];
      v45 = [v44 containsObject:v17];

      if (v45)
      {
        goto LABEL_39;
      }

      v53 = [v5 entryDate];
      v54 = [(PLBackgroundTransferEvent *)v23 startDate];
      [v53 timeIntervalSinceDate:v54];
      v56 = v55;

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v57 = objc_opt_class();
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_428;
        v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v69[4] = v57;
        if (handleBackgroundTransferCallback__defaultOnce_426 != -1)
        {
          dispatch_once(&handleBackgroundTransferCallback__defaultOnce_426, v69);
        }

        if (handleBackgroundTransferCallback__classDebugEnabled_427 == 1)
        {
          v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration=%f", *&v56];
          v67 = MEMORY[0x277D3F178];
          v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          v60 = [v59 lastPathComponent];
          v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v67 logMessage:v58 fromFile:v60 fromFunction:v61 fromLineNumber:1205];

          v62 = v58;
          v63 = PLLogCommon();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v6 = 0x277D3F000;
        }
      }

      v33 = [(PLBackgroundTransferEvent *)v23 bundleID];
      v64 = [(PLBackgroundTransferEvent *)v23 startDate];
      [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:v33 withTime:v64 withDate:fmin(v56, 3600.0)];
    }

LABEL_39:
LABEL_40:
    if ([*(v6 + 384) debugEnabled])
    {
      v46 = objc_opt_class();
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_434;
      v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v68[4] = v46;
      if (handleBackgroundTransferCallback__defaultOnce_432 != -1)
      {
        dispatch_once(&handleBackgroundTransferCallback__defaultOnce_432, v68);
      }

      if (handleBackgroundTransferCallback__classDebugEnabled_433 == 1)
      {
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleIDToBackgroundTransferEvent=%@", handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent];
        v48 = MEMORY[0x277D3F178];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v50 = [v49 lastPathComponent];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
        [v48 logMessage:v47 fromFile:v50 fromFunction:v51 fromLineNumber:1213];

        v52 = PLLogCommon();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    goto LABEL_47;
  }

LABEL_48:
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled = result;
  return result;
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_415(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled_414 = result;
  return result;
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_422(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled_421 = result;
  return result;
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_428(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled_427 = result;
  return result;
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_434(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackgroundTransferCallback__classDebugEnabled_433 = result;
  return result;
}

- (void)updateBackgroundTimeForAppStateEntry:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17 = v4;
    v5 = [v4 objectForKeyedSubscript:@"Identifier"];
    v6 = [v17 objectForKeyedSubscript:@"State"];
    v7 = [v6 intValue];

    if (!v5)
    {
      goto LABEL_17;
    }

    v8 = [(PLAppTimeService *)self excludedBGAppsSet];
    if ([v8 containsObject:v5])
    {
LABEL_16:

      goto LABEL_17;
    }

    v9 = [(PLAppTimeService *)self backgroundAppToBundleID];
    v10 = [v9 objectForKey:v5];
    if (v10)
    {

      goto LABEL_16;
    }

    v11 = [(PLAppTimeService *)self PiPModeApps];
    v12 = [v11 containsObject:v5];

    if (v12)
    {
LABEL_17:

      v4 = v17;
      goto LABEL_18;
    }

    v13 = [v17 entryDate];
    [(PLAppTimeService *)self updateBackgroundAppsForBundleID:v5 withState:v7 withDate:v13];

    if (([(NSMutableSet *)self->_watchkitExtensions containsObject:v5]& 1) != 0)
    {
      if (v7 == 4 || v7 == 8)
      {
        v8 = [v17 entryDate];
LABEL_12:
        v14 = self;
        v15 = v5;
        v16 = 0;
LABEL_15:
        [(PLAppTimeService *)v14 updateAppRunTimeForBundleId:v15 withAppStateUpdateType:v16 withNowDate:v8];
        goto LABEL_16;
      }

      v8 = [v17 entryDate];
    }

    else
    {
      v8 = [v17 entryDate];
      if (v7 == 4)
      {
        goto LABEL_12;
      }
    }

    v14 = self;
    v15 = v5;
    v16 = 1;
    goto LABEL_15;
  }

LABEL_18:
}

- (void)updateAppRunTimeForBundleId:(id)a3 withAppStateUpdateType:(int)a4 withNowDate:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(PLAppTimeService *)self inFlightBundleIDStartTime];
  v10 = [v9 objectForKey:v12];

  if (a4)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    [v8 timeIntervalSinceDate:v10];
    [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:v12 withTime:v10 withDate:?];
    if (a4 != 2)
    {
      if (a4 != 1)
      {
        goto LABEL_9;
      }

      v11 = [(PLAppTimeService *)self inFlightBundleIDStartTime];
      [v11 removeObjectForKey:v12];
      goto LABEL_8;
    }
  }

  else if (v10)
  {
    goto LABEL_9;
  }

  v11 = [(PLAppTimeService *)self inFlightBundleIDStartTime];
  [v11 setObject:v8 forKeyedSubscript:v12];
LABEL_8:

LABEL_9:
}

- (void)updateBackgroundTimeInDBForBundleId:(id)a3 withTime:(double)a4 withDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PLAppTimeService *)self isAPOn];
  if (a4 > 0.0 && v10)
  {
    v11 = objc_alloc(MEMORY[0x277D3F190]);
    v12 = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v13 = [v11 initWithEntryKey:v12 withDate:v9];

    [v13 setObject:v8 forKeyedSubscript:@"BundleID"];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v13 setObject:v14 forKeyedSubscript:@"BackgroundTime"];

    [v13 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnTime"];
    [v13 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      [v13 setObject:v15 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    else
    {
      [v13 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    v24 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:a4];
    [(PLOperator *)self logProportionateAggregateEntry:v13 withStartDate:v9 withEndDate:v24];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_20;
    }

    v25 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke_446;
    v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v35[4] = v25;
    if (updateBackgroundTimeInDBForBundleId_withTime_withDate__defaultOnce_444 != -1)
    {
      dispatch_once(&updateBackgroundTimeInDBForBundleId_withTime_withDate__defaultOnce_444, v35);
    }

    if (updateBackgroundTimeInDBForBundleId_withTime_withDate__classDebugEnabled_445 != 1)
    {
      goto LABEL_20;
    }

    v26 = MEMORY[0x277CCACA8];
    v27 = [v13 objectForKeyedSubscript:@"BundleID"];
    v28 = [v13 objectForKeyedSubscript:@"ScreenOnTime"];
    v29 = [v13 objectForKeyedSubscript:@"BackgroundTime"];
    v23 = [v26 stringWithFormat:@"Added Background %@ %@ %@", v27, v28, v29];

    v30 = MEMORY[0x277D3F178];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
    v32 = [v31 lastPathComponent];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateBackgroundTimeInDBForBundleId:withTime:withDate:]"];
    [v30 logMessage:v23 fromFile:v32 fromFunction:v33 fromLineNumber:1286];

    v34 = PLLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

LABEL_19:
LABEL_20:

    goto LABEL_21;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v16;
    if (updateBackgroundTimeInDBForBundleId_withTime_withDate__defaultOnce != -1)
    {
      dispatch_once(&updateBackgroundTimeInDBForBundleId_withTime_withDate__defaultOnce, block);
    }

    if (updateBackgroundTimeInDBForBundleId_withTime_withDate__classDebugEnabled == 1)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      v13 = [v17 stringWithFormat:@"Not adding time for %@, %@ %@", v8, v18, v9];

      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateBackgroundTimeInDBForBundleId:withTime:withDate:]"];
      [v19 logMessage:v13 fromFile:v21 fromFunction:v22 fromLineNumber:1272];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_19;
    }
  }

LABEL_21:
}

uint64_t __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateBackgroundTimeInDBForBundleId_withTime_withDate__classDebugEnabled = result;
  return result;
}

uint64_t __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke_446(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateBackgroundTimeInDBForBundleId_withTime_withDate__classDebugEnabled_445 = result;
  return result;
}

- (void)periodicUpdateAppRunTimeWithDate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLAppTimeService *)self inFlightBundleIDStartTime];
  v6 = [v5 allKeys];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PLAppTimeService *)self updateAppRunTimeForBundleId:*(*(&v13 + 1) + 8 * v11++) withAppStateUpdateType:2 withNowDate:v4, v13];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(PLAppTimeService *)self chunkAppsOnScreenAtDate:v4];
  [(PLAppTimeService *)self updateInCallServiceTimeAtDate:v4];
  [(PLAppTimeService *)self addAudioTimeAtDate:v4];
  [(PLAppTimeService *)self addNowPlayingTimeAtDate:v4];
  [(PLAppTimeService *)self addStatusBarTimeAtDate:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)chunkAppsOnScreenAtDate:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLAppTimeService *)self appsOnScreen];
  if (v5 && (v6 = v5, -[PLAppTimeService appsOnScreen](self, "appsOnScreen"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, v8))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(PLAppTimeService *)self appsOnScreen];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v24;
      *&v11 = 138412546;
      v22 = v11;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [v4 timeIntervalSinceDate:v16];
          v18 = v17;

          v19 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [(PLAppTimeService *)self updateScreenOnTimeInDBForBundleId:v15 withTime:v19 withDate:v18];

          [(PLAppTimeService *)self setLastScreenEventAccountingTime:v4];
          v20 = PLLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v22;
            v28 = v15;
            v29 = 2048;
            v30 = v18;
            _os_log_debug_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEBUG, "Screen On: Periodic Update - Updating On Screen time for %@ with %f added seconds", buf, 0x16u);
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [PLAppTimeService chunkAppsOnScreenAtDate:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addForegroundTimeAtDate:(id)a3 withNewLayoutElementsArray:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PLAppTimeService *)self lastScreenOnTime];
  v9 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
  [v8 timeIntervalSinceDate:v9];
  v11 = v10;

  if (v11 > 0.0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__PLAppTimeService_addForegroundTimeAtDate_withNewLayoutElementsArray___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v12;
      if (addForegroundTimeAtDate_withNewLayoutElementsArray__defaultOnce != -1)
      {
        dispatch_once(&addForegroundTimeAtDate_withNewLayoutElementsArray__defaultOnce, block);
      }

      if (addForegroundTimeAtDate_withNewLayoutElementsArray__classDebugEnabled == 1)
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
        v15 = [(PLAppTimeService *)self lastScreenOnTime];
        v16 = [v13 stringWithFormat:@"Pulling up last screen on time %@ %@", v14, v15];

        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService addForegroundTimeAtDate:withNewLayoutElementsArray:]"];
        [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:1324];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService addForegroundTimeAtDate:? withNewLayoutElementsArray:?];
    }

    v23 = [(PLAppTimeService *)self lastScreenOnTime];
    [(PLAppTimeService *)self setLastScreenEventAccountingTime:v23];
  }

  v24 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
  [v6 timeIntervalSinceDate:v24];
  v26 = v25;

  v27 = PLLogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService addForegroundTimeAtDate:? withNewLayoutElementsArray:?];
  }

  v57 = v6;

  self->_musicPlayerForeground = 0;
  if ([v7 count])
  {
    v28 = [(PLAppTimeService *)self PiPModeApps];
    [v28 removeAllObjects];

    v29 = [(PLAppTimeService *)self appsOnScreen];
    [v29 removeAllObjects];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v30 = v7;
    v31 = [v30 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v63;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v63 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v62 + 1) + 8 * i);
          v36 = [v35 objectForKeyedSubscript:@"bundleID"];

          if (v36)
          {
            v37 = [v35 objectForKeyedSubscript:@"bundleID"];
            v38 = [v35 objectForKeyedSubscript:@"AppRole"];
            [(PLAppTimeService *)self updatePiPModeAppsSet:v37 withAppRole:v38];

            v39 = [(PLAppTimeService *)self appsOnScreen];
            v40 = [v35 objectForKeyedSubscript:@"bundleID"];
            [v39 addObject:v40];
          }

          else
          {
            v39 = PLLogCommon();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v68 = v35;
              _os_log_fault_impl(&dword_25EE51000, v39, OS_LOG_TYPE_FAULT, "Failed to retrieve bundle id for app on screen, bundle id is nil for entry %@", buf, 0xCu);
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v32);
    }
  }

  v41 = [(PLAppTimeService *)self lastLayoutEntries];
  v42 = [v41 count];

  if (v42)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v43 = [(PLAppTimeService *)self lastLayoutEntries];
    v44 = [v43 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v59;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v59 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v58 + 1) + 8 * j);
          v49 = [v48 objectForKeyedSubscript:@"bundleID"];
          v50 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [(PLAppTimeService *)self updateScreenOnTimeInDBForBundleId:v49 withTime:v50 withDate:v26];

          v51 = [v48 objectForKeyedSubscript:@"bundleID"];
          [(PLAppTimeService *)self updateCoalitionsAppsOnScreenSet:v51];

          v52 = PLLogCommon();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            v55 = [v48 objectForKeyedSubscript:@"bundleID"];
            *buf = 138412546;
            v68 = v55;
            v69 = 2048;
            v70 = v26;
            _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "Screen On: Updating On Screen time for %@ with %f added seconds", buf, 0x16u);
          }

          v53 = [v48 objectForKeyedSubscript:@"bundleID"];
          v54 = [v53 isEqualToString:@"com.apple.Music"];

          if (v54)
          {
            self->_musicPlayerForeground = 1;
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v45);
    }
  }

  [(PLAppTimeService *)self resetLayoutElementsPLEntryArray:v7 withNowDate:v57];

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __71__PLAppTimeService_addForegroundTimeAtDate_withNewLayoutElementsArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addForegroundTimeAtDate_withNewLayoutElementsArray__classDebugEnabled = result;
  return result;
}

- (void)updateScreenOnTimeInDBForBundleId:(id)a3 withTime:(double)a4 withDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PLAppTimeService *)self excludedFGAppsSet];
  v11 = [v10 containsObject:v8];
  if (!v8 || (v11 & 1) != 0 || ![(PLAppTimeService *)self displayState])
  {
LABEL_26:

    goto LABEL_27;
  }

  if (a4 > 0.0)
  {
    if ([v8 isEqualToString:*MEMORY[0x277D0AB98]])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v12 = objc_opt_class();
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke;
        v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v37[4] = v12;
        if (updateScreenOnTimeInDBForBundleId_withTime_withDate__defaultOnce != -1)
        {
          dispatch_once(&updateScreenOnTimeInDBForBundleId_withTime_withDate__defaultOnce, v37);
        }

        if (updateScreenOnTimeInDBForBundleId_withTime_withDate__classDebugEnabled == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Lock screen diff was %f", *&a4];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          v16 = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:]"];
          [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:1365];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      a4 = fmin(a4, 60.0);
    }

    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:];
    }

    v20 = objc_alloc(MEMORY[0x277D3F190]);
    v21 = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v10 = [v20 initWithEntryKey:v21 withDate:v9];

    [v10 setObject:v8 forKeyedSubscript:@"BundleID"];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v10 setObject:v22 forKeyedSubscript:@"ScreenOnTime"];

    [v10 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundTime"];
    [v10 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      [v10 setObject:v23 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    }

    else
    {
      [v10 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    }

    v24 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:a4];
    [(PLOperator *)self logProportionateAggregateEntry:v10 withStartDate:v9 withEndDate:v24];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v25 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke_461;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v25;
      if (updateScreenOnTimeInDBForBundleId_withTime_withDate__defaultOnce_459 != -1)
      {
        dispatch_once(&updateScreenOnTimeInDBForBundleId_withTime_withDate__defaultOnce_459, block);
      }

      if (updateScreenOnTimeInDBForBundleId_withTime_withDate__classDebugEnabled_460 == 1)
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = [v10 objectForKeyedSubscript:@"BundleID"];
        v28 = [v10 objectForKeyedSubscript:@"ScreenOnTime"];
        v29 = [v10 objectForKeyedSubscript:@"BackgroundTime"];
        v30 = [v26 stringWithFormat:@"Added Foreground %@ %@ %@", v27, v28, v29];

        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v33 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:]"];
        [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:1382];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    goto LABEL_26;
  }

LABEL_27:
}

uint64_t __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateScreenOnTimeInDBForBundleId_withTime_withDate__classDebugEnabled = result;
  return result;
}

uint64_t __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke_461(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateScreenOnTimeInDBForBundleId_withTime_withDate__classDebugEnabled_460 = result;
  return result;
}

- (void)resetLayoutElementsPLEntryArray:(id)a3 withNowDate:(id)a4
{
  v6 = a4;
  if (a3)
  {
    [(PLAppTimeService *)self setLastLayoutEntries:a3];
  }

  [(PLAppTimeService *)self setLastScreenEventAccountingTime:v6];
}

- (void)updatePiPModeAppsSet:(id)a3 withAppRole:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToValue:&unk_287147BD8] && (-[NSMutableSet containsObject:](self->_PiPModeApps, "containsObject:", v6) & 1) == 0)
  {
    [(NSMutableSet *)self->_PiPModeApps addObject:v6];
  }
}

- (void)updateCoalitionsAppsOnScreenSet:(id)a3
{
  v5 = a3;
  v4 = [(NSDictionary *)self->_backgroundAppToBundleID objectForKey:?];

  if (v4 && ([(NSMutableSet *)self->_coalitionsAppsOnScreen containsObject:v5]& 1) == 0)
  {
    [(NSMutableSet *)self->_coalitionsAppsOnScreen addObject:v5];
  }
}

- (double)getCPUTime:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"cpu_time"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectForKeyedSubscript:@"cpu_time_billed_to_me"];
  [v7 doubleValue];
  v9 = v6 + v8;
  v10 = [v3 objectForKeyedSubscript:@"cpu_time_billed_to_others"];

  [v10 doubleValue];
  v12 = v9 - v11;

  return v12;
}

- (double)convertCPUTimeToBackgroundTime:(double)a3 withDuration:(double)a4
{
  result = a3 + a3;
  if (result > a4)
  {
    result = a4;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)handleCoalitionCallback:(id)a3 withNewCoalitionArray:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v53 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Metrics"];
    v52 = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v51 = v7;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v9)
    {
      v10 = v9;
      v54 = 0;
      v11 = 0;
      v56 = *v63;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v63 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v62 + 1) + 8 * i);
          v14 = [PLUtilities getIdentifierFromEntry:v13, v51];
          if (v14)
          {
            v15 = v14;
            v57 = v11;
            v16 = v8;
            v17 = [v13 objectForKeyedSubscript:@"byteswritten"];
            v18 = [v17 intValue];

            v19 = [v13 objectForKeyedSubscript:@"bytesread"];
            v20 = [v19 intValue];

            if (v20 > 0 || v18 >= 1)
            {
              v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v53 withDate:v6];
              [v22 setObject:v15 forKeyedSubscript:@"BundleId"];
              v23 = [MEMORY[0x277CCABB0] numberWithInt:v18];
              [v22 setObject:v23 forKeyedSubscript:@"byteswritten"];

              v24 = [MEMORY[0x277CCABB0] numberWithInt:v20];
              [v22 setObject:v24 forKeyedSubscript:@"bytesread"];

              [v52 addObject:v22];
            }

            v25 = [(NSDictionary *)self->_backgroundAppToBundleID objectForKey:v15];

            if (v25)
            {
              v26 = [(NSDictionary *)self->_backgroundAppToBundleID objectForKeyedSubscript:v15];

              v8 = v16;
              if (([(NSMutableSet *)self->_coalitionsAppsOnScreen containsObject:v26]& 1) != 0)
              {
                v11 = v57;
              }

              else
              {
                [(PLAppTimeService *)self getCPUTime:v13];
                v28 = v27;
                v29 = [v16 objectForKey:v26];

                if (v29)
                {
                  v30 = [v16 objectForKeyedSubscript:v26];
                  [v30 doubleValue];
                  v32 = v31;

                  v33 = MEMORY[0x277CCABB0];
                  v34 = v28 + v32;
                }

                else
                {
                  v33 = MEMORY[0x277CCABB0];
                  v34 = v28;
                }

                v35 = [v33 numberWithDouble:v34];
                [v16 setObject:v35 forKeyedSubscript:v26];

                v11 = [v13 entryDate];

                v36 = [v13 objectForKeyedSubscript:@"timestampEnd"];

                v54 = v36;
              }
            }

            else
            {
              v26 = v15;
              v8 = v16;
              v11 = v57;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v10);
    }

    else
    {
      v54 = 0;
      v11 = 0;
    }

    if ([v52 count])
    {
      v67 = v53;
      v68 = v52;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      [(PLOperator *)self logEntries:v37 withGroupID:v53];
    }

    v38 = 0.0;
    v39 = 0.0;
    if (v11 && v54)
    {
      [v54 timeIntervalSinceDate:v11];
      v39 = v40;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v41 = v8;
    v42 = [v41 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v59;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v59 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v58 + 1) + 8 * j);
          v47 = [v41 objectForKeyedSubscript:{v46, v51}];
          [v47 doubleValue];
          [PLAppTimeService convertCPUTimeToBackgroundTime:"convertCPUTimeToBackgroundTime:withDuration:" withDuration:?];
          v49 = v48;

          [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:v46 withTime:v11 withDate:v49];
          if (v49 > v38)
          {
            v38 = v49;
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v43);
    }

    [(NSMutableSet *)self->_coalitionsAppsOnScreen removeAllObjects];
    [(PLAppTimeService *)self updateAggregationsAtSBCWithDate:v6 withLongestCoalitionBGTime:v38 withCoalitionLength:v39];

    v7 = v51;
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)updateInCallServiceTimeAtDate:(id)a3
{
  v9 = a3;
  if ([(PLAppTimeService *)self inCallNow])
  {
    v4 = [(PLAppTimeService *)self lastCallTime];
    [v9 timeIntervalSinceDate:v4];
    v6 = v5;

    v7 = [(PLAppTimeService *)self lastCallBundleID];
    v8 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:v7 withTime:v8 withDate:v6];

    [(PLAppTimeService *)self setLastCallTime:v9];
  }
}

- (void)updateInCallServiceTimeInDBForBundleId:(id)a3 withTime:(double)a4 withDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PLAppTimeService *)self inCallNow];
  if (a4 > 0.0 && v8 != 0 && v10)
  {
    v13 = objc_alloc(MEMORY[0x277D3F190]);
    v14 = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v15 = [v13 initWithEntryKey:v14 withDate:v9];

    [v15 setObject:v8 forKeyedSubscript:@"BundleID"];
    v16 = [(PLAppTimeService *)self displayState];
    v17 = @"InCallBackgroundTime";
    if (v16 == 1)
    {
      v17 = @"InCallScreenOnTime";
      v18 = @"ScreenOnPluggedInTime";
    }

    else
    {
      v18 = @"BackgroundPluggedInTime";
    }

    v19 = v17;
    v20 = v18;
    v21 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    [v15 setObject:v21 forKeyedSubscript:v19];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInt:a4];
      [v15 setObject:v22 forKeyedSubscript:v20];
    }

    else
    {
      [v15 setObject:&unk_287147BC0 forKeyedSubscript:v20];
    }

    v23 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:a4];
    [(PLOperator *)self logProportionateAggregateEntry:v15 withStartDate:v9 withEndDate:v23];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v24 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__PLAppTimeService_updateInCallServiceTimeInDBForBundleId_withTime_withDate___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v24;
      if (updateInCallServiceTimeInDBForBundleId_withTime_withDate__defaultOnce != -1)
      {
        dispatch_once(&updateInCallServiceTimeInDBForBundleId_withTime_withDate__defaultOnce, block);
      }

      if (updateInCallServiceTimeInDBForBundleId_withTime_withDate__classDebugEnabled == 1)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = [(PLAppTimeService *)self displayState];
        v27 = [v15 objectForKeyedSubscript:@"BundleID"];
        v28 = [v15 objectForKeyedSubscript:v19];
        v29 = [v15 objectForKeyedSubscript:@"BackgroundTime"];
        v30 = [v25 stringWithFormat:@"Added InCallService screen state: %d %@ %@ %@", v26, v27, v28, v29];

        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v33 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateInCallServiceTimeInDBForBundleId:withTime:withDate:]"];
        [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:1537];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __77__PLAppTimeService_updateInCallServiceTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateInCallServiceTimeInDBForBundleId_withTime_withDate__classDebugEnabled = result;
  return result;
}

- (void)addAudioTimeAtDate:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v6 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  v7 = [v6 allKeys];
  v8 = [v5 setWithArray:v7];

  if ([v8 count])
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService addAudioTimeAtDate:v8];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = [(PLAppTimeService *)self appsOnScreen];
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        v14 = 0;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          v16 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
          v17 = [v16 objectForKeyedSubscript:v15];

          if (v17)
          {
            v18 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
            [v18 setObject:v4 forKeyedSubscript:v15];

            v19 = PLLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v46 = v15;
              _os_log_debug_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEBUG, "audio: reset time for %@ due to being in the fg", buf, 0xCu);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v12);
    }

    v20 = [(PLAppTimeService *)self appsOnScreen];
    [v8 minusSet:v20];

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self addAudioTimeAtDate:v8];
    }

    v22 = [(PLAppTimeService *)self statusBarBundleID];
    if (v22)
    {
      v23 = v22;
      v24 = [(PLAppTimeService *)self statusBarBundleID];
      v25 = [v8 containsObject:v24];

      if (v25)
      {
        [(PLAppTimeService *)self addAudioAndLocationTimeAtDate:v4];
        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService addAudioTimeAtDate:?];
        }

        v27 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        v28 = [(PLAppTimeService *)self statusBarBundleID];
        [v27 setObject:v4 forKeyedSubscript:v28];

        v29 = [(PLAppTimeService *)self statusBarBundleID];
        [v8 removeObject:v29];
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v8;
    v31 = [v30 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v37;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [(PLAppTimeService *)self addAudioTimeAtDate:v4 forBundleID:*(*(&v36 + 1) + 8 * i)];
        }

        v32 = [v30 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v32);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)addAudioTimeAtDate:(id)a3 forBundleID:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService addAudioTimeAtDate:forBundleID:];
    }

    goto LABEL_18;
  }

  [v6 timeIntervalSinceDate:v9];
  v11 = v10;
  v12 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  [v12 setObject:v6 forKeyedSubscript:v7];

  if (v11 > 0.0)
  {
    v13 = objc_alloc(MEMORY[0x277D3F190]);
    v14 = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v15 = [v13 initWithEntryKey:v14 withDate:v6];

    [v15 setObject:v7 forKeyedSubscript:@"BundleID"];
    if ([v7 isEqualToString:@"com.apple.Music"])
    {
      if ([(PLAppTimeService *)self musicPlayerForeground])
      {
LABEL_18:

        goto LABEL_19;
      }

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService addAudioTimeAtDate:forBundleID:];
      }

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v15 setObject:v17 forKeyedSubscript:@"BackgroundTime"];

      if ([(PLAppTimeService *)self deviceIsPluggedIn])
      {
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [v15 setObject:v18 forKeyedSubscript:@"BackgroundPluggedInTime"];
      }

      else
      {
        [v15 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
      }
    }

    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v15 setObject:v19 forKeyedSubscript:@"BackgroundAudioPlayingTime"];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v15 setObject:v20 forKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
    }

    else
    {
      [v15 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
    }

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412802;
      v24 = v7;
      v25 = 2048;
      v26 = v11;
      v27 = 1024;
      v28 = [(PLAppTimeService *)self deviceIsPluggedIn];
      _os_log_debug_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEBUG, "audio: adding to %@ playback time: %.2f pluggedIn:%d", &v23, 0x1Cu);
    }

    [(PLOperator *)self logProportionateAggregateEntry:v15 withStartDate:v9 withEndDate:v6];
    [(PLAppTimeService *)self addAudioUseFromforBundleID:v7 AtDate:v6];
    goto LABEL_18;
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addNowPlayingTimeAtDate:(id)a3
{
  v19 = a3;
  v4 = [(PLAppTimeService *)self nowPlayingBundleID];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [(PLAppTimeService *)self appsOnScreen];
  v7 = [(PLAppTimeService *)self nowPlayingBundleID];
  v8 = [v6 containsObject:v7];

  if (v8 || (-[PLAppTimeService lastNowPlayingTime](self, "lastNowPlayingTime"), v9 = objc_claimAutoreleasedReturnValue(), [v19 timeIntervalSinceDate:v9], v11 = v10, v9, v11 <= 0.0))
  {
LABEL_6:
    [(PLAppTimeService *)self setLastNowPlayingTime:v19];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D3F190]);
    v13 = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v14 = [v12 initWithEntryKey:v13 withDate:v19];

    v15 = [(PLAppTimeService *)self nowPlayingBundleID];
    [v14 setObject:v15 forKeyedSubscript:@"BundleID"];

    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v14 setObject:v16 forKeyedSubscript:@"BackgroundAudioNowPlayingTime"];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v14 setObject:v17 forKeyedSubscript:@"BackgroundAudioNowPlayingPluggedInTime"];
    }

    else
    {
      [v14 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundAudioNowPlayingPluggedInTime"];
    }

    v18 = [(PLAppTimeService *)self lastNowPlayingTime];
    [(PLOperator *)self logProportionateAggregateEntry:v14 withStartDate:v18 withEndDate:v19];

    [(PLAppTimeService *)self setLastNowPlayingTime:v19];
  }
}

- (void)addStatusBarTimeAtDate:(id)a3
{
  v26 = a3;
  v4 = [(PLAppTimeService *)self statusBarBundleID];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [(PLAppTimeService *)self appsOnScreen];
  v7 = [(PLAppTimeService *)self statusBarBundleID];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = [(PLAppTimeService *)self statusBarBundleID];
  if (v9)
  {
    v10 = v9;
    v11 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
    if (v11)
    {
      v12 = v11;
      v13 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      v14 = [(PLAppTimeService *)self statusBarBundleID];
      v15 = [v13 objectForKey:v14];

      if (v15)
      {
        [(PLAppTimeService *)self addAudioAndLocationTimeAtDate:v26];
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v16 = [(PLAppTimeService *)self lastStatusBarTime];
  [v26 timeIntervalSinceDate:v16];
  v18 = v17;

  if (v18 > 0.0)
  {
    v19 = objc_alloc(MEMORY[0x277D3F190]);
    v20 = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v21 = [v19 initWithEntryKey:v20 withDate:v26];

    v22 = [(PLAppTimeService *)self statusBarBundleID];
    [v21 setObject:v22 forKeyedSubscript:@"BundleID"];

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    [v21 setObject:v23 forKeyedSubscript:@"BackgroundLocationTime"];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
      [v21 setObject:v24 forKeyedSubscript:@"BackgroundLocationPluggedInTime"];
    }

    else
    {
      [v21 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundLocationPluggedInTime"];
    }

    v25 = [(PLAppTimeService *)self lastStatusBarTime];
    [(PLOperator *)self logProportionateAggregateEntry:v21 withStartDate:v25 withEndDate:v26];

    [(PLAppTimeService *)self setLastStatusBarTime:v26];
    goto LABEL_12;
  }

LABEL_11:
  [(PLAppTimeService *)self setLastStatusBarTime:v26];
LABEL_12:
}

- (void)addAudioAndLocationTimeAtDate:(id)a3
{
  v22 = a3;
  v4 = [(PLAppTimeService *)self statusBarBundleID];
  if (v4)
  {
    v5 = v4;
    v6 = [(PLAppTimeService *)self appsOnScreen];
    v7 = [(PLAppTimeService *)self statusBarBundleID];
    v8 = [v6 containsObject:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      v10 = [(PLAppTimeService *)self statusBarBundleID];
      v11 = [v9 objectForKey:v10];

      if (v11)
      {
        v12 = [(PLAppTimeService *)self lastStatusBarTime];
        v13 = [v12 laterDate:v11];

        [v22 timeIntervalSinceDate:v13];
        if (v14 > 0.0)
        {
          v15 = v14;
          v16 = objc_alloc(MEMORY[0x277D3F190]);
          v17 = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
          v18 = [v16 initWithEntryKey:v17 withDate:v22];

          v19 = [(PLAppTimeService *)self statusBarBundleID];
          [v18 setObject:v19 forKeyedSubscript:@"BundleID"];

          v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
          [v18 setObject:v20 forKeyedSubscript:@"BackgroundLocationAudioTime"];

          if ([(PLAppTimeService *)self deviceIsPluggedIn])
          {
            v21 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
            [v18 setObject:v21 forKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];
          }

          else
          {
            [v18 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];
          }

          [(PLOperator *)self logProportionateAggregateEntry:v18 withStartDate:v13 withEndDate:v22];
        }
      }
    }
  }
}

- (void)addCellularConditionTimeAtDate:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLAppTimeService *)self lastCellularConditionTime];

  if (v5 && ![(PLAppTimeService *)self lastAirplaneModeStatus])
  {
    if ([(PLAppTimeService *)self lastTelephonyRegistrationStatus])
    {
      v6 = [(PLAppTimeService *)self lastSignalBar];
      if (v6 == -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"CellularCondition"];
    v8 = [(PLAppTimeService *)self lastCellularConditionTime];
    [v4 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 <= 0.0)
    {

      goto LABEL_20;
    }

    v11 = [(PLAppTimeService *)self bundleIDsInBackground];
    v12 = [v11 mutableCopy];

    if ([(PLAppTimeService *)self displayState]== 1 || [(PLAppTimeService *)self displayState]== 2)
    {
      v13 = [(PLAppTimeService *)self appsOnScreen];
      [v12 unionSet:v13];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withDate:v4];
          [v19 setObject:v18 forKeyedSubscript:@"BundleID"];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
          [v19 setObject:v20 forKeyedSubscript:@"SignalBars"];

          v21 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
          [v19 setObject:v21 forKeyedSubscript:@"CellUsageTime"];

          v22 = [(PLAppTimeService *)self lastCellularConditionTime];
          [(PLOperator *)self logProportionateAggregateEntry:v19 withStartDate:v22 withEndDate:v4];
        }

        v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }
  }

  [(PLAppTimeService *)self setLastCellularConditionTime:v4];
LABEL_20:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationCountFromUserInfo:(id)a3 AtDate:(id)a4
{
  v5 = [a3 objectForKey:{@"entry", a4}];
  v6 = [v5 objectForKeyedSubscript:@"NotificationBundleID"];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService addNotificationCountFromUserInfo:AtDate:];
  }

  v8 = [v5 entryDate];
  [(PLAppTimeService *)self logAppUsageEventForKey:@"NotificationCount" withBundleID:v6 withDate:v8];
}

- (void)addWidgetUseFromUserInfo:(id)a3 AtDate:(id)a4
{
  v5 = [a3 objectForKey:{@"entry", a4}];
  v6 = [v5 objectForKeyedSubscript:@"bundleID"];
  v7 = [(PLAppTimeService *)self getWidgetParentAppForBundleID:v6];

  if (v7)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService addWidgetUseFromUserInfo:AtDate:];
    }

    v9 = [v5 entryDate];
    [(PLAppTimeService *)self logAppUsageEventForKey:@"HasWidgetActive" withBundleID:v7 withDate:v9];
  }
}

- (void)addCarPlayUseFromLayoutEntry:(id)a3 AtDate:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 138412290;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{@"Display", v18}];
        v13 = [v12 intValue];

        if (v13 == 3)
        {
          v14 = [v11 objectForKeyedSubscript:@"bundleID"];
          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v18;
            v24 = v11;
            _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "Added app usage event: Carplay %@", buf, 0xCu);
          }

          v16 = [v11 entryDate];
          [(PLAppTimeService *)self logAppUsageEventForKey:@"HasCarPlayUsage" withBundleID:v14 withDate:v16];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)getWidgetParentAppForBundleID:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLAppTimeService *)self widgetParentBundleIDs];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v8 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginId" withValue:v4 withComparisonOperation:0];
    v10 = [MEMORY[0x277D3F2A0] sharedCore];
    v11 = [v10 storage];
    v20[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v13 = [v11 entriesForKey:@"PLApplicationAgent_EventNone_AllPlugins" withComparisons:v12];

    if ([v13 count])
    {
      v14 = [v13 firstObject];
      v9 = [v14 objectForKeyedSubscript:@"PluginParentApp"];
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEFAULT, "Added app usage event queryResult= %@", &v18, 0xCu);
      }

      if (v9)
      {
        [(NSMutableDictionary *)self->_widgetParentBundleIDs setObject:v9 forKeyedSubscript:v4];
LABEL_14:

        goto LABEL_15;
      }
    }

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService getWidgetParentAppForBundleID:];
    }

    v9 = 0;
    goto LABEL_14;
  }

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(PLAppTimeService *)self getWidgetParentAppForBundleID:v4];
  }

  v8 = [(PLAppTimeService *)self widgetParentBundleIDs];
  v9 = [v8 objectForKeyedSubscript:v4];
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)addAudioUseFromforBundleID:(id)a3 AtDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService addAudioUseFromforBundleID:AtDate:];
  }

  [(PLAppTimeService *)self logAppUsageEventForKey:@"HasAudioUsage" withBundleID:v7 withDate:v6];
}

- (void)logAppUsageEventForKey:(id)a3 withBundleID:(id)a4 withDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:self->_aggregatedEntryKeyForAppUsageEvents withDate:v10];
    [v11 setObject:v9 forKeyedSubscript:@"BundleID"];
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v8];
    [(PLOperator *)self logEntry:v11];
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService logAppUsageEventForKey:withBundleID:withDate:];
    }
  }

  else
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService logAppUsageEventForKey:withBundleID:withDate:];
    }
  }
}

- (id)backgroundAppToBundleIDmapping
{
  backgroundAppToBundleID = self->_backgroundAppToBundleID;
  if (!backgroundAppToBundleID)
  {
    self->_backgroundAppToBundleID = &unk_28714AFE8;

    backgroundAppToBundleID = self->_backgroundAppToBundleID;
  }

  return backgroundAppToBundleID;
}

- (void)updateAggregationsAtSBCWithDate:(id)a3 withLongestCoalitionBGTime:(double)a4 withCoalitionLength:(double)a5
{
  v7 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    [(PLAppTimeService *)self chunkScreenOnAggregationAtDate:v7];
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:? withLongestCoalitionBGTime:? withCoalitionLength:?];
    }

    v9 = [(PLAppTimeService *)self lastAPOnTimeSBC];

    if (v9)
    {
      v10 = [(PLAppTimeService *)self lastAPOnTimeSBC];
      [v7 timeIntervalSinceDate:v10];
      v12 = v11;

      if (v12 > 0.0)
      {
        [(PLAppTimeService *)self setLastAPOnTimeSBC:v7];
        [(PLAppTimeService *)self totalAPOnTimeSBC];
        [(PLAppTimeService *)self setTotalAPOnTimeSBC:v12 + v13];
      }
    }

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:? withLongestCoalitionBGTime:? withCoalitionLength:?];
    }

    v15 = [(PLAppTimeService *)self firstBGAppTimeSBC];

    if (v15)
    {
      [v7 timeIntervalSinceDate:self->_firstBGAppTimeSBC];
      if (v16 > 0.0)
      {
        v17 = v16;
        [(PLAppTimeService *)self setFirstBGAppTimeSBC:v7];
        [(PLAppTimeService *)self totalBGTimeSBC];
        [(PLAppTimeService *)self setTotalBGTimeSBC:v17 + v18];
      }
    }

    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:? withLongestCoalitionBGTime:? withCoalitionLength:?];
    }

    totalFGTimeSBC = self->_totalFGTimeSBC;
    v21 = a4 - totalFGTimeSBC;
    if (a4 - totalFGTimeSBC < self->_totalBGTimeSBC - totalFGTimeSBC)
    {
      v21 = self->_totalBGTimeSBC - totalFGTimeSBC;
    }

    v22 = self->_totalAPOnTimeSBC - totalFGTimeSBC;
    if (v21 < v22)
    {
      v22 = v21;
    }

    if (v22 >= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = PLLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    v25 = PLLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    v27 = PLLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)&self->_totalFGTimeSBC updateAggregationsAtSBCWithDate:v27 withLongestCoalitionBGTime:v28 withCoalitionLength:v29, v30, v31, v32, v33];
    }

    v34 = PLLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)&self->_totalBGTimeSBC updateAggregationsAtSBCWithDate:v34 withLongestCoalitionBGTime:v35 withCoalitionLength:v36, v37, v38, v39, v40];
    }

    v41 = PLLogCommon();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)&self->_totalAPOnTimeSBC updateAggregationsAtSBCWithDate:v41 withLongestCoalitionBGTime:v42 withCoalitionLength:v43, v44, v45, v46, v47];
    }

    v48 = PLLogCommon();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    [(PLAppTimeService *)self updateScreenOffTimeAtDate:v7 withDiff:v23];
    v49 = PLLogCommon();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:];
    }

    self->_totalAPOnTimeSBC = 0.0;
    self->_totalFGTimeSBC = 0.0;
    self->_totalBGTimeSBC = 0.0;
  }
}

- (void)chunkScreenOnAggregationAtDate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService chunkScreenOnAggregationAtDate:];
    }

    v6 = [(PLAppTimeService *)self lastScreenOnTimeSBC];

    if (v6)
    {
      v7 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
      [v4 timeIntervalSinceDate:v7];
      v9 = v8;

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
        v14 = 138412802;
        v15 = v11;
        v16 = 2112;
        v17 = v4;
        v18 = 2048;
        v19 = v9;
        _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_INFO, "[%@, %@] : %f", &v14, 0x20u);
      }

      if (v9 >= 0.0)
      {
        [(PLAppTimeService *)self setLastScreenOnTimeSBC:v4];
        [(PLAppTimeService *)self totalFGTimeSBC];
        [(PLAppTimeService *)self setTotalFGTimeSBC:v9 + v12];
        [(PLAppTimeService *)self updateScreenOnTimeAtDate:v4 withDiff:v9];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:(id)a3 withNewScreenState:(int)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D3F208] isHomePod];
  if (v6 && (v7 & 1) == 0)
  {
    if ([(PLAppTimeService *)self displayState]== a4)
    {
      v8 = PLLogCommon();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        goto LABEL_11;
      }

      LOWORD(v19) = 0;
      v9 = "No screen state change!";
LABEL_6:
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, v9, &v19, 2u);
      goto LABEL_10;
    }

    if (a4 == 1)
    {
      [(PLAppTimeService *)self setLastScreenOnTimeSBC:v6];
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:withNewScreenState:];
      }

      goto LABEL_10;
    }

    v11 = [(PLAppTimeService *)self lastScreenOnTimeSBC];

    if (!v11)
    {
      v8 = PLLogCommon();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      LOWORD(v19) = 0;
      v9 = "Screen turning off, but no open screen interval";
      goto LABEL_6;
    }

    v12 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
    [v6 timeIntervalSinceDate:v12];
    v14 = v13;

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
      v19 = 138412802;
      v20 = v18;
      v21 = 2112;
      v22 = v6;
      v23 = 2048;
      v24 = v14;
      _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "Stopping FG interval [%@, %@] : %f", &v19, 0x20u);
    }

    [(PLAppTimeService *)self setLastScreenOnTimeSBC:0];
    if (v14 >= 0.0)
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      [(PLAppTimeService *)self setTotalFGTimeSBC:v14 + v16];
      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:? withNewScreenState:?];
      }

      [(PLAppTimeService *)self updateScreenOnTimeAtDate:v6 withDiff:v14];
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:(id)a3 withNewAPState:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D3F208] isHomePod];
  if (!v6 || (v7 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (self->_isAPOn == v4)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v4)
  {
    [(PLAppTimeService *)self setLastAPOnTimeSBC:v6];
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

    goto LABEL_31;
  }

  v9 = [(PLAppTimeService *)self lastScreenOnTimeSBC];

  if (v9)
  {
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

    v11 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
    [v6 timeIntervalSinceDate:v11];
    v13 = v12;

    [(PLAppTimeService *)self setLastScreenOnTimeSBC:0];
    if (v13 >= 0.0)
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      [(PLAppTimeService *)self setTotalFGTimeSBC:v13 + v14];
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:? withNewScreenState:?];
      }

      [(PLAppTimeService *)self updateScreenOnTimeAtDate:v6 withDiff:v13];
    }
  }

  v16 = [(PLAppTimeService *)self lastAPOnTimeSBC];

  if (!v16)
  {
    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

    goto LABEL_24;
  }

  [v6 timeIntervalSinceDate:self->_lastAPOnTimeSBC];
  v18 = v17;
  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v30 = [(PLAppTimeService *)self lastAPOnTimeSBC];
    v32 = 138412802;
    v33 = v30;
    v34 = 2112;
    v35 = v6;
    v36 = 2048;
    v37 = v18;
    _os_log_debug_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEBUG, "Stopping AP interval [%@, %@] : %f", &v32, 0x20u);
  }

  [(PLAppTimeService *)self setLastAPOnTimeSBC:0];
  if (v18 > 0.0)
  {
    [(PLAppTimeService *)self totalAPOnTimeSBC];
    [(PLAppTimeService *)self setTotalAPOnTimeSBC:v18 + v20];
    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:? withNewAPState:?];
    }

LABEL_24:
  }

  v22 = [(PLAppTimeService *)self firstBGAppTimeSBC];

  if (v22)
  {
    v23 = [(PLAppTimeService *)self firstBGAppTimeSBC];
    [v6 timeIntervalSinceDate:v23];
    v25 = v24;

    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v31 = [(PLAppTimeService *)self firstBGAppTimeSBC];
      v32 = 138412802;
      v33 = v31;
      v34 = 2112;
      v35 = v6;
      v36 = 2048;
      v37 = v25;
      _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "Stopping BG interval [%@, %@] : %f", &v32, 0x20u);
    }

    [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
    if (v25 > 0.0)
    {
      [(PLAppTimeService *)self totalBGTimeSBC];
      [(PLAppTimeService *)self setTotalBGTimeSBC:v25 + v27];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:v6];
      v28 = [(PLAppTimeService *)self bundleIDsInBackground];
      [v28 removeAllObjects];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:? withNewAPState:?];
      }

      goto LABEL_31;
    }
  }

LABEL_32:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:(id)a3 withNewPluggedInState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_deviceIsPluggedIn != v4)
  {
    if (v4)
    {
      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
      }

      goto LABEL_13;
    }

    v17 = [(PLAppTimeService *)self lastPluggedInTime];

    if (v17)
    {
      v18 = [(PLAppTimeService *)self lastPluggedInTime];
      [v6 timeIntervalSinceDate:v18];
      v20 = v19;

      [(PLAppTimeService *)self updatePluggedInTimeAtDate:v6 withDiff:v20];
      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
      }

      v14 = self;
      v15 = 0;
      goto LABEL_20;
    }

    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
    }

LABEL_23:

    goto LABEL_24;
  }

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
  }

  if (!v4)
  {
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
    }

    goto LABEL_23;
  }

  v8 = [(PLAppTimeService *)self lastPluggedInTime];

  if (v8)
  {
    v9 = [(PLAppTimeService *)self lastPluggedInTime];
    [v6 timeIntervalSinceDate:v9];
    v11 = v10;

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
    }

    [(PLAppTimeService *)self updatePluggedInTimeAtDate:v6 withDiff:v11];
  }

LABEL_13:
  v14 = self;
  v15 = v6;
LABEL_20:
  [(PLAppTimeService *)v14 setLastPluggedInTime:v15];
LABEL_24:
}

- (void)updatePluggedInTimeAtDate:(id)a3 withDiff:(double)a4
{
  if (a3 && a4 >= 0.0)
  {
    v6 = MEMORY[0x277D3F190];
    v7 = a3;
    v8 = [v6 alloc];
    v9 = [(PLAppTimeService *)self entryKeyUsageTime];
    v12 = [v8 initWithEntryKey:v9 withDate:v7];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v12 setObject:v10 forKeyedSubscript:@"PluggedIn"];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v7 sinceDate:-a4];
    [(PLOperator *)self logProportionateAggregateEntry:v12 withStartDate:v11 withEndDate:v7];
  }
}

- (void)updateScreenOffTimeAtDate:(id)a3 withDiff:(double)a4
{
  v12 = a3;
  v6 = [MEMORY[0x277D3F208] isHomePod];
  if ((v6 & 1) == 0 && v12 && a4 >= 0.0)
  {
    v7 = objc_alloc(MEMORY[0x277D3F190]);
    v8 = [(PLAppTimeService *)self entryKeyUsageTime];
    v9 = [v7 initWithEntryKey:v8 withDate:v12];

    [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOn"];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v9 setObject:v10 forKeyedSubscript:@"ScreenOff"];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v12 sinceDate:-a4];
    [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:v11 withEndDate:v12];
  }

  MEMORY[0x2821F96F8](v6);
}

- (void)updateScreenOnTimeAtDate:(id)a3 withDiff:(double)a4
{
  v12 = a3;
  v6 = [MEMORY[0x277D3F208] isHomePod];
  if ((v6 & 1) == 0 && v12 && a4 >= 0.0)
  {
    v7 = objc_alloc(MEMORY[0x277D3F190]);
    v8 = [(PLAppTimeService *)self entryKeyUsageTime];
    v9 = [v7 initWithEntryKey:v8 withDate:v12];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v9 setObject:v10 forKeyedSubscript:@"ScreenOn"];

    [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOff"];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v12 sinceDate:-a4];
    [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:v11 withEndDate:v12];
  }

  MEMORY[0x2821F96F8](v6);
}

- (void)updateBackgroundAppsForBundleID:(id)a3 withState:(unsigned int)a4 withDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && v8 && v9)
  {
    if (a4 == 4)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:v9];
      v10 = [(PLAppTimeService *)self bundleIDsInBackground];
      v11 = [v10 count];

      if (!v11)
      {
        v12 = [(PLAppTimeService *)self excludedBundleIDsInBackground];
        v13 = [v12 containsObject:v8];

        if (v13)
        {
          v14 = PLLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
          }
        }

        else
        {
          [(PLAppTimeService *)self setFirstBGAppTimeSBC:v9];
          v14 = PLLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
          }
        }
      }

      v36 = [(PLAppTimeService *)self bundleIDsInBackground];
      [v36 addObject:v8];
LABEL_30:

      goto LABEL_31;
    }

    v15 = [(PLAppTimeService *)self bundleIDsInBackground];
    v16 = [v15 containsObject:v8];

    if (v16)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:v9];
    }

    v17 = [(PLAppTimeService *)self bundleIDsInBackground];
    v18 = [v17 containsObject:v8];

    if (v18)
    {
      v19 = [(PLAppTimeService *)self bundleIDsInBackground];
      [v19 removeObject:v8];

      v20 = [(PLAppTimeService *)self bundleIDsInBackground];
      v21 = [v20 count];

      if (v21 == 1)
      {
        v22 = [(PLAppTimeService *)self bundleIDsInBackground];
        v23 = [v22 anyObject];

        if (v23)
        {
          v24 = [(PLAppTimeService *)self excludedBundleIDsInBackground];
          v25 = [v24 containsObject:v23];

          if (v25)
          {
            v26 = PLLogCommon();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
            }

            v27 = [(PLAppTimeService *)self bundleIDsInBackground];
            [v27 removeObject:v23];
          }
        }
      }

      v28 = [(PLAppTimeService *)self bundleIDsInBackground];
      v29 = [v28 count];

      if (!v29)
      {
        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
        }

        v31 = [(PLAppTimeService *)self firstBGAppTimeSBC];

        if (v31)
        {
          v32 = [(PLAppTimeService *)self firstBGAppTimeSBC];
          [v9 timeIntervalSinceDate:v32];
          v34 = v33;

          [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
          if (v34 <= 0.0)
          {
            v36 = PLLogCommon();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
            }
          }

          else
          {
            [(PLAppTimeService *)self totalBGTimeSBC];
            [(PLAppTimeService *)self setTotalBGTimeSBC:v34 + v35];
            v36 = PLLogCommon();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [PLAppTimeService updateBackgroundAppsForBundleID:? withState:? withDate:?];
            }
          }
        }

        else
        {
          v36 = PLLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
          }
        }

        goto LABEL_30;
      }
    }
  }

LABEL_31:
}

- (id)generateExcludedBGBundleIDs
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.Bridge", @"com.apple.CloudKit.ShareBear", @"com.apple.PassbookUIService", 0}];
  }

  return v2;
}

- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4
{
  v4 = *MEMORY[0x277D3F5B8];
  v5 = a3;
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:v4 andName:@"AppRunTime"];
  LODWORD(v4) = [v5 isEqualToString:v6];

  if (v4)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [v8 dateByAddingTimeInterval:-1209600.0];
    [v9 timeIntervalSince1970];
    v11 = v10;
    v12 = [MEMORY[0x277CBEAA8] monotonicDate];
    v13 = [v12 dateByAddingTimeInterval:-1209600.0];
    [v13 timeIntervalSince1970];
    v15 = v14;
    v16 = [MEMORY[0x277CBEAA8] monotonicDate];
    v17 = [v16 dateByAddingTimeInterval:-2592000.0];
    [v17 timeIntervalSince1970];
    v19 = [v7 stringWithFormat:@"(timeInterval = %f AND timestamp < %f) OR (timeInterval = %f AND timestamp < %f AND (BundleID NOT IN (SELECT N.Name FROM PLAccountingOperator_Aggregate_RootNodeEnergy RNE JOIN PLAccountingOperator_EventNone_Nodes N WHERE N.ID = RNE.NodeID AND RNE.timeInterval = 86400.0 AND RNE.Energy > %f GROUP BY RNE.NodeID))) OR (timeInterval = %f AND timestamp < %f)", 0x40AC200000000000, v11, 0x40F5180000000000, v15, 0x40F86A0000000000, 0x40F5180000000000, v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)handleSleepCallBack:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 audioPlaybackBundleIDs];
  [v1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleDisplayCallback:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleDisplayCallback:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleDisplayCallback:(void *)a1 .cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 displayState];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleDisplayCallback:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 entryDate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handlePowerOutCallback:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Handle power out callback with payload %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioCallback:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_25EE51000, v1, OS_LOG_TYPE_ERROR, "audio: unknown operation for %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioCallback:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "audio: %@ stopped playing", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioCallback:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "audio: %@ started playing", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addForegroundTimeAtDate:(void *)a1 withNewLayoutElementsArray:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 lastScreenOnTime];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addForegroundTimeAtDate:(void *)a1 withNewLayoutElementsArray:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 lastScreenEventAccountingTime];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateScreenOnTimeInDBForBundleId:withTime:withDate:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addAudioTimeAtDate:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addAudioTimeAtDate:(void *)a1 .cold.2(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 appsOnScreen];
  [v3 count];
  [a2 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addAudioTimeAtDate:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 statusBarBundleID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addAudioTimeAtDate:forBundleID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "audio: incrementing Music's BG time by %.2f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addAudioTimeAtDate:forBundleID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationCountFromUserInfo:AtDate:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addWidgetUseFromUserInfo:AtDate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Added app usage event: Widget for bundleid  %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getWidgetParentAppForBundleID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 312) objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getWidgetParentAppForBundleID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addAudioUseFromforBundleID:AtDate:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAppUsageEventForKey:withBundleID:withDate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "App usage event: adding %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAppUsageEventForKey:withBundleID:withDate:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtSBCWithDate:(void *)a1 withLongestCoalitionBGTime:withCoalitionLength:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 totalFGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtSBCWithDate:(void *)a1 withLongestCoalitionBGTime:withCoalitionLength:.cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 totalAPOnTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtSBCWithDate:(void *)a1 withLongestCoalitionBGTime:withCoalitionLength:.cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 totalBGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "   Coalition interval length       %f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "   Longest coalition CPU time:     %f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtSBCWithDate:(uint64_t)a3 withLongestCoalitionBGTime:(uint64_t)a4 withCoalitionLength:(uint64_t)a5 .cold.7(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "   FG since last SBC:              %f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtSBCWithDate:(uint64_t)a3 withLongestCoalitionBGTime:(uint64_t)a4 withCoalitionLength:(uint64_t)a5 .cold.8(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "   BG since last SBC:              %f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtSBCWithDate:(uint64_t)a3 withLongestCoalitionBGTime:(uint64_t)a4 withCoalitionLength:(uint64_t)a5 .cold.9(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "   AP On since last SBC:           %f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "   Calculated Screen Off Usage:    %f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtSBCWithDate:withLongestCoalitionBGTime:withCoalitionLength:.cold.11()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)chunkScreenOnAggregationAtDate:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:(void *)a1 withNewScreenState:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 totalFGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:withNewScreenState:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Starting FG interval at %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:withNewAPState:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:(void *)a1 withNewAPState:.cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 totalAPOnTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:withNewAPState:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:(void *)a1 withNewAPState:.cold.5(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 totalBGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:withNewAPState:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Starting APOn interval at %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:withNewAPState:.cold.7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "stopping plugged in interval %.2fs since last update", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAggregationsAtDate:withNewPluggedInState:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "device has been plugged in for %.2fs since last update", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBackgroundAppsForBundleID:withState:withDate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Removing %@ from BG set", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBackgroundAppsForBundleID:withState:withDate:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "%@ is last BG'd app, stopping BG Timer", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBackgroundAppsForBundleID:withState:withDate:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateBackgroundAppsForBundleID:(void *)a1 withState:withDate:.cold.4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 totalBGTimeSBC];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBackgroundAppsForBundleID:withState:withDate:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateBackgroundAppsForBundleID:withState:withDate:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "%@ is first BG'd app, starting BG Timer", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBackgroundAppsForBundleID:withState:withDate:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Ignoring BG bundleID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end