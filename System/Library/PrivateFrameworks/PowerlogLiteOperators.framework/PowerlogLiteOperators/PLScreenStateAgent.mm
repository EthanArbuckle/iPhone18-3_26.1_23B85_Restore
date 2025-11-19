@interface PLScreenStateAgent
+ (id)entryAggregateDefinitionWidgetAdditionAnimation;
+ (id)entryAggregateDefinitionWidgetFlipAnimation;
+ (id)entryAggregateDefinitions;
+ (id)entryEventBackwardDefinitionAlwaysOnEnableState;
+ (id)entryEventBackwardDefinitionBacklightStateChange;
+ (id)entryEventBackwardDefinitionFlipbookStatistics;
+ (id)entryEventBackwardDefinitionIconDragging;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardScreenState;
+ (id)entryEventForwardWindowMode;
+ (id)entryEventPointBacklightEvent;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLScreenStateAgent)init;
- (id)processQuery:(id)a3 withEntryKey:(id)a4;
- (int)GetBacklightState:(id)a3;
- (unint64_t)convertWindowingMode:(id)a3;
- (unint64_t)convertZoomLevel:(id)a3;
- (void)accountWithLayoutEntries:(id)a3;
- (void)createAirPlayWiFiAccountingEvent:(id)a3;
- (void)createCarPlayAccountingEvents:(id)a3;
- (void)dealloc;
- (void)handleDisplayCallback:(id)a3;
- (void)initOperatorDependancies;
- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5;
- (void)log;
- (void)logAggregateWidgetAdditionAnimation:(id)a3;
- (void)logAggregateWidgetFlipAnimation:(id)a3;
- (void)logEventBackwardAlwaysOnEnableState:(id)a3;
- (void)logEventBackwardBacklightStateChange:(id)a3;
- (void)logEventBackwardFlipbookStatistics:(id)a3;
- (void)logEventBackwardIconDragging:(id)a3;
- (void)logEventForwardAirPlayScreenState:(id)a3;
- (void)logEventForwardCarScreenState:(id)a3;
- (void)logEventForwardMainScreenState:(id)a3;
- (void)logEventForwardWindowMode:(id)a3;
- (void)logEventPointMainBacklightEvent:(id)a3 withContext:(id)a4;
- (void)postEnhancedScreenStateNotification:(id)a3 currentLayout:(id)a4;
@end

@implementation PLScreenStateAgent

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventBackward_AlwaysOnEnableState: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardAlwaysOnEnableState:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __26__PLScreenStateAgent_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) workQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __26__PLScreenStateAgent_init__block_invoke_3;
    v5[3] = &unk_278259658;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLScreenStateAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"BacklightEvent";
  v2 = [a1 entryEventPointBacklightEvent];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointBacklightEvent
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1BD38;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"TransitionReason";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"BacklightLevel";
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

+ (id)entryEventForwardDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"ScreenState";
  v3 = [a1 entryEventForwardScreenState];
  v8[1] = @"WindowMode";
  v9[0] = v3;
  v4 = [a1 entryEventForwardWindowMode];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventForwardScreenState
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_282C1BD48;
  v23[1] = MEMORY[0x277CBEC38];
  v22[2] = *MEMORY[0x277D3F4A0];
  v23[2] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"bundleID";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat_withBundleID];
  v21[0] = v17;
  v20[1] = @"ScreenWeight";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v21[1] = v15;
  v20[2] = @"AppRole";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v21[2] = v4;
  v20[3] = @"Display";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v21[3] = v6;
  v20[4] = @"Level";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v21[4] = v8;
  v20[5] = @"Orientation";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardWindowMode
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v17 = *MEMORY[0x277D3F568];
    v18 = &unk_282C1BD38;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"displayType";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_StringFormat];
    v16[0] = v3;
    v15[1] = @"zoomLevel";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v16[1] = v5;
    v15[2] = @"windowingMode";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v16[2] = v7;
    v15[3] = @"canvasRatio";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v16[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v20[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"IconDragging";
  v3 = [a1 entryEventBackwardDefinitionIconDragging];
  v11[0] = v3;
  v10[1] = @"AlwaysOnEnableState";
  v4 = [a1 entryEventBackwardDefinitionAlwaysOnEnableState];
  v11[1] = v4;
  v10[2] = @"BacklightStateChange";
  v5 = [a1 entryEventBackwardDefinitionBacklightStateChange];
  v11[2] = v5;
  v10[3] = @"FlipbookStatistics";
  v6 = [a1 entryEventBackwardDefinitionFlipbookStatistics];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int)GetBacklightState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"off"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"suppressed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"inactiveOnFlipbook"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"inactiveOnLiveFlipbook"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"inactiveOnLive"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"activeDimmed"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"active"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 7;
  }

  return v4;
}

+ (id)entryEventBackwardDefinitionIconDragging
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1BD38;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Duration";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitionAlwaysOnEnableState
{
  v21[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F590];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_282C1BD58;
    v19[1] = &unk_282C10158;
    v18[2] = *MEMORY[0x277D3F588];
    v19[2] = &unk_282C1BD68;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"alwaysOnResolvedEnabled";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_BoolFormat];
    v17[0] = v4;
    v16[1] = @"alwaysOnEnabledSetting";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_BoolFormat];
    v17[1] = v6;
    v16[2] = @"lowPowerMode";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_BoolFormat];
    v17[2] = v8;
    v16[3] = @"focusMode";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_BoolFormat];
    v17[3] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
    v21[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionBacklightStateChange
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] hasAOD] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102040) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102041))
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v17 = *MEMORY[0x277D3F568];
    v18 = &unk_282C1BD58;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"state";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v16[0] = v3;
    v15[1] = @"explanation";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat];
    v16[1] = v5;
    v15[2] = @"suppressionChangeType";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v16[2] = v7;
    v15[3] = @"suppressionReasons";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_StringFormat];
    v16[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v20[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionFlipbookStatistics
{
  v60[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v59[0] = *MEMORY[0x277D3F4E8];
    v57 = *MEMORY[0x277D3F568];
    v58 = &unk_282C1BD38;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v60[0] = v54;
    v59[1] = *MEMORY[0x277D3F540];
    v55[0] = @"invalidatedFramesUpTo2mStale";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v56[0] = v52;
    v55[1] = @"invalidatedFramesUpTo3mStale";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_IntegerFormat];
    v56[1] = v50;
    v55[2] = @"invalidatedFramesUpTo4mStale";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v56[2] = v48;
    v55[3] = @"invalidatedFramesUpTo5mStale";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v56[3] = v46;
    v55[4] = @"invalidatedFramesUpTo6mStale";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v56[4] = v44;
    v55[5] = @"discardedFramesUpTo2mStale";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat];
    v56[5] = v42;
    v55[6] = @"discardedFramesUpTo3mStale";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v56[6] = v40;
    v55[7] = @"discardedFramesUpTo4mStale";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v56[7] = v38;
    v55[8] = @"discardedFramesUpTo5mStale";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v56[8] = v36;
    v55[9] = @"discardedFramesUpTo6mStale";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v56[9] = v34;
    v55[10] = @"renderedFramesLessThan1Min";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v56[10] = v32;
    v55[11] = @"renderedFrames1to2Min";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v56[11] = v30;
    v55[12] = @"renderedFrames2to3Min";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v56[12] = v28;
    v55[13] = @"renderedFrames3to4Min";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v56[13] = v26;
    v55[14] = @"renderedFrames4to5Min";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v56[14] = v24;
    v55[15] = @"renderedFrames5to6Min";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v56[15] = v22;
    v55[16] = @"renderedFramesMoreThan6Min";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v56[16] = v20;
    v55[17] = @"renderedFrameCount";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v56[17] = v18;
    v55[18] = @"renderedPartialMinuteCount";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v56[18] = v16;
    v55[19] = @"millisecondsDisplayOff";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v56[19] = v14;
    v55[20] = @"millisecondsDisplayOn";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v56[20] = v3;
    v55[21] = @"millisecondsDisplayDimmed";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v56[21] = v5;
    v55[22] = @"millisecondsShowingAOT";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v56[22] = v7;
    v55[23] = @"millisecondsSuppressed";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v56[23] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:24];
    v60[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryAggregateDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"WidgetAdditionAnimation";
  v3 = [a1 entryAggregateDefinitionWidgetAdditionAnimation];
  v8[1] = @"WidgetFlipAnimation";
  v9[0] = v3;
  v4 = [a1 entryAggregateDefinitionWidgetFlipAnimation];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryAggregateDefinitionWidgetAdditionAnimation
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1BD38;
  v19[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v3;
  v20[1] = *MEMORY[0x277D3F540];
  v16 = @"Count";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v17 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v21[1] = v6;
  v20[2] = *MEMORY[0x277D3F478];
  v14 = &unk_282C1BD78;
  v12 = *MEMORY[0x277D3F470];
  v13 = &unk_282C1BD68;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v20[3] = *MEMORY[0x277D3F488];
  v21[2] = v8;
  v21[3] = &unk_282C14028;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryAggregateDefinitionWidgetFlipAnimation
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1BD38;
  v19[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v3;
  v20[1] = *MEMORY[0x277D3F540];
  v16 = @"Count";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v17 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v21[1] = v6;
  v20[2] = *MEMORY[0x277D3F478];
  v14 = &unk_282C1BD78;
  v12 = *MEMORY[0x277D3F470];
  v13 = &unk_282C1BD68;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v20[3] = *MEMORY[0x277D3F488];
  v21[2] = v8;
  v21[3] = &unk_282C14040;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PLScreenStateAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    v3 = 0;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = PLScreenStateAgent;
    v5 = [(PLAgent *)&v25 init];
    v6 = v5;
    if (v5)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __26__PLScreenStateAgent_init__block_invoke_2;
      aBlock[3] = &unk_27825B060;
      v7 = v5;
      v24 = v7;
      v8 = _Block_copy(aBlock);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __26__PLScreenStateAgent_init__block_invoke_4;
      v21 = &unk_27825B060;
      v9 = v7;
      v22 = v9;
      v10 = _Block_copy(&v18);
      v11 = objc_alloc(MEMORY[0x277D0AD10]);
      v12 = [v11 initWithDisplayType:0 qualityOfService:17 handler:{&__block_literal_global_219_0, v18, v19, v20, v21}];
      v13 = v9[7];
      v9[7] = v12;

      [v9[7] addObserver:v9];
      v14 = [objc_alloc(MEMORY[0x277D0AD10]) initWithDisplayType:3 qualityOfService:17 handler:v8];
      v15 = v9[9];
      v9[9] = v14;

      v16 = [objc_alloc(MEMORY[0x277D0AD10]) initWithDisplayType:1 qualityOfService:17 handler:v10];
      v17 = v9[8];
      v9[8] = v16;
    }

    self = v6;
    v3 = self;
  }

  return v3;
}

void __26__PLScreenStateAgent_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) workQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __26__PLScreenStateAgent_init__block_invoke_5;
    v5[3] = &unk_278259658;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)initOperatorDependancies
{
  v55 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v3 = [MEMORY[0x277D3F180] objectForKey:@"SBEnableAlwaysOn" forApplicationID:@"com.apple.springboard" synchronize:1];
    v4 = [v3 BOOLValue];

    v5 = PLLogScreenState();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v54 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "initial state for EnableAlwaysOn is %d", buf, 8u);
    }

    v51 = @"alwaysOnEnabledSetting";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v52 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

    [(PLScreenStateAgent *)self logEventBackwardAlwaysOnEnableState:v7];
  }

  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    if ([MEMORY[0x277D3F208] isiPad])
    {
      v8 = objc_alloc(MEMORY[0x277D3F270]);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke;
      v50[3] = &unk_27825A1D8;
      v50[4] = self;
      v9 = [v8 initWithOperator:self withRegistration:&unk_282C17068 withBlock:v50];
      [(PLScreenStateAgent *)self setWindowModeListener:v9];
    }

    if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
    {
      v10 = objc_alloc(MEMORY[0x277D3F270]);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245;
      v49[3] = &unk_27825A1D8;
      v49[4] = self;
      v11 = [v10 initWithOperator:self withRegistration:&unk_282C17090 withBlock:v49];
      [(PLScreenStateAgent *)self setIconDraggingListner:v11];

      v12 = objc_alloc(MEMORY[0x277D3F270]);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250;
      v48[3] = &unk_27825A1D8;
      v48[4] = self;
      v13 = [v12 initWithOperator:self withRegistration:&unk_282C170B8 withBlock:v48];
      [(PLScreenStateAgent *)self setWidgetAdditionAnimationListener:v13];

      v14 = objc_alloc(MEMORY[0x277D3F270]);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255;
      v47[3] = &unk_27825A1D8;
      v47[4] = self;
      v15 = [v14 initWithOperator:self withRegistration:&unk_282C170E0 withBlock:v47];
      [(PLScreenStateAgent *)self setWidgetFlipAnimationListener:v15];
    }

    v16 = objc_alloc(MEMORY[0x277D3F270]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260;
    v46[3] = &unk_27825A1D8;
    v46[4] = self;
    v17 = [v16 initWithOperator:self withRegistration:&unk_282C17108 withBlock:v46];
    [(PLScreenStateAgent *)self setSpringBoardAlwaysOnEnableStateListener:v17];

    v18 = objc_alloc(MEMORY[0x277D3F270]);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265;
    v45[3] = &unk_27825A1D8;
    v45[4] = self;
    v19 = [v18 initWithOperator:self withRegistration:&unk_282C17130 withBlock:v45];
    [(PLScreenStateAgent *)self setSpringBoardBacklightStateChangeListener:v19];

    v20 = objc_alloc(MEMORY[0x277D3F270]);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270;
    v44[3] = &unk_27825A1D8;
    v44[4] = self;
    v21 = [v20 initWithOperator:self withRegistration:&unk_282C17158 withBlock:v44];
    [(PLScreenStateAgent *)self setSpringBoardFlipbookStatisticsListener:v21];

    if ([MEMORY[0x277D3F208] internalBuild])
    {
      v22 = objc_alloc(MEMORY[0x277D3F278]);
      v23 = [(PLOperator *)self workQueue];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276;
      v43[3] = &unk_278259810;
      v43[4] = self;
      v24 = [v22 initWithWorkQueue:v23 withRegistration:&unk_282C17180 withBlock:v43];
      [(PLScreenStateAgent *)self setSpringBoardAlwaysOnEnableStateResponder:v24];

      v25 = objc_alloc(MEMORY[0x277D3F278]);
      v26 = [(PLOperator *)self workQueue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286;
      v42[3] = &unk_278259810;
      v42[4] = self;
      v27 = [v25 initWithWorkQueue:v26 withRegistration:&unk_282C171A8 withBlock:v42];
      [(PLScreenStateAgent *)self setSpringBoardBacklightStateChangeResponder:v27];

      v28 = objc_alloc(MEMORY[0x277D3F278]);
      v29 = [(PLOperator *)self workQueue];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294;
      v41[3] = &unk_278259810;
      v41[4] = self;
      v30 = [v28 initWithWorkQueue:v29 withRegistration:&unk_282C171D0 withBlock:v41];
      [(PLScreenStateAgent *)self setSpringBoardFlipbookStatisticsResponder:v30];
    }

    if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
    {
      [(PLScreenStateAgent *)self setLastDisplayLayoutContainsLockScreen:0];
      [(PLScreenStateAgent *)self setLastDisplayLayout:0];
      v31 = *MEMORY[0x277D3F5E8];
      v32 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
      v33 = [(PLOperator *)self storage];
      v34 = [v33 lastEntryForKey:v32 withFilters:&unk_282C14058];

      if (v34)
      {
        v35 = [v34 objectForKeyedSubscript:@"Active"];
        -[PLScreenStateAgent setDisplayState:](self, "setDisplayState:", [v35 intValue]);
      }

      else
      {
        [(PLScreenStateAgent *)self setDisplayState:0];
      }

      v36 = [(PLOperator *)PLDisplayAgent entryKeyForType:v31 andName:@"Display"];
      v37 = objc_alloc(MEMORY[0x277D3F1A8]);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311;
      v40[3] = &unk_2782597E8;
      v40[4] = self;
      v38 = [v37 initWithOperator:self forEntryKey:v36 withBlock:v40];
      [(PLScreenStateAgent *)self setDisplayCallback:v38];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventForward_WindowMode: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardWindowMode:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventBackward_IconDragging: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardIconDragging:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_Aggregate_WidgetAdditionAnimation: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logAggregateWidgetAdditionAnimation:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_Aggregate_WidgetFlipAnimation: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logAggregateWidgetFlipAnimation:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventBackward_BacklightStateChange: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardBacklightStateChange:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLScreenStateAgent_EventBackward_FlipbookStatistics: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardFlipbookStatistics:v6];
  v8 = *MEMORY[0x277D85DE8];
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AlwaysOnEnableState query received with info: %@", &v14, 0xCu);
  }

  v8 = [*(a1 + 32) processQuery:v6 withEntryKey:@"PLScreenStateAgent_EventBackward_AlwaysOnEnableState"];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = objc_opt_new();
    [v10 setObject:v9 forKeyedSubscript:@"AlwaysOnEnableState"];
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "AlwaysOnEnableState query received with info: %@", &v14, 0xCu);
    }
  }

  else
  {
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "AlwaysOnEnableState query did not succeed", &v14, 2u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "BacklightStateChange query received with info: %@", &v14, 0xCu);
  }

  v8 = [*(a1 + 32) processQuery:v6 withEntryKey:@"PLScreenStateAgent_EventBackward_BacklightStateChange"];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = objc_opt_new();
    [v10 setObject:v9 forKeyedSubscript:@"BacklightStateChange"];
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "BacklightStateChange query received with info: %@", &v14, 0xCu);
    }
  }

  else
  {
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "BacklightStateChange query did not succeed", &v14, 2u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "FlipbookStatistics query received with info: %@", &v14, 0xCu);
  }

  v8 = [*(a1 + 32) processQuery:v6 withEntryKey:@"PLScreenStateAgent_EventBackward_FlipbookStatistics"];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = objc_opt_new();
    [v10 setObject:v9 forKeyedSubscript:@"FlipbookStatistics"];
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "FlipbookStatistics query received with info: %@", &v14, 0xCu);
    }
  }

  else
  {
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "FlipbookStatistics query did not succeed", &v14, 2u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "userInfo=%@", &v6, 0xCu);
    }

    [*(a1 + 32) handleDisplayCallback:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  carPlayDisplayMonitor = self->_carPlayDisplayMonitor;
  if (carPlayDisplayMonitor)
  {
    [(FBSDisplayLayoutMonitor *)carPlayDisplayMonitor invalidate];
  }

  airPlayDisplayMonitor = self->_airPlayDisplayMonitor;
  if (airPlayDisplayMonitor)
  {
    [(FBSDisplayLayoutMonitor *)airPlayDisplayMonitor invalidate];
  }

  mainDisplayMonitor = self->_mainDisplayMonitor;
  if (mainDisplayMonitor)
  {
    [(FBSDisplayLayoutMonitor *)mainDisplayMonitor invalidate];
  }

  v6.receiver = self;
  v6.super_class = PLScreenStateAgent;
  [(PLAgent *)&v6 dealloc];
}

- (void)log
{
  v4 = [(PLScreenStateAgent *)self mainDisplayMonitor];
  v3 = [v4 currentLayout];
  [(PLScreenStateAgent *)self logEventForwardMainScreenState:v3];
}

- (void)logEventPointMainBacklightEvent:(id)a3 withContext:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D3F5E8];
  v7 = a4;
  v8 = a3;
  v9 = [(PLOperator *)PLScreenStateAgent entryKeyForType:v6 andName:@"BacklightEvent"];
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
  v11 = MEMORY[0x277CCABB0];
  v12 = [v7 transitionReason];

  v13 = [v11 numberWithInteger:SBSBacklightChangeSourceForDisplayLayoutTransitionReason()];
  [v10 setObject:v13 forKeyedSubscript:@"TransitionReason"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v8 displayBacklightLevel];

  v16 = [v14 numberWithInteger:v15];
  [v10 setObject:v16 forKeyedSubscript:@"BacklightLevel"];

  [(PLOperator *)self logEntry:v10];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __66__PLScreenStateAgent_logEventPointMainBacklightEvent_withContext___block_invoke;
    v28 = &__block_descriptor_40_e5_v8__0lu32l8;
    v29 = v17;
    if (qword_2811F3FA8 != -1)
    {
      dispatch_once(&qword_2811F3FA8, &block);
    }

    if (_MergedGlobals_1_9 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"BacklightEvent: %@", v10, block, v26, v27, v28, v29];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLScreenStateAgent.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLScreenStateAgent logEventPointMainBacklightEvent:withContext:]"];
      [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:557];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __66__PLScreenStateAgent_logEventPointMainBacklightEvent_withContext___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_9 = result;
  return result;
}

- (void)postEnhancedScreenStateNotification:(id)a3 currentLayout:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a3 isEqualToDictionary:a4];
  v6 = PLLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v14[0]) = 0;
      v8 = "current FBSDisplayLayoutElement dictionary is the same than the last, not sending a EnhancedScreenState notification";
      v9 = v6;
      v10 = 2;
LABEL_9:
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, v8, v14, v10);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v14[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "current FBSDisplayLayoutElement dictionary is different than the last, notifying EnhancedScreenState Listener", v14, 2u);
    }

    ++postEnhancedScreenStateNotification_currentLayout__enhancedScreenStateCounter;
    v11 = MEMORY[0x277D3F258];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.powerlog.EnhancedScreenState"];
    [v11 postNotificationName:v12 object:self userInfo:0];

    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 67109120;
      v14[1] = postEnhancedScreenStateNotification_currentLayout__enhancedScreenStateCounter;
      v8 = "FBSDisplayLayoutElement notification notified, count is now %d";
      v9 = v6;
      v10 = 8;
      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardMainScreenState:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke;
  v7[3] = &unk_278259658;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke(uint64_t a1)
{
  v130[2] = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v95 = *(a1 + 32);
    *buf = 138412290;
    *v123 = v95;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "calling logEventForwardMainScreenState with displayLayout=%@", buf, 0xCu);
  }

  if (!*(a1 + 32))
  {
    goto LABEL_74;
  }

  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v96 = [MEMORY[0x277D3F208] hasAOD];
    *buf = 67109120;
    *v123 = v96;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "screenState - hasAOD=%d", buf, 8u);
  }

  if ((!_os_feature_enabled_impl() || ([MEMORY[0x277D3F208] hasAOD] & 1) == 0) && objc_msgSend(*(a1 + 32), "displayBacklightLevel") < 1)
  {
    goto LABEL_74;
  }

  v109 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  v108 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) bounds];
  v5 = v4;
  [*(a1 + 32) bounds];
  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"level" ascending:0];
  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"layoutRole" ascending:0];
  v10 = [*(a1 + 32) elements];
  v99 = v9;
  v100 = v8;
  v130[0] = v8;
  v130[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
  v12 = [v10 sortedArrayUsingDescriptors:v11];

  v13 = [MEMORY[0x277CBEB18] array];
  v105 = [MEMORY[0x277CBEB38] dictionary];
  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v97 = _os_feature_enabled_impl();
    v98 = [MEMORY[0x277D3F208] hasAOD];
    *buf = 67109376;
    *v123 = v97;
    *&v123[4] = 1024;
    *&v123[6] = v98;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "dts runtime ff enabled=%d, [PLPlatform hasAOD]=%d]", buf, 0xEu);
  }

  v103 = v13;

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    [*(a1 + 40) setLastDisplayLayoutContainsLockScreen:0];
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v12;
  v107 = [obj countByEnumeratingWithState:&v110 objects:v129 count:16];
  if (!v107)
  {
    goto LABEL_62;
  }

  v15 = v5 * v7;
  v106 = *v111;
  v101 = *MEMORY[0x277D0AB98];
  v16 = -1.0;
  v17 = 0.0;
  v104 = a1;
  while (2)
  {
    for (i = 0; i != v107; ++i)
    {
      if (*v111 != v106)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v110 + 1) + 8 * i);
      v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v109 withDate:v108];
      v21 = [v19 bundleIdentifier];
      if (v21)
      {
        [v19 bundleIdentifier];
      }

      else
      {
        [v19 identifier];
      }
      v22 = ;
      [v20 setObject:v22 forKeyedSubscript:@"bundleID"];

      v23 = [v20 objectForKeyedSubscript:@"bundleID"];

      if (!v23)
      {
        v48 = PLLogCommon();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_ERROR, "Screen State element's bundleID/identifier is nil", buf, 2u);
        }

        goto LABEL_45;
      }

      if (_os_feature_enabled_impl())
      {
        if ([MEMORY[0x277D3F208] hasAOD])
        {
          v24 = [v20 objectForKeyedSubscript:@"bundleID"];
          v25 = [v24 isEqualToString:v101];

          if (v25)
          {
            [*(a1 + 40) setLastDisplayLayoutContainsLockScreen:1];
            v26 = PLLogCommon();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v75 = [v20 objectForKeyedSubscript:@"bundleID"];
              v76 = [*(a1 + 40) displayState];
              *buf = 138412802;
              *v123 = v75;
              *&v123[8] = 2112;
              v124 = v20;
              v125 = 1024;
              LODWORD(v126) = v76;
              _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "element bundleID=%@, entry=%@, displayState=%d", buf, 0x1Cu);
            }

            if ([*(a1 + 40) displayState] == 2)
            {
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v101, @"aod"];
              [v20 setObject:v27 forKeyedSubscript:@"bundleID"];

              v28 = PLLogCommon();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *v123 = v20;
                _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "entry after transformation = %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "layoutRole")}];
      [v20 setObject:v29 forKeyedSubscript:@"AppRole"];

      v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "displayType")}];
      [v20 setObject:v30 forKeyedSubscript:@"Display"];

      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "interfaceOrientation")}];
      [v20 setObject:v31 forKeyedSubscript:@"Orientation"];

      v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "level")}];
      [v20 setObject:v32 forKeyedSubscript:@"Level"];

      [v19 frame];
      v34 = v33;
      [v19 frame];
      v36 = v34 * v35 / v15;
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
      [v20 setObject:v37 forKeyedSubscript:@"ScreenWeight"];

      if (_os_feature_enabled_impl())
      {
        v38 = PLLogCommon();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v70 = [v20 objectForKeyedSubscript:@"bundleID"];
          *buf = 138412290;
          *v123 = v70;
          _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "FBSDisplayLayoutElement currentEntry bundleID: %@", buf, 0xCu);
        }

        if ([*(*(a1 + 40) + 88) count])
        {
          v39 = PLLogCommon();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v74 = [v20 objectForKeyedSubscript:@"bundleID"];
            *buf = 138412290;
            *v123 = v74;
            _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "FBSDisplayLayoutElement searching for currentEntry bundleID in last Dictionary: %@", buf, 0xCu);
          }

          v40 = *(*(a1 + 40) + 88);
          v41 = [v20 objectForKeyedSubscript:@"bundleID"];
          v42 = [v40 objectForKey:v41];

          if (v42)
          {
            v127[0] = @"AppRole";
            v43 = [v20 objectForKeyedSubscript:?];
            v128[0] = v43;
            v127[1] = @"Display";
            v44 = [v20 objectForKeyedSubscript:?];
            v128[1] = v44;
            v127[2] = @"Orientation";
            v45 = [v20 objectForKeyedSubscript:?];
            v128[2] = v45;
            v127[3] = @"Level";
            v46 = [v20 objectForKeyedSubscript:?];
            v128[3] = v46;
            v127[4] = @"ScreenWeight";
            v47 = [v20 objectForKeyedSubscript:?];
            v128[4] = v47;
            v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:5];

            a1 = v104;
            v49 = *(*(v104 + 40) + 88);
            v50 = [v20 objectForKeyedSubscript:@"bundleID"];
            v51 = [v49 objectForKey:v50];
            LODWORD(v45) = [v51 isEqualToDictionary:v48];

            if (v45)
            {
              v52 = PLLogCommon();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v77 = [v20 objectForKeyedSubscript:@"bundleID"];
                v78 = [v20 objectForKeyedSubscript:@"ScreenWeight"];
                v79 = [v20 objectForKeyedSubscript:@"Level"];
                *buf = 138412802;
                *v123 = v77;
                *&v123[8] = 2112;
                v124 = v78;
                v125 = 2112;
                v126 = v79;
                _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "current FBSDisplayLayoutElement entry was already logged, skipping logging for  %@ with screenWeight %@ and Level: %@", buf, 0x20u);
              }

              v53 = [v20 objectForKeyedSubscript:@"bundleID"];
              [v105 setObject:v48 forKeyedSubscript:v53];

LABEL_45:
              goto LABEL_58;
            }
          }
        }

        v54 = PLLogCommon();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          v71 = [v20 objectForKeyedSubscript:@"bundleID"];
          v72 = [v20 objectForKeyedSubscript:@"ScreenWeight"];
          v73 = [v20 objectForKeyedSubscript:@"Level"];
          *buf = 138412802;
          *v123 = v71;
          *&v123[8] = 2112;
          v124 = v72;
          v125 = 2112;
          v126 = v73;
          _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "FBSDisplayLayoutElement entries was not logged, logging %@ with screenWeight %@ and Level: %@", buf, 0x20u);
        }

        v120[0] = @"AppRole";
        v55 = [v20 objectForKeyedSubscript:?];
        v121[0] = v55;
        v120[1] = @"Display";
        v56 = [v20 objectForKeyedSubscript:?];
        v121[1] = v56;
        v120[2] = @"Orientation";
        v57 = [v20 objectForKeyedSubscript:?];
        v121[2] = v57;
        v120[3] = @"Level";
        v58 = [v20 objectForKeyedSubscript:?];
        v121[3] = v58;
        v120[4] = @"ScreenWeight";
        v59 = [v20 objectForKeyedSubscript:?];
        v121[4] = v59;
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:5];
        v61 = [v20 objectForKeyedSubscript:@"bundleID"];
        [v105 setObject:v60 forKeyedSubscript:v61];

        a1 = v104;
      }

      if ([MEMORY[0x277D3F180] taskMode])
      {
        v118[0] = @"AppRole";
        v62 = [v20 objectForKeyedSubscript:?];
        v119[0] = v62;
        v118[1] = @"Display";
        v63 = [v20 objectForKeyedSubscript:?];
        v119[1] = v63;
        v118[2] = @"Orientation";
        v64 = [v20 objectForKeyedSubscript:?];
        v119[2] = v64;
        v118[3] = @"Level";
        v65 = [v20 objectForKeyedSubscript:?];
        v119[3] = v65;
        v118[4] = @"ScreenWeight";
        v66 = [v20 objectForKeyedSubscript:?];
        v119[4] = v66;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:5];
        v68 = [v20 objectForKeyedSubscript:@"bundleID"];
        [v105 setObject:v67 forKeyedSubscript:v68];

        a1 = v104;
      }

      [v103 addObject:v20];
      ++displaySync_block_invoke_screenStateEntriesCounter;
      v69 = PLLogCommon();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v123 = displaySync_block_invoke_screenStateEntriesCounter;
        _os_log_debug_impl(&dword_21A4C6000, v69, OS_LOG_TYPE_DEBUG, "Logged %d FBSDisplayLayoutElement entries", buf, 8u);
      }

      if (v16 == [v19 level])
      {
        v36 = v17 + v36;
      }

      else
      {
        v16 = [v19 level];
      }

      v17 = v36;
      if (v36 >= 1.0)
      {

        goto LABEL_62;
      }

LABEL_58:
    }

    v107 = [obj countByEnumeratingWithState:&v110 objects:v129 count:16];
    if (v107)
    {
      continue;
    }

    break;
  }

LABEL_62:

  if ([MEMORY[0x277D3F180] taskMode])
  {
    [*(a1 + 40) postEnhancedScreenStateNotification:*(*(a1 + 40) + 96) currentLayout:v105];
    [*(*(a1 + 40) + 96) removeAllObjects];
    v80 = [v105 mutableCopy];
    v81 = *(a1 + 40);
    v82 = *(v81 + 96);
    *(v81 + 96) = v80;
  }

  v83 = _os_feature_enabled_impl();
  v84 = *(a1 + 40);
  if (v83)
  {
    [v84[11] removeAllObjects];
    v85 = [v105 mutableCopy];
    v86 = *(a1 + 40);
    v87 = *(v86 + 88);
    *(v86 + 88) = v85;

    if ([v103 count])
    {
      v88 = *(a1 + 40);
      v116 = v109;
      v117 = v103;
      v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      [v88 logEntries:v89 withGroupID:v109];

      v90 = PLLogCommon();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v123 = v103;
        goto LABEL_78;
      }

      goto LABEL_69;
    }

    v90 = PLLogCommon();
    v93 = v99;
    v92 = v100;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v90, OS_LOG_TYPE_DEBUG, "LayoutEntries is empty", buf, 2u);
    }
  }

  else
  {
    v114 = v109;
    v115 = v103;
    v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
    [v84 logEntries:v91 withGroupID:v109];

    v90 = PLLogCommon();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v123 = v103;
LABEL_78:
      _os_log_debug_impl(&dword_21A4C6000, v90, OS_LOG_TYPE_DEBUG, "LayoutEntries: %@", buf, 0xCu);
    }

LABEL_69:
    v93 = v99;
    v92 = v100;
  }

  [*(a1 + 40) accountWithLayoutEntries:v103];
  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    [*(a1 + 40) setLastDisplayLayout:*(a1 + 32)];
  }

LABEL_74:
  v94 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardCarScreenState:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  v6 = [MEMORY[0x277CBEAA8] monotonicDate];
  v7 = [v4 elements];
  v8 = [v7 count];

  if (v8)
  {
    v34 = v6;
    [v4 bounds];
    v10 = v9;
    [v4 bounds];
    v12 = v11;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v4 elements];
    v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = v10 * v12;
      v33 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v18 = v5;
          v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
          [v19 setEntryDate:v34];
          v20 = [v17 bundleIdentifier];
          if (v20)
          {
            [v17 bundleIdentifier];
          }

          else
          {
            [v17 identifier];
          }
          v21 = ;
          [v19 setObject:v21 forKeyedSubscript:@"bundleID"];

          v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "layoutRole")}];
          [v19 setObject:v22 forKeyedSubscript:@"AppRole"];

          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "displayType")}];
          [v19 setObject:v23 forKeyedSubscript:@"Display"];

          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "level")}];
          [v19 setObject:v24 forKeyedSubscript:@"Level"];

          [v17 frame];
          v26 = v25;
          [v17 frame];
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v26 * v27 / v15];
          [v19 setObject:v28 forKeyedSubscript:@"ScreenWeight"];

          [(PLOperator *)self logEntry:v19];
          [(PLScreenStateAgent *)self createCarPlayAccountingEvents:v19];

          v5 = v18;
        }

        v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v14);
    }

    v6 = v34;
  }

  else
  {
    v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    [v29 setEntryDate:v6];
    [v29 setObject:0 forKeyedSubscript:@"bundleID"];
    [v29 setObject:&unk_282C10188 forKeyedSubscript:@"AppRole"];
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "displayType")}];
    [v29 setObject:v30 forKeyedSubscript:@"Display"];

    [v29 setObject:&unk_282C1BD38 forKeyedSubscript:@"ScreenWeight"];
    [v29 setObject:&unk_282C101A0 forKeyedSubscript:@"Level"];
    [(PLOperator *)self logEntry:v29];
    [(PLScreenStateAgent *)self createCarPlayAccountingEvents:v29];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAirPlayScreenState:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  v6 = [MEMORY[0x277CBEAA8] monotonicDate];
  v7 = [v4 elements];
  v8 = [v7 count];

  if (v8)
  {
    v36 = v6;
    [v4 bounds];
    v10 = v9;
    [v4 bounds];
    v12 = v11;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [v4 elements];
    v13 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = v10 * v12;
      v35 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          v17 = self;
          if (*v38 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v18 = v4;
          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = v5;
          v21 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
          [v21 setEntryDate:v36];
          v22 = [v19 bundleIdentifier];
          if (v22)
          {
            [v19 bundleIdentifier];
          }

          else
          {
            [v19 identifier];
          }
          v23 = ;
          [v21 setObject:v23 forKeyedSubscript:@"bundleID"];

          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "layoutRole")}];
          [v21 setObject:v24 forKeyedSubscript:@"AppRole"];

          v4 = v18;
          v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "displayType")}];
          [v21 setObject:v25 forKeyedSubscript:@"Display"];

          v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "level")}];
          [v21 setObject:v26 forKeyedSubscript:@"Level"];

          [v19 frame];
          v28 = v27;
          [v19 frame];
          v30 = [MEMORY[0x277CCABB0] numberWithDouble:v28 * v29 / v15];
          [v21 setObject:v30 forKeyedSubscript:@"ScreenWeight"];

          self = v17;
          [(PLScreenStateAgent *)v17 createAirPlayWiFiAccountingEvent:v21];

          v5 = v20;
        }

        v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v14);
    }

    v6 = v36;
  }

  else
  {
    v31 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    [v31 setEntryDate:v6];
    [v31 setObject:0 forKeyedSubscript:@"bundleID"];
    [v31 setObject:&unk_282C10188 forKeyedSubscript:@"AppRole"];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "displayType")}];
    [v31 setObject:v32 forKeyedSubscript:@"Display"];

    [v31 setObject:&unk_282C1BD38 forKeyedSubscript:@"ScreenWeight"];
    [v31 setObject:&unk_282C101A0 forKeyedSubscript:@"Level"];
    [(PLScreenStateAgent *)self createAirPlayWiFiAccountingEvent:v31];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (unint64_t)convertWindowingMode:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Mirroring"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Medusa"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Chamois"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NonInteractive"])
  {
    v4 = 4;
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, " Unknown windowingMode %@", &v8, 0xCu);
    }

    v4 = 5;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)convertZoomLevel:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LargerText"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Standard"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Dense"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Denser"])
  {
    v4 = 4;
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, " Unknown zoomLevel %@", &v8, 0xCu);
    }

    v4 = 5;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)logEventForwardWindowMode:(id)a3
{
  v22 = a3;
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"WindowMode"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v22];
    v6 = [v22 objectForKeyedSubscript:@"displayName"];
    [v5 setObject:v6 forKeyedSubscript:@"displayType"];

    v7 = MEMORY[0x277CCABB0];
    v8 = [v22 objectForKeyedSubscript:@"windowingMode"];
    v9 = [v7 numberWithUnsignedInteger:{-[PLScreenStateAgent convertWindowingMode:](self, "convertWindowingMode:", v8)}];
    [v5 setObject:v9 forKeyedSubscript:@"windowingMode"];

    v10 = MEMORY[0x277CCABB0];
    v11 = [v22 objectForKeyedSubscript:@"zoomLevel"];
    v12 = [v10 numberWithUnsignedInteger:{-[PLScreenStateAgent convertZoomLevel:](self, "convertZoomLevel:", v11)}];
    [v5 setObject:v12 forKeyedSubscript:@"zoomLevel"];

    v13 = [v22 objectForKeyedSubscript:@"canvasSizeHeight"];
    v14 = [v13 intValue];
    v15 = [v22 objectForKeyedSubscript:@"canvasSizeWidth"];
    v16 = [v15 intValue] * v14;

    v17 = [v22 objectForKeyedSubscript:@"nativeSizeHeight"];
    v18 = [v17 intValue];
    v19 = [v22 objectForKeyedSubscript:@"nativeSizeWidth"];
    v20 = [v19 intValue];

    if (v16 >= 1 && v20 * v18 >= 1)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16 / (v20 * v18)];
      [v5 setObject:v21 forKeyedSubscript:@"canvasRatio"];
    }

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardIconDragging:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  v7 = [v6 convertFromSystemToMonotonic];

  v8 = [v5 objectForKeyedSubscript:@"Durations"];

  v9 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"IconDragging"];
  v10 = [MEMORY[0x277CBEB18] array];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __51__PLScreenStateAgent_logEventBackwardIconDragging___block_invoke;
  v19 = &unk_27825B088;
  v11 = v9;
  v20 = v11;
  v12 = v7;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  [v8 enumerateObjectsUsingBlock:&v16];
  if ([v13 count])
  {
    v23 = v11;
    v24[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [(PLOperator *)self logEntries:v14 withGroupID:v11];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __51__PLScreenStateAgent_logEventBackwardIconDragging___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
  [v5 setObject:v4 forKeyedSubscript:@"Duration"];

  [*(a1 + 48) addObject:v5];
}

- (void)logEventBackwardAlwaysOnEnableState:(id)a3
{
  v8 = a3;
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AlwaysOnEnableState"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v8];
    v6 = [v8 objectForKeyedSubscript:@"focusMode"];
    v7 = [v6 length];

    if (v7)
    {
      [v5 setObject:&unk_282C101B8 forKeyedSubscript:@"focusMode"];
    }

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardBacklightStateChange:(id)a3
{
  v9 = a3;
  if (([MEMORY[0x277D3F208] hasAOD] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102040) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102041))
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BacklightStateChange"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v9];
    v6 = MEMORY[0x277CCABB0];
    v7 = [v9 objectForKeyedSubscript:@"state"];
    v8 = [v6 numberWithUnsignedInt:{-[PLScreenStateAgent GetBacklightState:](self, "GetBacklightState:", v7)}];
    [v5 setObject:v8 forKeyedSubscript:@"state"];

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardFlipbookStatistics:(id)a3
{
  v6 = a3;
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"FlipbookStatistics"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v6];
    [(PLOperator *)self logEntry:v5];
  }
}

- (id)processQuery:(id)a3 withEntryKey:(id)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = PLLogScreenState();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "process for %@ Received query with payload=%@.", buf, 0x16u);
    }

    if (!v5 || ([v5 objectForKeyedSubscript:@"StartEpochTime"], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == 0, v9, v10))
    {
      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "process for %@ Invalid payload!", buf, 0xCu);
      }

      v27 = 0;
    }

    else
    {
      v11 = MEMORY[0x277CBEAA8];
      v12 = [v5 objectForKeyedSubscript:@"StartEpochTime"];
      [v12 doubleValue];
      v13 = [v11 dateWithTimeIntervalSince1970:?];

      v14 = [v13 convertFromSystemToMonotonic];
      v15 = PLLogScreenState();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "process for %@ queryStartDate is =%@.", buf, 0x16u);
      }

      v16 = objc_alloc(MEMORY[0x277D3F260]);
      v17 = MEMORY[0x277CCABB0];
      [v14 timeIntervalSince1970];
      v18 = [v17 numberWithDouble:?];
      v19 = [v16 initWithKey:@"timestamp" withValue:v18 withComparisonOperation:3];

      v20 = [MEMORY[0x277D3F2A0] sharedCore];
      v21 = [v20 storage];
      v42[0] = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
      v23 = [v21 entriesForKey:v6 withComparisons:v22];

      v24 = PLLogScreenState();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "selected query entries for %@ are selectedEntries =%@.", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v39 = __Block_byref_object_copy__1;
      v40 = __Block_byref_object_dispose__1;
      v41 = objc_opt_new();
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __48__PLScreenStateAgent_processQuery_withEntryKey___block_invoke;
      v31[3] = &unk_27825B0B0;
      v25 = v6;
      v32 = v25;
      v33 = buf;
      [v23 enumerateObjectsUsingBlock:v31];
      v26 = PLLogScreenState();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(*&buf[8] + 40);
        *v34 = 138412546;
        v35 = v25;
        v36 = 2112;
        v37 = v30;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "process for %@ output response is =%@.", v34, 0x16u);
      }

      v27 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __48__PLScreenStateAgent_processQuery_withEntryKey___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 dictionary];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "entryID")}];
  [v5 setObject:v6 forKeyedSubscript:@"ID"];

  v7 = [v3 entryDate];
  v8 = [v7 convertFromMonotonicToSystem];

  v9 = MEMORY[0x277CCABB0];
  [v8 timeIntervalSince1970];
  v10 = [v9 numberWithDouble:?];
  [v5 setObject:v10 forKeyedSubscript:@"timestamp"];

  v11 = PLLogScreenState();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = [v3 entryDate];
    v15 = 138412802;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "process for query related to %@ is NSDates=%@ and correctedTimeStamp=%@", &v15, 0x20u);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)logAggregateWidgetAdditionAnimation:(id)a3
{
  v4 = *MEMORY[0x277D3F5B8];
  v5 = a3;
  v7 = [(PLOperator *)PLScreenStateAgent entryKeyForType:v4 andName:@"WidgetAdditionAnimation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logAggregateWidgetFlipAnimation:(id)a3
{
  v4 = *MEMORY[0x277D3F5B8];
  v5 = a3;
  v7 = [(PLOperator *)PLScreenStateAgent entryKeyForType:v4 andName:@"WidgetFlipAnimation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)createCarPlayAccountingEvents:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"bundleID"];

  v16 = [MEMORY[0x277D3F0C0] sharedInstance];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"bundleID"];
    v19 = v5;
    v20[0] = &unk_282C1BD38;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v7 = [v3 entryDate];
    [v16 createDistributionEventForwardWithDistributionID:27 withChildNodeNameToWeight:v6 withStartDate:v7];

    v8 = [MEMORY[0x277D3F0C0] sharedInstance];
    v9 = [v3 objectForKeyedSubscript:@"bundleID"];
    v17 = v9;
    v10 = [v3 objectForKeyedSubscript:@"ScreenWeight"];
    v18 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [v3 entryDate];

    [v8 createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:v11 withStartDate:v12];
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = [v3 entryDate];

    [v16 createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v14];
    v15 = *MEMORY[0x277D85DE8];
  }
}

- (void)createAirPlayWiFiAccountingEvent:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"bundleID"];

  if (v4)
  {
    v5 = [MEMORY[0x277D3F0C0] sharedInstance];
    v6 = [v3 objectForKeyedSubscript:@"bundleID"];
    v10 = v6;
    v11[0] = &unk_282C1BD38;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v3 entryDate];
    [v5 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:v7 withStartDate:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)accountWithLayoutEntries:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 firstObject];
  v6 = [v5 entryDate];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  v9 = v7;
  if (!v8)
  {
LABEL_20:

    goto LABEL_21;
  }

  v10 = v8;
  v32 = v6;
  v11 = *v38;
  v12 = 0.0;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v37 + 1) + 8 * i);
      v15 = [v14 objectForKeyedSubscript:@"bundleID"];
      if (v15)
      {
        v16 = [v14 objectForKeyedSubscript:@"ScreenWeight"];
        [v4 setObject:v16 forKeyedSubscript:v15];

        v17 = [v14 objectForKeyedSubscript:@"ScreenWeight"];
        [v17 doubleValue];
        v12 = v12 + v18;
      }
    }

    v10 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  }

  while (v10);

  if (v12 > 0.0 && v12 != 1.0)
  {
    v9 = [v4 allKeys];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v9);
          }

          v23 = *(*(&v33 + 1) + 8 * j);
          v24 = MEMORY[0x277CCABB0];
          v25 = [v4 objectForKeyedSubscript:v23];
          [v25 doubleValue];
          v27 = [v24 numberWithDouble:v26 / v12];
          [v4 setObject:v27 forKeyedSubscript:v23];
        }

        v20 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v20);
      v6 = v32;
    }

    goto LABEL_20;
  }

LABEL_21:
  v28 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v28 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:v4 withStartDate:v6];

  v29 = [MEMORY[0x277D3F0C0] sharedInstance];
  v30 = [v4 allKeys];
  [v29 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:v30 withStartDate:v6];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)handleDisplayCallback:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    *v18 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "userInfo=%@", &v17, 0xCu);
  }

  v6 = [v4 objectForKey:@"entry"];
  v7 = [v6 objectForKeyedSubscript:@"Active"];
  -[PLScreenStateAgent setDisplayState:](self, "setDisplayState:", [v7 intValue]);

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(PLScreenStateAgent *)self displayState];
    v13 = [(PLScreenStateAgent *)self lastDisplayLayoutContainsLockScreen];
    v14 = [(PLScreenStateAgent *)self lastDisplayLayout];
    v17 = 67109634;
    *v18 = v12;
    *&v18[4] = 1024;
    *&v18[6] = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "self.displayState=%d, self.lastDisplayLayoutContainsLockScreen=%d,  self.lastDisplayLayout=%@", &v17, 0x18u);
  }

  if (([(PLScreenStateAgent *)self displayState]== 2 || [(PLScreenStateAgent *)self displayState]== 1) && [(PLScreenStateAgent *)self lastDisplayLayoutContainsLockScreen])
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(PLScreenStateAgent *)self displayState];
      v16 = [(PLScreenStateAgent *)self lastDisplayLayoutContainsLockScreen];
      v17 = 67109376;
      *v18 = v15;
      *&v18[4] = 1024;
      *&v18[6] = v16;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "self.displayState=%d, self.lastDisplayLayoutContainsLockScreen=%d", &v17, 0xEu);
    }

    v10 = [(PLScreenStateAgent *)self lastDisplayLayout];
    [(PLScreenStateAgent *)self logEventForwardMainScreenState:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v8 transitionReason];
    v14 = [v8 transitionReasons];
    v15 = 138413058;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "calling didUpdateDisplayLayout=%@ with context=%@, transitionReason=%@, transitionReasons=%@", &v15, 0x2Au);
  }

  v10 = [v8 transitionReason];
  v11 = SBSBacklightChangeSourceForDisplayLayoutTransitionReason();

  if (!v11 || ([(PLScreenStateAgent *)self logEventPointMainBacklightEvent:v7 withContext:v8], v11 > 0x1C) || ((1 << v11) & 0x1A000050) == 0)
  {
    [(PLScreenStateAgent *)self logEventForwardMainScreenState:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end