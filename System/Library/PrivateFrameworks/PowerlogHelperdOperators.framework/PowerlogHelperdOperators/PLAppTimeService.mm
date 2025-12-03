@interface PLAppTimeService
+ (id)entryAggregateDefinitionAppRunTime;
+ (id)entryAggregateDefinitionAppUsageEvents;
+ (id)entryAggregateDefinitionCellularCondition;
+ (id)entryAggregateDefinitionMetrics;
+ (id)entryAggregateDefinitionUsageTime;
+ (id)entryAggregateDefinitions;
+ (void)load;
- (PLAppTimeService)init;
- (double)convertCPUTimeToBackgroundTime:(double)time withDuration:(double)duration;
- (double)getCPUTime:(id)time;
- (id)backgroundAppToBundleIDmapping;
- (id)buildCallBack:(id)back withGroup:(BOOL)group withHandler:(id)handler;
- (id)generateExcludedBGBundleIDs;
- (id)getWidgetParentAppForBundleID:(id)d;
- (id)remapCloudDocsBundleID:(id)d;
- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date;
- (void)addAudioAndLocationTimeAtDate:(id)date;
- (void)addAudioTimeAtDate:(id)date;
- (void)addAudioTimeAtDate:(id)date forBundleID:(id)d;
- (void)addAudioUseFromforBundleID:(id)d AtDate:(id)date;
- (void)addCarPlayUseFromLayoutEntry:(id)entry AtDate:(id)date;
- (void)addCellularConditionTimeAtDate:(id)date;
- (void)addForegroundTimeAtDate:(id)date withNewLayoutElementsArray:(id)array;
- (void)addNotificationCountFromUserInfo:(id)info AtDate:(id)date;
- (void)addNowPlayingTimeAtDate:(id)date;
- (void)addStatusBarTimeAtDate:(id)date;
- (void)addWidgetUseFromUserInfo:(id)info AtDate:(id)date;
- (void)chunkAppsOnScreenAtDate:(id)date;
- (void)chunkScreenOnAggregationAtDate:(id)date;
- (void)debugAppTimeService;
- (void)handleApplicationCallback:(id)callback;
- (void)handleAudioCallback:(id)callback;
- (void)handleBackgroundTransferCallback:(id)callback;
- (void)handleBatteryCallback:(id)callback;
- (void)handleCellularConditionCallback:(id)callback;
- (void)handleCoalitionCallback:(id)callback;
- (void)handleCoalitionCallback:(id)callback withNewCoalitionArray:(id)array;
- (void)handleDisplayCallback:(id)callback;
- (void)handleInCallServiceCallback:(id)callback;
- (void)handleNotificationCallback:(id)callback;
- (void)handleNowPlayingCallback:(id)callback;
- (void)handlePluginCallback:(id)callback;
- (void)handlePowerOutCallback:(id)callback;
- (void)handleScreenStateCallback:(id)callback;
- (void)handleSleepCallBack:(id)back;
- (void)handleStatusBarCallback:(id)callback;
- (void)handleTelephonyRegistrationCallback:(id)callback;
- (void)handleWakeCallBack:(id)back;
- (void)handleWidgetCallback:(id)callback;
- (void)initOperatorDependancies;
- (void)loadWatchKitExtensionsSet;
- (void)logAppUsageEventForKey:(id)key withBundleID:(id)d withDate:(id)date;
- (void)periodicUpdateAppRunTimeWithDate:(id)date;
- (void)resetLayoutElementsPLEntryArray:(id)array withNowDate:(id)date;
- (void)updateAggregationsAtDate:(id)date withNewAPState:(BOOL)state;
- (void)updateAggregationsAtDate:(id)date withNewPluggedInState:(BOOL)state;
- (void)updateAggregationsAtDate:(id)date withNewScreenState:(int)state;
- (void)updateAggregationsAtSBCWithDate:(id)date withLongestCoalitionBGTime:(double)time withCoalitionLength:(double)length;
- (void)updateAppRunTimeForBundleId:(id)id withAppStateUpdateType:(int)type withNowDate:(id)date;
- (void)updateBackgroundAppsForBundleID:(id)d withState:(unsigned int)state withDate:(id)date;
- (void)updateBackgroundTimeForAppStateEntry:(id)entry;
- (void)updateBackgroundTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date;
- (void)updateCoalitionsAppsOnScreenSet:(id)set;
- (void)updateInCallServiceTimeAtDate:(id)date;
- (void)updateInCallServiceTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date;
- (void)updatePiPModeAppsSet:(id)set withAppRole:(id)role;
- (void)updatePluggedInTimeAtDate:(id)date withDiff:(double)diff;
- (void)updatePowerOutTimeInDBForBundleId:(id)id;
- (void)updateScreenOffTimeAtDate:(id)date withDiff:(double)diff;
- (void)updateScreenOnTimeAtDate:(id)date withDiff:(double)diff;
- (void)updateScreenOnTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date;
@end

@implementation PLAppTimeService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAppTimeService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryAggregateDefinitions
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"AppRunTime";
  entryAggregateDefinitionAppRunTime = [self entryAggregateDefinitionAppRunTime];
  v12[0] = entryAggregateDefinitionAppRunTime;
  v11[1] = @"UsageTime";
  entryAggregateDefinitionUsageTime = [self entryAggregateDefinitionUsageTime];
  v12[1] = entryAggregateDefinitionUsageTime;
  v11[2] = @"Metrics";
  entryAggregateDefinitionMetrics = [self entryAggregateDefinitionMetrics];
  v12[2] = entryAggregateDefinitionMetrics;
  v11[3] = @"CellularCondition";
  entryAggregateDefinitionCellularCondition = [self entryAggregateDefinitionCellularCondition];
  v12[3] = entryAggregateDefinitionCellularCondition;
  v11[4] = @"AppUsageEvents";
  entryAggregateDefinitionAppUsageEvents = [self entryAggregateDefinitionAppUsageEvents];
  v12[4] = entryAggregateDefinitionAppUsageEvents;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v55[0] = commonTypeDict_StringFormat_withBundleID;
  v54[1] = @"ScreenOnTime";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v55[1] = commonTypeDict_RealFormat;
  v54[2] = @"BackgroundTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v55[2] = commonTypeDict_RealFormat2;
  v54[3] = @"ScreenOnPluggedInTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v55[3] = commonTypeDict_RealFormat3;
  v54[4] = @"BackgroundPluggedInTime";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v55[4] = commonTypeDict_RealFormat4;
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
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v55[7] = commonTypeDict_RealFormat5;
  v54[8] = @"BackgroundLocationPluggedInTime";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
  v55[8] = commonTypeDict_RealFormat6;
  v54[9] = @"BackgroundLocationAudioTime";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v55[9] = commonTypeDict_RealFormat7;
  v54[10] = @"BackgroundLocationAudioPluggedInTime";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
  v55[10] = commonTypeDict_RealFormat8;
  v54[11] = @"BackgroundAudioPlayingTime";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
  v55[11] = commonTypeDict_RealFormat9;
  v54[12] = @"BackgroundAudioPlayingTimePluggedIn";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
  v55[12] = commonTypeDict_RealFormat10;
  v54[13] = @"InCallScreenOnTime";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v55[13] = commonTypeDict_IntegerFormat;
  v54[14] = @"InCallBackgroundTime";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v55[14] = commonTypeDict_IntegerFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v22[0] = commonTypeDict_StringFormat_withBundleID;
  v21[1] = @"byteswritten";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v22[1] = commonTypeDict_IntegerFormat;
  v21[2] = @"bytesread";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v22[2] = commonTypeDict_IntegerFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v24[0] = commonTypeDict_StringFormat_withBundleID;
  v23[1] = @"SignalBars";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v24[1] = commonTypeDict_IntegerFormat;
  v23[2] = @"CellUsageTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v24[2] = commonTypeDict_IntegerFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_s];
    v23[0] = commonTypeDict_IntegerFormat_withUnit_s;
    v22[1] = @"ScreenOff";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_s];
    v23[1] = commonTypeDict_IntegerFormat_withUnit_s2;
    v22[2] = @"PluggedIn";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_s];
    v23[2] = commonTypeDict_IntegerFormat_withUnit_s3;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v36[0] = commonTypeDict_StringFormat_withBundleID;
  v35[1] = @"NotificationCount";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v36[1] = commonTypeDict_IntegerFormat;
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

  storage = [(PLOperator *)self storage];
  v9 = [storage entriesForKey:v5 withComparisons:v7];

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
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLAppTimeService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
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

- (id)buildCallBack:(id)back withGroup:(BOOL)group withHandler:(id)handler
{
  groupCopy = group;
  backCopy = back;
  handlerCopy = handler;
  if (groupCopy)
  {
    backCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupID_%@", backCopy];
  }

  else
  {
    backCopy = backCopy;
  }

  v11 = backCopy;
  v12 = objc_alloc(MEMORY[0x277D3F1A8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__PLAppTimeService_buildCallBack_withGroup_withHandler___block_invoke;
  v16[3] = &unk_279A5FE78;
  v17 = handlerCopy;
  v13 = handlerCopy;
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
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [v3 initWithFireDate:date interval:self target:sel_testService selector:0 userInfo:1 repeats:20.0];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v6 forMode:*MEMORY[0x277CBE640]];
}

- (void)handleWakeCallBack:(id)back
{
  v6 = [back objectForKey:@"entry"];
  entryDate = [v6 entryDate];
  [(PLAppTimeService *)self periodicUpdateAppRunTimeWithDate:entryDate];

  entryDate2 = [v6 entryDate];
  [(PLAppTimeService *)self updateAggregationsAtDate:entryDate2 withNewAPState:1];

  [(PLAppTimeService *)self setIsAPOn:1];
}

- (void)handleSleepCallBack:(id)back
{
  v4 = [back objectForKey:@"entry"];
  entryDate = [v4 entryDate];
  [(PLAppTimeService *)self periodicUpdateAppRunTimeWithDate:entryDate];

  entryDate2 = [v4 entryDate];
  [(PLAppTimeService *)self updateAggregationsAtDate:entryDate2 withNewAPState:0];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService handleSleepCallBack:?];
  }

  audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  [audioPlaybackBundleIDs removeAllObjects];

  [(PLAppTimeService *)self setIsAPOn:0];
  if ([(PLAppTimeService *)self inCallNow])
  {
    entryDate3 = [v4 entryDate];
    lastCallTime = [(PLAppTimeService *)self lastCallTime];
    [entryDate3 timeIntervalSinceDate:lastCallTime];
    v12 = v11;

    lastCallBundleID = [(PLAppTimeService *)self lastCallBundleID];
    lastCallTime2 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:lastCallBundleID withTime:lastCallTime2 withDate:v12];

    [(PLAppTimeService *)self setInCallNow:0];
  }
}

- (void)handleCoalitionCallback:(id)callback
{
  v4 = MEMORY[0x277CBEAA8];
  callbackCopy = callback;
  monotonicDate = [v4 monotonicDate];
  v6 = [callbackCopy objectForKey:@"group"];

  entryKeyPLCoalitionAgentEventIntervalCoalition = [(PLAppTimeService *)self entryKeyPLCoalitionAgentEventIntervalCoalition];
  v8 = [v6 objectForKeyedSubscript:entryKeyPLCoalitionAgentEventIntervalCoalition];

  [(PLAppTimeService *)self handleCoalitionCallback:monotonicDate withNewCoalitionArray:v8];
}

- (void)handleScreenStateCallback:(id)callback
{
  v4 = MEMORY[0x277CBEAA8];
  callbackCopy = callback;
  monotonicDate = [v4 monotonicDate];
  [(PLAppTimeService *)self addNowPlayingTimeAtDate:monotonicDate];
  [(PLAppTimeService *)self addStatusBarTimeAtDate:monotonicDate];
  [(PLAppTimeService *)self addCellularConditionTimeAtDate:monotonicDate];
  [(PLAppTimeService *)self addAudioTimeAtDate:monotonicDate];
  v6 = [callbackCopy objectForKey:@"group"];

  entryKeyPLScreenStateAgentScreenState = [(PLAppTimeService *)self entryKeyPLScreenStateAgentScreenState];
  v8 = [v6 objectForKeyedSubscript:entryKeyPLScreenStateAgentScreenState];

  [(PLAppTimeService *)self addForegroundTimeAtDate:monotonicDate withNewLayoutElementsArray:v8];
  [(PLAppTimeService *)self addCarPlayUseFromLayoutEntry:v8 AtDate:monotonicDate];
}

- (void)handleApplicationCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  [(PLAppTimeService *)self updateBackgroundTimeForAppStateEntry:v4];
}

- (void)handleBatteryCallback:(id)callback
{
  callbackCopy = callback;
  v4 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v5 = [v4 objectForKeyedSubscript:@"ExternalConnected"];
  bOOLValue = [v5 BOOLValue];

  v7 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v8 = [v7 objectForKeyedSubscript:@"CurrentCapacity"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v12 = [v11 objectForKeyedSubscript:@"MaxCapacity"];
  [v12 doubleValue];
  v14 = v13;

  v15 = 0.0;
  if (v14 > 0.0)
  {
    v15 = v10 * 100.0 / v14;
  }

  v16 = [PLUtilities isPingPongChargingWith:bOOLValue andBatteryLevelPercent:v15];
  v17 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v18 = [v17 objectForKeyedSubscript:@"IsCharging"];
  v19 = ([v18 BOOLValue] | v16) & 1;

  if (v19 != [(PLAppTimeService *)self deviceIsPluggedIn])
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAppTimeService *)self addForegroundTimeAtDate:monotonicDate withNewLayoutElementsArray:0];
    [(PLAppTimeService *)self updateInCallServiceTimeAtDate:monotonicDate];
    [(PLAppTimeService *)self addAudioTimeAtDate:monotonicDate];
    [(PLAppTimeService *)self addNowPlayingTimeAtDate:monotonicDate];
    [(PLAppTimeService *)self addStatusBarTimeAtDate:monotonicDate];
    [(PLAppTimeService *)self updateAggregationsAtDate:monotonicDate withNewPluggedInState:v19];
  }

  [(PLAppTimeService *)self setDeviceIsPluggedIn:v19];
}

- (void)handleNotificationCallback:(id)callback
{
  v4 = MEMORY[0x277CBEAA8];
  callbackCopy = callback;
  monotonicDate = [v4 monotonicDate];
  [(PLAppTimeService *)self addNotificationCountFromUserInfo:callbackCopy AtDate:monotonicDate];
}

- (void)handleWidgetCallback:(id)callback
{
  v4 = MEMORY[0x277CBEAA8];
  callbackCopy = callback;
  monotonicDate = [v4 monotonicDate];
  [(PLAppTimeService *)self addWidgetUseFromUserInfo:callbackCopy AtDate:monotonicDate];
}

- (void)handleDisplayCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKey:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"Active"];
  intValue = [v6 intValue];

  if (intValue == 2)
  {
    if (_os_feature_enabled_impl())
    {
      intValue = 2;
    }

    else
    {
      intValue = 1;
    }
  }

  if ([(PLAppTimeService *)self inCallNow]&& intValue != [(PLAppTimeService *)self displayState]&& ([(PLAppTimeService *)self displayState]== 1 || intValue == 1))
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService handleDisplayCallback:];
    }

    entryDate = [v5 entryDate];
    [(PLAppTimeService *)self updateInCallServiceTimeAtDate:entryDate];
  }

  v10 = [v5 objectForKeyedSubscript:@"Block"];
  v11 = [v10 isEqualToString:@"Backlight"];

  if (v11)
  {
    if (!intValue)
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleDisplayCallback:];
      }

      entryDate2 = [v5 entryDate];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:entryDate2];

      entryDate3 = [v5 entryDate];
      [(PLAppTimeService *)self addForegroundTimeAtDate:entryDate3 withNewLayoutElementsArray:0];
    }

    entryDate4 = [v5 entryDate];
    [(PLAppTimeService *)self updateAggregationsAtDate:entryDate4 withNewScreenState:intValue];

    if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
    {
      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleDisplayCallback:?];
      }

      if ([(PLAppTimeService *)self displayState]|| (intValue - 1) > 1)
      {
        goto LABEL_28;
      }

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService handleDisplayCallback:v5];
      }
    }

    else if ((intValue - 1) > 1)
    {
      goto LABEL_28;
    }

    entryDate5 = [v5 entryDate];
    [(PLAppTimeService *)self setLastScreenOnTime:entryDate5];

LABEL_28:
    [(PLAppTimeService *)self setDisplayState:intValue];
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
        v23 = [v20 stringWithFormat:@"Got display %@ %@ %@", callbackCopy, v21, v22, block, v30, v31, v32, v33];

        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleDisplayCallback:]"];
        [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:960];

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

- (void)handlePowerOutCallback:(id)callback
{
  callbackCopy = callback;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService handlePowerOutCallback:];
  }

  v6 = [callbackCopy objectForKey:@"time"];
  [(PLAppTimeService *)self updatePowerOutTimeInDBForBundleId:v6];
}

- (void)updatePowerOutTimeInDBForBundleId:(id)id
{
  idCopy = id;
  [idCopy doubleValue];
  v6 = v5;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v7 = objc_alloc(MEMORY[0x277D3F190]);
  aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
  v9 = [v7 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:monotonicDate];

  [v9 setObject:@"PowerOutAccessories" forKeyedSubscript:@"BundleID"];
  [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnTime"];
  [v9 setObject:idCopy forKeyedSubscript:@"BackgroundTime"];

  [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:monotonicDate sinceDate:v6];
  [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:monotonicDate withEndDate:v10];
}

- (void)handleInCallServiceCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKey:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"status"];
  if ([v6 isEqualToString:@"callStart"])
  {
    [(PLAppTimeService *)self setInCallNow:1];
    entryDate = [v5 entryDate];
    [(PLAppTimeService *)self setLastCallTime:entryDate];

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
    entryDate2 = [v5 entryDate];
    lastCallTime = [(PLAppTimeService *)self lastCallTime];
    [entryDate2 timeIntervalSinceDate:lastCallTime];
    v14 = v13;

    v15 = [v5 objectForKeyedSubscript:@"bundleID"];
    lastCallTime2 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:v15 withTime:lastCallTime2 withDate:v14];

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
      v23 = [v19 stringWithFormat:@"Got InCallService %@ %@ %@ %@", callbackCopy, v20, v21, v22];

      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleInCallServiceCallback:]"];
      [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:1001];

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

- (void)handlePluginCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKey:@"entry"];
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
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Plugin %@", callbackCopy, block, v19, v20, v21, v22];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handlePluginCallback:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:1015];

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

- (void)handleAudioCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKey:@"entry"];
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

      audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      entryDate = [v5 entryDate];
      [audioPlaybackBundleIDs setObject:entryDate forKey:v6];

      entryDate2 = [v5 entryDate];
      [(PLAppTimeService *)self addAudioTimeAtDate:entryDate2];
    }

    else
    {
      v14 = [v8 isEqualToString:@"AudioPlayback_Stop"];
      v15 = PLLogCommon();
      entryDate2 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService handleAudioCallback:];
        }

        entryDate3 = [v5 entryDate];
        [(PLAppTimeService *)self addAudioTimeAtDate:entryDate3];

        entryDate2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        [entryDate2 removeObjectForKey:v6];
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
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Audio callback %@", callbackCopy, block, v25, v26, v27, v28];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleAudioCallback:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:1045];

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

- (void)handleNowPlayingCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"State"];
  intValue = [v6 intValue];

  entryDate = [v5 entryDate];
  [(PLAppTimeService *)self addNowPlayingTimeAtDate:entryDate];

  if (intValue == 1)
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
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", callbackCopy, block, v18, v19, v20, v21];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleNowPlayingCallback:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1059];

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

- (void)handleStatusBarCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"Status"];
  intValue = [v6 intValue];

  entryDate = [v5 entryDate];
  [(PLAppTimeService *)self addStatusBarTimeAtDate:entryDate];

  if (intValue == 1)
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
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", callbackCopy, block, v18, v19, v20, v21];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleStatusBarCallback:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1073];

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

- (void)handleCellularConditionCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy objectForKeyedSubscript:@"entry"];
  v6 = [v5 objectForKeyedSubscript:@"subsId"];

  if (!v6 || ([v5 objectForKeyedSubscript:@"subsId"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "integerValue"), v7, (v8 & 0xFFFFFFFFFFFFFFFDLL) == 0))
  {
    v9 = [v5 objectForKeyedSubscript:@"signalBars"];
    integerValue = [v9 integerValue];

    v11 = [v5 objectForKeyedSubscript:@"airplaneMode"];
    v12 = [v11 isEqualToString:@"on"];

    if (integerValue >= 4)
    {
      integerValue = 4;
    }

    if (integerValue != [(PLAppTimeService *)self lastSignalBar]|| v12 != [(PLAppTimeService *)self lastAirplaneModeStatus])
    {
      entryDate = [v5 entryDate];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:entryDate];
    }

    [(PLAppTimeService *)self setLastSignalBar:integerValue];
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
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got CellularCondition callback %@", callbackCopy, block, v22, v23, v24, v25];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleCellularConditionCallback:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:1104];

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

- (void)handleTelephonyRegistrationCallback:(id)callback
{
  v4 = [callback objectForKeyedSubscript:@"entry"];
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
          entryDate = [v13 entryDate];
          [(PLAppTimeService *)self addCellularConditionTimeAtDate:entryDate];
        }

        [(PLAppTimeService *)self setLastTelephonyRegistrationStatus:v10];
        v4 = v13;
      }
    }
  }
}

- (id)remapCloudDocsBundleID:(id)d
{
  dCopy = d;
  if ([dCopy hasPrefix:@"com.apple.clouddocs."])
  {
    v4 = [dCopy substringFromIndex:{objc_msgSend(@"com.apple.clouddocs.", "length")}];
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

  v8 = dCopy;
LABEL_7:

  return v8;
}

- (void)handleBackgroundTransferCallback:(id)callback
{
  callbackCopy = callback;
  if (handleBackgroundTransferCallback__onceToken != -1)
  {
    [PLAppTimeService handleBackgroundTransferCallback:];
  }

  v5 = [callbackCopy objectForKeyedSubscript:@"entry"];
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
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1159];

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
      coalitionsAppsOnScreen = [(PLAppTimeService *)self coalitionsAppsOnScreen];
      v22 = [coalitionsAppsOnScreen containsObject:v17];

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
          lastPathComponent2 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v65 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:1176];

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
        entryDate = [v5 entryDate];
        [(PLBackgroundTransferEvent *)v23 setStartDate:entryDate];

        [(PLBackgroundTransferEvent *)v23 setBundleID:v17];
        v32 = [MEMORY[0x277CBEB58] set];
        [(PLBackgroundTransferEvent *)v23 setTaskUUIDs:v32];

        [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent setObject:v23 forKeyedSubscript:v17];
      }

      taskUUIDs = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      [taskUUIDs addObject:v18];
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
          lastPathComponent3 = [v36 lastPathComponent];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v66 logMessage:v35 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:1193];

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

      taskUUIDs2 = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      [taskUUIDs2 removeObject:v18];

      taskUUIDs3 = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      v43 = [taskUUIDs3 count];

      if (v43)
      {
        goto LABEL_39;
      }

      [handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent removeObjectForKey:v17];
      coalitionsAppsOnScreen2 = [(PLAppTimeService *)self coalitionsAppsOnScreen];
      v45 = [coalitionsAppsOnScreen2 containsObject:v17];

      if (v45)
      {
        goto LABEL_39;
      }

      entryDate2 = [v5 entryDate];
      startDate = [(PLBackgroundTransferEvent *)v23 startDate];
      [entryDate2 timeIntervalSinceDate:startDate];
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
          lastPathComponent4 = [v59 lastPathComponent];
          v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v67 logMessage:v58 fromFile:lastPathComponent4 fromFunction:v61 fromLineNumber:1205];

          v62 = v58;
          v63 = PLLogCommon();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v6 = 0x277D3F000;
        }
      }

      taskUUIDs = [(PLBackgroundTransferEvent *)v23 bundleID];
      startDate2 = [(PLBackgroundTransferEvent *)v23 startDate];
      [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:taskUUIDs withTime:startDate2 withDate:fmin(v56, 3600.0)];
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
        handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleIDToBackgroundTransferEvent=%@", handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent];
        v48 = MEMORY[0x277D3F178];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent5 = [v49 lastPathComponent];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
        [v48 logMessage:handleBackgroundTransferCallback__bundleIDToBackgroundTransferEvent fromFile:lastPathComponent5 fromFunction:v51 fromLineNumber:1213];

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

- (void)updateBackgroundTimeForAppStateEntry:(id)entry
{
  entryCopy = entry;
  if (entryCopy)
  {
    v17 = entryCopy;
    v5 = [entryCopy objectForKeyedSubscript:@"Identifier"];
    v6 = [v17 objectForKeyedSubscript:@"State"];
    intValue = [v6 intValue];

    if (!v5)
    {
      goto LABEL_17;
    }

    excludedBGAppsSet = [(PLAppTimeService *)self excludedBGAppsSet];
    if ([excludedBGAppsSet containsObject:v5])
    {
LABEL_16:

      goto LABEL_17;
    }

    backgroundAppToBundleID = [(PLAppTimeService *)self backgroundAppToBundleID];
    v10 = [backgroundAppToBundleID objectForKey:v5];
    if (v10)
    {

      goto LABEL_16;
    }

    piPModeApps = [(PLAppTimeService *)self PiPModeApps];
    v12 = [piPModeApps containsObject:v5];

    if (v12)
    {
LABEL_17:

      entryCopy = v17;
      goto LABEL_18;
    }

    entryDate = [v17 entryDate];
    [(PLAppTimeService *)self updateBackgroundAppsForBundleID:v5 withState:intValue withDate:entryDate];

    if (([(NSMutableSet *)self->_watchkitExtensions containsObject:v5]& 1) != 0)
    {
      if (intValue == 4 || intValue == 8)
      {
        excludedBGAppsSet = [v17 entryDate];
LABEL_12:
        selfCopy2 = self;
        v15 = v5;
        v16 = 0;
LABEL_15:
        [(PLAppTimeService *)selfCopy2 updateAppRunTimeForBundleId:v15 withAppStateUpdateType:v16 withNowDate:excludedBGAppsSet];
        goto LABEL_16;
      }

      excludedBGAppsSet = [v17 entryDate];
    }

    else
    {
      excludedBGAppsSet = [v17 entryDate];
      if (intValue == 4)
      {
        goto LABEL_12;
      }
    }

    selfCopy2 = self;
    v15 = v5;
    v16 = 1;
    goto LABEL_15;
  }

LABEL_18:
}

- (void)updateAppRunTimeForBundleId:(id)id withAppStateUpdateType:(int)type withNowDate:(id)date
{
  idCopy = id;
  dateCopy = date;
  inFlightBundleIDStartTime = [(PLAppTimeService *)self inFlightBundleIDStartTime];
  v10 = [inFlightBundleIDStartTime objectForKey:idCopy];

  if (type)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    [dateCopy timeIntervalSinceDate:v10];
    [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:idCopy withTime:v10 withDate:?];
    if (type != 2)
    {
      if (type != 1)
      {
        goto LABEL_9;
      }

      inFlightBundleIDStartTime2 = [(PLAppTimeService *)self inFlightBundleIDStartTime];
      [inFlightBundleIDStartTime2 removeObjectForKey:idCopy];
      goto LABEL_8;
    }
  }

  else if (v10)
  {
    goto LABEL_9;
  }

  inFlightBundleIDStartTime2 = [(PLAppTimeService *)self inFlightBundleIDStartTime];
  [inFlightBundleIDStartTime2 setObject:dateCopy forKeyedSubscript:idCopy];
LABEL_8:

LABEL_9:
}

- (void)updateBackgroundTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date
{
  idCopy = id;
  dateCopy = date;
  isAPOn = [(PLAppTimeService *)self isAPOn];
  if (time > 0.0 && isAPOn)
  {
    v11 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    dateCopy = [v11 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [dateCopy setObject:idCopy forKeyedSubscript:@"BundleID"];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [dateCopy setObject:v14 forKeyedSubscript:@"BackgroundTime"];

    [dateCopy setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnTime"];
    [dateCopy setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      [dateCopy setObject:v15 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    else
    {
      [dateCopy setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    v24 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:time];
    [(PLOperator *)self logProportionateAggregateEntry:dateCopy withStartDate:dateCopy withEndDate:v24];

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
    v27 = [dateCopy objectForKeyedSubscript:@"BundleID"];
    v28 = [dateCopy objectForKeyedSubscript:@"ScreenOnTime"];
    v29 = [dateCopy objectForKeyedSubscript:@"BackgroundTime"];
    v23 = [v26 stringWithFormat:@"Added Background %@ %@ %@", v27, v28, v29];

    v30 = MEMORY[0x277D3F178];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
    lastPathComponent = [v31 lastPathComponent];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateBackgroundTimeInDBForBundleId:withTime:withDate:]"];
    [v30 logMessage:v23 fromFile:lastPathComponent fromFunction:v33 fromLineNumber:1286];

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
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      dateCopy = [v17 stringWithFormat:@"Not adding time for %@, %@ %@", idCopy, v18, dateCopy];

      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateBackgroundTimeInDBForBundleId:withTime:withDate:]"];
      [v19 logMessage:dateCopy fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:1272];

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

- (void)periodicUpdateAppRunTimeWithDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  inFlightBundleIDStartTime = [(PLAppTimeService *)self inFlightBundleIDStartTime];
  allKeys = [inFlightBundleIDStartTime allKeys];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = allKeys;
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

        [(PLAppTimeService *)self updateAppRunTimeForBundleId:*(*(&v13 + 1) + 8 * v11++) withAppStateUpdateType:2 withNowDate:dateCopy, v13];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(PLAppTimeService *)self chunkAppsOnScreenAtDate:dateCopy];
  [(PLAppTimeService *)self updateInCallServiceTimeAtDate:dateCopy];
  [(PLAppTimeService *)self addAudioTimeAtDate:dateCopy];
  [(PLAppTimeService *)self addNowPlayingTimeAtDate:dateCopy];
  [(PLAppTimeService *)self addStatusBarTimeAtDate:dateCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)chunkAppsOnScreenAtDate:(id)date
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
  if (appsOnScreen && (v6 = appsOnScreen, -[PLAppTimeService appsOnScreen](self, "appsOnScreen"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, v8))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    appsOnScreen2 = [(PLAppTimeService *)self appsOnScreen];
    v10 = [appsOnScreen2 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
            objc_enumerationMutation(appsOnScreen2);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          lastScreenEventAccountingTime = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [dateCopy timeIntervalSinceDate:lastScreenEventAccountingTime];
          v18 = v17;

          lastScreenEventAccountingTime2 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [(PLAppTimeService *)self updateScreenOnTimeInDBForBundleId:v15 withTime:lastScreenEventAccountingTime2 withDate:v18];

          [(PLAppTimeService *)self setLastScreenEventAccountingTime:dateCopy];
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

        v12 = [appsOnScreen2 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v12);
    }
  }

  else
  {
    appsOnScreen2 = PLLogCommon();
    if (os_log_type_enabled(appsOnScreen2, OS_LOG_TYPE_FAULT))
    {
      [PLAppTimeService chunkAppsOnScreenAtDate:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addForegroundTimeAtDate:(id)date withNewLayoutElementsArray:(id)array
{
  v73 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  arrayCopy = array;
  lastScreenOnTime = [(PLAppTimeService *)self lastScreenOnTime];
  lastScreenEventAccountingTime = [(PLAppTimeService *)self lastScreenEventAccountingTime];
  [lastScreenOnTime timeIntervalSinceDate:lastScreenEventAccountingTime];
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
        lastScreenEventAccountingTime2 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
        lastScreenOnTime2 = [(PLAppTimeService *)self lastScreenOnTime];
        v16 = [v13 stringWithFormat:@"Pulling up last screen on time %@ %@", lastScreenEventAccountingTime2, lastScreenOnTime2];

        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService addForegroundTimeAtDate:withNewLayoutElementsArray:]"];
        [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:1324];

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

    lastScreenOnTime3 = [(PLAppTimeService *)self lastScreenOnTime];
    [(PLAppTimeService *)self setLastScreenEventAccountingTime:lastScreenOnTime3];
  }

  lastScreenEventAccountingTime3 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
  [dateCopy timeIntervalSinceDate:lastScreenEventAccountingTime3];
  v26 = v25;

  v27 = PLLogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService addForegroundTimeAtDate:? withNewLayoutElementsArray:?];
  }

  v57 = dateCopy;

  self->_musicPlayerForeground = 0;
  if ([arrayCopy count])
  {
    piPModeApps = [(PLAppTimeService *)self PiPModeApps];
    [piPModeApps removeAllObjects];

    appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
    [appsOnScreen removeAllObjects];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v30 = arrayCopy;
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

            appsOnScreen2 = [(PLAppTimeService *)self appsOnScreen];
            v40 = [v35 objectForKeyedSubscript:@"bundleID"];
            [appsOnScreen2 addObject:v40];
          }

          else
          {
            appsOnScreen2 = PLLogCommon();
            if (os_log_type_enabled(appsOnScreen2, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v68 = v35;
              _os_log_fault_impl(&dword_25EE51000, appsOnScreen2, OS_LOG_TYPE_FAULT, "Failed to retrieve bundle id for app on screen, bundle id is nil for entry %@", buf, 0xCu);
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v32);
    }
  }

  lastLayoutEntries = [(PLAppTimeService *)self lastLayoutEntries];
  v42 = [lastLayoutEntries count];

  if (v42)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    lastLayoutEntries2 = [(PLAppTimeService *)self lastLayoutEntries];
    v44 = [lastLayoutEntries2 countByEnumeratingWithState:&v58 objects:v71 count:16];
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
            objc_enumerationMutation(lastLayoutEntries2);
          }

          v48 = *(*(&v58 + 1) + 8 * j);
          v49 = [v48 objectForKeyedSubscript:@"bundleID"];
          lastScreenEventAccountingTime4 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
          [(PLAppTimeService *)self updateScreenOnTimeInDBForBundleId:v49 withTime:lastScreenEventAccountingTime4 withDate:v26];

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

        v45 = [lastLayoutEntries2 countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v45);
    }
  }

  [(PLAppTimeService *)self resetLayoutElementsPLEntryArray:arrayCopy withNowDate:v57];

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __71__PLAppTimeService_addForegroundTimeAtDate_withNewLayoutElementsArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addForegroundTimeAtDate_withNewLayoutElementsArray__classDebugEnabled = result;
  return result;
}

- (void)updateScreenOnTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date
{
  idCopy = id;
  dateCopy = date;
  excludedFGAppsSet = [(PLAppTimeService *)self excludedFGAppsSet];
  v11 = [excludedFGAppsSet containsObject:idCopy];
  if (!idCopy || (v11 & 1) != 0 || ![(PLAppTimeService *)self displayState])
  {
LABEL_26:

    goto LABEL_27;
  }

  if (time > 0.0)
  {
    if ([idCopy isEqualToString:*MEMORY[0x277D0AB98]])
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
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Lock screen diff was %f", *&time];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          lastPathComponent = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:]"];
          [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:1365];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      time = fmin(time, 60.0);
    }

    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:];
    }

    v20 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    excludedFGAppsSet = [v20 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [excludedFGAppsSet setObject:idCopy forKeyedSubscript:@"BundleID"];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [excludedFGAppsSet setObject:v22 forKeyedSubscript:@"ScreenOnTime"];

    [excludedFGAppsSet setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundTime"];
    [excludedFGAppsSet setObject:&unk_287147BC0 forKeyedSubscript:@"BackgroundPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      [excludedFGAppsSet setObject:v23 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    }

    else
    {
      [excludedFGAppsSet setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    }

    v24 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:time];
    [(PLOperator *)self logProportionateAggregateEntry:excludedFGAppsSet withStartDate:dateCopy withEndDate:v24];

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
        v27 = [excludedFGAppsSet objectForKeyedSubscript:@"BundleID"];
        v28 = [excludedFGAppsSet objectForKeyedSubscript:@"ScreenOnTime"];
        v29 = [excludedFGAppsSet objectForKeyedSubscript:@"BackgroundTime"];
        v30 = [v26 stringWithFormat:@"Added Foreground %@ %@ %@", v27, v28, v29];

        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent2 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateScreenOnTimeInDBForBundleId:withTime:withDate:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:1382];

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

- (void)resetLayoutElementsPLEntryArray:(id)array withNowDate:(id)date
{
  dateCopy = date;
  if (array)
  {
    [(PLAppTimeService *)self setLastLayoutEntries:array];
  }

  [(PLAppTimeService *)self setLastScreenEventAccountingTime:dateCopy];
}

- (void)updatePiPModeAppsSet:(id)set withAppRole:(id)role
{
  setCopy = set;
  if ([role isEqualToValue:&unk_287147BD8] && (-[NSMutableSet containsObject:](self->_PiPModeApps, "containsObject:", setCopy) & 1) == 0)
  {
    [(NSMutableSet *)self->_PiPModeApps addObject:setCopy];
  }
}

- (void)updateCoalitionsAppsOnScreenSet:(id)set
{
  setCopy = set;
  v4 = [(NSDictionary *)self->_backgroundAppToBundleID objectForKey:?];

  if (v4 && ([(NSMutableSet *)self->_coalitionsAppsOnScreen containsObject:setCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_coalitionsAppsOnScreen addObject:setCopy];
  }
}

- (double)getCPUTime:(id)time
{
  timeCopy = time;
  v4 = [timeCopy objectForKeyedSubscript:@"cpu_time"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [timeCopy objectForKeyedSubscript:@"cpu_time_billed_to_me"];
  [v7 doubleValue];
  v9 = v6 + v8;
  v10 = [timeCopy objectForKeyedSubscript:@"cpu_time_billed_to_others"];

  [v10 doubleValue];
  v12 = v9 - v11;

  return v12;
}

- (double)convertCPUTimeToBackgroundTime:(double)time withDuration:(double)duration
{
  result = time + time;
  if (result > duration)
  {
    result = duration;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)handleCoalitionCallback:(id)callback withNewCoalitionArray:(id)array
{
  v70 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v53 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Metrics"];
    array = [MEMORY[0x277CBEB18] array];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v51 = arrayCopy;
    obj = arrayCopy;
    v9 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v9)
    {
      v10 = v9;
      v54 = 0;
      entryDate = 0;
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
            v57 = entryDate;
            v16 = dictionary;
            v17 = [v13 objectForKeyedSubscript:@"byteswritten"];
            intValue = [v17 intValue];

            v19 = [v13 objectForKeyedSubscript:@"bytesread"];
            intValue2 = [v19 intValue];

            if (intValue2 > 0 || intValue >= 1)
            {
              v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v53 withDate:callbackCopy];
              [v22 setObject:v15 forKeyedSubscript:@"BundleId"];
              v23 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
              [v22 setObject:v23 forKeyedSubscript:@"byteswritten"];

              v24 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
              [v22 setObject:v24 forKeyedSubscript:@"bytesread"];

              [array addObject:v22];
            }

            v25 = [(NSDictionary *)self->_backgroundAppToBundleID objectForKey:v15];

            if (v25)
            {
              v26 = [(NSDictionary *)self->_backgroundAppToBundleID objectForKeyedSubscript:v15];

              dictionary = v16;
              if (([(NSMutableSet *)self->_coalitionsAppsOnScreen containsObject:v26]& 1) != 0)
              {
                entryDate = v57;
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

                entryDate = [v13 entryDate];

                v36 = [v13 objectForKeyedSubscript:@"timestampEnd"];

                v54 = v36;
              }
            }

            else
            {
              v26 = v15;
              dictionary = v16;
              entryDate = v57;
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
      entryDate = 0;
    }

    if ([array count])
    {
      v67 = v53;
      v68 = array;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      [(PLOperator *)self logEntries:v37 withGroupID:v53];
    }

    v38 = 0.0;
    v39 = 0.0;
    if (entryDate && v54)
    {
      [v54 timeIntervalSinceDate:entryDate];
      v39 = v40;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v41 = dictionary;
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

          [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:v46 withTime:entryDate withDate:v49];
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
    [(PLAppTimeService *)self updateAggregationsAtSBCWithDate:callbackCopy withLongestCoalitionBGTime:v38 withCoalitionLength:v39];

    arrayCopy = v51;
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)updateInCallServiceTimeAtDate:(id)date
{
  dateCopy = date;
  if ([(PLAppTimeService *)self inCallNow])
  {
    lastCallTime = [(PLAppTimeService *)self lastCallTime];
    [dateCopy timeIntervalSinceDate:lastCallTime];
    v6 = v5;

    lastCallBundleID = [(PLAppTimeService *)self lastCallBundleID];
    lastCallTime2 = [(PLAppTimeService *)self lastCallTime];
    [(PLAppTimeService *)self updateInCallServiceTimeInDBForBundleId:lastCallBundleID withTime:lastCallTime2 withDate:v6];

    [(PLAppTimeService *)self setLastCallTime:dateCopy];
  }
}

- (void)updateInCallServiceTimeInDBForBundleId:(id)id withTime:(double)time withDate:(id)date
{
  idCopy = id;
  dateCopy = date;
  inCallNow = [(PLAppTimeService *)self inCallNow];
  if (time > 0.0 && idCopy != 0 && inCallNow)
  {
    v13 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v15 = [v13 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [v15 setObject:idCopy forKeyedSubscript:@"BundleID"];
    displayState = [(PLAppTimeService *)self displayState];
    v17 = @"InCallBackgroundTime";
    if (displayState == 1)
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
    v21 = [MEMORY[0x277CCABB0] numberWithInt:time];
    [v15 setObject:v21 forKeyedSubscript:v19];

    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInt:time];
      [v15 setObject:v22 forKeyedSubscript:v20];
    }

    else
    {
      [v15 setObject:&unk_287147BC0 forKeyedSubscript:v20];
    }

    v23 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:time];
    [(PLOperator *)self logProportionateAggregateEntry:v15 withStartDate:dateCopy withEndDate:v23];

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
        displayState2 = [(PLAppTimeService *)self displayState];
        v27 = [v15 objectForKeyedSubscript:@"BundleID"];
        v28 = [v15 objectForKeyedSubscript:v19];
        v29 = [v15 objectForKeyedSubscript:@"BackgroundTime"];
        v30 = [v25 stringWithFormat:@"Added InCallService screen state: %d %@ %@ %@", displayState2, v27, v28, v29];

        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        lastPathComponent = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService updateInCallServiceTimeInDBForBundleId:withTime:withDate:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent fromFunction:v34 fromLineNumber:1537];

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

- (void)addAudioTimeAtDate:(id)date
{
  v48 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = MEMORY[0x277CBEB58];
  audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  allKeys = [audioPlaybackBundleIDs allKeys];
  v8 = [v5 setWithArray:allKeys];

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
    appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
    v11 = [appsOnScreen countByEnumeratingWithState:&v40 objects:v47 count:16];
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
            objc_enumerationMutation(appsOnScreen);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          audioPlaybackBundleIDs2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
          v17 = [audioPlaybackBundleIDs2 objectForKeyedSubscript:v15];

          if (v17)
          {
            audioPlaybackBundleIDs3 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
            [audioPlaybackBundleIDs3 setObject:dateCopy forKeyedSubscript:v15];

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
        v12 = [appsOnScreen countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v12);
    }

    appsOnScreen2 = [(PLAppTimeService *)self appsOnScreen];
    [v8 minusSet:appsOnScreen2];

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self addAudioTimeAtDate:v8];
    }

    statusBarBundleID = [(PLAppTimeService *)self statusBarBundleID];
    if (statusBarBundleID)
    {
      v23 = statusBarBundleID;
      statusBarBundleID2 = [(PLAppTimeService *)self statusBarBundleID];
      v25 = [v8 containsObject:statusBarBundleID2];

      if (v25)
      {
        [(PLAppTimeService *)self addAudioAndLocationTimeAtDate:dateCopy];
        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService addAudioTimeAtDate:?];
        }

        audioPlaybackBundleIDs4 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        statusBarBundleID3 = [(PLAppTimeService *)self statusBarBundleID];
        [audioPlaybackBundleIDs4 setObject:dateCopy forKeyedSubscript:statusBarBundleID3];

        statusBarBundleID4 = [(PLAppTimeService *)self statusBarBundleID];
        [v8 removeObject:statusBarBundleID4];
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

          [(PLAppTimeService *)self addAudioTimeAtDate:dateCopy forBundleID:*(*(&v36 + 1) + 8 * i)];
        }

        v32 = [v30 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v32);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)addAudioTimeAtDate:(id)date forBundleID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  v9 = [audioPlaybackBundleIDs objectForKeyedSubscript:dCopy];

  if (!v9)
  {
    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService addAudioTimeAtDate:forBundleID:];
    }

    goto LABEL_18;
  }

  [dateCopy timeIntervalSinceDate:v9];
  v11 = v10;
  audioPlaybackBundleIDs2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  [audioPlaybackBundleIDs2 setObject:dateCopy forKeyedSubscript:dCopy];

  if (v11 > 0.0)
  {
    v13 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v15 = [v13 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    [v15 setObject:dCopy forKeyedSubscript:@"BundleID"];
    if ([dCopy isEqualToString:@"com.apple.Music"])
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
      v24 = dCopy;
      v25 = 2048;
      v26 = v11;
      v27 = 1024;
      deviceIsPluggedIn = [(PLAppTimeService *)self deviceIsPluggedIn];
      _os_log_debug_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEBUG, "audio: adding to %@ playback time: %.2f pluggedIn:%d", &v23, 0x1Cu);
    }

    [(PLOperator *)self logProportionateAggregateEntry:v15 withStartDate:v9 withEndDate:dateCopy];
    [(PLAppTimeService *)self addAudioUseFromforBundleID:dCopy AtDate:dateCopy];
    goto LABEL_18;
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addNowPlayingTimeAtDate:(id)date
{
  dateCopy = date;
  nowPlayingBundleID = [(PLAppTimeService *)self nowPlayingBundleID];
  if (!nowPlayingBundleID)
  {
    goto LABEL_6;
  }

  v5 = nowPlayingBundleID;
  appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
  nowPlayingBundleID2 = [(PLAppTimeService *)self nowPlayingBundleID];
  v8 = [appsOnScreen containsObject:nowPlayingBundleID2];

  if (v8 || (-[PLAppTimeService lastNowPlayingTime](self, "lastNowPlayingTime"), v9 = objc_claimAutoreleasedReturnValue(), [dateCopy timeIntervalSinceDate:v9], v11 = v10, v9, v11 <= 0.0))
  {
LABEL_6:
    [(PLAppTimeService *)self setLastNowPlayingTime:dateCopy];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v14 = [v12 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    nowPlayingBundleID3 = [(PLAppTimeService *)self nowPlayingBundleID];
    [v14 setObject:nowPlayingBundleID3 forKeyedSubscript:@"BundleID"];

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

    lastNowPlayingTime = [(PLAppTimeService *)self lastNowPlayingTime];
    [(PLOperator *)self logProportionateAggregateEntry:v14 withStartDate:lastNowPlayingTime withEndDate:dateCopy];

    [(PLAppTimeService *)self setLastNowPlayingTime:dateCopy];
  }
}

- (void)addStatusBarTimeAtDate:(id)date
{
  dateCopy = date;
  statusBarBundleID = [(PLAppTimeService *)self statusBarBundleID];
  if (!statusBarBundleID)
  {
    goto LABEL_11;
  }

  v5 = statusBarBundleID;
  appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
  statusBarBundleID2 = [(PLAppTimeService *)self statusBarBundleID];
  v8 = [appsOnScreen containsObject:statusBarBundleID2];

  if (v8)
  {
    goto LABEL_11;
  }

  statusBarBundleID3 = [(PLAppTimeService *)self statusBarBundleID];
  if (statusBarBundleID3)
  {
    v10 = statusBarBundleID3;
    audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
    if (audioPlaybackBundleIDs)
    {
      v12 = audioPlaybackBundleIDs;
      audioPlaybackBundleIDs2 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      statusBarBundleID4 = [(PLAppTimeService *)self statusBarBundleID];
      v15 = [audioPlaybackBundleIDs2 objectForKey:statusBarBundleID4];

      if (v15)
      {
        [(PLAppTimeService *)self addAudioAndLocationTimeAtDate:dateCopy];
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  lastStatusBarTime = [(PLAppTimeService *)self lastStatusBarTime];
  [dateCopy timeIntervalSinceDate:lastStatusBarTime];
  v18 = v17;

  if (v18 > 0.0)
  {
    v19 = objc_alloc(MEMORY[0x277D3F190]);
    aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v21 = [v19 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

    statusBarBundleID5 = [(PLAppTimeService *)self statusBarBundleID];
    [v21 setObject:statusBarBundleID5 forKeyedSubscript:@"BundleID"];

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

    lastStatusBarTime2 = [(PLAppTimeService *)self lastStatusBarTime];
    [(PLOperator *)self logProportionateAggregateEntry:v21 withStartDate:lastStatusBarTime2 withEndDate:dateCopy];

    [(PLAppTimeService *)self setLastStatusBarTime:dateCopy];
    goto LABEL_12;
  }

LABEL_11:
  [(PLAppTimeService *)self setLastStatusBarTime:dateCopy];
LABEL_12:
}

- (void)addAudioAndLocationTimeAtDate:(id)date
{
  dateCopy = date;
  statusBarBundleID = [(PLAppTimeService *)self statusBarBundleID];
  if (statusBarBundleID)
  {
    v5 = statusBarBundleID;
    appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
    statusBarBundleID2 = [(PLAppTimeService *)self statusBarBundleID];
    v8 = [appsOnScreen containsObject:statusBarBundleID2];

    if ((v8 & 1) == 0)
    {
      audioPlaybackBundleIDs = [(PLAppTimeService *)self audioPlaybackBundleIDs];
      statusBarBundleID3 = [(PLAppTimeService *)self statusBarBundleID];
      v11 = [audioPlaybackBundleIDs objectForKey:statusBarBundleID3];

      if (v11)
      {
        lastStatusBarTime = [(PLAppTimeService *)self lastStatusBarTime];
        v13 = [lastStatusBarTime laterDate:v11];

        [dateCopy timeIntervalSinceDate:v13];
        if (v14 > 0.0)
        {
          v15 = v14;
          v16 = objc_alloc(MEMORY[0x277D3F190]);
          aggregatedEntryKeyForAppRunTime = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
          v18 = [v16 initWithEntryKey:aggregatedEntryKeyForAppRunTime withDate:dateCopy];

          statusBarBundleID4 = [(PLAppTimeService *)self statusBarBundleID];
          [v18 setObject:statusBarBundleID4 forKeyedSubscript:@"BundleID"];

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

          [(PLOperator *)self logProportionateAggregateEntry:v18 withStartDate:v13 withEndDate:dateCopy];
        }
      }
    }
  }
}

- (void)addCellularConditionTimeAtDate:(id)date
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  lastCellularConditionTime = [(PLAppTimeService *)self lastCellularConditionTime];

  if (lastCellularConditionTime && ![(PLAppTimeService *)self lastAirplaneModeStatus])
  {
    if ([(PLAppTimeService *)self lastTelephonyRegistrationStatus])
    {
      lastSignalBar = [(PLAppTimeService *)self lastSignalBar];
      if (lastSignalBar == -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      lastSignalBar = 0;
    }

    v7 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"CellularCondition"];
    lastCellularConditionTime2 = [(PLAppTimeService *)self lastCellularConditionTime];
    [dateCopy timeIntervalSinceDate:lastCellularConditionTime2];
    v10 = v9;

    if (v10 <= 0.0)
    {

      goto LABEL_20;
    }

    bundleIDsInBackground = [(PLAppTimeService *)self bundleIDsInBackground];
    v12 = [bundleIDsInBackground mutableCopy];

    if ([(PLAppTimeService *)self displayState]== 1 || [(PLAppTimeService *)self displayState]== 2)
    {
      appsOnScreen = [(PLAppTimeService *)self appsOnScreen];
      [v12 unionSet:appsOnScreen];
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
          v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withDate:dateCopy];
          [v19 setObject:v18 forKeyedSubscript:@"BundleID"];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:lastSignalBar];
          [v19 setObject:v20 forKeyedSubscript:@"SignalBars"];

          v21 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
          [v19 setObject:v21 forKeyedSubscript:@"CellUsageTime"];

          lastCellularConditionTime3 = [(PLAppTimeService *)self lastCellularConditionTime];
          [(PLOperator *)self logProportionateAggregateEntry:v19 withStartDate:lastCellularConditionTime3 withEndDate:dateCopy];
        }

        v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }
  }

  [(PLAppTimeService *)self setLastCellularConditionTime:dateCopy];
LABEL_20:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationCountFromUserInfo:(id)info AtDate:(id)date
{
  v5 = [info objectForKey:{@"entry", date}];
  v6 = [v5 objectForKeyedSubscript:@"NotificationBundleID"];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService addNotificationCountFromUserInfo:AtDate:];
  }

  entryDate = [v5 entryDate];
  [(PLAppTimeService *)self logAppUsageEventForKey:@"NotificationCount" withBundleID:v6 withDate:entryDate];
}

- (void)addWidgetUseFromUserInfo:(id)info AtDate:(id)date
{
  v5 = [info objectForKey:{@"entry", date}];
  v6 = [v5 objectForKeyedSubscript:@"bundleID"];
  v7 = [(PLAppTimeService *)self getWidgetParentAppForBundleID:v6];

  if (v7)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService addWidgetUseFromUserInfo:AtDate:];
    }

    entryDate = [v5 entryDate];
    [(PLAppTimeService *)self logAppUsageEventForKey:@"HasWidgetActive" withBundleID:v7 withDate:entryDate];
  }
}

- (void)addCarPlayUseFromLayoutEntry:(id)entry AtDate:(id)date
{
  v26 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [entryCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(entryCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{@"Display", v18}];
        intValue = [v12 intValue];

        if (intValue == 3)
        {
          v14 = [v11 objectForKeyedSubscript:@"bundleID"];
          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v18;
            v24 = v11;
            _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "Added app usage event: Carplay %@", buf, 0xCu);
          }

          entryDate = [v11 entryDate];
          [(PLAppTimeService *)self logAppUsageEventForKey:@"HasCarPlayUsage" withBundleID:v14 withDate:entryDate];
        }
      }

      v8 = [entryCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)getWidgetParentAppForBundleID:(id)d
{
  v20[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  widgetParentBundleIDs = [(PLAppTimeService *)self widgetParentBundleIDs];
  v6 = [widgetParentBundleIDs objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    widgetParentBundleIDs2 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginId" withValue:dCopy withComparisonOperation:0];
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    v20[0] = widgetParentBundleIDs2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v13 = [storage entriesForKey:@"PLApplicationAgent_EventNone_AllPlugins" withComparisons:v12];

    if ([v13 count])
    {
      firstObject = [v13 firstObject];
      v9 = [firstObject objectForKeyedSubscript:@"PluginParentApp"];
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = firstObject;
        _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEFAULT, "Added app usage event queryResult= %@", &v18, 0xCu);
      }

      if (v9)
      {
        [(NSMutableDictionary *)self->_widgetParentBundleIDs setObject:v9 forKeyedSubscript:dCopy];
LABEL_14:

        goto LABEL_15;
      }
    }

    firstObject = PLLogCommon();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService getWidgetParentAppForBundleID:];
    }

    v9 = 0;
    goto LABEL_14;
  }

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(PLAppTimeService *)self getWidgetParentAppForBundleID:dCopy];
  }

  widgetParentBundleIDs2 = [(PLAppTimeService *)self widgetParentBundleIDs];
  v9 = [widgetParentBundleIDs2 objectForKeyedSubscript:dCopy];
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)addAudioUseFromforBundleID:(id)d AtDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLAppTimeService addAudioUseFromforBundleID:AtDate:];
  }

  [(PLAppTimeService *)self logAppUsageEventForKey:@"HasAudioUsage" withBundleID:dCopy withDate:dateCopy];
}

- (void)logAppUsageEventForKey:(id)key withBundleID:(id)d withDate:(id)date
{
  keyCopy = key;
  dCopy = d;
  dateCopy = date;
  if (dCopy)
  {
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:self->_aggregatedEntryKeyForAppUsageEvents withDate:dateCopy];
    [v11 setObject:dCopy forKeyedSubscript:@"BundleID"];
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:keyCopy];
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

- (void)updateAggregationsAtSBCWithDate:(id)date withLongestCoalitionBGTime:(double)time withCoalitionLength:(double)length
{
  dateCopy = date;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    [(PLAppTimeService *)self chunkScreenOnAggregationAtDate:dateCopy];
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:? withLongestCoalitionBGTime:? withCoalitionLength:?];
    }

    lastAPOnTimeSBC = [(PLAppTimeService *)self lastAPOnTimeSBC];

    if (lastAPOnTimeSBC)
    {
      lastAPOnTimeSBC2 = [(PLAppTimeService *)self lastAPOnTimeSBC];
      [dateCopy timeIntervalSinceDate:lastAPOnTimeSBC2];
      v12 = v11;

      if (v12 > 0.0)
      {
        [(PLAppTimeService *)self setLastAPOnTimeSBC:dateCopy];
        [(PLAppTimeService *)self totalAPOnTimeSBC];
        [(PLAppTimeService *)self setTotalAPOnTimeSBC:v12 + v13];
      }
    }

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtSBCWithDate:? withLongestCoalitionBGTime:? withCoalitionLength:?];
    }

    firstBGAppTimeSBC = [(PLAppTimeService *)self firstBGAppTimeSBC];

    if (firstBGAppTimeSBC)
    {
      [dateCopy timeIntervalSinceDate:self->_firstBGAppTimeSBC];
      if (v16 > 0.0)
      {
        v17 = v16;
        [(PLAppTimeService *)self setFirstBGAppTimeSBC:dateCopy];
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
    v21 = time - totalFGTimeSBC;
    if (time - totalFGTimeSBC < self->_totalBGTimeSBC - totalFGTimeSBC)
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

    [(PLAppTimeService *)self updateScreenOffTimeAtDate:dateCopy withDiff:v23];
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

- (void)chunkScreenOnAggregationAtDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService chunkScreenOnAggregationAtDate:];
    }

    lastScreenOnTimeSBC = [(PLAppTimeService *)self lastScreenOnTimeSBC];

    if (lastScreenOnTimeSBC)
    {
      lastScreenOnTimeSBC2 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
      [dateCopy timeIntervalSinceDate:lastScreenOnTimeSBC2];
      v9 = v8;

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        lastScreenOnTimeSBC3 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
        v14 = 138412802;
        v15 = lastScreenOnTimeSBC3;
        v16 = 2112;
        v17 = dateCopy;
        v18 = 2048;
        v19 = v9;
        _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_INFO, "[%@, %@] : %f", &v14, 0x20u);
      }

      if (v9 >= 0.0)
      {
        [(PLAppTimeService *)self setLastScreenOnTimeSBC:dateCopy];
        [(PLAppTimeService *)self totalFGTimeSBC];
        [(PLAppTimeService *)self setTotalFGTimeSBC:v9 + v12];
        [(PLAppTimeService *)self updateScreenOnTimeAtDate:dateCopy withDiff:v9];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:(id)date withNewScreenState:(int)state
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if (dateCopy && (isHomePod & 1) == 0)
  {
    if ([(PLAppTimeService *)self displayState]== state)
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

    if (state == 1)
    {
      [(PLAppTimeService *)self setLastScreenOnTimeSBC:dateCopy];
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:withNewScreenState:];
      }

      goto LABEL_10;
    }

    lastScreenOnTimeSBC = [(PLAppTimeService *)self lastScreenOnTimeSBC];

    if (!lastScreenOnTimeSBC)
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

    lastScreenOnTimeSBC2 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
    [dateCopy timeIntervalSinceDate:lastScreenOnTimeSBC2];
    v14 = v13;

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      lastScreenOnTimeSBC3 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
      v19 = 138412802;
      v20 = lastScreenOnTimeSBC3;
      v21 = 2112;
      v22 = dateCopy;
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

      [(PLAppTimeService *)self updateScreenOnTimeAtDate:dateCopy withDiff:v14];
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:(id)date withNewAPState:(BOOL)state
{
  stateCopy = state;
  v38 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if (!dateCopy || (isHomePod & 1) != 0)
  {
    goto LABEL_32;
  }

  if (self->_isAPOn == stateCopy)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

LABEL_31:

    goto LABEL_32;
  }

  if (stateCopy)
  {
    [(PLAppTimeService *)self setLastAPOnTimeSBC:dateCopy];
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

    goto LABEL_31;
  }

  lastScreenOnTimeSBC = [(PLAppTimeService *)self lastScreenOnTimeSBC];

  if (lastScreenOnTimeSBC)
  {
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

    lastScreenOnTimeSBC2 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
    [dateCopy timeIntervalSinceDate:lastScreenOnTimeSBC2];
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

      [(PLAppTimeService *)self updateScreenOnTimeAtDate:dateCopy withDiff:v13];
    }
  }

  lastAPOnTimeSBC = [(PLAppTimeService *)self lastAPOnTimeSBC];

  if (!lastAPOnTimeSBC)
  {
    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewAPState:];
    }

    goto LABEL_24;
  }

  [dateCopy timeIntervalSinceDate:self->_lastAPOnTimeSBC];
  v18 = v17;
  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    lastAPOnTimeSBC2 = [(PLAppTimeService *)self lastAPOnTimeSBC];
    v32 = 138412802;
    v33 = lastAPOnTimeSBC2;
    v34 = 2112;
    v35 = dateCopy;
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

  firstBGAppTimeSBC = [(PLAppTimeService *)self firstBGAppTimeSBC];

  if (firstBGAppTimeSBC)
  {
    firstBGAppTimeSBC2 = [(PLAppTimeService *)self firstBGAppTimeSBC];
    [dateCopy timeIntervalSinceDate:firstBGAppTimeSBC2];
    v25 = v24;

    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      firstBGAppTimeSBC3 = [(PLAppTimeService *)self firstBGAppTimeSBC];
      v32 = 138412802;
      v33 = firstBGAppTimeSBC3;
      v34 = 2112;
      v35 = dateCopy;
      v36 = 2048;
      v37 = v25;
      _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "Stopping BG interval [%@, %@] : %f", &v32, 0x20u);
    }

    [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
    if (v25 > 0.0)
    {
      [(PLAppTimeService *)self totalBGTimeSBC];
      [(PLAppTimeService *)self setTotalBGTimeSBC:v25 + v27];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:dateCopy];
      bundleIDsInBackground = [(PLAppTimeService *)self bundleIDsInBackground];
      [bundleIDsInBackground removeAllObjects];

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

- (void)updateAggregationsAtDate:(id)date withNewPluggedInState:(BOOL)state
{
  stateCopy = state;
  dateCopy = date;
  if (self->_deviceIsPluggedIn != stateCopy)
  {
    if (stateCopy)
    {
      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
      }

      goto LABEL_13;
    }

    lastPluggedInTime = [(PLAppTimeService *)self lastPluggedInTime];

    if (lastPluggedInTime)
    {
      lastPluggedInTime2 = [(PLAppTimeService *)self lastPluggedInTime];
      [dateCopy timeIntervalSinceDate:lastPluggedInTime2];
      v20 = v19;

      [(PLAppTimeService *)self updatePluggedInTimeAtDate:dateCopy withDiff:v20];
      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
      }

      selfCopy2 = self;
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

  if (!stateCopy)
  {
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
    }

    goto LABEL_23;
  }

  lastPluggedInTime3 = [(PLAppTimeService *)self lastPluggedInTime];

  if (lastPluggedInTime3)
  {
    lastPluggedInTime4 = [(PLAppTimeService *)self lastPluggedInTime];
    [dateCopy timeIntervalSinceDate:lastPluggedInTime4];
    v11 = v10;

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLAppTimeService updateAggregationsAtDate:withNewPluggedInState:];
    }

    [(PLAppTimeService *)self updatePluggedInTimeAtDate:dateCopy withDiff:v11];
  }

LABEL_13:
  selfCopy2 = self;
  v15 = dateCopy;
LABEL_20:
  [(PLAppTimeService *)selfCopy2 setLastPluggedInTime:v15];
LABEL_24:
}

- (void)updatePluggedInTimeAtDate:(id)date withDiff:(double)diff
{
  if (date && diff >= 0.0)
  {
    v6 = MEMORY[0x277D3F190];
    dateCopy = date;
    v8 = [v6 alloc];
    entryKeyUsageTime = [(PLAppTimeService *)self entryKeyUsageTime];
    v12 = [v8 initWithEntryKey:entryKeyUsageTime withDate:dateCopy];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:diff];
    [v12 setObject:v10 forKeyedSubscript:@"PluggedIn"];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-diff];
    [(PLOperator *)self logProportionateAggregateEntry:v12 withStartDate:v11 withEndDate:dateCopy];
  }
}

- (void)updateScreenOffTimeAtDate:(id)date withDiff:(double)diff
{
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if ((isHomePod & 1) == 0 && dateCopy && diff >= 0.0)
  {
    v7 = objc_alloc(MEMORY[0x277D3F190]);
    entryKeyUsageTime = [(PLAppTimeService *)self entryKeyUsageTime];
    v9 = [v7 initWithEntryKey:entryKeyUsageTime withDate:dateCopy];

    [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOn"];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:diff];
    [v9 setObject:v10 forKeyedSubscript:@"ScreenOff"];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-diff];
    [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:v11 withEndDate:dateCopy];
  }

  MEMORY[0x2821F96F8](isHomePod);
}

- (void)updateScreenOnTimeAtDate:(id)date withDiff:(double)diff
{
  dateCopy = date;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if ((isHomePod & 1) == 0 && dateCopy && diff >= 0.0)
  {
    v7 = objc_alloc(MEMORY[0x277D3F190]);
    entryKeyUsageTime = [(PLAppTimeService *)self entryKeyUsageTime];
    v9 = [v7 initWithEntryKey:entryKeyUsageTime withDate:dateCopy];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:diff];
    [v9 setObject:v10 forKeyedSubscript:@"ScreenOn"];

    [v9 setObject:&unk_287147BC0 forKeyedSubscript:@"ScreenOff"];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-diff];
    [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:v11 withEndDate:dateCopy];
  }

  MEMORY[0x2821F96F8](isHomePod);
}

- (void)updateBackgroundAppsForBundleID:(id)d withState:(unsigned int)state withDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && dCopy && dateCopy)
  {
    if (state == 4)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:dateCopy];
      bundleIDsInBackground = [(PLAppTimeService *)self bundleIDsInBackground];
      v11 = [bundleIDsInBackground count];

      if (!v11)
      {
        excludedBundleIDsInBackground = [(PLAppTimeService *)self excludedBundleIDsInBackground];
        v13 = [excludedBundleIDsInBackground containsObject:dCopy];

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
          [(PLAppTimeService *)self setFirstBGAppTimeSBC:dateCopy];
          v14 = PLLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
          }
        }
      }

      bundleIDsInBackground2 = [(PLAppTimeService *)self bundleIDsInBackground];
      [bundleIDsInBackground2 addObject:dCopy];
LABEL_30:

      goto LABEL_31;
    }

    bundleIDsInBackground3 = [(PLAppTimeService *)self bundleIDsInBackground];
    v16 = [bundleIDsInBackground3 containsObject:dCopy];

    if (v16)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:dateCopy];
    }

    bundleIDsInBackground4 = [(PLAppTimeService *)self bundleIDsInBackground];
    v18 = [bundleIDsInBackground4 containsObject:dCopy];

    if (v18)
    {
      bundleIDsInBackground5 = [(PLAppTimeService *)self bundleIDsInBackground];
      [bundleIDsInBackground5 removeObject:dCopy];

      bundleIDsInBackground6 = [(PLAppTimeService *)self bundleIDsInBackground];
      v21 = [bundleIDsInBackground6 count];

      if (v21 == 1)
      {
        bundleIDsInBackground7 = [(PLAppTimeService *)self bundleIDsInBackground];
        anyObject = [bundleIDsInBackground7 anyObject];

        if (anyObject)
        {
          excludedBundleIDsInBackground2 = [(PLAppTimeService *)self excludedBundleIDsInBackground];
          v25 = [excludedBundleIDsInBackground2 containsObject:anyObject];

          if (v25)
          {
            v26 = PLLogCommon();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
            }

            bundleIDsInBackground8 = [(PLAppTimeService *)self bundleIDsInBackground];
            [bundleIDsInBackground8 removeObject:anyObject];
          }
        }
      }

      bundleIDsInBackground9 = [(PLAppTimeService *)self bundleIDsInBackground];
      v29 = [bundleIDsInBackground9 count];

      if (!v29)
      {
        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
        }

        firstBGAppTimeSBC = [(PLAppTimeService *)self firstBGAppTimeSBC];

        if (firstBGAppTimeSBC)
        {
          firstBGAppTimeSBC2 = [(PLAppTimeService *)self firstBGAppTimeSBC];
          [dateCopy timeIntervalSinceDate:firstBGAppTimeSBC2];
          v34 = v33;

          [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
          if (v34 <= 0.0)
          {
            bundleIDsInBackground2 = PLLogCommon();
            if (os_log_type_enabled(bundleIDsInBackground2, OS_LOG_TYPE_ERROR))
            {
              [PLAppTimeService updateBackgroundAppsForBundleID:withState:withDate:];
            }
          }

          else
          {
            [(PLAppTimeService *)self totalBGTimeSBC];
            [(PLAppTimeService *)self setTotalBGTimeSBC:v34 + v35];
            bundleIDsInBackground2 = PLLogCommon();
            if (os_log_type_enabled(bundleIDsInBackground2, OS_LOG_TYPE_DEBUG))
            {
              [PLAppTimeService updateBackgroundAppsForBundleID:? withState:? withDate:?];
            }
          }
        }

        else
        {
          bundleIDsInBackground2 = PLLogCommon();
          if (os_log_type_enabled(bundleIDsInBackground2, OS_LOG_TYPE_ERROR))
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

- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date
{
  v4 = *MEMORY[0x277D3F5B8];
  keyCopy = key;
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:v4 andName:@"AppRunTime"];
  LODWORD(v4) = [keyCopy isEqualToString:v6];

  if (v4)
  {
    v7 = MEMORY[0x277CCACA8];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [monotonicDate dateByAddingTimeInterval:-1209600.0];
    [v9 timeIntervalSince1970];
    v11 = v10;
    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    v13 = [monotonicDate2 dateByAddingTimeInterval:-1209600.0];
    [v13 timeIntervalSince1970];
    v15 = v14;
    monotonicDate3 = [MEMORY[0x277CBEAA8] monotonicDate];
    v17 = [monotonicDate3 dateByAddingTimeInterval:-2592000.0];
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