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

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_264(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) periodicUpdateAppRunTimeWithDate:v2];
  [*(a1 + 32) chunkScreenOnAggregationAtDate:v2];
  [*(a1 + 32) updateAggregationsAtDate:v2 withNewPluggedInState:{objc_msgSend(*(a1 + 32), "deviceIsPluggedIn")}];
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_258(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_259;
    v17 = &unk_27825A310;
    v18 = @"AppTimeService";
    v19 = v5;
    if (qword_2811F3E18 != -1)
    {
      dispatch_once(&qword_2811F3E18, &v14);
    }

    v6 = byte_2811F3DF9;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device Woke Up", v14, v15, v16, v17];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService initOperatorDependancies]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:667];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) handleWakeCallBack:{v3, v14, v15, v16, v17}];

  v13 = *MEMORY[0x277D85DE8];
}

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
  v57[0] = &unk_282C1BB78;
  v57[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F590];
  v56[2] = *MEMORY[0x277D3F4A0];
  v56[3] = v3;
  v57[2] = MEMORY[0x277CBEC38];
  v57[3] = &unk_282C0CFF0;
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
  v53 = &unk_282C0D008;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v55[5] = v31;
  v54[6] = @"BackgroundLocationTime";
  v50 = v4;
  v51 = &unk_282C0D008;
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
  v48[0] = &unk_282C1BB88;
  v46 = *MEMORY[0x277D3F470];
  v10 = v46;
  v47 = &unk_282C1BB98;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v48[1] = &unk_282C1BBA8;
  v49[0] = v11;
  v44 = v10;
  v45 = &unk_282C1BBB8;
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
  v24[0] = &unk_282C1BBC8;
  v24[1] = MEMORY[0x277CBEC38];
  v24[2] = MEMORY[0x277CBEC38];
  v24[3] = &unk_282C0D020;
  v23[4] = *MEMORY[0x277D3F588];
  v24[4] = &unk_282C1BBD8;
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
  v19 = &unk_282C1BB88;
  v17 = *MEMORY[0x277D3F470];
  v18 = &unk_282C1BB98;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v25[3] = *MEMORY[0x277D3F488];
  v26[2] = v12;
  v26[3] = &unk_282C13FC8;
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
  v26[0] = &unk_282C1BBE8;
  v26[1] = MEMORY[0x277CBEC38];
  v26[2] = MEMORY[0x277CBEC38];
  v26[3] = &unk_282C0D020;
  v25[4] = *MEMORY[0x277D3F588];
  v26[4] = &unk_282C1BBD8;
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
  v21 = &unk_282C1BB88;
  v19 = *MEMORY[0x277D3F470];
  v20 = &unk_282C1BB98;
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
    v25[0] = &unk_282C1BBF8;
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
    v20 = &unk_282C1BB88;
    v18 = *MEMORY[0x277D3F470];
    v19 = &unk_282C1BC08;
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
  v38[0] = &unk_282C1BBC8;
  v38[1] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277D3F588];
  v37[2] = *MEMORY[0x277D3F590];
  v37[3] = v4;
  v38[2] = &unk_282C0D020;
  v38[3] = &unk_282C1BC18;
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
  v34[0] = &unk_282C0D038;
  v34[1] = v3;
  v33 = *MEMORY[0x277D3F480];
  v8 = v33;
  v34[2] = &unk_282C0D038;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v32 count:3];
  v36[2] = v9;
  v35[3] = @"HasCarPlayUsage";
  v30[0] = v6;
  v30[1] = v7;
  v31[0] = &unk_282C0D038;
  v31[1] = v3;
  v30[2] = v8;
  v31[2] = &unk_282C0D038;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v36[3] = v10;
  v35[4] = @"HasAudioUsage";
  v28[0] = v6;
  v28[1] = v7;
  v29[0] = &unk_282C0D038;
  v29[1] = v3;
  v28[2] = v8;
  v29[2] = &unk_282C0D038;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v36[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
  v40[1] = v12;
  v39[2] = *MEMORY[0x277D3F478];
  v26 = &unk_282C1BBA8;
  v24 = *MEMORY[0x277D3F470];
  v25 = &unk_282C1BC18;
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
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
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
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    v3 = [MEMORY[0x277CBEAA8] monotonicDate];
    v4 = _os_feature_enabled_impl();
    v5 = MEMORY[0x277D3F5E8];
    if (v4)
    {
      v6 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
      v7 = [(PLOperator *)self storage];
      v8 = [v7 lastEntryForKey:v6 withFilters:&unk_282C13FE0];

      if (v8)
      {
        v9 = [v8 objectForKeyedSubscript:@"Active"];
        self->_displayState = [v9 intValue];
      }

      else
      {
        self->_displayState = 0;
      }
    }

    else
    {
      self->_displayState = 0;
    }

    self->_deviceIsPluggedIn = 0;
    v10 = [MEMORY[0x277CBEAA8] monotonicDate];
    lastScreenOnTime = self->_lastScreenOnTime;
    self->_lastScreenOnTime = v10;

    objc_storeStrong(&self->_lastScreenEventAccountingTime, self->_lastScreenOnTime);
    v12 = *MEMORY[0x277D3F5B8];
    v13 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
    aggregatedEntryKeyForAppRunTime = self->_aggregatedEntryKeyForAppRunTime;
    self->_aggregatedEntryKeyForAppRunTime = v13;

    v15 = [(PLOperator *)PLAppTimeService entryKeyForType:v12 andName:@"AppUsageEvents"];
    aggregatedEntryKeyForAppUsageEvents = self->_aggregatedEntryKeyForAppUsageEvents;
    self->_aggregatedEntryKeyForAppUsageEvents = v15;

    v17 = objc_opt_new();
    widgetParentBundleIDs = self->_widgetParentBundleIDs;
    self->_widgetParentBundleIDs = v17;

    v19 = [(PLAppTimeService *)self backgroundAppToBundleIDmapping];
    backgroundAppToBundleID = self->_backgroundAppToBundleID;
    self->_backgroundAppToBundleID = v19;

    v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.InCallService", 0}];
    excludedFGAppsSet = self->_excludedFGAppsSet;
    self->_excludedFGAppsSet = v21;

    v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.mobilemail", @"com.apple.InCallService", @"com.apple.MobileSMS", @"com.apple.mobileslideshow", @"com.apple.Music", 0}];
    excludedBGAppsSet = self->_excludedBGAppsSet;
    self->_excludedBGAppsSet = v23;

    v25 = objc_opt_new();
    inFlightBundleIDStartTime = self->_inFlightBundleIDStartTime;
    self->_inFlightBundleIDStartTime = v25;

    self->_inCallNow = 0;
    objc_storeStrong(&self->_lastCallTime, v3);
    lastCallBundleID = self->_lastCallBundleID;
    self->_lastCallBundleID = 0;

    v28 = objc_opt_new();
    coalitionsAppsOnScreen = self->_coalitionsAppsOnScreen;
    self->_coalitionsAppsOnScreen = v28;

    v30 = objc_opt_new();
    appsOnScreen = self->_appsOnScreen;
    self->_appsOnScreen = v30;

    v32 = objc_opt_new();
    PiPModeApps = self->_PiPModeApps;
    self->_PiPModeApps = v32;

    [(PLAppTimeService *)self loadWatchKitExtensionsSet];
    nowPlayingBundleID = self->_nowPlayingBundleID;
    self->_nowPlayingBundleID = 0;

    statusBarBundleID = self->_statusBarBundleID;
    self->_statusBarBundleID = 0;

    self->_musicPlayerForeground = 0;
    objc_storeStrong(&self->_lastNowPlayingTime, v3);
    objc_storeStrong(&self->_lastStatusBarTime, v3);
    self->_isAPOn = 1;
    lastCellularConditionTime = self->_lastCellularConditionTime;
    self->_lastCellularConditionTime = 0;

    self->_lastSignalBar = -1;
    self->_lastTelephonyRegistrationStatus = 1;
    self->_lastAirplaneModeStatus = 0;
    v37 = objc_opt_new();
    audioPlaybackBundleIDs = self->_audioPlaybackBundleIDs;
    self->_audioPlaybackBundleIDs = v37;

    if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
    {
      [(PLAppTimeService *)self setLastAPOnTimeSBC:v3];
      [(PLAppTimeService *)self setTotalBGTimeSBC:0.0];
      [(PLAppTimeService *)self setTotalFGTimeSBC:0.0];
      if (self->_displayState == 1)
      {
        v39 = v3;
      }

      else
      {
        v39 = 0;
      }

      [(PLAppTimeService *)self setLastScreenOnTimeSBC:v39];
      [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
      v40 = objc_opt_new();
      [(PLAppTimeService *)self setBundleIDsInBackground:v40];

      v41 = [(PLOperator *)PLAppTimeService entryKeyForType:v12 andName:@"UsageTime"];
      entryKeyUsageTime = self->_entryKeyUsageTime;
      self->_entryKeyUsageTime = v41;

      v43 = [(PLAppTimeService *)self generateExcludedBGBundleIDs];
      [(PLAppTimeService *)self setExcludedBundleIDsInBackground:v43];

      if (self->_deviceIsPluggedIn)
      {
        v44 = v3;
      }

      else
      {
        v44 = 0;
      }

      [(PLAppTimeService *)self setLastPluggedInTime:v44];
    }

    v45 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoalitionInterval"];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke;
    v108[3] = &unk_27825A2E8;
    v108[4] = self;
    v46 = [(PLAppTimeService *)self buildCallBack:v45 withGroup:1 withHandler:v108];
    [(PLAppTimeService *)self setCoalitionCallback:v46];

    entryKeyPLCoalitionAgentEventIntervalCoalition = self->_entryKeyPLCoalitionAgentEventIntervalCoalition;
    self->_entryKeyPLCoalitionAgentEventIntervalCoalition = v45;
    v48 = v45;

    v49 = *MEMORY[0x277D3F5D0];
    v50 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];

    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2;
    v107[3] = &unk_27825A2E8;
    v107[4] = self;
    v51 = [(PLAppTimeService *)self buildCallBack:v50 withGroup:1 withHandler:v107];
    [(PLAppTimeService *)self setScreenstateCallback:v51];

    entryKeyPLScreenStateAgentScreenState = self->_entryKeyPLScreenStateAgentScreenState;
    self->_entryKeyPLScreenStateAgentScreenState = v50;
    v53 = v50;

    v54 = [(PLOperator *)PLApplicationAgent entryKeyForType:v49 andName:@"Application"];

    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_3;
    v106[3] = &unk_27825A2E8;
    v106[4] = self;
    v55 = [(PLAppTimeService *)self buildCallBack:v54 withGroup:0 withHandler:v106];
    [(PLAppTimeService *)self setApplicationCallback:v55];

    v56 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];

    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_4;
    v105[3] = &unk_27825A2E8;
    v105[4] = self;
    v57 = [(PLAppTimeService *)self buildCallBack:v56 withGroup:0 withHandler:v105];
    [(PLAppTimeService *)self setBatteryCallback:v57];

    if (+[PLDisplayAgent shouldLogDisplay])
    {
      v58 = [(PLOperator *)PLDisplayAgent entryKeyForType:*v5 andName:@"Display"];

      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_5;
      v104[3] = &unk_27825A2E8;
      v104[4] = self;
      v59 = [(PLAppTimeService *)self buildCallBack:v58 withGroup:0 withHandler:v104];
      [(PLAppTimeService *)self setDisplayCallback:v59];

      v56 = v58;
    }

    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_6;
    v103[3] = &unk_27825A2E8;
    v103[4] = self;
    v60 = [(PLAppTimeService *)self buildCallBack:@"PLXPCAgent_EventForward_InCallService" withGroup:0 withHandler:v103];
    [(PLAppTimeService *)self setInCallServiceCallback:v60];

    v61 = PLLogCommon();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v61, OS_LOG_TYPE_DEBUG, "Calling power out", buf, 2u);
    }

    v62 = objc_alloc(MEMORY[0x277D3F1F0]);
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_226;
    v101[3] = &unk_2782597E8;
    v101[4] = self;
    v63 = [v62 initWithOperator:self forNotification:@"com.apple.PerfPowerServices.powerOut" withBlock:v101];
    [(PLAppTimeService *)self setPowerOutCallback:v63];

    v64 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_228;
    v100[3] = &unk_27825A2E8;
    v100[4] = self;
    v65 = [(PLAppTimeService *)self buildCallBack:v64 withGroup:0 withHandler:v100];
    [(PLAppTimeService *)self setPluginCallback:v65];

    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_232;
    v99[3] = &unk_27825A2E8;
    v99[4] = self;
    v66 = [(PLAppTimeService *)self buildCallBack:@"PLAudioAgent_EventPoint_AudioApp" withGroup:0 withHandler:v99];
    [(PLAppTimeService *)self setAudioCallback:v66];

    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_3_236;
    v98[3] = &unk_27825A2E8;
    v98[4] = self;
    v67 = [(PLAppTimeService *)self buildCallBack:@"PLAudioAgent_EventForward_NowPlaying" withGroup:0 withHandler:v98];
    [(PLAppTimeService *)self setNowPlayingCallback:v67];

    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_4_240;
    v97[3] = &unk_27825A2E8;
    v97[4] = self;
    v68 = [(PLAppTimeService *)self buildCallBack:@"PLLocationAgent_EventForward_StatusBar" withGroup:0 withHandler:v97];
    [(PLAppTimeService *)self setStatusBarCallback:v68];

    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_5_244;
    v96[3] = &unk_27825A2E8;
    v96[4] = self;
    v69 = [(PLAppTimeService *)self buildCallBack:@"PLXPCAgent_EventPoint_BackgroundTransfer" withGroup:0 withHandler:v96];
    [(PLAppTimeService *)self setBackgroundTransferCallback:v69];

    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_6_246;
    v95[3] = &unk_2782597E8;
    v95[4] = self;
    v70 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v95];
    canSleepEntryNotifications = self->_canSleepEntryNotifications;
    self->_canSleepEntryNotifications = v70;

    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_258;
    v94[3] = &unk_2782597E8;
    v94[4] = self;
    v72 = [MEMORY[0x277D3F1A8] wakeEntryNotificationWithOperator:self withBlock:v94];
    wakeEntryNotifications = self->_wakeEntryNotifications;
    self->_wakeEntryNotifications = v72;

    [(PLOperator *)self defaultDoubleForKey:@"RunTimeAggregatorTimerCadence"];
    v75 = v74;
    v76 = objc_alloc(MEMORY[0x277D3F250]);
    v77 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v75];
    v78 = [(PLOperator *)self workQueue];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_264;
    v93[3] = &unk_278259C40;
    v93[4] = self;
    v79 = [v76 initWithFireDate:v77 withInterval:1 withTolerance:0 repeats:v78 withUserInfo:v93 withQueue:v75 withBlock:0.0];
    runTimeAggregatorTimer = self->_runTimeAggregatorTimer;
    self->_runTimeAggregatorTimer = v79;

    v81 = [(PLAppTimeService *)self displayCallback];
    [v81 requestEntry];

    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_269;
    v92[3] = &unk_27825A2E8;
    v92[4] = self;
    v82 = [(PLAppTimeService *)self buildCallBack:@"PLBBAgent_EventPoint_TelephonyActivity" withGroup:0 withHandler:v92];
    [(PLAppTimeService *)self setCellularConditionCallback:v82];

    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_3_273;
    v91[3] = &unk_27825A2E8;
    v91[4] = self;
    v83 = [(PLAppTimeService *)self buildCallBack:@"PLBBAgent_EventForward_TelephonyRegistration" withGroup:0 withHandler:v91];
    [(PLAppTimeService *)self setTelephonyRegistrationCallback:v83];

    v84 = *v5;
    v85 = [(PLOperator *)PLSpringBoardAgent entryKeyForType:*v5 andName:@"SBNotifications"];
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_4_275;
    v90[3] = &unk_27825A2E8;
    v90[4] = self;
    v86 = [(PLAppTimeService *)self buildCallBack:v85 withGroup:0 withHandler:v90];
    [(PLAppTimeService *)self setNotificationCallback:v86];

    v87 = [(PLOperator *)PLApplicationAgent entryKeyForType:v84 andName:@"WidgetUpdates"];

    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __44__PLAppTimeService_initOperatorDependancies__block_invoke_5_276;
    v89[3] = &unk_27825A2E8;
    v89[4] = self;
    v88 = [(PLAppTimeService *)self buildCallBack:v87 withGroup:0 withHandler:v89];
    [(PLAppTimeService *)self setWidgetCallback:v88];
  }
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
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Calling power out with %@ %@ %@", &v12, 0x20u);
  }

  [*(a1 + 32) handlePowerOutCallback:v7];
  v11 = *MEMORY[0x277D85DE8];
}

void __44__PLAppTimeService_initOperatorDependancies__block_invoke_6_246(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__PLAppTimeService_initOperatorDependancies__block_invoke_7;
    v17 = &unk_27825A310;
    v18 = @"AppTimeService";
    v19 = v5;
    if (qword_2811F3E10 != -1)
    {
      dispatch_once(&qword_2811F3E10, &v14);
    }

    v6 = _MergedGlobals_1_3;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device Going to Sleep", v14, v15, v16, v17];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService initOperatorDependancies]_block_invoke_6"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:663];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) handleSleepCallBack:{v3, v14, v15, v16, v17}];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLAppTimeService_initOperatorDependancies__block_invoke_7(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  _MergedGlobals_1_3 = result;
  return result;
}

uint64_t __44__PLAppTimeService_initOperatorDependancies__block_invoke_2_259(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F3DF9 = result;
  return result;
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
  v16[3] = &unk_27825A338;
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
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKey:@"entry"];
  v5 = [v4 entryDate];
  [(PLAppTimeService *)self periodicUpdateAppRunTimeWithDate:v5];

  v6 = [v4 entryDate];
  [(PLAppTimeService *)self updateAggregationsAtDate:v6 withNewAPState:0];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
    v17 = 134217984;
    v18 = [v16 count];
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "audio: removing %lu objects", &v17, 0xCu);
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

  v15 = *MEMORY[0x277D85DE8];
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

  v16 = [MEMORY[0x277D3F258] isPingPongChargingWith:v6 andBatteryLevelPercent:v15];
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
  *&v38[5] = *MEMORY[0x277D85DE8];
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
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Updating in call service log due to display change", buf, 2u);
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
        *buf = 67109120;
        v38[0] = 0;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "newDisplayState=%d, clearing layouts", buf, 8u);
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
        v30 = [(PLAppTimeService *)self displayState];
        *buf = 67109376;
        v38[0] = v30;
        LOWORD(v38[1]) = 1024;
        *(&v38[1] + 2) = v7;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "self.displayState=%d, newDisplayState=%d", buf, 0xEu);
      }

      if ([(PLAppTimeService *)self displayState]|| (v7 - 1) > 1)
      {
        goto LABEL_28;
      }

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v31 = [v5 entryDate];
        *buf = 138412290;
        *v38 = v31;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "updating lastScreenOnTime to %@", buf, 0xCu);
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
      v33 = 3221225472;
      v34 = __42__PLAppTimeService_handleDisplayCallback___block_invoke;
      v35 = &__block_descriptor_40_e5_v8__0lu32l8;
      v36 = v19;
      if (qword_2811F3E20 != -1)
      {
        dispatch_once(&qword_2811F3E20, &block);
      }

      if (byte_2811F3DFA == 1)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = [v5 objectForKeyedSubscript:@"Active"];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLAppTimeService displayState](self, "displayState")}];
        v23 = [v20 stringWithFormat:@"Got display %@ %@ %@", v4, v21, v22, block, v33, v34, v35, v36];

        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleDisplayCallback:]"];
        [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:960];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v38 = v23;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLAppTimeService_handleDisplayCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFA = result;
  return result;
}

- (void)handlePowerOutCallback:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Handle power out callback with payload %@", &v8, 0xCu);
  }

  v6 = [v4 objectForKey:@"time"];
  [(PLAppTimeService *)self updatePowerOutTimeInDBForBundleId:v6];

  v7 = *MEMORY[0x277D85DE8];
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
  [v9 setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOnTime"];
  [v9 setObject:v4 forKeyedSubscript:@"BackgroundTime"];

  [v9 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundPluggedInTime"];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v11 sinceDate:v6];
  [(PLOperator *)self logProportionateAggregateEntry:v9 withStartDate:v11 withEndDate:v10];
}

- (void)handleInCallServiceCallback:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
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
      v10 = &stru_282B650A0;
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
    if (qword_2811F3E28 != -1)
    {
      dispatch_once(&qword_2811F3E28, block);
    }

    if (byte_2811F3DFB == 1)
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
        *buf = 138412290;
        v32 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLAppTimeService_handleInCallServiceCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFB = result;
  return result;
}

- (void)handlePluginCallback:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
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
    v20 = 3221225472;
    v21 = __41__PLAppTimeService_handlePluginCallback___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v11;
    if (qword_2811F3E30 != -1)
    {
      dispatch_once(&qword_2811F3E30, &block);
    }

    if (byte_2811F3DFC == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Plugin %@", v4, block, v20, v21, v22, v23];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handlePluginCallback:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:1015];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLAppTimeService_handlePluginCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFC = result;
  return result;
}

- (void)handleAudioCallback:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
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
        *buf = 138412290;
        v31 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "audio: %@ started playing", buf, 0xCu);
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
          *buf = 138412290;
          v31 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "audio: %@ stopped playing", buf, 0xCu);
        }

        v16 = [v5 entryDate];
        [(PLAppTimeService *)self addAudioTimeAtDate:v16];

        v13 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        [v13 removeObjectForKey:v6];
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v31 = v6;
        v32 = 2112;
        v33 = v8;
        _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "audio: unknown operation for %@: %@", buf, 0x16u);
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __40__PLAppTimeService_handleAudioCallback___block_invoke;
      v28 = &__block_descriptor_40_e5_v8__0lu32l8;
      v29 = v17;
      if (qword_2811F3E38 != -1)
      {
        dispatch_once(&qword_2811F3E38, &block);
      }

      if (byte_2811F3DFD == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got Audio callback %@", v4, block, v26, v27, v28, v29];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleAudioCallback:]"];
        [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:1045];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLAppTimeService_handleAudioCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFD = result;
  return result;
}

- (void)handleNowPlayingCallback:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
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
    v19 = 3221225472;
    v20 = __45__PLAppTimeService_handleNowPlayingCallback___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v10;
    if (qword_2811F3E40 != -1)
    {
      dispatch_once(&qword_2811F3E40, &block);
    }

    if (byte_2811F3DFE == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", v4, block, v19, v20, v21, v22];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleNowPlayingCallback:]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1059];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLAppTimeService_handleNowPlayingCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFE = result;
  return result;
}

- (void)handleStatusBarCallback:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
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
    v19 = 3221225472;
    v20 = __44__PLAppTimeService_handleStatusBarCallback___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v10;
    if (qword_2811F3E48 != -1)
    {
      dispatch_once(&qword_2811F3E48, &block);
    }

    if (byte_2811F3DFF == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got NowPlaying callback %@", v4, block, v19, v20, v21, v22];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleStatusBarCallback:]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1073];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLAppTimeService_handleStatusBarCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3DFF = result;
  return result;
}

- (void)handleCellularConditionCallback:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
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
      v23 = 3221225472;
      v24 = __52__PLAppTimeService_handleCellularConditionCallback___block_invoke;
      v25 = &__block_descriptor_40_e5_v8__0lu32l8;
      v26 = v14;
      if (qword_2811F3E50 != -1)
      {
        dispatch_once(&qword_2811F3E50, &block);
      }

      if (byte_2811F3E00 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got CellularCondition callback %@", v4, block, v23, v24, v25, v26];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleCellularConditionCallback:]"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:1104];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v28 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLAppTimeService_handleCellularConditionCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E00 = result;
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
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (qword_2811F3E60 != -1)
  {
    dispatch_once(&qword_2811F3E60, &__block_literal_global_5);
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
    if (qword_2811F3E68 != -1)
    {
      dispatch_once(&qword_2811F3E68, block);
    }

    if (byte_2811F3E01 == 1)
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
        *buf = 138412290;
        v75 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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

      v23 = [qword_2811F3E58 objectForKeyedSubscript:v17];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v24 = objc_opt_class();
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_415;
        v72[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v72[4] = v24;
        if (qword_2811F3E70 != -1)
        {
          dispatch_once(&qword_2811F3E70, v72);
        }

        if (byte_2811F3E02 == 1)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Running: backgroundTransferEvent=%@", v23];
          v66 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          v27 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v66 logMessage:v25 fromFile:v27 fromFunction:v28 fromLineNumber:1176];

          v29 = v25;
          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v75 = v29;
            _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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

        [qword_2811F3E58 setObject:v23 forKeyedSubscript:v17];
      }

      v33 = [(PLBackgroundTransferEvent *)v23 taskUUIDs];
      [v33 addObject:v18];
    }

    else
    {
      v23 = [qword_2811F3E58 objectForKeyedSubscript:v17];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v34 = objc_opt_class();
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_422;
        v71[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v71[4] = v34;
        if (qword_2811F3E78 != -1)
        {
          dispatch_once(&qword_2811F3E78, v71);
        }

        if (byte_2811F3E03 == 1)
        {
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cancelled, Completed, Failed: backgroundTransferEvent=%@", v23];
          v67 = MEMORY[0x277D3F178];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          v37 = [v36 lastPathComponent];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v67 logMessage:v35 fromFile:v37 fromFunction:v38 fromLineNumber:1193];

          v39 = v35;
          v40 = PLLogCommon();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v75 = v39;
            _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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

      [qword_2811F3E58 removeObjectForKey:v17];
      v44 = [(PLAppTimeService *)self coalitionsAppsOnScreen];
      v45 = [v44 containsObject:v17];

      if (v45)
      {
        goto LABEL_39;
      }

      v54 = [v5 entryDate];
      v55 = [(PLBackgroundTransferEvent *)v23 startDate];
      [v54 timeIntervalSinceDate:v55];
      v57 = v56;

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v58 = objc_opt_class();
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_428;
        v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v70[4] = v58;
        if (qword_2811F3E80 != -1)
        {
          dispatch_once(&qword_2811F3E80, v70);
        }

        if (byte_2811F3E04 == 1)
        {
          v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration=%f", *&v57];
          v68 = MEMORY[0x277D3F178];
          v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
          v61 = [v60 lastPathComponent];
          v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
          [v68 logMessage:v59 fromFile:v61 fromFunction:v62 fromLineNumber:1205];

          v63 = v59;
          v64 = PLLogCommon();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v75 = v63;
            _os_log_debug_impl(&dword_21A4C6000, v64, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v6 = 0x277D3F000;
        }
      }

      v33 = [(PLBackgroundTransferEvent *)v23 bundleID];
      v65 = [(PLBackgroundTransferEvent *)v23 startDate];
      [(PLAppTimeService *)self updateBackgroundTimeInDBForBundleId:v33 withTime:v65 withDate:fmin(v57, 3600.0)];
    }

LABEL_39:
LABEL_40:
    if ([*(v6 + 384) debugEnabled])
    {
      v46 = objc_opt_class();
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_434;
      v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v69[4] = v46;
      if (qword_2811F3E88 != -1)
      {
        dispatch_once(&qword_2811F3E88, v69);
      }

      if (byte_2811F3E05 == 1)
      {
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleIDToBackgroundTransferEvent=%@", qword_2811F3E58];
        v48 = MEMORY[0x277D3F178];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAppTimeService.m"];
        v50 = [v49 lastPathComponent];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAppTimeService handleBackgroundTransferCallback:]"];
        [v48 logMessage:v47 fromFile:v50 fromFunction:v51 fromLineNumber:1213];

        v52 = PLLogCommon();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v75 = v47;
          _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_47;
  }

LABEL_48:

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke()
{
  qword_2811F3E58 = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E01 = result;
  return result;
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_415(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E02 = result;
  return result;
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_422(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E03 = result;
  return result;
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_428(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E04 = result;
  return result;
}

uint64_t __53__PLAppTimeService_handleBackgroundTransferCallback___block_invoke_434(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E05 = result;
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
  v40 = *MEMORY[0x277D85DE8];
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

    [v13 setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOnTime"];
    [v13 setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      [v13 setObject:v15 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    else
    {
      [v13 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundPluggedInTime"];
    }

    v24 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:a4];
    [(PLOperator *)self logProportionateAggregateEntry:v13 withStartDate:v9 withEndDate:v24];

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_20;
    }

    v25 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke_446;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v25;
    if (qword_2811F3E98 != -1)
    {
      dispatch_once(&qword_2811F3E98, v36);
    }

    if (byte_2811F3E07 != 1)
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
      *buf = 138412290;
      v39 = v23;
      _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
    if (qword_2811F3E90 != -1)
    {
      dispatch_once(&qword_2811F3E90, block);
    }

    if (byte_2811F3E06 == 1)
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
        *buf = 138412290;
        v39 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

LABEL_21:

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E06 = result;
  return result;
}

uint64_t __74__PLAppTimeService_updateBackgroundTimeInDBForBundleId_withTime_withDate___block_invoke_446(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E07 = result;
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
            _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Screen On: Periodic Update - Updating On Screen time for %@ with %f added seconds", buf, 0x16u);
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
      *buf = 0;
      _os_log_fault_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_FAULT, "Screen On: Tried updating On Screen time, but couldn't retrieve apps on screen", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addForegroundTimeAtDate:(id)a3 withNewLayoutElementsArray:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
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
      if (qword_2811F3EA0 != -1)
      {
        dispatch_once(&qword_2811F3EA0, block);
      }

      if (byte_2811F3E08 == 1)
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
          *buf = 138412290;
          v70 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v58 = [(PLAppTimeService *)self lastScreenOnTime];
      *buf = 138412290;
      v70 = v58;
      _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "setting lastScreenEventAccountingTime to self.lastScreenOnTime=%@", buf, 0xCu);
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
    v57 = [(PLAppTimeService *)self lastScreenEventAccountingTime];
    *buf = 138412290;
    v70 = v57;
    _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "lastScreenEventAccountingTime=%@", buf, 0xCu);
  }

  v59 = v6;

  self->_musicPlayerForeground = 0;
  if ([v7 count])
  {
    v28 = [(PLAppTimeService *)self PiPModeApps];
    [v28 removeAllObjects];

    v29 = [(PLAppTimeService *)self appsOnScreen];
    [v29 removeAllObjects];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v30 = v7;
    v31 = [v30 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v65;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v65 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v64 + 1) + 8 * i);
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
              v70 = v35;
              _os_log_fault_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_FAULT, "Failed to retrieve bundle id for app on screen, bundle id is nil for entry %@", buf, 0xCu);
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v32);
    }
  }

  v41 = [(PLAppTimeService *)self lastLayoutEntries];
  v42 = [v41 count];

  if (v42)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v43 = [(PLAppTimeService *)self lastLayoutEntries];
    v44 = [v43 countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v61;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v61 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v60 + 1) + 8 * j);
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
            v70 = v55;
            v71 = 2048;
            v72 = v26;
            _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "Screen On: Updating On Screen time for %@ with %f added seconds", buf, 0x16u);
          }

          v53 = [v48 objectForKeyedSubscript:@"bundleID"];
          v54 = [v53 isEqualToString:@"com.apple.Music"];

          if (v54)
          {
            self->_musicPlayerForeground = 1;
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v45);
    }
  }

  [(PLAppTimeService *)self resetLayoutElementsPLEntryArray:v7 withNowDate:v59];

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __71__PLAppTimeService_addForegroundTimeAtDate_withNewLayoutElementsArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E08 = result;
  return result;
}

- (void)updateScreenOnTimeInDBForBundleId:(id)a3 withTime:(double)a4 withDate:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
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
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke;
        v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v38[4] = v12;
        if (qword_2811F3EA8 != -1)
        {
          dispatch_once(&qword_2811F3EA8, v38);
        }

        if (byte_2811F3E09 == 1)
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
            *buf = 138412290;
            v40 = *&v13;
            _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      a4 = fmin(a4, 60.0);
    }

    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v40 = a4;
      v41 = 2112;
      v42 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "adding timeDifference=%f for bundleID=%@", buf, 0x16u);
    }

    v20 = objc_alloc(MEMORY[0x277D3F190]);
    v21 = [(PLAppTimeService *)self aggregatedEntryKeyForAppRunTime];
    v10 = [v20 initWithEntryKey:v21 withDate:v9];

    [v10 setObject:v8 forKeyedSubscript:@"BundleID"];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v10 setObject:v22 forKeyedSubscript:@"ScreenOnTime"];

    [v10 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundTime"];
    [v10 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundPluggedInTime"];
    if ([(PLAppTimeService *)self deviceIsPluggedIn])
    {
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      [v10 setObject:v23 forKeyedSubscript:@"ScreenOnPluggedInTime"];
    }

    else
    {
      [v10 setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOnPluggedInTime"];
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
      if (qword_2811F3EB0 != -1)
      {
        dispatch_once(&qword_2811F3EB0, block);
      }

      if (byte_2811F3E0A == 1)
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
          *buf = 138412290;
          v40 = *&v30;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_26;
  }

LABEL_27:

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E09 = result;
  return result;
}

uint64_t __72__PLAppTimeService_updateScreenOnTimeInDBForBundleId_withTime_withDate___block_invoke_461(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E0A = result;
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
  if ([a4 isEqualToValue:&unk_282C0D068] && (-[NSMutableSet containsObject:](self->_PiPModeApps, "containsObject:", v6) & 1) == 0)
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
          v14 = [MEMORY[0x277D3F258] getIdentifierFromEntry:{v13, v51}];
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
  v40 = *MEMORY[0x277D85DE8];
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
      [v15 setObject:&unk_282C0D050 forKeyedSubscript:v20];
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
      if (qword_2811F3EB8 != -1)
      {
        dispatch_once(&qword_2811F3EB8, block);
      }

      if (byte_2811F3E0B == 1)
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
          *buf = 138412290;
          v39 = v30;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __77__PLAppTimeService_updateInCallServiceTimeInDBForBundleId_withTime_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3E0B = result;
  return result;
}

- (void)addAudioTimeAtDate:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
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
      *buf = 134217984;
      v50 = [v8 count];
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "audio: found %lu playing", buf, 0xCu);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = [(PLAppTimeService *)self appsOnScreen];
    v11 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      do
      {
        v14 = 0;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v44 + 1) + 8 * v14);
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
              v50 = v15;
              _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "audio: reset time for %@ due to being in the fg", buf, 0xCu);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v12);
    }

    v20 = [(PLAppTimeService *)self appsOnScreen];
    [v8 minusSet:v20];

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v36 = [(PLAppTimeService *)self appsOnScreen];
      v37 = [v36 count];
      v38 = [v8 count];
      *buf = 134218240;
      v50 = v37;
      v51 = 2048;
      v52 = v38;
      _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "audio: removing from %lu fg, %lu playing in bg", buf, 0x16u);
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
          v39 = [(PLAppTimeService *)self statusBarBundleID];
          *buf = 138412290;
          v50 = v39;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "audio: %@ is using audio+location", buf, 0xCu);
        }

        v27 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
        v28 = [(PLAppTimeService *)self statusBarBundleID];
        [v27 setObject:v4 forKeyedSubscript:v28];

        v29 = [(PLAppTimeService *)self statusBarBundleID];
        [v8 removeObject:v29];
      }
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = v8;
    v31 = [v30 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v41;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [(PLAppTimeService *)self addAudioTimeAtDate:v4 forBundleID:*(*(&v40 + 1) + 8 * i)];
        }

        v32 = [v30 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v32);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)addAudioTimeAtDate:(id)a3 forBundleID:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PLAppTimeService *)self audioPlaybackBundleIDs];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = *&v7;
      _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "audio: missing last info for %@", &v24, 0xCu);
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
        v24 = 134217984;
        v25 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "audio: incrementing Music's BG time by %.2f", &v24, 0xCu);
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
        [v15 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundPluggedInTime"];
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
      [v15 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
    }

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = [(PLAppTimeService *)self deviceIsPluggedIn];
      v24 = 138412802;
      v25 = *&v7;
      v26 = 2048;
      v27 = v11;
      v28 = 1024;
      v29 = v23;
      _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "audio: adding to %@ playback time: %.2f pluggedIn:%d", &v24, 0x1Cu);
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
      [v14 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundAudioNowPlayingPluggedInTime"];
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
      [v21 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundLocationPluggedInTime"];
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
            [v18 setObject:&unk_282C0D050 forKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];
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
    *v9 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Added app usage event: Notification", v9, 2u);
  }

  v8 = [v5 entryDate];
  [(PLAppTimeService *)self logAppUsageEventForKey:@"NotificationCount" withBundleID:v6 withDate:v8];
}

- (void)addWidgetUseFromUserInfo:(id)a3 AtDate:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKey:{@"entry", a4}];
  v6 = [v5 objectForKeyedSubscript:@"bundleID"];
  v7 = [(PLAppTimeService *)self getWidgetParentAppForBundleID:v6];

  if (v7)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Added app usage event: Widget for bundleid  %@", &v11, 0xCu);
    }

    v9 = [v5 entryDate];
    [(PLAppTimeService *)self logAppUsageEventForKey:@"HasWidgetActive" withBundleID:v7 withDate:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
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
            _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Added app usage event: Carplay %@", buf, 0xCu);
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
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLAppTimeService *)self widgetParentBundleIDs];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v8 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginId" withValue:v4 withComparisonOperation:0];
    v10 = [MEMORY[0x277D3F2A0] sharedCore];
    v11 = [v10 storage];
    v19 = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 entriesForKey:@"PLApplicationAgent_EventNone_AllPlugins" withComparisons:v12];

    if ([v13 count])
    {
      v14 = [v13 firstObject];
      v9 = [v14 objectForKeyedSubscript:@"PluginParentApp"];
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEFAULT, "Added app usage event queryResult= %@", buf, 0xCu);
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
      *buf = 138412290;
      v21 = v4;
      _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "App usage event: unable to find widget's parent id for %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_14;
  }

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(NSMutableDictionary *)self->_widgetParentBundleIDs objectForKeyedSubscript:v4];
    *buf = 138412290;
    v21 = v18;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Added app usage event cached widget =%@", buf, 0xCu);
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
    *v9 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Added app usage event: Audio", v9, 2u);
  }

  [(PLAppTimeService *)self logAppUsageEventForKey:@"HasAudioUsage" withBundleID:v7 withDate:v6];
}

- (void)logAppUsageEventForKey:(id)a3 withBundleID:(id)a4 withDate:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
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
      v14 = 138412290;
      v15 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "App usage event: adding %@", &v14, 0xCu);
    }
  }

  else
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "App usage event: unable to log nil bundle id", &v14, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)backgroundAppToBundleIDmapping
{
  backgroundAppToBundleID = self->_backgroundAppToBundleID;
  if (!backgroundAppToBundleID)
  {
    self->_backgroundAppToBundleID = &unk_282C16EB0;
    backgroundAppToBundleID = self->_backgroundAppToBundleID;
  }

  return backgroundAppToBundleID;
}

- (void)updateAggregationsAtSBCWithDate:(id)a3 withLongestCoalitionBGTime:(double)a4 withCoalitionLength:(double)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    [(PLAppTimeService *)self chunkScreenOnAggregationAtDate:v8];
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      v40 = 134217984;
      v41 = v34;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "SBC: FG %f", &v40, 0xCu);
    }

    v10 = [(PLAppTimeService *)self lastAPOnTimeSBC];

    if (v10)
    {
      v11 = [(PLAppTimeService *)self lastAPOnTimeSBC];
      [v8 timeIntervalSinceDate:v11];
      v13 = v12;

      if (v13 > 0.0)
      {
        [(PLAppTimeService *)self setLastAPOnTimeSBC:v8];
        [(PLAppTimeService *)self totalAPOnTimeSBC];
        [(PLAppTimeService *)self setTotalAPOnTimeSBC:v13 + v14];
      }
    }

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self totalAPOnTimeSBC];
      v40 = 134217984;
      v41 = v35;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "SBC: AP %f", &v40, 0xCu);
    }

    v16 = [(PLAppTimeService *)self firstBGAppTimeSBC];

    if (v16)
    {
      [v8 timeIntervalSinceDate:self->_firstBGAppTimeSBC];
      if (v17 > 0.0)
      {
        v18 = v17;
        [(PLAppTimeService *)self setFirstBGAppTimeSBC:v8];
        [(PLAppTimeService *)self totalBGTimeSBC];
        [(PLAppTimeService *)self setTotalBGTimeSBC:v18 + v19];
      }
    }

    v20 = PLLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self totalBGTimeSBC];
      v40 = 134217984;
      v41 = v36;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "SBC: BG %f", &v40, 0xCu);
    }

    totalFGTimeSBC = self->_totalFGTimeSBC;
    v22 = a4 - totalFGTimeSBC;
    if (a4 - totalFGTimeSBC < self->_totalBGTimeSBC - totalFGTimeSBC)
    {
      v22 = self->_totalBGTimeSBC - totalFGTimeSBC;
    }

    v23 = self->_totalAPOnTimeSBC - totalFGTimeSBC;
    if (v22 < v23)
    {
      v23 = v22;
    }

    if (v23 >= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = PLLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v40) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "Calculating screen off time from coalitions", &v40, 2u);
    }

    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v40 = 134217984;
      v41 = a5;
      _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "   Coalition interval length       %f", &v40, 0xCu);
    }

    v27 = PLLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v40 = 134217984;
      v41 = a4;
      _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "   Longest coalition CPU time:     %f", &v40, 0xCu);
    }

    v28 = PLLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v37 = self->_totalFGTimeSBC;
      v40 = 134217984;
      v41 = v37;
      _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "   FG since last SBC:              %f", &v40, 0xCu);
    }

    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      totalBGTimeSBC = self->_totalBGTimeSBC;
      v40 = 134217984;
      v41 = totalBGTimeSBC;
      _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "   BG since last SBC:              %f", &v40, 0xCu);
    }

    v30 = PLLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      totalAPOnTimeSBC = self->_totalAPOnTimeSBC;
      v40 = 134217984;
      v41 = totalAPOnTimeSBC;
      _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "   AP On since last SBC:           %f", &v40, 0xCu);
    }

    v31 = PLLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v40 = 134217984;
      v41 = v24;
      _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "   Calculated Screen Off Usage:    %f", &v40, 0xCu);
    }

    [(PLAppTimeService *)self updateScreenOffTimeAtDate:v8 withDiff:v24];
    v32 = PLLogCommon();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v40) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "Resetting SBC AP/FG/BG counters", &v40, 2u);
    }

    self->_totalAPOnTimeSBC = 0.0;
    self->_totalFGTimeSBC = 0.0;
    self->_totalBGTimeSBC = 0.0;
  }

  v33 = *MEMORY[0x277D85DE8];
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
      LOWORD(v14) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Chunking screen on aggregation", &v14, 2u);
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
        _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_INFO, "[%@, %@] : %f", &v14, 0x20u);
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
  v26 = *MEMORY[0x277D85DE8];
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

      LOWORD(v20) = 0;
      v9 = "No screen state change!";
LABEL_6:
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, v9, &v20, 2u);
      goto LABEL_10;
    }

    if (a4 == 1)
    {
      [(PLAppTimeService *)self setLastScreenOnTimeSBC:v6];
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v20 = 138412290;
        v21 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Starting FG interval at %@", &v20, 0xCu);
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

      LOWORD(v20) = 0;
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
      v20 = 138412802;
      v21 = v18;
      v22 = 2112;
      v23 = v6;
      v24 = 2048;
      v25 = v14;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Stopping FG interval [%@, %@] : %f", &v20, 0x20u);
    }

    [(PLAppTimeService *)self setLastScreenOnTimeSBC:0];
    if (v14 >= 0.0)
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      [(PLAppTimeService *)self setTotalFGTimeSBC:v14 + v16];
      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [(PLAppTimeService *)self totalFGTimeSBC];
        v20 = 134217984;
        v21 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "New FG time since SBC: %f", &v20, 0xCu);
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
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D3F208] isHomePod];
  if (!v6 || (v7 & 1) != 0)
  {
    goto LABEL_33;
  }

  if (self->_isAPOn == v4)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36) = 0;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "No AP state change!", &v36, 2u);
    }

    goto LABEL_32;
  }

  if (v4)
  {
    [(PLAppTimeService *)self setLastAPOnTimeSBC:v6];
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v36 = 138412290;
      v37 = v6;
      v9 = "Starting APOn interval at %@";
LABEL_31:
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, v9, &v36, 0xCu);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v10 = [(PLAppTimeService *)self lastScreenOnTimeSBC];

  if (v10)
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Screen on interval is open, but AP is going down!", &v36, 2u);
    }

    v12 = [(PLAppTimeService *)self lastScreenOnTimeSBC];
    [v6 timeIntervalSinceDate:v12];
    v14 = v13;

    [(PLAppTimeService *)self setLastScreenOnTimeSBC:0];
    if (v14 >= 0.0)
    {
      [(PLAppTimeService *)self totalFGTimeSBC];
      [(PLAppTimeService *)self setTotalFGTimeSBC:v14 + v15];
      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(PLAppTimeService *)self totalFGTimeSBC];
        v36 = 134217984;
        v37 = v35;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "New FG time since SBC: %f", &v36, 0xCu);
      }

      [(PLAppTimeService *)self updateScreenOnTimeAtDate:v6 withDiff:v14];
    }
  }

  v17 = [(PLAppTimeService *)self lastAPOnTimeSBC];

  if (!v17)
  {
    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36) = 0;
      _os_log_error_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_ERROR, "AP is going down, but AP interval isn't open", &v36, 2u);
    }

    goto LABEL_24;
  }

  [v6 timeIntervalSinceDate:self->_lastAPOnTimeSBC];
  v19 = v18;
  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v33 = [(PLAppTimeService *)self lastAPOnTimeSBC];
    v36 = 138412802;
    v37 = v33;
    v38 = 2112;
    v39 = v6;
    v40 = 2048;
    v41 = v19;
    _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Stopping AP interval [%@, %@] : %f", &v36, 0x20u);
  }

  [(PLAppTimeService *)self setLastAPOnTimeSBC:0];
  if (v19 > 0.0)
  {
    [(PLAppTimeService *)self totalAPOnTimeSBC];
    [(PLAppTimeService *)self setTotalAPOnTimeSBC:v19 + v21];
    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [(PLAppTimeService *)self totalAPOnTimeSBC];
      v36 = 134217984;
      v37 = v23;
      _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "New AP time since SBC: %f", &v36, 0xCu);
    }

LABEL_24:
  }

  v24 = [(PLAppTimeService *)self firstBGAppTimeSBC];

  if (v24)
  {
    v25 = [(PLAppTimeService *)self firstBGAppTimeSBC];
    [v6 timeIntervalSinceDate:v25];
    v27 = v26;

    v28 = PLLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v34 = [(PLAppTimeService *)self firstBGAppTimeSBC];
      v36 = 138412802;
      v37 = v34;
      v38 = 2112;
      v39 = v6;
      v40 = 2048;
      v41 = v27;
      _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "Stopping BG interval [%@, %@] : %f", &v36, 0x20u);
    }

    [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
    if (v27 > 0.0)
    {
      [(PLAppTimeService *)self totalBGTimeSBC];
      [(PLAppTimeService *)self setTotalBGTimeSBC:v27 + v29];
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:v6];
      v30 = [(PLAppTimeService *)self bundleIDsInBackground];
      [v30 removeAllObjects];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(PLAppTimeService *)self totalBGTimeSBC];
        v36 = 134217984;
        v37 = v31;
        v9 = "New BG time since SBC: %f";
        goto LABEL_31;
      }

LABEL_32:
    }
  }

LABEL_33:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)updateAggregationsAtDate:(id)a3 withNewPluggedInState:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_deviceIsPluggedIn != v4)
  {
    if (v4)
    {
      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v23) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "starting plugged in interval", &v23, 2u);
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
        v23 = 134217984;
        v24 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "stopping plugged in interval %.2fs since last update", &v23, 0xCu);
      }

      v14 = self;
      v15 = 0;
      goto LABEL_20;
    }

    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_ERROR, "unplugged without plugged in start", &v23, 2u);
    }

LABEL_23:

    goto LABEL_24;
  }

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v23) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "periodic plugged in update", &v23, 2u);
  }

  if (!v4)
  {
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "device is not plugged in", &v23, 2u);
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
      v23 = 134217984;
      v24 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "device has been plugged in for %.2fs since last update", &v23, 0xCu);
    }

    [(PLAppTimeService *)self updatePluggedInTimeAtDate:v6 withDiff:v11];
  }

LABEL_13:
  v14 = self;
  v15 = v6;
LABEL_20:
  [(PLAppTimeService *)v14 setLastPluggedInTime:v15];
LABEL_24:

  v22 = *MEMORY[0x277D85DE8];
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
  v11 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && v11 && a4 >= 0.0)
  {
    v6 = objc_alloc(MEMORY[0x277D3F190]);
    v7 = [(PLAppTimeService *)self entryKeyUsageTime];
    v8 = [v6 initWithEntryKey:v7 withDate:v11];

    [v8 setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOn"];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v8 setObject:v9 forKeyedSubscript:@"ScreenOff"];

    v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v11 sinceDate:-a4];
    [(PLOperator *)self logProportionateAggregateEntry:v8 withStartDate:v10 withEndDate:v11];
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateScreenOnTimeAtDate:(id)a3 withDiff:(double)a4
{
  v11 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && v11 && a4 >= 0.0)
  {
    v6 = objc_alloc(MEMORY[0x277D3F190]);
    v7 = [(PLAppTimeService *)self entryKeyUsageTime];
    v8 = [v6 initWithEntryKey:v7 withDate:v11];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v8 setObject:v9 forKeyedSubscript:@"ScreenOn"];

    [v8 setObject:&unk_282C0D050 forKeyedSubscript:@"ScreenOff"];
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v11 sinceDate:-a4];
    [(PLOperator *)self logProportionateAggregateEntry:v8 withStartDate:v10 withEndDate:v11];
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateBackgroundAppsForBundleID:(id)a3 withState:(unsigned int)a4 withDate:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && v8 && v9)
  {
    if (a4 == 4)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:v9];
      v10 = [(PLAppTimeService *)self bundleIDsInBackground];
      v11 = [v10 count];

      if (v11)
      {
LABEL_28:
        v37 = [(PLAppTimeService *)self bundleIDsInBackground];
        [v37 addObject:v8];
        goto LABEL_29;
      }

      v12 = [(PLAppTimeService *)self excludedBundleIDsInBackground];
      v13 = [v12 containsObject:v8];

      if (v13)
      {
        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *v43 = 138412290;
          *&v43[4] = v8;
          v15 = "Ignoring BG bundleID %@";
LABEL_37:
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, v15, v43, 0xCu);
        }
      }

      else
      {
        [(PLAppTimeService *)self setFirstBGAppTimeSBC:v9];
        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *v43 = 138412290;
          *&v43[4] = v8;
          v15 = "%@ is first BG'd app, starting BG Timer";
          goto LABEL_37;
        }
      }

      goto LABEL_28;
    }

    v16 = [(PLAppTimeService *)self bundleIDsInBackground];
    v17 = [v16 containsObject:v8];

    if (v17)
    {
      [(PLAppTimeService *)self addCellularConditionTimeAtDate:v9];
    }

    v18 = [(PLAppTimeService *)self bundleIDsInBackground];
    v19 = [v18 containsObject:v8];

    if (v19)
    {
      v20 = [(PLAppTimeService *)self bundleIDsInBackground];
      [v20 removeObject:v8];

      v21 = [(PLAppTimeService *)self bundleIDsInBackground];
      v22 = [v21 count];

      if (v22 == 1)
      {
        v23 = [(PLAppTimeService *)self bundleIDsInBackground];
        v24 = [v23 anyObject];

        if (v24)
        {
          v25 = [(PLAppTimeService *)self excludedBundleIDsInBackground];
          v26 = [v25 containsObject:v24];

          if (v26)
          {
            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *v43 = 138412290;
              *&v43[4] = v24;
              _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "Removing %@ from BG set", v43, 0xCu);
            }

            v28 = [(PLAppTimeService *)self bundleIDsInBackground];
            [v28 removeObject:v24];
          }
        }
      }

      v29 = [(PLAppTimeService *)self bundleIDsInBackground];
      v30 = [v29 count];

      if (!v30)
      {
        v31 = PLLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *v43 = 138412290;
          *&v43[4] = v8;
          _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@ is last BG'd app, stopping BG Timer", v43, 0xCu);
        }

        v32 = [(PLAppTimeService *)self firstBGAppTimeSBC];

        if (v32)
        {
          v33 = [(PLAppTimeService *)self firstBGAppTimeSBC];
          [v9 timeIntervalSinceDate:v33];
          v35 = v34;

          [(PLAppTimeService *)self setFirstBGAppTimeSBC:0];
          if (v35 > 0.0)
          {
            [(PLAppTimeService *)self totalBGTimeSBC];
            [(PLAppTimeService *)self setTotalBGTimeSBC:v35 + v36];
            v37 = PLLogCommon();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [(PLAppTimeService *)self totalBGTimeSBC];
              *v43 = 134217984;
              *&v43[4] = v38;
              _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "total BG time since SBC: %f", v43, 0xCu);
            }

            goto LABEL_29;
          }

          v37 = PLLogCommon();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
LABEL_29:

            goto LABEL_30;
          }

          *v43 = 134217984;
          *&v43[4] = v35;
          v40 = "Got a negative BG time: %f";
          v41 = v37;
          v42 = 12;
        }

        else
        {
          v37 = PLLogCommon();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          *v43 = 0;
          v40 = "Tried to stop BG time, but no first BG app time SBC!";
          v41 = v37;
          v42 = 2;
        }

        _os_log_error_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_ERROR, v40, v43, v42);
        goto LABEL_29;
      }
    }
  }

LABEL_30:

  v39 = *MEMORY[0x277D85DE8];
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

@end