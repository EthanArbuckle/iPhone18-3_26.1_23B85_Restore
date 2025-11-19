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
- (BOOL)updateDisplayIOReportStats:(id)a3 logZeroFramesOnlyOnce:(BOOL)a4;
- (PLDisplayAgent)init;
- (__IOHIDEventSystemClient)setUpIOHIDTouchSystemClient;
- (double)averageFrameRateFromIOMFBScanout:(id)a3;
- (double)calculatePowerFromAPL:(double)a3 withAvgRed:(double)a4 withAvgGreen:(double)a5 withAvgBlue:(double)a6;
- (double)uAmpsToDisplayPower:(double)a3;
- (id)getIOMFBSubFrameMap;
- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4;
- (unint64_t)getBacklightEnabledTimestamp:(unsigned int)a3;
- (void)__FrameBufferEventCallback:(__IOMobileFramebuffer *)a3;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)cleanUpAFKInterfaces;
- (void)clearDisplayAccountingEvents;
- (void)dealloc;
- (void)extractDataWithEntry:(id)a3 withColName:(id)a4 withDataArray:(id)a5;
- (void)fillInBuiltinDisplayBrightnessParameters:(id)a3;
- (void)handleAFKInterfaceMsg:(id)a3;
- (void)handleBrightnessClientNotification:(id)a3 withValue:(id)a4;
- (void)handleSBC;
- (void)initAODState:(int64_t)a3;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)log;
- (void)logAODChange;
- (void)logBlueLightDataWithDictionary:(id)a3;
- (void)logBrightnessDataWithEntryKey:(id)a3 withColName:(id)a4 withValue:(id)a5;
- (void)logDisplayAPL;
- (void)logDisplayAZL;
- (void)logDisplayEntry:(id)a3;
- (void)logEventBackwardALSSamplesBeforeWake:(id)a3;
- (void)logEventBackwardALSThreshold:(id)a3;
- (void)logEventBackwardAmbientLight:(id)a3;
- (void)logEventBackwardCurveUpdate:(id)a3;
- (void)logEventBackwardRampInfo:(id)a3;
- (void)logEventBackwardTouch;
- (void)logEventForwardALSEnabled;
- (void)logEventForwardALSLux:(unint64_t)a3;
- (void)logEventForwardALSUserPreferencesEntryWithLux:(id)a3;
- (void)logEventForwardALSUserPreferencesWithCurrLux;
- (void)logEventForwardColorAdaptationMode;
- (void)logEventForwardDisplay;
- (void)logEventForwardDisplayBacklight;
- (void)logEventForwardDisplayWithRawData:(id)a3 withDate:(id)a4;
- (void)logEventForwardExtendedALSUserPreferences:(id)a3;
- (void)logEventForwardLuxStats:(id)a3;
- (void)logEventNonePanelStats;
- (void)logEventPointDisplay;
- (void)logEventPointDisplayBacklight;
- (void)logEventPointDisplayBacklightWithState:(unint64_t)a3;
- (void)logEventPointDisplayMIE;
- (void)logEventPointKeyboardBrightness:(double)a3 withDate:(id)a4;
- (void)logEventPointMultitouchWithPayload:(id)a3;
- (void)logEventPointUserBrightnessCommitted:(double)a3;
- (void)modelDisplayPower:(id)a3;
- (void)modelDisplayPowerFromIOMFB:(id)a3;
- (void)modelDynamicDisplayPower:(id)a3;
- (void)modelDynamicDisplayPowerFromAPL:(id)a3;
- (void)qualifyDisplayPower:(id)a3;
- (void)reArmCallback;
- (void)reArmUAmpsCallback;
- (void)updateLastForegroundAppAPL:(id)a3;
@end

@implementation PLDisplayAgent

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 logDisplayAPL];
  [*(a1 + 32) updateLastForegroundAppAPL:v4];
}

- (void)logDisplayAPL
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogAPL])
  {
    v3 = objc_alloc(MEMORY[0x277D3F190]);
    v4 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"APLStats"];
    v5 = [v3 initWithEntryKey:v4];

    v6 = [(PLDisplayAgent *)self displayIOReportStats];
    v7 = -[PLDisplayAgent updateDisplayIOReportStats:logZeroFramesOnlyOnce:](self, "updateDisplayIOReportStats:logZeroFramesOnlyOnce:", v6, [MEMORY[0x277D3F258] isPerfPowerMetricd] ^ 1);

    if (v7 && (-[PLDisplayAgent displayIOReportStats](self, "displayIOReportStats"), v8 = objc_claimAutoreleasedReturnValue(), [v8 displayAPLStats], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      [v5 setObject:self->_lastForegroundAppAPL forKey:@"bundleID"];
      v10 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      v11 = [v10 avgRed];
      [v5 setObject:v11 forKey:@"AvgRed"];

      v12 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      v13 = [v12 avgGreen];
      [v5 setObject:v13 forKey:@"AvgGreen"];

      v14 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      v15 = [v14 avgBlue];
      [v5 setObject:v15 forKey:@"AvgBlue"];

      v16 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      v17 = [v16 frames];
      [v5 setObject:v17 forKey:@"Frames"];

      v18 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      v19 = [v18 avgPower];
      [v5 setObject:v19 forKey:@"AvgPower"];

      v20 = [(PLDisplayIOReportStats *)self->_displayIOReportStats displayAPLStats];
      v21 = [v20 avgAPL];
      [v5 setObject:v21 forKey:@"AvgAPL"];

      if ([MEMORY[0x277D3F258] isPerfPowerMetricd] && +[PLDisplayAgent shouldModelPowerFromAPL](PLDisplayAgent, "shouldModelPowerFromAPL"))
      {
        v22 = [(PLDisplayAgent *)self iokitBacklight];

        if (v22)
        {
          v23 = [(PLDisplayAgent *)self iokitBacklight];
          v24 = [v23 propertiesForKey:@"IODisplayParameters"];

          v25 = [v24 objectForKeyedSubscript:@"brightness"];
          v26 = [v25 objectForKeyedSubscript:@"value"];

          if ([v26 intValue] < 1)
          {
            [v5 setObject:&unk_282C116B8 forKeyedSubscript:@"AvgPower"];
          }

          else
          {
            v27 = [v24 objectForKeyedSubscript:@"BrightnessMilliNits"];
            v49 = [v27 objectForKeyedSubscript:@"value"];

            [v49 doubleValue];
            v29 = v28;
            v48 = [(PLDisplayAgent *)self displayIOReportStats];
            v47 = [v48 displayAPLStats];
            v46 = [v47 avgRed];
            [v46 doubleValue];
            v31 = v30;
            v45 = [(PLDisplayAgent *)self displayIOReportStats];
            v32 = [v45 displayAPLStats];
            v33 = [v32 avgGreen];
            [v33 doubleValue];
            v35 = v34;
            v36 = [(PLDisplayAgent *)self displayIOReportStats];
            v37 = [v36 displayAPLStats];
            [v37 avgBlue];
            v38 = v50 = v24;
            [v38 doubleValue];
            [(PLDisplayAgent *)self calculatePowerFromAPL:v29 withAvgRed:v31 withAvgGreen:v35 withAvgBlue:v39];
            v41 = v40;

            v42 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
            [v5 setObject:v42 forKeyedSubscript:@"AvgPower"];

            v24 = v50;
          }
        }

        else
        {
          v24 = PLLogDisplay();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "iokitBacklight is nil; skipping power modeling", buf, 2u);
          }
        }
      }

      [(PLOperator *)self logEntry:v5];
      if (+[PLDisplayAgent shouldModelPowerFromAPL])
      {
        [(PLDisplayAgent *)self modelDynamicDisplayPowerFromAPL:self->_displayIOReportStats];
      }

      else if (+[PLDisplayAgent shouldModelPowerFromIOMFB])
      {
        [(PLDisplayAgent *)self modelDisplayPowerFromIOMFB:self->_displayIOReportStats];
      }
    }

    else if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
    {
      v52[0] = v5;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      [(PLOperator *)self postEntries:v43];
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldLogAPL
{
  if (([MEMORY[0x277D3F208] hasDCP] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "hasCapability:", 0) & 1) != 0 || +[PLDisplayAgent shouldModelPowerFromAPL](PLDisplayAgent, "shouldModelPowerFromAPL"))
  {
    return 1;
  }

  return +[PLDisplayAgent shouldModelPowerFromIOMFB];
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

+ (BOOL)shouldLogUserBrightness
{
  if (qword_2811F4A18 != -1)
  {
    dispatch_once(&qword_2811F4A18, &__block_literal_global_1853);
  }

  return byte_2811F490D;
}

+ (BOOL)shouldModelPowerFromAPL
{
  if (qword_2811F4A38 != -1)
  {
    dispatch_once(&qword_2811F4A38, &__block_literal_global_1911);
  }

  return byte_2811F4911;
}

+ (BOOL)shouldModelPowerFromIOMFB
{
  if (qword_2811F4A40 != -1)
  {
    dispatch_once(&qword_2811F4A40, &__block_literal_global_1913);
  }

  return byte_2811F4912;
}

void __22__PLDisplayAgent_init__block_invoke_1431(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) pendingBacklightEntry];

  if (v4)
  {
    if ([*(a1 + 32) isDebugEnabled])
    {
      v5 = [PLEventForwardDisplayEntry alloc];
      v6 = [*(a1 + 32) pendingBacklightEntry];
      v7 = [(PLEventForwardDisplayEntry *)v5 initEntryWithRawData:v6];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v8 = *(a1 + 32);
        v9 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __22__PLDisplayAgent_init__block_invoke_2_1433;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v9;
        if (qword_2811F4938 != -1)
        {
          dispatch_once(&qword_2811F4938, block);
        }

        if (byte_2811F48F1 == 1)
        {
          v10 = MEMORY[0x277CCACA8];
          v11 = [v7 objectForKeyedSubscript:@"Brightness"];
          v12 = MEMORY[0x277D3F268];
          v13 = [*(a1 + 32) pendingBacklightEntryDate];
          v14 = [v12 formattedStringForDate:v13];
          v15 = [v10 stringWithFormat:@"Writing backlight entry:%@ with date: %@", v11, v14];

          v16 = MEMORY[0x277D3F178];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v18 = [v17 lastPathComponent];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke"];
          [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:1497];

          v20 = PLLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v40 = v15;
            _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    v21 = PLLogDisplay();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v29 = [*(a1 + 32) pendingBacklightEntry];
      v30 = MEMORY[0x277D3F268];
      v31 = [*(a1 + 32) pendingBacklightEntryDate];
      v32 = [v30 formattedStringForDate:v31];
      *buf = 138412546;
      v40 = v29;
      v41 = 2112;
      v42 = v32;
      _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "BackLight entry not nill. Writing backlight entry:%@ with date: %@", buf, 0x16u);
    }

    v22 = *(a1 + 32);
    v23 = [v22 pendingBacklightEntry];
    v24 = [*(a1 + 32) pendingBacklightEntryDate];
    [v22 logEventForwardDisplayWithRawData:v23 withDate:v24];

    v25 = PLLogDisplay();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "Setting pending backlight entry and date as nil", buf, 2u);
    }

    [*(a1 + 32) setPendingBacklightEntry:0];
    [*(a1 + 32) setPendingBacklightEntryDate:0];
  }

  else
  {
    v26 = PLLogDisplay();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v33 = MEMORY[0x277D3F268];
      v34 = [*(a1 + 32) backlightFilterTimer];
      v35 = [v34 fireDate];
      v36 = [v33 formattedStringForDate:v35];
      v37 = [MEMORY[0x277D3F268] formattedStringForDate:v3];
      *buf = 138412546;
      v40 = v36;
      v41 = 2112;
      v42 = v37;
      _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "Stop backlight entry filter timer timer.fireDate=%@ fireDate=%@", buf, 0x16u);
    }

    v27 = [*(a1 + 32) backlightFilterTimer];
    [v27 setTimerActive:0];
  }

  v28 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldLogFromDCP
{
  if (qword_2811F4A10 != -1)
  {
    dispatch_once(&qword_2811F4A10, &__block_literal_global_1851);
  }

  return byte_2811F490C;
}

void __22__PLDisplayAgent_init__block_invoke_2_1452(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) currMonoTimestamp];
  v3 = v2;
  [*(a1 + 32) currAFKSystemTimestamp];
  v5 = v4;
  [*(a1 + 32) currMonoTimestamp];
  if (v6 <= 0.0 || ([*(a1 + 32) currAFKSystemTimestamp], v7 <= 0.0) || (v8 = v3 - v5, objc_msgSend(*(a1 + 32), "currAFKSystemTimeOffset"), v8 == v9))
  {
    v11 = [*(a1 + 32) dcpTimeoffsetCalibTimer];
    [v11 setTimerActive:0];

    v12 = PLLogDisplay();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Canceling AFK time calibration timer", &v17, 2u);
    }
  }

  else
  {
    v10 = PLLogDisplay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 32) currMonoTimestamp];
      v15 = v14;
      [*(a1 + 32) currAFKSystemTimestamp];
      v17 = 134218496;
      v18 = v8;
      v19 = 2048;
      v20 = v15;
      v21 = 2048;
      v22 = v16;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "New AFK time offset: %f, from mono timestamp: %f, afk time: %f", &v17, 0x20u);
    }

    [*(a1 + 32) setCurrAFKSystemTimeOffset:v8];
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldLogLuxStats
{
  v2 = [MEMORY[0x277D3F1B8] isiPhone];
  if (v2)
  {
    v3 = MEMORY[0x277D3F1B8];

    LOBYTE(v2) = [v3 hasRearALS];
  }

  return v2;
}

void __22__PLDisplayAgent_init__block_invoke_1456(uint64_t a1, uint64_t a2, int a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if (a3 == -536870608)
  {
    v4 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2 forKey:@"IODisplayParameters"];
    v5 = +[PLDisplayAgent shouldLogFromDCP];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [*(a1 + 32) pendingBacklightEntry];

      if (!v7)
      {
LABEL_26:

        goto LABEL_27;
      }

      v8 = [v4 objectForKey:@"brightness"];
      v9 = [v8 objectForKey:@"value"];
      v10 = [v9 longValue];

      v11 = [v8 objectForKey:@"min"];
      v12 = [v11 longValue];

      v13 = [v8 objectForKey:@"max"];
      v14 = [v13 longValue];

      v15 = [MEMORY[0x277CCABB0] numberWithDouble:(v10 - v12) * 100.0 / (v14 - v12)];
      v16 = [*(a1 + 32) pendingBacklightEntry];
      [v16 setObject:v15 forKeyedSubscript:@"Brightness"];

      v17 = [MEMORY[0x277CCABB0] numberWithLong:v10];
      v18 = [*(a1 + 32) pendingBacklightEntry];
      [v18 setObject:v17 forKeyedSubscript:@"SliderValue"];
    }

    else
    {
      v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
      [v6 setPendingBacklightEntry:v19];

      v20 = [*(a1 + 32) pendingBacklightEntryDate];

      if (!v20)
      {
        v21 = [MEMORY[0x277CBEAA8] monotonicDate];
        [*(a1 + 32) setPendingBacklightEntryDate:v21];
      }

      if ([*(a1 + 32) isDebugEnabled])
      {
        v22 = [[PLEventForwardDisplayEntry alloc] initEntryWithRawData:v4];
        v23 = [PLEventForwardDisplayEntry alloc];
        v24 = [*(a1 + 32) pendingBacklightEntry];
        v25 = [(PLEventForwardDisplayEntry *)v23 initEntryWithRawData:v24];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v26 = *(a1 + 32);
          v27 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __22__PLDisplayAgent_init__block_invoke_2_1468;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v27;
          if (qword_2811F4948 != -1)
          {
            dispatch_once(&qword_2811F4948, block);
          }

          if (byte_2811F48F3 == 1)
          {
            v28 = MEMORY[0x277CCACA8];
            v29 = [v22 objectForKeyedSubscript:@"Brightness"];
            v30 = [v25 objectForKeyedSubscript:@"Brightness"];
            v31 = MEMORY[0x277D3F268];
            v32 = [*(a1 + 32) pendingBacklightEntryDate];
            v33 = [v31 formattedStringForDate:v32];
            v34 = [v28 stringWithFormat:@"rawData.brightness=%@ self.pendingBacklightEntry.brightness=%@ self.pendingBacklightEntryDate=%@", v29, v30, v33];

            v35 = MEMORY[0x277D3F178];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
            v37 = [v36 lastPathComponent];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke"];
            [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:1581];

            v39 = PLLogCommon();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v57 = v34;
              _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }
      }

      v40 = [*(a1 + 32) backlightFilterTimer];
      v41 = [v40 timerActive];

      if (v41)
      {
        goto LABEL_26;
      }

      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v42 = *(a1 + 32);
        v43 = objc_opt_class();
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __22__PLDisplayAgent_init__block_invoke_1474;
        v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v54[4] = v43;
        if (qword_2811F4950 != -1)
        {
          dispatch_once(&qword_2811F4950, v54);
        }

        if (byte_2811F48F4 == 1)
        {
          v44 = MEMORY[0x277CCACA8];
          v45 = [MEMORY[0x277D3F268] formattedStringForDate:v8];
          v46 = [v44 stringWithFormat:@"Start backlight entry filter timer fireDate=%@", v45];

          v47 = MEMORY[0x277D3F178];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v49 = [v48 lastPathComponent];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]_block_invoke_2"];
          [v47 logMessage:v46 fromFile:v49 fromFunction:v50 fromLineNumber:1586];

          v51 = PLLogCommon();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v57 = v46;
            _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v52 = [*(a1 + 32) backlightFilterTimer];
      [v52 setFireDate:v8];
    }

    goto LABEL_26;
  }

LABEL_27:
  v53 = *MEMORY[0x277D85DE8];
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

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1550(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logDisplayAPL];
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = a1;
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
    v24 = &unk_282C1C1D8;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26[0] = v20;
    v25[1] = *MEMORY[0x277D3F540];
    v21[0] = @"B_input";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v22[0] = v18;
    v21[1] = @"B_min";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat];
    v22[1] = v16;
    v21[2] = @"I_input";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_RealFormat];
    v22[2] = v14;
    v21[3] = @"I_nominal";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v22[3] = v4;
    v21[4] = @"I_threshold";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v22[4] = v6;
    v21[5] = @"Scalar";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v22[5] = v8;
    v21[6] = @"Slope";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat];
    v22[6] = v10;
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
    v16[0] = &unk_282C1C1E8;
    v16[1] = &unk_282C14238;
    v3 = *MEMORY[0x277D3F590];
    v15[2] = *MEMORY[0x277D3F578];
    v15[3] = v3;
    v16[2] = @"Block";
    v16[3] = &unk_282C11610;
    v15[4] = *MEMORY[0x277D3F4D8];
    v16[4] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
    v17[1] = *MEMORY[0x277D3F540];
    v18[0] = v4;
    v13[0] = @"Block";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_StringFormat];
    v13[1] = @"Active";
    v14[0] = v6;
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v14[1] = v8;
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
    v15[0] = &unk_282C1C1D8;
    v15[1] = &unk_282C14250;
    v14[2] = *MEMORY[0x277D3F550];
    v15[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12 = @"UserBrightness";
    v4 = *MEMORY[0x277D3F5B0];
    v10[0] = *MEMORY[0x277D3F5A8];
    v10[1] = v4;
    v11[0] = &unk_282C11628;
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
      v36[0] = &unk_282C1C1F8;
      v36[1] = MEMORY[0x277CBEC28];
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      v38[0] = v19;
      v37[1] = *MEMORY[0x277D3F540];
      v33[0] = @"fingerNum";
      v18 = [MEMORY[0x277D3F198] sharedInstance];
      v26 = [v18 commonTypeDict_IntegerFormat];
      v34[0] = v26;
      v33[1] = @"peak";
      v25 = [MEMORY[0x277D3F198] sharedInstance];
      v24 = [v25 commonTypeDict_IntegerFormat];
      v34[1] = v24;
      v33[2] = @"peakMillimetersFromEdge";
      v23 = [MEMORY[0x277D3F198] sharedInstance];
      v22 = [v23 commonTypeDict_RealFormat];
      v34[2] = v22;
      v33[3] = @"peakProximity";
      v21 = [MEMORY[0x277D3F198] sharedInstance];
      v20 = [v21 commonTypeDict_RealFormat];
      v34[3] = v20;
      v33[4] = @"peakMajorRadius";
      v3 = [MEMORY[0x277D3F198] sharedInstance];
      v4 = [v3 commonTypeDict_RealFormat];
      v34[4] = v4;
      v33[5] = @"peakMinorRadius";
      v5 = [MEMORY[0x277D3F198] sharedInstance];
      v6 = [v5 commonTypeDict_RealFormat];
      v34[5] = v6;
      v33[6] = @"touchStartTime";
      v7 = [MEMORY[0x277D3F198] sharedInstance];
      v8 = [v7 commonTypeDict_RealFormat];
      v34[6] = v8;
      v33[7] = @"touchStopTime";
      v9 = [MEMORY[0x277D3F198] sharedInstance];
      v10 = [v9 commonTypeDict_RealFormat];
      v34[7] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:8];
      v38[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

      v13 = v18;
      v14 = v19;
    }

    else
    {
      v31[0] = *MEMORY[0x277D3F4E8];
      v15 = *MEMORY[0x277D3F550];
      v29[0] = *MEMORY[0x277D3F568];
      v29[1] = v15;
      v30[0] = &unk_282C1C1E8;
      v30[1] = MEMORY[0x277CBEC28];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      v32[0] = v14;
      v31[1] = *MEMORY[0x277D3F540];
      v27[0] = @"fingerNum";
      v13 = [MEMORY[0x277D3F198] sharedInstance];
      v26 = [v13 commonTypeDict_IntegerFormat];
      v28[0] = v26;
      v27[1] = @"peakProximity";
      v25 = [MEMORY[0x277D3F198] sharedInstance];
      v24 = [v25 commonTypeDict_IntegerFormat];
      v28[1] = v24;
      v27[2] = @"peakProximityMillimetersFromEdge";
      v23 = [MEMORY[0x277D3F198] sharedInstance];
      v22 = [v23 commonTypeDict_RealFormat];
      v28[2] = v22;
      v27[3] = @"peakProximityMajorRadius";
      v21 = [MEMORY[0x277D3F198] sharedInstance];
      v20 = [v21 commonTypeDict_RealFormat];
      v28[3] = v20;
      v27[4] = @"peakProximityMinorRadius";
      v3 = [MEMORY[0x277D3F198] sharedInstance];
      v4 = [v3 commonTypeDict_RealFormat];
      v28[4] = v4;
      v27[5] = @"touchStartTime";
      v5 = [MEMORY[0x277D3F198] sharedInstance];
      v6 = [v5 commonTypeDict_RealFormat];
      v28[5] = v6;
      v27[6] = @"touchStopTime";
      v7 = [MEMORY[0x277D3F198] sharedInstance];
      v8 = [v7 commonTypeDict_RealFormat];
      v28[6] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:7];
      v32[1] = v9;
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
    v12 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"backlightEnabledTimestamp";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v10 = v4;
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
    v12 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"KeyboardBrightness";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v10 = v4;
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
    v53[0] = &unk_282C1C208;
    v53[1] = &unk_282C14268;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
    v55[0] = v39;
    v54[1] = *MEMORY[0x277D3F540];
    v50[0] = @"Brightness";
    v3 = +[PLDisplayAgent shouldLogFromDCP];
    v4 = MEMORY[0x277D3F5A8];
    v38 = v3;
    if (v3)
    {
      v37 = [MEMORY[0x277D3F198] sharedInstance];
      v5 = [v37 commonTypeDict_RealFormat];
    }

    else
    {
      v7 = *MEMORY[0x277D3F5B0];
      v48[0] = *MEMORY[0x277D3F5A8];
      v48[1] = v7;
      v49[0] = &unk_282C11628;
      v49[1] = @"%";
      v48[2] = *MEMORY[0x277D3F4E0];
      v49[2] = MEMORY[0x277CBEC38];
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
      v37 = v5;
    }

    v30 = v5;
    v51[0] = v5;
    v50[1] = @"SliderValue";
    v8 = +[PLDisplayAgent shouldLogFromDCP];
    v9 = &unk_282C11640;
    v10 = MEMORY[0x277D3F538];
    v36 = v8;
    if (v8)
    {
      v35 = [MEMORY[0x277D3F198] sharedInstance];
      v11 = [v35 commonTypeDict_IntegerFormat];
    }

    else
    {
      v12 = *MEMORY[0x277D3F538];
      v46[0] = *v4;
      v46[1] = v12;
      v47[0] = &unk_282C11640;
      v47[1] = &unk_282C14280;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
      v35 = v11;
    }

    v29 = v11;
    v51[1] = v11;
    v50[2] = @"lux";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v51[2] = v33;
    v50[3] = @"iDAC";
    v32 = +[PLDisplayAgent shouldLogFromDCP];
    if (v32)
    {
      v31 = [MEMORY[0x277D3F198] sharedInstance];
      v13 = [v31 commonTypeDict_IntegerFormat];
    }

    else
    {
      v14 = *v10;
      v44[0] = *v4;
      v44[1] = v14;
      v45[0] = &unk_282C11640;
      v45[1] = &unk_282C14298;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
      v31 = v13;
    }

    v51[3] = v13;
    v50[4] = @"mNits";
    v15 = +[PLDisplayAgent shouldLogFromDCP];
    if (v15)
    {
      v16 = [MEMORY[0x277D3F198] sharedInstance];
      v17 = [v16 commonTypeDict_IntegerFormat];
    }

    else
    {
      v18 = *v10;
      v42[0] = *v4;
      v42[1] = v18;
      v43[0] = &unk_282C11640;
      v43[1] = &unk_282C142B0;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
      v16 = v17;
    }

    v19 = v17;
    v51[4] = v17;
    v50[5] = @"uAmps";
    v20 = +[PLDisplayAgent shouldLogFromDCP];
    if (v20)
    {
      v9 = [MEMORY[0x277D3F198] sharedInstance];
      v21 = [v9 commonTypeDict_IntegerFormat];
    }

    else
    {
      v22 = *v10;
      v40[0] = *v4;
      v40[1] = v22;
      v41[0] = &unk_282C11640;
      v41[1] = &unk_282C142C8;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
    }

    v51[5] = v21;
    v50[6] = @"EDRHeadroom";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v23 commonTypeDict_IntegerFormat];
    v51[6] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:7];
    v55[1] = v25;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];

    if (v20)
    {

      v21 = v9;
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
  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"DisplayPower";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v10 = v4;
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
    v103[0] = &unk_282C1C218;
    v103[1] = &unk_282C11658;
    v102[2] = *MEMORY[0x277D3F588];
    v103[2] = &unk_282C11670;
    v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];
    v105[0] = v99;
    v104[1] = *MEMORY[0x277D3F540];
    v100[0] = @"E0a";
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v98 commonTypeDict_IntegerFormat];
    v101[0] = v97;
    v100[1] = @"E0b";
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v95 = [v96 commonTypeDict_IntegerFormat];
    v101[1] = v95;
    v100[2] = @"E1";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v93 = [v94 commonTypeDict_IntegerFormat];
    v101[2] = v93;
    v100[3] = @"E2";
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_IntegerFormat];
    v101[3] = v91;
    v100[4] = @"L0a";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_RealFormat];
    v101[4] = v89;
    v100[5] = @"L0b";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v87 = [v88 commonTypeDict_RealFormat];
    v101[5] = v87;
    v100[6] = @"L1";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_RealFormat];
    v101[6] = v85;
    v100[7] = @"L2";
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_RealFormat];
    v101[7] = v83;
    v100[8] = @"S";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v82 commonTypeDict_RealFormat];
    v101[8] = v81;
    v100[9] = @"version";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_IntegerFormat];
    v101[9] = v79;
    v100[10] = @"Lux";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_IntegerFormat];
    v101[10] = v77;
    v100[11] = @"thirdSlope";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_RealFormat];
    v101[11] = v75;
    v100[12] = @"aabParamsUpdateOnly";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_BoolFormat];
    v101[12] = v73;
    v100[13] = @"auroraFactor";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_RealFormat];
    v101[13] = v71;
    v100[14] = @"autobrightnessEnabled";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_BoolFormat];
    v101[14] = v69;
    v100[15] = @"colorAdaptationStrength";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_RealFormat];
    v101[15] = v67;
    v100[16] = @"colorAdaptationMode";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_IntegerFormat];
    v101[16] = v65;
    v100[17] = @"cpmsMitigationLimitingBrightness";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_BoolFormat];
    v101[17] = v63;
    v100[18] = @"darkThemeApplied";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_BoolFormat];
    v101[18] = v61;
    v100[19] = @"delayedAPCE";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_IntegerFormat];
    v101[19] = v59;
    v100[20] = @"delayedAPCEStatus";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_IntegerFormat];
    v101[20] = v57;
    v100[21] = @"ecoModeEnabled";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_BoolFormat];
    v101[21] = v55;
    v100[22] = @"ecoModeFactor";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_IntegerFormat];
    v101[22] = v53;
    v100[23] = @"edrHeadroom";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_RealFormat];
    v101[23] = v51;
    v100[24] = @"landscapeOrientation";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_BoolFormat];
    v101[24] = v49;
    v100[25] = @"localTimestamp";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_DateFormat];
    v101[25] = v47;
    v100[26] = @"nits";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat];
    v101[26] = v45;
    v100[27] = @"proxMitigationTriggered";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_BoolFormat];
    v101[27] = v43;
    v100[28] = @"rearLux";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_IntegerFormat];
    v101[28] = v41;
    v100[29] = @"rearLuxInUse";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_BoolFormat];
    v101[29] = v39;
    v100[30] = @"touchMitigationTriggered";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_BoolFormat];
    v101[30] = v37;
    v100[31] = @"trustedLux";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v101[31] = v35;
    v100[32] = @"aabParamsUpdateReason";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v101[32] = v33;
    v100[33] = @"inactiveLength";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v101[33] = v31;
    v100[34] = @"inactiveStart";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v101[34] = v29;
    v100[35] = @"alternativeE0a";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v101[35] = v27;
    v100[36] = @"alternativeE0b";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v101[36] = v25;
    v100[37] = @"alternativeE1";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v101[37] = v23;
    v100[38] = @"alternativeE2";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v101[38] = v21;
    v100[39] = @"alternativeL0a";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v101[39] = v19;
    v100[40] = @"alternativeL0b";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v101[40] = v17;
    v100[41] = @"alternativeL1";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v101[41] = v15;
    v100[42] = @"alternativeL2";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v101[42] = v5;
    v100[43] = @"alternativeThirdSlope";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v101[43] = v7;
    v100[44] = @"nitsDelta";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v101[44] = v9;
    v100[45] = @"nitsDeltaAlternative";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v101[45] = v11;
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
  v13[0] = &unk_282C1C1D8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"ALSEnabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
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
    v12 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"Power";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v10 = v4;
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
    v13[0] = &unk_282C1C1D8;
    v13[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"CAModeEnabled";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_BoolFormat];
    v11 = v5;
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
    v16 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"BlueReductionEnabled";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_BoolFormat];
    v14[0] = v4;
    v13[1] = @"BlueReductionMode";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v14[1] = v6;
    v13[2] = @"BlueReductionSunScheduleAllowed";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_BoolFormat];
    v14[2] = v8;
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
    v20 = &unk_282C1C1D8;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v16;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"cappedLuxForAAB";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v18[0] = v14;
    v17[1] = @"frontNits";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v18[1] = v3;
    v17[2] = @"gainChanged";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_BoolFormat];
    v18[2] = v5;
    v17[3] = @"rearNits";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v18[3] = v7;
    v17[4] = @"rearLux";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v18[4] = v9;
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
    v50 = &unk_282C1C1D8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v52[0] = v21;
    v51[1] = *MEMORY[0x277D3F540];
    v47[0] = @"Unknown";
    v3 = *MEMORY[0x277D3F5B0];
    v44[0] = *MEMORY[0x277D3F5A8];
    v2 = v44[0];
    v44[1] = v3;
    v46[0] = &unk_282C11628;
    v46[1] = @"s";
    v45 = *MEMORY[0x277D3F538];
    v4 = v45;
    v46[2] = &unk_282C142E0;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v44 count:3];
    v48[0] = v20;
    v47[1] = @"Active";
    v42[0] = v2;
    v42[1] = v3;
    v43[0] = &unk_282C11628;
    v43[1] = @"s";
    v42[2] = v4;
    v43[2] = &unk_282C142F8;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v48[1] = v19;
    v47[2] = @"Ready";
    v40[0] = v2;
    v40[1] = v3;
    v41[0] = &unk_282C11628;
    v41[1] = @"s";
    v40[2] = v4;
    v41[2] = &unk_282C14310;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v48[2] = v18;
    v47[3] = @"AutoReady";
    v38[0] = v2;
    v38[1] = v3;
    v39[0] = &unk_282C11628;
    v39[1] = @"s";
    v38[2] = v4;
    v39[2] = &unk_282C14328;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v48[3] = v17;
    v47[4] = @"UILock";
    v36[0] = v2;
    v36[1] = v3;
    v37[0] = &unk_282C11628;
    v37[1] = @"s";
    v36[2] = v4;
    v37[2] = &unk_282C14340;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
    v48[4] = v16;
    v47[5] = @"FaceDetected";
    v34[0] = v2;
    v34[1] = v3;
    v35[0] = &unk_282C11628;
    v35[1] = @"s";
    v34[2] = v4;
    v35[2] = &unk_282C14358;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v48[5] = v15;
    v47[6] = @"StationaryFingers";
    v32[0] = v2;
    v32[1] = v3;
    v33[0] = &unk_282C11628;
    v33[1] = @"s";
    v32[2] = v4;
    v33[2] = &unk_282C14370;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v48[6] = v14;
    v47[7] = @"AutoScan";
    v30[0] = v2;
    v30[1] = v3;
    v31[0] = &unk_282C11628;
    v31[1] = @"s";
    v30[2] = v4;
    v31[2] = &unk_282C14388;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v48[7] = v5;
    v47[8] = @"VSFOMCal";
    v28[0] = v2;
    v28[1] = v3;
    v29[0] = &unk_282C11628;
    v29[1] = @"s";
    v28[2] = v4;
    v29[2] = &unk_282C143A0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v48[8] = v6;
    v47[9] = @"Anticipate";
    v26[0] = v2;
    v26[1] = v3;
    v27[0] = &unk_282C11628;
    v27[1] = @"s";
    v26[2] = v4;
    v27[2] = &unk_282C143B8;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v48[9] = v7;
    v47[10] = @"Off";
    v24[0] = v2;
    v24[1] = v3;
    v25[0] = &unk_282C11628;
    v25[1] = @"s";
    v24[2] = v4;
    v25[2] = &unk_282C143D0;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v48[10] = v8;
    v47[11] = @"On";
    v22[0] = v2;
    v22[1] = v3;
    v23[0] = &unk_282C11628;
    v23[1] = @"s";
    v22[2] = v4;
    v23[2] = &unk_282C143E8;
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
    v258 = &unk_282C1C228;
    v254 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v258 forKeys:&v257 count:1];
    v260[0] = v254;
    v259[1] = *MEMORY[0x277D3F540];
    v255[0] = @"DCBins_0";
    v253 = [MEMORY[0x277D3F198] sharedInstance];
    v252 = [v253 commonTypeDict_RealFormat];
    v256[0] = v252;
    v255[1] = @"DCBins_1";
    v251 = [MEMORY[0x277D3F198] sharedInstance];
    v250 = [v251 commonTypeDict_RealFormat];
    v256[1] = v250;
    v255[2] = @"DCBins_2";
    v249 = [MEMORY[0x277D3F198] sharedInstance];
    v248 = [v249 commonTypeDict_RealFormat];
    v256[2] = v248;
    v255[3] = @"DCBins_3";
    v247 = [MEMORY[0x277D3F198] sharedInstance];
    v246 = [v247 commonTypeDict_RealFormat];
    v256[3] = v246;
    v255[4] = @"DCBins_4";
    v245 = [MEMORY[0x277D3F198] sharedInstance];
    v244 = [v245 commonTypeDict_RealFormat];
    v256[4] = v244;
    v255[5] = @"DCBins_5";
    v243 = [MEMORY[0x277D3F198] sharedInstance];
    v242 = [v243 commonTypeDict_RealFormat];
    v256[5] = v242;
    v255[6] = @"DCBins_6";
    v241 = [MEMORY[0x277D3F198] sharedInstance];
    v240 = [v241 commonTypeDict_RealFormat];
    v256[6] = v240;
    v255[7] = @"DCBins_7";
    v239 = [MEMORY[0x277D3F198] sharedInstance];
    v238 = [v239 commonTypeDict_RealFormat];
    v256[7] = v238;
    v255[8] = @"DCBins_8";
    v237 = [MEMORY[0x277D3F198] sharedInstance];
    v236 = [v237 commonTypeDict_RealFormat];
    v256[8] = v236;
    v255[9] = @"DCBins_9";
    v235 = [MEMORY[0x277D3F198] sharedInstance];
    v234 = [v235 commonTypeDict_RealFormat];
    v256[9] = v234;
    v255[10] = @"DCBins_10";
    v233 = [MEMORY[0x277D3F198] sharedInstance];
    v232 = [v233 commonTypeDict_RealFormat];
    v256[10] = v232;
    v255[11] = @"DCBins_11";
    v231 = [MEMORY[0x277D3F198] sharedInstance];
    v230 = [v231 commonTypeDict_RealFormat];
    v256[11] = v230;
    v255[12] = @"DCBins_12";
    v229 = [MEMORY[0x277D3F198] sharedInstance];
    v228 = [v229 commonTypeDict_RealFormat];
    v256[12] = v228;
    v255[13] = @"DCBins_13";
    v227 = [MEMORY[0x277D3F198] sharedInstance];
    v226 = [v227 commonTypeDict_RealFormat];
    v256[13] = v226;
    v255[14] = @"DCBins_14";
    v225 = [MEMORY[0x277D3F198] sharedInstance];
    v224 = [v225 commonTypeDict_RealFormat];
    v256[14] = v224;
    v255[15] = @"DCBins_15";
    v223 = [MEMORY[0x277D3F198] sharedInstance];
    v222 = [v223 commonTypeDict_RealFormat];
    v256[15] = v222;
    v255[16] = @"DCBins_16";
    v221 = [MEMORY[0x277D3F198] sharedInstance];
    v220 = [v221 commonTypeDict_RealFormat];
    v256[16] = v220;
    v255[17] = @"ACBins_0";
    v219 = [MEMORY[0x277D3F198] sharedInstance];
    v218 = [v219 commonTypeDict_RealFormat];
    v256[17] = v218;
    v255[18] = @"ACBins_1";
    v217 = [MEMORY[0x277D3F198] sharedInstance];
    v216 = [v217 commonTypeDict_RealFormat];
    v256[18] = v216;
    v255[19] = @"ACBins_2";
    v215 = [MEMORY[0x277D3F198] sharedInstance];
    v214 = [v215 commonTypeDict_RealFormat];
    v256[19] = v214;
    v255[20] = @"ACBins_3";
    v213 = [MEMORY[0x277D3F198] sharedInstance];
    v212 = [v213 commonTypeDict_RealFormat];
    v256[20] = v212;
    v255[21] = @"ACBins_4";
    v211 = [MEMORY[0x277D3F198] sharedInstance];
    v210 = [v211 commonTypeDict_RealFormat];
    v256[21] = v210;
    v255[22] = @"ACBins_5";
    v209 = [MEMORY[0x277D3F198] sharedInstance];
    v208 = [v209 commonTypeDict_RealFormat];
    v256[22] = v208;
    v255[23] = @"ACBins_6";
    v207 = [MEMORY[0x277D3F198] sharedInstance];
    v206 = [v207 commonTypeDict_RealFormat];
    v256[23] = v206;
    v255[24] = @"ACBins_7";
    v205 = [MEMORY[0x277D3F198] sharedInstance];
    v204 = [v205 commonTypeDict_RealFormat];
    v256[24] = v204;
    v255[25] = @"ACBins_8";
    v203 = [MEMORY[0x277D3F198] sharedInstance];
    v202 = [v203 commonTypeDict_RealFormat];
    v256[25] = v202;
    v255[26] = @"ACBins_9";
    v201 = [MEMORY[0x277D3F198] sharedInstance];
    v200 = [v201 commonTypeDict_RealFormat];
    v256[26] = v200;
    v255[27] = @"ACBins_10";
    v199 = [MEMORY[0x277D3F198] sharedInstance];
    v198 = [v199 commonTypeDict_RealFormat];
    v256[27] = v198;
    v255[28] = @"ACBins_11";
    v197 = [MEMORY[0x277D3F198] sharedInstance];
    v196 = [v197 commonTypeDict_RealFormat];
    v256[28] = v196;
    v255[29] = @"ACBins_12";
    v195 = [MEMORY[0x277D3F198] sharedInstance];
    v194 = [v195 commonTypeDict_RealFormat];
    v256[29] = v194;
    v255[30] = @"ACBins_13";
    v193 = [MEMORY[0x277D3F198] sharedInstance];
    v192 = [v193 commonTypeDict_RealFormat];
    v256[30] = v192;
    v255[31] = @"ACBins_14";
    v191 = [MEMORY[0x277D3F198] sharedInstance];
    v190 = [v191 commonTypeDict_RealFormat];
    v256[31] = v190;
    v255[32] = @"ACBins_15";
    v189 = [MEMORY[0x277D3F198] sharedInstance];
    v188 = [v189 commonTypeDict_RealFormat];
    v256[32] = v188;
    v255[33] = @"ACBins_16";
    v187 = [MEMORY[0x277D3F198] sharedInstance];
    v186 = [v187 commonTypeDict_RealFormat];
    v256[33] = v186;
    v255[34] = @"ASBins_0";
    v185 = [MEMORY[0x277D3F198] sharedInstance];
    v184 = [v185 commonTypeDict_RealFormat];
    v256[34] = v184;
    v255[35] = @"ASBins_1";
    v183 = [MEMORY[0x277D3F198] sharedInstance];
    v182 = [v183 commonTypeDict_RealFormat];
    v256[35] = v182;
    v255[36] = @"ASBins_2";
    v181 = [MEMORY[0x277D3F198] sharedInstance];
    v180 = [v181 commonTypeDict_RealFormat];
    v256[36] = v180;
    v255[37] = @"ASBins_3";
    v179 = [MEMORY[0x277D3F198] sharedInstance];
    v178 = [v179 commonTypeDict_RealFormat];
    v256[37] = v178;
    v255[38] = @"ASBins_4";
    v177 = [MEMORY[0x277D3F198] sharedInstance];
    v176 = [v177 commonTypeDict_RealFormat];
    v256[38] = v176;
    v255[39] = @"ASBins_5";
    v175 = [MEMORY[0x277D3F198] sharedInstance];
    v174 = [v175 commonTypeDict_RealFormat];
    v256[39] = v174;
    v255[40] = @"ASBins_6";
    v173 = [MEMORY[0x277D3F198] sharedInstance];
    v172 = [v173 commonTypeDict_RealFormat];
    v256[40] = v172;
    v255[41] = @"ASBins_7";
    v171 = [MEMORY[0x277D3F198] sharedInstance];
    v170 = [v171 commonTypeDict_RealFormat];
    v256[41] = v170;
    v255[42] = @"ASBins_8";
    v169 = [MEMORY[0x277D3F198] sharedInstance];
    v168 = [v169 commonTypeDict_RealFormat];
    v256[42] = v168;
    v255[43] = @"ASBins_9";
    v167 = [MEMORY[0x277D3F198] sharedInstance];
    v166 = [v167 commonTypeDict_RealFormat];
    v256[43] = v166;
    v255[44] = @"ACABins_0";
    v165 = [MEMORY[0x277D3F198] sharedInstance];
    v164 = [v165 commonTypeDict_RealFormat];
    v256[44] = v164;
    v255[45] = @"ACABins_1";
    v163 = [MEMORY[0x277D3F198] sharedInstance];
    v162 = [v163 commonTypeDict_RealFormat];
    v256[45] = v162;
    v255[46] = @"ACABins_2";
    v161 = [MEMORY[0x277D3F198] sharedInstance];
    v160 = [v161 commonTypeDict_RealFormat];
    v256[46] = v160;
    v255[47] = @"ACABins_3";
    v159 = [MEMORY[0x277D3F198] sharedInstance];
    v158 = [v159 commonTypeDict_RealFormat];
    v256[47] = v158;
    v255[48] = @"ACABins_4";
    v157 = [MEMORY[0x277D3F198] sharedInstance];
    v156 = [v157 commonTypeDict_RealFormat];
    v256[48] = v156;
    v255[49] = @"ACABins_5";
    v155 = [MEMORY[0x277D3F198] sharedInstance];
    v154 = [v155 commonTypeDict_RealFormat];
    v256[49] = v154;
    v255[50] = @"ACABins_6";
    v153 = [MEMORY[0x277D3F198] sharedInstance];
    v152 = [v153 commonTypeDict_RealFormat];
    v256[50] = v152;
    v255[51] = @"ACABins_7";
    v151 = [MEMORY[0x277D3F198] sharedInstance];
    v150 = [v151 commonTypeDict_RealFormat];
    v256[51] = v150;
    v255[52] = @"ACABins_8";
    v149 = [MEMORY[0x277D3F198] sharedInstance];
    v148 = [v149 commonTypeDict_RealFormat];
    v256[52] = v148;
    v255[53] = @"ACABins_9";
    v147 = [MEMORY[0x277D3F198] sharedInstance];
    v146 = [v147 commonTypeDict_RealFormat];
    v256[53] = v146;
    v255[54] = @"ACABins_10";
    v145 = [MEMORY[0x277D3F198] sharedInstance];
    v144 = [v145 commonTypeDict_RealFormat];
    v256[54] = v144;
    v255[55] = @"ACABins_11";
    v143 = [MEMORY[0x277D3F198] sharedInstance];
    v142 = [v143 commonTypeDict_RealFormat];
    v256[55] = v142;
    v255[56] = @"ACABins_12";
    v141 = [MEMORY[0x277D3F198] sharedInstance];
    v140 = [v141 commonTypeDict_RealFormat];
    v256[56] = v140;
    v255[57] = @"ACABins_13";
    v139 = [MEMORY[0x277D3F198] sharedInstance];
    v138 = [v139 commonTypeDict_RealFormat];
    v256[57] = v138;
    v255[58] = @"ACABins_14";
    v137 = [MEMORY[0x277D3F198] sharedInstance];
    v136 = [v137 commonTypeDict_RealFormat];
    v256[58] = v136;
    v255[59] = @"ACABins_15";
    v135 = [MEMORY[0x277D3F198] sharedInstance];
    v134 = [v135 commonTypeDict_RealFormat];
    v256[59] = v134;
    v255[60] = @"ACABins_16";
    v133 = [MEMORY[0x277D3F198] sharedInstance];
    v132 = [v133 commonTypeDict_RealFormat];
    v256[60] = v132;
    v255[61] = @"ACABins_17";
    v131 = [MEMORY[0x277D3F198] sharedInstance];
    v130 = [v131 commonTypeDict_RealFormat];
    v256[61] = v130;
    v255[62] = @"ACABins_18";
    v129 = [MEMORY[0x277D3F198] sharedInstance];
    v128 = [v129 commonTypeDict_RealFormat];
    v256[62] = v128;
    v255[63] = @"ACABins_19";
    v127 = [MEMORY[0x277D3F198] sharedInstance];
    v126 = [v127 commonTypeDict_RealFormat];
    v256[63] = v126;
    v255[64] = @"ACABins_20";
    v125 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v125 commonTypeDict_RealFormat];
    v256[64] = v124;
    v255[65] = @"ACABins_21";
    v123 = [MEMORY[0x277D3F198] sharedInstance];
    v122 = [v123 commonTypeDict_RealFormat];
    v256[65] = v122;
    v255[66] = @"ACABins_22";
    v121 = [MEMORY[0x277D3F198] sharedInstance];
    v120 = [v121 commonTypeDict_RealFormat];
    v256[66] = v120;
    v255[67] = @"ACABins_23";
    v119 = [MEMORY[0x277D3F198] sharedInstance];
    v118 = [v119 commonTypeDict_RealFormat];
    v256[67] = v118;
    v255[68] = @"ACABins_24";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_RealFormat];
    v256[68] = v116;
    v255[69] = @"ACABins_25";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_RealFormat];
    v256[69] = v114;
    v255[70] = @"ACABins_26";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_RealFormat];
    v256[70] = v112;
    v255[71] = @"ACABins_27";
    v111 = [MEMORY[0x277D3F198] sharedInstance];
    v110 = [v111 commonTypeDict_RealFormat];
    v256[71] = v110;
    v255[72] = @"ACABins_28";
    v109 = [MEMORY[0x277D3F198] sharedInstance];
    v108 = [v109 commonTypeDict_RealFormat];
    v256[72] = v108;
    v255[73] = @"ACABins_29";
    v107 = [MEMORY[0x277D3F198] sharedInstance];
    v106 = [v107 commonTypeDict_RealFormat];
    v256[73] = v106;
    v255[74] = @"ACABins_30";
    v105 = [MEMORY[0x277D3F198] sharedInstance];
    v104 = [v105 commonTypeDict_RealFormat];
    v256[74] = v104;
    v255[75] = @"ACABins_31";
    v103 = [MEMORY[0x277D3F198] sharedInstance];
    v102 = [v103 commonTypeDict_RealFormat];
    v256[75] = v102;
    v255[76] = @"ACABins_32";
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v101 commonTypeDict_RealFormat];
    v256[76] = v100;
    v255[77] = @"ACABins_33";
    v99 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v99 commonTypeDict_RealFormat];
    v256[77] = v98;
    v255[78] = @"ACABins_34";
    v97 = [MEMORY[0x277D3F198] sharedInstance];
    v96 = [v97 commonTypeDict_RealFormat];
    v256[78] = v96;
    v255[79] = @"ACABins_35";
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v94 = [v95 commonTypeDict_RealFormat];
    v256[79] = v94;
    v255[80] = @"ACABins_36";
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v93 commonTypeDict_RealFormat];
    v256[80] = v92;
    v255[81] = @"ACABins_37";
    v91 = [MEMORY[0x277D3F198] sharedInstance];
    v90 = [v91 commonTypeDict_RealFormat];
    v256[81] = v90;
    v255[82] = @"ACABins_38";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_RealFormat];
    v256[82] = v88;
    v255[83] = @"ACABins_39";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_RealFormat];
    v256[83] = v86;
    v255[84] = @"ACABins_40";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_RealFormat];
    v256[84] = v84;
    v255[85] = @"ACABins_41";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_RealFormat];
    v256[85] = v82;
    v255[86] = @"ACABins_42";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_RealFormat];
    v256[86] = v80;
    v255[87] = @"ACABins_43";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_RealFormat];
    v256[87] = v78;
    v255[88] = @"ACABins_44";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_RealFormat];
    v256[88] = v76;
    v255[89] = @"ACABins_45";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_RealFormat];
    v256[89] = v74;
    v255[90] = @"ACTBins_0";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v256[90] = v72;
    v255[91] = @"ACTBins_1";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat];
    v256[91] = v70;
    v255[92] = @"ACTBins_2";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v256[92] = v68;
    v255[93] = @"ACTBins_3";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_IntegerFormat];
    v256[93] = v66;
    v255[94] = @"ACTBins_4";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v256[94] = v64;
    v255[95] = @"ACTBins_5";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat];
    v256[95] = v62;
    v255[96] = @"ACTBins_6";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v256[96] = v60;
    v255[97] = @"ACTBins_7";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat];
    v256[97] = v58;
    v255[98] = @"ACTBins_8";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v256[98] = v56;
    v255[99] = @"ACTBins_9";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_IntegerFormat];
    v256[99] = v54;
    v255[100] = @"ACTBins_10";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v256[100] = v52;
    v255[101] = @"ACTBins_11";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_IntegerFormat];
    v256[101] = v50;
    v255[102] = @"ACTBins_12";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v256[102] = v48;
    v255[103] = @"ACTBins_13";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v256[103] = v46;
    v255[104] = @"ACTBins_14";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v256[104] = v44;
    v255[105] = @"ACTBins_15";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat];
    v256[105] = v42;
    v255[106] = @"ACTBins_16";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v256[106] = v40;
    v255[107] = @"DCTBins_0";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v256[107] = v38;
    v255[108] = @"DCTBins_1";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v256[108] = v36;
    v255[109] = @"DCTBins_2";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v256[109] = v34;
    v255[110] = @"DCTBins_3";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v256[110] = v32;
    v255[111] = @"DCTBins_4";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v256[111] = v30;
    v255[112] = @"DCTBins_5";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v256[112] = v28;
    v255[113] = @"DCTBins_6";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v256[113] = v26;
    v255[114] = @"DCTBins_7";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v256[114] = v24;
    v255[115] = @"DCTBins_8";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v256[115] = v22;
    v255[116] = @"DCTBins_9";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v256[116] = v20;
    v255[117] = @"DCTBins_10";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v256[117] = v18;
    v255[118] = @"DCTBins_11";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v256[118] = v16;
    v255[119] = @"DCTBins_12";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v256[119] = v14;
    v255[120] = @"DCTBins_13";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v256[120] = v3;
    v255[121] = @"DCTBins_14";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v256[121] = v5;
    v255[122] = @"DCTBins_15";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v256[122] = v7;
    v255[123] = @"DCTBins_16";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v256[123] = v9;
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
    v18 = &unk_282C1C1D8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"AvgBacklightNits";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_RealFormat];
    v16[0] = v3;
    v15[1] = @"AvgLogicalBrightnessNits";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v16[1] = v5;
    v15[2] = @"BlueLightReductionOffTime";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v16[2] = v7;
    v15[3] = @"BlueLightReductionOnTime";
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

+ (id)entryEventBackwardDefinitionRampInfo
{
  v58[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v57[0] = *MEMORY[0x277D3F4E8];
    v55 = *MEMORY[0x277D3F568];
    v56 = &unk_282C1C1D8;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v58[0] = v52;
    v57[1] = *MEMORY[0x277D3F540];
    v53[0] = @"AAP_NumberOfUpdates";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_IntegerFormat];
    v54[0] = v50;
    v53[1] = @"AAP_RampFrequency";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v54[1] = v48;
    v53[2] = @"AAP_RampLength";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v54[2] = v46;
    v53[3] = @"AAP_RampOrigin";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_RealFormat];
    v54[3] = v44;
    v53[4] = @"AAP_RampTarget";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v54[4] = v42;
    v53[5] = @"Colour_NumberOfUpdates";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v54[5] = v40;
    v53[6] = @"Colour_RampFrequency";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v54[6] = v38;
    v53[7] = @"Colour_RampLength";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_RealFormat];
    v54[7] = v36;
    v53[8] = @"Colour_RampOrigin_X";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v54[8] = v34;
    v53[9] = @"Colour_RampOrigin_Y";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_RealFormat];
    v54[9] = v32;
    v53[10] = @"Colour_RampTarget_X";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v54[10] = v30;
    v53[11] = @"Colour_RampTarget_Y";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_RealFormat];
    v54[11] = v28;
    v53[12] = @"SDR_NumberOfUpdates";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v54[12] = v26;
    v53[13] = @"SDR_RampFrequency";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v54[13] = v24;
    v53[14] = @"SDR_RampLength";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v54[14] = v22;
    v53[15] = @"SDR_RampOrigin";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_RealFormat];
    v54[15] = v20;
    v53[16] = @"SDR_RampTarget";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v54[16] = v18;
    v53[17] = @"EDR_NumberOfUpdates";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v54[17] = v16;
    v53[18] = @"EDR_RampFrequency";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v54[18] = v14;
    v53[19] = @"EDR_RampLength";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_RealFormat];
    v54[19] = v3;
    v53[20] = @"EDR_RampOrigin";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v54[20] = v5;
    v53[21] = @"EDR_RampTarget";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v54[21] = v7;
    v53[22] = @"isFlipbookActive";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v54[22] = v9;
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
    v16 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"lux";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v14[0] = v4;
    v13[1] = @"nits";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v14[1] = v6;
    v13[2] = @"level";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v14[2] = v8;
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
    v18 = &unk_282C1C1D8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"WakeReason";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_StringFormat];
    v16[0] = v3;
    v15[1] = @"Lux";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v16[1] = v5;
    v15[2] = @"DimThreshold";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v16[2] = v7;
    v15[3] = @"BrightenThreshold";
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

+ (id)entryEventBackwardDefinitionALSSamplesBeforeWake
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"Lux";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v14[0] = v4;
    v13[1] = @"colorX";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v14[1] = v6;
    v13[2] = @"colorY";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v14[2] = v8;
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
    v16 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"Lux";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v14[0] = v4;
    v13[1] = @"colorX";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v14[1] = v6;
    v13[2] = @"colorY";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v14[2] = v8;
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
    v27[0] = &unk_282C1C238;
    v27[1] = @"logDisplayAPL";
    v3 = *MEMORY[0x277D3F590];
    v26[2] = *MEMORY[0x277D3F4D8];
    v26[3] = v3;
    v27[2] = MEMORY[0x277CBEC38];
    v27[3] = &unk_282C11688;
    v4 = *MEMORY[0x277D3F4A0];
    v26[4] = *MEMORY[0x277D3F588];
    v26[5] = v4;
    v27[4] = &unk_282C1C248;
    v27[5] = MEMORY[0x277CBEC38];
    v26[6] = *MEMORY[0x277D3F4F0];
    v27[6] = &unk_282C14400;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];
    v29[0] = v23;
    v28[1] = *MEMORY[0x277D3F540];
    v24[0] = @"bundleID";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_StringFormat_withBundleID];
    v25[0] = v21;
    v24[1] = @"AvgRed";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v25[1] = v19;
    v24[2] = @"AvgGreen";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v25[2] = v17;
    v24[3] = @"AvgBlue";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v25[3] = v6;
    v24[4] = @"Frames";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v25[4] = v8;
    v24[5] = @"AvgPower";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat];
    v25[5] = v10;
    v24[6] = @"AvgAPL";
    v11 = [MEMORY[0x277D3F198] sharedInstance];
    v12 = [v11 commonTypeDict_RealFormat];
    v25[6] = v12;
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
    v21[0] = &unk_282C1C1D8;
    v21[1] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"AvgPower";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v19[0] = v15;
    v18[1] = @"AZLAccum";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v19[1] = v4;
    v18[2] = @"NitsAccum";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v19[2] = v6;
    v18[3] = @"BLUpdateCount";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v19[3] = v8;
    v18[4] = @"BLFrameCount";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v19[4] = v10;
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
    v25[0] = &unk_282C1C1D8;
    v25[1] = MEMORY[0x277CBEC38];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v27[0] = v21;
    v26[1] = *MEMORY[0x277D3F540];
    v22[0] = @"PacketID";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v23[0] = v19;
    v22[1] = @"VLED";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v23[1] = v17;
    v22[2] = @"MaxRowCurrent";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v23[2] = v15;
    v22[3] = @"NitsAccum";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v23[3] = v4;
    v22[4] = @"AverageCurrent";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v23[4] = v6;
    v22[5] = @"AZL";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v23[5] = v8;
    v22[6] = @"SystemNits";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v23[6] = v10;
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
    v38 = &unk_282C1C228;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v40[0] = v34;
    v39[1] = *MEMORY[0x277D3F540];
    v35[0] = @"awake_count";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v36[0] = v32;
    v35[1] = @"media_count";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v36[1] = v30;
    v35[2] = @"flipbook_count";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v36[2] = v28;
    v35[3] = @"flipbook_delay";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v36[3] = v26;
    v35[4] = @"media_scanout";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v36[4] = v24;
    v35[5] = @"ambient_count";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v36[5] = v22;
    v35[6] = @"prc_repeat_coun";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v36[6] = v20;
    v35[7] = @"pdc_repeat_coun";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v36[7] = v18;
    v35[8] = @"llm_count";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v36[8] = v16;
    v35[9] = @"apl_sum";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v36[9] = v14;
    v35[10] = @"apl_count";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v36[10] = v3;
    v35[11] = @"1hz_flipbook_frame_count";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v36[11] = v5;
    v35[12] = @"1hz_frame_miss_count";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v36[12] = v7;
    v35[13] = @"1hz_bic_accum_count";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v36[13] = v9;
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
    v20 = &unk_282C1C1D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v2;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"UserTouchCount";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat_aggregateFunction_sum];
    v17[1] = @"UserTouchTime";
    v18[0] = v4;
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_aggregateFunction_sum];
    v18[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v22[1] = v7;
    v21[2] = *MEMORY[0x277D3F478];
    v15 = &unk_282C1C258;
    v13 = *MEMORY[0x277D3F470];
    v14 = &unk_282C1C268;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v21[3] = *MEMORY[0x277D3F488];
    v22[2] = v9;
    v22[3] = &unk_282C14418;
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
  v102 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_2;
  }

  v100.receiver = self;
  v100.super_class = PLDisplayAgent;
  v4 = [(PLAgent *)&v100 init];
  if (!v4)
  {
LABEL_63:
    self = v4;
    v3 = self;
    goto LABEL_64;
  }

  if (_os_feature_enabled_impl() && [MEMORY[0x277D3F208] hasAOD])
  {
    v5 = [MEMORY[0x277CF0880] sharedBacklight];
    [v5 addObserver:v4];

    v6 = [(PLOperator *)v4 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__PLDisplayAgent_init__block_invoke;
    block[3] = &unk_2782591D0;
    v99 = v4;
    dispatch_async(v6, block);
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
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __22__PLDisplayAgent_init__block_invoke_2;
      v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v97[4] = v12;
      if (qword_2811F4930 != -1)
      {
        dispatch_once(&qword_2811F4930, v97);
      }

      if (_MergedGlobals_1_28 == 1)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"CBAdaptationClient init fail! Cannot get color adaptation information!"];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]"];
        [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:1484];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v13;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
  v23 = [(PLOperator *)v4 workQueue];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __22__PLDisplayAgent_init__block_invoke_1431;
  v95[3] = &unk_278259C40;
  v24 = v4;
  v96 = v24;
  v25 = [v22 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:v23 withUserInfo:v95 withQueue:1.0 withBlock:0.0];
  v26 = v24[18];
  v24[18] = v25;

  [v24[18] arm];
  v27 = objc_alloc_init(MEMORY[0x277CFD390]);
  v28 = v24[16];
  v24[16] = v27;

  if (!v24[16] && [MEMORY[0x277D3F180] debugEnabled])
  {
    v29 = objc_opt_class();
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __22__PLDisplayAgent_init__block_invoke_1442;
    v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v94[4] = v29;
    if (qword_2811F4940 != -1)
    {
      dispatch_once(&qword_2811F4940, v94);
    }

    if (byte_2811F48F2 == 1)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"BrightnessSystemClient init fail!"];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v33 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent init]"];
      [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:1512];

      v35 = PLLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v30;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v7 = 0x277CBE000uLL;
    }
  }

  if ([v8 count])
  {
    v36 = [v24 brightnessSystemClient];

    if (v36)
    {
      v37 = v24[16];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __22__PLDisplayAgent_init__block_invoke_1446;
      v92[3] = &unk_27825D620;
      v93 = v24;
      [v37 registerNotificationBlock:v92 forProperties:v8];
    }
  }

  v38 = [v24 brightnessSystemClient];
  v39 = [v38 copyPropertyForKey:@"CBSupportsFinalCommit"];
  [v24 setSupportsFinalBrightnessCommit:{objc_msgSend(v39, "BOOLValue")}];

  v40 = PLLogDisplay();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v80 = [v24 supportsFinalBrightnessCommit];
    *buf = 67109120;
    *&buf[4] = v80;
    _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "Copied kCBSupportsFinalBrightnessCommit value: %d", buf, 8u);
  }

  if (+[PLDisplayAgent shouldLogFromDCP](PLDisplayAgent, "shouldLogFromDCP") && ([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    v41 = PLLogDisplay();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEFAULT, "IO object: seting up notification", buf, 2u);
    }

    v42 = [*(v7 + 2840) array];
    [v24 setAfkEndpoints:v42];

    v43 = objc_alloc(MEMORY[0x277D3F1C8]);
    v44 = *MEMORY[0x277D3F5F0];
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __22__PLDisplayAgent_init__block_invoke_1450;
    v90[3] = &unk_27825D648;
    v45 = v24;
    v91 = v45;
    v46 = [v43 initWithOperator:v45 forDynamicServiceClass:v44 forNotificationType:"IOServiceMatched" withMatchBlock:v90];
    v47 = v45[10];
    v45[10] = v46;

    v48 = objc_alloc(MEMORY[0x277D3F250]);
    v49 = [v45 workQueue];
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __22__PLDisplayAgent_init__block_invoke_2_1452;
    v88[3] = &unk_278259C40;
    v50 = v45;
    v89 = v50;
    v51 = [v48 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:v49 withUserInfo:v88 withQueue:10.0 withBlock:10.0];
    [v50 setDcpTimeoffsetCalibTimer:v51];

    v52 = [v50 dcpTimeoffsetCalibTimer];
    [v52 arm];
  }

  v53 = objc_alloc(MEMORY[0x277D3F1C8]);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __22__PLDisplayAgent_init__block_invoke_1456;
  v86[3] = &unk_27825CE10;
  v54 = v24;
  v87 = v54;
  v55 = [v53 initWithOperator:v54 forService:@"AppleARMBacklight" withBlock:v86];
  v56 = v54[9];
  v54[9] = v55;

  if (+[PLDisplayAgent shouldLogBacklightControl])
  {
    v57 = objc_alloc(MEMORY[0x277D3F1C8]);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __22__PLDisplayAgent_init__block_invoke_1482;
    v84[3] = &unk_27825CE10;
    v58 = v54;
    v85 = v58;
    v59 = [v57 initWithOperator:v58 forService:@"backlight-control" withBlock:v84];
    v60 = v58[11];
    v58[11] = v59;
  }

  v61 = objc_alloc(MEMORY[0x277D3F1C8]);
  v62 = *MEMORY[0x277D3F5F8];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __22__PLDisplayAgent_init__block_invoke_2_1485;
  v82[3] = &unk_27825CE10;
  self = v54;
  v83 = self;
  v63 = [v61 initWithOperator:self forService:v62 withBlock:v82];
  iokitDisplay = self->_iokitDisplay;
  self->_iokitDisplay = v63;

  if ([MEMORY[0x277D3F208] hasDCP] && (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
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
        *v81 = 0;
        _os_log_error_impl(&dword_21A4C6000, v68, OS_LOG_TYPE_ERROR, "Error initializing IOMFB", v81, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        *v81 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v68, OS_LOG_TYPE_DEBUG, "IOMFB initializing", v81, 2u);
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
  v3 = 0;
LABEL_64:

  v78 = *MEMORY[0x277D85DE8];
  return v3;
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
  _MergedGlobals_1_28 = result;
  return result;
}

uint64_t __22__PLDisplayAgent_init__block_invoke_2_1433(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F1 = result;
  return result;
}

uint64_t __22__PLDisplayAgent_init__block_invoke_1442(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F2 = result;
  return result;
}

uint64_t __22__PLDisplayAgent_init__block_invoke_2_1468(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F3 = result;
  return result;
}

uint64_t __22__PLDisplayAgent_init__block_invoke_1474(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F4 = result;
  return result;
}

- (void)initTaskOperatorDependancies
{
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    if ([MEMORY[0x277D3F208] hasDCP])
    {
      if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
      {
        v3 = [MEMORY[0x277D3F180] BOOLForKey:@"AZLFullMode" ifNotSet:0];
        if (![MEMORY[0x277D3F180] fullMode] || v3)
        {
          v4 = *MEMORY[0x277D3F5D0];
          v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AZLSnapshots"];
          if (![MEMORY[0x277D3F180] taskMode] || (v6 = MEMORY[0x277D3F1A0], -[PLOperator className](self, "className"), v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "isEntryKeySetup:forOperatorName:", v5, v7), v7, v6))
          {
            v8 = [(PLOperator *)PLDisplayAgent entryKeyForType:v4 andName:@"AZLSnapshots"];
            v9 = [(PLOperator *)self storage];
            -[PLDisplayAgent setAZLSnapshotsEntries:](self, "setAZLSnapshotsEntries:", [v9 countOfEntriesForKey:v8]);

            v10 = objc_alloc(MEMORY[0x277D3F250]);
            v11 = [MEMORY[0x277CBEAA8] date];
            v12 = [(PLOperator *)self workQueue];
            v14[0] = MEMORY[0x277D85DD0];
            v14[1] = 3221225472;
            v14[2] = __46__PLDisplayAgent_initTaskOperatorDependancies__block_invoke;
            v14[3] = &unk_278259C40;
            v14[4] = self;
            v13 = [v10 initWithFireDate:v11 withInterval:1 withTolerance:0 repeats:v12 withUserInfo:v14 withQueue:300.0 withBlock:0.0];
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
        *v6 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "AZLSnapShot table is full", v6, 2u);
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
  v66 = *MEMORY[0x277D85DE8];
  [(PLDisplayAgent *)self initializeScreenOnAccumulation];
  -[PLDisplayAgent setIsMultitouchLoggingEnabled:](self, "setIsMultitouchLoggingEnabled:", [MEMORY[0x277D3F180] BOOLForKey:@"MultitouchLoggingEnabled" ifNotSet:0]);
  [(PLDisplayAgent *)self setLastForegroundAppAPL:0];
  v3 = +[PLDisplayAgent shouldLogAPL];
  v4 = MEMORY[0x277D3F5D0];
  if (v3)
  {
    v5 = objc_alloc_init(PLDisplayIOReportStats);
    displayIOReportStats = self->_displayIOReportStats;
    self->_displayIOReportStats = v5;

    v7 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*v4 andName:@"ScreenState"];
    v8 = objc_alloc(MEMORY[0x277D3F1A8]);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke;
    v63[3] = &unk_2782597E8;
    v63[4] = self;
    v9 = [v8 initWithOperator:self forEntryKey:v7 withFilter:MEMORY[0x277CBEC10] withBlock:v63];
    [(PLDisplayAgent *)self setApplicationNotification:v9];
  }

  if (([MEMORY[0x277D3F208] hasCapability:8] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "hasAOT"))
  {
    if ([MEMORY[0x277D3F208] hasCapability:8])
    {
      v10 = objc_alloc_init(PLDisplayIOReportStats);
      displayIOReportAZLStats = self->_displayIOReportAZLStats;
      self->_displayIOReportAZLStats = v10;

      v12 = PLLogDisplay();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Initializing AZL Stats", buf, 2u);
      }
    }

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1503;
    v62[3] = &unk_2782597E8;
    v62[4] = self;
    v13 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v62];
    batteryLevelChanged = self->_batteryLevelChanged;
    self->_batteryLevelChanged = v13;

    v15 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*v4 andName:@"ScreenState"];
    v16 = objc_alloc(MEMORY[0x277D3F1A8]);
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2;
    v61[3] = &unk_2782597E8;
    v61[4] = self;
    v17 = [v16 initWithOperator:self forEntryKey:v15 withFilter:MEMORY[0x277CBEC10] withBlock:v61];
    [(PLDisplayAgent *)self setApplicationNotification:v17];
  }

  if ([MEMORY[0x277D3F208] hasCapability:3])
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    displayStateChanges = self->_displayStateChanges;
    self->_displayStateChanges = v18;

    v20 = objc_alloc(MEMORY[0x277D3F1A8]);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_3;
    v60[3] = &unk_2782597E8;
    v60[4] = self;
    v21 = [v20 initWithOperator:self forEntryKey:@"PLIOReportAgent_EventBackward_IOMFBScanoutHistogram" withFilter:MEMORY[0x277CBEC10] withBlock:v60];
    [(PLDisplayAgent *)self setIOMFBScanoutNotification:v21];
  }

  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v22 = objc_alloc_init(PLDisplayIOReportAODStats);
    displayIOReportAODStats = self->_displayIOReportAODStats;
    self->_displayIOReportAODStats = v22;

    v24 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BacklightStateChange"];
    v25 = objc_alloc(MEMORY[0x277D3F1A8]);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_4;
    v59[3] = &unk_2782597E8;
    v59[4] = self;
    v26 = [v25 initWithOperator:self forEntryKey:v24 withBlock:v59];
    [(PLDisplayAgent *)self setAodstateChangedNotification:v26];
  }

  v27 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"display"];
  v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F208], "kPLDisplayClassOfDevice")}];
  v29 = [v28 stringValue];

  v30 = [v27 objectForKeyedSubscript:v29];
  displayPowerModel = self->_displayPowerModel;
  self->_displayPowerModel = v30;

  if ([MEMORY[0x277D3F208] internalBuild] && -[PLDisplayAgent isMultitouchLoggingEnabled](self, "isMultitouchLoggingEnabled"))
  {
    v32 = objc_alloc(MEMORY[0x277D3F270]);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1519;
    v58[3] = &unk_27825A1D8;
    v58[4] = self;
    v33 = [v32 initWithOperator:self withRegistration:&unk_282C17D38 withBlock:v58];
    [(PLDisplayAgent *)self setMultitouchXPCListener:v33];
  }

  [(PLDisplayAgent *)self logEventNonePanelStats];
  self->_ambientLightSensorHIDClientRef = [(PLDisplayAgent *)self setUpIOHIDAmbientLightSensorSystemClient];
  if (+[PLDisplayAgent shouldLogKeyboardBrightness])
  {
    v34 = objc_alloc_init(MEMORY[0x277CFD3B8]);
    kbClient = self->_kbClient;
    self->_kbClient = v34;

    if (self->_kbClient)
    {
      v36 = [MEMORY[0x277D3F208] isiPad];
      v37 = MEMORY[0x277CFD3C8];
      if (!v36)
      {
        v37 = MEMORY[0x277CFD3C0];
      }

      v38 = *v37;
      v39 = [(PLDisplayAgent *)self kbClient];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1532;
      v56[3] = &unk_27825D670;
      v56[4] = self;
      [v39 registerNotificationForKeys:&unk_282C14430 keyboardID:v38 block:v56];

      v40 = objc_alloc(MEMORY[0x277D3F250]);
      v41 = [(PLOperator *)self workQueue];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1545;
      v55[3] = &unk_278259C40;
      v55[4] = self;
      v42 = [v40 initWithFireDate:0 withInterval:1 withTolerance:0 repeats:v41 withUserInfo:v55 withQueue:0.5 withBlock:0.0];
      [(PLDisplayAgent *)self setKeyboardBrightnessFilterTimer:v42];

      v43 = [(PLDisplayAgent *)self keyboardBrightnessFilterTimer];
      [v43 arm];
LABEL_22:

      goto LABEL_30;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v44 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1522;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v44;
      if (qword_2811F4958 != -1)
      {
        dispatch_once(&qword_2811F4958, block);
      }

      if (byte_2811F48F5 == 1)
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"KeyboardBrightnessClient init fail!"];
        v45 = MEMORY[0x277D3F178];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v47 = [v46 lastPathComponent];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent initOperatorDependancies]"];
        [v45 logMessage:v43 fromFile:v47 fromFunction:v48 fromLineNumber:1942];

        v49 = PLLogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v65 = v43;
          _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        goto LABEL_22;
      }
    }
  }

LABEL_30:
  v50 = objc_alloc(MEMORY[0x277D3F1F0]);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1550;
  v54[3] = &unk_2782597E8;
  v54[4] = self;
  v51 = [v50 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v54];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v51;

  v53 = *MEMORY[0x277D85DE8];
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Got callback for logAODChange: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logAODChange];
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1522(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F5 = result;
  return result;
}

void __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1532(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
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
    if (qword_2811F4960 != -1)
    {
      dispatch_once(&qword_2811F4960, block);
    }

    if (byte_2811F48F6 == 1)
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
        *buf = 138412290;
        v38 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1539;
      v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v35[4] = v24;
      if (qword_2811F4968 != -1)
      {
        dispatch_once(&qword_2811F4968, v35);
      }

      if (byte_2811F48F7 == 1)
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
          *buf = 138412290;
          v38 = v27;
          _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v33 = [*(a1 + 32) keyboardBrightnessFilterTimer];
    [v33 setFireDate:v22];
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLDisplayAgent_initOperatorDependancies__block_invoke_2_1533(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F6 = result;
  return result;
}

uint64_t __42__PLDisplayAgent_initOperatorDependancies__block_invoke_1539(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F7 = result;
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

void __54__PLDisplayAgent_handleAFKInterfaceIOServiceCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, const char *a5, size_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = PLLogDisplay();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v24 = a4;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Received msg at timestamp: %llu", buf, 0xCu);
  }

  if (a5 && a6)
  {
    errorString = 0;
    v11 = IOCFUnserializeWithSize(a5, a6, *MEMORY[0x277CBECE8], 0, &errorString);
    v12 = errorString;
    v13 = errorString;
    v14 = v13;
    if (v12)
    {
    }

    else if (v11)
    {
      v16 = CFGetTypeID(v11);
      TypeID = CFDictionaryGetTypeID();
      v18 = PLLogDisplay();
      v19 = v18;
      if (v16 == TypeID)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "Data: %@", buf, 0xCu);
        }

        v20 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
        [*(a1 + 32) fillInBuiltinDisplayBrightnessParameters:v20];
        v21 = PLLogDisplay();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "Final data to be logged: %@", buf, 0xCu);
        }

        [*(a1 + 32) handleAFKInterfaceMsg:v20];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, "Msg is not a dictionary", buf, 2u);
        }

        v11 = v19;
      }

      goto LABEL_9;
    }

    v11 = PLLogDisplay();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Error unserializing buffer: %@", buf, 0xCu);
    }

LABEL_9:

    goto LABEL_12;
  }

  v14 = PLLogDisplay();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "Input buffer is empty", buf, 2u);
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fillInBuiltinDisplayBrightnessParameters:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v5 timeIntervalSince1970];
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
      [v4 setObject:v12 forKeyedSubscript:@"lux"];

      [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
      if (v13 >= 0.0)
      {
        v14 = MEMORY[0x277CCABB0];
        [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
        v15 = [v14 numberWithDouble:?];
        [v4 setObject:v15 forKeyedSubscript:@"Brightness"];
      }

      [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
      if (v16 >= 0.0)
      {
        v17 = MEMORY[0x277CCABB0];
        [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
        v18 = [v17 numberWithDouble:?];
        [v4 setObject:v18 forKeyedSubscript:@"SliderValue"];
      }

      goto LABEL_23;
    }
  }

  v19 = [(PLDisplayAgent *)self brightnessSystemClient];
  v20 = [v19 copyPropertyForKey:@"TrustedLux"];
  [v20 doubleValue];
  [(PLDisplayAgent *)self setLastBuiltinDisplayLux:?];

  v21 = [(PLDisplayAgent *)self brightnessSystemClient];
  v22 = [v21 copyPropertyForKey:@"DisplayBrightnessMin"];
  [v22 doubleValue];
  v24 = v23;

  v25 = [(PLDisplayAgent *)self brightnessSystemClient];
  v26 = [v25 copyPropertyForKey:@"DisplayBrightnessMax"];
  [v26 doubleValue];
  v28 = v27;

  v29 = [(PLDisplayAgent *)self brightnessSystemClient];
  v30 = [v29 copyPropertyForKey:@"DisplayBrightness"];

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
        _os_log_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEFAULT, "Not logging brightness value: %@", &v45, 0xCu);
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
  [v4 setObject:v37 forKeyedSubscript:@"lux"];

  [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
  if (v38 >= 0.0)
  {
    v39 = MEMORY[0x277CCABB0];
    [(PLDisplayAgent *)self lastBuiltinDisplayBrightness];
    v40 = [v39 numberWithDouble:?];
    [v4 setObject:v40 forKeyedSubscript:@"Brightness"];
  }

  [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
  if (v41 >= 0.0)
  {
    v42 = MEMORY[0x277CCABB0];
    [(PLDisplayAgent *)self lastBuiltinDisplaySliderValue];
    v43 = [v42 numberWithDouble:?];
    [v4 setObject:v43 forKeyedSubscript:@"SliderValue"];
  }

LABEL_23:
  v44 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpAFKInterfaces
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PLDisplayAgent *)self afkEndpoints];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 valid] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [(PLDisplayAgent *)self afkEndpoints];
  [v10 removeObjectsInArray:v3];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleAFKInterfaceMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"timestamp"];
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
  v12 = [(PLDisplayAgent *)self pendingBacklightEntry];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLDisplayAgent *)self pendingBacklightEntryDate];
    if (v14)
    {
      v15 = v14;
      v16 = [(PLDisplayAgent *)self pendingBacklightEntryDate];
      [v11 timeIntervalSinceDate:v16];
      v18 = v17;

      if (v18 < 1.0)
      {
        goto LABEL_9;
      }

      v13 = [(PLDisplayAgent *)self pendingBacklightEntry];
      v19 = [(PLDisplayAgent *)self pendingBacklightEntryDate];
      [(PLDisplayAgent *)self logEventForwardDisplayWithRawData:v13 withDate:v19];
    }
  }

LABEL_9:
  [(PLDisplayAgent *)self setPendingBacklightEntry:v4];
  [(PLDisplayAgent *)self setPendingBacklightEntryDate:v11];
  v20 = [(PLDisplayAgent *)self backlightFilterTimer];
  v21 = [v20 timerActive];

  if ((v21 & 1) == 0)
  {
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
    v23 = [(PLDisplayAgent *)self backlightFilterTimer];
    [v23 setFireDate:v22];
  }

  v24 = [(PLDisplayAgent *)self dcpTimeoffsetCalibTimer];
  v25 = [v24 timerActive];

  if ((v25 & 1) == 0)
  {
    v31 = 0;
    v32 = 0;
    [MEMORY[0x277D3F258] getCurrentMonotonicAndMachAbsTime:&v31 machAbsTime:0 machContTime:&v32];
    v26 = v31;
    [(PLDisplayAgent *)self setCurrAFKSystemTimestamp:v32 / 1000000000.0];
    [v26 timeIntervalSince1970];
    v28 = v27;

    [(PLDisplayAgent *)self setCurrMonoTimestamp:v28];
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
    v30 = [(PLDisplayAgent *)self dcpTimeoffsetCalibTimer];
    [v30 setFireDate:v29];
  }
}

- (void)logEventPointMultitouchWithPayload:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v31 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Multitouch"];
  v30 = objc_opt_new();
  v29 = [MEMORY[0x277CBEAA8] monotonicDate];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = v3;
  obj = [v3 objectForKeyedSubscript:@"events"];
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
        v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v31 withDate:v29];
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
    v4 = [MEMORY[0x277CF0880] sharedBacklight];
    [v4 removeObserver:self];
  }

  v5.receiver = self;
  v5.super_class = PLDisplayAgent;
  [(PLAgent *)&v5 dealloc];
}

- (BOOL)isAlsEnabled
{
  v2 = 1;
  v3 = [MEMORY[0x277D3F180] objectForKey:@"BKEnableALS" forApplicationID:@"com.apple.backboardd" synchronize:1];
  v4 = v3;
  if (v3)
  {
    v2 = [v3 BOOLValue];
  }

  return v2;
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
  v3 = [(PLDisplayAgent *)self brightnessSystemClient];

  if (v3 && ([MEMORY[0x277D3F208] isMac] & 1) == 0)
  {
    v4 = [(PLDisplayAgent *)self brightnessSystemClient];
    v7 = [v4 copyPropertyForKey:@"BrightnessGlobalScalar"];

    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PanelStats"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v7];
      [(PLOperator *)self logEntry:v6];
    }
  }
}

- (void)logDisplayEntry:(id)a3
{
  v4 = a3;
  v6 = [v4 dictionary];
  v5 = [v4 entryDate];

  [(PLOperator *)self logForSubsystem:@"DisplayMetrics" category:@"DisplayState" data:v6 date:v5];
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
    v3 = [(PLDisplayAgent *)self iokitBacklight];
    v5 = [v3 propertiesForKey:@"IOPowerManagement"];

    v4 = [v5 objectForKeyedSubscript:@"CurrentPowerState"];
    -[PLDisplayAgent logEventPointDisplayForBlock:isActive:](self, "logEventPointDisplayForBlock:isActive:", @"Backlight", [v4 BOOLValue]);
  }
}

- (void)logEventPointDisplayMIE
{
  if (!+[PLDisplayAgent shouldLogFromDCP]&& self->_iokitDisplay)
  {
    v3 = [(PLDisplayAgent *)self iokitDisplay];
    v7 = [v3 propertiesForKey:@"IOMFB Debug Info"];

    v4 = [v7 objectForKeyedSubscript:@"MIE"];

    if (v4)
    {
      v5 = [v7 objectForKeyedSubscript:@"MIE"];
      v6 = [v5 objectForKeyedSubscript:@"enabled"];
      -[PLDisplayAgent logEventPointDisplayForBlock:isActive:](self, "logEventPointDisplayForBlock:isActive:", @"MIE", [v6 BOOLValue]);
    }
  }
}

- (void)logEventPointDisplayBacklightWithState:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = PLLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "IOMFB received power state: %llu", &v7, 0xCu);
  }

  [(PLDisplayAgent *)self logEventPointDisplayForBlock:@"Backlight" isActive:a3 != 0];
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLDisplayAgent_logEventPointDisplayForBlock_isActive___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F8 = result;
  return result;
}

- (void)initAODState:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = PLLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "initial screen state received by AOD is %ld", &v7, 0xCu);
  }

  if (a3 <= 3)
  {
    [(PLDisplayAgent *)self logAODState:dword_21AA21C10[a3]];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  if (_os_feature_enabled_impl())
  {
    if ([MEMORY[0x277D3F208] hasAOD])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke;
      v7[3] = &unk_27825D6C0;
      v7[4] = self;
      v7[5] = a4;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __62__PLDisplayAgent_backlight_didCompleteUpdateToState_forEvent___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PLLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = 134217984;
    v9 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "screen state received by AOD is %ld", &v8, 0xCu);
  }

  v3 = *(a1 + 40);
  if (v3 > 1)
  {
    if (v3 == 2 || v3 == 3)
    {
      v4 = *(a1 + 32);
      v5 = 1;
      goto LABEL_10;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(a1 + 32);
      v5 = 2;
LABEL_10:
      [v4 logAODState:v5];
    }
  }

  else
  {
    [*(a1 + 32) logAODState:0];
    if (_os_feature_enabled_impl())
    {
      [*(a1 + 32) clearDisplayAccountingEvents];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)clearDisplayAccountingEvents
{
  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  v2 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v2 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v4];

  v3 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v3 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:v4];
}

- (void)logEventPointUserBrightnessCommitted:(double)a3
{
  if (+[PLDisplayAgent shouldLogUserBrightness])
  {
    v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UserBrightness"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v5 setObject:v6 forKeyedSubscript:@"UserBrightness"];

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventPointKeyboardBrightness:(double)a3 withDate:(id)a4
{
  v9 = a4;
  if (+[PLDisplayAgent shouldLogKeyboardBrightness])
  {
    v6 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"KeyboardBrightness"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(a3 * 100.0)];
    [v7 setObject:v8 forKeyedSubscript:@"KeyboardBrightness"];

    if (v9)
    {
      [v7 setEntryDate:v9];
    }

    [(PLOperator *)self logEntry:v7];
  }
}

- (void)logEventForwardALSLux:(unint64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLDisplayAgent_logEventForwardALSLux___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F4978 != -1)
    {
      dispatch_once(&qword_2811F4978, block);
    }

    if (byte_2811F48F9 == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CBEAA8] monotonicDate];
      v8 = [v6 stringWithFormat:@"Got event ALSLux:%llu at %@\n", a3, v7];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventForwardALSLux:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:2703];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLDisplayAgent *)self setPendingALSLux:a3];
  v14 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLDisplayAgent *)self setPendingALSLuxEntryDate:v14];

  v15 = [(PLDisplayAgent *)self alsLuxFilterTimer];
  if (v15)
  {
    v16 = v15;
    v17 = [(PLDisplayAgent *)self alsLuxFilterTimer];
    v18 = [v17 timerActive];

    if ((v18 & 1) == 0)
    {
      v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __40__PLDisplayAgent_logEventForwardALSLux___block_invoke_1609;
        v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v31[4] = v20;
        if (qword_2811F4980 != -1)
        {
          dispatch_once(&qword_2811F4980, v31);
        }

        if (byte_2811F48FA == 1)
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = [MEMORY[0x277D3F268] formattedStringForDate:v19];
          v23 = [v21 stringWithFormat:@"Start ALSLux entry filter timer fireDate=%@", v22];

          v24 = MEMORY[0x277D3F178];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v26 = [v25 lastPathComponent];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logEventForwardALSLux:]"];
          [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:2724];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v34 = v23;
            _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v29 = [(PLDisplayAgent *)self alsLuxFilterTimer];
      [v29 setFireDate:v19];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLDisplayAgent_logEventForwardALSLux___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48F9 = result;
  return result;
}

uint64_t __40__PLDisplayAgent_logEventForwardALSLux___block_invoke_1609(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F48FA = result;
  return result;
}

- (unint64_t)getBacklightEnabledTimestamp:(unsigned int)a3
{
  v3 = IORegistryEntrySearchCFProperty(a3, "IOService", @"displayOnTimestamp", *MEMORY[0x277CBECE8], 1u);
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
    v3 = [(PLDisplayAgent *)self iokitBacklight];
    v5 = [v3 propertiesForKey:@"IODisplayParameters"];

    v4 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLDisplayAgent *)self logEventForwardDisplayWithRawData:v5 withDate:v4];
  }
}

- (void)logEventForwardDisplayBacklight
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    v3 = [(PLDisplayAgent *)self iokitBacklight];

    if (v3)
    {
      v4 = [(PLDisplayAgent *)self iokitBacklight];
      v5 = [v4 propertiesForKey:@"IODisplayParameters"];

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
        v3 = &unk_282C116B8;
      }

      else
      {
        v14 = MEMORY[0x277CCABB0];
        [(PLDisplayAgent *)self uAmpsToDisplayPower:v13];
        v3 = [v14 numberWithDouble:?];
      }
    }

    v15 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DisplayBacklight"];
    v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
    v17 = v16;
    if (v3)
    {
      [v16 setObject:v3 forKeyedSubscript:@"DisplayPower"];
    }

    v20[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(PLOperator *)self postEntries:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardDisplayWithRawData:(id)a3 withDate:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PLDisplayAgent *)self brightnessSystemClient];

  if (v8)
  {
    v9 = [[PLEventForwardDisplayEntry alloc] initEntryWithRawData:v6];
    [v9 setEntryDate:v7];
    v10 = [v6 objectForKeyedSubscript:@"lux"];
    if (!v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"Brightness"];
      [v11 doubleValue];
      v13 = v12;

      if (v13 <= 0.0)
      {
        v10 = &unk_282C116B8;
      }

      else
      {
        v14 = [(PLDisplayAgent *)self brightnessSystemClient];
        v10 = [v14 copyPropertyForKey:@"TrustedLux"];
      }

      [v9 setObject:v10 forKeyedSubscript:@"lux"];
      v15 = PLLogDisplay();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v34 = [v9 objectForKeyedSubscript:@"lux"];
        [v34 doubleValue];
        LODWORD(location[0]) = 134217984;
        *(location + 4) = v35;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Value for Lux: %f", location, 0xCu);
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

    v23 = [(PLDisplayAgent *)self HDRHeadroom];

    if (v23)
    {
      v24 = [(PLDisplayAgent *)self HDRHeadroom];
      [v9 setObject:v24 forKeyedSubscript:@"EDRHeadroom"];

      [(PLDisplayAgent *)self setHDRHeadroom:0];
    }

    if ([(PLDisplayAgent *)self isMIEActive])
    {
      v25 = [(PLDisplayAgent *)self uAmpsFilterTimer];
      v26 = v25 == 0;

      if (v26)
      {
        objc_initWeak(location, self);
        v27 = objc_alloc(MEMORY[0x277D3F250]);
        v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
        v29 = [(PLOperator *)self workQueue];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __61__PLDisplayAgent_logEventForwardDisplayWithRawData_withDate___block_invoke;
        v36[3] = &unk_27825A810;
        objc_copyWeak(&v37, location);
        v30 = [v27 initWithFireDate:v28 withInterval:0 withTolerance:0 repeats:v29 withUserInfo:v36 withQueue:0.0 withBlock:0.0];
        [(PLDisplayAgent *)self setUAmpsFilterTimer:v30];

        v31 = [(PLDisplayAgent *)self uAmpsFilterTimer];
        [v31 arm];

        objc_destroyWeak(&v37);
        objc_destroyWeak(location);
      }

      [(PLDisplayAgent *)self setUAmpsEntry:v9];
    }

    else
    {
      v32 = PLLogDisplay();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v9;
        _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "Event Forward display entry: %@", location, 0xCu);
      }

      [(PLOperator *)self logEntry:v9];
      [(PLDisplayAgent *)self modelDisplayPower:v9];
      [(PLDisplayAgent *)self qualifyDisplayPower:v9];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __61__PLDisplayAgent_logEventForwardDisplayWithRawData_withDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reArmUAmpsCallback];
}

- (void)reArmUAmpsCallback
{
  v3 = [(PLDisplayAgent *)self uAmpsEntry];
  [(PLOperator *)self logEntry:v3];

  v4 = [(PLDisplayAgent *)self uAmpsEntry];
  [(PLDisplayAgent *)self modelDisplayPower:v4];

  v5 = [(PLDisplayAgent *)self uAmpsEntry];
  [(PLDisplayAgent *)self qualifyDisplayPower:v5];

  v6 = [(PLDisplayAgent *)self uAmpsFilterTimer];
  [v6 invalidate];

  [(PLDisplayAgent *)self setUAmpsFilterTimer:0];

  [(PLDisplayAgent *)self setUAmpsEntry:0];
}

- (void)logEventForwardColorAdaptationMode
{
  v3 = [(PLDisplayAgent *)self colorAdaptationClient];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CFD398] supportsAdaptation];

    if (v5)
    {
      v10 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CAModeEnabled"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
      v7 = [(PLDisplayAgent *)self colorAdaptationClient];
      v8 = [v7 getEnabled];

      v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      [v6 setObject:v9 forKeyedSubscript:@"CAModeEnabled"];

      [(PLOperator *)self logEntry:v6];
    }
  }
}

- (void)logEventForwardALSUserPreferencesEntryWithLux:(id)a3
{
  v13 = a3;
  v4 = [(PLDisplayAgent *)self brightnessSystemClient];

  if (v4 && ([MEMORY[0x277D3F208] isMac] & 1) == 0)
  {
    v5 = [(PLDisplayAgent *)self brightnessSystemClient];
    v6 = [v5 copyPropertyForKey:@"ALSUserPreference"];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEB68] null];

      if (v6 != v7)
      {
        v8 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSUserPreferences"];
        v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
        v10 = v9;
        if (v13)
        {
          [v9 setObject:v13 forKeyedSubscript:@"Lux"];
        }

        v11 = [v6 objectForKey:@"Prefs"];
        v12 = [v11 objectForKey:@"thirdSlope"];
        [v10 setObject:v12 forKeyedSubscript:@"thirdSlope"];

        [(PLOperator *)self logEntry:v10];
      }
    }
  }
}

- (void)logEventForwardExtendedALSUserPreferences:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v80 = [(PLOperator *)PLDisplayAgent entryKeyForType:v4 andName:@"ALSUserPreferences"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v80 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"timestamp"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = [v10 convertFromSystemToMonotonic];
  [v6 setEntryDate:v11];

  v12 = [v5 objectForKeyedSubscript:@"e0a"];
  [v6 setObject:v12 forKeyedSubscript:@"E0a"];

  v13 = [v5 objectForKeyedSubscript:@"e0b"];
  [v6 setObject:v13 forKeyedSubscript:@"E0b"];

  v14 = [v5 objectForKeyedSubscript:@"e0b"];
  [v6 setObject:v14 forKeyedSubscript:@"E0b"];

  v15 = [v5 objectForKeyedSubscript:@"e1"];
  [v6 setObject:v15 forKeyedSubscript:@"E1"];

  v16 = [v5 objectForKeyedSubscript:@"e2"];
  [v6 setObject:v16 forKeyedSubscript:@"E2"];

  v17 = [v5 objectForKeyedSubscript:@"l0a"];
  [v6 setObject:v17 forKeyedSubscript:@"L0a"];

  v18 = [v5 objectForKeyedSubscript:@"l0b"];
  [v6 setObject:v18 forKeyedSubscript:@"L0b"];

  v19 = [v5 objectForKeyedSubscript:@"l1"];
  [v6 setObject:v19 forKeyedSubscript:@"L1"];

  v20 = [v5 objectForKeyedSubscript:@"l2"];
  [v6 setObject:v20 forKeyedSubscript:@"L2"];

  v21 = [v5 objectForKeyedSubscript:@"slider"];
  [v6 setObject:v21 forKeyedSubscript:@"S"];

  v22 = MEMORY[0x277CCABB0];
  v23 = [v5 objectForKeyedSubscript:@"frontLux"];
  [v23 floatValue];
  v25 = [v22 numberWithDouble:roundf(v24)];
  [v6 setObject:v25 forKeyedSubscript:@"Lux"];

  v26 = MEMORY[0x277CCABB0];
  v27 = [v5 objectForKeyedSubscript:@"rearLux"];
  [v27 floatValue];
  v29 = [v26 numberWithDouble:roundf(v28)];
  [v6 setObject:v29 forKeyedSubscript:@"rearLux"];

  v30 = MEMORY[0x277CCABB0];
  v31 = [v5 objectForKeyedSubscript:@"trustedLux"];
  [v31 floatValue];
  v33 = [v30 numberWithDouble:roundf(v32)];
  [v6 setObject:v33 forKeyedSubscript:@"trustedLux"];

  v34 = MEMORY[0x277CCABB0];
  v35 = [v5 objectForKeyedSubscript:@"delayedAPCE"];
  [v35 floatValue];
  v37 = [v34 numberWithDouble:roundf(v36 * 100.0)];
  [v6 setObject:v37 forKeyedSubscript:@"delayedAPCE"];

  v38 = MEMORY[0x277CCABB0];
  v39 = [v5 objectForKeyedSubscript:@"ecoModeFactor"];
  [v39 floatValue];
  v41 = [v38 numberWithDouble:roundf(v40 * 100.0)];
  [v6 setObject:v41 forKeyedSubscript:@"ecoModeFactor"];

  v42 = [v5 objectForKeyedSubscript:@"aabParamsUpdateReason"];
  [v6 setObject:v42 forKeyedSubscript:@"aabParamsUpdateReason"];

  v43 = MEMORY[0x277CCABB0];
  v44 = [v5 objectForKeyedSubscript:@"inactiveLength"];
  [v44 floatValue];
  v46 = [v43 numberWithDouble:roundf(v45 * 100.0)];
  [v6 setObject:v46 forKeyedSubscript:@"inactiveLength"];

  v47 = [v5 objectForKeyedSubscript:@"inactiveStart"];
  [v6 setObject:v47 forKeyedSubscript:@"inactiveStart"];

  v48 = [v5 objectForKeyedSubscript:@"alternativeE0a"];
  [v6 setObject:v48 forKeyedSubscript:@"alternativeE0a"];

  v49 = [v5 objectForKeyedSubscript:@"alternativeE0b"];
  [v6 setObject:v49 forKeyedSubscript:@"alternativeE0b"];

  v50 = [v5 objectForKeyedSubscript:@"alternativeE1"];
  [v6 setObject:v50 forKeyedSubscript:@"alternativeE1"];

  v51 = [v5 objectForKeyedSubscript:@"alternativeE2"];
  [v6 setObject:v51 forKeyedSubscript:@"alternativeE2"];

  v52 = MEMORY[0x277CCABB0];
  v53 = [v5 objectForKeyedSubscript:@"alternativeL0a"];
  [v53 floatValue];
  v55 = [v52 numberWithDouble:roundf(v54 * 100.0)];
  [v6 setObject:v55 forKeyedSubscript:@"alternativeL0a"];

  v56 = MEMORY[0x277CCABB0];
  v57 = [v5 objectForKeyedSubscript:@"alternativeL0b"];
  [v57 floatValue];
  v59 = [v56 numberWithDouble:roundf(v58 * 100.0)];
  [v6 setObject:v59 forKeyedSubscript:@"alternativeL0b"];

  v60 = MEMORY[0x277CCABB0];
  v61 = [v5 objectForKeyedSubscript:@"alternativeL1"];
  [v61 floatValue];
  v63 = [v60 numberWithDouble:roundf(v62 * 100.0)];
  [v6 setObject:v63 forKeyedSubscript:@"alternativeL1"];

  v64 = MEMORY[0x277CCABB0];
  v65 = [v5 objectForKeyedSubscript:@"alternativeL2"];
  [v65 floatValue];
  v67 = [v64 numberWithDouble:roundf(v66 * 100.0)];
  [v6 setObject:v67 forKeyedSubscript:@"alternativeL2"];

  v68 = MEMORY[0x277CCABB0];
  v69 = [v5 objectForKeyedSubscript:@"alternativeThirdSlope"];
  [v69 floatValue];
  v71 = [v68 numberWithDouble:roundf(v70 * 10000.0)];
  [v6 setObject:v71 forKeyedSubscript:@"alternativeThirdSlope"];

  v72 = MEMORY[0x277CCABB0];
  v73 = [v5 objectForKeyedSubscript:@"nitsDelta"];
  [v73 floatValue];
  v75 = [v72 numberWithDouble:roundf(v74 * 100.0)];
  [v6 setObject:v75 forKeyedSubscript:@"nitsDelta"];

  v76 = MEMORY[0x277CCABB0];
  v77 = [v5 objectForKeyedSubscript:@"nitsDeltaAlternative"];

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
  v3 = [(PLDisplayAgent *)self brightnessSystemClient];

  if (v3)
  {
    v4 = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PLDisplayAgent_logEventForwardALSUserPreferencesWithCurrLux__block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __62__PLDisplayAgent_logEventForwardALSUserPreferencesWithCurrLux__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) brightnessSystemClient];
  v3 = [v2 copyPropertyForKey:@"TrustedLux"];

  [*(a1 + 32) logEventForwardALSUserPreferencesEntryWithLux:v3];
}

- (void)logEventForwardLuxStats:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LuxStats"];
    v6 = [v4 valueForKey:@"rearLux"];
    v7 = [v6 integerValue];

    if ([MEMORY[0x277D3F208] isiPhone])
    {
      if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] >= 1001021)
      {
        v8 = [v4 valueForKey:@"gainChanged"];
        v9 = [v8 BOOLValue];

        if (v9)
        {
          v10 = PLLogDisplay();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v18 = 134217984;
            v19 = v7;
            _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "LuxStats gain changed, using last valid RearLux value %ld", &v18, 0xCu);
          }

          goto LABEL_20;
        }
      }
    }

    if ([(PLDisplayAgent *)self lastRearLuxValue]!= v7)
    {
      if ([(PLDisplayAgent *)self lastRearLuxValue]== -1)
      {
        v14 = 0.0;
        v12 = 0.0;
      }

      else
      {
        v11 = [(PLDisplayAgent *)self lastRearLuxValue];
        v12 = v11 - [(PLDisplayAgent *)self lastRearLuxValue]* 0.2;
        v13 = [(PLDisplayAgent *)self lastRearLuxValue];
        v14 = v13 + [(PLDisplayAgent *)self lastRearLuxValue]* 0.2;
      }

      if ([(PLDisplayAgent *)self lastRearLuxValue]== -1 || (v12 <= v7 ? (v15 = v14 < v7) : (v15 = 1), v15))
      {
LABEL_20:
        v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
        [(PLOperator *)self logEntry:v16];
        [(PLDisplayAgent *)self setLastRearLuxValue:v7];
      }
    }
  }

  else
  {
    v5 = PLLogDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "empty payload for LuxStats", &v18, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardTouch
{
  v3 = [(PLDisplayAgent *)self iokitTouch];

  if (v3)
  {
    v4 = [(PLDisplayAgent *)self iokitTouch];
    v7 = [v4 propertiesForKey:@"PowerStates"];

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
  byte_2811F48FB = result;
  return result;
}

- (void)logEventBackwardRampInfo:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"RampInfo"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  if (v4)
  {
    v7 = [v4 objectForKeyedSubscript:@"AAPRampStats"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"AAPRampStats"];
      v9 = [v8 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v9 forKeyedSubscript:@"AAP_NumberOfUpdates"];

      v10 = [v4 objectForKeyedSubscript:@"AAPRampStats"];
      v11 = [v10 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v11 forKeyedSubscript:@"AAP_RampFrequency"];

      v12 = [v4 objectForKeyedSubscript:@"AAPRampStats"];
      v13 = [v12 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v13 forKeyedSubscript:@"AAP_RampLength"];

      v14 = [v4 objectForKeyedSubscript:@"AAPRampStats"];
      v15 = [v14 objectForKeyedSubscript:@"RampOrigin"];
      [v6 setObject:v15 forKeyedSubscript:@"AAP_RampOrigin"];

      v16 = [v4 objectForKeyedSubscript:@"AAPRampStats"];
      v17 = [v16 objectForKeyedSubscript:@"RampTarget"];
      [v6 setObject:v17 forKeyedSubscript:@"AAP_RampTarget"];
    }

    v18 = [v4 objectForKeyedSubscript:@"ColourRampStats"];

    if (v18)
    {
      v19 = [v4 objectForKeyedSubscript:@"ColourRampStats"];
      v20 = [v19 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v20 forKeyedSubscript:@"Colour_NumberOfUpdates"];

      v21 = [v4 objectForKeyedSubscript:@"ColourRampStats"];
      v22 = [v21 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v22 forKeyedSubscript:@"Colour_RampFrequency"];

      v23 = [v4 objectForKeyedSubscript:@"ColourRampStats"];
      v24 = [v23 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v24 forKeyedSubscript:@"Colour_RampLength"];

      v25 = [v4 objectForKeyedSubscript:@"ColourRampStats"];
      v26 = [v25 objectForKeyedSubscript:@"RampOrigin"];
      v27 = [v26 objectForKeyedSubscript:@"X"];
      [v6 setObject:v27 forKeyedSubscript:@"Colour_RampOrigin_X"];

      v28 = [v4 objectForKeyedSubscript:@"ColourRampStats"];
      v29 = [v28 objectForKeyedSubscript:@"RampOrigin"];
      v30 = [v29 objectForKeyedSubscript:@"Y"];
      [v6 setObject:v30 forKeyedSubscript:@"Colour_RampOrigin_Y"];

      v31 = [v4 objectForKeyedSubscript:@"ColourRampStats"];
      v32 = [v31 objectForKeyedSubscript:@"RampTarget"];
      v33 = [v32 objectForKeyedSubscript:@"X"];
      [v6 setObject:v33 forKeyedSubscript:@"Colour_RampTarget_X"];

      v34 = [v4 objectForKeyedSubscript:@"ColourRampStats"];
      v35 = [v34 objectForKeyedSubscript:@"RampTarget"];
      v36 = [v35 objectForKeyedSubscript:@"Y"];
      [v6 setObject:v36 forKeyedSubscript:@"Colour_RampTarget_Y"];
    }

    v37 = [v4 objectForKeyedSubscript:@"SDRRampStats"];

    if (v37)
    {
      v38 = [v4 objectForKeyedSubscript:@"SDRRampStats"];
      v39 = [v38 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v39 forKeyedSubscript:@"SDR_NumberOfUpdates"];

      v40 = [v4 objectForKeyedSubscript:@"SDRRampStats"];
      v41 = [v40 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v41 forKeyedSubscript:@"SDR_RampFrequency"];

      v42 = [v4 objectForKeyedSubscript:@"SDRRampStats"];
      v43 = [v42 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v43 forKeyedSubscript:@"SDR_RampLength"];

      v44 = [v4 objectForKeyedSubscript:@"SDRRampStats"];
      v45 = [v44 objectForKeyedSubscript:@"RampOrigin"];
      [v6 setObject:v45 forKeyedSubscript:@"SDR_RampOrigin"];

      v46 = [v4 objectForKeyedSubscript:@"SDRRampStats"];
      v47 = [v46 objectForKeyedSubscript:@"RampTarget"];
      [v6 setObject:v47 forKeyedSubscript:@"SDR_RampTarget"];
    }

    v48 = [v4 objectForKeyedSubscript:@"EDRRampStats"];

    if (v48)
    {
      v49 = [v4 objectForKeyedSubscript:@"EDRRampStats"];
      v50 = [v49 objectForKeyedSubscript:@"NumberOfUpdates"];
      [v6 setObject:v50 forKeyedSubscript:@"EDR_NumberOfUpdates"];

      v51 = [v4 objectForKeyedSubscript:@"EDRRampStats"];
      v52 = [v51 objectForKeyedSubscript:@"RampFrequency"];
      [v6 setObject:v52 forKeyedSubscript:@"EDR_RampFrequency"];

      v53 = [v4 objectForKeyedSubscript:@"EDRRampStats"];
      v54 = [v53 objectForKeyedSubscript:@"RampLength"];
      [v6 setObject:v54 forKeyedSubscript:@"EDR_RampLength"];

      v55 = [v4 objectForKeyedSubscript:@"EDRRampStats"];
      v56 = [v55 objectForKeyedSubscript:@"RampOrigin"];
      [v6 setObject:v56 forKeyedSubscript:@"EDR_RampOrigin"];

      v57 = [v4 objectForKeyedSubscript:@"EDRRampStats"];
      v58 = [v57 objectForKeyedSubscript:@"RampTarget"];
      [v6 setObject:v58 forKeyedSubscript:@"EDR_RampTarget"];
    }

    v59 = [v4 objectForKeyedSubscript:@"isFlipbookActive"];
    [v6 setObject:v59 forKeyedSubscript:@"isFlipbookActive"];

    [(PLOperator *)self logEntry:v6];
  }

  else
  {
    v60 = PLLogDisplay();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      *v61 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v60, OS_LOG_TYPE_DEBUG, "empty payload for RampInfo", v61, 2u);
    }
  }
}

- (void)logEventBackwardCurveUpdate:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogDisplay();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v53 = self;
    if (v6)
    {
      *buf = 138412290;
      v61 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "CurveUpdate is %@", buf, 0xCu);
    }

    v7 = 0x278257000uLL;
    v8 = *MEMORY[0x277D3F5C8];
    v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CurveUpdate"];
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [MEMORY[0x277CBEAA8] monotonicDate];
    v11 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];

    v54 = v5;
    v56 = v10;
    v57 = v9;
    if (v11)
    {
      v12 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];
      v13 = [v12 objectForKeyedSubscript:@"lux"];

      v14 = v8;
      if ([v13 count])
      {
        v15 = 0;
        do
        {
          v16 = objc_alloc(MEMORY[0x277D3F190]);
          v17 = [(PLOperator *)PLDisplayAgent entryKeyForType:v14 andName:@"CurveUpdate"];
          v18 = [v16 initWithEntryKey:v17 withDate:v10];

          v19 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];
          v20 = [v19 objectForKeyedSubscript:@"lux"];
          v21 = [v20 objectAtIndexedSubscript:v15];
          [v18 setObject:v21 forKeyedSubscript:@"lux"];

          v22 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];
          v23 = [v22 objectForKeyedSubscript:@"nits"];
          v24 = [v23 objectAtIndexedSubscript:v15];
          [v18 setObject:v24 forKeyedSubscript:@"nits"];

          v10 = v56;
          v7 = 0x278257000uLL;

          v9 = v57;
          [v18 setObject:&unk_282C116B8 forKeyedSubscript:@"level"];
          [v57 addObject:v18];

          ++v15;
        }

        while ([v13 count] > v15);
      }

      v5 = v54;
      v8 = v14;
    }

    v25 = [v4 objectForKeyedSubscript:@"CurveLevelMed"];

    v55 = v8;
    if (v25)
    {
      v26 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];
      v27 = [v26 objectForKeyedSubscript:@"lux"];

      if ([v27 count])
      {
        v28 = 0;
        do
        {
          v29 = objc_alloc(MEMORY[0x277D3F190]);
          v30 = [(PLOperator *)PLDisplayAgent entryKeyForType:v8 andName:@"CurveUpdate"];
          v31 = [v29 initWithEntryKey:v30 withDate:v10];

          v32 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];
          v33 = [v32 objectForKeyedSubscript:@"lux"];
          v34 = [v33 objectAtIndexedSubscript:v28];
          [v31 setObject:v34 forKeyedSubscript:@"lux"];

          v35 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];
          v36 = [v35 objectForKeyedSubscript:@"nits"];
          v37 = [v36 objectAtIndexedSubscript:v28];
          [v31 setObject:v37 forKeyedSubscript:@"nits"];

          v10 = v56;
          v7 = 0x278257000uLL;

          v9 = v57;
          [v31 setObject:&unk_282C116D0 forKeyedSubscript:@"level"];
          [v57 addObject:v31];

          v8 = v55;
          ++v28;
        }

        while ([v27 count] > v28);
      }

      v5 = v54;
    }

    v38 = [v4 objectForKeyedSubscript:@"CurveLevelLow"];

    if (v38)
    {
      v39 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];
      v40 = [v39 objectForKeyedSubscript:@"lux"];

      if ([v40 count])
      {
        v41 = 0;
        do
        {
          v42 = objc_alloc(MEMORY[0x277D3F190]);
          v43 = [*(v7 + 3296) entryKeyForType:v8 andName:@"CurveUpdate"];
          v44 = [v42 initWithEntryKey:v43 withDate:v10];

          v45 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];
          v46 = [v45 objectForKeyedSubscript:@"lux"];
          v47 = [v46 objectAtIndexedSubscript:v41];
          [v44 setObject:v47 forKeyedSubscript:@"lux"];

          v48 = [v4 objectForKeyedSubscript:@"CurveLevelHigh"];
          v49 = [v48 objectForKeyedSubscript:@"nits"];
          v50 = [v49 objectAtIndexedSubscript:v41];
          [v44 setObject:v50 forKeyedSubscript:@"nits"];

          v10 = v56;
          v7 = 0x278257000;

          v9 = v57;
          [v44 setObject:&unk_282C116E8 forKeyedSubscript:@"level"];
          [v57 addObject:v44];

          v8 = v55;
          ++v41;
        }

        while ([v40 count] > v41);
      }

      v5 = v54;
    }

    if ([v9 count])
    {
      v58 = v5;
      v59 = v9;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      [(PLOperator *)v53 logEntries:v51 withGroupID:v5];
    }
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "empty payload for CurveUpdate", buf, 2u);
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardALSThreshold:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLDisplayAgent entryKeyForType:v4 andName:@"ALSThreshold"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardALSSamplesBeforeWake:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v27 = self;
    v5 = *MEMORY[0x277D3F5C8];
    v28 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AmbientLight"];
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [v4 objectForKeyedSubscript:@"count"];
    v8 = [v7 unsignedIntValue];

    v30 = [v4 objectForKeyedSubscript:@"timestamp"];
    v9 = [v4 objectForKeyedSubscript:@"lux"];
    v10 = [v4 objectForKeyedSubscript:@"color_x"];
    v29 = v4;
    v11 = [v4 objectForKeyedSubscript:@"color_y"];
    if (v8)
    {
      v12 = 0;
      v13 = v8;
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
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "ALSSamplesBeforeWake for the count=%d at the time=%@ is %@", buf, 0x1Cu);
        }

        [v6 addObject:v19];
        ++v12;
      }

      while (v13 != v12);
    }

    v24 = v28;
    if ([v6 count])
    {
      v31 = v28;
      v32 = v6;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [(PLOperator *)v27 logEntries:v25 withGroupID:v28];
    }

    v4 = v29;
  }

  else
  {
    v24 = PLLogDisplay();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "empty payload for ALSSamplesBeforeWake", buf, 2u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardAmbientLight:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(MEMORY[0x277D3F180], "fullMode") && self->_ShouldLogAmbient)
  {
    if (v4)
    {
      v28 = self;
      v5 = *MEMORY[0x277D3F5C8];
      v30 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AmbientLight"];
      v6 = [MEMORY[0x277CBEB18] array];
      v7 = [v4 objectForKeyedSubscript:@"count"];
      v8 = [v7 unsignedIntValue];

      v31 = [v4 objectForKeyedSubscript:@"timestamp"];
      v9 = [v4 objectForKeyedSubscript:@"lux"];
      v10 = [v4 objectForKeyedSubscript:@"color_x"];
      v29 = v4;
      v11 = [v4 objectForKeyedSubscript:@"color_y"];
      if (v8)
      {
        v12 = 0;
        v13 = v8;
        do
        {
          v14 = v6;
          v15 = MEMORY[0x277CBEAA8];
          v16 = [v31 objectAtIndexedSubscript:v12];
          [v16 doubleValue];
          v17 = [v15 dateWithTimeIntervalSinceReferenceDate:?];

          v18 = objc_alloc(MEMORY[0x277D3F190]);
          v19 = [(PLOperator *)PLDisplayAgent entryKeyForType:v5 andName:@"AmbientLight"];
          v20 = [v18 initWithEntryKey:v19 withDate:v17];

          v21 = [v9 objectAtIndexedSubscript:v12];
          [v20 setObject:v21 forKeyedSubscript:@"Lux"];

          v22 = [v10 objectAtIndexedSubscript:v12];
          [v20 setObject:v22 forKeyedSubscript:@"colorX"];

          v23 = [v11 objectAtIndexedSubscript:v12];
          [v20 setObject:v23 forKeyedSubscript:@"colorY"];

          v24 = PLLogDisplay();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109634;
            v35 = v12;
            v36 = 2112;
            v37 = v17;
            v38 = 2112;
            v39 = v20;
            _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "AmbientLight for the count=%d at the time=%@ is %@", buf, 0x1Cu);
          }

          v6 = v14;
          [v14 addObject:v20];

          ++v12;
        }

        while (v13 != v12);
      }

      v25 = v30;
      if ([v6 count])
      {
        v32 = v30;
        v33 = v6;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [(PLOperator *)v28 logEntries:v26 withGroupID:v30];
      }

      v4 = v29;
    }

    else
    {
      v25 = PLLogDisplay();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "empty payload for AmbientLight", buf, 2u);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleBrightnessClientNotification:(id)a3 withValue:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqual:@"BacklightPowerMilliWatts"])
  {
    v8 = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke;
    block[3] = &unk_278259658;
    block[4] = self;
    v71 = v7;
    dispatch_async_and_wait(v8, block);

    v9 = v71;
LABEL_38:

    goto LABEL_39;
  }

  if ([v6 isEqual:@"BacklightPowerNits"])
  {
    v10 = [(PLOperator *)self workQueue];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1750;
    v68[3] = &unk_278259658;
    v68[4] = self;
    v69 = v7;
    dispatch_async_and_wait(v10, v68);

    v9 = v69;
    goto LABEL_38;
  }

  if ([v6 isEqual:@"AODRampTelemetry"])
  {
    v11 = [(PLOperator *)self workQueue];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761;
    v65[3] = &unk_278259658;
    v66 = v7;
    v67 = self;
    dispatch_async_and_wait(v11, v65);

    v9 = v66;
    goto LABEL_38;
  }

  if ([v6 isEqual:@"AODCurveUpdate"])
  {
    v12 = [(PLOperator *)self workQueue];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762;
    v62[3] = &unk_278259658;
    v63 = v7;
    v64 = self;
    dispatch_async_and_wait(v12, v62);

    v9 = v63;
    goto LABEL_38;
  }

  if ([v6 isEqual:@"AODWakeFromALSThreshold"])
  {
    v13 = [(PLOperator *)self workQueue];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763;
    v59[3] = &unk_278259658;
    v60 = v7;
    v61 = self;
    dispatch_async_and_wait(v13, v59);

    v9 = v60;
    goto LABEL_38;
  }

  if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(MEMORY[0x277D3F180], "fullMode") && objc_msgSend(v6, "isEqual:", @"CBAmbientLightTelemetry") && self->_ShouldLogAmbient)
  {
    v14 = [(PLOperator *)self workQueue];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764;
    v56[3] = &unk_278259658;
    v57 = v7;
    v58 = self;
    dispatch_async_and_wait(v14, v56);

    v9 = v57;
    goto LABEL_38;
  }

  if ([v6 isEqual:@"CBFinalBrightnessCommit"] && -[PLDisplayAgent supportsFinalBrightnessCommit](self, "supportsFinalBrightnessCommit"))
  {
    v15 = [(PLOperator *)self workQueue];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765;
    v53[3] = &unk_278259658;
    v54 = v7;
    v55 = self;
    dispatch_async_and_wait(v15, v53);

    v9 = v54;
    goto LABEL_38;
  }

  if ([v6 isEqual:@"DisplayBrightness"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [(PLOperator *)self workQueue];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766;
      v51[3] = &unk_278259658;
      v51[4] = self;
      v52 = v7;
      dispatch_async_and_wait(v16, v51);

      v9 = v52;
      goto LABEL_38;
    }
  }

  if ([v6 isEqual:@"BrightnessTransaction"])
  {
    v17 = [(PLOperator *)self workQueue];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773;
    v48[3] = &unk_278259658;
    v49 = v7;
    v50 = self;
    dispatch_async_and_wait(v17, v48);

    v9 = v49;
    goto LABEL_38;
  }

  if ([v6 isEqual:@"DisplayBrightnessAuto"])
  {
    v18 = [(PLOperator *)self workQueue];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1777;
    v46[3] = &unk_278259658;
    v46[4] = self;
    v47 = v7;
    dispatch_async_and_wait(v18, v46);

    v9 = v47;
    goto LABEL_38;
  }

  if ([MEMORY[0x277CFD398] supportsAdaptation] && objc_msgSend(v6, "isEqual:", @"ColorAdaptationEnabled"))
  {
    v19 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CAModeEnabled"];
    [(PLDisplayAgent *)self logBrightnessDataWithEntryKey:v19 withColName:@"CAModeEnabled" withValue:v7];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v20 = objc_opt_class();
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1782;
      v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v45[4] = v20;
      if (qword_2811F49C0 != -1)
      {
        dispatch_once(&qword_2811F49C0, v45);
      }

      if (byte_2811F4902 == 1)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]", 3514, v6, v7];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v24 = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]"];
        [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:3514];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v73 = v21;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if ([v6 isEqual:@"PowerLogReport"])
    {
      v27 = [(PLOperator *)self workQueue];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1786;
      v41[3] = &unk_27825D6E8;
      v42 = v7;
      v43 = self;
      v44 = v6;
      dispatch_async(v27, v41);

      v9 = v42;
      goto LABEL_38;
    }

    if ([v6 isEqual:@"CBBlueReductionStatus"])
    {
      [(PLDisplayAgent *)self logBlueLightDataWithDictionary:v7];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v29 = objc_opt_class();
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1811;
        v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v40[4] = v29;
        if (qword_2811F49D0 != -1)
        {
          dispatch_once(&qword_2811F49D0, v40);
        }

        if (byte_2811F4904 == 1)
        {
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]", 3576, v6, v7];
          v31 = MEMORY[0x277D3F178];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v33 = [v32 lastPathComponent];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]"];
          [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:3576];

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v73 = v30;
            _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    else if (+[PLDisplayAgent shouldLogLuxStats](PLDisplayAgent, "shouldLogLuxStats") && [v6 isEqual:@"RLuxStats"])
    {
      v36 = [(PLOperator *)self workQueue];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812;
      v37[3] = &unk_278259658;
      v38 = v7;
      v39 = self;
      dispatch_async_and_wait(v36, v37);

      v9 = v38;
      goto LABEL_38;
    }
  }

LABEL_39:

  v28 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
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
      block[3] = &unk_27825A310;
      v66 = @"ALS";
      v67 = v17;
      if (qword_2811F4990 != -1)
      {
        dispatch_once(&qword_2811F4990, block);
      }

      v18 = byte_2811F48FC;

      if (v18 == 1)
      {
        v56 = v3;
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"PowerReal:%f PowerIfALSOn:%f alsPowerSaved:%f", *&v7, *&v9, v7 - v9];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v22 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
        [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:3333];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v69 = v19;
          _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v3 = v56;
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
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1732;
      v62[3] = &unk_27825A310;
      v63 = @"ALS";
      v64 = v31;
      if (qword_2811F4998 != -1)
      {
        dispatch_once(&qword_2811F4998, v62);
      }

      v32 = byte_2811F48FD;

      if (v32 == 1)
      {
        v57 = v3;
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"significantChange:%d newlyZero:%d", v29 >= 1.0, v28];
        v34 = MEMORY[0x277D3F178];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v36 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke_2"];
        [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:3341];

        v38 = PLLogCommon();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v69 = v33;
          _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v3 = v57;
      }
    }

    if (v29 >= 1.0 || v28)
    {
      [*(a1 + 32) setLastALSPowerSaved:v15];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v39 = *(a1 + 32);
        v40 = objc_opt_class();
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1739;
        v59[3] = &unk_27825A310;
        v60 = @"ALS";
        v61 = v40;
        if (qword_2811F49A0 != -1)
        {
          dispatch_once(&qword_2811F49A0, v59);
        }

        v41 = byte_2811F48FE;

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
            *buf = 138412290;
            v69 = v45;
            _os_log_debug_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v3 = v42;
        }
      }

      v51 = MEMORY[0x277D3F1E0];
      v52 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:2.0];
      v53 = [*(a1 + 32) workQueue];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1744;
      v58[3] = &unk_27825B230;
      v58[4] = *(a1 + 32);
      v54 = [v51 scheduledTimerWithMonotonicFireDate:v52 withInterval:v53 withQueue:v58 withBlock:0.0];
      [*(a1 + 32) setLogLastALSPowerSavedTimer:v54];
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F48FC = result;
  return result;
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1732(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F48FD = result;
  return result;
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1739(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F48FE = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1744(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
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
      block[3] = &unk_27825A310;
      v21 = @"ALS";
      v22 = v5;
      if (qword_2811F49A8 != -1)
      {
        dispatch_once(&qword_2811F49A8, block);
      }

      v6 = byte_2811F48FF;

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
          *buf = 138412290;
          v24 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1745(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F48FF = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1750(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
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
      if (qword_2811F49B0 != -1)
      {
        dispatch_once(&qword_2811F49B0, block);
      }

      if (byte_2811F4900 == 1)
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
          *buf = 138412290;
          v24 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1757(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4900 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1761(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "We Recieved notification for AODRampTelemetry: %@", &v5, 0xCu);
  }

  [*(a1 + 40) logEventBackwardRampInfo:v2];
  v4 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1762(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "We Recieved notification for AODCurveUpdate: %@", &v5, 0xCu);
  }

  [*(a1 + 40) logEventBackwardCurveUpdate:v2];
  v4 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1763(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "We Recieved notification for AODWakeFromALSThreshold: %@", &v8, 0xCu);
  }

  [*(a1 + 40) logEventBackwardALSThreshold:v2];
  v4 = [v2 objectForKeyedSubscript:@"ALSSamplesBeforeWake"];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v2 objectForKeyedSubscript:@"ALSSamplesBeforeWake"];
    [v5 logEventBackwardALSSamplesBeforeWake:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1764(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "We Recieved notification for CBAmbientLight: %@", &v5, 0xCu);
  }

  [*(a1 + 40) logEventBackwardAmbientLight:v2];
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1765(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = PLLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "@kCBFinalBrightnessCommit: %@", &v9, 0xCu);
  }

  v3 = [*(a1 + 32) objectForKey:@"slider"];
  [v3 floatValue];
  v5 = v4 * 100.0;

  [*(a1 + 40) logEventPointUserBrightnessCommitted:v5];
  result = [*(a1 + 40) logEventForwardExtendedALSUserPreferences:*(a1 + 32)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1766(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
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
      v47 = 138412290;
      v48 = v8;
      _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEFAULT, "Received Brightness Notification: %@", &v47, 0xCu);
    }

    v9 = [*(a1 + 32) pendingBacklightEntry];

    if (!v9)
    {
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 40)];
      [v10 setPendingBacklightEntry:v11];
    }

    v12 = [*(a1 + 40) objectForKey:@"NitsPhysical"];
    [v12 floatValue];
    v14 = v13;

    v15 = [*(a1 + 32) brightnessSystemClient];
    v16 = [v15 copyPropertyForKey:@"DisplayBrightnessMin"];
    [v16 doubleValue];
    v18 = v17;

    v19 = [*(a1 + 32) brightnessSystemClient];
    v20 = [v19 copyPropertyForKey:@"DisplayBrightnessMax"];
    [v20 doubleValue];
    v22 = v21;

    v23 = [*(a1 + 40) objectForKey:@"Brightness"];
    [v23 floatValue];
    v25 = v24;

    v26 = PLLogDisplay();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v47 = 134219264;
      v48 = v14;
      v49 = 2048;
      v50 = v18;
      v51 = 2048;
      v52 = v22;
      v53 = 2048;
      v54 = v22 - v18;
      v55 = 2048;
      v56 = v25;
      v57 = 2048;
      v58 = (v25 - v18) * 100.0 / (v22 - v18);
      _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "Reported mNits:%f ,brightnessMin:%f ,brightnessMax:%f ,brightnessDiff:%f ,brightness:%f ,brightnessPercentage:%f ", &v47, 0x3Eu);
    }

    v27 = [MEMORY[0x277CCABB0] numberWithDouble:(v25 - v18) * 100.0 / (v22 - v18)];
    v28 = [*(a1 + 32) pendingBacklightEntry];
    [v28 setObject:v27 forKeyedSubscript:@"Brightness"];

    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
    v30 = [*(a1 + 32) pendingBacklightEntry];
    [v30 setObject:v29 forKeyedSubscript:@"SliderValue"];

    v31 = [MEMORY[0x277CCABB0] numberWithDouble:v14 * 1000.0];
    v32 = [*(a1 + 32) pendingBacklightEntry];
    [v32 setObject:v31 forKeyedSubscript:@"mNits"];

    v33 = [*(a1 + 32) pendingBacklightEntryDate];

    if (!v33)
    {
      v34 = [MEMORY[0x277CBEAA8] monotonicDate];
      [*(a1 + 32) setPendingBacklightEntryDate:v34];
    }

    v35 = PLLogDisplay();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 32) pendingBacklightEntry];
      v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v43 = MEMORY[0x277D3F268];
      v44 = [*(a1 + 32) pendingBacklightEntryDate];
      [v43 formattedStringForDate:v44];
      v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v47 = 138412546;
      v48 = v42;
      v49 = 2112;
      v50 = v45;
      _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "Pending Backlight entry: %@, %@", &v47, 0x16u);
    }

    v36 = [*(a1 + 32) backlightFilterTimer];
    v37 = [v36 timerActive];

    if ((v37 & 1) == 0)
    {
      v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      v39 = PLLogDisplay();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [MEMORY[0x277D3F268] formattedStringForDate:v38];
        v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v47 = 138412290;
        v48 = v46;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "Start backlight entry filter timer fireDate=%@", &v47, 0xCu);
      }

      v40 = [*(a1 + 32) backlightFilterTimer];
      [v40 setFireDate:v38];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1773(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = PLLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "BrightnessTransaction payload: %@", &v9, 0xCu);
  }

  v3 = [*(a1 + 32) objectForKey:@"HDR.Headroom"];
  [v3 doubleValue];
  v5 = (v4 * 1000.0);

  v6 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  [*(a1 + 40) setHDRHeadroom:v6];

  v7 = *MEMORY[0x277D85DE8];
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1777(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setAlsOn:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1778;
    block[3] = &unk_27825A310;
    v15 = @"ALS";
    v16 = v3;
    if (qword_2811F49B8 != -1)
    {
      dispatch_once(&qword_2811F49B8, block);
    }

    v4 = byte_2811F4901;

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
        *buf = 138412290;
        v18 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventForwardALSEnabled];
  if ([*(a1 + 32) alsOn] && +[PLDisplayAgent shouldLogALSPowerSaved](PLDisplayAgent, "shouldLogALSPowerSaved"))
  {
    v11 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
    [v12 setObject:&unk_282C116B8 forKeyedSubscript:@"Power"];
    [*(a1 + 32) logEntry:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1778(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F4901 = result;
  return result;
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1782(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4902 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1786(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
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
    v36 = 3221225472;
    v37 = __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1805;
    v38 = &__block_descriptor_40_e5_v8__0lu32l8;
    v39 = v27;
    if (qword_2811F49C8 != -1)
    {
      dispatch_once(&qword_2811F49C8, &block);
    }

    if (byte_2811F4903 == 1)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: harmonyParametersEntry=%@, property=%@, value=%@", "-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke", 3570, v5, *(a1 + 48), *(a1 + 32), block, v36, v37, v38, v39];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v31 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent handleBrightnessClientNotification:withValue:]_block_invoke"];
      [v29 logMessage:v28 fromFile:v31 fromFunction:v32 fromLineNumber:3570];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v41 = v28;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_2_1805(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4903 = result;
  return result;
}

uint64_t __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1811(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4904 = result;
  return result;
}

void __63__PLDisplayAgent_handleBrightnessClientNotification_withValue___block_invoke_1812(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PLLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Received notification for CBrLuxStats: %@", &v5, 0xCu);
  }

  [*(a1 + 40) logEventForwardLuxStats:v2];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)extractDataWithEntry:(id)a3 withColName:(id)a4 withDataArray:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = @"ACBins";
      if (([(__CFString *)v7 isEqualToString:@"AmbientColorBins"]& 1) != 0 || (v12 = @"DCBins", ([(__CFString *)v7 isEqualToString:@"DisplayColorBins"]& 1) != 0) || (v12 = @"ASBins", ([(__CFString *)v7 isEqualToString:@"AdaptationStrengthBins"]& 1) != 0) || (v12 = @"ACABins", ([(__CFString *)v7 isEqualToString:@"AmbientColorBinsAnsi"]& 1) != 0) || (v12 = @"ACTBins", ([(__CFString *)v7 isEqualToString:@"AmbientColorTransitionBins"]& 1) != 0) || (v12 = @"DCTBins", [(__CFString *)v7 isEqualToString:@"DisplayColorTransitionBins"]))
      {

        v7 = v12;
      }

      v13 = [v8 objectAtIndexedSubscript:i];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu", v7, i];
      [v23 setObject:v13 forKeyedSubscript:v14];
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
    if (qword_2811F49D8 != -1)
    {
      dispatch_once(&qword_2811F49D8, block);
    }

    if (byte_2811F4905 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: col=%@, data=%@, entry=%@", "-[PLDisplayAgent extractDataWithEntry:withColName:withDataArray:]", 3615, v7, v8, v23];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent extractDataWithEntry:withColName:withDataArray:]"];
      [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:3615];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PLDisplayAgent_extractDataWithEntry_withColName_withDataArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4905 = result;
  return result;
}

- (void)logBrightnessDataWithEntryKey:(id)a3 withColName:(id)a4 withValue:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  [v11 setObject:v10 forKeyedSubscript:v9];
  [(PLOperator *)self logEntry:v11];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __70__PLDisplayAgent_logBrightnessDataWithEntryKey_withColName_withValue___block_invoke;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v12;
    if (qword_2811F49E0 != -1)
    {
      dispatch_once(&qword_2811F49E0, &block);
    }

    if (byte_2811F4906 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: entryKey=%@, col=%@, value=%@", "-[PLDisplayAgent logBrightnessDataWithEntryKey:withColName:withValue:]", 3622, v8, v9, v10, block, v21, v22, v23, v24];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logBrightnessDataWithEntryKey:withColName:withValue:]"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:3622];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __70__PLDisplayAgent_logBrightnessDataWithEntryKey_withColName_withValue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4906 = result;
  return result;
}

+ (BOOL)shouldLogBLR
{
  if (qword_2811F49E8 != -1)
  {
    dispatch_once(&qword_2811F49E8, &__block_literal_global_1841);
  }

  return byte_2811F4907;
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

  byte_2811F4907 = result;
  return result;
}

+ (BOOL)shouldLogALSPowerSaved
{
  if (qword_2811F49F0 != -1)
  {
    dispatch_once(&qword_2811F49F0, &__block_literal_global_1843);
  }

  return byte_2811F4908;
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

  byte_2811F4908 = v1;
  return result;
}

+ (BOOL)shouldLogBacklightControl
{
  if (qword_2811F49F8 != -1)
  {
    dispatch_once(&qword_2811F49F8, &__block_literal_global_1845);
  }

  return byte_2811F4909;
}

uint64_t __43__PLDisplayAgent_shouldLogBacklightControl__block_invoke()
{
  result = [MEMORY[0x277D3F208] isArchARM];
  byte_2811F4909 = result;
  return result;
}

+ (BOOL)shouldLogDisplay
{
  if (qword_2811F4A00 != -1)
  {
    dispatch_once(&qword_2811F4A00, &__block_literal_global_1847);
  }

  return byte_2811F490A;
}

uint64_t __34__PLDisplayAgent_shouldLogDisplay__block_invoke()
{
  result = [MEMORY[0x277D3F208] isArchARM];
  byte_2811F490A = result;
  return result;
}

+ (BOOL)shouldLogLCD
{
  if (qword_2811F4A08 != -1)
  {
    dispatch_once(&qword_2811F4A08, &__block_literal_global_1849);
  }

  return byte_2811F490B;
}

uint64_t __30__PLDisplayAgent_shouldLogLCD__block_invoke()
{
  result = [MEMORY[0x277D3F208] isMac];
  byte_2811F490B = result;
  return result;
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

  byte_2811F490C = v1;
  return result;
}

uint64_t __41__PLDisplayAgent_shouldLogUserBrightness__block_invoke()
{
  result = [MEMORY[0x277D3F208] isMac];
  byte_2811F490D = result ^ 1;
  return result;
}

+ (BOOL)shouldLogKeyboardBrightness
{
  if (qword_2811F4A20 != -1)
  {
    dispatch_once(&qword_2811F4A20, &__block_literal_global_1855);
  }

  return byte_2811F490E;
}

uint64_t __45__PLDisplayAgent_shouldLogKeyboardBrightness__block_invoke()
{
  v0 = [MEMORY[0x277D3F208] isiPad];
  result = [MEMORY[0x277D3F208] isMac];
  byte_2811F490E = (result | v0) & 1;
  return result;
}

- (void)logBlueLightDataWithDictionary:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLDisplayAgent *)self bluelightFilterTimer];

  if (!v5)
  {
    objc_initWeak(location, self);
    v6 = objc_alloc(MEMORY[0x277D3F250]);
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5];
    v8 = [(PLOperator *)self workQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __49__PLDisplayAgent_logBlueLightDataWithDictionary___block_invoke;
    v32[3] = &unk_27825A810;
    objc_copyWeak(&v33, location);
    v9 = [v6 initWithFireDate:v7 withInterval:0 withTolerance:0 repeats:v8 withUserInfo:v32 withQueue:0.0 withBlock:0.0];
    [(PLDisplayAgent *)self setBluelightFilterTimer:v9];

    v10 = [(PLDisplayAgent *)self bluelightFilterTimer];
    [v10 arm];

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  v11 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BlueLightReductionStatus"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  v13 = [v4 allKeys];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v14)
  {
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v4 objectForKeyedSubscript:v17];
        [v12 setObject:v18 forKeyedSubscript:v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
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
    if (qword_2811F4A28 != -1)
    {
      dispatch_once(&qword_2811F4A28, block);
    }

    if (byte_2811F490F == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: entryKey=%@, entry=%@", "-[PLDisplayAgent logBlueLightDataWithDictionary:]", 3734, v11, v12];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent logBlueLightDataWithDictionary:]"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:3734];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
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
  byte_2811F490F = result;
  return result;
}

- (void)reArmCallback
{
  v3 = [(PLDisplayAgent *)self bluelightStatusEntry];
  [(PLOperator *)self logEntry:v3];

  v4 = [(PLDisplayAgent *)self bluelightFilterTimer];

  if (v4)
  {
    v5 = [(PLDisplayAgent *)self bluelightFilterTimer];
    [v5 invalidate];
  }

  [(PLDisplayAgent *)self setBluelightFilterTimer:0];

  [(PLDisplayAgent *)self setBluelightStatusEntry:0];
}

+ (BOOL)shouldLogTouch
{
  if (qword_2811F4A30 != -1)
  {
    dispatch_once(&qword_2811F4A30, &__block_literal_global_1861);
  }

  return byte_2811F4910;
}

uint64_t __32__PLDisplayAgent_shouldLogTouch__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiOS];
  byte_2811F4910 = result;
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
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:13];
    [v5 setObject:v6 forKey:@"DeviceUsagePage"];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v5 setObject:v7 forKey:@"Built-In"];

    v8 = [(PLOperator *)self workQueue];
    IOHIDEventSystemClientScheduleWithDispatchQueue();

    IOHIDEventSystemClientRegisterEventCallback();
    IOHIDEventSystemClientSetMatching();
  }

  return v4;
}

- (BOOL)updateDisplayIOReportStats:(id)a3 logZeroFramesOnlyOnce:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 subscription])
  {
    [v6 subscription];
    v7 = [v6 subscribedChannels];
    Samples = IOReportCreateSamples();

    if (!Samples)
    {
      LOBYTE(SamplesDelta) = 0;
LABEL_42:

      goto LABEL_43;
    }

    v9 = [MEMORY[0x277CBEAA8] monotonicDate];
    v10 = [v6 ioReportSample];

    if (!v10)
    {
LABEL_39:
      [v6 setIoReportSample:Samples];
      SamplesDelta = [v6 sampleTime];
      [v6 setSampleTimePrevious:SamplesDelta];

      [v6 setSampleTime:v9];
      LOBYTE(SamplesDelta) = 1;
      goto LABEL_41;
    }

    v11 = [v6 ioReportSample];
    SamplesDelta = IOReportCreateSamplesDelta();

    if (!SamplesDelta)
    {
LABEL_41:

      goto LABEL_42;
    }

    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__8;
    v76 = __Block_byref_object_dispose__8;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__8;
    v70 = __Block_byref_object_dispose__8;
    v71 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__8;
    v64 = __Block_byref_object_dispose__8;
    v65 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x3032000000;
    v58[3] = __Block_byref_object_copy__8;
    v58[4] = __Block_byref_object_dispose__8;
    v59 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__8;
    v56[4] = __Block_byref_object_dispose__8;
    v57 = 0;
    v13 = objc_alloc_init(PLDisplayAPLStats);
    IOReportIterate();
    v14 = [v6 sampleTime];
    [v9 timeIntervalSinceDate:v14];
    v16 = v15;

    if (v16 <= 0.0 || ([v61[5] doubleValue], v17 <= 0.0))
    {
      [(PLDisplayAPLStats *)v13 setAvgPower:&unk_282C1C278];
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

    v26 = [(PLDisplayAPLStats *)v13 frames];
    if (v26)
    {
      v27 = [(PLDisplayAPLStats *)v13 frames];
      v28 = [v27 intValue];

      if (v28 >= 1)
      {
        v29 = [(PLDisplayAPLStats *)v13 avgRed];
        [v29 doubleValue];
        v31 = v30;
        v32 = [(PLDisplayAPLStats *)v13 frames];
        [v32 doubleValue];
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

        v37 = [(PLDisplayAPLStats *)v13 avgGreen];
        [v37 doubleValue];
        v39 = v38;
        v40 = [(PLDisplayAPLStats *)v13 frames];
        [v40 doubleValue];
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

        v44 = [(PLDisplayAPLStats *)v13 avgBlue];
        [v44 doubleValue];
        v46 = v45;
        v47 = [(PLDisplayAPLStats *)v13 frames];
        [v47 doubleValue];
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

    v52 = [(PLDisplayAPLStats *)v13 frames];
    if (v52)
    {
      v53 = [(PLDisplayAPLStats *)v13 frames];
      v54 = [v53 intValue];

      if ((v54 & 0x80000000) == 0)
      {
        if (!v4 || updateDisplayIOReportStats_logZeroFramesOnlyOnce__gotZeroFrameAlready != 1)
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
    v6 = &unk_282C116B8;
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

- (void)__FrameBufferEventCallback:(__IOMobileFramebuffer *)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_aligned_alloc(0x4000uLL, 0x4000uLL, 0x100004052888210uLL);
  IOMobileFramebufferGetBufBlock();
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v33 = *v3;
    *buf = 67109120;
    v41 = v33;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Number of data entries retrieved %d \n", buf, 8u);
  }

  v35 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AZLSnapshots"];
  v5 = [MEMORY[0x277CBEB18] array];
  v37 = [MEMORY[0x277CBEAA8] monotonicDate];
  if (*v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v3 + 4);
    v10 = *MEMORY[0x277D3F5C8];
    *&v6 = 67110656;
    v34 = v6;
    do
    {
      v11 = objc_alloc(MEMORY[0x277D3F190]);
      v12 = [(PLOperator *)PLDisplayAgent entryKeyForType:v10 andName:@"AZLSnapshots"];
      v13 = [v11 initWithEntryKey:v12 withDate:v37];

      v14 = PLLogDisplay();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v9 - 3);
        v25 = *(v9 - 2);
        v26 = *(v9 - 1);
        v27 = *v9;
        v28 = v9[1];
        v29 = v9[2];
        v30 = v9[3];
        *buf = v34;
        v41 = v30;
        v42 = 1024;
        v43 = v24;
        v44 = 1024;
        v45 = v25;
        v46 = 1024;
        v47 = v26;
        v48 = 1024;
        v49 = v27;
        v50 = 1024;
        v51 = v28;
        v52 = 1024;
        v53 = v29;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "packet_id[%d]: current_ma(u14.18): 0x%x, voltage_v(u4.10): 0x%x, system_nits(u0.20): 0x%x, azl(u0.20): 0x%x, max_zone_current(0.14): 0x%x, max_row_step_to_step_current(10.14): 0x%x \n", buf, 0x2Cu);
        v15 = v7;
      }

      else
      {
        v15 = 7 * v8;
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

      [v5 addObject:v13];
      ++v8;
      v7 += 7;
      v9 += 7;
    }

    while (v8 < *v3);
  }

  if ([v5 count])
  {
    v38 = v35;
    v39 = v5;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [(PLOperator *)self logEntries:v31 withGroupID:v35];
  }

  [(PLDisplayAgent *)self setAZLSnapshotsEntries:[(PLDisplayAgent *)self AZLSnapshotsEntries]+ *v3];
  free(v3);

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLDisplayAgent_shouldModelPowerFromAPL__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002021, 1002024, 1002025, 0}];
  byte_2811F4911 = result;
  return result;
}

uint64_t __43__PLDisplayAgent_shouldModelPowerFromIOMFB__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002030, 0}];
  byte_2811F4912 = result;
  return result;
}

- (void)updateLastForegroundAppAPL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v20 = v4;
    v5 = [v4 objectForKey:@"entry"];

    v4 = v20;
    if (v5)
    {
      v6 = [v20 objectForKey:@"entry"];
      v7 = [v6 objectForKey:@"AppRole"];
      v8 = [v7 isEqualToValue:&unk_282C11700];

      v9 = [v20 objectForKey:@"entry"];
      v10 = [v9 objectForKey:@"ScreenWeight"];
      v11 = [v10 isEqualToValue:&unk_282C1C1D8];

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

      v4 = v20;
    }
  }
}

- (void)logDisplayAZL
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D3F190]);
  v4 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AZLStats"];
  v5 = [v3 initWithEntryKey:v4];

  if ([MEMORY[0x277D3F208] hasCapability:8] && updateDisplayIOReportAZLStats(self->_displayIOReportAZLStats) && (-[PLDisplayIOReportStats displayAZLStats](self->_displayIOReportAZLStats, "displayAZLStats"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    v9 = [v8 AvgPower];
    v10 = [v7 numberWithUnsignedLongLong:{objc_msgSend(v9, "unsignedLongLongValue")}];
    [v5 setObject:v10 forKeyedSubscript:@"AvgPower"];

    v11 = MEMORY[0x277CCABB0];
    v12 = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    v13 = [v12 azlAccum];
    v14 = [v11 numberWithUnsignedLongLong:{objc_msgSend(v13, "unsignedLongLongValue")}];
    [v5 setObject:v14 forKeyedSubscript:@"AZLAccum"];

    v15 = MEMORY[0x277CCABB0];
    v16 = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    v17 = [v16 nitsAccum];
    v18 = [v15 numberWithUnsignedLongLong:{objc_msgSend(v17, "unsignedLongLongValue")}];
    [v5 setObject:v18 forKeyedSubscript:@"NitsAccum"];

    v19 = MEMORY[0x277CCABB0];
    v20 = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    v21 = [v20 blUpdateCount];
    v22 = [v19 numberWithUnsignedLongLong:{objc_msgSend(v21, "unsignedLongLongValue")}];
    [v5 setObject:v22 forKeyedSubscript:@"BLUpdateCount"];

    v23 = MEMORY[0x277CCABB0];
    v24 = [(PLDisplayIOReportStats *)self->_displayIOReportAZLStats displayAZLStats];
    v25 = [v24 blFrameCount];
    v26 = [v23 numberWithUnsignedLongLong:{objc_msgSend(v25, "unsignedLongLongValue")}];
    [v5 setObject:v26 forKeyedSubscript:@"BLFrameCount"];

    v27 = PLLogDisplay();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v31 = 138412290;
      v32 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "LogDisplayAZL  for entries %@", &v31, 0xCu);
    }

    [(PLOperator *)self logEntry:v5];
  }

  else
  {
    v28 = PLLogDisplay();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v31) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "LogDisplayAZL Error", &v31, 2u);
    }

    if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
    {
      v33[0] = v5;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      [(PLOperator *)self postEntries:v29];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
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
  v67 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    if (updateDisplayIOReportAODStats(self->_displayIOReportAODStats))
    {
      v3 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];

      if (v3)
      {
        v4 = objc_alloc(MEMORY[0x277D3F190]);
        v5 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"DCPAODstats"];
        v6 = [v4 initWithEntryKey:v5];

        v7 = MEMORY[0x277CCABB0];
        v8 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v9 = [v8 awakeCount];
        v10 = [v7 numberWithUnsignedLongLong:{objc_msgSend(v9, "unsignedLongLongValue")}];
        [v6 setObject:v10 forKeyedSubscript:@"awake_count"];

        v11 = MEMORY[0x277CCABB0];
        v12 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v13 = [v12 mediaCount];
        v14 = [v11 numberWithUnsignedLongLong:{objc_msgSend(v13, "unsignedLongLongValue")}];
        [v6 setObject:v14 forKeyedSubscript:@"media_count"];

        v15 = MEMORY[0x277CCABB0];
        v16 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v17 = [v16 flipbookCount];
        v18 = [v15 numberWithUnsignedLongLong:{objc_msgSend(v17, "unsignedLongLongValue")}];
        [v6 setObject:v18 forKeyedSubscript:@"flipbook_count"];

        v19 = MEMORY[0x277CCABB0];
        v20 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v21 = [v20 flipbookDelay];
        v22 = [v19 numberWithUnsignedLongLong:{objc_msgSend(v21, "unsignedLongLongValue")}];
        [v6 setObject:v22 forKeyedSubscript:@"flipbook_delay"];

        v23 = MEMORY[0x277CCABB0];
        v24 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v25 = [v24 mediaScanout];
        v26 = [v23 numberWithUnsignedLongLong:{objc_msgSend(v25, "unsignedLongLongValue")}];
        [v6 setObject:v26 forKeyedSubscript:@"media_scanout"];

        v27 = MEMORY[0x277CCABB0];
        v28 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v29 = [v28 ambientCount];
        v30 = [v27 numberWithUnsignedLongLong:{objc_msgSend(v29, "unsignedLongLongValue")}];
        [v6 setObject:v30 forKeyedSubscript:@"ambient_count"];

        v31 = MEMORY[0x277CCABB0];
        v32 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v33 = [v32 prcRepeatCoun];
        v34 = [v31 numberWithUnsignedLongLong:{objc_msgSend(v33, "unsignedLongLongValue")}];
        [v6 setObject:v34 forKeyedSubscript:@"prc_repeat_coun"];

        v35 = MEMORY[0x277CCABB0];
        v36 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v37 = [v36 pdcRepeatCoun];
        v38 = [v35 numberWithUnsignedLongLong:{objc_msgSend(v37, "unsignedLongLongValue")}];
        [v6 setObject:v38 forKeyedSubscript:@"pdc_repeat_coun"];

        v39 = MEMORY[0x277CCABB0];
        v40 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v41 = [v40 llmCount];
        v42 = [v39 numberWithUnsignedLongLong:{objc_msgSend(v41, "unsignedLongLongValue")}];
        [v6 setObject:v42 forKeyedSubscript:@"llm_count"];

        v43 = MEMORY[0x277CCABB0];
        v44 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v45 = [v44 aplSum];
        v46 = [v43 numberWithUnsignedLongLong:{objc_msgSend(v45, "unsignedLongLongValue")}];
        [v6 setObject:v46 forKeyedSubscript:@"apl_sum"];

        v47 = MEMORY[0x277CCABB0];
        v48 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v49 = [v48 aplCount];
        v50 = [v47 numberWithUnsignedLongLong:{objc_msgSend(v49, "unsignedLongLongValue")}];
        [v6 setObject:v50 forKeyedSubscript:@"apl_count"];

        v51 = MEMORY[0x277CCABB0];
        v52 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v53 = [v52 oneHzFlipbookFrameCount];
        v54 = [v51 numberWithUnsignedLongLong:{objc_msgSend(v53, "unsignedLongLongValue")}];
        [v6 setObject:v54 forKeyedSubscript:@"1hz_flipbook_frame_count"];

        v55 = MEMORY[0x277CCABB0];
        v56 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v57 = [v56 oneHzFrameMissCount];
        v58 = [v55 numberWithUnsignedLongLong:{objc_msgSend(v57, "unsignedLongLongValue")}];
        [v6 setObject:v58 forKeyedSubscript:@"1hz_frame_miss_count"];

        v59 = MEMORY[0x277CCABB0];
        v60 = [(PLDisplayIOReportAODStats *)self->_displayIOReportAODStats displayAODStats];
        v61 = [v60 oneHzBicAccumCount];
        v62 = [v59 numberWithUnsignedLongLong:{objc_msgSend(v61, "unsignedLongLongValue")}];
        [v6 setObject:v62 forKeyedSubscript:@"1hz_bic_accum_count"];

        v63 = PLLogDisplay();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          v65 = 138412290;
          v66 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v63, OS_LOG_TYPE_DEBUG, "LogAODChange  for entries %@", &v65, 0xCu);
        }

        [(PLOperator *)self logEntry:v6];
      }
    }
  }

  v64 = *MEMORY[0x277D85DE8];
}

- (void)modelDisplayPower:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277D3F208] hasCapability:0] & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEAA8] monotonicDate];
    v6 = [v4 objectForKeyedSubscript:@"Brightness"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v4 objectForKeyedSubscript:@"uAmps"];
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
      if (qword_2811F4A48 != -1)
      {
        dispatch_once(&qword_2811F4A48, block);
      }

      if (byte_2811F4913 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"raw data %@, brightness %f, uAmps %f, power %f", v4, *&v8, *&v11, *&v12];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPower:]"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:4551];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v21 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v21 createPowerEventForwardWithRootNodeID:10 withPower:v5 withStartDate:v12];
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PLDisplayAgent_modelDisplayPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4913 = result;
  return result;
}

- (void)qualifyDisplayPower:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Brightness"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = [(PLDisplayAgent *)self isFirstTimeModeling];
  v10 = MEMORY[0x277CBEBF8];
  if (v9 || (v11 = [(PLDisplayAgent *)self wasDisplayOn], v11 != [(PLDisplayAgent *)self isDisplayOnNow]))
  {
    v12 = [MEMORY[0x277D3F0C0] sharedInstance];
    if ([(PLDisplayAgent *)self isDisplayOnNow])
    {
      v13 = &unk_282C14448;
    }

    else
    {
      v13 = v10;
    }

    [v12 createQualificationEventForwardWithQualificationID:5 withChildNodeNames:v13 withStartDate:v8];

    [(PLDisplayAgent *)self setWasDisplayOn:[(PLDisplayAgent *)self isDisplayOnNow]];
  }

  v14 = PLLogDisplay();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218754;
    v21 = v7;
    v22 = 2112;
    v23 = v4;
    v24 = 1024;
    v25 = v7 > 80.0;
    v26 = 1024;
    v27 = [(PLDisplayAgent *)self isDisplayHighBrightness];
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "brightness=%f, entry=%@, isHighBrightnessNow=%d, isHighBrightnessPrevious=%d", &v20, 0x22u);
  }

  if ([(PLDisplayAgent *)self isFirstTimeModeling]|| v7 > 80.0 != [(PLDisplayAgent *)self isDisplayHighBrightness])
  {
    v15 = PLLogDisplay();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "creating high brightness qualification event", &v20, 2u);
    }

    v16 = [MEMORY[0x277D3F0C0] sharedInstance];
    v17 = v16;
    if (v7 <= 80.0)
    {
      v18 = v10;
    }

    else
    {
      v18 = &unk_282C14460;
    }

    [v16 createQualificationEventForwardWithQualificationID:6 withChildNodeNames:v18 withStartDate:{v8, 80.0}];

    [(PLDisplayAgent *)self setIsDisplayHighBrightness:v7 > 80.0];
  }

  [(PLDisplayAgent *)self setIsFirstTimeModeling:0];

  v19 = *MEMORY[0x277D85DE8];
}

- (double)uAmpsToDisplayPower:(double)a3
{
  v3 = 0.0;
  if (a3 > 0.0)
  {
    v6 = [(PLDisplayAgent *)self displayPowerModel];
    v7 = [v6 objectForKeyedSubscript:@"slope2"];
    [v7 doubleValue];
    v9 = v8 * 0.0000001 * a3;
    v10 = [(PLDisplayAgent *)self displayPowerModel];
    v11 = [v10 objectForKeyedSubscript:@"slope"];
    [v11 doubleValue];
    v13 = v12 * a3 + v9 * a3;
    v14 = [(PLDisplayAgent *)self displayPowerModel];
    v15 = [v14 objectForKeyedSubscript:@"intercept"];
    [v15 doubleValue];
    v3 = v13 + v16;
  }

  return fmax(v3, 0.0);
}

- (id)getIOMFBSubFrameMap
{
  if (qword_2811F4A58 != -1)
  {
    dispatch_once(&qword_2811F4A58, &__block_literal_global_1954);
  }

  v3 = qword_2811F4A50;

  return v3;
}

uint64_t __37__PLDisplayAgent_getIOMFBSubFrameMap__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_2811F4A50;
  qword_2811F4A50 = v0;

  [qword_2811F4A50 setObject:&unk_282C1C288 forKeyedSubscript:@"subframes_0"];
  [qword_2811F4A50 setObject:&unk_282C1C298 forKeyedSubscript:@"subframes_1"];
  [qword_2811F4A50 setObject:&unk_282C1C2A8 forKeyedSubscript:@"subframes_2"];
  [qword_2811F4A50 setObject:&unk_282C1C2B8 forKeyedSubscript:@"subframes_3"];
  [qword_2811F4A50 setObject:&unk_282C1C2C8 forKeyedSubscript:@"subframes_4"];
  [qword_2811F4A50 setObject:&unk_282C1C2D8 forKeyedSubscript:@"subframes_5"];
  [qword_2811F4A50 setObject:&unk_282C1C2E8 forKeyedSubscript:@"subframes_6"];
  [qword_2811F4A50 setObject:&unk_282C1C2F8 forKeyedSubscript:@"subframes_7"];
  [qword_2811F4A50 setObject:&unk_282C1C308 forKeyedSubscript:@"subframes_8"];
  [qword_2811F4A50 setObject:&unk_282C1C318 forKeyedSubscript:@"subframes_9"];
  v2 = qword_2811F4A50;

  return [v2 setObject:&unk_282C1C328 forKeyedSubscript:@"subframes_10"];
}

- (double)averageFrameRateFromIOMFBScanout:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PLDisplayAgent *)self getIOMFBSubFrameMap];
    v6 = v5;
    v7 = 0.0;
    if (v5 && [v5 count] == 11)
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
      v11[3] = &unk_27825D738;
      v12 = v4;
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

- (void)modelDynamicDisplayPower:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_50;
  }

  v6 = [v4 objectForKey:@"entry"];
  v63 = v6;
  if (!v6)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_49;
    }

    v50 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v50;
    if (qword_2811F4A60 != -1)
    {
      dispatch_once(&qword_2811F4A60, block);
    }

    if (byte_2811F4914 != 1)
    {
      goto LABEL_49;
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: No entry object in IOMFBScanout entry"];
    v52 = MEMORY[0x277D3F178];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
    v54 = [v53 lastPathComponent];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPower:]"];
    [v52 logMessage:v51 fromFile:v54 fromFunction:v55 fromLineNumber:4653];

    v56 = PLLogCommon();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
LABEL_46:

      goto LABEL_49;
    }

    *buf = 138412290;
    v67 = v51;
LABEL_52:
    _os_log_debug_impl(&dword_21A4C6000, v56, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_46;
  }

  v7 = v6;
  if (![(NSMutableArray *)self->_displayStateChanges count])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_49;
    }

    v57 = objc_opt_class();
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke_2016;
    v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v64[4] = v57;
    if (qword_2811F4A68 != -1)
    {
      dispatch_once(&qword_2811F4A68, v64);
    }

    if (byte_2811F4915 != 1)
    {
      goto LABEL_49;
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: No display states recorded"];
    v58 = MEMORY[0x277D3F178];
    v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
    v60 = [v59 lastPathComponent];
    v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPower:]"];
    [v58 logMessage:v51 fromFile:v60 fromFunction:v61 fromLineNumber:4655];

    v56 = PLLogCommon();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_46;
    }

    *buf = 138412290;
    v67 = v51;
    goto LABEL_52;
  }

  v8 = [v7 objectForKey:@"timestamp"];
  [v8 doubleValue];
  v10 = v9;

  if (v10 == 0.0)
  {
    goto LABEL_49;
  }

  v11 = [v63 objectForKey:@"SampleTime"];
  [v11 doubleValue];
  v13 = v12;

  [(PLDisplayAgent *)self averageFrameRateFromIOMFBScanout:v63];
  v15 = v14;
  v16 = [(PLDisplayAgent *)self displayPowerModel];
  v17 = [v16 objectForKeyedSubscript:@"dyn_slope"];
  v18 = 0.0;
  v19 = 0.0;
  if (v17)
  {
    v20 = [(PLDisplayAgent *)self displayPowerModel];
    v21 = [v20 objectForKeyedSubscript:@"dyn_slope"];
    [v21 doubleValue];
    v19 = v22;
  }

  v23 = [(PLDisplayAgent *)self displayPowerModel];
  v24 = [v23 objectForKeyedSubscript:@"dyn_intercept"];
  if (v24)
  {
    v25 = [(PLDisplayAgent *)self displayPowerModel];
    v26 = [v25 objectForKeyedSubscript:@"dyn_intercept"];
    [v26 doubleValue];
    v18 = v27;
  }

  v28 = v18 + v19 * v15 >= 0.0 ? v18 + v19 * v15 : 0.0;
  if (![(NSMutableArray *)self->_displayStateChanges count])
  {
    goto LABEL_49;
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
        goto LABEL_48;
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
      v44 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v44 createPowerEventIntervalWithRootNodeID:56 withPower:v42 withStartDate:v43 withEndDate:0.0];
    }

    if ([v36 BOOLValue])
    {
      v45 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v45 createPowerEventIntervalWithRootNodeID:56 withPower:v42 withStartDate:v43 withEndDate:v28];
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
      goto LABEL_49;
    }
  }

LABEL_48:
  objc_autoreleasePoolPop(v30);
LABEL_49:

LABEL_50:
  v62 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4914 = result;
  return result;
}

uint64_t __43__PLDisplayAgent_modelDynamicDisplayPower___block_invoke_2016(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4915 = result;
  return result;
}

- (double)calculatePowerFromAPL:(double)a3 withAvgRed:(double)a4 withAvgGreen:(double)a5 withAvgBlue:(double)a6
{
  v70 = *MEMORY[0x277D85DE8];
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
    v19 = v21 * 0.000001 * a3;
  }

  v22 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_slope"];
  if (v22)
  {
    v23 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"green_norm_slope"];
    [v23 doubleValue];
    v18 = v24 * 0.000001 * a3;
  }

  v25 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_slope"];
  if (v25)
  {
    v26 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"blue_norm_slope"];
    [v26 doubleValue];
    v28 = v27 * 0.000001 * a3;
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

  v44 = v41 * a4 / 255.0 + v42 * a5 / 255.0 + v43 * a6 / 255.0;
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
      v50 = MEMORY[0x277D3F258];
      v51 = [(NSDictionary *)self->_displayPowerModel objectForKeyedSubscript:@"mnit_scale_values"];
      [v50 scaledPowerBasedOnPoint:v51 withPowerModel:a3];
      v46 = v52;
    }
  }

  v53 = v44 * (v46 * a3);
  if (v53 > 5000.0 || v53 < 0.0)
  {
    v53 = 0.0;
  }

  v55 = v11 + v10 + v53;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v56 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PLDisplayAgent_calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v56;
    if (qword_2811F4A70 != -1)
    {
      dispatch_once(&qword_2811F4A70, block);
    }

    if (byte_2811F4916 == 1)
    {
      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"mNits: %f\tavgRed: %f\tavgGreen: %f\tavgBlue: %f\tnormalizedColorSum: %.2f\tPower: %.2f", *&a3, *&a4, *&a5, *&a6, *&v44, *&v55];
      v58 = MEMORY[0x277D3F178];
      v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v60 = [v59 lastPathComponent];
      v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent calculatePowerFromAPL:withAvgRed:withAvgGreen:withAvgBlue:]"];
      [v58 logMessage:v57 fromFile:v60 fromFunction:v61 fromLineNumber:4832];

      v62 = PLLogCommon();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v69 = v57;
        _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v63 = *MEMORY[0x277D85DE8];
  return v55;
}

uint64_t __76__PLDisplayAgent_calculatePowerFromAPL_withAvgRed_withAvgGreen_withAvgBlue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4916 = result;
  return result;
}

- (void)modelDisplayPowerFromIOMFB:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [a3 displayAPLStats];
  v5 = [v4 avgPower];
  [v5 doubleValue];
  v7 = v6;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F4A78 != -1)
    {
      dispatch_once(&qword_2811F4A78, block);
    }

    if (byte_2811F4917 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Display power: %f", *&v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPowerFromIOMFB:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:4846];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke_2064;
    v32 = &__block_descriptor_40_e5_v8__0lu32l8;
    v33 = v15;
    if (qword_2811F4A80 != -1)
    {
      dispatch_once(&qword_2811F4A80, &v29);
    }

    if (byte_2811F4918 == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
      v18 = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
      v19 = [v16 stringWithFormat:@"SampleTimePrevious: %@ sampleTime: %@, ", v17, v18, v29, v30, v31, v32, v33];

      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDisplayPowerFromIOMFB:]"];
      [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:4847];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v25 = [MEMORY[0x277D3F0C0] sharedInstance];
  v26 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
  v27 = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
  [v25 createPowerEventIntervalWithRootNodeID:56 withPower:v26 withStartDate:v27 withEndDate:v7];

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4917 = result;
  return result;
}

uint64_t __45__PLDisplayAgent_modelDisplayPowerFromIOMFB___block_invoke_2064(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4918 = result;
  return result;
}

- (void)modelDynamicDisplayPowerFromAPL:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = [a3 displayAPLStats];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 avgRed];

    if (v6)
    {
      v7 = 0.0;
      v8 = 0.0;
      if ([(PLDisplayAgent *)self isDisplayOnNow])
      {
        displaymNits = self->_displaymNits;
        v10 = [v5 avgRed];
        [v10 doubleValue];
        v12 = v11;
        v13 = [v5 avgGreen];
        [v13 doubleValue];
        v15 = v14;
        v16 = [v5 avgBlue];
        [v16 doubleValue];
        [(PLDisplayAgent *)self calculatePowerFromAPL:displaymNits withAvgRed:v12 withAvgGreen:v15 withAvgBlue:v17];
        v8 = v18;

        realmNits = self->_realmNits;
        v20 = [v5 avgRed];
        [v20 doubleValue];
        v22 = v21;
        v23 = [v5 avgGreen];
        [v23 doubleValue];
        v25 = v24;
        v26 = [v5 avgBlue];
        [v26 doubleValue];
        [(PLDisplayAgent *)self calculatePowerFromAPL:realmNits withAvgRed:v22 withAvgGreen:v25 withAvgBlue:v27];
        v29 = v28;

        autobrightnessmNits = self->_autobrightnessmNits;
        v31 = [v5 avgRed];
        [v31 doubleValue];
        v33 = v32;
        v34 = [v5 avgGreen];
        [v34 doubleValue];
        v36 = v35;
        v37 = [v5 avgBlue];
        [v37 doubleValue];
        [(PLDisplayAgent *)self calculatePowerFromAPL:autobrightnessmNits withAvgRed:v33 withAvgGreen:v36 withAvgBlue:v38];
        v40 = v39;

        v7 = v29 - v40;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v41 = objc_opt_class();
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke;
          v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v68[4] = v41;
          if (qword_2811F4A88 != -1)
          {
            dispatch_once(&qword_2811F4A88, v68);
          }

          if (byte_2811F4919 == 1)
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayPower: %f\trealPower: %f\tvirtualPower: %f\tsavedPower: %f", *&v8, *&v29, *&v40, v29 - v40];
            v43 = MEMORY[0x277D3F178];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
            v45 = [v44 lastPathComponent];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPowerFromAPL:]"];
            [v43 logMessage:v42 fromFile:v45 fromFunction:v46 fromLineNumber:4870];

            v47 = PLLogCommon();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v70 = v42;
              _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
        if (qword_2811F4A90 != -1)
        {
          dispatch_once(&qword_2811F4A90, block);
        }

        if (byte_2811F491A == 1)
        {
          v49 = MEMORY[0x277CCACA8];
          v50 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
          v51 = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
          v52 = [v49 stringWithFormat:@"SampleTimePrevious: %@ sampleTime: %@, ", v50, v51];

          v53 = MEMORY[0x277D3F178];
          v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLDisplayAgent.m"];
          v55 = [v54 lastPathComponent];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDisplayAgent modelDynamicDisplayPowerFromAPL:]"];
          [v53 logMessage:v52 fromFile:v55 fromFunction:v56 fromLineNumber:4872];

          v57 = PLLogCommon();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v70 = v52;
            _os_log_debug_impl(&dword_21A4C6000, v57, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v58 = [MEMORY[0x277D3F0C0] sharedInstance];
      v59 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
      v60 = [(PLIOReportStats *)self->_displayIOReportStats sampleTime];
      [v58 createPowerEventIntervalWithRootNodeID:56 withPower:v59 withStartDate:v60 withEndDate:v8];

      if (+[PLDisplayAgent shouldLogALSPowerSaved])
      {
        v61 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
        v62 = objc_alloc(MEMORY[0x277D3F190]);
        v63 = [(PLIOReportStats *)self->_displayIOReportStats sampleTimePrevious];
        v64 = [v62 initWithEntryKey:v61 withDate:v63];

        v65 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
        [v64 setObject:v65 forKeyedSubscript:@"Power"];

        [(PLOperator *)self logEntry:v64];
      }
    }
  }

  v66 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4919 = result;
  return result;
}

uint64_t __50__PLDisplayAgent_modelDynamicDisplayPowerFromAPL___block_invoke_2073(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F491A = result;
  return result;
}

- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4
{
  v5 = a3;
  [a4 timeIntervalSince1970];
  v7 = v6;
  v8 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Display"];
  v9 = [v5 isEqualToString:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is NULL OR %@<(SELECT max(%@) FROM '%@' WHERE %@<%f)", @"timestamp", @"timestamp", @"timestamp", v5, @"timestamp", v7];
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
    if (qword_2811F4AA0 != -1)
    {
      dispatch_once(&qword_2811F4AA0, block);
    }

    v4 = qword_2811F4A98;
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
  v3 = qword_2811F4A98;
  qword_2811F4A98 = v2;

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
    [qword_2811F4A98 setObject:v9 forKeyedSubscript:v5];
  }
}

@end