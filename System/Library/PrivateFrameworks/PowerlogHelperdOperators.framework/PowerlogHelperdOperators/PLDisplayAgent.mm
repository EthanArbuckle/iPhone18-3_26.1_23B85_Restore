@interface PLDisplayAgent
+ (BOOL)shouldLogALSPowerSaved;
+ (BOOL)shouldLogAPL;
+ (BOOL)shouldLogBLR;
+ (BOOL)shouldLogBacklightControl;
+ (BOOL)shouldLogDisplay;
+ (BOOL)shouldLogFromDCP;
+ (BOOL)shouldLogKeyboardBrightness;
+ (BOOL)shouldLogLCD;
+ (BOOL)shouldLogLuxStats;
+ (BOOL)shouldLogTouch;
+ (BOOL)shouldLogUserBrightness;
+ (BOOL)shouldModelPowerFromAPL;
+ (BOOL)shouldModelPowerFromIOMFB;
+ (id)dcpSubFrameMap;
+ (id)entryAggregateDefinitionUserTouch;
+ (id)entryAggregateDefinitions;
+ (id)entryEventBackwardDefinitionALSSamplesBeforeWake;
+ (id)entryEventBackwardDefinitionALSThreshold;
+ (id)entryEventBackwardDefinitionAPLStats;
+ (id)entryEventBackwardDefinitionAZLSnapshots;
+ (id)entryEventBackwardDefinitionAZLStats;
+ (id)entryEventBackwardDefinitionAmbientLight;
+ (id)entryEventBackwardDefinitionBlueLightParameters;
+ (id)entryEventBackwardDefinitionCurveUpdate;
+ (id)entryEventBackwardDefinitionDCPAODstats;
+ (id)entryEventBackwardDefinitionHarmonyParameters;
+ (id)entryEventBackwardDefinitionRampInfo;
+ (id)entryEventBackwardDefinitionTouch;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionALSEnabled;
+ (id)entryEventForwardDefinitionALSPowerSaved;
+ (id)entryEventForwardDefinitionALSUserPreferences;
+ (id)entryEventForwardDefinitionBlueLightReductionStatus;
+ (id)entryEventForwardDefinitionColorAdaptationMode;
+ (id)entryEventForwardDefinitionDisplay;
+ (id)entryEventForwardDefinitionDisplayBacklight;
+ (id)entryEventForwardDefinitionLuxStats;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventNoneDefinitionPanelStats;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionBacklightControl;
+ (id)entryEventPointDefinitionDisplay;
+ (id)entryEventPointDefinitionKeyboardBrightness;
+ (id)entryEventPointDefinitionMultitouch;
+ (id)entryEventPointDefinitionUserBrightness;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)isAlsEnabled;
- (BOOL)updateDisplayIOReportStats:(id)stats logZeroFramesOnlyOnce:(BOOL)once;
- (PLDisplayAgent)init;
- (__IOHIDEventSystemClient)setUpIOHIDTouchSystemClient;
- (double)averageFrameRateFromIOMFBScanout:(id)scanout;
- (double)calculatePowerFromAPL:(double)l withAvgRed:(double)red withAvgGreen:(double)green withAvgBlue:(double)blue;
- (double)uAmpsToDisplayPower:(double)power;
- (id)getIOMFBSubFrameMap;
- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date;
- (unint64_t)getBacklightEnabledTimestamp:(unsigned int)timestamp;
- (void)__FrameBufferEventCallback:(__IOMobileFramebuffer *)callback;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)cleanUpAFKInterfaces;
- (void)clearDisplayAccountingEvents;
- (void)dealloc;
- (void)extractDataWithEntry:(id)entry withColName:(id)name withDataArray:(id)array;
- (void)fillInBuiltinDisplayBrightnessParameters:(id)parameters;
- (void)handleAFKInterfaceMsg:(id)msg;
- (void)handleBrightnessClientNotification:(id)notification withValue:(id)value;
- (void)handleSBC;
- (void)init;
- (void)initAODState:(int64_t)state;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)log;
- (void)logAODChange;
- (void)logBlueLightDataWithDictionary:(id)dictionary;
- (void)logBrightnessDataWithEntryKey:(id)key withColName:(id)name withValue:(id)value;
- (void)logDisplayAPL;
- (void)logDisplayAZL;
- (void)logDisplayEntry:(id)entry;
- (void)logEventBackwardALSSamplesBeforeWake:(id)wake;
- (void)logEventBackwardALSThreshold:(id)threshold;
- (void)logEventBackwardAmbientLight:(id)light;
- (void)logEventBackwardCurveUpdate:(id)update;
- (void)logEventBackwardRampInfo:(id)info;
- (void)logEventBackwardTouch;
- (void)logEventForwardALSEnabled;
- (void)logEventForwardALSLux:(unint64_t)lux;
- (void)logEventForwardALSUserPreferencesEntryWithLux:(id)lux;
- (void)logEventForwardALSUserPreferencesWithCurrLux;
- (void)logEventForwardColorAdaptationMode;
- (void)logEventForwardDisplay;
- (void)logEventForwardDisplayBacklight;
- (void)logEventForwardDisplayWithRawData:(id)data withDate:(id)date;
- (void)logEventForwardExtendedALSUserPreferences:(id)preferences;
- (void)logEventForwardLuxStats:(id)stats;
- (void)logEventNonePanelStats;
- (void)logEventPointDisplay;
- (void)logEventPointDisplayBacklight;
- (void)logEventPointDisplayBacklightWithState:(unint64_t)state;
- (void)logEventPointDisplayMIE;
- (void)logEventPointKeyboardBrightness:(double)brightness withDate:(id)date;
- (void)logEventPointMultitouchWithPayload:(id)payload;
- (void)logEventPointUserBrightnessCommitted:(double)committed;
- (void)modelDisplayPower:(id)power;
- (void)modelDisplayPowerFromIOMFB:(id)b;
- (void)modelDynamicDisplayPower:(id)power;
- (void)modelDynamicDisplayPowerFromAPL:(id)l;
- (void)qualifyDisplayPower:(id)power;
- (void)reArmCallback;
- (void)reArmUAmpsCallback;
- (void)updateLastForegroundAppAPL:(id)l;
@end

@implementation PLDisplayAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLDisplayAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventNoneDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"PanelStats";
  v2 = +[PLDisplayAgent entryEventNoneDefinitionPanelStats];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventNoneDefinitionPanelStats
{
  v26[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v25[0] = *MEMORY[0x277D3F4E8];
    v23 = *MEMORY[0x277D3F568];
    v24 = &unk_28714B7A8;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26[0] = v20;
    v25[1] = *MEMORY[0x277D3F540];
    v21[0] = @"B_input";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v22[0] = commonTypeDict_RealFormat;
    v21[1] = @"B_min";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v22[1] = commonTypeDict_RealFormat2;
    v21[2] = @"I_input";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v22[2] = commonTypeDict_RealFormat3;
    v21[3] = @"I_nominal";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v22[3] = commonTypeDict_RealFormat4;
    v21[4] = @"I_threshold";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v22[4] = commonTypeDict_RealFormat5;
    v21[5] = @"Scalar";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
    v22[5] = commonTypeDict_RealFormat6;
    v21[6] = @"Slope";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
    v22[6] = commonTypeDict_RealFormat7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
    v26[1] = v11;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entryEventPointDefinitions
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"Display";
  v2 = +[PLDisplayAgent entryEventPointDefinitionDisplay];
  v11[0] = v2;
  v10[1] = @"UserBrightness";
  v3 = +[PLDisplayAgent entryEventPointDefinitionUserBrightness];
  v11[1] = v3;
  v10[2] = @"Multitouch";
  v4 = +[PLDisplayAgent entryEventPointDefinitionMultitouch];
  v11[2] = v4;
  v10[3] = @"BacklightControl";
  v5 = +[PLDisplayAgent entryEventPointDefinitionBacklightControl];
  v11[3] = v5;
  v10[4] = @"KeyboardBrightness";
  v6 = +[PLDisplayAgent entryEventPointDefinitionKeyboardBrightness];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionDisplay
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogDisplay](PLDisplayAgent, "shouldLogDisplay") || +[PLDisplayAgent shouldLogLCD])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F570];
    v15[0] = *MEMORY[0x277D3F568];
    v15[1] = v2;
    v16[0] = &unk_28714B7B8;
    v16[1] = &unk_28714D988;
    v3 = *MEMORY[0x277D3F590];
    v15[2] = *MEMORY[0x277D3F578];
    v15[3] = v3;
    v16[2] = @"Block";
    v16[3] = &unk_287146C78;
    v15[4] = *MEMORY[0x277D3F4D8];
    v16[4] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
    v17[1] = *MEMORY[0x277D3F540];
    v18[0] = v4;
    v13[0] = @"Block";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v13[1] = @"Active";
    v14[0] = commonTypeDict_StringFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v14[1] = commonTypeDict_IntegerFormat;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventPointDefinitionUserBrightness
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogUserBrightness])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F570];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_28714B7A8;
    v15[1] = &unk_28714D9A0;
    v14[2] = *MEMORY[0x277D3F550];
    v15[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12 = @"UserBrightness";
    v4 = *MEMORY[0x277D3F5B0];
    v10[0] = *MEMORY[0x277D3F5A8];
    v10[1] = v4;
    v11[0] = &unk_287146C90;
    v11[1] = @"%";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v13 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v17[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionMultitouch
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogTouch])
  {
    if ([MEMORY[0x277D3F208] hasOrb])
    {
      v37[0] = *MEMORY[0x277D3F4E8];
      v2 = *MEMORY[0x277D3F550];
      v35[0] = *MEMORY[0x277D3F568];
      v35[1] = v2;
      v36[0] = &unk_28714B7C8;
      v36[1] = MEMORY[0x277CBEC28];
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      v38[0] = v19;
      v37[1] = *MEMORY[0x277D3F540];
      v33[0] = @"fingerNum";
      mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
      v34[0] = commonTypeDict_IntegerFormat;
      v33[1] = @"peak";
      mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
      v34[1] = commonTypeDict_IntegerFormat2;
      v33[2] = @"peakMillimetersFromEdge";
      mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
      v34[2] = commonTypeDict_RealFormat;
      v33[3] = @"peakProximity";
      mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
      v34[3] = commonTypeDict_RealFormat2;
      v33[4] = @"peakMajorRadius";
      mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
      v34[4] = commonTypeDict_RealFormat3;
      v33[5] = @"peakMinorRadius";
      mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
      v34[5] = commonTypeDict_RealFormat4;
      v33[6] = @"touchStartTime";
      mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
      v34[6] = commonTypeDict_RealFormat5;
      v33[7] = @"touchStopTime";
      mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
      v34[7] = commonTypeDict_RealFormat6;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:8];
      v38[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

      mEMORY[0x277D3F198]9 = mEMORY[0x277D3F198];
      v14 = v19;
    }

    else
    {
      v31[0] = *MEMORY[0x277D3F4E8];
      v15 = *MEMORY[0x277D3F550];
      v29[0] = *MEMORY[0x277D3F568];
      v29[1] = v15;
      v30[0] = &unk_28714B7B8;
      v30[1] = MEMORY[0x277CBEC28];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      v32[0] = v14;
      v31[1] = *MEMORY[0x277D3F540];
      v27[0] = @"fingerNum";
      mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
      v28[0] = commonTypeDict_IntegerFormat;
      v27[1] = @"peakProximity";
      mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
      v28[1] = commonTypeDict_IntegerFormat2;
      v27[2] = @"peakProximityMillimetersFromEdge";
      mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
      v28[2] = commonTypeDict_RealFormat;
      v27[3] = @"peakProximityMajorRadius";
      mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
      v28[3] = commonTypeDict_RealFormat2;
      v27[4] = @"peakProximityMinorRadius";
      mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
      v28[4] = commonTypeDict_RealFormat3;
      v27[5] = @"touchStartTime";
      mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
      v28[5] = commonTypeDict_RealFormat4;
      v27[6] = @"touchStopTime";
      mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
      v28[6] = commonTypeDict_RealFormat5;
      mEMORY[0x277D3F198]8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:7];
      v32[1] = mEMORY[0x277D3F198]8;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionBacklightControl
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogBacklightControl])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_28714B7A8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"backlightEnabledTimestamp";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v10 = commonTypeDict_IntegerFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v14[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventPointDefinitionKeyboardBrightness
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogKeyboardBrightness])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_28714B7A8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"KeyboardBrightness";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v10 = commonTypeDict_IntegerFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v14[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitions
{
  v16[10] = *MEMORY[0x277D85DE8];
  v15[0] = @"Display";
  v14 = +[PLDisplayAgent entryEventForwardDefinitionDisplay];
  v16[0] = v14;
  v15[1] = @"DisplayBacklight";
  v2 = +[PLDisplayAgent entryEventForwardDefinitionDisplayBacklight];
  v16[1] = v2;
  v15[2] = @"ALSUserPreferences";
  v3 = +[PLDisplayAgent entryEventForwardDefinitionALSUserPreferences];
  v16[2] = v3;
  v15[3] = @"ALSEnabled";
  v4 = +[PLDisplayAgent entryEventForwardDefinitionALSEnabled];
  v16[3] = v4;
  v15[4] = @"ALSPowerSaved";
  v5 = +[PLDisplayAgent entryEventForwardDefinitionALSPowerSaved];
  v16[4] = v5;
  v15[5] = @"BlueLightReductionStatus";
  v6 = +[PLDisplayAgent entryEventForwardDefinitionBlueLightReductionStatus];
  v16[5] = v6;
  v15[6] = @"CAModeEnabled";
  v7 = +[PLDisplayAgent entryEventForwardDefinitionColorAdaptationMode];
  v16[6] = v7;
  v15[7] = @"ALSLux";
  v8 = +[PLDisplayAgent entryEventForwardDefinitionALSLux];
  v16[7] = v8;
  v15[8] = @"LinearBrightness";
  v9 = +[PLDisplayAgent entryEventForwardDefinitionLinearBrightness];
  v16[8] = v9;
  v15[9] = @"LuxStats";
  v10 = +[PLDisplayAgent entryEventForwardDefinitionLuxStats];
  v16[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionDisplay
{
  v55[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogDisplay])
  {
    v54[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F570];
    v52[0] = *MEMORY[0x277D3F568];
    v52[1] = v2;
    v53[0] = &unk_28714B7D8;
    v53[1] = &unk_28714D9B8;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
    v55[0] = v39;
    v54[1] = *MEMORY[0x277D3F540];
    v50[0] = @"Brightness";
    v3 = +[PLDisplayAgent shouldLogFromDCP];
    v4 = MEMORY[0x277D3F5A8];
    v38 = v3;
    if (v3)
    {
      mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    }

    else
    {
      v7 = *MEMORY[0x277D3F5B0];
      v48[0] = *MEMORY[0x277D3F5A8];
      v48[1] = v7;
      v49[0] = &unk_287146C90;
      v49[1] = @"%";
      v48[2] = *MEMORY[0x277D3F4E0];
      v49[2] = MEMORY[0x277CBEC38];
      commonTypeDict_RealFormat = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
      mEMORY[0x277D3F198] = commonTypeDict_RealFormat;
    }

    v30 = commonTypeDict_RealFormat;
    v51[0] = commonTypeDict_RealFormat;
    v50[1] = @"SliderValue";
    v8 = +[PLDisplayAgent shouldLogFromDCP];
    mEMORY[0x277D3F198]6 = &unk_287146CA8;
    v10 = MEMORY[0x277D3F538];
    v36 = v8;
    if (v8)
    {
      mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    }

    else
    {
      v12 = *MEMORY[0x277D3F538];
      v46[0] = *v4;
      v46[1] = v12;
      v47[0] = &unk_287146CA8;
      v47[1] = &unk_28714D9D0;
      commonTypeDict_IntegerFormat = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
      mEMORY[0x277D3F198]2 = commonTypeDict_IntegerFormat;
    }

    v29 = commonTypeDict_IntegerFormat;
    v51[1] = commonTypeDict_IntegerFormat;
    v50[2] = @"lux";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v51[2] = commonTypeDict_IntegerFormat2;
    v50[3] = @"iDAC";
    v32 = +[PLDisplayAgent shouldLogFromDCP];
    if (v32)
    {
      mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    }

    else
    {
      v14 = *v10;
      v44[0] = *v4;
      v44[1] = v14;
      v45[0] = &unk_287146CA8;
      v45[1] = &unk_28714D9E8;
      commonTypeDict_IntegerFormat3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
      mEMORY[0x277D3F198]4 = commonTypeDict_IntegerFormat3;
    }

    v51[3] = commonTypeDict_IntegerFormat3;
    v50[4] = @"mNits";
    v15 = +[PLDisplayAgent shouldLogFromDCP];
    if (v15)
    {
      mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    }

    else
    {
      v18 = *v10;
      v42[0] = *v4;
      v42[1] = v18;
      v43[0] = &unk_287146CA8;
      v43[1] = &unk_28714DA00;
      commonTypeDict_IntegerFormat4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
      mEMORY[0x277D3F198]5 = commonTypeDict_IntegerFormat4;
    }

    v19 = commonTypeDict_IntegerFormat4;
    v51[4] = commonTypeDict_IntegerFormat4;
    v50[5] = @"uAmps";
    v20 = +[PLDisplayAgent shouldLogFromDCP];
    if (v20)
    {
      mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    }

    else
    {
      v22 = *v10;
      v40[0] = *v4;
      v40[1] = v22;
      v41[0] = &unk_287146CA8;
      v41[1] = &unk_28714DA18;
      commonTypeDict_IntegerFormat5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
    }

    v51[5] = commonTypeDict_IntegerFormat5;
    v50[6] = @"EDRHeadroom";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v51[6] = commonTypeDict_IntegerFormat6;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:7];
    v55[1] = v25;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];

    if (v20)
    {

      commonTypeDict_IntegerFormat5 = mEMORY[0x277D3F198]6;
    }

    if (v15)
    {
    }

    if (v32)
    {
    }

    if (v36)
    {
    }

    if (v38)
    {
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionDisplayBacklight
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_28714B7A8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"DisplayPower";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v10 = commonTypeDict_RealFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v14[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionALSUserPreferences
{
  v105[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v104[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F590];
    v102[0] = *MEMORY[0x277D3F568];
    v102[1] = v3;
    v103[0] = &unk_28714B7E8;
    v103[1] = &unk_287146CC0;
    v102[2] = *MEMORY[0x277D3F588];
    v103[2] = &unk_287146CD8;
    v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];
    v105[0] = v99;
    v104[1] = *MEMORY[0x277D3F540];
    v100[0] = @"E0a";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v101[0] = commonTypeDict_IntegerFormat;
    v100[1] = @"E0b";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v101[1] = commonTypeDict_IntegerFormat2;
    v100[2] = @"E1";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v101[2] = commonTypeDict_IntegerFormat3;
    v100[3] = @"E2";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v101[3] = commonTypeDict_IntegerFormat4;
    v100[4] = @"L0a";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v101[4] = commonTypeDict_RealFormat;
    v100[5] = @"L0b";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
    v101[5] = commonTypeDict_RealFormat2;
    v100[6] = @"L1";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
    v101[6] = commonTypeDict_RealFormat3;
    v100[7] = @"L2";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
    v101[7] = commonTypeDict_RealFormat4;
    v100[8] = @"S";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
    v101[8] = commonTypeDict_RealFormat5;
    v100[9] = @"version";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v101[9] = commonTypeDict_IntegerFormat5;
    v100[10] = @"Lux";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v101[10] = commonTypeDict_IntegerFormat6;
    v100[11] = @"thirdSlope";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]12 commonTypeDict_RealFormat];
    v101[11] = commonTypeDict_RealFormat6;
    v100[12] = @"aabParamsUpdateOnly";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]13 commonTypeDict_BoolFormat];
    v101[12] = commonTypeDict_BoolFormat;
    v100[13] = @"auroraFactor";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]14 commonTypeDict_RealFormat];
    v101[13] = commonTypeDict_RealFormat7;
    v100[14] = @"autobrightnessEnabled";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
    v101[14] = commonTypeDict_BoolFormat2;
    v100[15] = @"colorAdaptationStrength";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]16 commonTypeDict_RealFormat];
    v101[15] = commonTypeDict_RealFormat8;
    v100[16] = @"colorAdaptationMode";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
    v101[16] = commonTypeDict_IntegerFormat7;
    v100[17] = @"cpmsMitigationLimitingBrightness";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]18 commonTypeDict_BoolFormat];
    v101[17] = commonTypeDict_BoolFormat3;
    v100[18] = @"darkThemeApplied";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]19 commonTypeDict_BoolFormat];
    v101[18] = commonTypeDict_BoolFormat4;
    v100[19] = @"delayedAPCE";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
    v101[19] = commonTypeDict_IntegerFormat8;
    v100[20] = @"delayedAPCEStatus";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
    v101[20] = commonTypeDict_IntegerFormat9;
    v100[21] = @"ecoModeEnabled";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat5 = [mEMORY[0x277D3F198]22 commonTypeDict_BoolFormat];
    v101[21] = commonTypeDict_BoolFormat5;
    v100[22] = @"ecoModeFactor";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
    v101[22] = commonTypeDict_IntegerFormat10;
    v100[23] = @"edrHeadroom";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]24 commonTypeDict_RealFormat];
    v101[23] = commonTypeDict_RealFormat9;
    v100[24] = @"landscapeOrientation";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat6 = [mEMORY[0x277D3F198]25 commonTypeDict_BoolFormat];
    v101[24] = commonTypeDict_BoolFormat6;
    v100[25] = @"localTimestamp";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_DateFormat = [mEMORY[0x277D3F198]26 commonTypeDict_DateFormat];
    v101[25] = commonTypeDict_DateFormat;
    v100[26] = @"nits";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]27 commonTypeDict_RealFormat];
    v101[26] = commonTypeDict_RealFormat10;
    v100[27] = @"proxMitigationTriggered";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat7 = [mEMORY[0x277D3F198]28 commonTypeDict_BoolFormat];
    v101[27] = commonTypeDict_BoolFormat7;
    v100[28] = @"rearLux";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v101[28] = commonTypeDict_IntegerFormat11;
    v100[29] = @"rearLuxInUse";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat8 = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v101[29] = commonTypeDict_BoolFormat8;
    v100[30] = @"touchMitigationTriggered";
    mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat9 = [mEMORY[0x277D3F198]31 commonTypeDict_BoolFormat];
    v101[30] = commonTypeDict_BoolFormat9;
    v100[31] = @"trustedLux";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
    v101[31] = commonTypeDict_IntegerFormat12;
    v100[32] = @"aabParamsUpdateReason";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat];
    v101[32] = commonTypeDict_IntegerFormat13;
    v100[33] = @"inactiveLength";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat];
    v101[33] = commonTypeDict_IntegerFormat14;
    v100[34] = @"inactiveStart";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat];
    v101[34] = commonTypeDict_IntegerFormat15;
    v100[35] = @"alternativeE0a";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat];
    v101[35] = commonTypeDict_IntegerFormat16;
    v100[36] = @"alternativeE0b";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat];
    v101[36] = commonTypeDict_IntegerFormat17;
    v100[37] = @"alternativeE1";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]38 commonTypeDict_IntegerFormat];
    v101[37] = commonTypeDict_IntegerFormat18;
    v100[38] = @"alternativeE2";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat];
    v101[38] = commonTypeDict_IntegerFormat19;
    v100[39] = @"alternativeL0a";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]40 commonTypeDict_IntegerFormat];
    v101[39] = commonTypeDict_IntegerFormat20;
    v100[40] = @"alternativeL0b";
    mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]41 commonTypeDict_IntegerFormat];
    v101[40] = commonTypeDict_IntegerFormat21;
    v100[41] = @"alternativeL1";
    mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]42 commonTypeDict_IntegerFormat];
    v101[41] = commonTypeDict_IntegerFormat22;
    v100[42] = @"alternativeL2";
    mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]43 commonTypeDict_IntegerFormat];
    v101[42] = commonTypeDict_IntegerFormat23;
    v100[43] = @"alternativeThirdSlope";
    mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]44 commonTypeDict_IntegerFormat];
    v101[43] = commonTypeDict_IntegerFormat24;
    v100[44] = @"nitsDelta";
    mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]45 commonTypeDict_IntegerFormat];
    v101[44] = commonTypeDict_IntegerFormat25;
    v100[45] = @"nitsDeltaAlternative";
    mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]46 commonTypeDict_IntegerFormat];
    v101[45] = commonTypeDict_IntegerFormat26;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:46];
    v105[1] = v12;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entryEventForwardDefinitionALSEnabled
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_28714B7A8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"ALSEnabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v11 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionALSPowerSaved
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogALSPowerSaved])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_28714B7A8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"Power";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v10 = commonTypeDict_RealFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v14[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionColorAdaptationMode
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CFD398] supportsAdaptation])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F508];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_28714B7A8;
    v13[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"CAModeEnabled";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v11 = commonTypeDict_BoolFormat;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionBlueLightReductionStatus
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogBLR])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_28714B7A8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"BlueReductionEnabled";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v14[0] = commonTypeDict_BoolFormat;
    v13[1] = @"BlueReductionMode";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v14[1] = commonTypeDict_IntegerFormat;
    v13[2] = @"BlueReductionSunScheduleAllowed";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
    v14[2] = commonTypeDict_BoolFormat2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventForwardDefinitionLuxStats
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogLuxStats])
  {
    v21[0] = *MEMORY[0x277D3F4E8];
    v19 = *MEMORY[0x277D3F568];
    v20 = &unk_28714B7A8;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v16;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"cappedLuxForAAB";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v18[0] = commonTypeDict_IntegerFormat;
    v17[1] = @"frontNits";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v18[1] = commonTypeDict_IntegerFormat2;
    v17[2] = @"gainChanged";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
    v18[2] = commonTypeDict_BoolFormat;
    v17[3] = @"rearNits";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v18[3] = commonTypeDict_IntegerFormat3;
    v17[4] = @"rearLux";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v18[4] = commonTypeDict_IntegerFormat4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
    v22[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
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
  v18[12] = *MEMORY[0x277D85DE8];
  v17[0] = @"Touch";
  v16 = +[PLDisplayAgent entryEventBackwardDefinitionTouch];
  v18[0] = v16;
  v17[1] = @"BlueLightParameters";
  v15 = +[PLDisplayAgent entryEventBackwardDefinitionBlueLightParameters];
  v18[1] = v15;
  v17[2] = @"HParameters";
  v14 = +[PLDisplayAgent entryEventBackwardDefinitionHarmonyParameters];
  v18[2] = v14;
  v17[3] = @"APLStats";
  v2 = +[PLDisplayAgent entryEventBackwardDefinitionAPLStats];
  v18[3] = v2;
  v17[4] = @"AZLStats";
  v3 = +[PLDisplayAgent entryEventBackwardDefinitionAZLStats];
  v18[4] = v3;
  v17[5] = @"AZLSnapshots";
  v4 = +[PLDisplayAgent entryEventBackwardDefinitionAZLSnapshots];
  v18[5] = v4;
  v17[6] = @"RampInfo";
  v5 = +[PLDisplayAgent entryEventBackwardDefinitionRampInfo];
  v18[6] = v5;
  v17[7] = @"CurveUpdate";
  v6 = +[PLDisplayAgent entryEventBackwardDefinitionCurveUpdate];
  v18[7] = v6;
  v17[8] = @"ALSThreshold";
  v7 = +[PLDisplayAgent entryEventBackwardDefinitionALSThreshold];
  v18[8] = v7;
  v17[9] = @"ALSSamplesBeforeWake";
  v8 = +[PLDisplayAgent entryEventBackwardDefinitionALSSamplesBeforeWake];
  v18[9] = v8;
  v17[10] = @"AmbientLight";
  v9 = +[PLDisplayAgent entryEventBackwardDefinitionAmbientLight];
  v18[10] = v9;
  v17[11] = @"DCPAODstats";
  v10 = +[PLDisplayAgent entryEventBackwardDefinitionDCPAODstats];
  v18[11] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:12];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionTouch
{
  v52[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogTouch])
  {
    v51[0] = *MEMORY[0x277D3F4E8];
    v49 = *MEMORY[0x277D3F568];
    v50 = &unk_28714B7A8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v52[0] = v21;
    v51[1] = *MEMORY[0x277D3F540];
    v47[0] = @"Unknown";
    v3 = *MEMORY[0x277D3F5B0];
    v44[0] = *MEMORY[0x277D3F5A8];
    v2 = v44[0];
    v44[1] = v3;
    v46[0] = &unk_287146C90;
    v46[1] = @"s";
    v45 = *MEMORY[0x277D3F538];
    v4 = v45;
    v46[2] = &unk_28714DA30;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v44 count:3];
    v48[0] = v20;
    v47[1] = @"Active";
    v42[0] = v2;
    v42[1] = v3;
    v43[0] = &unk_287146C90;
    v43[1] = @"s";
    v42[2] = v4;
    v43[2] = &unk_28714DA48;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v48[1] = v19;
    v47[2] = @"Ready";
    v40[0] = v2;
    v40[1] = v3;
    v41[0] = &unk_287146C90;
    v41[1] = @"s";
    v40[2] = v4;
    v41[2] = &unk_28714DA60;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v48[2] = v18;
    v47[3] = @"AutoReady";
    v38[0] = v2;
    v38[1] = v3;
    v39[0] = &unk_287146C90;
    v39[1] = @"s";
    v38[2] = v4;
    v39[2] = &unk_28714DA78;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v48[3] = v17;
    v47[4] = @"UILock";
    v36[0] = v2;
    v36[1] = v3;
    v37[0] = &unk_287146C90;
    v37[1] = @"s";
    v36[2] = v4;
    v37[2] = &unk_28714DA90;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
    v48[4] = v16;
    v47[5] = @"FaceDetected";
    v34[0] = v2;
    v34[1] = v3;
    v35[0] = &unk_287146C90;
    v35[1] = @"s";
    v34[2] = v4;
    v35[2] = &unk_28714DAA8;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v48[5] = v15;
    v47[6] = @"StationaryFingers";
    v32[0] = v2;
    v32[1] = v3;
    v33[0] = &unk_287146C90;
    v33[1] = @"s";
    v32[2] = v4;
    v33[2] = &unk_28714DAC0;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v48[6] = v14;
    v47[7] = @"AutoScan";
    v30[0] = v2;
    v30[1] = v3;
    v31[0] = &unk_287146C90;
    v31[1] = @"s";
    v30[2] = v4;
    v31[2] = &unk_28714DAD8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v48[7] = v5;
    v47[8] = @"VSFOMCal";
    v28[0] = v2;
    v28[1] = v3;
    v29[0] = &unk_287146C90;
    v29[1] = @"s";
    v28[2] = v4;
    v29[2] = &unk_28714DAF0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v48[8] = v6;
    v47[9] = @"Anticipate";
    v26[0] = v2;
    v26[1] = v3;
    v27[0] = &unk_287146C90;
    v27[1] = @"s";
    v26[2] = v4;
    v27[2] = &unk_28714DB08;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v48[9] = v7;
    v47[10] = @"Off";
    v24[0] = v2;
    v24[1] = v3;
    v25[0] = &unk_287146C90;
    v25[1] = @"s";
    v24[2] = v4;
    v25[2] = &unk_28714DB20;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v48[10] = v8;
    v47[11] = @"On";
    v22[0] = v2;
    v22[1] = v3;
    v23[0] = &unk_287146C90;
    v23[1] = @"s";
    v22[2] = v4;
    v23[2] = &unk_28714DB38;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v48[11] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:12];
    v52[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionHarmonyParameters
{
  v260[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CFD398] supportsAdaptation])
  {
    v259[0] = *MEMORY[0x277D3F4E8];
    v257 = *MEMORY[0x277D3F568];
    v258 = &unk_28714B7F8;
    v254 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v258 forKeys:&v257 count:1];
    v260[0] = v254;
    v259[1] = *MEMORY[0x277D3F540];
    v255[0] = @"DCBins_0";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v256[0] = commonTypeDict_RealFormat;
    v255[1] = @"DCBins_1";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v256[1] = commonTypeDict_RealFormat2;
    v255[2] = @"DCBins_2";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v256[2] = commonTypeDict_RealFormat3;
    v255[3] = @"DCBins_3";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v256[3] = commonTypeDict_RealFormat4;
    v255[4] = @"DCBins_4";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v256[4] = commonTypeDict_RealFormat5;
    v255[5] = @"DCBins_5";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
    v256[5] = commonTypeDict_RealFormat6;
    v255[6] = @"DCBins_6";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
    v256[6] = commonTypeDict_RealFormat7;
    v255[7] = @"DCBins_7";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
    v256[7] = commonTypeDict_RealFormat8;
    v255[8] = @"DCBins_8";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
    v256[8] = commonTypeDict_RealFormat9;
    v255[9] = @"DCBins_9";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
    v256[9] = commonTypeDict_RealFormat10;
    v255[10] = @"DCBins_10";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
    v256[10] = commonTypeDict_RealFormat11;
    v255[11] = @"DCBins_11";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_RealFormat];
    v256[11] = commonTypeDict_RealFormat12;
    v255[12] = @"DCBins_12";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_RealFormat];
    v256[12] = commonTypeDict_RealFormat13;
    v255[13] = @"DCBins_13";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_RealFormat];
    v256[13] = commonTypeDict_RealFormat14;
    v255[14] = @"DCBins_14";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_RealFormat];
    v256[14] = commonTypeDict_RealFormat15;
    v255[15] = @"DCBins_15";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_RealFormat];
    v256[15] = commonTypeDict_RealFormat16;
    v255[16] = @"DCBins_16";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_RealFormat];
    v256[16] = commonTypeDict_RealFormat17;
    v255[17] = @"ACBins_0";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_RealFormat];
    v256[17] = commonTypeDict_RealFormat18;
    v255[18] = @"ACBins_1";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_RealFormat];
    v256[18] = commonTypeDict_RealFormat19;
    v255[19] = @"ACBins_2";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_RealFormat];
    v256[19] = commonTypeDict_RealFormat20;
    v255[20] = @"ACBins_3";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_RealFormat];
    v256[20] = commonTypeDict_RealFormat21;
    v255[21] = @"ACBins_4";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_RealFormat];
    v256[21] = commonTypeDict_RealFormat22;
    v255[22] = @"ACBins_5";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_RealFormat];
    v256[22] = commonTypeDict_RealFormat23;
    v255[23] = @"ACBins_6";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_RealFormat];
    v256[23] = commonTypeDict_RealFormat24;
    v255[24] = @"ACBins_7";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat25 = [mEMORY[0x277D3F198]25 commonTypeDict_RealFormat];
    v256[24] = commonTypeDict_RealFormat25;
    v255[25] = @"ACBins_8";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat26 = [mEMORY[0x277D3F198]26 commonTypeDict_RealFormat];
    v256[25] = commonTypeDict_RealFormat26;
    v255[26] = @"ACBins_9";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat27 = [mEMORY[0x277D3F198]27 commonTypeDict_RealFormat];
    v256[26] = commonTypeDict_RealFormat27;
    v255[27] = @"ACBins_10";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat28 = [mEMORY[0x277D3F198]28 commonTypeDict_RealFormat];
    v256[27] = commonTypeDict_RealFormat28;
    v255[28] = @"ACBins_11";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat29 = [mEMORY[0x277D3F198]29 commonTypeDict_RealFormat];
    v256[28] = commonTypeDict_RealFormat29;
    v255[29] = @"ACBins_12";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat30 = [mEMORY[0x277D3F198]30 commonTypeDict_RealFormat];
    v256[29] = commonTypeDict_RealFormat30;
    v255[30] = @"ACBins_13";
    mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat31 = [mEMORY[0x277D3F198]31 commonTypeDict_RealFormat];
    v256[30] = commonTypeDict_RealFormat31;
    v255[31] = @"ACBins_14";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat32 = [mEMORY[0x277D3F198]32 commonTypeDict_RealFormat];
    v256[31] = commonTypeDict_RealFormat32;
    v255[32] = @"ACBins_15";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat33 = [mEMORY[0x277D3F198]33 commonTypeDict_RealFormat];
    v256[32] = commonTypeDict_RealFormat33;
    v255[33] = @"ACBins_16";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat34 = [mEMORY[0x277D3F198]34 commonTypeDict_RealFormat];
    v256[33] = commonTypeDict_RealFormat34;
    v255[34] = @"ASBins_0";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat35 = [mEMORY[0x277D3F198]35 commonTypeDict_RealFormat];
    v256[34] = commonTypeDict_RealFormat35;
    v255[35] = @"ASBins_1";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat36 = [mEMORY[0x277D3F198]36 commonTypeDict_RealFormat];
    v256[35] = commonTypeDict_RealFormat36;
    v255[36] = @"ASBins_2";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat37 = [mEMORY[0x277D3F198]37 commonTypeDict_RealFormat];
    v256[36] = commonTypeDict_RealFormat37;
    v255[37] = @"ASBins_3";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat38 = [mEMORY[0x277D3F198]38 commonTypeDict_RealFormat];
    v256[37] = commonTypeDict_RealFormat38;
    v255[38] = @"ASBins_4";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat39 = [mEMORY[0x277D3F198]39 commonTypeDict_RealFormat];
    v256[38] = commonTypeDict_RealFormat39;
    v255[39] = @"ASBins_5";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat40 = [mEMORY[0x277D3F198]40 commonTypeDict_RealFormat];
    v256[39] = commonTypeDict_RealFormat40;
    v255[40] = @"ASBins_6";
    mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat41 = [mEMORY[0x277D3F198]41 commonTypeDict_RealFormat];
    v256[40] = commonTypeDict_RealFormat41;
    v255[41] = @"ASBins_7";
    mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat42 = [mEMORY[0x277D3F198]42 commonTypeDict_RealFormat];
    v256[41] = commonTypeDict_RealFormat42;
    v255[42] = @"ASBins_8";
    mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat43 = [mEMORY[0x277D3F198]43 commonTypeDict_RealFormat];
    v256[42] = commonTypeDict_RealFormat43;
    v255[43] = @"ASBins_9";
    mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat44 = [mEMORY[0x277D3F198]44 commonTypeDict_RealFormat];
    v256[43] = commonTypeDict_RealFormat44;
    v255[44] = @"ACABins_0";
    mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat45 = [mEMORY[0x277D3F198]45 commonTypeDict_RealFormat];
    v256[44] = commonTypeDict_RealFormat45;
    v255[45] = @"ACABins_1";
    mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat46 = [mEMORY[0x277D3F198]46 commonTypeDict_RealFormat];
    v256[45] = commonTypeDict_RealFormat46;
    v255[46] = @"ACABins_2";
    mEMORY[0x277D3F198]47 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat47 = [mEMORY[0x277D3F198]47 commonTypeDict_RealFormat];
    v256[46] = commonTypeDict_RealFormat47;
    v255[47] = @"ACABins_3";
    mEMORY[0x277D3F198]48 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat48 = [mEMORY[0x277D3F198]48 commonTypeDict_RealFormat];
    v256[47] = commonTypeDict_RealFormat48;
    v255[48] = @"ACABins_4";
    mEMORY[0x277D3F198]49 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat49 = [mEMORY[0x277D3F198]49 commonTypeDict_RealFormat];
    v256[48] = commonTypeDict_RealFormat49;
    v255[49] = @"ACABins_5";
    mEMORY[0x277D3F198]50 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat50 = [mEMORY[0x277D3F198]50 commonTypeDict_RealFormat];
    v256[49] = commonTypeDict_RealFormat50;
    v255[50] = @"ACABins_6";
    mEMORY[0x277D3F198]51 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat51 = [mEMORY[0x277D3F198]51 commonTypeDict_RealFormat];
    v256[50] = commonTypeDict_RealFormat51;
    v255[51] = @"ACABins_7";
    mEMORY[0x277D3F198]52 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat52 = [mEMORY[0x277D3F198]52 commonTypeDict_RealFormat];
    v256[51] = commonTypeDict_RealFormat52;
    v255[52] = @"ACABins_8";
    mEMORY[0x277D3F198]53 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat53 = [mEMORY[0x277D3F198]53 commonTypeDict_RealFormat];
    v256[52] = commonTypeDict_RealFormat53;
    v255[53] = @"ACABins_9";
    mEMORY[0x277D3F198]54 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat54 = [mEMORY[0x277D3F198]54 commonTypeDict_RealFormat];
    v256[53] = commonTypeDict_RealFormat54;
    v255[54] = @"ACABins_10";
    mEMORY[0x277D3F198]55 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat55 = [mEMORY[0x277D3F198]55 commonTypeDict_RealFormat];
    v256[54] = commonTypeDict_RealFormat55;
    v255[55] = @"ACABins_11";
    mEMORY[0x277D3F198]56 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat56 = [mEMORY[0x277D3F198]56 commonTypeDict_RealFormat];
    v256[55] = commonTypeDict_RealFormat56;
    v255[56] = @"ACABins_12";
    mEMORY[0x277D3F198]57 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat57 = [mEMORY[0x277D3F198]57 commonTypeDict_RealFormat];
    v256[56] = commonTypeDict_RealFormat57;
    v255[57] = @"ACABins_13";
    mEMORY[0x277D3F198]58 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat58 = [mEMORY[0x277D3F198]58 commonTypeDict_RealFormat];
    v256[57] = commonTypeDict_RealFormat58;
    v255[58] = @"ACABins_14";
    mEMORY[0x277D3F198]59 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat59 = [mEMORY[0x277D3F198]59 commonTypeDict_RealFormat];
    v256[58] = commonTypeDict_RealFormat59;
    v255[59] = @"ACABins_15";
    mEMORY[0x277D3F198]60 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat60 = [mEMORY[0x277D3F198]60 commonTypeDict_RealFormat];
    v256[59] = commonTypeDict_RealFormat60;
    v255[60] = @"ACABins_16";
    mEMORY[0x277D3F198]61 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat61 = [mEMORY[0x277D3F198]61 commonTypeDict_RealFormat];
    v256[60] = commonTypeDict_RealFormat61;
    v255[61] = @"ACABins_17";
    mEMORY[0x277D3F198]62 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat62 = [mEMORY[0x277D3F198]62 commonTypeDict_RealFormat];
    v256[61] = commonTypeDict_RealFormat62;
    v255[62] = @"ACABins_18";
    mEMORY[0x277D3F198]63 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat63 = [mEMORY[0x277D3F198]63 commonTypeDict_RealFormat];
    v256[62] = commonTypeDict_RealFormat63;
    v255[63] = @"ACABins_19";
    mEMORY[0x277D3F198]64 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat64 = [mEMORY[0x277D3F198]64 commonTypeDict_RealFormat];
    v256[63] = commonTypeDict_RealFormat64;
    v255[64] = @"ACABins_20";
    mEMORY[0x277D3F198]65 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat65 = [mEMORY[0x277D3F198]65 commonTypeDict_RealFormat];
    v256[64] = commonTypeDict_RealFormat65;
    v255[65] = @"ACABins_21";
    mEMORY[0x277D3F198]66 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat66 = [mEMORY[0x277D3F198]66 commonTypeDict_RealFormat];
    v256[65] = commonTypeDict_RealFormat66;
    v255[66] = @"ACABins_22";
    mEMORY[0x277D3F198]67 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat67 = [mEMORY[0x277D3F198]67 commonTypeDict_RealFormat];
    v256[66] = commonTypeDict_RealFormat67;
    v255[67] = @"ACABins_23";
    mEMORY[0x277D3F198]68 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat68 = [mEMORY[0x277D3F198]68 commonTypeDict_RealFormat];
    v256[67] = commonTypeDict_RealFormat68;
    v255[68] = @"ACABins_24";
    mEMORY[0x277D3F198]69 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat69 = [mEMORY[0x277D3F198]69 commonTypeDict_RealFormat];
    v256[68] = commonTypeDict_RealFormat69;
    v255[69] = @"ACABins_25";
    mEMORY[0x277D3F198]70 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat70 = [mEMORY[0x277D3F198]70 commonTypeDict_RealFormat];
    v256[69] = commonTypeDict_RealFormat70;
    v255[70] = @"ACABins_26";
    mEMORY[0x277D3F198]71 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat71 = [mEMORY[0x277D3F198]71 commonTypeDict_RealFormat];
    v256[70] = commonTypeDict_RealFormat71;
    v255[71] = @"ACABins_27";
    mEMORY[0x277D3F198]72 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat72 = [mEMORY[0x277D3F198]72 commonTypeDict_RealFormat];
    v256[71] = commonTypeDict_RealFormat72;
    v255[72] = @"ACABins_28";
    mEMORY[0x277D3F198]73 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat73 = [mEMORY[0x277D3F198]73 commonTypeDict_RealFormat];
    v256[72] = commonTypeDict_RealFormat73;
    v255[73] = @"ACABins_29";
    mEMORY[0x277D3F198]74 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat74 = [mEMORY[0x277D3F198]74 commonTypeDict_RealFormat];
    v256[73] = commonTypeDict_RealFormat74;
    v255[74] = @"ACABins_30";
    mEMORY[0x277D3F198]75 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat75 = [mEMORY[0x277D3F198]75 commonTypeDict_RealFormat];
    v256[74] = commonTypeDict_RealFormat75;
    v255[75] = @"ACABins_31";
    mEMORY[0x277D3F198]76 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat76 = [mEMORY[0x277D3F198]76 commonTypeDict_RealFormat];
    v256[75] = commonTypeDict_RealFormat76;
    v255[76] = @"ACABins_32";
    mEMORY[0x277D3F198]77 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat77 = [mEMORY[0x277D3F198]77 commonTypeDict_RealFormat];
    v256[76] = commonTypeDict_RealFormat77;
    v255[77] = @"ACABins_33";
    mEMORY[0x277D3F198]78 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat78 = [mEMORY[0x277D3F198]78 commonTypeDict_RealFormat];
    v256[77] = commonTypeDict_RealFormat78;
    v255[78] = @"ACABins_34";
    mEMORY[0x277D3F198]79 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat79 = [mEMORY[0x277D3F198]79 commonTypeDict_RealFormat];
    v256[78] = commonTypeDict_RealFormat79;
    v255[79] = @"ACABins_35";
    mEMORY[0x277D3F198]80 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat80 = [mEMORY[0x277D3F198]80 commonTypeDict_RealFormat];
    v256[79] = commonTypeDict_RealFormat80;
    v255[80] = @"ACABins_36";
    mEMORY[0x277D3F198]81 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat81 = [mEMORY[0x277D3F198]81 commonTypeDict_RealFormat];
    v256[80] = commonTypeDict_RealFormat81;
    v255[81] = @"ACABins_37";
    mEMORY[0x277D3F198]82 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat82 = [mEMORY[0x277D3F198]82 commonTypeDict_RealFormat];
    v256[81] = commonTypeDict_RealFormat82;
    v255[82] = @"ACABins_38";
    mEMORY[0x277D3F198]83 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat83 = [mEMORY[0x277D3F198]83 commonTypeDict_RealFormat];
    v256[82] = commonTypeDict_RealFormat83;
    v255[83] = @"ACABins_39";
    mEMORY[0x277D3F198]84 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat84 = [mEMORY[0x277D3F198]84 commonTypeDict_RealFormat];
    v256[83] = commonTypeDict_RealFormat84;
    v255[84] = @"ACABins_40";
    mEMORY[0x277D3F198]85 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat85 = [mEMORY[0x277D3F198]85 commonTypeDict_RealFormat];
    v256[84] = commonTypeDict_RealFormat85;
    v255[85] = @"ACABins_41";
    mEMORY[0x277D3F198]86 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat86 = [mEMORY[0x277D3F198]86 commonTypeDict_RealFormat];
    v256[85] = commonTypeDict_RealFormat86;
    v255[86] = @"ACABins_42";
    mEMORY[0x277D3F198]87 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat87 = [mEMORY[0x277D3F198]87 commonTypeDict_RealFormat];
    v256[86] = commonTypeDict_RealFormat87;
    v255[87] = @"ACABins_43";
    mEMORY[0x277D3F198]88 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat88 = [mEMORY[0x277D3F198]88 commonTypeDict_RealFormat];
    v256[87] = commonTypeDict_RealFormat88;
    v255[88] = @"ACABins_44";
    mEMORY[0x277D3F198]89 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat89 = [mEMORY[0x277D3F198]89 commonTypeDict_RealFormat];
    v256[88] = commonTypeDict_RealFormat89;
    v255[89] = @"ACABins_45";
    mEMORY[0x277D3F198]90 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat90 = [mEMORY[0x277D3F198]90 commonTypeDict_RealFormat];
    v256[89] = commonTypeDict_RealFormat90;
    v255[90] = @"ACTBins_0";
    mEMORY[0x277D3F198]91 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]91 commonTypeDict_IntegerFormat];
    v256[90] = commonTypeDict_IntegerFormat;
    v255[91] = @"ACTBins_1";
    mEMORY[0x277D3F198]92 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]92 commonTypeDict_IntegerFormat];
    v256[91] = commonTypeDict_IntegerFormat2;
    v255[92] = @"ACTBins_2";
    mEMORY[0x277D3F198]93 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]93 commonTypeDict_IntegerFormat];
    v256[92] = commonTypeDict_IntegerFormat3;
    v255[93] = @"ACTBins_3";
    mEMORY[0x277D3F198]94 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]94 commonTypeDict_IntegerFormat];
    v256[93] = commonTypeDict_IntegerFormat4;
    v255[94] = @"ACTBins_4";
    mEMORY[0x277D3F198]95 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]95 commonTypeDict_IntegerFormat];
    v256[94] = commonTypeDict_IntegerFormat5;
    v255[95] = @"ACTBins_5";
    mEMORY[0x277D3F198]96 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]96 commonTypeDict_IntegerFormat];
    v256[95] = commonTypeDict_IntegerFormat6;
    v255[96] = @"ACTBins_6";
    mEMORY[0x277D3F198]97 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]97 commonTypeDict_IntegerFormat];
    v256[96] = commonTypeDict_IntegerFormat7;
    v255[97] = @"ACTBins_7";
    mEMORY[0x277D3F198]98 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]98 commonTypeDict_IntegerFormat];
    v256[97] = commonTypeDict_IntegerFormat8;
    v255[98] = @"ACTBins_8";
    mEMORY[0x277D3F198]99 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]99 commonTypeDict_IntegerFormat];
    v256[98] = commonTypeDict_IntegerFormat9;
    v255[99] = @"ACTBins_9";
    mEMORY[0x277D3F198]100 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]100 commonTypeDict_IntegerFormat];
    v256[99] = commonTypeDict_IntegerFormat10;
    v255[100] = @"ACTBins_10";
    mEMORY[0x277D3F198]101 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]101 commonTypeDict_IntegerFormat];
    v256[100] = commonTypeDict_IntegerFormat11;
    v255[101] = @"ACTBins_11";
    mEMORY[0x277D3F198]102 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]102 commonTypeDict_IntegerFormat];
    v256[101] = commonTypeDict_IntegerFormat12;
    v255[102] = @"ACTBins_12";
    mEMORY[0x277D3F198]103 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]103 commonTypeDict_IntegerFormat];
    v256[102] = commonTypeDict_IntegerFormat13;
    v255[103] = @"ACTBins_13";
    mEMORY[0x277D3F198]104 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]104 commonTypeDict_IntegerFormat];
    v256[103] = commonTypeDict_IntegerFormat14;
    v255[104] = @"ACTBins_14";
    mEMORY[0x277D3F198]105 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]105 commonTypeDict_IntegerFormat];
    v256[104] = commonTypeDict_IntegerFormat15;
    v255[105] = @"ACTBins_15";
    mEMORY[0x277D3F198]106 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]106 commonTypeDict_IntegerFormat];
    v256[105] = commonTypeDict_IntegerFormat16;
    v255[106] = @"ACTBins_16";
    mEMORY[0x277D3F198]107 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]107 commonTypeDict_IntegerFormat];
    v256[106] = commonTypeDict_IntegerFormat17;
    v255[107] = @"DCTBins_0";
    mEMORY[0x277D3F198]108 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]108 commonTypeDict_IntegerFormat];
    v256[107] = commonTypeDict_IntegerFormat18;
    v255[108] = @"DCTBins_1";
    mEMORY[0x277D3F198]109 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]109 commonTypeDict_IntegerFormat];
    v256[108] = commonTypeDict_IntegerFormat19;
    v255[109] = @"DCTBins_2";
    mEMORY[0x277D3F198]110 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]110 commonTypeDict_IntegerFormat];
    v256[109] = commonTypeDict_IntegerFormat20;
    v255[110] = @"DCTBins_3";
    mEMORY[0x277D3F198]111 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]111 commonTypeDict_IntegerFormat];
    v256[110] = commonTypeDict_IntegerFormat21;
    v255[111] = @"DCTBins_4";
    mEMORY[0x277D3F198]112 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]112 commonTypeDict_IntegerFormat];
    v256[111] = commonTypeDict_IntegerFormat22;
    v255[112] = @"DCTBins_5";
    mEMORY[0x277D3F198]113 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]113 commonTypeDict_IntegerFormat];
    v256[112] = commonTypeDict_IntegerFormat23;
    v255[113] = @"DCTBins_6";
    mEMORY[0x277D3F198]114 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]114 commonTypeDict_IntegerFormat];
    v256[113] = commonTypeDict_IntegerFormat24;
    v255[114] = @"DCTBins_7";
    mEMORY[0x277D3F198]115 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]115 commonTypeDict_IntegerFormat];
    v256[114] = commonTypeDict_IntegerFormat25;
    v255[115] = @"DCTBins_8";
    mEMORY[0x277D3F198]116 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]116 commonTypeDict_IntegerFormat];
    v256[115] = commonTypeDict_IntegerFormat26;
    v255[116] = @"DCTBins_9";
    mEMORY[0x277D3F198]117 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]117 commonTypeDict_IntegerFormat];
    v256[116] = commonTypeDict_IntegerFormat27;
    v255[117] = @"DCTBins_10";
    mEMORY[0x277D3F198]118 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]118 commonTypeDict_IntegerFormat];
    v256[117] = commonTypeDict_IntegerFormat28;
    v255[118] = @"DCTBins_11";
    mEMORY[0x277D3F198]119 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]119 commonTypeDict_IntegerFormat];
    v256[118] = commonTypeDict_IntegerFormat29;
    v255[119] = @"DCTBins_12";
    mEMORY[0x277D3F198]120 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]120 commonTypeDict_IntegerFormat];
    v256[119] = commonTypeDict_IntegerFormat30;
    v255[120] = @"DCTBins_13";
    mEMORY[0x277D3F198]121 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]121 commonTypeDict_IntegerFormat];
    v256[120] = commonTypeDict_IntegerFormat31;
    v255[121] = @"DCTBins_14";
    mEMORY[0x277D3F198]122 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]122 commonTypeDict_IntegerFormat];
    v256[121] = commonTypeDict_IntegerFormat32;
    v255[122] = @"DCTBins_15";
    mEMORY[0x277D3F198]123 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat33 = [mEMORY[0x277D3F198]123 commonTypeDict_IntegerFormat];
    v256[122] = commonTypeDict_IntegerFormat33;
    v255[123] = @"DCTBins_16";
    mEMORY[0x277D3F198]124 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat34 = [mEMORY[0x277D3F198]124 commonTypeDict_IntegerFormat];
    v256[123] = commonTypeDict_IntegerFormat34;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v256 forKeys:v255 count:124];
    v260[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v260 forKeys:v259 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionBlueLightParameters
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogBLR])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v17 = *MEMORY[0x277D3F568];
    v18 = &unk_28714B7A8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"AvgBacklightNits";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v16[0] = commonTypeDict_RealFormat;
    v15[1] = @"AvgLogicalBrightnessNits";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v16[1] = commonTypeDict_RealFormat2;
    v15[2] = @"BlueLightReductionOffTime";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v16[2] = commonTypeDict_RealFormat3;
    v15[3] = @"BlueLightReductionOnTime";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v16[3] = commonTypeDict_RealFormat4;
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

+ (id)entryEventBackwardDefinitionRampInfo
{
  v58[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v57[0] = *MEMORY[0x277D3F4E8];
    v55 = *MEMORY[0x277D3F568];
    v56 = &unk_28714B7A8;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v58[0] = v52;
    v57[1] = *MEMORY[0x277D3F540];
    v53[0] = @"AAP_NumberOfUpdates";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v54[0] = commonTypeDict_IntegerFormat;
    v53[1] = @"AAP_RampFrequency";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v54[1] = commonTypeDict_IntegerFormat2;
    v53[2] = @"AAP_RampLength";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v54[2] = commonTypeDict_RealFormat;
    v53[3] = @"AAP_RampOrigin";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v54[3] = commonTypeDict_RealFormat2;
    v53[4] = @"AAP_RampTarget";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v54[4] = commonTypeDict_RealFormat3;
    v53[5] = @"Colour_NumberOfUpdates";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v54[5] = commonTypeDict_IntegerFormat3;
    v53[6] = @"Colour_RampFrequency";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v54[6] = commonTypeDict_IntegerFormat4;
    v53[7] = @"Colour_RampLength";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
    v54[7] = commonTypeDict_RealFormat4;
    v53[8] = @"Colour_RampOrigin_X";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
    v54[8] = commonTypeDict_RealFormat5;
    v53[9] = @"Colour_RampOrigin_Y";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
    v54[9] = commonTypeDict_RealFormat6;
    v53[10] = @"Colour_RampTarget_X";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
    v54[10] = commonTypeDict_RealFormat7;
    v53[11] = @"Colour_RampTarget_Y";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]12 commonTypeDict_RealFormat];
    v54[11] = commonTypeDict_RealFormat8;
    v53[12] = @"SDR_NumberOfUpdates";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v54[12] = commonTypeDict_IntegerFormat5;
    v53[13] = @"SDR_RampFrequency";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
    v54[13] = commonTypeDict_IntegerFormat6;
    v53[14] = @"SDR_RampLength";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]15 commonTypeDict_RealFormat];
    v54[14] = commonTypeDict_RealFormat9;
    v53[15] = @"SDR_RampOrigin";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]16 commonTypeDict_RealFormat];
    v54[15] = commonTypeDict_RealFormat10;
    v53[16] = @"SDR_RampTarget";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat11 = [mEMORY[0x277D3F198]17 commonTypeDict_RealFormat];
    v54[16] = commonTypeDict_RealFormat11;
    v53[17] = @"EDR_NumberOfUpdates";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
    v54[17] = commonTypeDict_IntegerFormat7;
    v53[18] = @"EDR_RampFrequency";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
    v54[18] = commonTypeDict_IntegerFormat8;
    v53[19] = @"EDR_RampLength";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat12 = [mEMORY[0x277D3F198]20 commonTypeDict_RealFormat];
    v54[19] = commonTypeDict_RealFormat12;
    v53[20] = @"EDR_RampOrigin";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat13 = [mEMORY[0x277D3F198]21 commonTypeDict_RealFormat];
    v54[20] = commonTypeDict_RealFormat13;
    v53[21] = @"EDR_RampTarget";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat14 = [mEMORY[0x277D3F198]22 commonTypeDict_RealFormat];
    v54[21] = commonTypeDict_RealFormat14;
    v53[22] = @"isFlipbookActive";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
    v54[22] = commonTypeDict_IntegerFormat9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:23];
    v58[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionCurveUpdate
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_28714B7A8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"lux";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v14[0] = commonTypeDict_IntegerFormat;
    v13[1] = @"nits";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v14[1] = commonTypeDict_IntegerFormat2;
    v13[2] = @"level";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v14[2] = commonTypeDict_IntegerFormat3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventBackwardDefinitionALSThreshold
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v17 = *MEMORY[0x277D3F568];
    v18 = &unk_28714B7A8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"WakeReason";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v16[0] = commonTypeDict_StringFormat;
    v15[1] = @"Lux";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v16[1] = commonTypeDict_RealFormat;
    v15[2] = @"DimThreshold";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v16[2] = commonTypeDict_RealFormat2;
    v15[3] = @"BrightenThreshold";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v16[3] = commonTypeDict_RealFormat3;
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

+ (id)entryEventBackwardDefinitionALSSamplesBeforeWake
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_28714B7A8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"Lux";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v14[0] = commonTypeDict_RealFormat;
    v13[1] = @"colorX";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v14[1] = commonTypeDict_RealFormat2;
    v13[2] = @"colorY";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v14[2] = commonTypeDict_RealFormat3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventBackwardDefinitionAmbientLight
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_28714B7A8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"Lux";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v14[0] = commonTypeDict_RealFormat;
    v13[1] = @"colorX";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v14[1] = commonTypeDict_RealFormat2;
    v13[2] = @"colorY";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v14[2] = commonTypeDict_RealFormat3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventBackwardDefinitionAPLStats
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogAPL])
  {
    v28[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v26[0] = *MEMORY[0x277D3F568];
    v26[1] = v2;
    v27[0] = &unk_28714B808;
    v27[1] = @"logDisplayAPL";
    v3 = *MEMORY[0x277D3F590];
    v26[2] = *MEMORY[0x277D3F4D8];
    v26[3] = v3;
    v27[2] = MEMORY[0x277CBEC38];
    v27[3] = &unk_287146CF0;
    v4 = *MEMORY[0x277D3F4A0];
    v26[4] = *MEMORY[0x277D3F588];
    v26[5] = v4;
    v27[4] = &unk_28714B818;
    v27[5] = MEMORY[0x277CBEC38];
    v26[6] = *MEMORY[0x277D3F4F0];
    v27[6] = &unk_28714DB50;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];
    v29[0] = v23;
    v28[1] = *MEMORY[0x277D3F540];
    v24[0] = @"bundleID";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
    v25[0] = commonTypeDict_StringFormat_withBundleID;
    v24[1] = @"AvgRed";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v25[1] = commonTypeDict_IntegerFormat;
    v24[2] = @"AvgGreen";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v25[2] = commonTypeDict_IntegerFormat2;
    v24[3] = @"AvgBlue";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v25[3] = commonTypeDict_IntegerFormat3;
    v24[4] = @"Frames";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v25[4] = commonTypeDict_IntegerFormat4;
    v24[5] = @"AvgPower";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
    v25[5] = commonTypeDict_RealFormat;
    v24[6] = @"AvgAPL";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
    v25[6] = commonTypeDict_RealFormat2;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];
    v29[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventBackwardDefinitionAZLStats
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4D8];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_28714B7A8;
    v21[1] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"AvgPower";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v19[0] = commonTypeDict_IntegerFormat;
    v18[1] = @"AZLAccum";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v19[1] = commonTypeDict_IntegerFormat2;
    v18[2] = @"NitsAccum";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v19[2] = commonTypeDict_IntegerFormat3;
    v18[3] = @"BLUpdateCount";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v19[3] = commonTypeDict_IntegerFormat4;
    v18[4] = @"BLFrameCount";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v19[4] = commonTypeDict_IntegerFormat5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAZLSnapshots
{
  v27[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    v26[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F580];
    v24[0] = *MEMORY[0x277D3F568];
    v24[1] = v2;
    v25[0] = &unk_28714B7A8;
    v25[1] = MEMORY[0x277CBEC38];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v27[0] = v21;
    v26[1] = *MEMORY[0x277D3F540];
    v22[0] = @"PacketID";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v23[0] = commonTypeDict_IntegerFormat;
    v22[1] = @"VLED";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v23[1] = commonTypeDict_IntegerFormat2;
    v22[2] = @"MaxRowCurrent";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v23[2] = commonTypeDict_IntegerFormat3;
    v22[3] = @"NitsAccum";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v23[3] = commonTypeDict_IntegerFormat4;
    v22[4] = @"AverageCurrent";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v23[4] = commonTypeDict_IntegerFormat5;
    v22[5] = @"AZL";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v23[5] = commonTypeDict_IntegerFormat6;
    v22[6] = @"SystemNits";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v23[6] = commonTypeDict_IntegerFormat7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
    v27[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionDCPAODstats
{
  v40[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v39[0] = *MEMORY[0x277D3F4E8];
    v37 = *MEMORY[0x277D3F568];
    v38 = &unk_28714B7F8;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v40[0] = v34;
    v39[1] = *MEMORY[0x277D3F540];
    v35[0] = @"awake_count";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v36[0] = commonTypeDict_IntegerFormat;
    v35[1] = @"media_count";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v36[1] = commonTypeDict_IntegerFormat2;
    v35[2] = @"flipbook_count";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v36[2] = commonTypeDict_IntegerFormat3;
    v35[3] = @"flipbook_delay";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v36[3] = commonTypeDict_IntegerFormat4;
    v35[4] = @"media_scanout";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v36[4] = commonTypeDict_IntegerFormat5;
    v35[5] = @"ambient_count";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v36[5] = commonTypeDict_IntegerFormat6;
    v35[6] = @"prc_repeat_coun";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v36[6] = commonTypeDict_IntegerFormat7;
    v35[7] = @"pdc_repeat_coun";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v36[7] = commonTypeDict_IntegerFormat8;
    v35[8] = @"llm_count";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v36[8] = commonTypeDict_IntegerFormat9;
    v35[9] = @"apl_sum";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v36[9] = commonTypeDict_IntegerFormat10;
    v35[10] = @"apl_count";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v36[10] = commonTypeDict_IntegerFormat11;
    v35[11] = @"1hz_flipbook_frame_count";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
    v36[11] = commonTypeDict_IntegerFormat12;
    v35[12] = @"1hz_frame_miss_count";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v36[12] = commonTypeDict_IntegerFormat13;
    v35[13] = @"1hz_bic_accum_count";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
    v36[13] = commonTypeDict_IntegerFormat14;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:14];
    v40[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
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
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"UserTouch";
  v2 = +[PLDisplayAgent entryAggregateDefinitionUserTouch];
  v7[1] = @"ScreenOn";
  v8[0] = v2;
  v3 = +[PLDisplayAgent entryAggregateDefinitionScreenOn];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryAggregateDefinitionUserTouch
{
  v22[4] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogTouch])
  {
    v21[0] = *MEMORY[0x277D3F4E8];
    v19 = *MEMORY[0x277D3F568];
    v20 = &unk_28714B7A8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v2;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"UserTouchCount";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_aggregateFunction_sum];
    v17[1] = @"UserTouchTime";
    v18[0] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
    v18[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v22[1] = v7;
    v21[2] = *MEMORY[0x277D3F478];
    v15 = &unk_28714B828;
    v13 = *MEMORY[0x277D3F470];
    v14 = &unk_28714B838;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v21[3] = *MEMORY[0x277D3F488];
    v22[2] = v9;
    v22[3] = &unk_28714DB68;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (PLDisplayAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_2;
  }

  v98.receiver = self;
  v98.super_class = PLDisplayAgent;
  v4 = [(PLAgent *)&v98 init];
  if (!v4)
  {
LABEL_63:
    self = v4;
    selfCopy = self;
    goto LABEL_64;
  }

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
    [mEMORY[0x277CF0880] addObserver:v4];

    workQueue = [(PLOperator *)v4 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__PLDisplayAgent_init__block_invoke;
    block[3] = &unk_279A5BDC0;
    v97 = v4;
    dispatch_async(workQueue, block);
  }

  v4->_alsOn = [(PLDisplayAgent *)v4 isAlsEnabled];
  v4->_lastALSPowerSaved = 1.79769313e308;
  v4->_isFirstTimeModeling = 1;
  v4->_displaymNits = 0.0;
  v4->_realmNits = 0.0;
  v4->_autobrightnessmNits = 0.0;
  v4->_ShouldLogAmbient = [MEMORY[0x277D3F180] BOOLForKey:@"AmbientFullMode" ifNotSet:0];
  v4->_lastRearLuxValue = -1;
  v4->_supportsFinalBrightnessCommit = 0;
  v7 = 0x277CBE000uLL;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([MEMORY[0x277D3F208] isiPad] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPod") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPhone") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
  {
    [v8 addObject:@"BacklightPowerMilliWatts"];
    [v8 addObject:@"BacklightPowerNits"];
    [v8 addObject:@"DisplayBrightness"];
    [v8 addObject:@"CBSupportsFinalCommit"];
    [v8 addObject:@"CBFinalBrightnessCommit"];
    [v8 addObject:@"DisplayBrightnessAuto"];
    [v8 addObject:@"PowerLogReport"];
    [v8 addObject:@"CBBlueReductionStatus"];
    [v8 addObject:@"BrightnessTransaction"];
    if ([MEMORY[0x277D3F208] hasAOD])
    {
      [v8 addObject:@"AODRampTelemetry"];
      [v8 addObject:@"AODCurveUpdate"];
      [v8 addObject:@"AODWakeFromALSThreshold"];
      [v8 addObject:@"CBAmbientLightTelemetry"];
    }

    if (+[PLDisplayAgent shouldLogLuxStats])
    {
      v9 = @"RLuxStats";
LABEL_15:
      [v8 addObject:v9];
    }
  }

  else if ([MEMORY[0x277D3F208] isWatch])
  {
    v9 = @"InactiveScreenHistory";
    goto LABEL_15;
  }

  if ([MEMORY[0x277CFD398] supportsAdaptation])
  {
    v10 = objc_alloc_init(MEMORY[0x277CFD398]);
    colorAdaptationClient = v4->_colorAdaptationClient;
    v4->_colorAdaptationClient = v10;

    if (v4->_colorAdaptationClient)
    {
      [v8 addObject:@"ColorAdaptationEnabled"];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __22__PLDisplayAgent_init__block_invoke_2;
      v95[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v95[4] = v12;
      if (init_defaultOnce_0 != -1)
      {
        dispatch_once(&init_defaultOnce_0, v95);
      }

      if (init_classDebugEnabled_0 == 1)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"CBAdaptationClient init fail! Cannot get color adaptation information!"];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]"];
        [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:1484];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v7 = 0x277CBE000;
      }
    }
  }

  pendingBacklightEntryDate = v4->_pendingBacklightEntryDate;
  v4->_pendingBacklightEntryDate = 0;

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pendingBacklightEntry = v4->_pendingBacklightEntry;
  v4->_pendingBacklightEntry = v20;

  v22 = objc_alloc(MEMORY[0x277D3F250]);
  workQueue2 = [(PLOperator *)v4 workQueue];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __22__PLDisplayAgent_init__block_invoke_1431;
  v93[3] = &unk_279A5D088;
  v24 = v4;
  v94 = v24;
  v25 = [v22 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:workQueue2 withUserInfo:v93 withQueue:1.0 withBlock:0.0];
  v26 = v24[18];
  v24[18] = v25;

  [v24[18] arm];
  v27 = objc_alloc_init(MEMORY[0x277CFD390]);
  v28 = v24[16];
  v24[16] = v27;

  if (!v24[16] && [MEMORY[0x277D3F180] debugEnabled])
  {
    v29 = objc_opt_class();
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __22__PLDisplayAgent_init__block_invoke_1442;
    v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v92[4] = v29;
    if (init_defaultOnce_1440 != -1)
    {
      dispatch_once(&init_defaultOnce_1440, v92);
    }

    if (init_classDebugEnabled_1441 == 1)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"BrightnessSystemClient init fail!"];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent2 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]"];
      [v31 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:1512];

      v35 = PLLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v7 = 0x277CBE000uLL;
    }
  }

  if ([v8 count])
  {
    brightnessSystemClient = [v24 brightnessSystemClient];

    if (brightnessSystemClient)
    {
      v37 = v24[16];
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __22__PLDisplayAgent_init__block_invoke_1446;
      v90[3] = &unk_279A5E7D8;
      v91 = v24;
      [v37 registerNotificationBlock:v90 forProperties:v8];
    }
  }

  brightnessSystemClient2 = [v24 brightnessSystemClient];
  v39 = [brightnessSystemClient2 copyPropertyForKey:@"CBSupportsFinalCommit"];
  [v24 setSupportsFinalBrightnessCommit:{objc_msgSend(v39, "BOOLValue")}];

  v40 = PLLogDisplay();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [(PLDisplayAgent *)v24 init];
  }

  if (+[PLDisplayAgent shouldLogFromDCP](PLDisplayAgent, "shouldLogFromDCP") && !+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v41 = PLLogDisplay();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v41, OS_LOG_TYPE_DEFAULT, "IO object: seting up notification", buf, 2u);
    }

    array = [*(v7 + 2840) array];
    [v24 setAfkEndpoints:array];

    v43 = objc_alloc(MEMORY[0x277D3F1C8]);
    v44 = *MEMORY[0x277D3F5F0];
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __22__PLDisplayAgent_init__block_invoke_1450;
    v88[3] = &unk_279A5E800;
    v45 = v24;
    v89 = v45;
    v46 = [v43 initWithOperator:v45 forDynamicServiceClass:v44 forNotificationType:"IOServiceMatched" withMatchBlock:v88];
    v47 = v45[10];
    v45[10] = v46;

    v48 = objc_alloc(MEMORY[0x277D3F250]);
    workQueue3 = [v45 workQueue];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __22__PLDisplayAgent_init__block_invoke_2_1452;
    v86[3] = &unk_279A5D088;
    v50 = v45;
    v87 = v50;
    v51 = [v48 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:workQueue3 withUserInfo:v86 withQueue:10.0 withBlock:10.0];
    [v50 setDcpTimeoffsetCalibTimer:v51];

    dcpTimeoffsetCalibTimer = [v50 dcpTimeoffsetCalibTimer];
    [dcpTimeoffsetCalibTimer arm];
  }

  v53 = objc_alloc(MEMORY[0x277D3F1C8]);
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __22__PLDisplayAgent_init__block_invoke_1456;
  v84[3] = &unk_279A5E828;
  v54 = v24;
  v85 = v54;
  v55 = [v53 initWithOperator:v54 forService:@"AppleARMBacklight" withBlock:v84];
  v56 = v54[9];
  v54[9] = v55;

  if (+[PLDisplayAgent shouldLogBacklightControl])
  {
    v57 = objc_alloc(MEMORY[0x277D3F1C8]);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __22__PLDisplayAgent_init__block_invoke_1482;
    v82[3] = &unk_279A5E828;
    v58 = v54;
    v83 = v58;
    v59 = [v57 initWithOperator:v58 forService:@"backlight-control" withBlock:v82];
    v60 = v58[11];
    v58[11] = v59;
  }

  v61 = objc_alloc(MEMORY[0x277D3F1C8]);
  v62 = *MEMORY[0x277D3F5F8];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __22__PLDisplayAgent_init__block_invoke_2_1485;
  v80[3] = &unk_279A5E828;
  self = v54;
  selfCopy2 = self;
  v63 = [v61 initWithOperator:self forService:v62 withBlock:v80];
  iokitDisplay = self->_iokitDisplay;
  self->_iokitDisplay = v63;

  if ([MEMORY[0x277D3F208] hasDCP] && !+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    *buf = 0;
    MainDisplay = IOMobileFramebufferGetMainDisplay();
    v66 = *buf;
    v67 = PLLogDisplay();
    v68 = v67;
    if (MainDisplay || !v66)
    {
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        [PLDisplayAgent init];
      }
    }

    else
    {
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        [PLDisplayAgent init];
      }

      RunLoopSource = IOMobileFramebufferGetRunLoopSource();
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF058]);
      IOMobileFramebufferEnablePowerNotifications();
      [(PLDisplayAgent *)self setFrameBuffer:*buf];
    }
  }

  v71 = [objc_alloc(MEMORY[0x277D3F1C8]) initWithOperator:self forService:@"AppleMultitouchSPI"];
  iokitTouch = self->_iokitTouch;
  self->_iokitTouch = v71;

  if (self->_iokitDisplay || v54[9] || self->_iokitTouch || v24[16])
  {
    self->_userTouch = 0;
    userTouchDownTime = self->_userTouchDownTime;
    self->_userTouchDownTime = 0;

    self->_touchHIDClientRef = [(PLDisplayAgent *)self setUpIOHIDTouchSystemClient];
    bluelightStatusEntry = self->_bluelightStatusEntry;
    self->_bluelightStatusEntry = 0;

    bluelightFilterTimer = self->_bluelightFilterTimer;
    self->_bluelightFilterTimer = 0;

    uAmpsFilterTimer = self->_uAmpsFilterTimer;
    self->_uAmpsFilterTimer = 0;

    self->_isMIEActive = 0;
    uAmpsEntry = self->_uAmpsEntry;
    self->_uAmpsEntry = 0;

    self->_firstEntryOnInit = 1;
    [(PLDisplayAgent *)self setHDRHeadroom:0];

    goto LABEL_63;
  }

LABEL_2:
  selfCopy = 0;
LABEL_64:

  return selfCopy;
}

void __22__PLDisplayAgent_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CF0880] sharedBacklight];
  v3 = [v2 backlightState];

  v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
  v4 = [*(a1 + 32) storage];
  v5 = [v4 lastEntryForKey:v7];

  v6 = [v5 objectForKeyedSubscript:@"Active"];
  [*(a1 + 32) setLastScreenState:{objc_msgSend(v6, "intValue")}];

  [*(a1 + 32) initAODState:v3];
}

uint64_t __22__PLDisplayAgent_init__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_0 = result;
  return result;
}

void __22__PLDisplayAgent_init__block_invoke_1431(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 pendingBacklightEntry];

  if (v6)
  {
    if ([*v4 isDebugEnabled])
    {
      v7 = [PLEventForwardDisplayEntry alloc];
      v8 = [*v4 pendingBacklightEntry];
      v9 = [(PLEventForwardDisplayEntry *)v7 initEntryWithRawData:v8];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v10 = *v4;
        v11 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __22__PLDisplayAgent_init__block_invoke_2_1433;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v11;
        if (kPRearNits_block_invoke_defaultOnce != -1)
        {
          dispatch_once(&kPRearNits_block_invoke_defaultOnce, block);
        }

        if (kPRearNits_block_invoke_classDebugEnabled == 1)
        {
          v12 = MEMORY[0x277CCACA8];
          v13 = [v9 objectForKeyedSubscript:@"Brightness"];
          v14 = MEMORY[0x277D3F268];
          v15 = [*v4 pendingBacklightEntryDate];
          v16 = [v14 formattedStringForDate:v15];
          v17 = [v12 stringWithFormat:@"Writing backlight entry:%@ with date: %@", v13, v16];

          v18 = MEMORY[0x277D3F178];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v20 = [v19 lastPathComponent];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke"];
          [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:1497];

          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }
    }

    v23 = PLLogDisplay();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_1431_cold_2(v4);
    }

    v24 = *v4;
    v25 = [*v4 pendingBacklightEntry];
    v26 = [*v4 pendingBacklightEntryDate];
    [v24 logEventForwardDisplayWithRawData:v25 withDate:v26];

    v27 = PLLogDisplay();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_1431_cold_3();
    }

    [*v4 setPendingBacklightEntry:0];
    [*v4 setPendingBacklightEntryDate:0];
  }

  else
  {
    v28 = PLLogDisplay();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_1431_cold_4(v4, v3);
    }

    v29 = [*v4 backlightFilterTimer];
    [v29 setTimerActive:0];
  }
}

uint64_t __22__PLDisplayAgent_init__block_invoke_2_1433(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_classDebugEnabled = result;
  return result;
}

uint64_t __22__PLDisplayAgent_init__block_invoke_1442(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_1441 = result;
  return result;
}

void __22__PLDisplayAgent_init__block_invoke_2_1452(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) currMonoTimestamp];
  v3 = v2;
  [*v1 currAFKSystemTimestamp];
  v5 = v4;
  [*v1 currMonoTimestamp];
  if (v6 <= 0.0 || ([*v1 currAFKSystemTimestamp], v7 <= 0.0) || (v8 = v3 - v5, objc_msgSend(*v1, "currAFKSystemTimeOffset"), v8 == v9))
  {
    v11 = [*v1 dcpTimeoffsetCalibTimer];
    [v11 setTimerActive:0];

    v12 = PLLogDisplay();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_2_1452_cold_1();
    }
  }

  else
  {
    v10 = PLLogDisplay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __22__PLDisplayAgent_init__block_invoke_2_1452_cold_2(v1);
    }

    [*v1 setCurrAFKSystemTimeOffset:v8];
  }
}

void __22__PLDisplayAgent_init__block_invoke_1456(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536870608)
  {
    block[15] = v3;
    block[16] = v4;
    v6 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2 forKey:@"IODisplayParameters"];
    v7 = +[PLDisplayAgent shouldLogFromDCP];
    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [*(a1 + 32) pendingBacklightEntry];

      if (!v9)
      {
LABEL_26:

        return;
      }

      v10 = [v6 objectForKey:@"brightness"];
      v11 = [v10 objectForKey:@"value"];
      v12 = [v11 longValue];

      v13 = [v10 objectForKey:@"min"];
      v14 = [v13 longValue];

      v15 = [v10 objectForKey:@"max"];
      v16 = [v15 longValue];

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:(v12 - v14) * 100.0 / (v16 - v14)];
      v18 = [*(a1 + 32) pendingBacklightEntry];
      [v18 setObject:v17 forKeyedSubscript:@"Brightness"];

      v19 = [MEMORY[0x277CCABB0] numberWithLong:v12];
      v20 = [*(a1 + 32) pendingBacklightEntry];
      [v20 setObject:v19 forKeyedSubscript:@"SliderValue"];
    }

    else
    {
      v21 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
      [v8 setPendingBacklightEntry:v21];

      v22 = [*(a1 + 32) pendingBacklightEntryDate];

      if (!v22)
      {
        v23 = [MEMORY[0x277CBEAA8] monotonicDate];
        [*(a1 + 32) setPendingBacklightEntryDate:v23];
      }

      if ([*(a1 + 32) isDebugEnabled])
      {
        v24 = [[PLEventForwardDisplayEntry alloc] initEntryWithRawData:v6];
        v25 = [PLEventForwardDisplayEntry alloc];
        v26 = [*(a1 + 32) pendingBacklightEntry];
        v27 = [(PLEventForwardDisplayEntry *)v25 initEntryWithRawData:v26];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v28 = *(a1 + 32);
          v29 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __22__PLDisplayAgent_init__block_invoke_2_1468;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v29;
          if (kPRearNits_block_invoke_2_defaultOnce != -1)
          {
            dispatch_once(&kPRearNits_block_invoke_2_defaultOnce, block);
          }

          if (kPRearNits_block_invoke_2_classDebugEnabled == 1)
          {
            v30 = MEMORY[0x277CCACA8];
            v31 = [v24 objectForKeyedSubscript:@"Brightness"];
            v32 = [v27 objectForKeyedSubscript:@"Brightness"];
            v33 = MEMORY[0x277D3F268];
            v34 = [*(a1 + 32) pendingBacklightEntryDate];
            v35 = [v33 formattedStringForDate:v34];
            v36 = [v30 stringWithFormat:@"rawData.brightness=%@ self.pendingBacklightEntry.brightness=%@ self.pendingBacklightEntryDate=%@", v31, v32, v35];

            v37 = MEMORY[0x277D3F178];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
            v39 = [v38 lastPathComponent];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke"];
            [v37 logMessage:v36 fromFile:v39 fromFunction:v40 fromLineNumber:1581];

            v41 = PLLogCommon();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }
      }

      v42 = [*(a1 + 32) backlightFilterTimer];
      v43 = [v42 timerActive];

      if (v43)
      {
        goto LABEL_26;
      }

      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v44 = *(a1 + 32);
        v45 = objc_opt_class();
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __22__PLDisplayAgent_init__block_invoke_1474;
        v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v55[4] = v45;
        if (kPRearNits_block_invoke_2_defaultOnce_1472 != -1)
        {
          dispatch_once(&kPRearNits_block_invoke_2_defaultOnce_1472, v55);
        }

        if (kPRearNits_block_invoke_2_classDebugEnabled_1473 == 1)
        {
          v46 = MEMORY[0x277CCACA8];
          v47 = [MEMORY[0x277D3F268] formattedStringForDate:v10];
          v48 = [v46 stringWithFormat:@"Start backlight entry filter timer fireDate=%@", v47];

          v49 = MEMORY[0x277D3F178];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v51 = [v50 lastPathComponent];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke_2"];
          [v49 logMessage:v48 fromFile:v51 fromFunction:v52 fromLineNumber:1586];

          v53 = PLLogCommon();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v54 = [*(a1 + 32) backlightFilterTimer];
      [v54 setFireDate:v10];
    }

    goto LABEL_26;
  }
}

uint64_t __22__PLDisplayAgent_init__block_invoke_2_1468(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_2_classDebugEnabled = result;
  return result;
}

uint64_t __22__PLDisplayAgent_init__block_invoke_1474(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_2_classDebugEnabled_1473 = result;
  return result;
}

void __22__PLDisplayAgent_init__block_invoke_1482(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getBacklightEnabledTimestamp:{objc_msgSend(*(*(a1 + 32) + 88), "service")}];
  v3 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BacklightControl"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2];
  [v4 setObject:v5 forKeyedSubscript:@"backlightEnabledTimestamp"];

  v6 = *(a1 + 32);
  v9[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v6 postEntries:v7];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __22__PLDisplayAgent_init__block_invoke_2_1485(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result;
  switch(a3)
  {
    case -536788734:
      v7 = a4 != 0;
      [*(result + 32) logEventPointDisplayForBlock:@"MIE" isActive:v7];
      v8 = *(v4 + 32);

      return [v8 setIsMIEActive:v7];
    case -536788735:
      v6 = *(result + 32);

      return [v6 logEventPointDisplayForBlock:@"Backlight" isActive:0];
    case -536788736:
      [*(result + 32) logEventPointDisplayForBlock:@"Backlight" isActive:1];
      v5 = *(v4 + 32);

      return [v5 logEventBackwardTouch];
  }

  return result;
}

- (void)initTaskOperatorDependancies
{
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    if ([MEMORY[0x277D3F208] hasDCP])
    {
      if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
      {
        v3 = [MEMORY[0x277D3F180] BOOLForKey:@"AZLFullMode" ifNotSet:0];
        if (![MEMORY[0x277D3F180] fullMode] || v3)
        {
          v4 = *MEMORY[0x277D3F5D0];
          v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AZLSnapshots"];
          if (![MEMORY[0x277D3F180] taskMode] || (v6 = MEMORY[0x277D3F1A0], -[PLOperator className](self, "className"), v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "isEntryKeySetup:forOperatorName:", v5, v7), v7, v6))
          {
            v8 = [(PLOperator *)PLDisplayAgent entryKeyForType:v4 andName:@"AZLSnapshots"];
            storage = [(PLOperator *)self storage];
            -[PLDisplayAgent setAZLSnapshotsEntries:](self, "setAZLSnapshotsEntries:", [storage countOfEntriesForKey:v8]);

            v10 = objc_alloc(MEMORY[0x277D3F250]);
            date = [MEMORY[0x277CBEAA8] date];
            workQueue = [(PLOperator *)self workQueue];
            v14[0] = MEMORY[0x277D85DD0];
            v14[1] = 3221225472;
            v14[2] = __46__PLDisplayAgent_initTaskOperatorDependancies__block_invoke;
            v14[3] = &unk_279A5D088;
            v14[4] = self;
            v13 = [v10 initWithFireDate:date withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v14 withQueue:300.0 withBlock:0.0];
            [(PLDisplayAgent *)self setAZLSnapshotsTimer:v13];
          }
        }
      }
    }
  }
}

uint64_t __46__PLDisplayAgent_initTaskOperatorDependancies__block_invoke(uint64_t a1)
{
  if (![MEMORY[0x277D3F180] fullMode] || (result = objc_msgSend(MEMORY[0x277D3F180], "BOOLForKey:", @"AZLFullMode"), result))
  {
    if ([MEMORY[0x277D3F180] taskMode] && objc_msgSend(*(a1 + 32), "AZLSnapshotsEntries") >= 21600)
    {
      v3 = PLLogDisplay();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __46__PLDisplayAgent_initTaskOperatorDependancies__block_invoke_cold_1();
      }

      return [*(*(a1 + 32) + 184) invalidate];
    }

    else
    {
      v4 = *(a1 + 32);
      v5 = v4[65];

      return [v4 __FrameBufferEventCallback:v5];
    }
  }

  return result;
}

- (void)initOperatorDependancies
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 logDisplayAPL];
  [*(a1 + 32) updateLastForegroundAppAPL:v4];
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __42__PLDisplayAgent_initOperatorDependancies__block_invoke_4_cold_1();
  }

  [*(a1 + 32) logAODChange];
}

uint64_t __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1522(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled_1 = result;
  return result;
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1532(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1533;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (kPRearNits_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&kPRearNits_block_invoke_3_defaultOnce, block);
    }

    if (kPRearNits_block_invoke_3_classDebugEnabled == 1)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [v5 UTF8String];
      v11 = [v6 description];
      v12 = [v9 stringWithFormat:@"Keyboard brightness: %s=%s\n", v10, objc_msgSend(v11, "UTF8String")];

      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent initOperatorDependancies]_block_invoke"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:1949];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [v6 doubleValue];
  [*(a1 + 32) setPendingKeyboardBrightnessValue:?];
  v18 = [*(a1 + 32) pendingKeyboardBrightnessDate];

  if (!v18)
  {
    v19 = [MEMORY[0x277CBEAA8] monotonicDate];
    [*(a1 + 32) setPendingKeyboardBrightnessDate:v19];
  }

  v20 = [*(a1 + 32) keyboardBrightnessFilterTimer];
  v21 = [v20 timerActive];

  if ((v21 & 1) == 0)
  {
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1539;
      v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v34[4] = v24;
      if (kPRearNits_block_invoke_3_defaultOnce_1537 != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_3_defaultOnce_1537, v34);
      }

      if (kPRearNits_block_invoke_3_classDebugEnabled_1538 == 1)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = [MEMORY[0x277D3F268] formattedStringForDate:v22];
        v27 = [v25 stringWithFormat:@"Start keyboard brightness filter timer fireDate=%@", v26];

        v28 = MEMORY[0x277D3F178];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v30 = [v29 lastPathComponent];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent initOperatorDependancies]_block_invoke_2"];
        [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:1958];

        v32 = PLLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v33 = [*(a1 + 32) keyboardBrightnessFilterTimer];
    [v33 setFireDate:v22];
  }
}

uint64_t __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1533(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_3_classDebugEnabled = result;
  return result;
}

uint64_t __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1539(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_3_classDebugEnabled_1538 = result;
  return result;
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1545(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingKeyboardBrightnessDate];

  v3 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 32) pendingKeyboardBrightnessValue];
    v5 = v4;
    v6 = [*(a1 + 32) pendingKeyboardBrightnessDate];
    [v3 logEventPointKeyboardBrightness:v6 withDate:v5];

    v7 = *(a1 + 32);

    [v7 setPendingKeyboardBrightnessDate:0];
  }

  else
  {
    v8 = [*(a1 + 32) keyboardBrightnessFilterTimer];
    [v8 setTimerActive:0];
  }
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1550(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCameraAgent_initOperatorDependancies__block_invoke_172_cold_1();
  }

  [*(a1 + 32) logDisplayAPL];
}

void __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, size_t a6)
{
  v9 = PLLogDisplay();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_1();
  }

  if (a5 && a6)
  {
    errorString = 0;
    v10 = IOCFUnserializeWithSize(a5, a6, *MEMORY[0x277CBECE8], 0, &errorString);
    v11 = errorString;
    v12 = errorString;
    v13 = v12;
    if (v11)
    {
    }

    else if (v10)
    {
      v14 = CFGetTypeID(v10);
      TypeID = CFDictionaryGetTypeID();
      v16 = PLLogDisplay();
      v17 = v16;
      if (v14 == TypeID)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_4();
        }

        v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
        [*(a1 + 32) fillInBuiltinDisplayBrightnessParameters:v18];
        v19 = PLLogDisplay();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_5();
        }

        [*(a1 + 32) handleAFKInterfaceMsg:v18];
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_3();
        }

        v10 = v17;
      }

      goto LABEL_9;
    }

    v10 = PLLogDisplay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_6();
    }

LABEL_9:

    goto LABEL_12;
  }

  v13 = PLLogDisplay();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_2();
  }

LABEL_12:
}

- (void)fillInBuiltinDisplayBrightnessParameters:(id)parameters
{
  v47 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v7 = v6;

  [(PLDisplayAgent *)self lastBuiltinDisplayTime];
  v9 = v8;
  [(PLDisplayAgent *)self lastBuiltinDisplayTime];
  if (v10 > 0.0)
  {
    v10 = v7 - v9;
    if (v7 - v9 > 0.0 && v10 < 0.6)
    {
      v11 = MEMORY[0x277CCABB0];
      [(PLDisplayAgent *)self lastBuiltinDisplayLux];
      v12 = [v11 numberWithDouble:?];
      [parametersCopy setObject:v12 forKeyedSubscript:@"lux"];

      [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
      if (v13 >= 0.0)
      {
        v14 = MEMORY[0x277CCABB0];
        [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
        v15 = [v14 numberWithDouble:?];
        [parametersCopy setObject:v15 forKeyedSubscript:@"Brightness"];
      }

      [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
      if (v16 >= 0.0)
      {
        v17 = MEMORY[0x277CCABB0];
        [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
        v18 = [v17 numberWithDouble:?];
        [parametersCopy setObject:v18 forKeyedSubscript:@"SliderValue"];
      }

      goto LABEL_23;
    }
  }

  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];
  v20 = [brightnessSystemClient copyPropertyForKey:@"TrustedLux"];
  [v20 doubleValue];
  [(PLDisplayAgent *)self setLastBuiltinDisplayLux:?];

  brightnessSystemClient2 = [(PLDisplayAgent *)self brightnessSystemClient];
  v22 = [brightnessSystemClient2 copyPropertyForKey:@"DisplayBrightnessMin"];
  [v22 doubleValue];
  v24 = v23;

  brightnessSystemClient3 = [(PLDisplayAgent *)self brightnessSystemClient];
  v26 = [brightnessSystemClient3 copyPropertyForKey:@"DisplayBrightnessMax"];
  [v26 doubleValue];
  v28 = v27;

  brightnessSystemClient4 = [(PLDisplayAgent *)self brightnessSystemClient];
  v30 = [brightnessSystemClient4 copyPropertyForKey:@"DisplayBrightness"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v30 doubleValue];
    v32 = v31;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_15:
      [(PLDisplayAgent *)self setLastBuiltinDisplayBrightness:-1.0];
      [(PLDisplayAgent *)self setLastBuiltinDisplaySliderValue:-1.0];
      v35 = PLLogDisplay();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v45 = 138412290;
        v46 = v30;
        _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEFAULT, "Not logging brightness value: %@", &v45, 0xCu);
      }

      goto LABEL_18;
    }

    v33 = [v30 objectForKeyedSubscript:@"Brightness"];
    [v33 doubleValue];
    v32 = v34;
  }

  if (v32 < 0.0 || v28 - v24 <= 0.0)
  {
    goto LABEL_15;
  }

  [(PLDisplayAgent *)self setLastBuiltinDisplayBrightness:(v32 - v24) * 100.0 / (v28 - v24)];
  [(PLDisplayAgent *)self setLastBuiltinDisplaySliderValue:v32];
LABEL_18:
  [(PLDisplayAgent *)self setLastBuiltinDisplayTime:v7];
  v36 = MEMORY[0x277CCABB0];
  [(PLDisplayAgent *)self lastBuiltinDisplayLux];
  v37 = [v36 numberWithDouble:?];
  [parametersCopy setObject:v37 forKeyedSubscript:@"lux"];

  [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
  if (v38 >= 0.0)
  {
    v39 = MEMORY[0x277CCABB0];
    [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
    v40 = [v39 numberWithDouble:?];
    [parametersCopy setObject:v40 forKeyedSubscript:@"Brightness"];
  }

  [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
  if (v41 >= 0.0)
  {
    v42 = MEMORY[0x277CCABB0];
    [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
    v43 = [v42 numberWithDouble:?];
    [parametersCopy setObject:v43 forKeyedSubscript:@"SliderValue"];
  }

LABEL_23:
  v44 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpAFKInterfaces
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  afkEndpoints = [(PLDisplayAgent *)self afkEndpoints];
  v5 = [afkEndpoints countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(afkEndpoints);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 valid] & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [afkEndpoints countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  afkEndpoints2 = [(PLDisplayAgent *)self afkEndpoints];
  [afkEndpoints2 removeObjectsInArray:array];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleAFKInterfaceMsg:(id)msg
{
  msgCopy = msg;
  v5 = [msgCopy objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  [(PLDisplayAgent *)self currAFKSystemTimeOffset];
  if (v8 == 0.0)
  {
    [MEMORY[0x277CBEAA8] monotonicDate];
  }

  else
  {
    v9 = MEMORY[0x277CBEAA8];
    [(PLDisplayAgent *)self currAFKSystemTimeOffset];
    [v9 dateWithTimeIntervalSince1970:v7 / 1000000.0 + v10];
  }
  v11 = ;
  pendingBacklightEntry = [(PLDisplayAgent *)self pendingBacklightEntry];
  if (pendingBacklightEntry)
  {
    pendingBacklightEntry2 = pendingBacklightEntry;
    pendingBacklightEntryDate = [(PLDisplayAgent *)self pendingBacklightEntryDate];
    if (pendingBacklightEntryDate)
    {
      v15 = pendingBacklightEntryDate;
      pendingBacklightEntryDate2 = [(PLDisplayAgent *)self pendingBacklightEntryDate];
      [v11 timeIntervalSinceDate:pendingBacklightEntryDate2];
      v18 = v17;

      if (v18 < 1.0)
      {
        goto LABEL_9;
      }

      pendingBacklightEntry2 = [(PLDisplayAgent *)self pendingBacklightEntry];
      pendingBacklightEntryDate3 = [(PLDisplayAgent *)self pendingBacklightEntryDate];
      [(PLDisplayAgent *)self logEventForwardDisplayWithRawData:pendingBacklightEntry2 withDate:pendingBacklightEntryDate3];
    }
  }

LABEL_9:
  [(PLDisplayAgent *)self setPendingBacklightEntry:msgCopy];
  [(PLDisplayAgent *)self setPendingBacklightEntryDate:v11];
  backlightFilterTimer = [(PLDisplayAgent *)self backlightFilterTimer];
  timerActive = [backlightFilterTimer timerActive];

  if ((timerActive & 1) == 0)
  {
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
    backlightFilterTimer2 = [(PLDisplayAgent *)self backlightFilterTimer];
    [backlightFilterTimer2 setFireDate:v22];
  }

  dcpTimeoffsetCalibTimer = [(PLDisplayAgent *)self dcpTimeoffsetCalibTimer];
  timerActive2 = [dcpTimeoffsetCalibTimer timerActive];

  if ((timerActive2 & 1) == 0)
  {
    v31 = 0;
    v32 = 0;
    [PLUtilities getCurrentMonotonicAndMachAbsTime:&v31 machAbsTime:0 machContTime:&v32];
    v26 = v31;
    [(PLDisplayAgent *)self setCurrAFKSystemTimestamp:v32 / 1000000000.0];
    [v26 timeIntervalSince1970];
    v28 = v27;

    [(PLDisplayAgent *)self setCurrMonoTimestamp:v28];
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
    dcpTimeoffsetCalibTimer2 = [(PLDisplayAgent *)self dcpTimeoffsetCalibTimer];
    [dcpTimeoffsetCalibTimer2 setFireDate:v29];
  }
}

- (void)logEventPointMultitouchWithPayload:(id)payload
{
  v41 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v31 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Multitouch"];
  v30 = objc_opt_new();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = payloadCopy;
  obj = [payloadCopy objectForKeyedSubscript:@"events"];
  v32 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v32)
  {
    v28 = *v35;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v34 + 1) + 8 * v4);
        v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v31 withDate:monotonicDate];
        v7 = [v5 objectForKeyedSubscript:@"fingerNum"];
        [v6 setObject:v7 forKeyedSubscript:@"fingerNum"];

        v8 = [v5 objectForKeyedSubscript:@"touchStartTime"];
        [v6 setObject:v8 forKeyedSubscript:@"touchStartTime"];

        v9 = [v5 objectForKeyedSubscript:@"touchStopTime"];
        [v6 setObject:v9 forKeyedSubscript:@"touchStopTime"];

        if ([MEMORY[0x277D3F208] hasOrb])
        {
          v10 = [v5 objectForKeyedSubscript:@"peakForce"];
          [v6 setObject:v10 forKeyedSubscript:@"peak"];

          v11 = @"peakForceMillimetersFromEdge";
          v12 = @"peakMillimetersFromEdge";
          v13 = @"peakForceProximity";
          v14 = @"peakProximity";
          v15 = @"peakForceMajorRadius";
          v16 = @"peakMajorRadius";
          v17 = @"peakForceMinorRadius";
          v18 = @"peakMinorRadius";
        }

        else
        {
          v12 = @"peakProximity";
          v11 = @"peakProximity";
          v14 = @"peakProximityMillimetersFromEdge";
          v13 = @"peakProximityMillimetersFromEdge";
          v16 = @"peakProximityMajorRadius";
          v15 = @"peakProximityMajorRadius";
          v18 = @"peakProximityMinorRadius";
          v17 = @"peakProximityMinorRadius";
        }

        v33 = v18;
        v19 = [v5 objectForKeyedSubscript:v11];
        [v6 setObject:v19 forKeyedSubscript:v12];

        v20 = [v5 objectForKeyedSubscript:v13];
        [v6 setObject:v20 forKeyedSubscript:v14];

        v21 = [v5 objectForKeyedSubscript:v15];
        [v6 setObject:v21 forKeyedSubscript:v16];

        v22 = [v5 objectForKeyedSubscript:v17];
        [v6 setObject:v22 forKeyedSubscript:v33];

        [v30 addObject:v6];
        ++v4;
      }

      while (v32 != v4);
      v32 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v32);
  }

  v38 = v31;
  v39 = v30;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [(PLOperator *)self logEntries:v23 withGroupID:v31];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (+[PLDisplayAgent shouldLogFromDCP]&& [(PLDisplayAgent *)self frameBuffer])
  {
    [(PLDisplayAgent *)self frameBuffer];
    IOMobileFramebufferDisablePowerNotifications();
    CFRelease([(PLDisplayAgent *)self frameBuffer]);
  }

  if (self->_ambientLightSensorHIDClientRef)
  {
    IOHIDEventSystemClientUnregisterEventCallback();
    if (self->_alsPluginKeyRegistered)
    {
      ambientLightSensorHIDClientRef = self->_ambientLightSensorHIDClientRef;
      IOHIDEventSystemClientUnregisterDeviceMatchingCallback();
    }
  }

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
    [mEMORY[0x277CF0880] removeObserver:self];
  }

  v5.receiver = self;
  v5.super_class = PLDisplayAgent;
  [(PLAgent *)&v5 dealloc];
}

- (BOOL)isAlsEnabled
{
  bOOLValue = 1;
  v3 = [MEMORY[0x277D3F180] objectForKey:@"BKEnableALS" forApplicationID:@"com.apple.backboardd" synchronize:1];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  return bOOLValue;
}

- (void)log
{
  [(PLDisplayAgent *)self logEventForwardDisplay];
  [(PLDisplayAgent *)self logEventPointDisplay];
  [(PLDisplayAgent *)self logEventForwardALSEnabled];
  [(PLDisplayAgent *)self logEventForwardALSUserPreferences];

  [(PLDisplayAgent *)self logEventForwardColorAdaptationMode];
}

- (void)logEventNonePanelStats
{
  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];

  if (brightnessSystemClient && ([MEMORY[0x277D3F208] isMac] & 1) == 0)
  {
    brightnessSystemClient2 = [(PLDisplayAgent *)self brightnessSystemClient];
    v7 = [brightnessSystemClient2 copyPropertyForKey:@"BrightnessGlobalScalar"];

    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PanelStats"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v7];
      [(PLOperator *)self logEntry:v6];
    }
  }
}

- (void)logDisplayEntry:(id)entry
{
  entryCopy = entry;
  dictionary = [entryCopy dictionary];
  entryDate = [entryCopy entryDate];

  [(PLOperator *)self logForSubsystem:@"DisplayMetrics" category:@"DisplayState" data:dictionary date:entryDate];
}

- (void)logEventPointDisplay
{
  [(PLDisplayAgent *)self logEventPointDisplayBacklight];

  [(PLDisplayAgent *)self logEventPointDisplayMIE];
}

- (void)logEventPointDisplayBacklight
{
  if (!+[PLDisplayAgent shouldLogFromDCP]&& self->_iokitBacklight)
  {
    iokitBacklight = [(PLDisplayAgent *)self iokitBacklight];
    v5 = [iokitBacklight propertiesForKey:@"IOPowerManagement"];

    v4 = [v5 objectForKeyedSubscript:@"CurrentPowerState"];
    -[PLDisplayAgent logEventPointDisplayForBlock:isActive:](self, "logEventPointDisplayForBlock:isActive:", @"Backlight", [v4 BOOLValue]);
  }
}

- (void)logEventPointDisplayMIE
{
  if (!+[PLDisplayAgent shouldLogFromDCP]&& self->_iokitDisplay)
  {
    iokitDisplay = [(PLDisplayAgent *)self iokitDisplay];
    v7 = [iokitDisplay propertiesForKey:@"IOMFB Debug Info"];

    v4 = [v7 objectForKeyedSubscript:@"MIE"];

    if (v4)
    {
      v5 = [v7 objectForKeyedSubscript:@"MIE"];
      v6 = [v5 objectForKeyedSubscript:@"enabled"];
      -[PLDisplayAgent logEventPointDisplayForBlock:isActive:](self, "logEventPointDisplayForBlock:isActive:", @"MIE", [v6 BOOLValue]);
    }
  }
}

- (void)logEventPointDisplayBacklightWithState:(unint64_t)state
{
  v5 = PLLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLDisplayAgent logEventPointDisplayBacklightWithState:];
  }

  [(PLDisplayAgent *)self logEventPointDisplayForBlock:@"Backlight" isActive:state != 0];
}

uint64_t __56__PLDisplayAgent_logEventPointDisplayForBlock_isActive___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointDisplayForBlock_isActive__classDebugEnabled = result;
  return result;
}

- (void)initAODState:(int64_t)state
{
  v5 = PLLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLDisplayAgent initAODState:];
  }

  if (state <= 3)
  {
    [(PLDisplayAgent *)self logAODState:dword_25F023EE0[state]];
  }
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  if (_os_feature_enabled_impl())
  {
    if ([MEMORY[0x277D3F208] hasAOD])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke;
      v7[3] = &unk_279A5C600;
      v7[4] = self;
      v7[5] = state;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke(uint64_t a1)
{
  v2 = PLLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = *(a1 + 40);
  if (v9 > 1)
  {
    if (v9 == 2 || v9 == 3)
    {
      v10 = *(a1 + 32);
      v11 = 1;
LABEL_10:
      [v10 logAODState:v11];
    }
  }

  else
  {
    if (v9)
    {
      if (v9 != 1)
      {
        return;
      }

      v10 = *(a1 + 32);
      v11 = 2;
      goto LABEL_10;
    }

    [*(a1 + 32) logAODState:0];
    if (_os_feature_enabled_impl())
    {
      [*(a1 + 32) clearDisplayAccountingEvents];
    }
  }
}

- (void)clearDisplayAccountingEvents
{
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:monotonicDate];

  mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:monotonicDate];
}

- (void)logEventPointUserBrightnessCommitted:(double)committed
{
  if (+[PLDisplayAgent shouldLogUserBrightness])
  {
    v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UserBrightness"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:committed];
    [v5 setObject:v6 forKeyedSubscript:@"UserBrightness"];

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventPointKeyboardBrightness:(double)brightness withDate:(id)date
{
  dateCopy = date;
  if (+[PLDisplayAgent shouldLogKeyboardBrightness])
  {
    v6 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"KeyboardBrightness"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(brightness * 100.0)];
    [v7 setObject:v8 forKeyedSubscript:@"KeyboardBrightness"];

    if (dateCopy)
    {
      [v7 setEntryDate:dateCopy];
    }

    [(PLOperator *)self logEntry:v7];
  }
}

- (void)logEventForwardALSLux:(unint64_t)lux
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLDisplayAgent_logEventForwardALSLux___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (logEventForwardALSLux__defaultOnce != -1)
    {
      dispatch_once(&logEventForwardALSLux__defaultOnce, block);
    }

    if (logEventForwardALSLux__classDebugEnabled == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      v8 = [v6 stringWithFormat:@"Got event ALSLux:%llu at %@\n", lux, monotonicDate];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventForwardALSLux:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:2703];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [(PLDisplayAgent *)self setPendingALSLux:lux];
  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLDisplayAgent *)self setPendingALSLuxEntryDate:monotonicDate2];

  alsLuxFilterTimer = [(PLDisplayAgent *)self alsLuxFilterTimer];
  if (alsLuxFilterTimer)
  {
    v16 = alsLuxFilterTimer;
    alsLuxFilterTimer2 = [(PLDisplayAgent *)self alsLuxFilterTimer];
    timerActive = [alsLuxFilterTimer2 timerActive];

    if ((timerActive & 1) == 0)
    {
      v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __40__PLDisplayAgent_logEventForwardALSLux___block_invoke_1609;
        v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v30[4] = v20;
        if (logEventForwardALSLux__defaultOnce_1607 != -1)
        {
          dispatch_once(&logEventForwardALSLux__defaultOnce_1607, v30);
        }

        if (logEventForwardALSLux__classDebugEnabled_1608 == 1)
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = [MEMORY[0x277D3F268] formattedStringForDate:v19];
          v23 = [v21 stringWithFormat:@"Start ALSLux entry filter timer fireDate=%@", v22];

          v24 = MEMORY[0x277D3F178];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          lastPathComponent2 = [v25 lastPathComponent];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventForwardALSLux:]"];
          [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:2724];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      alsLuxFilterTimer3 = [(PLDisplayAgent *)self alsLuxFilterTimer];
      [alsLuxFilterTimer3 setFireDate:v19];
    }
  }
}

uint64_t __40__PLDisplayAgent_logEventForwardALSLux___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardALSLux__classDebugEnabled = result;
  return result;
}

uint64_t __40__PLDisplayAgent_logEventForwardALSLux___block_invoke_1609(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardALSLux__classDebugEnabled_1608 = result;
  return result;
}

- (unint64_t)getBacklightEnabledTimestamp:(unsigned int)timestamp
{
  v3 = IORegistryEntrySearchCFProperty(timestamp, "IOService", @"displayOnTimestamp", *MEMORY[0x277CBECE8], 1u);
  if (v3)
  {
    v4 = v3;
    valuePtr = 0;
    CFNumberGetValue(v3, kCFNumberSInt64Type, &valuePtr);
    CFRelease(v4);
    return valuePtr;
  }

  else
  {

    return mach_absolute_time();
  }
}

- (void)logEventForwardDisplay
{
  if (!+[PLDisplayAgent shouldLogFromDCP]&& self->_iokitBacklight)
  {
    iokitBacklight = [(PLDisplayAgent *)self iokitBacklight];
    v5 = [iokitBacklight propertiesForKey:@"IODisplayParameters"];

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLDisplayAgent *)self logEventForwardDisplayWithRawData:v5 withDate:monotonicDate];
  }
}

- (void)logEventForwardDisplayBacklight
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    iokitBacklight = [(PLDisplayAgent *)self iokitBacklight];

    if (iokitBacklight)
    {
      iokitBacklight2 = [(PLDisplayAgent *)self iokitBacklight];
      v5 = [iokitBacklight2 propertiesForKey:@"IODisplayParameters"];

      v6 = [v5 objectForKeyedSubscript:@"brightness"];
      v7 = [v6 objectForKeyedSubscript:@"value"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [v5 objectForKeyedSubscript:@"BrightnessMicroAmps"];
      v11 = [v10 objectForKeyedSubscript:@"value"];
      [v11 doubleValue];
      v13 = v12;

      if (v9 <= 0.0)
      {
        iokitBacklight = &unk_287146D20;
      }

      else
      {
        v14 = MEMORY[0x277CCABB0];
        [(PLDisplayAgent *)self uAmpsToDisplayPower:v13];
        iokitBacklight = [v14 numberWithDouble:?];
      }
    }

    v15 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DisplayBacklight"];
    v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
    v17 = v16;
    if (iokitBacklight)
    {
      [v16 setObject:iokitBacklight forKeyedSubscript:@"DisplayPower"];
    }

    v20[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(PLOperator *)self postEntries:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardDisplayWithRawData:(id)data withDate:(id)date
{
  dataCopy = data;
  dateCopy = date;
  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];

  if (brightnessSystemClient)
  {
    v9 = [[PLEventForwardDisplayEntry alloc] initEntryWithRawData:dataCopy];
    [v9 setEntryDate:dateCopy];
    v10 = [dataCopy objectForKeyedSubscript:@"lux"];
    if (!v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"Brightness"];
      [v11 doubleValue];
      v13 = v12;

      if (v13 <= 0.0)
      {
        v10 = &unk_287146D20;
      }

      else
      {
        brightnessSystemClient2 = [(PLDisplayAgent *)self brightnessSystemClient];
        v10 = [brightnessSystemClient2 copyPropertyForKey:@"TrustedLux"];
      }

      [v9 setObject:v10 forKeyedSubscript:@"lux"];
      v15 = PLLogDisplay();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLDisplayAgent logEventForwardDisplayWithRawData:v9 withDate:?];
      }
    }

    [v10 doubleValue];
    self->_displayLux = v16;
    v17 = [v9 objectForKeyedSubscript:@"mNits"];

    if (v17)
    {
      v18 = [v9 objectForKeyedSubscript:@"mNits"];
      [v18 doubleValue];
      [(PLDisplayAgent *)self setDisplaymNits:?];
    }

    v19 = [v9 objectForKeyedSubscript:@"Brightness"];

    if (v19)
    {
      v20 = [v9 objectForKeyedSubscript:@"Brightness"];
      [v20 doubleValue];
      v22 = v21;

      [(PLDisplayAgent *)self setIsDisplayOnNow:v22 > 0.0];
    }

    hDRHeadroom = [(PLDisplayAgent *)self HDRHeadroom];

    if (hDRHeadroom)
    {
      hDRHeadroom2 = [(PLDisplayAgent *)self HDRHeadroom];
      [v9 setObject:hDRHeadroom2 forKeyedSubscript:@"EDRHeadroom"];

      [(PLDisplayAgent *)self setHDRHeadroom:0];
    }

    if ([(PLDisplayAgent *)self isMIEActive])
    {
      uAmpsFilterTimer = [(PLDisplayAgent *)self uAmpsFilterTimer];

      if (!uAmpsFilterTimer)
      {
        objc_initWeak(&location, self);
        v26 = objc_alloc(MEMORY[0x277D3F250]);
        v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
        workQueue = [(PLOperator *)self workQueue];
        v32 = MEMORY[0x277D85DD0];
        v33 = 3221225472;
        v34 = __61__PLDisplayAgent_logEventForwardDisplayWithRawData_withDate___block_invoke;
        v35 = &unk_279A5E8A0;
        objc_copyWeak(&v36, &location);
        v29 = [v26 initWithFireDate:v27 withInterval:0 withTolerance:0 repeats:workQueue withUserInfo:&v32 withQueue:0.0 withBlock:0.0];
        [(PLDisplayAgent *)self setUAmpsFilterTimer:v29, v32, v33, v34, v35];

        uAmpsFilterTimer2 = [(PLDisplayAgent *)self uAmpsFilterTimer];
        [uAmpsFilterTimer2 arm];

        objc_destroyWeak(&v36);
        objc_destroyWeak(&location);
      }

      [(PLDisplayAgent *)self setUAmpsEntry:v9];
    }

    else
    {
      v31 = PLLogDisplay();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [PLDisplayAgent logEventForwardDisplayWithRawData:withDate:];
      }

      [(PLOperator *)self logEntry:v9];
      [(PLDisplayAgent *)self modelDisplayPower:v9];
      [(PLDisplayAgent *)self qualifyDisplayPower:v9];
    }
  }
}

void __61__PLDisplayAgent_logEventForwardDisplayWithRawData_withDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reArmUAmpsCallback];
}

- (void)reArmUAmpsCallback
{
  uAmpsEntry = [(PLDisplayAgent *)self uAmpsEntry];
  [(PLOperator *)self logEntry:uAmpsEntry];

  uAmpsEntry2 = [(PLDisplayAgent *)self uAmpsEntry];
  [(PLDisplayAgent *)self modelDisplayPower:uAmpsEntry2];

  uAmpsEntry3 = [(PLDisplayAgent *)self uAmpsEntry];
  [(PLDisplayAgent *)self qualifyDisplayPower:uAmpsEntry3];

  uAmpsFilterTimer = [(PLDisplayAgent *)self uAmpsFilterTimer];
  [uAmpsFilterTimer invalidate];

  [(PLDisplayAgent *)self setUAmpsFilterTimer:0];

  [(PLDisplayAgent *)self setUAmpsEntry:0];
}

- (void)logEventForwardColorAdaptationMode
{
  colorAdaptationClient = [(PLDisplayAgent *)self colorAdaptationClient];
  if (colorAdaptationClient)
  {
    v4 = colorAdaptationClient;
    supportsAdaptation = [MEMORY[0x277CFD398] supportsAdaptation];

    if (supportsAdaptation)
    {
      v10 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CAModeEnabled"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
      colorAdaptationClient2 = [(PLDisplayAgent *)self colorAdaptationClient];
      getEnabled = [colorAdaptationClient2 getEnabled];

      v9 = [MEMORY[0x277CCABB0] numberWithBool:getEnabled];
      [v6 setObject:v9 forKeyedSubscript:@"CAModeEnabled"];

      [(PLOperator *)self logEntry:v6];
    }
  }
}

- (void)logEventForwardALSUserPreferencesEntryWithLux:(id)lux
{
  luxCopy = lux;
  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];

  if (brightnessSystemClient && ([MEMORY[0x277D3F208] isMac] & 1) == 0)
  {
    brightnessSystemClient2 = [(PLDisplayAgent *)self brightnessSystemClient];
    v6 = [brightnessSystemClient2 copyPropertyForKey:@"ALSUserPreference"];

    if (v6)
    {
      null = [MEMORY[0x277CBEB68] null];

      if (v6 != null)
      {
        v8 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSUserPreferences"];
        v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
        v10 = v9;
        if (luxCopy)
        {
          [v9 setObject:luxCopy forKeyedSubscript:@"Lux"];
        }

        v11 = [v6 objectForKey:@"Prefs"];
        v12 = [v11 objectForKey:@"thirdSlope"];
        [v10 setObject:v12 forKeyedSubscript:@"thirdSlope"];

        [(PLOperator *)self logEntry:v10];
      }
    }
  }
}

- (void)logEventForwardExtendedALSUserPreferences:(id)preferences
{
  v4 = *MEMORY[0x277D3F5D0];
  preferencesCopy = preferences;
  v80 = [(PLOperator *)PLDisplayAgent entryKeyForType:v4 andName:@"ALSUserPreferences"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v80 withRawData:preferencesCopy];
  v7 = [preferencesCopy objectForKeyedSubscript:@"timestamp"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  convertFromSystemToMonotonic = [v10 convertFromSystemToMonotonic];
  [v6 setEntryDate:convertFromSystemToMonotonic];

  v12 = [preferencesCopy objectForKeyedSubscript:@"e0a"];
  [v6 setObject:v12 forKeyedSubscript:@"E0a"];

  v13 = [preferencesCopy objectForKeyedSubscript:@"e0b"];
  [v6 setObject:v13 forKeyedSubscript:@"E0b"];

  v14 = [preferencesCopy objectForKeyedSubscript:@"e0b"];
  [v6 setObject:v14 forKeyedSubscript:@"E0b"];

  v15 = [preferencesCopy objectForKeyedSubscript:@"e1"];
  [v6 setObject:v15 forKeyedSubscript:@"E1"];

  v16 = [preferencesCopy objectForKeyedSubscript:@"e2"];
  [v6 setObject:v16 forKeyedSubscript:@"E2"];

  v17 = [preferencesCopy objectForKeyedSubscript:@"l0a"];
  [v6 setObject:v17 forKeyedSubscript:@"L0a"];

  v18 = [preferencesCopy objectForKeyedSubscript:@"l0b"];
  [v6 setObject:v18 forKeyedSubscript:@"L0b"];

  v19 = [preferencesCopy objectForKeyedSubscript:@"l1"];
  [v6 setObject:v19 forKeyedSubscript:@"L1"];

  v20 = [preferencesCopy objectForKeyedSubscript:@"l2"];
  [v6 setObject:v20 forKeyedSubscript:@"L2"];

  v21 = [preferencesCopy objectForKeyedSubscript:@"slider"];
  [v6 setObject:v21 forKeyedSubscript:@"S"];

  v22 = MEMORY[0x277CCABB0];
  v23 = [preferencesCopy objectForKeyedSubscript:@"frontLux"];
  [v23 floatValue];
  v25 = [v22 numberWithDouble:roundf(v24)];
  [v6 setObject:v25 forKeyedSubscript:@"Lux"];

  v26 = MEMORY[0x277CCABB0];
  v27 = [preferencesCopy objectForKeyedSubscript:@"rearLux"];
  [v27 floatValue];
  v29 = [v26 numberWithDouble:roundf(v28)];
  [v6 setObject:v29 forKeyedSubscript:@"rearLux"];

  v30 = MEMORY[0x277CCABB0];
  v31 = [preferencesCopy objectForKeyedSubscript:@"trustedLux"];
  [v31 floatValue];
  v33 = [v30 numberWithDouble:roundf(v32)];
  [v6 setObject:v33 forKeyedSubscript:@"trustedLux"];

  v34 = MEMORY[0x277CCABB0];
  v35 = [preferencesCopy objectForKeyedSubscript:@"delayedAPCE"];
  [v35 floatValue];
  v37 = [v34 numberWithDouble:roundf(v36 * 100.0)];
  [v6 setObject:v37 forKeyedSubscript:@"delayedAPCE"];

  v38 = MEMORY[0x277CCABB0];
  v39 = [preferencesCopy objectForKeyedSubscript:@"ecoModeFactor"];
  [v39 floatValue];
  v41 = [v38 numberWithDouble:roundf(v40 * 100.0)];
  [v6 setObject:v41 forKeyedSubscript:@"ecoModeFactor"];

  v42 = [preferencesCopy objectForKeyedSubscript:@"aabParamsUpdateReason"];
  [v6 setObject:v42 forKeyedSubscript:@"aabParamsUpdateReason"];

  v43 = MEMORY[0x277CCABB0];
  v44 = [preferencesCopy objectForKeyedSubscript:@"inactiveLength"];
  [v44 floatValue];
  v46 = [v43 numberWithDouble:roundf(v45 * 100.0)];
  [v6 setObject:v46 forKeyedSubscript:@"inactiveLength"];

  v47 = [preferencesCopy objectForKeyedSubscript:@"inactiveStart"];
  [v6 setObject:v47 forKeyedSubscript:@"inactiveStart"];

  v48 = [preferencesCopy objectForKeyedSubscript:@"alternativeE0a"];
  [v6 setObject:v48 forKeyedSubscript:@"alternativeE0a"];

  v49 = [preferencesCopy objectForKeyedSubscript:@"alternativeE0b"];
  [v6 setObject:v49 forKeyedSubscript:@"alternativeE0b"];

  v50 = [preferencesCopy objectForKeyedSubscript:@"alternativeE1"];
  [v6 setObject:v50 forKeyedSubscript:@"alternativeE1"];

  v51 = [preferencesCopy objectForKeyedSubscript:@"alternativeE2"];
  [v6 setObject:v51 forKeyedSubscript:@"alternativeE2"];

  v52 = MEMORY[0x277CCABB0];
  v53 = [preferencesCopy objectForKeyedSubscript:@"alternativeL0a"];
  [v53 floatValue];
  v55 = [v52 numberWithDouble:roundf(v54 * 100.0)];
  [v6 setObject:v55 forKeyedSubscript:@"alternativeL0a"];

  v56 = MEMORY[0x277CCABB0];
  v57 = [preferencesCopy objectForKeyedSubscript:@"alternativeL0b"];
  [v57 floatValue];
  v59 = [v56 numberWithDouble:roundf(v58 * 100.0)];
  [v6 setObject:v59 forKeyedSubscript:@"alternativeL0b"];

  v60 = MEMORY[0x277CCABB0];
  v61 = [preferencesCopy objectForKeyedSubscript:@"alternativeL1"];
  [v61 floatValue];
  v63 = [v60 numberWithDouble:roundf(v62 * 100.0)];
  [v6 setObject:v63 forKeyedSubscript:@"alternativeL1"];

  v64 = MEMORY[0x277CCABB0];
  v65 = [preferencesCopy objectForKeyedSubscript:@"alternativeL2"];
  [v65 floatValue];
  v67 = [v64 numberWithDouble:roundf(v66 * 100.0)];
  [v6 setObject:v67 forKeyedSubscript:@"alternativeL2"];

  v68 = MEMORY[0x277CCABB0];
  v69 = [preferencesCopy objectForKeyedSubscript:@"alternativeThirdSlope"];
  [v69 floatValue];
  v71 = [v68 numberWithDouble:roundf(v70 * 10000.0)];
  [v6 setObject:v71 forKeyedSubscript:@"alternativeThirdSlope"];

  v72 = MEMORY[0x277CCABB0];
  v73 = [preferencesCopy objectForKeyedSubscript:@"nitsDelta"];
  [v73 floatValue];
  v75 = [v72 numberWithDouble:roundf(v74 * 100.0)];
  [v6 setObject:v75 forKeyedSubscript:@"nitsDelta"];

  v76 = MEMORY[0x277CCABB0];
  v77 = [preferencesCopy objectForKeyedSubscript:@"nitsDeltaAlternative"];

  [v77 floatValue];
  v79 = [v76 numberWithDouble:roundf(v78 * 100.0)];
  [v6 setObject:v79 forKeyedSubscript:@"nitsDeltaAlternative"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardALSEnabled
{
  v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSEnabled"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLDisplayAgent alsOn](self, "alsOn")}];
  [v3 setObject:v4 forKeyedSubscript:@"ALSEnabled"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventForwardALSUserPreferencesWithCurrLux
{
  brightnessSystemClient = [(PLDisplayAgent *)self brightnessSystemClient];

  if (brightnessSystemClient)
  {
    workQueue = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PLDisplayAgent_logEventForwardALSUserPreferencesWithCurrLux__block_invoke;
    block[3] = &unk_279A5BDC0;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __62__PLDisplayAgent_logEventForwardALSUserPreferencesWithCurrLux__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) brightnessSystemClient];
  v3 = [v2 copyPropertyForKey:@"TrustedLux"];

  [*(a1 + 32) logEventForwardALSUserPreferencesEntryWithLux:v3];
}

- (void)logEventForwardLuxStats:(id)stats
{
  statsCopy = stats;
  if (statsCopy)
  {
    v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LuxStats"];
    v6 = [statsCopy valueForKey:@"rearLux"];
    integerValue = [v6 integerValue];

    if ([MEMORY[0x277D3F208] isiPhone])
    {
      if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] >= 1001021)
      {
        v8 = [statsCopy valueForKey:@"gainChanged"];
        bOOLValue = [v8 BOOLValue];

        if (bOOLValue)
        {
          v10 = PLLogDisplay();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            [PLDisplayAgent logEventForwardLuxStats:];
          }

          goto LABEL_20;
        }
      }
    }

    if ([(PLDisplayAgent *)self lastRearLuxValue]!= integerValue)
    {
      if ([(PLDisplayAgent *)self lastRearLuxValue]== -1)
      {
        v14 = 0.0;
        v12 = 0.0;
      }

      else
      {
        lastRearLuxValue = [(PLDisplayAgent *)self lastRearLuxValue];
        v12 = lastRearLuxValue - [(PLDisplayAgent *)self lastRearLuxValue]* 0.2;
        lastRearLuxValue2 = [(PLDisplayAgent *)self lastRearLuxValue];
        v14 = lastRearLuxValue2 + [(PLDisplayAgent *)self lastRearLuxValue]* 0.2;
      }

      if ([(PLDisplayAgent *)self lastRearLuxValue]== -1 || (v12 <= integerValue ? (v15 = v14 < integerValue) : (v15 = 1), v15))
      {
LABEL_20:
        v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:statsCopy];
        [(PLOperator *)self logEntry:v16];
        [(PLDisplayAgent *)self setLastRearLuxValue:integerValue];
      }
    }
  }

  else
  {
    v5 = PLLogDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLDisplayAgent logEventForwardLuxStats:];
    }
  }
}

- (void)logEventBackwardTouch
{
  iokitTouch = [(PLDisplayAgent *)self iokitTouch];

  if (iokitTouch)
  {
    iokitTouch2 = [(PLDisplayAgent *)self iokitTouch];
    v7 = [iokitTouch2 propertiesForKey:@"PowerStates"];

    if (v7)
    {
      v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Touch"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v7];
      [(PLOperator *)self logEntry:v6];
    }
  }
}

uint64_t __44__PLDisplayAgent_logEventBackwardUserTouch___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardUserTouch__classDebugEnabled = result;
  return result;
}

- (void)logEventBackwardRampInfo:(id)info
{
  infoCopy = info;
  v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"RampInfo"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  if (infoCopy)
  {
    v7 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];

    if (v7)
    {
      v8 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v9 = [v8 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v9 forKeyedSubscript:@"AAP_NumberOfUpdates"];

      v10 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v11 = [v10 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v11 forKeyedSubscript:@"AAP_RampFrequency"];

      v12 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v13 = [v12 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v13 forKeyedSubscript:@"AAP_RampLength"];

      v14 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v15 = [v14 objectForKeyedSubscript:@"RampOrigin"];
      [v6 setObject:v15 forKeyedSubscript:@"AAP_RampOrigin"];

      v16 = [infoCopy objectForKeyedSubscript:@"AAPRampStats"];
      v17 = [v16 objectForKeyedSubscript:@"RampTarget"];
      [v6 setObject:v17 forKeyedSubscript:@"AAP_RampTarget"];
    }

    v18 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];

    if (v18)
    {
      v19 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v20 = [v19 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v20 forKeyedSubscript:@"Colour_NumberOfUpdates"];

      v21 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v22 = [v21 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v22 forKeyedSubscript:@"Colour_RampFrequency"];

      v23 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v24 = [v23 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v24 forKeyedSubscript:@"Colour_RampLength"];

      v25 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v26 = [v25 objectForKeyedSubscript:@"RampOrigin"];
      v27 = [v26 objectForKeyedSubscript:@"X"];
      [v6 setObject:v27 forKeyedSubscript:@"Colour_RampOrigin_X"];

      v28 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v29 = [v28 objectForKeyedSubscript:@"RampOrigin"];
      v30 = [v29 objectForKeyedSubscript:@"Y"];
      [v6 setObject:v30 forKeyedSubscript:@"Colour_RampOrigin_Y"];

      v31 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v32 = [v31 objectForKeyedSubscript:@"RampTarget"];
      v33 = [v32 objectForKeyedSubscript:@"X"];
      [v6 setObject:v33 forKeyedSubscript:@"Colour_RampTarget_X"];

      v34 = [infoCopy objectForKeyedSubscript:@"ColourRampStats"];
      v35 = [v34 objectForKeyedSubscript:@"RampTarget"];
      v36 = [v35 objectForKeyedSubscript:@"Y"];
      [v6 setObject:v36 forKeyedSubscript:@"Colour_RampTarget_Y"];
    }

    v37 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];

    if (v37)
    {
      v38 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v39 = [v38 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v39 forKeyedSubscript:@"SDR_NumberOfUpdates"];

      v40 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v41 = [v40 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v41 forKeyedSubscript:@"SDR_RampFrequency"];

      v42 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v43 = [v42 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v43 forKeyedSubscript:@"SDR_RampLength"];

      v44 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v45 = [v44 objectForKeyedSubscript:@"RampOrigin"];
      [v6 setObject:v45 forKeyedSubscript:@"SDR_RampOrigin"];

      v46 = [infoCopy objectForKeyedSubscript:@"SDRRampStats"];
      v47 = [v46 objectForKeyedSubscript:@"RampTarget"];
      [v6 setObject:v47 forKeyedSubscript:@"SDR_RampTarget"];
    }

    v48 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];

    if (v48)
    {
      v49 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v50 = [v49 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v50 forKeyedSubscript:@"EDR_NumberOfUpdates"];

      v51 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v52 = [v51 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v52 forKeyedSubscript:@"EDR_RampFrequency"];

      v53 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v54 = [v53 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v54 forKeyedSubscript:@"EDR_RampLength"];

      v55 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v56 = [v55 objectForKeyedSubscript:@"RampOrigin"];
      [v6 setObject:v56 forKeyedSubscript:@"EDR_RampOrigin"];

      v57 = [infoCopy objectForKeyedSubscript:@"EDRRampStats"];
      v58 = [v57 objectForKeyedSubscript:@"RampTarget"];
      [v6 setObject:v58 forKeyedSubscript:@"EDR_RampTarget"];
    }

    v59 = [infoCopy objectForKeyedSubscript:@"isFlipbookActive"];
    [v6 setObject:v59 forKeyedSubscript:@"isFlipbookActive"];

    [(PLOperator *)self logEntry:v6];
  }

  else
  {
    v60 = PLLogDisplay();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      [PLDisplayAgent logEventBackwardRampInfo:];
    }
  }
}

- (void)logEventBackwardCurveUpdate:(id)update
{
  v60[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = PLLogDisplay();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (updateCopy)
  {
    selfCopy = self;
    if (v6)
    {
      [PLDisplayAgent logEventBackwardCurveUpdate:];
    }

    v7 = 0x279A5A000uLL;
    v8 = *MEMORY[0x277D3F5C8];
    v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CurveUpdate"];
    array = [MEMORY[0x277CBEB18] array];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v11 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];

    v55 = v5;
    v57 = monotonicDate;
    v58 = array;
    if (v11)
    {
      v12 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
      v13 = [v12 objectForKeyedSubscript:@"lux"];

      v14 = v8;
      if ([v13 count])
      {
        v15 = 0;
        do
        {
          v16 = objc_alloc(MEMORY[0x277D3F190]);
          v17 = [(PLOperator *)PLDisplayAgent entryKeyForType:v14 andName:@"CurveUpdate"];
          v18 = [v16 initWithEntryKey:v17 withDate:monotonicDate];

          v19 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v20 = [v19 objectForKeyedSubscript:@"lux"];
          v21 = [v20 objectAtIndexedSubscript:v15];
          [v18 setObject:v21 forKeyedSubscript:@"lux"];

          v22 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v23 = [v22 objectForKeyedSubscript:@"nits"];
          v24 = [v23 objectAtIndexedSubscript:v15];
          [v18 setObject:v24 forKeyedSubscript:@"nits"];

          monotonicDate = v57;
          v7 = 0x279A5A000uLL;

          array = v58;
          [v18 setObject:&unk_287146D20 forKeyedSubscript:@"level"];
          [v58 addObject:v18];

          ++v15;
        }

        while ([v13 count] > v15);
      }

      v5 = v55;
      v8 = v14;
    }

    v25 = [updateCopy objectForKeyedSubscript:{@"CurveLevelMed", selfCopy}];

    v56 = v8;
    if (v25)
    {
      v26 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
      v27 = [v26 objectForKeyedSubscript:@"lux"];

      if ([v27 count])
      {
        v28 = 0;
        do
        {
          v29 = objc_alloc(MEMORY[0x277D3F190]);
          v30 = [(PLOperator *)PLDisplayAgent entryKeyForType:v8 andName:@"CurveUpdate"];
          v31 = [v29 initWithEntryKey:v30 withDate:monotonicDate];

          v32 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v33 = [v32 objectForKeyedSubscript:@"lux"];
          v34 = [v33 objectAtIndexedSubscript:v28];
          [v31 setObject:v34 forKeyedSubscript:@"lux"];

          v35 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v36 = [v35 objectForKeyedSubscript:@"nits"];
          v37 = [v36 objectAtIndexedSubscript:v28];
          [v31 setObject:v37 forKeyedSubscript:@"nits"];

          monotonicDate = v57;
          v7 = 0x279A5A000uLL;

          array = v58;
          [v31 setObject:&unk_287146D38 forKeyedSubscript:@"level"];
          [v58 addObject:v31];

          v8 = v56;
          ++v28;
        }

        while ([v27 count] > v28);
      }

      v5 = v55;
    }

    v38 = [updateCopy objectForKeyedSubscript:@"CurveLevelLow"];

    if (v38)
    {
      v39 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
      v40 = [v39 objectForKeyedSubscript:@"lux"];

      if ([v40 count])
      {
        v41 = 0;
        do
        {
          v42 = objc_alloc(MEMORY[0x277D3F190]);
          v43 = [*(v7 + 3520) entryKeyForType:v8 andName:@"CurveUpdate"];
          v44 = [v42 initWithEntryKey:v43 withDate:monotonicDate];

          v45 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v46 = [v45 objectForKeyedSubscript:@"lux"];
          v47 = [v46 objectAtIndexedSubscript:v41];
          [v44 setObject:v47 forKeyedSubscript:@"lux"];

          v48 = [updateCopy objectForKeyedSubscript:@"CurveLevelHigh"];
          v49 = [v48 objectForKeyedSubscript:@"nits"];
          v50 = [v49 objectAtIndexedSubscript:v41];
          [v44 setObject:v50 forKeyedSubscript:@"nits"];

          monotonicDate = v57;
          v7 = 0x279A5A000;

          array = v58;
          [v44 setObject:&unk_287146D50 forKeyedSubscript:@"level"];
          [v58 addObject:v44];

          v8 = v56;
          ++v41;
        }

        while ([v40 count] > v41);
      }

      v5 = v55;
    }

    if ([array count])
    {
      v59 = v5;
      v60[0] = array;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
      [v54 logEntries:v51 withGroupID:v5];
    }
  }

  else if (v6)
  {
    [PLDisplayAgent logEventBackwardCurveUpdate:];
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardALSThreshold:(id)threshold
{
  v4 = *MEMORY[0x277D3F5C8];
  thresholdCopy = threshold;
  v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:v4 andName:@"ALSThreshold"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:thresholdCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardALSSamplesBeforeWake:(id)wake
{
  v39 = *MEMORY[0x277D85DE8];
  wakeCopy = wake;
  if (wakeCopy)
  {
    selfCopy = self;
    v5 = *MEMORY[0x277D3F5C8];
    v28 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AmbientLight"];
    array = [MEMORY[0x277CBEB18] array];
    v7 = [wakeCopy objectForKeyedSubscript:@"count"];
    unsignedIntValue = [v7 unsignedIntValue];

    v30 = [wakeCopy objectForKeyedSubscript:@"timestamp"];
    v9 = [wakeCopy objectForKeyedSubscript:@"lux"];
    v10 = [wakeCopy objectForKeyedSubscript:@"color_x"];
    v29 = wakeCopy;
    v11 = [wakeCopy objectForKeyedSubscript:@"color_y"];
    if (unsignedIntValue)
    {
      v12 = 0;
      v13 = unsignedIntValue;
      do
      {
        v14 = MEMORY[0x277CBEAA8];
        v15 = [v30 objectAtIndexedSubscript:v12];
        [v15 doubleValue];
        v16 = [v14 dateWithTimeIntervalSinceReferenceDate:?];

        v17 = objc_alloc(MEMORY[0x277D3F190]);
        v18 = [(PLOperator *)PLDisplayAgent entryKeyForType:v5 andName:@"ALSSamplesBeforeWake"];
        v19 = [v17 initWithEntryKey:v18 withDate:v16];

        v20 = [v9 objectAtIndexedSubscript:v12];
        [v19 setObject:v20 forKeyedSubscript:@"Lux"];

        v21 = [v10 objectAtIndexedSubscript:v12];
        [v19 setObject:v21 forKeyedSubscript:@"colorX"];

        v22 = [v11 objectAtIndexedSubscript:v12];
        [v19 setObject:v22 forKeyedSubscript:@"colorY"];

        v23 = PLLogDisplay();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109634;
          v34 = v12;
          v35 = 2112;
          v36 = v16;
          v37 = 2112;
          v38 = v19;
          _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "ALSSamplesBeforeWake for the count=%d at the time=%@ is %@", buf, 0x1Cu);
        }

        [array addObject:v19];
        ++v12;
      }

      while (v13 != v12);
    }

    v24 = v28;
    if ([array count])
    {
      v31 = v28;
      v32 = array;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [(PLOperator *)selfCopy logEntries:v25 withGroupID:v28];
    }

    wakeCopy = v29;
  }

  else
  {
    v24 = PLLogDisplay();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [PLDisplayAgent logEventBackwardALSSamplesBeforeWake:];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardAmbientLight:(id)light
{
  v38 = *MEMORY[0x277D85DE8];
  lightCopy = light;
  if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(MEMORY[0x277D3F180], "fullMode") && self->_ShouldLogAmbient)
  {
    if (lightCopy)
    {
      selfCopy = self;
      v5 = *MEMORY[0x277D3F5C8];
      v27 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AmbientLight"];
      array = [MEMORY[0x277CBEB18] array];
      v7 = [lightCopy objectForKeyedSubscript:@"count"];
      unsignedIntValue = [v7 unsignedIntValue];

      v29 = [lightCopy objectForKeyedSubscript:@"timestamp"];
      v28 = [lightCopy objectForKeyedSubscript:@"lux"];
      v9 = [lightCopy objectForKeyedSubscript:@"color_x"];
      v10 = [lightCopy objectForKeyedSubscript:@"color_y"];
      if (unsignedIntValue)
      {
        v11 = 0;
        v12 = unsignedIntValue;
        do
        {
          v13 = MEMORY[0x277CBEAA8];
          v14 = [v29 objectAtIndexedSubscript:v11];
          [v14 doubleValue];
          v15 = [v13 dateWithTimeIntervalSinceReferenceDate:?];

          v16 = objc_alloc(MEMORY[0x277D3F190]);
          v17 = [(PLOperator *)PLDisplayAgent entryKeyForType:v5 andName:@"AmbientLight"];
          v18 = [v16 initWithEntryKey:v17 withDate:v15];

          v19 = [v28 objectAtIndexedSubscript:v11];
          [v18 setObject:v19 forKeyedSubscript:@"Lux"];

          v20 = [v9 objectAtIndexedSubscript:v11];
          [v18 setObject:v20 forKeyedSubscript:@"colorX"];

          v21 = [v10 objectAtIndexedSubscript:v11];
          [v18 setObject:v21 forKeyedSubscript:@"colorY"];

          v22 = PLLogDisplay();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109634;
            v33 = v11;
            v34 = 2112;
            v35 = v15;
            v36 = 2112;
            v37 = v18;
            _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "AmbientLight for the count=%d at the time=%@ is %@", buf, 0x1Cu);
          }

          [array addObject:v18];
          ++v11;
        }

        while (v12 != v11);
      }

      v23 = v27;
      if ([array count])
      {
        v30 = v27;
        v31 = array;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        [(PLOperator *)selfCopy logEntries:v24 withGroupID:v27];
      }
    }

    else
    {
      v23 = PLLogDisplay();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLDisplayAgent logEventBackwardAmbientLight:];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleBrightnessClientNotification:(id)notification withValue:(id)value
{
  notificationCopy = notification;
  valueCopy = value;
  if ([notificationCopy isEqual:@"BacklightPowerMilliWatts"])
  {
    workQueue = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke;
    block[3] = &unk_279A5C3F8;
    block[4] = self;
    v70 = valueCopy;
    dispatch_async_and_wait(workQueue, block);

    v9 = v70;
LABEL_38:

    goto LABEL_39;
  }

  if ([notificationCopy isEqual:@"BacklightPowerNits"])
  {
    workQueue2 = [(PLOperator *)self workQueue];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1750;
    v67[3] = &unk_279A5C3F8;
    v67[4] = self;
    v68 = valueCopy;
    dispatch_async_and_wait(workQueue2, v67);

    v9 = v68;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"AODRampTelemetry"])
  {
    workQueue3 = [(PLOperator *)self workQueue];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761;
    v64[3] = &unk_279A5C3F8;
    v65 = valueCopy;
    selfCopy = self;
    dispatch_async_and_wait(workQueue3, v64);

    v9 = v65;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"AODCurveUpdate"])
  {
    workQueue4 = [(PLOperator *)self workQueue];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762;
    v61[3] = &unk_279A5C3F8;
    v62 = valueCopy;
    selfCopy2 = self;
    dispatch_async_and_wait(workQueue4, v61);

    v9 = v62;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"AODWakeFromALSThreshold"])
  {
    workQueue5 = [(PLOperator *)self workQueue];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763;
    v58[3] = &unk_279A5C3F8;
    v59 = valueCopy;
    selfCopy3 = self;
    dispatch_async_and_wait(workQueue5, v58);

    v9 = v59;
    goto LABEL_38;
  }

  if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(MEMORY[0x277D3F180], "fullMode") && objc_msgSend(notificationCopy, "isEqual:", @"CBAmbientLightTelemetry") && self->_ShouldLogAmbient)
  {
    workQueue6 = [(PLOperator *)self workQueue];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764;
    v55[3] = &unk_279A5C3F8;
    v56 = valueCopy;
    selfCopy4 = self;
    dispatch_async_and_wait(workQueue6, v55);

    v9 = v56;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"CBFinalBrightnessCommit"] && -[PLDisplayAgent supportsFinalBrightnessCommit](self, "supportsFinalBrightnessCommit"))
  {
    workQueue7 = [(PLOperator *)self workQueue];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765;
    v52[3] = &unk_279A5C3F8;
    v53 = valueCopy;
    selfCopy5 = self;
    dispatch_async_and_wait(workQueue7, v52);

    v9 = v53;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"DisplayBrightness"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      workQueue8 = [(PLOperator *)self workQueue];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766;
      v50[3] = &unk_279A5C3F8;
      v50[4] = self;
      v51 = valueCopy;
      dispatch_async_and_wait(workQueue8, v50);

      v9 = v51;
      goto LABEL_38;
    }
  }

  if ([notificationCopy isEqual:@"BrightnessTransaction"])
  {
    workQueue9 = [(PLOperator *)self workQueue];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773;
    v47[3] = &unk_279A5C3F8;
    v48 = valueCopy;
    selfCopy6 = self;
    dispatch_async_and_wait(workQueue9, v47);

    v9 = v48;
    goto LABEL_38;
  }

  if ([notificationCopy isEqual:@"DisplayBrightnessAuto"])
  {
    workQueue10 = [(PLOperator *)self workQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1777;
    v45[3] = &unk_279A5C3F8;
    v45[4] = self;
    v46 = valueCopy;
    dispatch_async_and_wait(workQueue10, v45);

    v9 = v46;
    goto LABEL_38;
  }

  if ([MEMORY[0x277CFD398] supportsAdaptation] && objc_msgSend(notificationCopy, "isEqual:", @"ColorAdaptationEnabled"))
  {
    v19 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CAModeEnabled"];
    [(PLDisplayAgent *)self logBrightnessDataWithEntryKey:v19 withColName:@"CAModeEnabled" withValue:valueCopy];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v20 = objc_opt_class();
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1782;
      v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v44[4] = v20;
      if (handleBrightnessClientNotification_withValue__defaultOnce != -1)
      {
        dispatch_once(&handleBrightnessClientNotification_withValue__defaultOnce, v44);
      }

      if (handleBrightnessClientNotification_withValue__classDebugEnabled == 1)
      {
        valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]", 3514, notificationCopy, valueCopy];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]"];
        [v22 logMessage:valueCopy fromFile:lastPathComponent fromFunction:v25 fromLineNumber:3514];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    if ([notificationCopy isEqual:@"PowerLogReport"])
    {
      workQueue11 = [(PLOperator *)self workQueue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1786;
      v40[3] = &unk_279A5C768;
      v41 = valueCopy;
      selfCopy7 = self;
      v43 = notificationCopy;
      dispatch_async(workQueue11, v40);

      v9 = v41;
      goto LABEL_38;
    }

    if ([notificationCopy isEqual:@"CBBlueReductionStatus"])
    {
      [(PLDisplayAgent *)self logBlueLightDataWithDictionary:valueCopy];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = objc_opt_class();
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1811;
        v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v39[4] = v28;
        if (handleBrightnessClientNotification_withValue__defaultOnce_1809 != -1)
        {
          dispatch_once(&handleBrightnessClientNotification_withValue__defaultOnce_1809, v39);
        }

        if (handleBrightnessClientNotification_withValue__classDebugEnabled_1810 == 1)
        {
          valueCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]", 3576, notificationCopy, valueCopy];
          v30 = MEMORY[0x277D3F178];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          lastPathComponent2 = [v31 lastPathComponent];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]"];
          [v30 logMessage:valueCopy2 fromFile:lastPathComponent2 fromFunction:v33 fromLineNumber:3576];

          v34 = PLLogCommon();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }
    }

    else if (+[PLDisplayAgent shouldLogLuxStats](PLDisplayAgent, "shouldLogLuxStats") && [notificationCopy isEqual:@"RLuxStats"])
    {
      workQueue12 = [(PLOperator *)self workQueue];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812;
      v36[3] = &unk_279A5C3F8;
      v37 = valueCopy;
      selfCopy8 = self;
      dispatch_async_and_wait(workQueue12, v36);

      v9 = v37;
      goto LABEL_38;
    }
  }

LABEL_39:
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) alsOn] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [v2 valueForKey:@"BacklightPowerMilliWattsRealSub"];
    v4 = [v2 valueForKey:@"BacklightPowerMilliWattsABSub"];
    v5 = +[PLDisplayAgent shouldModelPowerFromIOMFB];
    [v3 floatValue];
    if (v5)
    {
      v7 = v6;
      [v4 floatValue];
      v9 = v8;
    }

    else
    {
      v10 = (v6 * 1000.0) / 1.8;
      [v4 floatValue];
      v12 = (v11 * 1000.0) / 1.8;
      [*(a1 + 32) uAmpsToDisplayPower:v10];
      v7 = v13;
      [*(a1 + 32) uAmpsToDisplayPower:v12];
      v9 = v14;
    }

    v15 = v7 - v9;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2;
      block[3] = &unk_279A5E8C8;
      v65 = @"ALS";
      v66 = v17;
      if (kPRearNits_block_invoke_4_defaultOnce != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_4_defaultOnce, block);
      }

      v18 = kPRearNits_block_invoke_4_classDebugEnabled;

      if (v18 == 1)
      {
        v55 = v3;
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"PowerReal:%f PowerIfALSOn:%f alsPowerSaved:%f", *&v7, *&v9, v7 - v9];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v22 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
        [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:3333];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v3 = v55;
      }
    }

    [*(a1 + 32) lastALSPowerSaved];
    v26 = v25;
    if (v15 == 0.0)
    {
      [*(a1 + 32) lastALSPowerSaved];
      v28 = v27 != 0.0;
    }

    else
    {
      v28 = 0;
    }

    v29 = vabdd_f64(v15, v26);
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v30 = *(a1 + 32);
      v31 = objc_opt_class();
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1732;
      v61[3] = &unk_279A5E8C8;
      v62 = @"ALS";
      v63 = v31;
      if (kPRearNits_block_invoke_4_defaultOnce_1730 != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_4_defaultOnce_1730, v61);
      }

      v32 = kPRearNits_block_invoke_4_classDebugEnabled_1731;

      if (v32 == 1)
      {
        v56 = v3;
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"significantChange:%d newlyZero:%d", v29 >= 1.0, v28];
        v34 = MEMORY[0x277D3F178];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v36 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke_2"];
        [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:3341];

        v38 = PLLogCommon();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v3 = v56;
      }
    }

    if (v29 >= 1.0 || v28)
    {
      [*(a1 + 32) setLastALSPowerSaved:v15];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v39 = *(a1 + 32);
        v40 = objc_opt_class();
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1739;
        v58[3] = &unk_279A5E8C8;
        v59 = @"ALS";
        v60 = v40;
        if (kPRearNits_block_invoke_4_defaultOnce_1737 != -1)
        {
          dispatch_once(&kPRearNits_block_invoke_4_defaultOnce_1737, v58);
        }

        v41 = kPRearNits_block_invoke_4_classDebugEnabled_1738;

        if (v41 == 1)
        {
          v42 = v3;
          v43 = MEMORY[0x277CCACA8];
          [*(a1 + 32) lastALSPowerSaved];
          v45 = [v43 stringWithFormat:@"Setting lastALSPowerSaved=%f", v44];
          v46 = MEMORY[0x277D3F178];
          v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v48 = [v47 lastPathComponent];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke_2"];
          [v46 logMessage:v45 fromFile:v48 fromFunction:v49 fromLineNumber:3345];

          v50 = PLLogCommon();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v3 = v42;
        }
      }

      v51 = MEMORY[0x277D3F1E0];
      v52 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:2.0];
      v53 = [*(a1 + 32) workQueue];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1744;
      v57[3] = &unk_279A5D110;
      v57[4] = *(a1 + 32);
      v54 = [v51 scheduledTimerWithMonotonicFireDate:v52 withInterval:v53 withQueue:v57 withBlock:0.0];
      [*(a1 + 32) setLogLastALSPowerSavedTimer:v54];
    }
  }
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_4_classDebugEnabled = result;
  return result;
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1732(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_4_classDebugEnabled_1731 = result;
  return result;
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1739(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_4_classDebugEnabled_1738 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1744(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[PLDisplayAgent shouldLogALSPowerSaved])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = *(a1 + 32);
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1745;
      block[3] = &unk_279A5E8C8;
      v20 = @"ALS";
      v21 = v5;
      if (kPRearNits_block_invoke_5_defaultOnce != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_5_defaultOnce, block);
      }

      v6 = kPRearNits_block_invoke_5_classDebugEnabled;

      if (v6 == 1)
      {
        v7 = MEMORY[0x277CCACA8];
        [*(a1 + 32) lastALSPowerSaved];
        v9 = [v7 stringWithFormat:@"Logging lastALSPowerSaved=%f", v8];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
        [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:3352];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v15 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
    v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withDate:v3];
    v17 = MEMORY[0x277CCABB0];
    [*(a1 + 32) lastALSPowerSaved];
    v18 = [v17 numberWithDouble:?];
    [v16 setObject:v18 forKeyedSubscript:@"Power"];

    [*(a1 + 32) logEntry:v16];
  }
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1745(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_5_classDebugEnabled = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1750(uint64_t a1)
{
  if (([*(a1 + 32) alsOn] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [v2 valueForKey:@"BacklightPowerNitsRealSub"];
    v4 = [v2 valueForKey:@"BacklightPowerNitsABSub"];
    [v3 floatValue];
    *&v6 = v5 * 1000.0;
    [*(a1 + 32) setRealmNits:v6];
    [v4 floatValue];
    *&v8 = v7 * 1000.0;
    [*(a1 + 32) setAutobrightnessmNits:v8];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1757;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (kPRearNits_block_invoke_6_defaultOnce != -1)
      {
        dispatch_once(&kPRearNits_block_invoke_6_defaultOnce, block);
      }

      if (kPRearNits_block_invoke_6_classDebugEnabled == 1)
      {
        v11 = MEMORY[0x277CCACA8];
        [*(a1 + 32) realmNits];
        v13 = v12;
        [*(a1 + 32) autobrightnessmNits];
        v15 = [v11 stringWithFormat:@"BrightnessNotification - Real: %f Nits\tVirtual: %f Nits", *&v13, v14];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:3378];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1757(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_6_classDebugEnabled = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761_cold_1();
  }

  [*(a1 + 40) logEventBackwardRampInfo:v2];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762_cold_1();
  }

  [*(a1 + 40) logEventBackwardCurveUpdate:v2];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763_cold_1();
  }

  [*(a1 + 40) logEventBackwardALSThreshold:v2];
  v4 = [v2 objectForKeyedSubscript:@"ALSSamplesBeforeWake"];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v2 objectForKeyedSubscript:@"ALSSamplesBeforeWake"];
    [v5 logEventBackwardALSSamplesBeforeWake:v6];
  }
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764_cold_1();
  }

  [*(a1 + 40) logEventBackwardAmbientLight:v2];
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765(uint64_t a1)
{
  v2 = PLLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [*(a1 + 32) objectForKey:@"slider"];
  [v9 floatValue];
  v11 = v10 * 100.0;

  [*(a1 + 40) logEventPointUserBrightnessCommitted:v11];
  return [*(a1 + 40) logEventForwardExtendedALSUserPreferences:*(a1 + 32)];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogUserBrightness])
  {
    if (([*(a1 + 32) supportsFinalBrightnessCommit] & 1) == 0)
    {
      v2 = [*(a1 + 40) objectForKey:@"Commit"];
      v3 = [v2 BOOLValue];

      if (v3)
      {
        v4 = [*(a1 + 40) objectForKey:@"Brightness"];
        [v4 floatValue];
        v6 = v5 * 100.0;

        [*(a1 + 32) logEventPointUserBrightnessCommitted:v6];
        if ([*(a1 + 32) alsOn])
        {
          [*(a1 + 32) logEventForwardALSUserPreferencesWithCurrLux];
        }
      }
    }
  }

  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    v7 = PLLogDisplay();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v43 = 138412290;
      v44 = v8;
      _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "Received Brightness Notification: %@", &v43, 0xCu);
    }

    v9 = (a1 + 32);
    v10 = [*(a1 + 32) pendingBacklightEntry];

    if (!v10)
    {
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 40)];
      [v11 setPendingBacklightEntry:v12];
    }

    v13 = [*(a1 + 40) objectForKey:@"NitsPhysical"];
    [v13 floatValue];
    v15 = v14;

    v16 = [*(a1 + 32) brightnessSystemClient];
    v17 = [v16 copyPropertyForKey:@"DisplayBrightnessMin"];
    [v17 doubleValue];
    v19 = v18;

    v20 = [*(a1 + 32) brightnessSystemClient];
    v21 = [v20 copyPropertyForKey:@"DisplayBrightnessMax"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [*(a1 + 40) objectForKey:@"Brightness"];
    [v24 floatValue];
    v26 = v25;

    v27 = PLLogDisplay();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v43 = 134219264;
      v44 = v15;
      v45 = 2048;
      v46 = v19;
      v47 = 2048;
      v48 = v23;
      v49 = 2048;
      v50 = v23 - v19;
      v51 = 2048;
      v52 = v26;
      v53 = 2048;
      v54 = (v26 - v19) * 100.0 / (v23 - v19);
      _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "Reported mNits:%f ,brightnessMin:%f ,brightnessMax:%f ,brightnessDiff:%f ,brightness:%f ,brightnessPercentage:%f ", &v43, 0x3Eu);
    }

    v28 = [MEMORY[0x277CCABB0] numberWithDouble:(v26 - v19) * 100.0 / (v23 - v19)];
    v29 = [*v9 pendingBacklightEntry];
    [v29 setObject:v28 forKeyedSubscript:@"Brightness"];

    v30 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
    v31 = [*v9 pendingBacklightEntry];
    [v31 setObject:v30 forKeyedSubscript:@"SliderValue"];

    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v15 * 1000.0];
    v33 = [*v9 pendingBacklightEntry];
    [v33 setObject:v32 forKeyedSubscript:@"mNits"];

    v34 = [*v9 pendingBacklightEntryDate];

    if (!v34)
    {
      v35 = [MEMORY[0x277CBEAA8] monotonicDate];
      [*v9 setPendingBacklightEntryDate:v35];
    }

    v36 = PLLogDisplay();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766_cold_1(v9);
    }

    v37 = [*v9 backlightFilterTimer];
    v38 = [v37 timerActive];

    if ((v38 & 1) == 0)
    {
      v39 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      v40 = PLLogDisplay();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766_cold_2(v39);
      }

      v41 = [*v9 backlightFilterTimer];
      [v41 setFireDate:v39];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773(uint64_t a1)
{
  v2 = PLLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [*(a1 + 32) objectForKey:@"HDR.Headroom"];
  [v9 doubleValue];
  v11 = (v10 * 1000.0);

  v12 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  [*(a1 + 40) setHDRHeadroom:v12];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1777(uint64_t a1)
{
  [*(a1 + 32) setAlsOn:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1778;
    block[3] = &unk_279A5E8C8;
    v14 = @"ALS";
    v15 = v3;
    if (kPRearNits_block_invoke_7_defaultOnce != -1)
    {
      dispatch_once(&kPRearNits_block_invoke_7_defaultOnce, block);
    }

    v4 = kPRearNits_block_invoke_7_classDebugEnabled;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Auto-brightness switched to alsOn=%i", objc_msgSend(*(a1 + 32), "alsOn")];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:3495];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logEventForwardALSEnabled];
  if ([*(a1 + 32) alsOn])
  {
    if (+[PLDisplayAgent shouldLogALSPowerSaved])
    {
      v11 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
      v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
      [v12 setObject:&unk_287146D20 forKeyedSubscript:@"Power"];
      [*(a1 + 32) logEntry:v12];
    }
  }
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1778(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPRearNits_block_invoke_7_classDebugEnabled = result;
  return result;
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1782(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBrightnessClientNotification_withValue__classDebugEnabled = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1786(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277D3F5C8];
  v4 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BlueLightParameters"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v2 objectForKeyedSubscript:@"BlueLightReductionOffTime"];
  [v5 setObject:v6 forKeyedSubscript:@"BlueLightReductionOffTime"];

  v7 = [v2 objectForKeyedSubscript:@"BlueLightReductionOnTime"];
  [v5 setObject:v7 forKeyedSubscript:@"BlueLightReductionOnTime"];

  v8 = [v2 objectForKeyedSubscript:@"AvgBacklightNits"];
  [v5 setObject:v8 forKeyedSubscript:@"AvgBacklightNits"];

  v9 = [v2 objectForKeyedSubscript:@"AvgLogicalBrightnessNits"];
  [v5 setObject:v9 forKeyedSubscript:@"AvgLogicalBrightnessNits"];

  [*(a1 + 40) logEntry:v5];
  if ([MEMORY[0x277CFD398] supportsAdaptation])
  {
    v10 = [(PLOperator *)PLDisplayAgent entryKeyForType:v3 andName:@"HParameters"];

    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
    v12 = *(a1 + 40);
    v13 = [v2 objectForKeyedSubscript:@"DisplayColorBins"];
    [v12 extractDataWithEntry:v11 withColName:@"DisplayColorBins" withDataArray:v13];

    v14 = *(a1 + 40);
    v15 = [v2 objectForKeyedSubscript:@"AmbientColorBins"];
    [v14 extractDataWithEntry:v11 withColName:@"AmbientColorBins" withDataArray:v15];

    v16 = *(a1 + 40);
    v17 = [v2 objectForKeyedSubscript:@"AdaptationStrengthBins"];
    [v16 extractDataWithEntry:v11 withColName:@"AdaptationStrengthBins" withDataArray:v17];

    v18 = *(a1 + 40);
    v19 = [v2 objectForKeyedSubscript:@"AmbientColorBinsAnsi"];
    [v18 extractDataWithEntry:v11 withColName:@"AmbientColorBinsAnsi" withDataArray:v19];

    v20 = *(a1 + 40);
    v21 = [v2 objectForKeyedSubscript:@"AmbientColorTransitionBins"];
    [v20 extractDataWithEntry:v11 withColName:@"AmbientColorTransitionBins" withDataArray:v21];

    v22 = *(a1 + 40);
    v23 = [v2 objectForKeyedSubscript:@"DisplayColorTransitionBins"];
    [v22 extractDataWithEntry:v11 withColName:@"DisplayColorTransitionBins" withDataArray:v23];

    v24 = [v11 allValues];
    v25 = [v24 count];

    if (v25)
    {
      [*(a1 + 40) logEntry:v11];
    }

    v4 = v10;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = *(a1 + 40);
    v27 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1805;
    v37 = &__block_descriptor_40_e5_v8__0lu32l8;
    v38 = v27;
    if (kPRearNits_block_invoke_8_defaultOnce != -1)
    {
      dispatch_once(&kPRearNits_block_invoke_8_defaultOnce, &block);
    }

    if (kPRearNits_block_invoke_8_classDebugEnabled == 1)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: harmonyParametersEntry=%@, property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke", 3570, v5, *(a1 + 48), *(a1 + 32), block, v35, v36, v37, v38];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v31 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
      [v29 logMessage:v28 fromFile:v31 fromFunction:v32 fromLineNumber:3570];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1805(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPRearNits_block_invoke_8_classDebugEnabled = result;
  return result;
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1811(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBrightnessClientNotification_withValue__classDebugEnabled_1810 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812_cold_1();
  }

  [*(a1 + 40) logEventForwardLuxStats:v2];
}

- (void)extractDataWithEntry:(id)entry withColName:(id)name withDataArray:(id)array
{
  entryCopy = entry;
  nameCopy = name;
  arrayCopy = array;
  v9 = [arrayCopy count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = @"ACBins";
      if (([(__CFString *)nameCopy isEqualToString:@"AmbientColorBins"]& 1) != 0 || (v12 = @"DCBins", ([(__CFString *)nameCopy isEqualToString:@"DisplayColorBins"]& 1) != 0) || (v12 = @"ASBins", ([(__CFString *)nameCopy isEqualToString:@"AdaptationStrengthBins"]& 1) != 0) || (v12 = @"ACABins", ([(__CFString *)nameCopy isEqualToString:@"AmbientColorBinsAnsi"]& 1) != 0) || (v12 = @"ACTBins", ([(__CFString *)nameCopy isEqualToString:@"AmbientColorTransitionBins"]& 1) != 0) || (v12 = @"DCTBins", [(__CFString *)nameCopy isEqualToString:@"DisplayColorTransitionBins"]))
      {

        nameCopy = v12;
      }

      v13 = [arrayCopy objectAtIndexedSubscript:i];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu", nameCopy, i];
      [entryCopy setObject:v13 forKeyedSubscript:v14];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PLDisplayAgent_extractDataWithEntry_withColName_withDataArray___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v15;
    if (extractDataWithEntry_withColName_withDataArray__defaultOnce != -1)
    {
      dispatch_once(&extractDataWithEntry_withColName_withDataArray__defaultOnce, block);
    }

    if (extractDataWithEntry_withColName_withDataArray__classDebugEnabled == 1)
    {
      entryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: col=%@, data=%@, entry=%@", "-[PLDisplayAgent extractDataWithEntry:withColName:withDataArray:]", 3615, nameCopy, arrayCopy, entryCopy];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent extractDataWithEntry:withColName:withDataArray:]"];
      [v17 logMessage:entryCopy fromFile:lastPathComponent fromFunction:v20 fromLineNumber:3615];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __65__PLDisplayAgent_extractDataWithEntry_withColName_withDataArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  extractDataWithEntry_withColName_withDataArray__classDebugEnabled = result;
  return result;
}

- (void)logBrightnessDataWithEntryKey:(id)key withColName:(id)name withValue:(id)value
{
  keyCopy = key;
  nameCopy = name;
  valueCopy = value;
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:keyCopy];
  [v11 setObject:valueCopy forKeyedSubscript:nameCopy];
  [(PLOperator *)self logEntry:v11];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __70__PLDisplayAgent_logBrightnessDataWithEntryKey_withColName_withValue___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v12;
    if (logBrightnessDataWithEntryKey_withColName_withValue__defaultOnce != -1)
    {
      dispatch_once(&logBrightnessDataWithEntryKey_withColName_withValue__defaultOnce, &block);
    }

    if (logBrightnessDataWithEntryKey_withColName_withValue__classDebugEnabled == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: entryKey=%@, col=%@, value=%@", "-[PLDisplayAgent logBrightnessDataWithEntryKey:withColName:withValue:]", 3622, keyCopy, nameCopy, valueCopy, block, v20, v21, v22, v23];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logBrightnessDataWithEntryKey:withColName:withValue:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:3622];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __70__PLDisplayAgent_logBrightnessDataWithEntryKey_withColName_withValue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logBrightnessDataWithEntryKey_withColName_withValue__classDebugEnabled = result;
  return result;
}

+ (BOOL)shouldLogBLR
{
  if (shouldLogBLR_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogBLR];
  }

  return shouldLogBLR_result;
}

uint64_t __30__PLDisplayAgent_shouldLogBLR__block_invoke()
{
  if ([MEMORY[0x277D3F208] isiPod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPhone") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPad"))
  {
    result = 1;
  }

  else
  {
    result = [MEMORY[0x277D3F208] isMac];
  }

  shouldLogBLR_result = result;
  return result;
}

+ (BOOL)shouldLogALSPowerSaved
{
  if (shouldLogALSPowerSaved_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogALSPowerSaved];
  }

  return shouldLogALSPowerSaved_result;
}

uint64_t __40__PLDisplayAgent_shouldLogALSPowerSaved__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiPod];
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = [MEMORY[0x277D3F208] isMac];
    v1 = result ^ 1;
  }

  shouldLogALSPowerSaved_result = v1;
  return result;
}

+ (BOOL)shouldLogBacklightControl
{
  if (shouldLogBacklightControl_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogBacklightControl];
  }

  return shouldLogBacklightControl_result;
}

uint64_t __43__PLDisplayAgent_shouldLogBacklightControl__block_invoke()
{
  result = [MEMORY[0x277D3F208] isArchARM];
  shouldLogBacklightControl_result = result;
  return result;
}

+ (BOOL)shouldLogDisplay
{
  if (shouldLogDisplay_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogDisplay];
  }

  return shouldLogDisplay_result;
}

uint64_t __34__PLDisplayAgent_shouldLogDisplay__block_invoke()
{
  result = [MEMORY[0x277D3F208] isArchARM];
  shouldLogDisplay_result = result;
  return result;
}

+ (BOOL)shouldLogLCD
{
  if (shouldLogLCD_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogLCD];
  }

  return shouldLogLCD_result;
}

uint64_t __30__PLDisplayAgent_shouldLogLCD__block_invoke()
{
  result = [MEMORY[0x277D3F208] isMac];
  shouldLogLCD_result = result;
  return result;
}

+ (BOOL)shouldLogFromDCP
{
  if (shouldLogFromDCP_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogFromDCP];
  }

  return shouldLogFromDCP_result;
}

uint64_t __34__PLDisplayAgent_shouldLogFromDCP__block_invoke()
{
  result = [MEMORY[0x277D3F208] hasDCP];
  if (result)
  {
    result = [MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{102042, 0}];
    v1 = result ^ 1;
  }

  else
  {
    v1 = 0;
  }

  shouldLogFromDCP_result = v1;
  return result;
}

+ (BOOL)shouldLogUserBrightness
{
  if (shouldLogUserBrightness_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogUserBrightness];
  }

  return shouldLogUserBrightness_result;
}

uint64_t __41__PLDisplayAgent_shouldLogUserBrightness__block_invoke()
{
  result = [MEMORY[0x277D3F208] isMac];
  shouldLogUserBrightness_result = result ^ 1;
  return result;
}

+ (BOOL)shouldLogKeyboardBrightness
{
  if (shouldLogKeyboardBrightness_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogKeyboardBrightness];
  }

  return shouldLogKeyboardBrightness_result;
}

uint64_t __45__PLDisplayAgent_shouldLogKeyboardBrightness__block_invoke()
{
  v0 = [MEMORY[0x277D3F208] isiPad];
  result = [MEMORY[0x277D3F208] isMac];
  shouldLogKeyboardBrightness_result = (result | v0) & 1;
  return result;
}

+ (BOOL)shouldLogLuxStats
{
  isiPhone = [MEMORY[0x277D3F1B8] isiPhone];
  if (isiPhone)
  {
    v3 = MEMORY[0x277D3F1B8];

    LOBYTE(isiPhone) = [v3 hasRearALS];
  }

  return isiPhone;
}

- (void)logBlueLightDataWithDictionary:(id)dictionary
{
  v36 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  bluelightFilterTimer = [(PLDisplayAgent *)self bluelightFilterTimer];

  if (!bluelightFilterTimer)
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x277D3F250]);
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5];
    workQueue = [(PLOperator *)self workQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke;
    v32[3] = &unk_279A5E8A0;
    objc_copyWeak(&v33, &location);
    v9 = [v6 initWithFireDate:v7 withInterval:0 withTolerance:0 repeats:workQueue withUserInfo:v32 withQueue:0.0 withBlock:0.0];
    [(PLDisplayAgent *)self setBluelightFilterTimer:v9];

    bluelightFilterTimer2 = [(PLDisplayAgent *)self bluelightFilterTimer];
    [bluelightFilterTimer2 arm];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  v11 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BlueLightReductionStatus"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  allKeys = [dictionaryCopy allKeys];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [allKeys countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v14)
  {
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [dictionaryCopy objectForKeyedSubscript:v17];
        [v12 setObject:v18 forKeyedSubscript:v17];
      }

      v14 = [allKeys countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v14);
  }

  [(PLDisplayAgent *)self setBluelightStatusEntry:v12];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v19;
    if (logBlueLightDataWithDictionary__defaultOnce != -1)
    {
      dispatch_once(&logBlueLightDataWithDictionary__defaultOnce, block);
    }

    if (logBlueLightDataWithDictionary__classDebugEnabled == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: entryKey=%@, entry=%@", "-[PLDisplayAgent logBlueLightDataWithDictionary:]", 3734, v11, v12];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logBlueLightDataWithDictionary:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:3734];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reArmCallback];
}

uint64_t __49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logBlueLightDataWithDictionary__classDebugEnabled = result;
  return result;
}

- (void)reArmCallback
{
  bluelightStatusEntry = [(PLDisplayAgent *)self bluelightStatusEntry];
  [(PLOperator *)self logEntry:bluelightStatusEntry];

  bluelightFilterTimer = [(PLDisplayAgent *)self bluelightFilterTimer];

  if (bluelightFilterTimer)
  {
    bluelightFilterTimer2 = [(PLDisplayAgent *)self bluelightFilterTimer];
    [bluelightFilterTimer2 invalidate];
  }

  [(PLDisplayAgent *)self setBluelightFilterTimer:0];

  [(PLDisplayAgent *)self setBluelightStatusEntry:0];
}

+ (BOOL)shouldLogTouch
{
  if (shouldLogTouch_onceToken != -1)
  {
    +[PLDisplayAgent shouldLogTouch];
  }

  return shouldLogTouch_result;
}

uint64_t __32__PLDisplayAgent_shouldLogTouch__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiOS];
  shouldLogTouch_result = result;
  return result;
}

- (__IOHIDEventSystemClient)setUpIOHIDTouchSystemClient
{
  if (!+[PLDisplayAgent shouldLogTouch](PLDisplayAgent, "shouldLogTouch") || ![MEMORY[0x277D3F180] fullMode])
  {
    return 0;
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = IOHIDEventSystemClientCreate();
  if (v4)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:13];
    [dictionary setObject:v6 forKey:@"DeviceUsagePage"];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v7 forKey:@"Built-In"];

    workQueue = [(PLOperator *)self workQueue];
    IOHIDEventSystemClientScheduleWithDispatchQueue();

    IOHIDEventSystemClientRegisterEventCallback();
    IOHIDEventSystemClientSetMatching();
  }

  return v4;
}

- (BOOL)updateDisplayIOReportStats:(id)stats logZeroFramesOnlyOnce:(BOOL)once
{
  onceCopy = once;
  statsCopy = stats;
  v6 = statsCopy;
  if (statsCopy && [statsCopy subscription])
  {
    [v6 subscription];
    subscribedChannels = [v6 subscribedChannels];
    Samples = IOReportCreateSamples();

    if (!Samples)
    {
      LOBYTE(SamplesDelta) = 0;
LABEL_42:

      goto LABEL_43;
    }

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    ioReportSample = [v6 ioReportSample];

    if (!ioReportSample)
    {
LABEL_39:
      [v6 setIoReportSample:Samples];
      SamplesDelta = [v6 sampleTime];
      [v6 setSampleTimePrevious:SamplesDelta];

      [v6 setSampleTime:monotonicDate];
      LOBYTE(SamplesDelta) = 1;
      goto LABEL_41;
    }

    ioReportSample2 = [v6 ioReportSample];
    SamplesDelta = IOReportCreateSamplesDelta();

    if (!SamplesDelta)
    {
LABEL_41:

      goto LABEL_42;
    }

    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__13;
    v76 = __Block_byref_object_dispose__13;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__13;
    v70 = __Block_byref_object_dispose__13;
    v71 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__13;
    v64 = __Block_byref_object_dispose__13;
    v65 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x3032000000;
    v58[3] = __Block_byref_object_copy__13;
    v58[4] = __Block_byref_object_dispose__13;
    v59 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__13;
    v56[4] = __Block_byref_object_dispose__13;
    v57 = 0;
    v13 = objc_alloc_init(PLDisplayAPLStats);
    IOReportIterate();
    sampleTime = [v6 sampleTime];
    [monotonicDate timeIntervalSinceDate:sampleTime];
    v16 = v15;

    if (v16 <= 0.0 || ([v61[5] doubleValue], v17 <= 0.0))
    {
      [(PLDisplayAPLStats *)v13 setAvgPower:&unk_28714B848];
    }

    else
    {
      if ([MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{100078, 100079, 0}])
      {
        v18 = 1.12014716;
      }

      else if ([MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{100080, 100081, 0}])
      {
        v18 = 1.29084846;
      }

      else
      {
        v18 = 0.0;
      }

      [v61[5] doubleValue];
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19 / v16 / 1000.0 + v18 * 1000.0];
      [(PLDisplayAPLStats *)v13 setAvgPower:v20];
    }

    v21 = v67[5];
    if (v21 && [v21 intValue] >= 1)
    {
      [v73[5] doubleValue];
      v23 = v22;
      [v67[5] doubleValue];
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23 / v24];
      [(PLDisplayAPLStats *)v13 setAvgAPL:v25];
    }

    frames = [(PLDisplayAPLStats *)v13 frames];
    if (frames)
    {
      frames2 = [(PLDisplayAPLStats *)v13 frames];
      intValue = [frames2 intValue];

      if (intValue >= 1)
      {
        avgRed = [(PLDisplayAPLStats *)v13 avgRed];
        [avgRed doubleValue];
        v31 = v30;
        frames3 = [(PLDisplayAPLStats *)v13 frames];
        [frames3 doubleValue];
        v34 = v31 / v33;

        v35 = 0;
        if (v34 < 0.0)
        {
          goto LABEL_38;
        }

        if (v34 > 255.0)
        {
          goto LABEL_38;
        }

        v36 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
        [(PLDisplayAPLStats *)v13 setAvgRed:v36];

        avgGreen = [(PLDisplayAPLStats *)v13 avgGreen];
        [avgGreen doubleValue];
        v39 = v38;
        frames4 = [(PLDisplayAPLStats *)v13 frames];
        [frames4 doubleValue];
        v42 = v39 / v41;

        v35 = 0;
        if (v42 < 0.0)
        {
          goto LABEL_38;
        }

        if (v42 > 255.0)
        {
          goto LABEL_38;
        }

        v43 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
        [(PLDisplayAPLStats *)v13 setAvgGreen:v43];

        avgBlue = [(PLDisplayAPLStats *)v13 avgBlue];
        [avgBlue doubleValue];
        v46 = v45;
        frames5 = [(PLDisplayAPLStats *)v13 frames];
        [frames5 doubleValue];
        v49 = v46 / v48;

        v35 = 0;
        if (v49 < 0.0 || v49 > 255.0)
        {
LABEL_38:

          _Block_object_dispose(v56, 8);
          _Block_object_dispose(v58, 8);

          _Block_object_dispose(&v60, 8);
          _Block_object_dispose(&v66, 8);

          _Block_object_dispose(&v72, 8);
          if ((v35 & 1) == 0)
          {
            LOBYTE(SamplesDelta) = 0;
            goto LABEL_41;
          }

          goto LABEL_39;
        }

        v50 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
        [(PLDisplayAPLStats *)v13 setAvgBlue:v50];

        v51 = 0;
LABEL_37:
        updateDisplayIOReportStats_logZeroFramesOnlyOnce__gotZeroFrameAlready = v51;
        [v6 setDisplayAPLStats:v13];
        v35 = 1;
        goto LABEL_38;
      }
    }

    frames6 = [(PLDisplayAPLStats *)v13 frames];
    if (frames6)
    {
      frames7 = [(PLDisplayAPLStats *)v13 frames];
      intValue2 = [frames7 intValue];

      if ((intValue2 & 0x80000000) == 0)
      {
        if (!onceCopy || updateDisplayIOReportStats_logZeroFramesOnlyOnce__gotZeroFrameAlready != 1)
        {
          v51 = 1;
          goto LABEL_37;
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v35 = 0;
          updateDisplayIOReportStats_logZeroFramesOnlyOnce__gotZeroFrameAlready = 0;
          goto LABEL_38;
        }
      }
    }

    v35 = 0;
    goto LABEL_38;
  }

  LOBYTE(SamplesDelta) = 0;
LABEL_43:

  return SamplesDelta;
}

void __67__PLDisplayAgent_updateDisplayIOReportStats_logZeroFramesOnlyOnce___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = IOReportChannelGetChannelName();
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_287146D20;
  }

  v7 = v6;

  if ([v3 isEqualToString:@"red"])
  {
    [*(a1 + 32) setAvgRed:v7];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"green"])
  {
    [*(a1 + 32) setAvgGreen:v7];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"blue"])
  {
    [*(a1 + 32) setAvgBlue:v7];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"frame_count"])
  {
    [*(a1 + 32) setFrames:v7];
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"nits_accum"])
  {
    v8 = *(a1 + 40);
  }

  else if ([v3 isEqualToString:@"bl_frame_count"])
  {
    v8 = *(a1 + 48);
  }

  else if ([v3 isEqualToString:@"power"])
  {
    v8 = *(a1 + 56);
  }

  else if ([v3 isEqualToString:@"apl_sum"])
  {
    v8 = *(a1 + 64);
  }

  else
  {
    if (![v3 isEqualToString:@"apl_count"])
    {
      goto LABEL_23;
    }

    v8 = *(a1 + 72);
  }

  objc_storeStrong((*(v8 + 8) + 40), v6);
LABEL_23:

  objc_autoreleasePoolPop(v2);
}

- (void)__FrameBufferEventCallback:(__IOMobileFramebuffer *)callback
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_aligned_alloc(0x4000uLL, 0x4000uLL, 0x100004052888210uLL);
  IOMobileFramebufferGetBufBlock();
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLDisplayAgent __FrameBufferEventCallback:v3];
  }

  v34 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AZLSnapshots"];
  array = [MEMORY[0x277CBEB18] array];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  if (*v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = v3 + 4;
    v10 = *MEMORY[0x277D3F5C8];
    *&v6 = 67110656;
    v33 = v6;
    do
    {
      v11 = objc_alloc(MEMORY[0x277D3F190]);
      v12 = [(PLOperator *)PLDisplayAgent entryKeyForType:v10 andName:@"AZLSnapshots"];
      v13 = [v11 initWithEntryKey:v12 withDate:monotonicDate];

      v14 = PLLogDisplay();
      v15 = v7;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = 7 * v8;
        v24 = *(v9 - 3);
        v25 = *(v9 - 2);
        v26 = *(v9 - 1);
        v27 = *v9;
        v28 = v9[1];
        v29 = v9[2];
        v30 = v9[3];
        *buf = v33;
        v40 = v30;
        v41 = 1024;
        v42 = v24;
        v43 = 1024;
        v44 = v25;
        v45 = 1024;
        v46 = v26;
        v47 = 1024;
        v48 = v27;
        v49 = 1024;
        v50 = v28;
        v51 = 1024;
        v52 = v29;
        _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "packet_id[%d]: current_ma(u14.18): 0x%x, voltage_v(u4.10): 0x%x, system_nits(u0.20): 0x%x, azl(u0.20): 0x%x, max_zone_current(0.14): 0x%x, max_row_step_to_step_current(10.14): 0x%x \n", buf, 0x2Cu);
      }

      v16 = &v3[v15];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[1]];
      [v13 setObject:v17 forKeyedSubscript:@"AverageCurrent"];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[2]];
      [v13 setObject:v18 forKeyedSubscript:@"VLED"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[3]];
      [v13 setObject:v19 forKeyedSubscript:@"SystemNits"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[4]];
      [v13 setObject:v20 forKeyedSubscript:@"AZL"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[5]];
      [v13 setObject:v21 forKeyedSubscript:@"MaxRowCurrent"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[6]];
      [v13 setObject:v22 forKeyedSubscript:@"NitsAccum"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16[7]];
      [v13 setObject:v23 forKeyedSubscript:@"PacketID"];

      [array addObject:v13];
      ++v8;
      v7 += 7;
      v9 += 7;
    }

    while (v8 < *v3);
  }

  if ([array count])
  {
    v37 = v34;
    v38 = array;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [(PLOperator *)self logEntries:v31 withGroupID:v34];
  }

  [(PLDisplayAgent *)self setAZLSnapshotsEntries:[(PLDisplayAgent *)self AZLSnapshotsEntries]+ *v3];
  free(v3);

  v32 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldLogAPL
{
  if (([MEMORY[0x277D3F208] hasDCP] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "hasCapability:", 0) & 1) != 0 || +[PLDisplayAgent shouldModelPowerFromAPL](PLDisplayAgent, "shouldModelPowerFromAPL"))
  {
    return 1;
  }

  return +[PLDisplayAgent shouldModelPowerFromIOMFB];
}

+ (BOOL)shouldModelPowerFromAPL
{
  if (shouldModelPowerFromAPL_onceToken != -1)
  {
    +[PLDisplayAgent shouldModelPowerFromAPL];
  }

  return shouldModelPowerFromAPL_supportedTarget;
}

uint64_t __41__PLDisplayAgent_shouldModelPowerFromAPL__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002021, 1002024, 1002025, 0}];
  shouldModelPowerFromAPL_supportedTarget = result;
  return result;
}

+ (BOOL)shouldModelPowerFromIOMFB
{
  if (shouldModelPowerFromIOMFB_onceToken != -1)
  {
    +[PLDisplayAgent shouldModelPowerFromIOMFB];
  }

  return shouldModelPowerFromIOMFB_supportedTarget;
}

uint64_t __43__PLDisplayAgent_shouldModelPowerFromIOMFB__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002030, 0}];
  shouldModelPowerFromIOMFB_supportedTarget = result;
  return result;
}

- (void)updateLastForegroundAppAPL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v20 = lCopy;
    v5 = [lCopy objectForKey:@"entry"];

    lCopy = v20;
    if (v5)
    {
      v6 = [v20 objectForKey:@"entry"];
      v7 = [v6 objectForKey:@"AppRole"];
      v8 = [v7 isEqualToValue:&unk_287146D68];

      v9 = [v20 objectForKey:@"entry"];
      v10 = [v9 objectForKey:@"ScreenWeight"];
      v11 = [v10 isEqualToValue:&unk_28714B7A8];

      v12 = [v20 objectForKey:@"entry"];
      v13 = [v12 objectForKey:@"bundleID"];
      v14 = [v13 isEqualToString:@"com.apple.lock-screen"];

      v15 = [v20 objectForKey:@"entry"];
      v16 = [v15 objectForKey:@"bundleID"];
      v17 = [v16 isEqualToString:@"com.apple.lock-screen.aod"];

      if (v8 && v11 || ((v14 | v17) & v11 & 1) != 0)
      {
        v18 = [v20 objectForKey:@"entry"];
        v19 = [v18 objectForKey:@"bundleID"];
        [(PLDisplayAgent *)self setLastForegroundAppAPL:v19];
      }

      else
      {
        [(PLDisplayAgent *)self setLastForegroundAppAPL:0];
      }

      lCopy = v20;
    }
  }
}

- (void)logDisplayAPL
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logDisplayAZL
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleSBC
{
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {

    [(PLDisplayAgent *)self logDisplayAZL];
  }
}

- (void)logAODChange
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "LogAODChange  for entries %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)modelDisplayPower:(id)power
{
  powerCopy = power;
  if (([MEMORY[0x277D3F208] hasCapability:0] & 1) == 0)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v6 = [powerCopy objectForKeyedSubscript:@"Brightness"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [powerCopy objectForKeyedSubscript:@"uAmps"];
    [v9 doubleValue];
    v11 = v10;

    v12 = 0.0;
    if (v8 > 0.0)
    {
      [(PLDisplayAgent *)self uAmpsToDisplayPower:v11];
      v12 = v13;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLDisplayAgent_modelDisplayPower___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v14;
      if (modelDisplayPower__defaultOnce != -1)
      {
        dispatch_once(&modelDisplayPower__defaultOnce, block);
      }

      if (modelDisplayPower__classDebugEnabled == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"raw data %@, brightness %f, uAmps %f, power %f", powerCopy, *&v8, *&v11, *&v12];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        lastPathComponent = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPower:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:4551];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:10 withPower:monotonicDate withStartDate:v12];
  }
}

uint64_t __36__PLDisplayAgent_modelDisplayPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDisplayPower__classDebugEnabled = result;
  return result;
}

- (void)qualifyDisplayPower:(id)power
{
  v28 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  v5 = [powerCopy objectForKeyedSubscript:@"Brightness"];
  [v5 doubleValue];
  v7 = v6;

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  isFirstTimeModeling = [(PLDisplayAgent *)self isFirstTimeModeling];
  v10 = MEMORY[0x277CBEBF8];
  if (isFirstTimeModeling || (v11 = [(PLDisplayAgent *)self wasDisplayOn], v11 != [(PLDisplayAgent *)self isDisplayOnNow]))
  {
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    if ([(PLDisplayAgent *)self isDisplayOnNow])
    {
      v13 = &unk_28714DB98;
    }

    else
    {
      v13 = v10;
    }

    [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:5 withChildNodeNames:v13 withStartDate:monotonicDate];

    [(PLDisplayAgent *)self setWasDisplayOn:[(PLDisplayAgent *)self isDisplayOnNow]];
  }

  v14 = PLLogDisplay();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218754;
    v21 = v7;
    v22 = 2112;
    v23 = powerCopy;
    v24 = 1024;
    v25 = v7 > 80.0;
    v26 = 1024;
    isDisplayHighBrightness = [(PLDisplayAgent *)self isDisplayHighBrightness];
    _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "brightness=%f, entry=%@, isHighBrightnessNow=%d, isHighBrightnessPrevious=%d", &v20, 0x22u);
  }

  if ([(PLDisplayAgent *)self isFirstTimeModeling]|| v7 > 80.0 != [(PLDisplayAgent *)self isDisplayHighBrightness])
  {
    v15 = PLLogDisplay();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLDisplayAgent qualifyDisplayPower:];
    }

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    v17 = mEMORY[0x277D3F0C0]2;
    if (v7 <= 80.0)
    {
      v18 = v10;
    }

    else
    {
      v18 = &unk_28714DBB0;
    }

    [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:6 withChildNodeNames:v18 withStartDate:{monotonicDate, 80.0}];

    [(PLDisplayAgent *)self setIsDisplayHighBrightness:v7 > 80.0];
  }

  [(PLDisplayAgent *)self setIsFirstTimeModeling:0];

  v19 = *MEMORY[0x277D85DE8];
}

- (double)uAmpsToDisplayPower:(double)power
{
  v3 = 0.0;
  if (power > 0.0)
  {
    displayPowerModel = [(PLDisplayAgent *)self displayPowerModel];
    v7 = [displayPowerModel objectForKeyedSubscript:@"slope2"];
    [v7 doubleValue];
    v9 = v8 * 0.0000001 * power;
    displayPowerModel2 = [(PLDisplayAgent *)self displayPowerModel];
    v11 = [displayPowerModel2 objectForKeyedSubscript:@"slope"];
    [v11 doubleValue];
    v13 = v12 * power + v9 * power;
    displayPowerModel3 = [(PLDisplayAgent *)self displayPowerModel];
    v15 = [displayPowerModel3 objectForKeyedSubscript:@"intercept"];
    [v15 doubleValue];
    v3 = v13 + v16;
  }

  return fmax(v3, 0.0);
}

- (id)getIOMFBSubFrameMap
{
  if (getIOMFBSubFrameMap_onceToken != -1)
  {
    [PLDisplayAgent getIOMFBSubFrameMap];
  }

  v3 = getIOMFBSubFrameMap_subFrameMap;

  return v3;
}

uint64_t __37__PLDisplayAgent_getIOMFBSubFrameMap__block_invoke()
{
  v0 = objc_opt_new();
  v1 = getIOMFBSubFrameMap_subFrameMap;
  getIOMFBSubFrameMap_subFrameMap = v0;

  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B858 forKeyedSubscript:@"subframes_0"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B868 forKeyedSubscript:@"subframes_1"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B878 forKeyedSubscript:@"subframes_2"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B888 forKeyedSubscript:@"subframes_3"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B898 forKeyedSubscript:@"subframes_4"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8A8 forKeyedSubscript:@"subframes_5"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8B8 forKeyedSubscript:@"subframes_6"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8C8 forKeyedSubscript:@"subframes_7"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8D8 forKeyedSubscript:@"subframes_8"];
  [getIOMFBSubFrameMap_subFrameMap setObject:&unk_28714B8E8 forKeyedSubscript:@"subframes_9"];
  v2 = getIOMFBSubFrameMap_subFrameMap;

  return [v2 setObject:&unk_28714B8F8 forKeyedSubscript:@"subframes_10"];
}

- (double)averageFrameRateFromIOMFBScanout:(id)scanout
{
  scanoutCopy = scanout;
  if (scanoutCopy)
  {
    getIOMFBSubFrameMap = [(PLDisplayAgent *)self getIOMFBSubFrameMap];
    v6 = getIOMFBSubFrameMap;
    v7 = 0.0;
    if (getIOMFBSubFrameMap && [getIOMFBSubFrameMap count] == 11)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __51__PLDisplayAgent_averageFrameRateFromIOMFBScanout___block_invoke;
      v11[3] = &unk_279A5C628;
      v12 = scanoutCopy;
      v13 = &v19;
      v14 = &v15;
      [v6 enumerateKeysAndObjectsUsingBlock:v11];
      v8 = v16[3];
      if (v8 != 0.0)
      {
        v9 = v20[3];
        if (v9 != 0.0)
        {
          v7 = 1.0 / (v8 / v9);
        }
      }

      _Block_object_dispose(&v15, 8);
      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

double __51__PLDisplayAgent_averageFrameRateFromIOMFBScanout___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [v7 doubleValue];
  v9 = v8;

  if (v9 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  *(*(a1[5] + 8) + 24) = v10 + *(*(a1[5] + 8) + 24);
  [v6 doubleValue];
  v12 = v11;

  v13 = *(a1[6] + 8);
  result = *(v13 + 24) + v10 * (1.0 / v12);
  *(v13 + 24) = result;
  return result;
}

- (void)modelDynamicDisplayPower:(id)power
{
  powerCopy = power;
  v5 = powerCopy;
  if (!powerCopy)
  {
    goto LABEL_51;
  }

  v6 = [powerCopy objectForKey:@"entry"];
  v62 = v6;
  if (!v6)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_50;
    }

    v50 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v50;
    if (modelDynamicDisplayPower__defaultOnce != -1)
    {
      dispatch_once(&modelDynamicDisplayPower__defaultOnce, block);
    }

    if (modelDynamicDisplayPower__classDebugEnabled != 1)
    {
      goto LABEL_50;
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: No entry object in IOMFBScanout entry"];
    v52 = MEMORY[0x277D3F178];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
    lastPathComponent = [v53 lastPathComponent];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPower:]"];
    [v52 logMessage:v51 fromFile:lastPathComponent fromFunction:v55 fromLineNumber:4653];

    v56 = PLLogCommon();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

LABEL_47:

    goto LABEL_50;
  }

  v7 = v6;
  if (![(NSMutableArray *)self->_displayStateChanges count])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_50;
    }

    v57 = objc_opt_class();
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke_2016;
    v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v63[4] = v57;
    if (modelDynamicDisplayPower__defaultOnce_2014 != -1)
    {
      dispatch_once(&modelDynamicDisplayPower__defaultOnce_2014, v63);
    }

    if (modelDynamicDisplayPower__classDebugEnabled_2015 != 1)
    {
      goto LABEL_50;
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: No display states recorded"];
    v58 = MEMORY[0x277D3F178];
    v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
    lastPathComponent2 = [v59 lastPathComponent];
    v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPower:]"];
    [v58 logMessage:v51 fromFile:lastPathComponent2 fromFunction:v61 fromLineNumber:4655];

    v56 = PLLogCommon();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

    goto LABEL_47;
  }

  v8 = [v7 objectForKey:@"timestamp"];
  [v8 doubleValue];
  v10 = v9;

  if (v10 == 0.0)
  {
    goto LABEL_50;
  }

  v11 = [v62 objectForKey:@"SampleTime"];
  [v11 doubleValue];
  v13 = v12;

  [(PLDisplayAgent *)self averageFrameRateFromIOMFBScanout:v62];
  v15 = v14;
  displayPowerModel = [(PLDisplayAgent *)self displayPowerModel];
  v17 = [displayPowerModel objectForKeyedSubscript:@"dyn_slope"];
  v18 = 0.0;
  v19 = 0.0;
  if (v17)
  {
    displayPowerModel2 = [(PLDisplayAgent *)self displayPowerModel];
    v21 = [displayPowerModel2 objectForKeyedSubscript:@"dyn_slope"];
    [v21 doubleValue];
    v19 = v22;
  }

  displayPowerModel3 = [(PLDisplayAgent *)self displayPowerModel];
  v24 = [displayPowerModel3 objectForKeyedSubscript:@"dyn_intercept"];
  if (v24)
  {
    displayPowerModel4 = [(PLDisplayAgent *)self displayPowerModel];
    v26 = [displayPowerModel4 objectForKeyedSubscript:@"dyn_intercept"];
    [v26 doubleValue];
    v18 = v27;
  }

  v28 = v18 + v19 * v15 >= 0.0 ? v18 + v19 * v15 : 0.0;
  if (![(NSMutableArray *)self->_displayStateChanges count])
  {
    goto LABEL_50;
  }

  v29 = v10 - v13;
  while (1)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = [(NSMutableArray *)self->_displayStateChanges count];
    v32 = [(NSMutableArray *)self->_displayStateChanges objectAtIndexedSubscript:0];
    v33 = [v32 objectAtIndex:0];
    [v33 doubleValue];
    v35 = v34;

    if (v35 <= v29)
    {
      v35 = v29;
      v39 = v10;
      if (v31 < 2)
      {
        goto LABEL_25;
      }

      v36 = [(NSMutableArray *)self->_displayStateChanges objectAtIndexedSubscript:1];
      v40 = [v36 objectAtIndex:0];
      [v40 doubleValue];
      v39 = v41;

      if (v39 <= v29)
      {
        [(NSMutableArray *)self->_displayStateChanges removeObjectAtIndex:0];
        goto LABEL_32;
      }

      v35 = v29;
    }

    else
    {
      if (v35 >= v10)
      {
        goto LABEL_49;
      }

      if (v31 < 2)
      {
        v39 = v10;
        goto LABEL_25;
      }

      v36 = [(NSMutableArray *)self->_displayStateChanges objectAtIndexedSubscript:1];
      v37 = [v36 objectAtIndex:0];
      [v37 doubleValue];
      v39 = v38;
    }

    if (v39 >= v10)
    {
      v39 = v10;
    }

LABEL_25:
    v36 = [v32 objectAtIndex:1];
    v42 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v35];
    v43 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v39];
    if (([v36 BOOLValue] & 1) == 0)
    {
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0] createPowerEventIntervalWithRootNodeID:56 withPower:v42 withStartDate:v43 withEndDate:0.0];
    }

    if ([v36 BOOLValue])
    {
      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]2 createPowerEventIntervalWithRootNodeID:56 withPower:v42 withStartDate:v43 withEndDate:v28];
    }

    if (v31 < 2)
    {
      break;
    }

    v46 = [(NSMutableArray *)self->_displayStateChanges objectAtIndexedSubscript:1];
    v47 = [v46 objectAtIndex:0];
    [v47 doubleValue];
    v49 = v48;

    if (v49 > v10)
    {
      break;
    }

    [(NSMutableArray *)self->_displayStateChanges removeObjectAtIndex:0];

LABEL_32:
    objc_autoreleasePoolPop(v30);
    if (![(NSMutableArray *)self->_displayStateChanges count])
    {
      goto LABEL_50;
    }
  }

LABEL_49:
  objc_autoreleasePoolPop(v30);
LABEL_50:

LABEL_51:
}

uint64_t __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDynamicDisplayPower__classDebugEnabled = result;
  return result;
}

uint64_t __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke_2016(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDynamicDisplayPower__classDebugEnabled_2015 = result;
  return result;
}

- (double)calculatePowerFromAPL:(double)l withAvgRed:(double)red withAvgGreen:(double)green withAvgBlue:(double)blue
{
  v9 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"static_power"];
  v10 = 0.0;
  v11 = 0.0;
  if (v9)
  {
    v12 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"static_power"];
    [v12 doubleValue];
    v11 = v13;
  }

  v14 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"touch_power"];
  if (v14)
  {
    v15 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"touch_power"];
    [v15 doubleValue];
    v10 = v16;
  }

  v17 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"red_norm_slope"];
  v18 = 0.0;
  v19 = 0.0;
  if (v17)
  {
    v20 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"red_norm_slope"];
    [v20 doubleValue];
    v19 = v21 * 0.000001 * l;
  }

  v22 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_slope"];
  if (v22)
  {
    v23 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_slope"];
    [v23 doubleValue];
    v18 = v24 * 0.000001 * l;
  }

  v25 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_slope"];
  if (v25)
  {
    v26 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_slope"];
    [v26 doubleValue];
    v28 = v27 * 0.000001 * l;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"red_norm_intercept"];
  if (v29)
  {
    v30 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"red_norm_intercept"];
    [v30 doubleValue];
    v32 = v19 + v31;
  }

  else
  {
    v32 = v19 + 0.0;
  }

  v33 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_intercept"];
  if (v33)
  {
    v34 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_intercept"];
    [v34 doubleValue];
    v36 = v18 + v35;
  }

  else
  {
    v36 = v18 + 0.0;
  }

  v37 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_intercept"];
  if (v37)
  {
    v38 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_intercept"];
    [v38 doubleValue];
    v40 = v28 + v39;
  }

  else
  {
    v40 = v28 + 0.0;
  }

  if (v32 >= 0.0)
  {
    v41 = v32;
  }

  else
  {
    v41 = 0.0;
  }

  if (v36 >= 0.0)
  {
    v42 = v36;
  }

  else
  {
    v42 = 0.0;
  }

  if (v40 >= 0.0)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0.0;
  }

  if (v41 > 1.0)
  {
    v41 = 1.0;
  }

  if (v42 > 1.0)
  {
    v42 = 1.0;
  }

  if (v43 > 1.0)
  {
    v43 = 1.0;
  }

  v44 = v41 * red / 255.0 + v42 * green / 255.0 + v43 * blue / 255.0;
  v45 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"mnit_scale_values"];
  v46 = 0.0;
  if (v45)
  {
    v47 = v45;
    v48 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"mnit_scale_values"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v50 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"mnit_scale_values"];
      [PLUtilities scaledPowerBasedOnPoint:v50 withPowerModel:l];
      v46 = v51;
    }
  }

  v52 = v44 * (v46 * l);
  if (v52 > 5000.0 || v52 < 0.0)
  {
    v52 = 0.0;
  }

  v54 = v11 + v10 + v52;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v55 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PLDisplayAgent_calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v55;
    if (calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue__defaultOnce != -1)
    {
      dispatch_once(&calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue__defaultOnce, block);
    }

    if (calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue__classDebugEnabled == 1)
    {
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"mNits: %f\tavgRed: %f\tavgGreen: %f\tavgBlue: %f\tnormalizedColorSum: %.2f\tPower: %.2f", *&l, *&red, *&green, *&blue, *&v44, *&v54];
      v57 = MEMORY[0x277D3F178];
      v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v58 lastPathComponent];
      v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent calculatePowerFromAPL:withAvgRed:withAvgGreen:withAvgBlue:]"];
      [v57 logMessage:v56 fromFile:lastPathComponent fromFunction:v60 fromLineNumber:4832];

      v61 = PLLogCommon();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  return v54;
}

uint64_t __76__PLDisplayAgent_calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue__classDebugEnabled = result;
  return result;
}

- (void)modelDisplayPowerFromIOMFB:(id)b
{
  displayAPLStats = [b displayAPLStats];
  avgPower = [displayAPLStats avgPower];
  [avgPower doubleValue];
  v7 = v6;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (modelDisplayPowerFromIOMFB__defaultOnce != -1)
    {
      dispatch_once(&modelDisplayPowerFromIOMFB__defaultOnce, block);
    }

    if (modelDisplayPowerFromIOMFB__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Display power: %f", *&v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPowerFromIOMFB:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:4846];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke_2064;
    v31 = &__block_descriptor_40_e5_v8__0lu32l8;
    v32 = v15;
    if (modelDisplayPowerFromIOMFB__defaultOnce_2062 != -1)
    {
      dispatch_once(&modelDisplayPowerFromIOMFB__defaultOnce_2062, &v28);
    }

    if (modelDisplayPowerFromIOMFB__classDebugEnabled_2063 == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      sampleTimePrevious = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
      sampleTime = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
      v19 = [v16 stringWithFormat:@"SampleTimePrevious: %@ sampleTime: %@, ", sampleTimePrevious, sampleTime, v28, v29, v30, v31, v32];

      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPowerFromIOMFB:]"];
      [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:4847];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  sampleTimePrevious2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
  sampleTime2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
  [mEMORY[0x277D3F0C0] createPowerEventIntervalWithRootNodeID:56 withPower:sampleTimePrevious2 withStartDate:sampleTime2 withEndDate:v7];
}

uint64_t __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDisplayPowerFromIOMFB__classDebugEnabled = result;
  return result;
}

uint64_t __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke_2064(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDisplayPowerFromIOMFB__classDebugEnabled_2063 = result;
  return result;
}

- (void)modelDynamicDisplayPowerFromAPL:(id)l
{
  displayAPLStats = [l displayAPLStats];
  v5 = displayAPLStats;
  if (displayAPLStats)
  {
    avgRed = [displayAPLStats avgRed];

    if (avgRed)
    {
      v7 = 0.0;
      v8 = 0.0;
      if ([(PLDisplayAgent *)self isDisplayOnNow])
      {
        displaymNits = self->_displaymNits;
        avgRed2 = [v5 avgRed];
        [avgRed2 doubleValue];
        v12 = v11;
        avgGreen = [v5 avgGreen];
        [avgGreen doubleValue];
        v15 = v14;
        avgBlue = [v5 avgBlue];
        [avgBlue doubleValue];
        [(PLDisplayAgent *)self calculatePowerFromAPL:displaymNits withAvgRed:v12 withAvgGreen:v15 withAvgBlue:v17];
        v8 = v18;

        realmNits = self->_realmNits;
        avgRed3 = [v5 avgRed];
        [avgRed3 doubleValue];
        v22 = v21;
        avgGreen2 = [v5 avgGreen];
        [avgGreen2 doubleValue];
        v25 = v24;
        avgBlue2 = [v5 avgBlue];
        [avgBlue2 doubleValue];
        [(PLDisplayAgent *)self calculatePowerFromAPL:realmNits withAvgRed:v22 withAvgGreen:v25 withAvgBlue:v27];
        v29 = v28;

        autobrightnessmNits = self->_autobrightnessmNits;
        avgRed4 = [v5 avgRed];
        [avgRed4 doubleValue];
        v33 = v32;
        avgGreen3 = [v5 avgGreen];
        [avgGreen3 doubleValue];
        v36 = v35;
        avgBlue3 = [v5 avgBlue];
        [avgBlue3 doubleValue];
        [(PLDisplayAgent *)self calculatePowerFromAPL:autobrightnessmNits withAvgRed:v33 withAvgGreen:v36 withAvgBlue:v38];
        v40 = v39;

        v7 = v29 - v40;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v41 = objc_opt_class();
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke;
          v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v67[4] = v41;
          if (modelDynamicDisplayPowerFromAPL__defaultOnce != -1)
          {
            dispatch_once(&modelDynamicDisplayPowerFromAPL__defaultOnce, v67);
          }

          if (modelDynamicDisplayPowerFromAPL__classDebugEnabled == 1)
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayPower: %f\trealPower: %f\tvirtualPower: %f\tsavedPower: %f", *&v8, *&v29, *&v40, v29 - v40];
            v43 = MEMORY[0x277D3F178];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
            lastPathComponent = [v44 lastPathComponent];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPowerFromAPL:]"];
            [v43 logMessage:v42 fromFile:lastPathComponent fromFunction:v46 fromLineNumber:4870];

            v47 = PLLogCommon();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v48 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke_2073;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v48;
        if (modelDynamicDisplayPowerFromAPL__defaultOnce_2071 != -1)
        {
          dispatch_once(&modelDynamicDisplayPowerFromAPL__defaultOnce_2071, block);
        }

        if (modelDynamicDisplayPowerFromAPL__classDebugEnabled_2072 == 1)
        {
          v49 = MEMORY[0x277CCACA8];
          sampleTimePrevious = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
          sampleTime = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
          v52 = [v49 stringWithFormat:@"SampleTimePrevious: %@ sampleTime: %@, ", sampleTimePrevious, sampleTime];

          v53 = MEMORY[0x277D3F178];
          v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          lastPathComponent2 = [v54 lastPathComponent];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPowerFromAPL:]"];
          [v53 logMessage:v52 fromFile:lastPathComponent2 fromFunction:v56 fromLineNumber:4872];

          v57 = PLLogCommon();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      sampleTimePrevious2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
      sampleTime2 = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
      [mEMORY[0x277D3F0C0] createPowerEventIntervalWithRootNodeID:56 withPower:sampleTimePrevious2 withStartDate:sampleTime2 withEndDate:v8];

      if (+[PLDisplayAgent shouldLogALSPowerSaved])
      {
        v61 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
        v62 = objc_alloc(MEMORY[0x277D3F190]);
        sampleTimePrevious3 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
        v64 = [v62 initWithEntryKey:v61 withDate:sampleTimePrevious3];

        v65 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
        [v64 setObject:v65 forKeyedSubscript:@"Power"];

        [(PLOperator *)self logEntry:v64];
      }
    }
  }
}

uint64_t __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDynamicDisplayPowerFromAPL__classDebugEnabled = result;
  return result;
}

uint64_t __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke_2073(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelDynamicDisplayPowerFromAPL__classDebugEnabled_2072 = result;
  return result;
}

- (id)trimConditionsForEntryKey:(id)key forTrimDate:(id)date
{
  keyCopy = key;
  [date timeIntervalSince1970];
  v7 = v6;
  v8 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
  v9 = [keyCopy isEqualToString:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is NULL OR %@<(SELECT max(%@) FROM '%@' WHERE %@<%f)", @"timestamp", @"timestamp", @"timestamp", keyCopy, @"timestamp", v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)dcpSubFrameMap
{
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v2 = [MEMORY[0x277D3F208] hasCapability:3];
    if (v2)
    {
      v3 = 240;
    }

    else
    {
      v3 = 60;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__PLDisplayAgent_dcpSubFrameMap__block_invoke;
    block[3] = &__block_descriptor_37_e5_v8__0l;
    v7 = v3;
    v8 = v2;
    if (dcpSubFrameMap_onceToken != -1)
    {
      dispatch_once(&dcpSubFrameMap_onceToken, block);
    }

    v4 = dcpSubFrameMap_subFrameMap;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __32__PLDisplayAgent_dcpSubFrameMap__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:25];
  v3 = dcpSubFrameMap_subFrameMap;
  dcpSubFrameMap_subFrameMap = v2;

  for (i = 1; i != 26; ++i)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"subframes(%d)", (i - 1)];
    v6 = *(a1 + 32) / i;
    if ((![MEMORY[0x277D3F208] isiPhone] || (*(a1 + 36) & 1) == 0) && !objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClassIsOneOf:", 100080, 0) || (v7 = 10.0, v6 >= 10))
    {
      if (v6 <= 24)
      {
        v8 = 24;
      }

      else
      {
        v8 = v6;
      }

      v7 = v8;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    [dcpSubFrameMap_subFrameMap setObject:v9 forKeyedSubscript:v5];
  }
}

- (void)init
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLDisplayAgent_init__block_invoke_1431_cold_2(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*a1 pendingBacklightEntry];
  v3 = MEMORY[0x277D3F268];
  v4 = [*a1 pendingBacklightEntryDate];
  v5 = [v3 formattedStringForDate:v4];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __22__PLDisplayAgent_init__block_invoke_1431_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLDisplayAgent_init__block_invoke_1431_cold_4(id *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D3F268];
  v4 = [*a1 backlightFilterTimer];
  v5 = [v4 fireDate];
  v6 = [v3 formattedStringForDate:v5];
  v7 = [MEMORY[0x277D3F268] formattedStringForDate:a2];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);

  v13 = *MEMORY[0x277D85DE8];
}

void __22__PLDisplayAgent_init__block_invoke_2_1452_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLDisplayAgent_init__block_invoke_2_1452_cold_2(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*a1 currMonoTimestamp];
  [*a1 currAFKSystemTimestamp];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __46__PLDisplayAgent_initTaskOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for logAODChange: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Received msg at timestamp: %llu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Final data to be logged: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke_cold_6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "Error unserializing buffer: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointDisplayBacklightWithState:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "IOMFB received power state: %llu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initAODState:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "initial screen state received by AOD is %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAODState:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logAODState:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AOD state we log is %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "screen state received by AOD is %ld", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardDisplayWithRawData:(void *)a1 withDate:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"lux"];
  [v1 doubleValue];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardDisplayWithRawData:withDate:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Event Forward display entry: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardLuxStats:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "LuxStats gain changed, using last valid RearLux value %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardLuxStats:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardRampInfo:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardCurveUpdate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "CurveUpdate is %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardCurveUpdate:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardALSSamplesBeforeWake:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardAmbientLight:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "We Recieved notification for AODRampTelemetry: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "We Recieved notification for AODCurveUpdate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "We Recieved notification for AODWakeFromALSThreshold: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "We Recieved notification for CBAmbientLight: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "@kCBFinalBrightnessCommit: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766_cold_1(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*a1 pendingBacklightEntry];
  v3 = MEMORY[0x277D3F268];
  v4 = [*a1 pendingBacklightEntryDate];
  v5 = [v3 formattedStringForDate:v4];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277D3F268] formattedStringForDate:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "BrightnessTransaction payload: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Received notification for CBrLuxStats: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)__FrameBufferEventCallback:(int *)a1 .cold.1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)qualifyDisplayPower:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end