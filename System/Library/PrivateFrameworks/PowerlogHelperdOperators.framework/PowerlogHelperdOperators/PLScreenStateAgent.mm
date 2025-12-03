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
- (id)processQuery:(id)query withEntryKey:(id)key;
- (int)GetBacklightState:(id)state;
- (unint64_t)convertWindowingMode:(id)mode;
- (unint64_t)convertZoomLevel:(id)level;
- (void)accountWithLayoutEntries:(id)entries;
- (void)createAirPlayWiFiAccountingEvent:(id)event;
- (void)createCarPlayAccountingEvents:(id)events;
- (void)dealloc;
- (void)handleDisplayCallback:(id)callback;
- (void)initOperatorDependancies;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)log;
- (void)logAggregateWidgetAdditionAnimation:(id)animation;
- (void)logAggregateWidgetFlipAnimation:(id)animation;
- (void)logEventBackwardAlwaysOnEnableState:(id)state;
- (void)logEventBackwardBacklightStateChange:(id)change;
- (void)logEventBackwardFlipbookStatistics:(id)statistics;
- (void)logEventBackwardIconDragging:(id)dragging;
- (void)logEventForwardAirPlayScreenState:(id)state;
- (void)logEventForwardCarScreenState:(id)state;
- (void)logEventForwardMainScreenState:(id)state;
- (void)logEventForwardWindowMode:(id)mode;
- (void)logEventPointMainBacklightEvent:(id)event withContext:(id)context;
- (void)postEnhancedScreenStateNotification:(id)notification currentLayout:(id)layout;
@end

@implementation PLScreenStateAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLScreenStateAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"BacklightEvent";
  entryEventPointBacklightEvent = [self entryEventPointBacklightEvent];
  v7[0] = entryEventPointBacklightEvent;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointBacklightEvent
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B238;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"TransitionReason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"BacklightLevel";
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

+ (id)entryEventForwardDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"ScreenState";
  entryEventForwardScreenState = [self entryEventForwardScreenState];
  v8[1] = @"WindowMode";
  v9[0] = entryEventForwardScreenState;
  entryEventForwardWindowMode = [self entryEventForwardWindowMode];
  v9[1] = entryEventForwardWindowMode;
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
  v23[0] = &unk_28714B248;
  v23[1] = MEMORY[0x277CBEC38];
  v22[2] = *MEMORY[0x277D3F4A0];
  v23[2] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"bundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v21[0] = commonTypeDict_StringFormat_withBundleID;
  v20[1] = @"ScreenWeight";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v21[1] = commonTypeDict_RealFormat;
  v20[2] = @"AppRole";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v21[2] = commonTypeDict_IntegerFormat;
  v20[3] = @"Display";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v21[3] = commonTypeDict_IntegerFormat2;
  v20[4] = @"Level";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v21[4] = commonTypeDict_RealFormat2;
  v20[5] = @"Orientation";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v21[5] = commonTypeDict_IntegerFormat3;
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
    v18 = &unk_28714B238;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"displayType";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v16[0] = commonTypeDict_StringFormat;
    v15[1] = @"zoomLevel";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v16[1] = commonTypeDict_IntegerFormat;
    v15[2] = @"windowingMode";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v16[2] = commonTypeDict_IntegerFormat2;
    v15[3] = @"canvasRatio";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v16[3] = commonTypeDict_RealFormat;
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
  entryEventBackwardDefinitionIconDragging = [self entryEventBackwardDefinitionIconDragging];
  v11[0] = entryEventBackwardDefinitionIconDragging;
  v10[1] = @"AlwaysOnEnableState";
  entryEventBackwardDefinitionAlwaysOnEnableState = [self entryEventBackwardDefinitionAlwaysOnEnableState];
  v11[1] = entryEventBackwardDefinitionAlwaysOnEnableState;
  v10[2] = @"BacklightStateChange";
  entryEventBackwardDefinitionBacklightStateChange = [self entryEventBackwardDefinitionBacklightStateChange];
  v11[2] = entryEventBackwardDefinitionBacklightStateChange;
  v10[3] = @"FlipbookStatistics";
  entryEventBackwardDefinitionFlipbookStatistics = [self entryEventBackwardDefinitionFlipbookStatistics];
  v11[3] = entryEventBackwardDefinitionFlipbookStatistics;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int)GetBacklightState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"off"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"suppressed"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"inactiveOnFlipbook"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"inactiveOnLiveFlipbook"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"inactiveOnLive"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"activeDimmed"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"active"])
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
  v12 = &unk_28714B238;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Duration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v10 = commonTypeDict_RealFormat;
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
    v19[0] = &unk_28714B258;
    v19[1] = &unk_287145A30;
    v18[2] = *MEMORY[0x277D3F588];
    v19[2] = &unk_28714B268;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"alwaysOnResolvedEnabled";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v17[0] = commonTypeDict_BoolFormat;
    v16[1] = @"alwaysOnEnabledSetting";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
    v17[1] = commonTypeDict_BoolFormat2;
    v16[2] = @"lowPowerMode";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
    v17[2] = commonTypeDict_BoolFormat3;
    v16[3] = @"focusMode";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
    v17[3] = commonTypeDict_BoolFormat4;
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
    v18 = &unk_28714B258;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"state";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v16[0] = commonTypeDict_IntegerFormat;
    v15[1] = @"explanation";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v16[1] = commonTypeDict_StringFormat;
    v15[2] = @"suppressionChangeType";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v16[2] = commonTypeDict_StringFormat2;
    v15[3] = @"suppressionReasons";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
    v16[3] = commonTypeDict_StringFormat3;
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
    v58 = &unk_28714B238;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v60[0] = v54;
    v59[1] = *MEMORY[0x277D3F540];
    v55[0] = @"invalidatedFramesUpTo2mStale";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v56[0] = commonTypeDict_IntegerFormat;
    v55[1] = @"invalidatedFramesUpTo3mStale";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v56[1] = commonTypeDict_IntegerFormat2;
    v55[2] = @"invalidatedFramesUpTo4mStale";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v56[2] = commonTypeDict_IntegerFormat3;
    v55[3] = @"invalidatedFramesUpTo5mStale";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v56[3] = commonTypeDict_IntegerFormat4;
    v55[4] = @"invalidatedFramesUpTo6mStale";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v56[4] = commonTypeDict_IntegerFormat5;
    v55[5] = @"discardedFramesUpTo2mStale";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v56[5] = commonTypeDict_IntegerFormat6;
    v55[6] = @"discardedFramesUpTo3mStale";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v56[6] = commonTypeDict_IntegerFormat7;
    v55[7] = @"discardedFramesUpTo4mStale";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v56[7] = commonTypeDict_IntegerFormat8;
    v55[8] = @"discardedFramesUpTo5mStale";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v56[8] = commonTypeDict_IntegerFormat9;
    v55[9] = @"discardedFramesUpTo6mStale";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v56[9] = commonTypeDict_IntegerFormat10;
    v55[10] = @"renderedFramesLessThan1Min";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v56[10] = commonTypeDict_IntegerFormat11;
    v55[11] = @"renderedFrames1to2Min";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
    v56[11] = commonTypeDict_IntegerFormat12;
    v55[12] = @"renderedFrames2to3Min";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v56[12] = commonTypeDict_IntegerFormat13;
    v55[13] = @"renderedFrames3to4Min";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
    v56[13] = commonTypeDict_IntegerFormat14;
    v55[14] = @"renderedFrames4to5Min";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
    v56[14] = commonTypeDict_IntegerFormat15;
    v55[15] = @"renderedFrames5to6Min";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
    v56[15] = commonTypeDict_IntegerFormat16;
    v55[16] = @"renderedFramesMoreThan6Min";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
    v56[16] = commonTypeDict_IntegerFormat17;
    v55[17] = @"renderedFrameCount";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
    v56[17] = commonTypeDict_IntegerFormat18;
    v55[18] = @"renderedPartialMinuteCount";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
    v56[18] = commonTypeDict_IntegerFormat19;
    v55[19] = @"millisecondsDisplayOff";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
    v56[19] = commonTypeDict_IntegerFormat20;
    v55[20] = @"millisecondsDisplayOn";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
    v56[20] = commonTypeDict_IntegerFormat21;
    v55[21] = @"millisecondsDisplayDimmed";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
    v56[21] = commonTypeDict_IntegerFormat22;
    v55[22] = @"millisecondsShowingAOT";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
    v56[22] = commonTypeDict_IntegerFormat23;
    v55[23] = @"millisecondsSuppressed";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
    v56[23] = commonTypeDict_IntegerFormat24;
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
  entryAggregateDefinitionWidgetAdditionAnimation = [self entryAggregateDefinitionWidgetAdditionAnimation];
  v8[1] = @"WidgetFlipAnimation";
  v9[0] = entryAggregateDefinitionWidgetAdditionAnimation;
  entryAggregateDefinitionWidgetFlipAnimation = [self entryAggregateDefinitionWidgetFlipAnimation];
  v9[1] = entryAggregateDefinitionWidgetFlipAnimation;
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
  v19[0] = &unk_28714B238;
  v19[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v3;
  v20[1] = *MEMORY[0x277D3F540];
  v16 = @"Count";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v21[1] = v6;
  v20[2] = *MEMORY[0x277D3F478];
  v14 = &unk_28714B278;
  v12 = *MEMORY[0x277D3F470];
  v13 = &unk_28714B268;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v20[3] = *MEMORY[0x277D3F488];
  v21[2] = v8;
  v21[3] = &unk_28714C890;
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
  v19[0] = &unk_28714B238;
  v19[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v3;
  v20[1] = *MEMORY[0x277D3F540];
  v16 = @"Count";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v21[1] = v6;
  v20[2] = *MEMORY[0x277D3F478];
  v14 = &unk_28714B278;
  v12 = *MEMORY[0x277D3F470];
  v13 = &unk_28714B268;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v20[3] = *MEMORY[0x277D3F488];
  v21[2] = v8;
  v21[3] = &unk_28714C8A8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PLScreenStateAgent)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || +[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    selfCopy = 0;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = PLScreenStateAgent;
    v5 = [(PLAgent *)&v25 init];
    v6 = v5;
    if (v5)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __26__PLScreenStateAgent_init__block_invoke_2;
      v23[3] = &unk_279A5CB60;
      v7 = v5;
      v24 = v7;
      v8 = MEMORY[0x25F8D2750](v23);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __26__PLScreenStateAgent_init__block_invoke_4;
      v21 = &unk_279A5CB60;
      v9 = v7;
      v22 = v9;
      v10 = MEMORY[0x25F8D2750](&v18);
      v11 = objc_alloc(MEMORY[0x277D0AD10]);
      v12 = [v11 initWithDisplayType:0 qualityOfService:17 handler:{&__block_literal_global_219, v18, v19, v20, v21}];
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
    selfCopy = self;
  }

  return selfCopy;
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
    v5[3] = &unk_279A5C3F8;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
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
    v5[3] = &unk_279A5C3F8;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)initOperatorDependancies
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  [*(a1 + 32) logEventForwardWindowMode:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245_cold_1();
  }

  [*(a1 + 32) logEventBackwardIconDragging:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250_cold_1();
  }

  [*(a1 + 32) logAggregateWidgetAdditionAnimation:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255_cold_1();
  }

  [*(a1 + 32) logAggregateWidgetFlipAnimation:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260_cold_1();
  }

  [*(a1 + 32) logEventBackwardAlwaysOnEnableState:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265_cold_1();
  }

  [*(a1 + 32) logEventBackwardBacklightStateChange:v6];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270_cold_1();
  }

  [*(a1 + 32) logEventBackwardFlipbookStatistics:v6];
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276_cold_1();
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
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276_cold_1();
    }
  }

  else
  {
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286_cold_1();
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
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286_cold_1();
    }
  }

  else
  {
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

id __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogScreenState();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294_cold_1();
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
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294_cold_1();
    }
  }

  else
  {
    v11 = PLLogScreenState();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294_cold_3();
    }

    v10 = 0;
  }

  return v10;
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311_cold_1();
    }

    [*(a1 + 32) handleDisplayCallback:v3];
  }
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
  mainDisplayMonitor = [(PLScreenStateAgent *)self mainDisplayMonitor];
  currentLayout = [mainDisplayMonitor currentLayout];
  [(PLScreenStateAgent *)self logEventForwardMainScreenState:currentLayout];
}

- (void)logEventPointMainBacklightEvent:(id)event withContext:(id)context
{
  v6 = *MEMORY[0x277D3F5E8];
  contextCopy = context;
  eventCopy = event;
  v9 = [(PLOperator *)PLScreenStateAgent entryKeyForType:v6 andName:@"BacklightEvent"];
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
  v11 = MEMORY[0x277CCABB0];
  transitionReason = [contextCopy transitionReason];

  v13 = [v11 numberWithInteger:SBSBacklightChangeSourceForDisplayLayoutTransitionReason()];
  [v10 setObject:v13 forKeyedSubscript:@"TransitionReason"];

  v14 = MEMORY[0x277CCABB0];
  displayBacklightLevel = [eventCopy displayBacklightLevel];

  v16 = [v14 numberWithInteger:displayBacklightLevel];
  [v10 setObject:v16 forKeyedSubscript:@"BacklightLevel"];

  [(PLOperator *)self logEntry:v10];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __66__PLScreenStateAgent_logEventPointMainBacklightEvent_withContext___block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0lu32l8;
    v28 = v17;
    if (logEventPointMainBacklightEvent_withContext__defaultOnce != -1)
    {
      dispatch_once(&logEventPointMainBacklightEvent_withContext__defaultOnce, &block);
    }

    if (logEventPointMainBacklightEvent_withContext__classDebugEnabled == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"BacklightEvent: %@", v10, block, v25, v26, v27, v28];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLScreenStateAgent.m"];
      lastPathComponent = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLScreenStateAgent logEventPointMainBacklightEvent:withContext:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:557];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __66__PLScreenStateAgent_logEventPointMainBacklightEvent_withContext___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMainBacklightEvent_withContext__classDebugEnabled = result;
  return result;
}

- (void)postEnhancedScreenStateNotification:(id)notification currentLayout:(id)layout
{
  v5 = [notification isEqualToDictionary:layout];
  v6 = PLLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [PLScreenStateAgent postEnhancedScreenStateNotification:currentLayout:];
    }
  }

  else
  {
    if (v7)
    {
      [PLScreenStateAgent postEnhancedScreenStateNotification:currentLayout:];
    }

    ++postEnhancedScreenStateNotification_currentLayout__enhancedScreenStateCounter;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.powerlog.EnhancedScreenState"];
    [PLUtilities postNotificationName:v8 object:self userInfo:0];

    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLScreenStateAgent postEnhancedScreenStateNotification:currentLayout:];
    }
  }
}

- (void)logEventForwardMainScreenState:(id)state
{
  stateCopy = state;
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke;
  v7[3] = &unk_279A5C3F8;
  v8 = stateCopy;
  selfCopy = self;
  v6 = stateCopy;
  dispatch_async(workQueue, v7);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke(uint64_t a1)
{
  v139[2] = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (!*(a1 + 32))
  {
    goto LABEL_75;
  }

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_2();
  }

  if ((!_os_feature_enabled_impl() || ([MEMORY[0x277D3F208] hasAOD] & 1) == 0) && objc_msgSend(*(a1 + 32), "displayBacklightLevel") < 1)
  {
    goto LABEL_75;
  }

  v109 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  v108 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) bounds];
  v11 = v10;
  [*(a1 + 32) bounds];
  v13 = v12;
  v14 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"level" ascending:0];
  v15 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"layoutRole" ascending:0];
  v16 = [*(a1 + 32) elements];
  v99 = v15;
  v100 = v14;
  v139[0] = v14;
  v139[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:2];
  v18 = [v16 sortedArrayUsingDescriptors:v17];

  v19 = [MEMORY[0x277CBEB18] array];
  v105 = [MEMORY[0x277CBEB38] dictionary];
  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_3();
  }

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    [*(a1 + 40) setLastDisplayLayoutContainsLockScreen:0];
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v18;
  v107 = [obj countByEnumeratingWithState:&v112 objects:v138 count:16];
  if (!v107)
  {
    goto LABEL_62;
  }

  v21 = v11 * v13;
  v106 = *v113;
  v101 = *MEMORY[0x277D0AB98];
  v22 = -1.0;
  v23 = 0.0;
  v104 = a1;
  v102 = v19;
  while (2)
  {
    for (i = 0; i != v107; ++i)
    {
      if (*v113 != v106)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v112 + 1) + 8 * i);
      v26 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v109 withDate:v108];
      v27 = [v25 bundleIdentifier];
      if (v27)
      {
        [v25 bundleIdentifier];
      }

      else
      {
        [v25 identifier];
      }
      v28 = ;
      [v26 setObject:v28 forKeyedSubscript:@"bundleID"];

      v29 = [v26 objectForKeyedSubscript:@"bundleID"];

      if (!v29)
      {
        v54 = PLLogCommon();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_7(&v110, v111, v54);
        }

        goto LABEL_45;
      }

      if (_os_feature_enabled_impl())
      {
        if ([MEMORY[0x277D3F208] hasAOD])
        {
          v30 = [v26 objectForKeyedSubscript:@"bundleID"];
          v31 = [v30 isEqualToString:v101];

          if (v31)
          {
            [*(a1 + 40) setLastDisplayLayoutContainsLockScreen:1];
            v32 = PLLogCommon();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v79 = [v26 objectForKeyedSubscript:@"bundleID"];
              v80 = [*(a1 + 40) displayState];
              *buf = 138412802;
              v127 = v79;
              v128 = 2112;
              v129 = v26;
              v130 = 1024;
              LODWORD(v131) = v80;
              _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, "element bundleID=%@, entry=%@, displayState=%d", buf, 0x1Cu);
            }

            if ([*(a1 + 40) displayState] == 2)
            {
              v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v101, @"aod"];
              [v26 setObject:v33 forKeyedSubscript:@"bundleID"];

              v34 = PLLogCommon();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v127 = v26;
                _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "entry after transformation = %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v35 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v25, "layoutRole")}];
      [v26 setObject:v35 forKeyedSubscript:@"AppRole"];

      v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "displayType")}];
      [v26 setObject:v36 forKeyedSubscript:@"Display"];

      v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "interfaceOrientation")}];
      [v26 setObject:v37 forKeyedSubscript:@"Orientation"];

      v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v25, "level")}];
      [v26 setObject:v38 forKeyedSubscript:@"Level"];

      [v25 frame];
      v40 = v39;
      [v25 frame];
      v42 = v40 * v41 / v21;
      v43 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
      [v26 setObject:v43 forKeyedSubscript:@"ScreenWeight"];

      if (_os_feature_enabled_impl())
      {
        v44 = PLLogCommon();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_4(&v136, v26, &v137);
        }

        if ([*(*(a1 + 40) + 88) count])
        {
          v45 = PLLogCommon();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_5(&v134, v26, &v135);
          }

          v46 = *(*(a1 + 40) + 88);
          v47 = [v26 objectForKeyedSubscript:@"bundleID"];
          v48 = [v46 objectForKey:v47];

          if (v48)
          {
            v132[0] = @"AppRole";
            v49 = [v26 objectForKeyedSubscript:?];
            v133[0] = v49;
            v132[1] = @"Display";
            v50 = [v26 objectForKeyedSubscript:?];
            v133[1] = v50;
            v132[2] = @"Orientation";
            v51 = [v26 objectForKeyedSubscript:?];
            v133[2] = v51;
            v132[3] = @"Level";
            v52 = [v26 objectForKeyedSubscript:@"Level"];
            v133[3] = v52;
            v132[4] = @"ScreenWeight";
            v53 = [v26 objectForKeyedSubscript:?];
            v133[4] = v53;
            v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:5];

            a1 = v104;
            v55 = *(*(v104 + 40) + 88);
            v56 = [v26 objectForKeyedSubscript:@"bundleID"];
            v57 = [v55 objectForKey:v56];
            LODWORD(v51) = [v57 isEqualToDictionary:v54];

            if (v51)
            {
              v58 = PLLogCommon();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
              {
                v81 = [v26 objectForKeyedSubscript:@"bundleID"];
                v82 = [v26 objectForKeyedSubscript:@"ScreenWeight"];
                v83 = [v26 objectForKeyedSubscript:@"Level"];
                *buf = 138412802;
                v127 = v81;
                v128 = 2112;
                v129 = v82;
                v130 = 2112;
                v131 = v83;
                _os_log_debug_impl(&dword_25EE51000, v58, OS_LOG_TYPE_DEBUG, "current FBSDisplayLayoutElement entry was already logged, skipping logging for  %@ with screenWeight %@ and Level: %@", buf, 0x20u);
              }

              v59 = [v26 objectForKeyedSubscript:@"bundleID"];
              [v105 setObject:v54 forKeyedSubscript:v59];

              v19 = v102;
LABEL_45:

              goto LABEL_58;
            }
          }
        }

        v60 = PLLogCommon();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v76 = [v26 objectForKeyedSubscript:@"bundleID"];
          v77 = [v26 objectForKeyedSubscript:@"ScreenWeight"];
          v78 = [v26 objectForKeyedSubscript:@"Level"];
          *buf = 138412802;
          v127 = v76;
          v128 = 2112;
          v129 = v77;
          v130 = 2112;
          v131 = v78;
          _os_log_debug_impl(&dword_25EE51000, v60, OS_LOG_TYPE_DEBUG, "FBSDisplayLayoutElement entries was not logged, logging %@ with screenWeight %@ and Level: %@", buf, 0x20u);
        }

        v124[0] = @"AppRole";
        v61 = [v26 objectForKeyedSubscript:?];
        v125[0] = v61;
        v124[1] = @"Display";
        v62 = [v26 objectForKeyedSubscript:?];
        v125[1] = v62;
        v124[2] = @"Orientation";
        v63 = [v26 objectForKeyedSubscript:?];
        v125[2] = v63;
        v124[3] = @"Level";
        v64 = [v26 objectForKeyedSubscript:@"Level"];
        v125[3] = v64;
        v124[4] = @"ScreenWeight";
        v65 = [v26 objectForKeyedSubscript:?];
        v125[4] = v65;
        v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:5];
        v67 = [v26 objectForKeyedSubscript:@"bundleID"];
        [v105 setObject:v66 forKeyedSubscript:v67];

        a1 = v104;
        v19 = v102;
      }

      if ([MEMORY[0x277D3F180] taskMode])
      {
        v122[0] = @"AppRole";
        v68 = [v26 objectForKeyedSubscript:?];
        v123[0] = v68;
        v122[1] = @"Display";
        v69 = [v26 objectForKeyedSubscript:?];
        v123[1] = v69;
        v122[2] = @"Orientation";
        v70 = [v26 objectForKeyedSubscript:?];
        v123[2] = v70;
        v122[3] = @"Level";
        v71 = [v26 objectForKeyedSubscript:@"Level"];
        v123[3] = v71;
        v122[4] = @"ScreenWeight";
        v72 = [v26 objectForKeyedSubscript:?];
        v123[4] = v72;
        v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:5];
        v74 = [v26 objectForKeyedSubscript:@"bundleID"];
        [v105 setObject:v73 forKeyedSubscript:v74];

        v19 = v102;
        a1 = v104;
      }

      [v19 addObject:v26];
      ++displaySync_block_invoke_screenStateEntriesCounter;
      v75 = PLLogCommon();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_6(v120, v121, v75);
      }

      if (v22 == [v25 level])
      {
        v42 = v23 + v42;
      }

      else
      {
        v22 = [v25 level];
      }

      v23 = v42;
      if (v42 >= 1.0)
      {

        goto LABEL_62;
      }

LABEL_58:
    }

    v107 = [obj countByEnumeratingWithState:&v112 objects:v138 count:16];
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
    v84 = [v105 mutableCopy];
    v85 = *(a1 + 40);
    v86 = *(v85 + 96);
    *(v85 + 96) = v84;
  }

  v87 = _os_feature_enabled_impl();
  v88 = *(a1 + 40);
  if (!v87)
  {
    v116 = v109;
    v117 = v19;
    v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    [v88 logEntries:v95 withGroupID:v109];

    v94 = PLLogCommon();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  [v88[11] removeAllObjects];
  v89 = [v105 mutableCopy];
  v90 = *(a1 + 40);
  v91 = *(v90 + 88);
  *(v90 + 88) = v89;

  if ([v19 count])
  {
    v92 = *(a1 + 40);
    v118 = v109;
    v119 = v19;
    v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    [v92 logEntries:v93 withGroupID:v109];

    v94 = PLLogCommon();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
LABEL_69:
      __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_8();
    }

LABEL_70:
    v97 = v99;
    v96 = v100;
  }

  else
  {
    v94 = PLLogCommon();
    v97 = v99;
    v96 = v100;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_10();
    }
  }

  [*(a1 + 40) accountWithLayoutEntries:v19];
  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    [*(a1 + 40) setLastDisplayLayout:*(a1 + 32)];
  }

LABEL_75:
  v98 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardCarScreenState:(id)state
{
  v40 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  elements = [stateCopy elements];
  v8 = [elements count];

  if (v8)
  {
    v34 = monotonicDate;
    [stateCopy bounds];
    v10 = v9;
    [stateCopy bounds];
    v12 = v11;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [stateCopy elements];
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
          bundleIdentifier = [v17 bundleIdentifier];
          if (bundleIdentifier)
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

          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "displayType")}];
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

    monotonicDate = v34;
  }

  else
  {
    v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    [v29 setEntryDate:monotonicDate];
    [v29 setObject:0 forKeyedSubscript:@"bundleID"];
    [v29 setObject:&unk_287145A60 forKeyedSubscript:@"AppRole"];
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "displayType")}];
    [v29 setObject:v30 forKeyedSubscript:@"Display"];

    [v29 setObject:&unk_28714B238 forKeyedSubscript:@"ScreenWeight"];
    [v29 setObject:&unk_287145A78 forKeyedSubscript:@"Level"];
    [(PLOperator *)self logEntry:v29];
    [(PLScreenStateAgent *)self createCarPlayAccountingEvents:v29];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAirPlayScreenState:(id)state
{
  v42 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  elements = [stateCopy elements];
  v8 = [elements count];

  if (v8)
  {
    v36 = monotonicDate;
    [stateCopy bounds];
    v10 = v9;
    [stateCopy bounds];
    v12 = v11;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [stateCopy elements];
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
          selfCopy = self;
          if (*v38 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v18 = stateCopy;
          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = v5;
          v21 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
          [v21 setEntryDate:v36];
          bundleIdentifier = [v19 bundleIdentifier];
          if (bundleIdentifier)
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

          stateCopy = v18;
          v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "displayType")}];
          [v21 setObject:v25 forKeyedSubscript:@"Display"];

          v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "level")}];
          [v21 setObject:v26 forKeyedSubscript:@"Level"];

          [v19 frame];
          v28 = v27;
          [v19 frame];
          v30 = [MEMORY[0x277CCABB0] numberWithDouble:v28 * v29 / v15];
          [v21 setObject:v30 forKeyedSubscript:@"ScreenWeight"];

          self = selfCopy;
          [(PLScreenStateAgent *)selfCopy createAirPlayWiFiAccountingEvent:v21];

          v5 = v20;
        }

        v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v14);
    }

    monotonicDate = v36;
  }

  else
  {
    v31 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    [v31 setEntryDate:monotonicDate];
    [v31 setObject:0 forKeyedSubscript:@"bundleID"];
    [v31 setObject:&unk_287145A60 forKeyedSubscript:@"AppRole"];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stateCopy, "displayType")}];
    [v31 setObject:v32 forKeyedSubscript:@"Display"];

    [v31 setObject:&unk_28714B238 forKeyedSubscript:@"ScreenWeight"];
    [v31 setObject:&unk_287145A78 forKeyedSubscript:@"Level"];
    [(PLScreenStateAgent *)self createAirPlayWiFiAccountingEvent:v31];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (unint64_t)convertWindowingMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Mirroring"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Medusa"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"Chamois"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"NonInteractive"])
  {
    v4 = 4;
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLScreenStateAgent convertWindowingMode:];
    }

    v4 = 5;
  }

  return v4;
}

- (unint64_t)convertZoomLevel:(id)level
{
  levelCopy = level;
  if ([levelCopy isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([levelCopy isEqualToString:@"LargerText"])
  {
    v4 = 1;
  }

  else if ([levelCopy isEqualToString:@"Standard"])
  {
    v4 = 2;
  }

  else if ([levelCopy isEqualToString:@"Dense"])
  {
    v4 = 3;
  }

  else if ([levelCopy isEqualToString:@"Denser"])
  {
    v4 = 4;
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLScreenStateAgent convertZoomLevel:];
    }

    v4 = 5;
  }

  return v4;
}

- (void)logEventForwardWindowMode:(id)mode
{
  modeCopy = mode;
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"WindowMode"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:modeCopy];
    v6 = [modeCopy objectForKeyedSubscript:@"displayName"];
    [v5 setObject:v6 forKeyedSubscript:@"displayType"];

    v7 = MEMORY[0x277CCABB0];
    v8 = [modeCopy objectForKeyedSubscript:@"windowingMode"];
    v9 = [v7 numberWithUnsignedInteger:{-[PLScreenStateAgent convertWindowingMode:](self, "convertWindowingMode:", v8)}];
    [v5 setObject:v9 forKeyedSubscript:@"windowingMode"];

    v10 = MEMORY[0x277CCABB0];
    v11 = [modeCopy objectForKeyedSubscript:@"zoomLevel"];
    v12 = [v10 numberWithUnsignedInteger:{-[PLScreenStateAgent convertZoomLevel:](self, "convertZoomLevel:", v11)}];
    [v5 setObject:v12 forKeyedSubscript:@"zoomLevel"];

    v13 = [modeCopy objectForKeyedSubscript:@"canvasSizeHeight"];
    intValue = [v13 intValue];
    v15 = [modeCopy objectForKeyedSubscript:@"canvasSizeWidth"];
    v16 = [v15 intValue] * intValue;

    v17 = [modeCopy objectForKeyedSubscript:@"nativeSizeHeight"];
    intValue2 = [v17 intValue];
    v19 = [modeCopy objectForKeyedSubscript:@"nativeSizeWidth"];
    intValue3 = [v19 intValue];

    if (v16 >= 1 && intValue3 * intValue2 >= 1)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16 / (intValue3 * intValue2)];
      [v5 setObject:v21 forKeyedSubscript:@"canvasRatio"];
    }

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardIconDragging:(id)dragging
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  draggingCopy = dragging;
  v6 = [v4 now];
  convertFromSystemToMonotonic = [v6 convertFromSystemToMonotonic];

  v8 = [draggingCopy objectForKeyedSubscript:@"Durations"];

  v9 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"IconDragging"];
  array = [MEMORY[0x277CBEB18] array];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __51__PLScreenStateAgent_logEventBackwardIconDragging___block_invoke;
  v19 = &unk_279A5CB88;
  v11 = v9;
  v20 = v11;
  v12 = convertFromSystemToMonotonic;
  v21 = v12;
  v13 = array;
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

- (void)logEventBackwardAlwaysOnEnableState:(id)state
{
  stateCopy = state;
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AlwaysOnEnableState"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:stateCopy];
    v6 = [stateCopy objectForKeyedSubscript:@"focusMode"];
    v7 = [v6 length];

    if (v7)
    {
      [v5 setObject:&unk_287145A90 forKeyedSubscript:@"focusMode"];
    }

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardBacklightStateChange:(id)change
{
  changeCopy = change;
  if (([MEMORY[0x277D3F208] hasAOD] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102040) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102041))
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BacklightStateChange"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:changeCopy];
    v6 = MEMORY[0x277CCABB0];
    v7 = [changeCopy objectForKeyedSubscript:@"state"];
    v8 = [v6 numberWithUnsignedInt:{-[PLScreenStateAgent GetBacklightState:](self, "GetBacklightState:", v7)}];
    [v5 setObject:v8 forKeyedSubscript:@"state"];

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardFlipbookStatistics:(id)statistics
{
  statisticsCopy = statistics;
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"FlipbookStatistics"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:statisticsCopy];
    [(PLOperator *)self logEntry:v5];
  }
}

- (id)processQuery:(id)query withEntryKey:(id)key
{
  v36[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  keyCopy = key;
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = PLLogScreenState();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLScreenStateAgent processQuery:withEntryKey:];
    }

    if (!queryCopy || ([queryCopy objectForKeyedSubscript:@"StartEpochTime"], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == 0, v9, v10))
    {
      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PLScreenStateAgent processQuery:withEntryKey:];
      }

      v27 = 0;
    }

    else
    {
      v11 = MEMORY[0x277CBEAA8];
      v12 = [queryCopy objectForKeyedSubscript:@"StartEpochTime"];
      [v12 doubleValue];
      v13 = [v11 dateWithTimeIntervalSince1970:?];

      convertFromSystemToMonotonic = [v13 convertFromSystemToMonotonic];
      v15 = PLLogScreenState();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLScreenStateAgent processQuery:withEntryKey:];
      }

      v16 = objc_alloc(MEMORY[0x277D3F260]);
      v17 = MEMORY[0x277CCABB0];
      [convertFromSystemToMonotonic timeIntervalSince1970];
      v18 = [v17 numberWithDouble:?];
      v19 = [v16 initWithKey:@"timestamp" withValue:v18 withComparisonOperation:3];

      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      storage = [mEMORY[0x277D3F2A0] storage];
      v36[0] = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      v23 = [storage entriesForKey:keyCopy withComparisons:v22];

      v24 = PLLogScreenState();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLScreenStateAgent processQuery:withEntryKey:];
      }

      v33 = 0;
      v34[0] = &v33;
      v34[1] = 0x3032000000;
      v34[2] = __Block_byref_object_copy__7;
      v34[3] = __Block_byref_object_dispose__7;
      v35 = objc_opt_new();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__PLScreenStateAgent_processQuery_withEntryKey___block_invoke;
      v30[3] = &unk_279A5CBB0;
      v25 = keyCopy;
      v31 = v25;
      v32 = &v33;
      [v23 enumerateObjectsUsingBlock:v30];
      v26 = PLLogScreenState();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLScreenStateAgent processQuery:v25 withEntryKey:v34];
      }

      v27 = *(v34[0] + 40);
      _Block_object_dispose(&v33, 8);
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
    _os_log_debug_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEBUG, "process for query related to %@ is NSDates=%@ and correctedTimeStamp=%@", &v15, 0x20u);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)logAggregateWidgetAdditionAnimation:(id)animation
{
  v4 = *MEMORY[0x277D3F5B8];
  animationCopy = animation;
  v7 = [(PLOperator *)PLScreenStateAgent entryKeyForType:v4 andName:@"WidgetAdditionAnimation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:animationCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logAggregateWidgetFlipAnimation:(id)animation
{
  v4 = *MEMORY[0x277D3F5B8];
  animationCopy = animation;
  v7 = [(PLOperator *)PLScreenStateAgent entryKeyForType:v4 andName:@"WidgetFlipAnimation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:animationCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)createCarPlayAccountingEvents:(id)events
{
  v20[1] = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = [eventsCopy objectForKeyedSubscript:@"bundleID"];

  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  if (v4)
  {
    v5 = [eventsCopy objectForKeyedSubscript:@"bundleID"];
    v19 = v5;
    v20[0] = &unk_28714B238;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    entryDate = [eventsCopy entryDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:27 withChildNodeNameToWeight:v6 withStartDate:entryDate];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    v9 = [eventsCopy objectForKeyedSubscript:@"bundleID"];
    v17 = v9;
    v10 = [eventsCopy objectForKeyedSubscript:@"ScreenWeight"];
    v18 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    entryDate2 = [eventsCopy entryDate];

    [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:v11 withStartDate:entryDate2];
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    entryDate3 = [eventsCopy entryDate];

    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:43 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:entryDate3];
    v15 = *MEMORY[0x277D85DE8];
  }
}

- (void)createAirPlayWiFiAccountingEvent:(id)event
{
  v11[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = [eventCopy objectForKeyedSubscript:@"bundleID"];

  if (v4)
  {
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    v6 = [eventCopy objectForKeyedSubscript:@"bundleID"];
    v10 = v6;
    v11[0] = &unk_28714B238;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    entryDate = [eventCopy entryDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:v7 withStartDate:entryDate];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)accountWithLayoutEntries:(id)entries
{
  v43 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  firstObject = [entriesCopy firstObject];
  entryDate = [firstObject entryDate];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = entriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  allKeys = v7;
  if (!v8)
  {
LABEL_20:

    goto LABEL_21;
  }

  v10 = v8;
  v32 = entryDate;
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
        [dictionary setObject:v16 forKeyedSubscript:v15];

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
    allKeys = [dictionary allKeys];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v23 = *(*(&v33 + 1) + 8 * j);
          v24 = MEMORY[0x277CCABB0];
          v25 = [dictionary objectForKeyedSubscript:v23];
          [v25 doubleValue];
          v27 = [v24 numberWithDouble:v26 / v12];
          [dictionary setObject:v27 forKeyedSubscript:v23];
        }

        v20 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v20);
      entryDate = v32;
    }

    goto LABEL_20;
  }

LABEL_21:
  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:dictionary withStartDate:entryDate];

  mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
  allKeys2 = [dictionary allKeys];
  [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:allKeys2 withStartDate:entryDate];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)handleDisplayCallback:(id)callback
{
  callbackCopy = callback;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311_cold_1();
  }

  v6 = [callbackCopy objectForKey:@"entry"];
  v7 = [v6 objectForKeyedSubscript:@"Active"];
  -[PLScreenStateAgent setDisplayState:](self, "setDisplayState:", [v7 intValue]);

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLScreenStateAgent handleDisplayCallback:?];
  }

  if (([(PLScreenStateAgent *)self displayState]== 2 || [(PLScreenStateAgent *)self displayState]== 1) && [(PLScreenStateAgent *)self lastDisplayLayoutContainsLockScreen])
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLScreenStateAgent handleDisplayCallback:?];
    }

    lastDisplayLayout = [(PLScreenStateAgent *)self lastDisplayLayout];
    [(PLScreenStateAgent *)self logEventForwardMainScreenState:lastDisplayLayout];
  }
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  layoutCopy = layout;
  contextCopy = context;
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLScreenStateAgent layoutMonitor:layoutCopy didUpdateDisplayLayout:contextCopy withContext:?];
  }

  transitionReason = [contextCopy transitionReason];
  v11 = SBSBacklightChangeSourceForDisplayLayoutTransitionReason();

  if (!v11 || ([(PLScreenStateAgent *)self logEventPointMainBacklightEvent:layoutCopy withContext:contextCopy], v11 > 0x1C) || ((1 << v11) & 0x1A000050) == 0)
  {
    [(PLScreenStateAgent *)self logEventForwardMainScreenState:layoutCopy];
  }
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLScreenStateAgent_EventForward_WindowMode: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_245_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLScreenStateAgent_EventBackward_IconDragging: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_250_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLScreenStateAgent_Aggregate_WidgetAdditionAnimation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_255_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLScreenStateAgent_Aggregate_WidgetFlipAnimation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_260_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLScreenStateAgent_EventBackward_AlwaysOnEnableState: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_265_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLScreenStateAgent_EventBackward_BacklightStateChange: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_270_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLScreenStateAgent_EventBackward_FlipbookStatistics: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_276_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AlwaysOnEnableState query received with info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_286_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "BacklightStateChange query received with info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_294_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "FlipbookStatistics query received with info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__PLScreenStateAgent_initOperatorDependancies__block_invoke_311_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "userInfo=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)postEnhancedScreenStateNotification:currentLayout:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)postEnhancedScreenStateNotification:currentLayout:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)postEnhancedScreenStateNotification:currentLayout:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "calling logEventForwardMainScreenState with displayLayout=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D3F208] hasAOD];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  _os_feature_enabled_impl();
  [MEMORY[0x277D3F208] hasAOD];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_4(_DWORD *a1, void *a2, void *a3)
{
  v5 = [a2 objectForKeyedSubscript:@"bundleID"];
  *a1 = 138412290;
  *a3 = v5;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v6, v7, "FBSDisplayLayoutElement currentEntry bundleID: %@");
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_5(_DWORD *a1, void *a2, void *a3)
{
  v5 = [a2 objectForKeyedSubscript:@"bundleID"];
  *a1 = 138412290;
  *a3 = v5;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v6, v7, "FBSDisplayLayoutElement searching for currentEntry bundleID in last Dictionary: %@");
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_6(uint8_t *buf, int *a2, os_log_t log)
{
  v3 = displaySync_block_invoke_screenStateEntriesCounter;
  *buf = 67109120;
  *a2 = v3;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "Logged %d FBSDisplayLayoutElement entries", buf, 8u);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_7(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "Screen State element's bundleID/identifier is nil", buf, 2u);
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "LayoutEntries: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__PLScreenStateAgent_logEventForwardMainScreenState___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)convertWindowingMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, " Unknown windowingMode %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)convertZoomLevel:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, " Unknown zoomLevel %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processQuery:withEntryKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "process for %@ Received query with payload=%@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)processQuery:withEntryKey:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "process for %@ queryStartDate is =%@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)processQuery:withEntryKey:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "selected query entries for %@ are selectedEntries =%@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)processQuery:(uint64_t)a1 withEntryKey:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v3, v4, "process for %@ output response is =%@.");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processQuery:withEntryKey:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "process for %@ Invalid payload!", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)handleDisplayCallback:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 displayState];
  [a1 lastDisplayLayoutContainsLockScreen];
  v2 = [a1 lastDisplayLayout];
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x18u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleDisplayCallback:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 displayState];
  [a1 lastDisplayLayoutContainsLockScreen];
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)layoutMonitor:(uint64_t)a1 didUpdateDisplayLayout:(void *)a2 withContext:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 transitionReason];
  v10 = [a2 transitionReasons];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

@end