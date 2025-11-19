@interface PLBatteryAgent
+ (BOOL)hasChargingInfoLogging;
+ (BOOL)shouldLogBTM;
+ (BOOL)shouldLogCPMS;
+ (BOOL)shouldLogPPMDebugDetail;
+ (id)connectStateStringToEnum:(id)a3;
+ (id)entryAggregateDefinitionUILevel;
+ (id)entryAggregateDefinitions;
+ (id)entryEventBackwardDefinitionAdapter;
+ (id)entryEventBackwardDefinitionBTM;
+ (id)entryEventBackwardDefinitionBattery;
+ (id)entryEventBackwardDefinitionBatteryUI;
+ (id)entryEventBackwardDefinitionChargingHeatMapA;
+ (id)entryEventBackwardDefinitionChargingHeatMapB;
+ (id)entryEventBackwardDefinitionChargingLimit;
+ (id)entryEventBackwardDefinitionCurrentAccumulator;
+ (id)entryEventBackwardDefinitionDischargingHeatMap;
+ (id)entryEventBackwardDefinitionEABattery;
+ (id)entryEventBackwardDefinitionKioskMode;
+ (id)entryEventBackwardDefinitionPowerOut;
+ (id)entryEventBackwardDefinitionTrustedBatteryHealth;
+ (id)entryEventBackwardDefinitionchargingIconography;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionAdapterDetails;
+ (id)entryEventForwardDefinitionCalibration0;
+ (id)entryEventForwardDefinitionCleanEnergyCharging;
+ (id)entryEventForwardDefinitionEAPencil;
+ (id)entryEventForwardDefinitionEAPencilCharging;
+ (id)entryEventForwardDefinitionExternalCharger;
+ (id)entryEventForwardDefinitionIOPMUBootLPMLog;
+ (id)entryEventForwardDefinitionLightningConnectorStatus;
+ (id)entryEventForwardDefinitionMitigationState;
+ (id)entryEventForwardDefinitionMobileChargeMode;
+ (id)entryEventForwardDefinitionOrionBuffer;
+ (id)entryEventForwardDefinitionOrionInfo;
+ (id)entryEventForwardDefinitionPortControllerBuffer;
+ (id)entryEventForwardDefinitionPortControllerInfo;
+ (id)entryEventForwardDefinitionSmartCharging;
+ (id)entryEventForwardDefinitionUPOStepper;
+ (id)entryEventForwardDefinitionUSBCCharging;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionCharging;
+ (id)entryEventIntervalDefinitionGasGauge;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitionBatteryConfig;
+ (id)entryEventNoneDefinitionUserType;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionBatteryPanicShutdown;
+ (id)entryEventPointDefinitionBatteryShutdown;
+ (id)entryEventPointDefinitionBatteryTrapInfo;
+ (id)entryEventPointDefinitionBatteryUILogging;
+ (id)entryEventPointDefinitionBatteryUIVisit;
+ (id)entryEventPointDefinitionCPMSClientState;
+ (id)entryEventPointDefinitionCPMSControlState;
+ (id)entryEventPointDefinitionChargingInfo;
+ (id)entryEventPointDefinitionEABatteryConfig;
+ (id)entryEventPointDefinitionEAPencil;
+ (id)entryEventPointDefinitionGasGaugeReconnect;
+ (id)entryEventPointDefinitionUPOStepper;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)batterySerialChanged:(id)a3;
- (BOOL)checkForPenaltyBox:(id)a3;
- (BOOL)driverActive:(id)a3;
- (BOOL)givePluggedInFreePass;
- (BOOL)hasAppleSmartBattery;
- (BOOL)isEABatteryConnectedNow;
- (BOOL)isEAPencilConnectedNow;
- (BOOL)isUPOEntry:(id)a3;
- (BOOL)modifiedExternalChargerEntry:(id)a3;
- (BOOL)shouldLogCPMSSnapshotWithReason:(unsigned __int8)a3 withTrigger:(int64_t)a4;
- (BOOL)shouldWaitForLifetimeDataWithRawData:(id)a3;
- (PLBatteryAgent)init;
- (id)ApplyPolicyToDOFU:(id)a3 forSerial:(id)a4;
- (id)aggregateBUIVisitData:(id)a3 withBUIVisitsToday:(id)a4 andBUIVisitsLastHour:(id)a5 andTotalLogDuration:(double)a6;
- (id)batteryEEEECode:(id)a3;
- (id)createTimerForEABatteryCountLogging;
- (id)dataFromHexString:(id)a3;
- (id)dateNoEarlierThan:(unint64_t)a3 since:(id)a4 withDelta:(id)a5;
- (id)getBUIVisitsLastHour;
- (id)getBUIVisitsToday;
- (id)getBUIVisitsTotal;
- (id)getBaseIdentifierFromDevice:(id)a3;
- (id)getBatteryCalibration0Data;
- (id)getBatteryShutdownData;
- (id)getGaugingMitigationDict;
- (id)getIOPSDevices;
- (id)getIconographyStateDict;
- (id)getMitigatedUPOCountDefault;
- (id)getUPOStepperData;
- (id)isOriginalBattery;
- (id)logEventBackwardBatteryWithRawData:(id)a3;
- (id)lowBatteryLogPath;
- (id)lowBatteryLogString;
- (id)overrideBatteryData:(id)a3 withPath:(id)a4;
- (id)parseBatterySerialNumber:(id)a3;
- (id)parseFlashWearLevelData:(id)a3;
- (id)parseITMiscStatusCounters:(id)a3;
- (id)parseLowVoltageResidencyCounters:(id)a3;
- (id)parseRawRaTableData:(id)a3;
- (id)parseRawSafetyFaultCounter:(id)a3;
- (id)parseTimeAtHighSoc:(id)a3;
- (id)parseTimeAtHighSocHex:(id)a3;
- (id)presentMaxRaFromRawData:(id)a3;
- (id)weekOfManufacture:(id)a3;
- (int)batteryLifetimeUPOCount;
- (int)calculateChargingState:(id)a3;
- (int)calculateConnectedState:(id)a3;
- (int)deviceType;
- (int)getBatteryHealthServiceFlags;
- (int)getBatteryHealthServiceState;
- (int)getBatteryMaximumCapacityPercent;
- (int)getIconChargeState:(id)a3;
- (int)getMitigationDefaults;
- (int64_t)xFlags;
- (unint64_t)customConvertBase34ToBase10:(id)a3;
- (void)accessoryConnected:(id)a3;
- (void)accessoryConnectionEventNotification:(id)a3;
- (void)accessoryDisconnectEventNotification:(id)a3;
- (void)accessoryDisconnected:(id)a3;
- (void)accountGaugePowerFromCurrentAccumulatorEntry:(id)a3;
- (void)accountUSBCPowerOut;
- (void)addPowerMeasurementToAccounting:(double)a3 withStartDate:(id)a4 withEndDate:(id)a5;
- (void)aggdTimerFired;
- (void)cancelEALogging;
- (void)checkChargingInfoChange:(id)a3;
- (void)createFixedChargingIntervals:(id)a3;
- (void)dataChanged;
- (void)dealloc;
- (void)detectEAPencilConnectionWithNotification:(id)a3;
- (void)fakeLogEntry:(id)a3;
- (void)flushCSMToAggdAtDate:(id)a3;
- (void)flushPowerOut;
- (void)handleBDCAMALogging:(id)a3;
- (void)handleCameraStreaming:(BOOL)a3 withProperties:(id)a4;
- (void)handleCameraStreamingLogging:(id)a3;
- (void)handleGaugingMitigationStateCallback:(int)a3;
- (void)handleHeadphoneConnected:(id)a3;
- (void)handleMitigationStateCallback:(int)a3;
- (void)handleOnDeviceACAMSBC:(id)a3;
- (void)handlePPMCallback;
- (void)handleSBC;
- (void)initCameraStreamingIntervalTracking;
- (void)initCleanEnergyChargingLogging;
- (void)initOperatorDependancies;
- (void)initSmartChargingLogging;
- (void)initializeChargingStateIntervals;
- (void)log;
- (void)logAdapterDetails:(id)a3;
- (void)logAdapterDetailsEntry:(id)a3;
- (void)logAdapterDetailsToCA:(id)a3;
- (void)logAdapterInfo:(id)a3;
- (void)logAuthFail:(id)a3;
- (void)logBTM;
- (void)logBaselineToAggD:(id)a3;
- (void)logBaselineToCA:(id)a3;
- (void)logBatteryConfigToAggd:(id)a3;
- (void)logBatteryConfigToCA:(id)a3;
- (void)logBatteryEntry:(id)a3;
- (void)logBatteryShutdownToCA:(id)a3;
- (void)logCPMSSnapshotWithTrigger:(int64_t)a3;
- (void)logChargingParametersToAggd:(id)a3;
- (void)logChargingTimeToAggd:(double)a3;
- (void)logCurrentAccumulatorWithRawData:(id)a3;
- (void)logEABatteryConfig:(id)a3;
- (void)logEABatteryConfigToCA:(id)a3;
- (void)logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:(BOOL)a3;
- (void)logEABatteryConnectedTimeToAnalyticsWithEAConnectionState:(BOOL)a3;
- (void)logEABatteryStatistics;
- (void)logEventBackwardBattery;
- (void)logEventBackwardChargingLimit;
- (void)logEventBackwardHeatMap;
- (void)logEventBackwardHeatMapCallback:(id)a3 andHeatMapType:(int64_t)a4;
- (void)logEventBackwardIconographyState;
- (void)logEventBackwardKioskMode;
- (void)logEventBackwardKioskModeCallback:(id)a3;
- (void)logEventBackwardTrustedBatteryHealth;
- (void)logEventForwardCalibration0InfowithData:(id)a3;
- (void)logEventForwardCalibration0withData:(id)a3;
- (void)logEventForwardCleanEnergyChargingWithPayload:(id)a3;
- (void)logEventForwardLPEM;
- (void)logEventForwardMobileChargeMode:(id)a3;
- (void)logEventForwardSmartChargingWithPayload:(id)a3;
- (void)logEventForwardUPOStepperWithPayload:(id)a3;
- (void)logEventIntervalGasGauge;
- (void)logEventNoneBatteryConfigCycleCountData;
- (void)logEventNoneBatteryConfigWithRawData:(id)a3;
- (void)logEventNoneUserType;
- (void)logEventPointBatteryChargingUIVisit;
- (void)logEventPointBatteryHealthUIVisit;
- (void)logEventPointBatteryPanicShutdown:(id)a3;
- (void)logEventPointBatteryShutdown;
- (void)logEventPointBatteryTrapInfo:(id)a3;
- (void)logEventPointBatteryUIAppDetailVisit;
- (void)logEventPointBatteryUIDetailVisit;
- (void)logEventPointBatteryUIInsightsAndSuggestionsWithPayload:(id)a3;
- (void)logEventPointBatteryUIVisitWithPayload:(id)a3;
- (void)logEventPointChargingInfoWithChargingData:(id)a3;
- (void)logEventPointUPOStepper;
- (void)logFedDetails:(id)a3;
- (void)logFlashAgingToCA:(id)a3;
- (void)logKioskModeEntryToAggd:(id)a3;
- (void)logKioskModeEntryToCA:(id)a3;
- (void)logOrionInfo:(id)a3;
- (void)logPenaltyBoxDurationToAggd:(double)a3;
- (void)logPortControllerInfo:(id)a3;
- (void)logPowerOutDetails:(id)a3;
- (void)logSlowChargingReasonToCA:(id)a3;
- (void)logWatchdogDebugDumpToCA:(id)a3;
- (void)logkBatteryRsenseOpenCountToCA:(id)a3;
- (void)populateClientEntry:(id)a3 withBudget:(id)a4 withTemplate:(id)a5;
- (void)pushFlashWearLevelDataToCA:(id)a3;
- (void)pushTimeAtHighSocToAggD:(id)a3;
- (void)setAggdIntegerValueFromEntry:(id)a3 forKey:(id)a4 withPrefix:(id)a5;
- (void)setMitigatedUPOCountDefault:(id)a3;
- (void)setMitigationStateDefault:(unint64_t)a3;
- (void)setupAVSystemController;
- (void)setupCSMLogging;
- (void)setupEALoggingTriggeredByConnectionEvent:(BOOL)a3;
- (void)showOrHideTLCNotification:(BOOL)a3 meetsTLCNotificationConditions:(BOOL)a4;
- (void)updateCurrentSenseMonitorStatusWithEntry:(id)a3;
@end

@implementation PLBatteryAgent

- (BOOL)hasAppleSmartBattery
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PLBatteryAgent_hasAppleSmartBattery__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3B18 != -1)
  {
    dispatch_once(&qword_2811F3B18, block);
  }

  return byte_2811F3A7E;
}

+ (BOOL)hasChargingInfoLogging
{
  if (qword_2811F3B20 != -1)
  {
    dispatch_once(&qword_2811F3B20, &__block_literal_global_3392);
  }

  return byte_2811F3A7F;
}

- (BOOL)isEABatteryConnectedNow
{
  v18 = *MEMORY[0x277D85DE8];
  [(PLBatteryAgent *)self getIOPSDevices];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(PLBatteryAgent *)self getBaseIdentifierFromDevice:*(*(&v13 + 1) + 8 * i), v13];
        if ([v8 isEqualToString:@"1452-5013"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"1452-5016") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"1452-5017"))
        {

LABEL_14:
          v10 = 1;
          goto LABEL_16;
        }

        v9 = [v8 isEqualToString:@"1452-5026"];

        if (v9)
        {
          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)getIOPSDevices
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __32__PLBatteryAgent_getIOPSDevices__block_invoke;
    v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v40[4] = v4;
    if (qword_2811F3B48 != -1)
    {
      dispatch_once(&qword_2811F3B48, v40);
    }

    if (byte_2811F3A84 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"check Connected devices ..."];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent getIOPSDevices]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:3939];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (+[PLBatteryAgent hasExternalAccessory])
  {
    v11 = IOPSCopyPowerSourcesByType();
    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = v11;
    v13 = IOPSCopyPowerSourcesList(v11);
    if (v13)
    {
      v14 = v13;
      Count = CFArrayGetCount(v13);
      if (Count >= 1)
      {
        v16 = Count;
        v17 = 0;
        v37 = v2;
        v36 = v12;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
          if (ValueAtIndex)
          {
            v19 = IOPSGetPowerSourceDescription(v12, ValueAtIndex);
            if ([*(v3 + 384) debugEnabled])
            {
              v20 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __32__PLBatteryAgent_getIOPSDevices__block_invoke_3475;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v20;
              if (qword_2811F3B50 != -1)
              {
                dispatch_once(&qword_2811F3B50, block);
              }

              if (byte_2811F3A85 == 1)
              {
                v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: powerSourceDescription=%@", "-[PLBatteryAgent getIOPSDevices]", 3959, v19];
                v22 = MEMORY[0x277D3F178];
                v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
                v24 = [v23 lastPathComponent];
                v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent getIOPSDevices]"];
                [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:3959];

                v26 = PLLogCommon();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v42 = v21;
                  _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v2 = v37;
                v3 = 0x277D3F000;
                v12 = v36;
              }
            }

            [v2 addObject:v19];
          }

          ++v17;
        }

        while (v16 != v17);
      }

      CFRelease(v14);
    }

    CFRelease(v12);
  }

  if ([*(v3 + 384) debugEnabled])
  {
    v27 = objc_opt_class();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __32__PLBatteryAgent_getIOPSDevices__block_invoke_3481;
    v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v38[4] = v27;
    if (qword_2811F3B58 != -1)
    {
      dispatch_once(&qword_2811F3B58, v38);
    }

    if (byte_2811F3A86 == 1)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connected devices=%@", v2];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v31 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent getIOPSDevices]"];
      [v29 logMessage:v28 fromFile:v31 fromFunction:v32 fromLineNumber:3973];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v28;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_32:
  v34 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)isEAPencilConnectedNow
{
  v18 = *MEMORY[0x277D85DE8];
  [(PLBatteryAgent *)self getIOPSDevices];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(PLBatteryAgent *)self getBaseIdentifierFromDevice:*(*(&v13 + 1) + 8 * i), v13];
        v9 = [v8 isEqualToString:@"76-546"];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)cancelEALogging
{
  v34 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __33__PLBatteryAgent_cancelEALogging__block_invoke;
    v30 = &__block_descriptor_40_e5_v8__0lu32l8;
    v31 = v3;
    if (qword_2811F3B38 != -1)
    {
      dispatch_once(&qword_2811F3B38, &block);
    }

    if (byte_2811F3A82 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"In Cancel EA Logging"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent cancelEALogging]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:3877];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLBatteryAgent *)self EABatteryTimer];

  if (v10)
  {
    [(PLBatteryAgent *)self logEABatteryConnectedTimeToAnalyticsWithEAConnectionState:1];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __33__PLBatteryAgent_cancelEALogging__block_invoke_3466;
      v25 = &__block_descriptor_40_e5_v8__0lu32l8;
      v26 = v11;
      if (qword_2811F3B40 != -1)
      {
        dispatch_once(&qword_2811F3B40, &v22);
      }

      if (byte_2811F3A83 == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"In Cancel EA Logging: Cancelled timer", v22, v23, v24, v25, v26];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent cancelEALogging]"];
        [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:3881];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v12;
          _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v18 = [(PLBatteryAgent *)self EABatteryTimer:v22];
    [v18 setTimerActive:0];

    v19 = [(PLBatteryAgent *)self EABatteryTimer];
    [v19 invalidate];

    [(PLBatteryAgent *)self setEABatteryTimer:0];
    v20 = [(PLBatteryAgent *)self significantBatteryChangeTimer];
    [v20 cancel];

    [(PLBatteryAgent *)self setLastkIOPSAppleBatteryCaseCumulativeCurrentKey:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logBTM
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = IOHIDManagerCopyDevices(self->_BTMmanager);
  v4 = v3;
  if (!v3 || ![(__CFSet *)v3 count])
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "device is empty when logging BTM", buf, 2u);
    }

    goto LABEL_25;
  }

  v5 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BTM"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v4;
  v8 = [(__CFSet *)v7 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v8)
  {
    v9 = *v39;
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        if (v11)
        {
          v8 = v11;
          v12 = PLLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v43 = v8;
            _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "device in hand is :%@", buf, 0xCu);
          }

          goto LABEL_17;
        }
      }

      v8 = [(__CFSet *)v7 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v36 = 0;
  Service = IOHIDDeviceGetService(v8);
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(Service, &v36);
  if (RegistryEntryID)
  {
    v15 = RegistryEntryID;
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v43) = v15;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "BTM: IORegistryEntryGetRegistryEntryID fails with error: %d", buf, 8u);
    }

LABEL_23:

    goto LABEL_24;
  }

  v17 = IOHIDDeviceOpen(v8, 0);
  if (v17)
  {
    v18 = v17;
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v43) = v18;
      _os_log_error_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_ERROR, "Device is not opened with status:%d", buf, 8u);
    }

    goto LABEL_23;
  }

  pReportLength = 132;
  v20 = malloc_type_malloc(0x84uLL, 0xBEA548B4uLL);
  *v20 = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  v20[3] = 0u;
  v20[4] = 0u;
  v20[5] = 0u;
  v20[6] = 0u;
  v20[7] = 0u;
  *(v20 + 32) = 0;
  Report = IOHIDDeviceGetReport(v8, kIOHIDReportTypeFeature, 2, v20, &pReportLength);
  if (Report)
  {
    v22 = Report;
    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      v43 = v36;
      v44 = 1024;
      v45 = 2;
      v46 = 1024;
      v47 = 2;
      v48 = 1024;
      v49 = v22;
      _os_log_error_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_ERROR, "GetReport failed for device:0x%llx reportid:%d type:%d status:0x%x\n", buf, 0x1Eu);
    }

    free(v20);
    goto LABEL_24;
  }

  v24 = 0;
  v25 = 0x277CCA000uLL;
  v26 = v20;
  do
  {
    if (v24 > 23)
    {
      if (v24 > 26)
      {
        if (v24 == 27)
        {
          v27 = [*(v25 + 2992) numberWithUnsignedInt:*v26];
          v28 = v6;
          v29 = v27;
          v30 = @"BTMProperty_Vmin";
        }

        else
        {
          if (v24 != 28)
          {
            goto LABEL_51;
          }

          v27 = [*(v25 + 2992) numberWithUnsignedInt:*v26];
          v28 = v6;
          v29 = v27;
          v30 = @"BTMProperty_IforVmin";
        }
      }

      else if (v24 == 24)
      {
        v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(*v26 / 0xF4240uLL)];
        v27 = [v32 convertFromSystemToMonotonic];

        v25 = 0x277CCA000;
        v28 = v6;
        v29 = v27;
        v30 = @"BTMProperty_TimestampforVmin1";
      }

      else
      {
        if (v24 != 26)
        {
          goto LABEL_51;
        }

        v27 = [*(v25 + 2992) numberWithUnsignedInt:*v26];
        v28 = v6;
        v29 = v27;
        v30 = @"BTMProperty_OCVforVmin";
      }
    }

    else if (v24 > 20)
    {
      if (v24 == 21)
      {
        v27 = [*(v25 + 2992) numberWithUnsignedInt:*v26];
        v28 = v6;
        v29 = v27;
        v30 = @"BTMProperty_Imax";
      }

      else
      {
        if (v24 != 22)
        {
          goto LABEL_51;
        }

        v27 = [*(v25 + 2992) numberWithUnsignedInt:*v26];
        v28 = v6;
        v29 = v27;
        v30 = @"BTMProperty_VforImax";
      }
    }

    else if (v24 == 18)
    {
      v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(*v26 / 0xF4240uLL)];
      v27 = [v31 convertFromSystemToMonotonic];

      v25 = 0x277CCA000;
      v28 = v6;
      v29 = v27;
      v30 = @"BTMProperty_TimestampforImax1";
    }

    else
    {
      if (v24 != 20)
      {
        goto LABEL_51;
      }

      v27 = [*(v25 + 2992) numberWithUnsignedInt:*v26];
      v28 = v6;
      v29 = v27;
      v30 = @"BTMProperty_OCVforImax";
    }

    [v28 setObject:v29 forKeyedSubscript:{v30, v36}];

LABEL_51:
    ++v24;
    ++v26;
  }

  while (v24 != 33);
  *v20 = 1282;
  *(v20 + 2) = 0;
  v33 = IOHIDDeviceSetReport(v8, kIOHIDReportTypeFeature, 1, v20, 3);
  v34 = PLLogCommon();
  v35 = v34;
  if (v33)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      v43 = v36;
      v44 = 1024;
      v45 = 1;
      v46 = 1024;
      v47 = 2;
      v48 = 1024;
      v49 = v33;
      _os_log_error_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_ERROR, "SetReport failed for device:0x%llx reportid:%d type:%d status:0x%x\n", buf, 0x1Eu);
    }
  }

  else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v43 = v36;
    v44 = 1024;
    v45 = 1;
    v46 = 1024;
    v47 = 2;
    v48 = 1024;
    v49 = 3;
    _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "SetReport device:0x%llx reportID:%d type:%d length:%d bytes:", buf, 0x1Eu);
  }

  IOHIDDeviceClose(v8, 0);
  free(v20);
  [(PLOperator *)self logEntry:v6];
LABEL_24:

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleSBC
{
  if (+[PLBatteryAgent shouldLogBTM]&& self->_BTMmanager)
  {
    [(PLBatteryAgent *)self logBTM];
  }

  if (+[PLBatteryAgent shouldLogCPMS])
  {

    [(PLBatteryAgent *)self logCPMSSnapshotWithTrigger:0];
  }
}

+ (BOOL)shouldLogCPMS
{
  if (qword_2811F3AC0 != -1)
  {
    dispatch_once(&qword_2811F3AC0, &__block_literal_global_47);
  }

  return _MergedGlobals_2_0;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3696(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A8D = result;
  return result;
}

void __42__PLBatteryAgent_initSmartChargingLogging__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_2;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F3D00 != -1)
    {
      dispatch_once(&qword_2811F3D00, &block);
    }

    if (byte_2811F3AB7 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Smart Charging Callback %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initSmartChargingLogging]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:9502];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventForwardSmartChargingWithPayload:v6];

  v15 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldLogBTM
{
  if (qword_2811F3BC8 != -1)
  {
    dispatch_once(&qword_2811F3BC8, &__block_literal_global_3838);
  }

  return byte_2811F3A94;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLBatteryAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventIntervalDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"GasGauge";
  v3 = [a1 entryEventIntervalDefinitionGasGauge];
  v8[1] = @"Charging";
  v9[0] = v3;
  v4 = [a1 entryEventIntervalDefinitionCharging];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventIntervalDefinitionGasGauge
{
  v36[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] hasGasGauge])
  {
    v35[0] = *MEMORY[0x277D3F4E8];
    v33 = *MEMORY[0x277D3F568];
    v34 = &unk_282C1C6C8;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v36[0] = v28;
    v35[1] = *MEMORY[0x277D3F540];
    v31[0] = @"timestampEnd";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_DateFormat];
    v32[0] = v26;
    v31[1] = @"AvgCurrent";
    v2 = *MEMORY[0x277D3F5B0];
    v29[0] = *MEMORY[0x277D3F5A8];
    v29[1] = v2;
    v30[0] = &unk_282C11EC8;
    v30[1] = @"mA";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v32[1] = v25;
    v31[2] = @"MinCurrent";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat_withUnit_mA];
    v32[2] = v23;
    v31[3] = @"MaxCurrent";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat_withUnit_mA];
    v32[3] = v21;
    v31[4] = @"MinCurrentOffset";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat_withUnit_s];
    v32[4] = v19;
    v31[5] = @"MaxCurrentOffset";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat_withUnit_s];
    v32[5] = v17;
    v31[6] = @"Readings";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v32[6] = v15;
    v31[7] = @"AvgPower";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat_withUnit_mW];
    v32[7] = v4;
    v31[8] = @"TotalEnergy";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_mWhr];
    v32[8] = v6;
    v31[9] = @"OverAllEnergy";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat_withUnit_mWhr];
    v32[9] = v8;
    v31[10] = @"OverAllPower";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat_withUnit_mWhr];
    v32[10] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:11];
    v36[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionCharging
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C6D8;
  v17[1] = &unk_282C11EE0;
  v16[2] = *MEMORY[0x277D3F588];
  v17[2] = &unk_282C1C6E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"timestampEnd";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_DateFormat];
  v15[0] = v5;
  v14[1] = @"intervalType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"chargeLimitTargetSoC";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventNoneDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"BatteryConfig";
  v2 = +[PLBatteryAgent entryEventNoneDefinitionBatteryConfig];
  v7[1] = @"UserType";
  v8[0] = v2;
  v3 = +[PLBatteryAgent entryEventNoneDefinitionUserType];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventNoneDefinitionBatteryConfig
{
  v251[2] = *MEMORY[0x277D85DE8];
  v250[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v248[0] = *MEMORY[0x277D3F568];
  v248[1] = v2;
  v249[0] = &unk_282C1C6F8;
  v249[1] = &unk_282C11EE0;
  v248[2] = *MEMORY[0x277D3F588];
  v249[2] = &unk_282C1C708;
  v239 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v249 forKeys:v248 count:3];
  v251[0] = v239;
  v250[1] = *MEMORY[0x277D3F540];
  v246[0] = @"QmaxCell0";
  v4 = *MEMORY[0x277D3F538];
  v244[0] = *MEMORY[0x277D3F5A8];
  v3 = v244[0];
  v244[1] = v4;
  v245[0] = &unk_282C11EF8;
  v245[1] = &unk_282C14D18;
  v238 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v245 forKeys:v244 count:2];
  v247[0] = v238;
  v246[1] = @"Flags";
  v242[0] = v3;
  v242[1] = v4;
  v243[0] = &unk_282C11EF8;
  v243[1] = &unk_282C14D30;
  v237 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v243 forKeys:v242 count:2];
  v247[1] = v237;
  v246[2] = @"NominalChargeCapacity";
  v236 = [MEMORY[0x277D3F198] sharedInstance];
  v235 = [v236 commonTypeDict_IntegerFormat];
  v247[2] = v235;
  v246[3] = @"AppleRawMaxCapacity";
  v234 = [MEMORY[0x277D3F198] sharedInstance];
  v233 = [v234 commonTypeDict_IntegerFormat_withUnit_mAh];
  v247[3] = v233;
  v246[4] = @"TotalOperatingTime";
  v5 = *MEMORY[0x277D3F5B0];
  v240[0] = v3;
  v240[1] = v5;
  v241[0] = &unk_282C11EF8;
  v241[1] = @"hr";
  v232 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v241 forKeys:v240 count:2];
  v247[4] = v232;
  v246[5] = @"AverageTemperature";
  v231 = [MEMORY[0x277D3F198] sharedInstance];
  v230 = [v231 commonTypeDict_IntegerFormat];
  v247[5] = v230;
  v246[6] = @"CycleCount";
  v229 = [MEMORY[0x277D3F198] sharedInstance];
  v228 = [v229 commonTypeDict_IntegerFormat];
  v247[6] = v228;
  v246[7] = @"CycleCountLastQmax";
  v227 = [MEMORY[0x277D3F198] sharedInstance];
  v226 = [v227 commonTypeDict_IntegerFormat];
  v247[7] = v226;
  v246[8] = @"EEEECode";
  v225 = [MEMORY[0x277D3F198] sharedInstance];
  v224 = [v225 commonTypeDict_StringFormat];
  v247[8] = v224;
  v246[9] = @"FlashWriteCount";
  v223 = [MEMORY[0x277D3F198] sharedInstance];
  v222 = [v223 commonTypeDict_IntegerFormat];
  v247[9] = v222;
  v246[10] = @"HighAvgCurrentLastRun";
  v221 = [MEMORY[0x277D3F198] sharedInstance];
  v220 = [v221 commonTypeDict_IntegerFormat];
  v247[10] = v220;
  v246[11] = @"ITMiscStatus";
  v219 = [MEMORY[0x277D3F198] sharedInstance];
  v218 = [v219 commonTypeDict_IntegerFormat];
  v247[11] = v218;
  v246[12] = @"ITSimulationCounter";
  v217 = [MEMORY[0x277D3F198] sharedInstance];
  v216 = [v217 commonTypeDict_IntegerFormat];
  v247[12] = v216;
  v246[13] = @"LifetimeUPOCount";
  v215 = [MEMORY[0x277D3F198] sharedInstance];
  v214 = [v215 commonTypeDict_IntegerFormat];
  v247[13] = v214;
  v246[14] = @"LowAvgCurrentLastRun";
  v213 = [MEMORY[0x277D3F198] sharedInstance];
  v212 = [v213 commonTypeDict_IntegerFormat];
  v247[14] = v212;
  v246[15] = @"MaximumDeltaVoltage";
  v211 = [MEMORY[0x277D3F198] sharedInstance];
  v210 = [v211 commonTypeDict_IntegerFormat];
  v247[15] = v210;
  v246[16] = @"MinimumDeltaVoltage";
  v209 = [MEMORY[0x277D3F198] sharedInstance];
  v208 = [v209 commonTypeDict_IntegerFormat];
  v247[16] = v208;
  v246[17] = @"MaximumFCC";
  v207 = [MEMORY[0x277D3F198] sharedInstance];
  v206 = [v207 commonTypeDict_IntegerFormat];
  v247[17] = v206;
  v246[18] = @"MinimumFCC";
  v205 = [MEMORY[0x277D3F198] sharedInstance];
  v204 = [v205 commonTypeDict_IntegerFormat];
  v247[18] = v204;
  v246[19] = @"MaximumPackVoltage";
  v203 = [MEMORY[0x277D3F198] sharedInstance];
  v202 = [v203 commonTypeDict_IntegerFormat];
  v247[19] = v202;
  v246[20] = @"MinimumPackVoltage";
  v201 = [MEMORY[0x277D3F198] sharedInstance];
  v200 = [v201 commonTypeDict_IntegerFormat];
  v247[20] = v200;
  v246[21] = @"MaximumQmax";
  v199 = [MEMORY[0x277D3F198] sharedInstance];
  v198 = [v199 commonTypeDict_IntegerFormat];
  v247[21] = v198;
  v246[22] = @"MinimumQmax";
  v197 = [MEMORY[0x277D3F198] sharedInstance];
  v196 = [v197 commonTypeDict_IntegerFormat];
  v247[22] = v196;
  v246[23] = @"MaximumRa0-8";
  v195 = [MEMORY[0x277D3F198] sharedInstance];
  v194 = [v195 commonTypeDict_IntegerFormat];
  v247[23] = v194;
  v246[24] = @"MinimumRa0-8";
  v193 = [MEMORY[0x277D3F198] sharedInstance];
  v192 = [v193 commonTypeDict_IntegerFormat];
  v247[24] = v192;
  v246[25] = @"MaximumTemperature";
  v191 = [MEMORY[0x277D3F198] sharedInstance];
  v190 = [v191 commonTypeDict_IntegerFormat];
  v247[25] = v190;
  v246[26] = @"MinimumTemperature";
  v189 = [MEMORY[0x277D3F198] sharedInstance];
  v188 = [v189 commonTypeDict_IntegerFormat];
  v247[26] = v188;
  v246[27] = @"MaximumCapacityPercent";
  v187 = [MEMORY[0x277D3F198] sharedInstance];
  v186 = [v187 commonTypeDict_IntegerFormat];
  v247[27] = v186;
  v246[28] = @"MaximumChargeCurrent";
  v185 = [MEMORY[0x277D3F198] sharedInstance];
  v184 = [v185 commonTypeDict_IntegerFormat];
  v247[28] = v184;
  v246[29] = @"MaximumDischargeCurrent";
  v183 = [MEMORY[0x277D3F198] sharedInstance];
  v182 = [v183 commonTypeDict_IntegerFormat];
  v247[29] = v182;
  v246[30] = @"MaximumOverChargedCapacity";
  v181 = [MEMORY[0x277D3F198] sharedInstance];
  v180 = [v181 commonTypeDict_IntegerFormat];
  v247[30] = v180;
  v246[31] = @"MaximumOverDischargedCapacity";
  v179 = [MEMORY[0x277D3F198] sharedInstance];
  v178 = [v179 commonTypeDict_IntegerFormat];
  v247[31] = v178;
  v246[32] = @"OriginalBattery";
  v177 = [MEMORY[0x277D3F198] sharedInstance];
  v176 = [v177 commonTypeDict_BoolFormat];
  v247[32] = v176;
  v246[33] = @"RaTable_1";
  v175 = [MEMORY[0x277D3F198] sharedInstance];
  v174 = [v175 commonTypeDict_IntegerFormat];
  v247[33] = v174;
  v246[34] = @"RaTable_2";
  v173 = [MEMORY[0x277D3F198] sharedInstance];
  v172 = [v173 commonTypeDict_IntegerFormat];
  v247[34] = v172;
  v246[35] = @"RaTable_3";
  v171 = [MEMORY[0x277D3F198] sharedInstance];
  v170 = [v171 commonTypeDict_IntegerFormat];
  v247[35] = v170;
  v246[36] = @"RaTable_4";
  v169 = [MEMORY[0x277D3F198] sharedInstance];
  v168 = [v169 commonTypeDict_IntegerFormat];
  v247[36] = v168;
  v246[37] = @"RaTable_5";
  v167 = [MEMORY[0x277D3F198] sharedInstance];
  v166 = [v167 commonTypeDict_IntegerFormat];
  v247[37] = v166;
  v246[38] = @"RaTable_6";
  v165 = [MEMORY[0x277D3F198] sharedInstance];
  v164 = [v165 commonTypeDict_IntegerFormat];
  v247[38] = v164;
  v246[39] = @"RaTable_7";
  v163 = [MEMORY[0x277D3F198] sharedInstance];
  v162 = [v163 commonTypeDict_IntegerFormat];
  v247[39] = v162;
  v246[40] = @"RaTable_8";
  v161 = [MEMORY[0x277D3F198] sharedInstance];
  v160 = [v161 commonTypeDict_IntegerFormat];
  v247[40] = v160;
  v246[41] = @"RaTable_9";
  v159 = [MEMORY[0x277D3F198] sharedInstance];
  v158 = [v159 commonTypeDict_IntegerFormat];
  v247[41] = v158;
  v246[42] = @"RaTable_10";
  v157 = [MEMORY[0x277D3F198] sharedInstance];
  v156 = [v157 commonTypeDict_IntegerFormat];
  v247[42] = v156;
  v246[43] = @"RaTable_11";
  v155 = [MEMORY[0x277D3F198] sharedInstance];
  v154 = [v155 commonTypeDict_IntegerFormat];
  v247[43] = v154;
  v246[44] = @"RaTable_12";
  v153 = [MEMORY[0x277D3F198] sharedInstance];
  v152 = [v153 commonTypeDict_IntegerFormat];
  v247[44] = v152;
  v246[45] = @"RaTable_13";
  v151 = [MEMORY[0x277D3F198] sharedInstance];
  v150 = [v151 commonTypeDict_IntegerFormat];
  v247[45] = v150;
  v246[46] = @"RaTable_14";
  v149 = [MEMORY[0x277D3F198] sharedInstance];
  v148 = [v149 commonTypeDict_IntegerFormat];
  v247[46] = v148;
  v246[47] = @"RaTable_15";
  v147 = [MEMORY[0x277D3F198] sharedInstance];
  v146 = [v147 commonTypeDict_IntegerFormat];
  v247[47] = v146;
  v246[48] = @"RaUpdateCounter";
  v145 = [MEMORY[0x277D3F198] sharedInstance];
  v144 = [v145 commonTypeDict_IntegerFormat];
  v247[48] = v144;
  v246[49] = @"RDISCnt";
  v143 = [MEMORY[0x277D3F198] sharedInstance];
  v142 = [v143 commonTypeDict_IntegerFormat];
  v247[49] = v142;
  v246[50] = @"TemperatureSamples";
  v141 = [MEMORY[0x277D3F198] sharedInstance];
  v140 = [v141 commonTypeDict_IntegerFormat];
  v247[50] = v140;
  v246[51] = @"TimeAbove95Perc";
  v139 = [MEMORY[0x277D3F198] sharedInstance];
  v138 = [v139 commonTypeDict_IntegerFormat];
  v247[51] = v138;
  v246[52] = @"UpdateTime";
  v137 = [MEMORY[0x277D3F198] sharedInstance];
  v136 = [v137 commonTypeDict_IntegerFormat];
  v247[52] = v136;
  v246[53] = @"WeekMfd";
  v135 = [MEMORY[0x277D3F198] sharedInstance];
  v134 = [v135 commonTypeDict_IntegerFormat];
  v247[53] = v134;
  v246[54] = @"Wom_1";
  v133 = [MEMORY[0x277D3F198] sharedInstance];
  v132 = [v133 commonTypeDict_IntegerFormat];
  v247[54] = v132;
  v246[55] = @"Wom_2";
  v131 = [MEMORY[0x277D3F198] sharedInstance];
  v130 = [v131 commonTypeDict_IntegerFormat];
  v247[55] = v130;
  v246[56] = @"LastUPOTimestamp";
  v129 = [MEMORY[0x277D3F198] sharedInstance];
  v128 = [v129 commonTypeDict_IntegerFormat];
  v247[56] = v128;
  v246[57] = @"ChemicalWeightedRa";
  v127 = [MEMORY[0x277D3F198] sharedInstance];
  v126 = [v127 commonTypeDict_IntegerFormat];
  v247[57] = v126;
  v246[58] = @"WeightedRa";
  v125 = [MEMORY[0x277D3F198] sharedInstance];
  v124 = [v125 commonTypeDict_IntegerFormat];
  v247[58] = v124;
  v246[59] = @"DOFU";
  v123 = [MEMORY[0x277D3F198] sharedInstance];
  v122 = [v123 commonTypeDict_IntegerFormat];
  v247[59] = v122;
  v246[60] = @"BatteryHealthMetric";
  v121 = [MEMORY[0x277D3F198] sharedInstance];
  v120 = [v121 commonTypeDict_IntegerFormat];
  v247[60] = v120;
  v246[61] = @"PeakPerformanceCapacity";
  v119 = [MEMORY[0x277D3F198] sharedInstance];
  v118 = [v119 commonTypeDict_IntegerFormat];
  v247[61] = v118;
  v246[62] = @"ServiceOption";
  v117 = [MEMORY[0x277D3F198] sharedInstance];
  v116 = [v117 commonTypeDict_IntegerFormat];
  v247[62] = v116;
  v246[63] = @"QmaxUpdSuccessCount";
  v115 = [MEMORY[0x277D3F198] sharedInstance];
  v114 = [v115 commonTypeDict_IntegerFormat];
  v247[63] = v114;
  v246[64] = @"QmaxUpdFailCount";
  v113 = [MEMORY[0x277D3F198] sharedInstance];
  v112 = [v113 commonTypeDict_IntegerFormat];
  v247[64] = v112;
  v246[65] = @"MinimumRa8";
  v111 = [MEMORY[0x277D3F198] sharedInstance];
  v110 = [v111 commonTypeDict_IntegerFormat];
  v247[65] = v110;
  v246[66] = @"MaximumRa8";
  v109 = [MEMORY[0x277D3F198] sharedInstance];
  v108 = [v109 commonTypeDict_IntegerFormat];
  v247[66] = v108;
  v246[67] = @"TimeAbove95PercRange1";
  v107 = [MEMORY[0x277D3F198] sharedInstance];
  v106 = [v107 commonTypeDict_IntegerFormat];
  v247[67] = v106;
  v246[68] = @"TimeAbove95PercRange2";
  v105 = [MEMORY[0x277D3F198] sharedInstance];
  v104 = [v105 commonTypeDict_IntegerFormat];
  v247[68] = v104;
  v246[69] = @"TimeAbove95PercRange3";
  v103 = [MEMORY[0x277D3F198] sharedInstance];
  v102 = [v103 commonTypeDict_IntegerFormat];
  v247[69] = v102;
  v246[70] = @"ResetCnt";
  v101 = [MEMORY[0x277D3F198] sharedInstance];
  v100 = [v101 commonTypeDict_IntegerFormat];
  v247[70] = v100;
  v246[71] = @"DailyMaxSoc";
  v99 = [MEMORY[0x277D3F198] sharedInstance];
  v98 = [v99 commonTypeDict_IntegerFormat];
  v247[71] = v98;
  v246[72] = @"DailyMinSoc";
  v97 = [MEMORY[0x277D3F198] sharedInstance];
  v96 = [v97 commonTypeDict_IntegerFormat];
  v247[72] = v96;
  v246[73] = @"KioskModeHighSocDays";
  v95 = [MEMORY[0x277D3F198] sharedInstance];
  v94 = [v95 commonTypeDict_IntegerFormat];
  v247[73] = v94;
  v246[74] = @"KioskModeLastHighSocHours";
  v93 = [MEMORY[0x277D3F198] sharedInstance];
  v92 = [v93 commonTypeDict_IntegerFormat];
  v247[74] = v92;
  v246[75] = @"xFlags";
  v91 = [MEMORY[0x277D3F198] sharedInstance];
  v90 = [v91 commonTypeDict_IntegerFormat];
  v247[75] = v90;
  v246[76] = @"GasGaugeFirmwareVersion";
  v89 = [MEMORY[0x277D3F198] sharedInstance];
  v88 = [v89 commonTypeDict_IntegerFormat];
  v247[76] = v88;
  v246[77] = @"batteryServiceFlags";
  v87 = [MEMORY[0x277D3F198] sharedInstance];
  v86 = [v87 commonTypeDict_IntegerFormat];
  v247[77] = v86;
  v246[78] = @"BatterySerialChanged";
  v85 = [MEMORY[0x277D3F198] sharedInstance];
  v84 = [v85 commonTypeDict_IntegerFormat];
  v247[78] = v84;
  v246[79] = @"ResetDataComms";
  v83 = [MEMORY[0x277D3F198] sharedInstance];
  v82 = [v83 commonTypeDict_IntegerFormat];
  v247[79] = v82;
  v246[80] = @"ResetDataFirmware";
  v81 = [MEMORY[0x277D3F198] sharedInstance];
  v80 = [v81 commonTypeDict_IntegerFormat];
  v247[80] = v80;
  v246[81] = @"ResetDataHardware";
  v79 = [MEMORY[0x277D3F198] sharedInstance];
  v78 = [v79 commonTypeDict_IntegerFormat];
  v247[81] = v78;
  v246[82] = @"ResetDataSoftware";
  v77 = [MEMORY[0x277D3F198] sharedInstance];
  v76 = [v77 commonTypeDict_IntegerFormat];
  v247[82] = v76;
  v246[83] = @"ResetDataWatchDog";
  v75 = [MEMORY[0x277D3F198] sharedInstance];
  v74 = [v75 commonTypeDict_IntegerFormat];
  v247[83] = v74;
  v246[84] = @"ResetDataSwWatchDog";
  v73 = [MEMORY[0x277D3F198] sharedInstance];
  v72 = [v73 commonTypeDict_IntegerFormat];
  v247[84] = v72;
  v246[85] = @"ResetDataHardFault";
  v71 = [MEMORY[0x277D3F198] sharedInstance];
  v70 = [v71 commonTypeDict_IntegerFormat];
  v247[85] = v70;
  v246[86] = @"ResetDataCorruption";
  v69 = [MEMORY[0x277D3F198] sharedInstance];
  v68 = [v69 commonTypeDict_IntegerFormat];
  v247[86] = v68;
  v246[87] = @"AlgoChemID";
  v67 = [MEMORY[0x277D3F198] sharedInstance];
  v66 = [v67 commonTypeDict_IntegerFormat];
  v247[87] = v66;
  v246[88] = @"ServiceOption";
  v65 = [MEMORY[0x277D3F198] sharedInstance];
  v64 = [v65 commonTypeDict_IntegerFormat];
  v247[88] = v64;
  v246[89] = @"GGUpdateStatus";
  v63 = [MEMORY[0x277D3F198] sharedInstance];
  v62 = [v63 commonTypeDict_IntegerFormat];
  v247[89] = v62;
  v246[90] = @"GGUpdateError";
  v61 = [MEMORY[0x277D3F198] sharedInstance];
  v60 = [v61 commonTypeDict_IntegerFormat];
  v247[90] = v60;
  v246[91] = @"GGUpdatePhase";
  v59 = [MEMORY[0x277D3F198] sharedInstance];
  v58 = [v59 commonTypeDict_IntegerFormat];
  v247[91] = v58;
  v246[92] = @"GGUpdateErrorPhase";
  v57 = [MEMORY[0x277D3F198] sharedInstance];
  v56 = [v57 commonTypeDict_IntegerFormat];
  v247[92] = v56;
  v246[93] = @"GGUpdateSubclassID";
  v55 = [MEMORY[0x277D3F198] sharedInstance];
  v54 = [v55 commonTypeDict_IntegerFormat];
  v247[93] = v54;
  v246[94] = @"GGUpdateBlock";
  v53 = [MEMORY[0x277D3F198] sharedInstance];
  v52 = [v53 commonTypeDict_IntegerFormat];
  v247[94] = v52;
  v246[95] = @"NCCMin";
  v51 = [MEMORY[0x277D3F198] sharedInstance];
  v50 = [v51 commonTypeDict_IntegerFormat];
  v247[95] = v50;
  v246[96] = @"NCCMax";
  v49 = [MEMORY[0x277D3F198] sharedInstance];
  v48 = [v49 commonTypeDict_IntegerFormat];
  v247[96] = v48;
  v246[97] = @"TimeAtHighSoc";
  v47 = [MEMORY[0x277D3F198] sharedInstance];
  v46 = [v47 commonTypeDict_RawDataFormat];
  v247[97] = v46;
  v246[98] = @"LowVoltageResidencyCounters";
  v45 = [MEMORY[0x277D3F198] sharedInstance];
  v44 = [v45 commonTypeDict_RawDataFormat];
  v247[98] = v44;
  v246[99] = @"ncc";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_IntegerFormat];
  v247[99] = v42;
  v246[100] = @"nccAlt";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_IntegerFormat];
  v247[100] = v40;
  v246[101] = @"vact";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_BoolFormat];
  v247[101] = v38;
  v246[102] = @"DataFlashWriteCount";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_IntegerFormat];
  v247[102] = v36;
  v246[103] = @"calibrationFlags";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat];
  v247[103] = v34;
  v246[104] = @"filteredNCC";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_IntegerFormat];
  v247[104] = v32;
  v246[105] = @"exitTotalOperatingTime";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v247[105] = v30;
  v246[106] = @"svcTotalOperatingTime";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v247[106] = v28;
  v246[107] = @"LastResetReason";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat];
  v247[107] = v26;
  v246[108] = @"LifeTimeOCVRestCounter";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v247[108] = v24;
  v246[109] = @"LifeTimeQmaxUpdateCounter";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_IntegerFormat];
  v247[109] = v22;
  v246[110] = @"LifeTimeOCVRestCounterHsp";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v247[110] = v20;
  v246[111] = @"LifeTimeQmaxUpdateCounterHsp";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v247[111] = v18;
  v246[112] = @"VacVoltageLimit";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v247[112] = v7;
  v246[113] = @"FlashWearLevelData";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RawDataFormat];
  v247[113] = v9;
  v246[114] = @"CommunicationError";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v247[114] = v11;
  v246[115] = @"CoProcError";
  v12 = [MEMORY[0x277D3F198] sharedInstance];
  v13 = [v12 commonTypeDict_IntegerFormat];
  v247[115] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v247 forKeys:v246 count:116];
  v251[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v251 forKeys:v250 count:2];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)entryEventNoneDefinitionUserType
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C718;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"UserType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitions
{
  v20[13] = *MEMORY[0x277D85DE8];
  v19[0] = @"BatteryShutdown";
  v18 = [a1 entryEventPointDefinitionBatteryShutdown];
  v20[0] = v18;
  v19[1] = @"BatteryPanicShutdown";
  v17 = [a1 entryEventPointDefinitionBatteryPanicShutdown];
  v20[1] = v17;
  v19[2] = @"TrapInfo";
  v16 = [a1 entryEventPointDefinitionBatteryTrapInfo];
  v20[2] = v16;
  v19[3] = @"ChargingInfo";
  v15 = [a1 entryEventPointDefinitionChargingInfo];
  v20[3] = v15;
  v19[4] = @"EABatteryConfig";
  v3 = [a1 entryEventPointDefinitionEABatteryConfig];
  v20[4] = v3;
  v19[5] = @"EAPencilConnect";
  v4 = +[PLBatteryAgent entryEventPointDefinitionEAPencil];
  v20[5] = v4;
  v19[6] = @"BatteryUILogging";
  v5 = [a1 entryEventPointDefinitionBatteryUILogging];
  v20[6] = v5;
  v19[7] = @"BatteryUIVisit";
  v6 = [a1 entryEventPointDefinitionBatteryUIVisit];
  v20[7] = v6;
  v19[8] = @"UPOStepper";
  v7 = [a1 entryEventPointDefinitionUPOStepper];
  v20[8] = v7;
  v19[9] = @"BatterySample";
  v8 = [a1 entryEventPointDefinitionBatterySample];
  v20[9] = v8;
  v19[10] = @"CPMSControlState";
  v9 = [a1 entryEventPointDefinitionCPMSControlState];
  v20[10] = v9;
  v19[11] = @"CPMSClientState";
  v10 = [a1 entryEventPointDefinitionCPMSClientState];
  v20[11] = v10;
  v19[12] = @"GasGaugeReconnect";
  v11 = [a1 entryEventPointDefinitionGasGaugeReconnect];
  v20[12] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:13];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __31__PLBatteryAgent_shouldLogCPMS__block_invoke()
{
  result = [MEMORY[0x277CF6ED8] isCPMSSupported];
  _MergedGlobals_2_0 = result;
  return result;
}

+ (id)entryEventPointDefinitionCPMSControlState
{
  v83[2] = *MEMORY[0x277D85DE8];
  if (+[PLBatteryAgent shouldLogCPMS])
  {
    v82[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4D8];
    v80[0] = *MEMORY[0x277D3F568];
    v80[1] = v2;
    v81[0] = &unk_282C1C728;
    v81[1] = MEMORY[0x277CBEC38];
    v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
    v83[0] = v77;
    v82[1] = *MEMORY[0x277D3F540];
    v78[0] = @"mode";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_IntegerFormat];
    v79[0] = v75;
    v78[1] = @"source";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_IntegerFormat];
    v79[1] = v73;
    v78[2] = @"flags";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_IntegerFormat];
    v79[2] = v71;
    v78[3] = @"reason";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_IntegerFormat];
    v79[3] = v69;
    v78[4] = @"droopCE";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat];
    v79[4] = v67;
    v78[5] = @"zeroSumCE";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_IntegerFormat];
    v79[5] = v65;
    v78[6] = @"undroopCE";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_IntegerFormat];
    v79[6] = v63;
    v78[7] = @"brownoutRiskEngaged";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_BoolFormat];
    v79[7] = v61;
    v78[8] = @"brownoutRiskSysCap";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_IntegerFormat];
    v79[8] = v59;
    v78[9] = @"brownoutRiskPu";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_IntegerFormat];
    v79[9] = v57;
    v78[10] = @"peakPowerPressureLevel";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_IntegerFormat];
    v79[10] = v55;
    v78[11] = @"servoCE0";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_IntegerFormat];
    v79[11] = v53;
    v78[12] = @"servoCE1";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat];
    v79[12] = v51;
    v78[13] = @"servoCE2";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_IntegerFormat];
    v79[13] = v49;
    v78[14] = @"servoCE3";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat];
    v79[14] = v47;
    v78[15] = @"servoCE4";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_IntegerFormat];
    v79[15] = v45;
    v78[16] = @"servoCE5";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v79[16] = v43;
    v78[17] = @"servoCE6";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_IntegerFormat];
    v79[17] = v41;
    v78[18] = @"battPC0";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v79[18] = v39;
    v78[19] = @"battPC1";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_IntegerFormat];
    v79[19] = v37;
    v78[20] = @"battPC2";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v79[20] = v35;
    v78[21] = @"battPC3";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v79[21] = v33;
    v78[22] = @"battPC4";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v79[22] = v31;
    v78[23] = @"battPC5";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v79[23] = v29;
    v78[24] = @"battPC6";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v79[24] = v27;
    v78[25] = @"battPC7";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v79[25] = v25;
    v78[26] = @"sysCap0";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v79[26] = v23;
    v78[27] = @"sysCap1";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v79[27] = v21;
    v78[28] = @"sysCap2";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v79[28] = v19;
    v78[29] = @"remCapCE0";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v79[29] = v17;
    v78[30] = @"remCapCE1";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v79[30] = v15;
    v78[31] = @"remCapCE2";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v79[31] = v4;
    v78[32] = @"remCapCE3";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v79[32] = v6;
    v78[33] = @"remCapCE4";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v79[33] = v8;
    v78[34] = @"remCapCE5";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v79[34] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:35];
    v83[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionCPMSClientState
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (+[PLBatteryAgent shouldLogCPMS])
  {
    v26[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4D8];
    v24[0] = *MEMORY[0x277D3F568];
    v24[1] = v2;
    v25[0] = &unk_282C1C718;
    v25[1] = MEMORY[0x277CBEC38];
    v24[2] = *MEMORY[0x277D3F508];
    v25[2] = MEMORY[0x277CBEC38];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v27[0] = v21;
    v26[1] = *MEMORY[0x277D3F540];
    v22[0] = @"client";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v23[0] = v19;
    v22[1] = @"req0";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v23[1] = v17;
    v22[2] = @"req1";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v23[2] = v15;
    v22[3] = @"req2";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v23[3] = v4;
    v22[4] = @"grant0";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v23[4] = v6;
    v22[5] = @"grant1";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v23[5] = v8;
    v22[6] = @"grant2";
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

+ (BOOL)shouldLogPPMDebugDetail
{
  if (qword_2811F3AC8 != -1)
  {
    dispatch_once(&qword_2811F3AC8, &__block_literal_global_1759);
  }

  return byte_2811F3A79;
}

uint64_t __41__PLBatteryAgent_shouldLogPPMDebugDetail__block_invoke()
{
  if ([MEMORY[0x277D3F180] taskMode])
  {
    result = 1;
  }

  else
  {
    result = [MEMORY[0x277D3F180] fullMode];
  }

  byte_2811F3A79 = result;
  return result;
}

+ (id)entryEventForwardDefinitionIOPMUBootLPMLog
{
  v36[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasLPEM])
  {
    v35[0] = *MEMORY[0x277D3F4E8];
    v33 = *MEMORY[0x277D3F568];
    v34 = &unk_282C1C738;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v36[0] = v30;
    v35[1] = *MEMORY[0x277D3F540];
    v31[0] = @"TMS0";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v32[0] = v28;
    v31[1] = @"CAPA";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v32[1] = v26;
    v31[2] = @"CCCs";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v32[2] = v24;
    v31[3] = @"PDD0";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v32[3] = v22;
    v31[4] = @"PDDc";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v32[4] = v20;
    v31[5] = @"GGTm";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v32[5] = v18;
    v31[6] = @"VOLT";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v32[6] = v16;
    v31[7] = @"STAT";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v32[7] = v14;
    v31[8] = @"TMSc";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v32[8] = v3;
    v31[9] = @"CCCu";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v32[9] = v5;
    v31[10] = @"CurrentTimeRTC";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v32[10] = v7;
    v31[11] = @"BTLC";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v32[11] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:12];
    v36[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionMobileChargeMode
{
  v22[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v21[0] = *MEMORY[0x277D3F4E8];
    v19 = *MEMORY[0x277D3F568];
    v20 = &unk_282C1C718;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v16;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"mcmCurrentState";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v18[0] = v14;
    v17[1] = @"isChargePackConnected";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v18[1] = v3;
    v17[2] = @"mcmToppedOffInThisChargeSession";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v18[2] = v5;
    v17[3] = @"mcmForbidsCharging";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v18[3] = v7;
    v17[4] = @"batteryLevel";
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

+ (id)entryEventPointDefinitionGasGaugeReconnect
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] hasGasGauge])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F580];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_282C1C718;
    v13[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"Reason";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat];
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

+ (id)entryEventPointDefinitionEAPencil
{
  v14[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_282C1C718;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"isPhysicallyAttached";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_BoolFormat];
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

+ (id)entryEventPointDefinitionBatteryShutdown
{
  v161[2] = *MEMORY[0x277D85DE8];
  v160[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v158[0] = *MEMORY[0x277D3F568];
  v158[1] = v2;
  v159[0] = &unk_282C1C748;
  v159[1] = &unk_282C11EE0;
  v158[2] = *MEMORY[0x277D3F588];
  v159[2] = &unk_282C1C708;
  v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:3];
  v161[0] = v155;
  v160[1] = *MEMORY[0x277D3F540];
  v156[0] = @"BatteryShutdownTimestamp";
  v154 = [MEMORY[0x277D3F198] sharedInstance];
  v153 = [v154 commonTypeDict_DateFormat];
  v157[0] = v153;
  v156[1] = @"UISOC";
  v152 = [MEMORY[0x277D3F198] sharedInstance];
  v151 = [v152 commonTypeDict_RealFormat];
  v157[1] = v151;
  v156[2] = @"Temperature";
  v150 = [MEMORY[0x277D3F198] sharedInstance];
  v149 = [v150 commonTypeDict_IntegerFormat];
  v157[2] = v149;
  v156[3] = @"PresentDOD";
  v148 = [MEMORY[0x277D3F198] sharedInstance];
  v147 = [v148 commonTypeDict_IntegerFormat];
  v157[3] = v147;
  v156[4] = @"MaximumRa0-8";
  v146 = [MEMORY[0x277D3F198] sharedInstance];
  v145 = [v146 commonTypeDict_IntegerFormat];
  v157[4] = v145;
  v156[5] = @"NominalChargeCapacity";
  v144 = [MEMORY[0x277D3F198] sharedInstance];
  v143 = [v144 commonTypeDict_IntegerFormat];
  v157[5] = v143;
  v156[6] = @"NominalChargeCapacityPrevious";
  v142 = [MEMORY[0x277D3F198] sharedInstance];
  v141 = [v142 commonTypeDict_IntegerFormat];
  v157[6] = v141;
  v156[7] = @"FullChargeCapacity";
  v140 = [MEMORY[0x277D3F198] sharedInstance];
  v139 = [v140 commonTypeDict_IntegerFormat];
  v157[7] = v139;
  v156[8] = @"FullChargeCapacityPrevious";
  v138 = [MEMORY[0x277D3F198] sharedInstance];
  v137 = [v138 commonTypeDict_IntegerFormat];
  v157[8] = v137;
  v156[9] = @"RemainingCapacity";
  v136 = [MEMORY[0x277D3F198] sharedInstance];
  v135 = [v136 commonTypeDict_IntegerFormat];
  v157[9] = v135;
  v156[10] = @"RemainingCapacityPrevious";
  v134 = [MEMORY[0x277D3F198] sharedInstance];
  v133 = [v134 commonTypeDict_IntegerFormat];
  v157[10] = v133;
  v156[11] = @"CycleCount";
  v132 = [MEMORY[0x277D3F198] sharedInstance];
  v131 = [v132 commonTypeDict_IntegerFormat];
  v157[11] = v131;
  v156[12] = @"MaximumDischargeCurrent";
  v130 = [MEMORY[0x277D3F198] sharedInstance];
  v129 = [v130 commonTypeDict_IntegerFormat];
  v157[12] = v129;
  v156[13] = @"TimeAbove95Perc";
  v128 = [MEMORY[0x277D3F198] sharedInstance];
  v127 = [v128 commonTypeDict_IntegerFormat];
  v157[13] = v127;
  v156[14] = @"Voltage";
  v126 = [MEMORY[0x277D3F198] sharedInstance];
  v125 = [v126 commonTypeDict_IntegerFormat];
  v157[14] = v125;
  v156[15] = @"VoltagePrevious";
  v124 = [MEMORY[0x277D3F198] sharedInstance];
  v123 = [v124 commonTypeDict_IntegerFormat];
  v157[15] = v123;
  v156[16] = @"AverageCurrent";
  v122 = [MEMORY[0x277D3F198] sharedInstance];
  v121 = [v122 commonTypeDict_IntegerFormat];
  v157[16] = v121;
  v156[17] = @"AverageCurrentPrevious";
  v120 = [MEMORY[0x277D3F198] sharedInstance];
  v119 = [v120 commonTypeDict_IntegerFormat];
  v157[17] = v119;
  v156[18] = @"CycleCountLastQmax";
  v118 = [MEMORY[0x277D3F198] sharedInstance];
  v117 = [v118 commonTypeDict_IntegerFormat];
  v157[18] = v117;
  v156[19] = @"ResScale";
  v116 = [MEMORY[0x277D3F198] sharedInstance];
  v115 = [v116 commonTypeDict_IntegerFormat];
  v157[19] = v115;
  v156[20] = @"Qstart";
  v114 = [MEMORY[0x277D3F198] sharedInstance];
  v113 = [v114 commonTypeDict_IntegerFormat];
  v157[20] = v113;
  v156[21] = @"PassedCharge";
  v112 = [MEMORY[0x277D3F198] sharedInstance];
  v111 = [v112 commonTypeDict_IntegerFormat];
  v157[21] = v111;
  v156[22] = @"TimeSinceWake";
  v110 = [MEMORY[0x277D3F198] sharedInstance];
  v109 = [v110 commonTypeDict_IntegerFormat];
  v157[22] = v109;
  v156[23] = @"DOD0";
  v108 = [MEMORY[0x277D3F198] sharedInstance];
  v107 = [v108 commonTypeDict_IntegerFormat];
  v157[23] = v107;
  v156[24] = @"DLOG_0";
  v106 = [MEMORY[0x277D3F198] sharedInstance];
  v105 = [v106 commonTypeDict_IntegerFormat];
  v157[24] = v105;
  v156[25] = @"DLOG_1";
  v104 = [MEMORY[0x277D3F198] sharedInstance];
  v103 = [v104 commonTypeDict_IntegerFormat];
  v157[25] = v103;
  v156[26] = @"DLOG_2";
  v102 = [MEMORY[0x277D3F198] sharedInstance];
  v101 = [v102 commonTypeDict_IntegerFormat];
  v157[26] = v101;
  v156[27] = @"DLOG_3";
  v100 = [MEMORY[0x277D3F198] sharedInstance];
  v99 = [v100 commonTypeDict_IntegerFormat];
  v157[27] = v99;
  v156[28] = @"DLOG_4";
  v98 = [MEMORY[0x277D3F198] sharedInstance];
  v97 = [v98 commonTypeDict_IntegerFormat];
  v157[28] = v97;
  v156[29] = @"DLOG_5";
  v96 = [MEMORY[0x277D3F198] sharedInstance];
  v95 = [v96 commonTypeDict_IntegerFormat];
  v157[29] = v95;
  v156[30] = @"DLOG_6";
  v94 = [MEMORY[0x277D3F198] sharedInstance];
  v93 = [v94 commonTypeDict_IntegerFormat];
  v157[30] = v93;
  v156[31] = @"DLOG_7";
  v92 = [MEMORY[0x277D3F198] sharedInstance];
  v91 = [v92 commonTypeDict_IntegerFormat];
  v157[31] = v91;
  v156[32] = @"DLOG_8";
  v90 = [MEMORY[0x277D3F198] sharedInstance];
  v89 = [v90 commonTypeDict_IntegerFormat];
  v157[32] = v89;
  v156[33] = @"DLOG_9";
  v88 = [MEMORY[0x277D3F198] sharedInstance];
  v87 = [v88 commonTypeDict_IntegerFormat];
  v157[33] = v87;
  v156[34] = @"DLOG_10";
  v86 = [MEMORY[0x277D3F198] sharedInstance];
  v85 = [v86 commonTypeDict_IntegerFormat];
  v157[34] = v85;
  v156[35] = @"DLOG_11";
  v84 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v84 commonTypeDict_IntegerFormat];
  v157[35] = v83;
  v156[36] = @"DLOG_12";
  v82 = [MEMORY[0x277D3F198] sharedInstance];
  v81 = [v82 commonTypeDict_IntegerFormat];
  v157[36] = v81;
  v156[37] = @"DLOG_13";
  v80 = [MEMORY[0x277D3F198] sharedInstance];
  v79 = [v80 commonTypeDict_IntegerFormat];
  v157[37] = v79;
  v156[38] = @"DLOG_14";
  v78 = [MEMORY[0x277D3F198] sharedInstance];
  v77 = [v78 commonTypeDict_IntegerFormat];
  v157[38] = v77;
  v156[39] = @"DLOG_15";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_IntegerFormat];
  v157[39] = v75;
  v156[40] = @"DLOG_16";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_IntegerFormat];
  v157[40] = v73;
  v156[41] = @"DLOG_17";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_IntegerFormat];
  v157[41] = v71;
  v156[42] = @"DLOG_18";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_IntegerFormat];
  v157[42] = v69;
  v156[43] = @"DLOG_19";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_IntegerFormat];
  v157[43] = v67;
  v156[44] = @"RaTable_1";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_IntegerFormat];
  v157[44] = v65;
  v156[45] = @"RaTable_2";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_IntegerFormat];
  v157[45] = v63;
  v156[46] = @"RaTable_3";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_IntegerFormat];
  v157[46] = v61;
  v156[47] = @"RaTable_4";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_IntegerFormat];
  v157[47] = v59;
  v156[48] = @"RaTable_5";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_IntegerFormat];
  v157[48] = v57;
  v156[49] = @"RaTable_6";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_IntegerFormat];
  v157[49] = v55;
  v156[50] = @"RaTable_7";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_IntegerFormat];
  v157[50] = v53;
  v156[51] = @"RaTable_8";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_IntegerFormat];
  v157[51] = v51;
  v156[52] = @"RaTable_9";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_IntegerFormat];
  v157[52] = v49;
  v156[53] = @"RaTable_10";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_IntegerFormat];
  v157[53] = v47;
  v156[54] = @"RaTable_11";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v157[54] = v45;
  v156[55] = @"RaTable_12";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_IntegerFormat];
  v157[55] = v43;
  v156[56] = @"RaTable_13";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v157[56] = v41;
  v156[57] = @"RaTable_14";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_IntegerFormat];
  v157[57] = v39;
  v156[58] = @"RaTable_15";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_IntegerFormat];
  v157[58] = v37;
  v156[59] = @"RSS";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_IntegerFormat];
  v157[59] = v35;
  v156[60] = @"LowBatteryLog";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_StringFormat];
  v157[60] = v33;
  v156[61] = @"UpoReboot";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_BoolFormat];
  v157[61] = v31;
  v156[62] = @"DataError";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v157[62] = v29;
  v156[63] = @"FilteredCurrent";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v157[63] = v27;
  v156[64] = @"ShutdownVoltage";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v157[64] = v25;
  v156[65] = @"SOCFThreshold";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v157[65] = v23;
  v156[66] = @"ShutdownSoc";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v157[66] = v21;
  v156[67] = @"LPEMMode";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v157[67] = v19;
  v156[68] = @"SOCAlarm";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v157[68] = v17;
  v156[69] = @"SWRemcap";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v157[69] = v15;
  v156[70] = @"SocSoc2";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v157[70] = v4;
  v156[71] = @"SWFcc";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v157[71] = v6;
  v156[72] = @"DynamicSOCVcut";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v157[72] = v8;
  v156[73] = @"DataCriticalFlagsKey";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v157[73] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:74];
  v161[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionBatteryPanicShutdown
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C718;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"I2CLogData";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RawDataFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventPointDefinitionBatteryTrapInfo
{
  v46[2] = *MEMORY[0x277D85DE8];
  v45[0] = *MEMORY[0x277D3F4E8];
  v43 = *MEMORY[0x277D3F568];
  v44 = &unk_282C1C758;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v46[0] = v40;
  v45[1] = *MEMORY[0x277D3F540];
  v41[0] = @"ActivePayloads";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_IntegerFormat];
  v42[0] = v38;
  v41[1] = @"TimeOnCharger";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_IntegerFormat_withUnit_s];
  v42[1] = v36;
  v41[2] = @"CloakEntryCount";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat];
  v42[2] = v34;
  v41[3] = @"PrechargeCount";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_IntegerFormat];
  v42[3] = v32;
  v41[4] = @"AverageBattVirtualTemp";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v42[4] = v30;
  v41[5] = @"AverageBattSkinTemp";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v42[5] = v28;
  v41[6] = @"StartBatteryCapacity";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat_withUnit_mAh];
  v42[6] = v26;
  v41[7] = @"StartBatteryVoltage";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat_withUnit_mV];
  v42[7] = v24;
  v41[8] = @"VbusType";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_BoolFormat];
  v42[8] = v22;
  v41[9] = @"AdapterType";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v42[9] = v20;
  v41[10] = @"WirelessChargingMode";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_BoolFormat];
  v42[10] = v18;
  v41[11] = @"AdapterPower";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat_withUnit_W];
  v42[11] = v16;
  v41[12] = @"ResetCount";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v42[12] = v14;
  v41[13] = @"HighPoweriBootCount";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v42[13] = v3;
  v41[14] = @"APBootCount";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v42[14] = v5;
  v41[15] = @"DisplayTimeBootCount";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v42[15] = v7;
  v41[16] = @"Ok2SwitchCount";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v42[16] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:17];
  v46[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionBatteryUILogging
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C6D8;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Rbattx";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"Rbattxy";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionBatteryUIVisit
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_282C1C768;
  v20[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F588];
  v19[2] = *MEMORY[0x277D3F590];
  v19[3] = v3;
  v20[2] = &unk_282C11EE0;
  v20[3] = &unk_282C1C6E8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"Visit";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v18[0] = v5;
  v17[1] = @"UsageSummary";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v18[1] = v7;
  v17[2] = @"Qualifiers";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v18[2] = v9;
  v17[3] = @"Insights";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v22[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventPointDefinitionChargingInfo
{
  v99[2] = *MEMORY[0x277D85DE8];
  if (+[PLBatteryAgent hasChargingInfoLogging])
  {
    v98[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v96[0] = *MEMORY[0x277D3F568];
    v96[1] = v2;
    v97[0] = &unk_282C1C738;
    v97[1] = MEMORY[0x277CBEC28];
    v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
    v99[0] = v93;
    v98[1] = *MEMORY[0x277D3F540];
    v94[0] = @"Connected";
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_IntegerFormat];
    v95[0] = v91;
    v94[1] = @"Charging";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_IntegerFormat];
    v95[1] = v89;
    v94[2] = @"DriverState";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v87 = [v88 commonTypeDict_IntegerFormat];
    v95[2] = v87;
    v94[3] = @"DriverStatusBits";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_IntegerFormat];
    v95[3] = v85;
    v94[4] = @"FirmwareStatus";
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_IntegerFormat];
    v95[4] = v83;
    v94[5] = @"Frequency";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v82 commonTypeDict_IntegerFormat];
    v95[5] = v81;
    v94[6] = @"RectifierCurrent";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_IntegerFormat];
    v95[6] = v79;
    v94[7] = @"RectifierVoltage";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_IntegerFormat];
    v95[7] = v77;
    v94[8] = @"PowerTarget";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_IntegerFormat];
    v95[8] = v75;
    v94[9] = @"VoltageTarget";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_IntegerFormat];
    v95[9] = v73;
    v94[10] = @"PowerBudget";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_IntegerFormat];
    v95[10] = v71;
    v94[11] = @"TxGain1";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_IntegerFormat];
    v95[11] = v69;
    v94[12] = @"TxGain2";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat];
    v95[12] = v67;
    v94[13] = @"TxVersion";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_IntegerFormat];
    v95[13] = v65;
    v94[14] = @"SignalStrength";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_IntegerFormat];
    v95[14] = v63;
    v94[15] = @"NotCloakReason";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_IntegerFormat];
    v95[15] = v61;
    v94[16] = @"ModDepth";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_IntegerFormat];
    v95[16] = v59;
    v94[17] = @"HighFreq";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_BoolFormat];
    v95[17] = v57;
    v94[18] = @"CloakReason";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_IntegerFormat];
    v95[18] = v55;
    v94[19] = @"InductiveFWMode";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_IntegerFormat];
    v95[19] = v53;
    v94[20] = @"OVPCount";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat];
    v95[20] = v51;
    v94[21] = @"MagnetAttach";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_BoolFormat];
    v95[21] = v49;
    v94[22] = @"PTxType";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat];
    v95[22] = v47;
    v94[23] = @"PowerNegotiable";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_IntegerFormat];
    v95[23] = v45;
    v94[24] = @"PowerPotential";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v95[24] = v43;
    v94[25] = @"PowerLimitReason";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_IntegerFormat];
    v95[25] = v41;
    v94[26] = @"Prect";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v95[26] = v39;
    v94[27] = @"IlimTarget";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_IntegerFormat];
    v95[27] = v37;
    v94[28] = @"IlimHeadroom";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v95[28] = v35;
    v94[29] = @"TxGain3";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v95[29] = v33;
    v94[30] = @"TxGain4";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v95[30] = v31;
    v94[31] = @"PowerProfile";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v95[31] = v29;
    v94[32] = @"PowerProfSwitch";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v95[32] = v27;
    v94[33] = @"TxKest";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v95[33] = v25;
    v94[34] = @"RxQippVer";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v95[34] = v23;
    v94[35] = @"DplossStat";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v95[35] = v21;
    v94[36] = @"MainCurrent";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v95[36] = v19;
    v94[37] = @"AuthFodStatus";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v95[37] = v17;
    v94[38] = @"InductiveCoexStatus";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v95[38] = v15;
    v94[39] = @"VMID";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v95[39] = v4;
    v94[40] = @"PowerConverterStatus";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v95[40] = v6;
    v94[41] = @"CommStatus";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v95[41] = v8;
    v94[42] = @"SlowChargerReason";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v95[42] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:43];
    v99[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionUPOStepper
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F590];
    v22[0] = *MEMORY[0x277D3F568];
    v22[1] = v2;
    v23[0] = &unk_282C1C718;
    v23[1] = &unk_282C11EE0;
    v22[2] = *MEMORY[0x277D3F588];
    v23[2] = &unk_282C1C708;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v25[0] = v19;
    v24[1] = *MEMORY[0x277D3F540];
    v20[0] = @"mitigatedUPOCount";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v21[0] = v17;
    v20[1] = @"mitigationState";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v21[1] = v15;
    v20[2] = @"BatteryShutdownTimestamp";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_DateFormat];
    v21[2] = v4;
    v20[3] = @"timeWindow";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v21[3] = v6;
    v20[4] = @"trueRa";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v21[4] = v8;
    v20[5] = @"virtualRa";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v21[5] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
    v25[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitions
{
  v34[27] = *MEMORY[0x277D85DE8];
  v33[0] = @"ExternalCharger";
  v32 = +[PLBatteryAgent entryEventForwardDefinitionExternalCharger];
  v34[0] = v32;
  v33[1] = @"EAPencilStats";
  v31 = +[PLBatteryAgent entryEventForwardDefinitionEAPencil];
  v34[1] = v31;
  v33[2] = @"LightningConnectorStatus";
  v30 = +[PLBatteryAgent entryEventForwardDefinitionLightningConnectorStatus];
  v34[2] = v30;
  v33[3] = @"UPOStepper";
  v29 = +[PLBatteryAgent entryEventForwardDefinitionUPOStepper];
  v34[3] = v29;
  v33[4] = @"MitigationState";
  v28 = +[PLBatteryAgent entryEventForwardDefinitionMitigationState];
  v34[4] = v28;
  v33[5] = @"IOPMUBootLPMLog";
  v27 = [a1 entryEventForwardDefinitionIOPMUBootLPMLog];
  v34[5] = v27;
  v33[6] = @"SmartCharging";
  v26 = +[PLBatteryAgent entryEventForwardDefinitionSmartCharging];
  v34[6] = v26;
  v33[7] = @"CleanEnergyCharging";
  v25 = +[PLBatteryAgent entryEventForwardDefinitionCleanEnergyCharging];
  v34[7] = v25;
  v33[8] = @"EAPencilCharging";
  v24 = +[PLBatteryAgent entryEventForwardDefinitionEAPencilCharging];
  v34[8] = v24;
  v33[9] = @"USBCCharging0";
  v23 = +[PLBatteryAgent entryEventForwardDefinitionUSBCCharging];
  v34[9] = v23;
  v33[10] = @"USBCCharging1";
  v22 = +[PLBatteryAgent entryEventForwardDefinitionUSBCCharging];
  v34[10] = v22;
  v33[11] = @"USBCCharging2";
  v21 = +[PLBatteryAgent entryEventForwardDefinitionUSBCCharging];
  v34[11] = v21;
  v33[12] = @"USBCCharging3";
  v20 = +[PLBatteryAgent entryEventForwardDefinitionUSBCCharging];
  v34[12] = v20;
  v33[13] = @"PortControllerInfo0";
  v19 = +[PLBatteryAgent entryEventForwardDefinitionPortControllerInfo];
  v34[13] = v19;
  v33[14] = @"PortControllerInfo1";
  v18 = +[PLBatteryAgent entryEventForwardDefinitionPortControllerInfo];
  v34[14] = v18;
  v33[15] = @"PortControllerInfo2";
  v17 = +[PLBatteryAgent entryEventForwardDefinitionPortControllerInfo];
  v34[15] = v17;
  v33[16] = @"PortControllerInfo3";
  v16 = +[PLBatteryAgent entryEventForwardDefinitionPortControllerInfo];
  v34[16] = v16;
  v33[17] = @"PortControllerBuffer0";
  v3 = +[PLBatteryAgent entryEventForwardDefinitionPortControllerBuffer];
  v34[17] = v3;
  v33[18] = @"PortControllerBuffer1";
  v4 = +[PLBatteryAgent entryEventForwardDefinitionPortControllerBuffer];
  v34[18] = v4;
  v33[19] = @"PortControllerBuffer2";
  v5 = +[PLBatteryAgent entryEventForwardDefinitionPortControllerBuffer];
  v34[19] = v5;
  v33[20] = @"PortControllerBuffer3";
  v6 = +[PLBatteryAgent entryEventForwardDefinitionPortControllerBuffer];
  v34[20] = v6;
  v33[21] = @"OrionInfo";
  v7 = +[PLBatteryAgent entryEventForwardDefinitionOrionInfo];
  v34[21] = v7;
  v33[22] = @"OrionBuffer";
  v8 = +[PLBatteryAgent entryEventForwardDefinitionOrionBuffer];
  v34[22] = v8;
  v33[23] = @"BatteryCalibration0Baseline";
  v9 = [a1 entryEventForwardDefinitionCalibration0];
  v34[23] = v9;
  v33[24] = @"Calibration0Info";
  v10 = [a1 entryEventForwardDefinitionCalibration0Info];
  v34[24] = v10;
  v33[25] = @"MobileChargeMode";
  v11 = +[PLBatteryAgent entryEventForwardDefinitionMobileChargeMode];
  v34[25] = v11;
  v33[26] = @"AdapterDetails";
  v12 = +[PLBatteryAgent entryEventForwardDefinitionAdapterDetails];
  v34[26] = v12;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:27];

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)entryEventForwardDefinitionCalibration0
{
  v80[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiPhone] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v79[0] = *MEMORY[0x277D3F4E8];
    v77 = *MEMORY[0x277D3F568];
    v78 = &unk_282C1C718;
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v80[0] = v74;
    v79[1] = *MEMORY[0x277D3F540];
    v75[0] = @"AlgoChemID";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v76[0] = v72;
    v75[1] = @"AppleRawMaxCapacity";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat];
    v76[1] = v70;
    v75[2] = @"batteryServiceFlags";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v76[2] = v68;
    v75[3] = @"CycleCount";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_IntegerFormat];
    v76[3] = v66;
    v75[4] = @"epoch";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v76[4] = v64;
    v75[5] = @"GasGaugeFirmwareVersion";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat];
    v76[5] = v62;
    v75[6] = @"LifetimeUPOCount";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v76[6] = v60;
    v75[7] = @"MaximumCapacityPercent";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat];
    v76[7] = v58;
    v75[8] = @"MaximumFCC";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v76[8] = v56;
    v75[9] = @"MinimumFCC";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_IntegerFormat];
    v76[9] = v54;
    v75[10] = @"MaximumQmax";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v76[10] = v52;
    v75[11] = @"MinimumQmax";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_IntegerFormat];
    v76[11] = v50;
    v75[12] = @"NCCMin";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v76[12] = v48;
    v75[13] = @"NCCMax";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v76[13] = v46;
    v75[14] = @"NominalChargeCapacity";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v76[14] = v44;
    v75[15] = @"Qmax";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat];
    v76[15] = v42;
    v75[16] = @"Ra00";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v76[16] = v40;
    v75[17] = @"Ra01";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v76[17] = v38;
    v75[18] = @"Ra02";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v76[18] = v36;
    v75[19] = @"Ra03";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v76[19] = v34;
    v75[20] = @"Ra04";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v76[20] = v32;
    v75[21] = @"Ra05";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v76[21] = v30;
    v75[22] = @"Ra06";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v76[22] = v28;
    v75[23] = @"Ra07";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v76[23] = v26;
    v75[24] = @"Ra08";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v76[24] = v24;
    v75[25] = @"Ra09";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v76[25] = v22;
    v75[26] = @"Ra10";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v76[26] = v20;
    v75[27] = @"Ra11";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v76[27] = v18;
    v75[28] = @"Ra12";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v76[28] = v16;
    v75[29] = @"Ra13";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v76[29] = v14;
    v75[30] = @"Ra14";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v76[30] = v3;
    v75[31] = @"TotalOperatingTime";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v76[31] = v5;
    v75[32] = @"WeightedRa";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v76[32] = v7;
    v75[33] = @"TimeAtHighSoc";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_StringFormat];
    v76[33] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:34];
    v80[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionEAPencilCharging
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v17 = *MEMORY[0x277D3F568];
    v18 = &unk_282C1C718;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"IOAccessoryDetect";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v16[0] = v3;
    v15[1] = @"IOAccessoryPowerMode";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v16[1] = v5;
    v15[2] = @"IOAccessoryActivePowerMode";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v16[2] = v7;
    v15[3] = @"Pencil";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_BoolFormat];
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

+ (id)entryEventForwardDefinitionUSBCCharging
{
  v37[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiPad] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPhone") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
  {
    v36[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F508];
    v34[0] = *MEMORY[0x277D3F568];
    v34[1] = v2;
    v35[0] = &unk_282C1C6D8;
    v35[1] = MEMORY[0x277CBEC38];
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v37[0] = v31;
    v36[1] = *MEMORY[0x277D3F540];
    v32[0] = @"FedDualRolePower";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_BoolFormat];
    v33[0] = v29;
    v32[1] = @"FedPortPowerRole";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_BoolFormat];
    v33[1] = v27;
    v32[2] = @"FedRemainingCapacity";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v33[2] = v25;
    v32[3] = @"FedExternalConnected";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_BoolFormat];
    v33[3] = v23;
    v32[4] = @"FedDesignCapacity";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v33[4] = v21;
    v32[5] = @"FedProductID";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v33[5] = v19;
    v32[6] = @"FedVendorID";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v33[6] = v17;
    v32[7] = @"FedStateOfCharge";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v33[7] = v15;
    v32[8] = @"FedPdSpecRevision";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v33[8] = v4;
    v32[9] = @"FedPwrPolicySt";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v33[9] = v6;
    v32[10] = @"FedSnkConfReason";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v33[10] = v8;
    v32[11] = @"FedSrcConfReason";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v33[11] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:12];
    v37[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionPortControllerInfo
{
  v161[2] = *MEMORY[0x277D85DE8];
  v160[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v158[0] = *MEMORY[0x277D3F568];
  v158[1] = v2;
  v159[0] = &unk_282C1C728;
  v159[1] = MEMORY[0x277CBEC38];
  v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:2];
  v161[0] = v155;
  v160[1] = *MEMORY[0x277D3F540];
  v156[0] = @"PortControllerPortPDO0";
  v154 = [MEMORY[0x277D3F198] sharedInstance];
  v153 = [v154 commonTypeDict_IntegerFormat];
  v157[0] = v153;
  v156[1] = @"PortControllerPortPDO1";
  v152 = [MEMORY[0x277D3F198] sharedInstance];
  v151 = [v152 commonTypeDict_IntegerFormat];
  v157[1] = v151;
  v156[2] = @"PortControllerPortPDO2";
  v150 = [MEMORY[0x277D3F198] sharedInstance];
  v149 = [v150 commonTypeDict_IntegerFormat];
  v157[2] = v149;
  v156[3] = @"PortControllerPortPDO3";
  v148 = [MEMORY[0x277D3F198] sharedInstance];
  v147 = [v148 commonTypeDict_IntegerFormat];
  v157[3] = v147;
  v156[4] = @"PortControllerPortPDO4";
  v146 = [MEMORY[0x277D3F198] sharedInstance];
  v145 = [v146 commonTypeDict_IntegerFormat];
  v157[4] = v145;
  v156[5] = @"PortControllerPortPDO5";
  v144 = [MEMORY[0x277D3F198] sharedInstance];
  v143 = [v144 commonTypeDict_IntegerFormat];
  v157[5] = v143;
  v156[6] = @"PortControllerPortPDO6";
  v142 = [MEMORY[0x277D3F198] sharedInstance];
  v141 = [v142 commonTypeDict_IntegerFormat];
  v157[6] = v141;
  v156[7] = @"PortControllerPortPDO7";
  v140 = [MEMORY[0x277D3F198] sharedInstance];
  v139 = [v140 commonTypeDict_IntegerFormat];
  v157[7] = v139;
  v156[8] = @"PortControllerPortPDO8";
  v138 = [MEMORY[0x277D3F198] sharedInstance];
  v137 = [v138 commonTypeDict_IntegerFormat];
  v157[8] = v137;
  v156[9] = @"PortControllerPortPDO9";
  v136 = [MEMORY[0x277D3F198] sharedInstance];
  v135 = [v136 commonTypeDict_IntegerFormat];
  v157[9] = v135;
  v156[10] = @"PortControllerPortPDO10";
  v134 = [MEMORY[0x277D3F198] sharedInstance];
  v133 = [v134 commonTypeDict_IntegerFormat];
  v157[10] = v133;
  v156[11] = @"PortControllerPortPDO11";
  v132 = [MEMORY[0x277D3F198] sharedInstance];
  v131 = [v132 commonTypeDict_IntegerFormat];
  v157[11] = v131;
  v156[12] = @"PortControllerPortPDO12";
  v130 = [MEMORY[0x277D3F198] sharedInstance];
  v129 = [v130 commonTypeDict_IntegerFormat];
  v157[12] = v129;
  v156[13] = @"PortControllerPortPDO13";
  v128 = [MEMORY[0x277D3F198] sharedInstance];
  v127 = [v128 commonTypeDict_IntegerFormat];
  v157[13] = v127;
  v156[14] = @"PortControllerPortPDO14";
  v126 = [MEMORY[0x277D3F198] sharedInstance];
  v125 = [v126 commonTypeDict_IntegerFormat];
  v157[14] = v125;
  v156[15] = @"PortControllerPortMode";
  v124 = [MEMORY[0x277D3F198] sharedInstance];
  v123 = [v124 commonTypeDict_IntegerFormat];
  v157[15] = v123;
  v156[16] = @"PortControllerFwVersion";
  v122 = [MEMORY[0x277D3F198] sharedInstance];
  v121 = [v122 commonTypeDict_IntegerFormat];
  v157[16] = v121;
  v156[17] = @"PortControllerElectionFailReason";
  v120 = [MEMORY[0x277D3F198] sharedInstance];
  v119 = [v120 commonTypeDict_IntegerFormat];
  v157[17] = v119;
  v156[18] = @"PortControllerActiveContractRdo";
  v118 = [MEMORY[0x277D3F198] sharedInstance];
  v117 = [v118 commonTypeDict_IntegerFormat];
  v157[18] = v117;
  v156[19] = @"PortControllerDnSt";
  v116 = [MEMORY[0x277D3F198] sharedInstance];
  v115 = [v116 commonTypeDict_IntegerFormat];
  v157[19] = v115;
  v156[20] = @"PortControllerFetStatus";
  v114 = [MEMORY[0x277D3F198] sharedInstance];
  v113 = [v114 commonTypeDict_IntegerFormat];
  v157[20] = v113;
  v156[21] = @"PortControllerPowerState";
  v112 = [MEMORY[0x277D3F198] sharedInstance];
  v111 = [v112 commonTypeDict_IntegerFormat];
  v157[21] = v111;
  v156[22] = @"PortControllerUvdmStatus";
  v110 = [MEMORY[0x277D3F198] sharedInstance];
  v109 = [v110 commonTypeDict_IntegerFormat];
  v157[22] = v109;
  v156[23] = @"PortControllerSrcTypes";
  v108 = [MEMORY[0x277D3F198] sharedInstance];
  v107 = [v108 commonTypeDict_IntegerFormat];
  v157[23] = v107;
  v156[24] = @"PortControllerLoserReason";
  v106 = [MEMORY[0x277D3F198] sharedInstance];
  v105 = [v106 commonTypeDict_IntegerFormat];
  v157[24] = v105;
  v156[25] = @"PortControllerNPDOs";
  v104 = [MEMORY[0x277D3F198] sharedInstance];
  v103 = [v104 commonTypeDict_IntegerFormat];
  v157[25] = v103;
  v156[26] = @"PortControllerNEprPDOs";
  v102 = [MEMORY[0x277D3F198] sharedInstance];
  v101 = [v102 commonTypeDict_IntegerFormat];
  v157[26] = v101;
  v156[27] = @"PortControllerPDst";
  v100 = [MEMORY[0x277D3F198] sharedInstance];
  v99 = [v100 commonTypeDict_IntegerFormat];
  v157[27] = v99;
  v156[28] = @"PortControllerCapMismatch";
  v98 = [MEMORY[0x277D3F198] sharedInstance];
  v97 = [v98 commonTypeDict_IntegerFormat];
  v157[28] = v97;
  v156[29] = @"PortControllerSrdoCount";
  v96 = [MEMORY[0x277D3F198] sharedInstance];
  v95 = [v96 commonTypeDict_IntegerFormat];
  v157[29] = v95;
  v156[30] = @"PortControllerSrdoRetryCount";
  v94 = [MEMORY[0x277D3F198] sharedInstance];
  v93 = [v94 commonTypeDict_IntegerFormat];
  v157[30] = v93;
  v156[31] = @"PortControllerSrdyCount";
  v92 = [MEMORY[0x277D3F198] sharedInstance];
  v91 = [v92 commonTypeDict_IntegerFormat];
  v157[31] = v91;
  v156[32] = @"PortControllerSrdyRejectCount";
  v90 = [MEMORY[0x277D3F198] sharedInstance];
  v89 = [v90 commonTypeDict_IntegerFormat];
  v157[32] = v89;
  v156[33] = @"PortControllerShortDetectCount";
  v88 = [MEMORY[0x277D3F198] sharedInstance];
  v87 = [v88 commonTypeDict_IntegerFormat];
  v157[33] = v87;
  v156[34] = @"PortControllerSrdoRejectCount";
  v86 = [MEMORY[0x277D3F198] sharedInstance];
  v85 = [v86 commonTypeDict_IntegerFormat];
  v157[34] = v85;
  v156[35] = @"PortControllerVdoFailCount";
  v84 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v84 commonTypeDict_IntegerFormat];
  v157[35] = v83;
  v156[36] = @"PortControllerI2cErrCount";
  v82 = [MEMORY[0x277D3F198] sharedInstance];
  v81 = [v82 commonTypeDict_IntegerFormat];
  v157[36] = v81;
  v156[37] = @"PortControllerSurpriseAckCount";
  v80 = [MEMORY[0x277D3F198] sharedInstance];
  v79 = [v80 commonTypeDict_IntegerFormat];
  v157[37] = v79;
  v156[38] = @"PortControllerSurpriseNackCount";
  v78 = [MEMORY[0x277D3F198] sharedInstance];
  v77 = [v78 commonTypeDict_IntegerFormat];
  v157[38] = v77;
  v156[39] = @"PortControllerStuckCmdCount";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_IntegerFormat];
  v157[39] = v75;
  v156[40] = @"PortControllerWakeFailCount";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_IntegerFormat];
  v157[40] = v73;
  v156[41] = @"PortControllerAttachCount";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_IntegerFormat];
  v157[41] = v71;
  v156[42] = @"PortControllerDetachCount";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_IntegerFormat];
  v157[42] = v69;
  v156[43] = @"PortControllerPwrRoleSwapFailCount";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_IntegerFormat];
  v157[43] = v67;
  v156[44] = @"PortControllerPwrRoleSwapCount";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_IntegerFormat];
  v157[44] = v65;
  v156[45] = @"PortControllerDataRoleSwapFailCount";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_IntegerFormat];
  v157[45] = v63;
  v156[46] = @"PortControllerDataRoleSwapCount";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_IntegerFormat];
  v157[46] = v61;
  v156[47] = @"PortControllerInpFetEnFailCount";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_IntegerFormat];
  v157[47] = v59;
  v156[48] = @"PortControllerHardResetCount";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_IntegerFormat];
  v157[48] = v57;
  v156[49] = @"PortControllerIrqCntAppLd";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_IntegerFormat];
  v157[49] = v55;
  v156[50] = @"PortControllerIrqCntHrdRst";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_IntegerFormat];
  v157[50] = v53;
  v156[51] = @"PortControllerIrqCntPlg";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_IntegerFormat];
  v157[51] = v51;
  v156[52] = @"PortControllerIrqCntStsUpd";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_IntegerFormat];
  v157[52] = v49;
  v156[53] = @"PortControllerIrqCntPwrStsUpd";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_IntegerFormat];
  v157[53] = v47;
  v156[54] = @"PortControllerIrqCntRxSrcCap";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v157[54] = v45;
  v156[55] = @"PortControllerIrqCntPdStsUpd";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_IntegerFormat];
  v157[55] = v43;
  v156[56] = @"PortControllerIrqCntRxIdSop";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v157[56] = v41;
  v156[57] = @"PortControllerIrqCntUvdmEnum";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_IntegerFormat];
  v157[57] = v39;
  v156[58] = @"PortControllerIrqCntUvdmStsUpd";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_IntegerFormat];
  v157[58] = v37;
  v156[59] = @"PortControllerIrqCntUsb2Plg";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_IntegerFormat];
  v157[59] = v35;
  v156[60] = @"PortControllerIrqCntUsb2Wak";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v157[60] = v33;
  v156[61] = @"PortControllerIrqCntConSrc";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_IntegerFormat];
  v157[61] = v31;
  v156[62] = @"PortControllerIrqCntRxSnkCap";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v157[62] = v29;
  v156[63] = @"PortControllerIrqCntRxRdo";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v157[63] = v27;
  v156[64] = @"PortControllerIrqCntAlert";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v157[64] = v25;
  v156[65] = @"PortControllerIrqCntldcm";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v157[65] = v23;
  v156[66] = @"PortControllerBootFlags";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v157[66] = v21;
  v156[67] = @"PortControllerSlpWakDisTime";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v157[67] = v19;
  v156[68] = @"PortControllerSlpWakDisCause";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v157[68] = v17;
  v156[69] = @"PortControllerSlpWakIsSleepEnabled";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v157[69] = v15;
  v156[70] = @"PortControllerWakeCmdFailCount";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v157[70] = v4;
  v156[71] = @"PortControllerSleepCmdFailCount";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v157[71] = v6;
  v156[72] = @"PortControllerWakeTimeoutCount";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v157[72] = v8;
  v156[73] = @"PortControllerPortControllerIrqCntWakeAck";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v157[73] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:74];
  v161[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionOrionInfo
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F508];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_282C1C718;
    v21[1] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"OrionActiveRDOIndex";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v19[0] = v15;
    v18[1] = @"OrionChargeCapable";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v19[1] = v4;
    v18[2] = @"OrionExternalConnected";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v19[2] = v6;
    v18[3] = @"OrionPresenceStatus";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v19[3] = v8;
    v18[4] = @"OrionVoltageConstraint";
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

+ (id)entryEventForwardDefinitionPortControllerBuffer
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiPad] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isiPhone") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F508];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_282C1C718;
    v13[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"PortControllerEvtBuffer";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RawDataFormat];
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

+ (id)entryEventForwardDefinitionOrionBuffer
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F508];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_282C1C718;
    v13[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"OrionEvtBuffer";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RawDataFormat];
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

+ (id)entryEventForwardDefinitionEAPencil
{
  v30[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v29[0] = *MEMORY[0x277D3F4E8];
    v27 = *MEMORY[0x277D3F568];
    v28 = &unk_282C1C718;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v30[0] = v24;
    v29[1] = *MEMORY[0x277D3F540];
    v25[0] = @"Is Present";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v26[0] = v22;
    v25[1] = @"Power Source State";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_StringFormat];
    v26[1] = v20;
    v25[2] = @"Max Capacity";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat_withUnit_mAh];
    v26[2] = v18;
    v25[3] = @"Current Capacity";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat_withUnit_mAh];
    v26[3] = v16;
    v25[4] = @"Transport Type";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_StringFormat];
    v26[4] = v14;
    v25[5] = @"Is Charging";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v26[5] = v3;
    v25[6] = @"Power Source ID";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v26[6] = v5;
    v25[7] = @"Type";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v26[7] = v7;
    v25[8] = @"Temperature";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v26[8] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
    v30[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionLightningConnectorStatus
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (+[PLBatteryAgent hasLightning])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_282C1C718;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"IOAccessoryPowerMode";
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

+ (id)entryEventForwardDefinitionExternalCharger
{
  v34[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F1B8] hasWirelessCharger])
  {
    v33[0] = *MEMORY[0x277D3F4E8];
    v31 = *MEMORY[0x277D3F568];
    v32 = &unk_282C1C758;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v34[0] = v28;
    v33[1] = *MEMORY[0x277D3F540];
    v29[0] = @"ConnectState";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v30[0] = v26;
    v29[1] = @"ResetCount";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v30[1] = v24;
    v29[2] = @"EEEECode";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_StringFormat];
    v30[2] = v22;
    v29[3] = @"Cloaked";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_BoolFormat];
    v30[3] = v20;
    v29[4] = @"FWStatus";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v30[4] = v18;
    v29[5] = @"LinkEfficiency";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v30[5] = v16;
    v29[6] = @"CloakReason";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v30[6] = v14;
    v29[7] = @"DeviceInfoChipVariant";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v30[7] = v3;
    v29[8] = @"DeviceInfoRegionCode";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v30[8] = v5;
    v29[9] = @"PuckClassification";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v30[9] = v7;
    v29[10] = @"HFPolicy";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RawDataFormat];
    v30[10] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
    v34[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)connectStateStringToEnum:(id)a3
{
  v3 = [&unk_282C14D48 indexOfObject:a3];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &unk_282C11F10;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];
  }

  return v4;
}

+ (id)entryEventForwardDefinitionUPOStepper
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v17 = *MEMORY[0x277D3F568];
    v18 = &unk_282C1C718;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"RAv";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v16[0] = v3;
    v15[1] = @"VirtualRADelta";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v16[1] = v5;
    v15[2] = @"MitigationState";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v16[2] = v7;
    v15[3] = @"RAvTimeWindow";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
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

+ (id)entryEventForwardDefinitionMitigationState
{
  v16[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v15[0] = *MEMORY[0x277D3F4E8];
    v13 = *MEMORY[0x277D3F568];
    v14 = &unk_282C1C718;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16[0] = v2;
    v15[1] = *MEMORY[0x277D3F540];
    v11[0] = @"MitigationState";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v11[1] = @"MitigationDisabled";
    v12[0] = v4;
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_BoolFormat];
    v12[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v16[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionSmartCharging
{
  v42[2] = *MEMORY[0x277D85DE8];
  if (+[PLBatteryAgent supportsSmartCharging](PLBatteryAgent, "supportsSmartCharging") || [MEMORY[0x277D3F1B8] hasFixedChargingLimit])
  {
    v41[0] = *MEMORY[0x277D3F4E8];
    v39 = *MEMORY[0x277D3F568];
    v40 = &unk_282C1C778;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v42[0] = v36;
    v41[1] = *MEMORY[0x277D3F540];
    v37[0] = @"status";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v38[0] = v34;
    v37[1] = @"checkpoint";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v38[1] = v32;
    v37[2] = @"decisionMaker";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v38[2] = v30;
    v37[3] = @"decisionTime";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v38[3] = v28;
    v37[4] = @"timeTillTopOff";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v38[4] = v26;
    v37[5] = @"modelVersion";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat];
    v38[5] = v24;
    v37[6] = @"engagementModelVersion";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v38[6] = v22;
    v37[7] = @"engagementProbability";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v38[7] = v20;
    v37[8] = @"durationPrediction";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v38[8] = v18;
    v37[9] = @"state";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v38[9] = v16;
    v37[10] = @"isEngaged";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_BoolFormat];
    v38[10] = v14;
    v37[11] = @"isLimited";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_BoolFormat];
    v38[11] = v3;
    v37[12] = @"isFixed";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_BoolFormat];
    v38[12] = v5;
    v37[13] = @"chargeLimitTargetSoC";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v38[13] = v7;
    v37[14] = @"recommendedChargeLimit";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v38[14] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:15];
    v42[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionCleanEnergyCharging
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (+[PLBatteryAgent supportsCleanEnergyCharging])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_282C1C6D8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"status";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v14[0] = v4;
    v13[1] = @"isPaused";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_BoolFormat];
    v14[1] = v6;
    v13[2] = @"cecState";
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

+ (id)entryEventForwardDefinitionAdapterDetails
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v19 = *MEMORY[0x277D3F568];
  v20 = &unk_282C1C6D8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"Manufacturer";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_StringFormat];
  v18[0] = v14;
  v17[1] = @"Model";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_StringFormat];
  v18[1] = v3;
  v17[2] = @"Watts";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v18[2] = v5;
  v17[3] = @"isWireless";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v18[3] = v7;
  v17[4] = @"AdapterPowerTier";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v18[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitions
{
  v21[15] = *MEMORY[0x277D85DE8];
  v20[0] = @"Battery";
  v19 = +[PLBatteryAgent entryEventBackwardDefinitionBattery];
  v21[0] = v19;
  v20[1] = @"EABattery";
  v18 = +[PLBatteryAgent entryEventBackwardDefinitionEABattery];
  v21[1] = v18;
  v20[2] = @"BatteryUI";
  v17 = +[PLBatteryAgent entryEventBackwardDefinitionBatteryUI];
  v21[2] = v17;
  v20[3] = @"CurrentAccumulator";
  v16 = +[PLBatteryAgent entryEventBackwardDefinitionCurrentAccumulator];
  v21[3] = v16;
  v20[4] = @"ChargingHeatMapA";
  v15 = +[PLBatteryAgent entryEventBackwardDefinitionChargingHeatMapA];
  v21[4] = v15;
  v20[5] = @"ChargingHeatMapB";
  v14 = +[PLBatteryAgent entryEventBackwardDefinitionChargingHeatMapB];
  v21[5] = v14;
  v20[6] = @"DischargingHeatMap";
  v2 = +[PLBatteryAgent entryEventBackwardDefinitionDischargingHeatMap];
  v21[6] = v2;
  v20[7] = @"KioskMode";
  v3 = +[PLBatteryAgent entryEventBackwardDefinitionKioskMode];
  v21[7] = v3;
  v20[8] = @"BTM";
  v4 = +[PLBatteryAgent entryEventBackwardDefinitionBTM];
  v21[8] = v4;
  v20[9] = @"TrustedBatteryHealth";
  v5 = +[PLBatteryAgent entryEventBackwardDefinitionTrustedBatteryHealth];
  v21[9] = v5;
  v20[10] = @"Adapter";
  v6 = +[PLBatteryAgent entryEventBackwardDefinitionAdapter];
  v21[10] = v6;
  v20[11] = @"PowerOut0";
  v7 = +[PLBatteryAgent entryEventBackwardDefinitionPowerOut];
  v21[11] = v7;
  v20[12] = @"PowerOut1";
  v8 = +[PLBatteryAgent entryEventBackwardDefinitionPowerOut];
  v21[12] = v8;
  v20[13] = @"ChargingLimit";
  v9 = +[PLBatteryAgent entryEventBackwardDefinitionChargingLimit];
  v21[13] = v9;
  v20[14] = @"Iconography";
  v10 = +[PLBatteryAgent entryEventBackwardDefinitionchargingIconography];
  v21[14] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:15];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionBattery
{
  v278[2] = *MEMORY[0x277D85DE8];
  v277[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v275[0] = *MEMORY[0x277D3F568];
  v275[1] = v2;
  v3 = MEMORY[0x277CBEC38];
  v276[0] = &unk_282C1C788;
  v276[1] = MEMORY[0x277CBEC38];
  v275[2] = *MEMORY[0x277D3F570];
  v274[0] = @"Level";
  v274[1] = @"RawLevel";
  v274[2] = @"AtCriticalLevel";
  v274[3] = @"Voltage";
  v274[4] = @"AppleRawBatteryVoltage";
  v274[5] = @"AdapterVoltage";
  v274[6] = @"InstantAmperage";
  v274[7] = @"FullAvailableCapacity";
  v274[8] = @"CurrentCapacity";
  v274[9] = @"AppleRawCurrentCapacity";
  v274[10] = @"MaxCapacity";
  v274[11] = @"AppleRawMaxCapacity";
  v274[12] = @"DesignCapacity";
  v274[13] = @"CycleCount";
  v274[14] = @"ChargeStatus";
  v274[15] = @"IsCharging";
  v274[16] = @"FullyCharged";
  v274[17] = @"Amperage";
  v274[18] = @"Temperature";
  v274[19] = @"AdapterInfo";
  v274[20] = @"ExternalConnected";
  v274[21] = @"ChemID";
  v274[22] = @"AbsoluteCapacity";
  v274[23] = @"PresentDOD";
  v274[24] = @"QmaxCell0";
  v274[25] = @"QmaxCell1";
  v274[26] = @"QmaxCell2";
  v274[27] = @"AbsoluteLevel";
  v274[28] = @"PMUConfiguration";
  v274[29] = @"DOD0";
  v274[30] = @"DOD1";
  v274[31] = @"DOD2";
  v274[32] = @"PassedCharge";
  v274[33] = @"Qstart";
  v274[34] = @"ResScale";
  v274[35] = @"RSS";
  v274[36] = @"ITMiscStatus";
  v274[37] = @"PresentMaxRa0-8";
  v274[38] = @"LifetimeMaxRa0-8Updated";
  v274[39] = @"Flags";
  v274[40] = @"BatteryCellDisconnectCount";
  v274[41] = @"GaugeResetCounter";
  v274[42] = @"ChemicalWeightedRa";
  v274[43] = @"WeightedRa";
  v274[44] = @"BatteryHealthMetric";
  v274[45] = @"PeakPerformanceCapacity";
  v274[46] = @"QmaxDisqualificationReason";
  v274[47] = @"SimRate";
  v274[48] = @"ChargeAccum";
  v274[49] = @"FilteredCurrent";
  v274[50] = @"VacVoltageLimit";
  v274[51] = @"KioskModeHighSocSeconds";
  v274[52] = @"KioskModeMode";
  v274[53] = @"CurrentSenseMonitorStatus";
  v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:54];
  v276[2] = v131;
  v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v276 forKeys:v275 count:3];
  v277[1] = *MEMORY[0x277D3F540];
  v278[0] = v130;
  v272[0] = @"Level";
  v5 = *MEMORY[0x277D3F5B0];
  v269[0] = *MEMORY[0x277D3F5A8];
  v4 = v269[0];
  v269[1] = v5;
  v271[0] = &unk_282C11EC8;
  v271[1] = @"%";
  v270 = *MEMORY[0x277D3F4E0];
  v6 = v270;
  v271[2] = v3;
  v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v271 forKeys:v269 count:3];
  v273[0] = v129;
  v272[1] = @"RawLevel";
  v267[0] = v4;
  v267[1] = v5;
  v268[0] = &unk_282C11EC8;
  v268[1] = @"%";
  v267[2] = v6;
  v268[2] = v3;
  v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v268 forKeys:v267 count:3];
  v273[1] = v128;
  v272[2] = @"AtCriticalLevel";
  v127 = [MEMORY[0x277D3F198] sharedInstance];
  v126 = [v127 commonTypeDict_BoolFormat];
  v273[2] = v126;
  v272[3] = @"Voltage";
  v125 = [MEMORY[0x277D3F198] sharedInstance];
  v124 = [v125 commonTypeDict_IntegerFormat_withUnit_mV];
  v273[3] = v124;
  v272[4] = @"AppleRawBatteryVoltage";
  v123 = [MEMORY[0x277D3F198] sharedInstance];
  v122 = [v123 commonTypeDict_IntegerFormat_withUnit_mV];
  v273[4] = v122;
  v272[5] = @"AdapterVoltage";
  v7 = *MEMORY[0x277D3F538];
  v265[0] = v4;
  v265[1] = v7;
  v266[0] = &unk_282C11EF8;
  v266[1] = &unk_282C14D60;
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v266 forKeys:v265 count:2];
  v273[5] = v121;
  v272[6] = @"InstantAmperage";
  v120 = [MEMORY[0x277D3F198] sharedInstance];
  v119 = [v120 commonTypeDict_IntegerFormat_withUnit_mA];
  v273[6] = v119;
  v272[7] = @"FullAvailableCapacity";
  v263[0] = v4;
  v263[1] = v5;
  v264[0] = &unk_282C11EF8;
  v264[1] = @"mAh";
  v263[2] = v7;
  v264[2] = &unk_282C14D78;
  v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v264 forKeys:v263 count:3];
  v273[7] = v118;
  v272[8] = @"CurrentCapacity";
  v117 = [MEMORY[0x277D3F198] sharedInstance];
  v116 = [v117 commonTypeDict_IntegerFormat_withUnit_mAh];
  v273[8] = v116;
  v272[9] = @"AppleRawCurrentCapacity";
  v115 = [MEMORY[0x277D3F198] sharedInstance];
  v114 = [v115 commonTypeDict_IntegerFormat_withUnit_mAh];
  v273[9] = v114;
  v272[10] = @"MaxCapacity";
  v113 = [MEMORY[0x277D3F198] sharedInstance];
  v112 = [v113 commonTypeDict_IntegerFormat_withUnit_mAh];
  v273[10] = v112;
  v272[11] = @"AppleRawMaxCapacity";
  v111 = [MEMORY[0x277D3F198] sharedInstance];
  v110 = [v111 commonTypeDict_IntegerFormat_withUnit_mAh];
  v273[11] = v110;
  v272[12] = @"DesignCapacity";
  v109 = [MEMORY[0x277D3F198] sharedInstance];
  v108 = [v109 commonTypeDict_IntegerFormat_withUnit_mAh];
  v273[12] = v108;
  v272[13] = @"CycleCount";
  v107 = [MEMORY[0x277D3F198] sharedInstance];
  v106 = [v107 commonTypeDict_IntegerFormat];
  v273[13] = v106;
  v272[14] = @"ChargeStatus";
  v105 = [MEMORY[0x277D3F198] sharedInstance];
  v104 = [v105 commonTypeDict_StringFormat];
  v273[14] = v104;
  v272[15] = @"IsCharging";
  v103 = [MEMORY[0x277D3F198] sharedInstance];
  v102 = [v103 commonTypeDict_BoolFormat];
  v273[15] = v102;
  v272[16] = @"FullyCharged";
  v101 = [MEMORY[0x277D3F198] sharedInstance];
  v100 = [v101 commonTypeDict_BoolFormat];
  v273[16] = v100;
  v272[17] = @"ChargingCurrent";
  v261[0] = v4;
  v261[1] = v5;
  v262[0] = &unk_282C11EF8;
  v262[1] = @"mA";
  v261[2] = v7;
  v262[2] = &unk_282C14D90;
  v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v262 forKeys:v261 count:3];
  v273[17] = v99;
  v272[18] = @"NotChargingReason";
  v259[0] = v4;
  v259[1] = v7;
  v260[0] = &unk_282C11EF8;
  v260[1] = &unk_282C14DA8;
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v260 forKeys:v259 count:2];
  v273[18] = v98;
  v272[19] = @"ChargerAlert";
  v257[0] = v4;
  v257[1] = v7;
  v258[0] = &unk_282C11EF8;
  v258[1] = &unk_282C14DC0;
  v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v258 forKeys:v257 count:2];
  v273[19] = v97;
  v272[20] = @"ChargerStatus";
  v255[0] = v4;
  v255[1] = v7;
  v256[0] = &unk_282C11EF8;
  v256[1] = &unk_282C14DD8;
  v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v256 forKeys:v255 count:2];
  v273[20] = v96;
  v272[21] = @"ChargingVoltage";
  v253[0] = v4;
  v253[1] = v7;
  v254[0] = &unk_282C11EF8;
  v254[1] = &unk_282C14DF0;
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:v253 count:2];
  v273[21] = v95;
  v272[22] = @"Amperage";
  v251[0] = v4;
  v251[1] = v5;
  v252[0] = &unk_282C11EF8;
  v252[1] = @"mA";
  v251[2] = v7;
  v252[2] = &unk_282C14E08;
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v252 forKeys:v251 count:3];
  v273[22] = v94;
  v272[23] = @"Temperature";
  v249[0] = v4;
  v249[1] = v5;
  v250[0] = &unk_282C11EC8;
  v250[1] = @"C";
  v249[2] = v6;
  v250[2] = v3;
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v250 forKeys:v249 count:3];
  v273[23] = v93;
  v272[24] = @"AdapterInfo";
  v247[0] = v4;
  v247[1] = v7;
  v248[0] = &unk_282C11EF8;
  v248[1] = &unk_282C14E20;
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v248 forKeys:v247 count:2];
  v273[24] = v92;
  v272[25] = @"ExternalConnected";
  v91 = [MEMORY[0x277D3F198] sharedInstance];
  v90 = [v91 commonTypeDict_BoolFormat];
  v273[25] = v90;
  v272[26] = @"NominalChargeCapacity";
  v89 = [MEMORY[0x277D3F198] sharedInstance];
  v88 = [v89 commonTypeDict_IntegerFormat];
  v273[26] = v88;
  v272[27] = @"ChemID";
  v245[0] = v4;
  v245[1] = v7;
  v246[0] = &unk_282C11EF8;
  v246[1] = &unk_282C14E38;
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v246 forKeys:v245 count:2];
  v273[27] = v87;
  v272[28] = @"AbsoluteCapacity";
  v86 = [MEMORY[0x277D3F198] sharedInstance];
  v85 = [v86 commonTypeDict_IntegerFormat];
  v273[28] = v85;
  v272[29] = @"PresentDOD";
  v84 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v84 commonTypeDict_IntegerFormat];
  v273[29] = v83;
  v272[30] = @"QmaxCell0";
  v243[0] = v4;
  v243[1] = v6;
  v244[0] = &unk_282C11EF8;
  v244[1] = v3;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v244 forKeys:v243 count:2];
  v273[30] = v82;
  v272[31] = @"QmaxCell1";
  v241[0] = v4;
  v241[1] = v6;
  v242[0] = &unk_282C11EF8;
  v242[1] = v3;
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v242 forKeys:v241 count:2];
  v273[31] = v81;
  v272[32] = @"QmaxCell2";
  v239[0] = v4;
  v239[1] = v6;
  v240[0] = &unk_282C11EF8;
  v240[1] = v3;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v240 forKeys:v239 count:2];
  v273[32] = v80;
  v272[33] = @"AbsoluteLevel";
  v237[0] = v4;
  v237[1] = v5;
  v238[0] = &unk_282C11EC8;
  v238[1] = @"%";
  v237[2] = v6;
  v238[2] = v3;
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v238 forKeys:v237 count:3];
  v273[33] = v79;
  v272[34] = @"PMUConfiguration";
  v235[0] = v4;
  v235[1] = v7;
  v236[0] = &unk_282C11EF8;
  v236[1] = &unk_282C14E50;
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v236 forKeys:v235 count:2];
  v273[34] = v78;
  v272[35] = @"DOD0";
  v233[0] = v4;
  v233[1] = v6;
  v234[0] = &unk_282C11EF8;
  v234[1] = v3;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v234 forKeys:v233 count:2];
  v273[35] = v77;
  v272[36] = @"DOD1";
  v231[0] = v4;
  v231[1] = v6;
  v232[0] = &unk_282C11EF8;
  v232[1] = v3;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v232 forKeys:v231 count:2];
  v273[36] = v76;
  v272[37] = @"DOD2";
  v229[0] = v4;
  v229[1] = v6;
  v230[0] = &unk_282C11EF8;
  v230[1] = v3;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v230 forKeys:v229 count:2];
  v273[37] = v75;
  v272[38] = @"PassedCharge";
  v227[0] = v4;
  v227[1] = v7;
  v228[0] = &unk_282C11EF8;
  v228[1] = &unk_282C14E68;
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v228 forKeys:v227 count:2];
  v273[38] = v74;
  v272[39] = @"Qstart";
  v225[0] = v4;
  v225[1] = v7;
  v226[0] = &unk_282C11EF8;
  v226[1] = &unk_282C14E80;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v226 forKeys:v225 count:2];
  v273[39] = v73;
  v272[40] = @"ResScale";
  v223[0] = v4;
  v223[1] = v7;
  v224[0] = &unk_282C11EF8;
  v224[1] = &unk_282C14E98;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v224 forKeys:v223 count:2];
  v273[40] = v72;
  v272[41] = @"RSS";
  v221[0] = v4;
  v221[1] = v7;
  v222[0] = &unk_282C11EF8;
  v222[1] = &unk_282C14EB0;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v222 forKeys:v221 count:2];
  v273[41] = v71;
  v272[42] = @"ITMiscStatus";
  v220[0] = &unk_282C11EF8;
  v219[0] = v4;
  v219[1] = v7;
  v218[0] = @"BatteryData";
  v218[1] = @"ITMiscStatus";
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v218 count:2];
  v220[1] = v70;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:v219 count:2];
  v273[42] = v69;
  v272[43] = @"PresentMaxRa0-8";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_IntegerFormat];
  v273[43] = v67;
  v272[44] = @"LifetimeMaxRa0-8Updated";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_BoolFormat];
  v273[44] = v65;
  v272[45] = @"Flags";
  v216[0] = v4;
  v216[1] = v7;
  v217[0] = &unk_282C11EF8;
  v217[1] = &unk_282C14EC8;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v217 forKeys:v216 count:2];
  v273[45] = v64;
  v272[46] = @"BatteryCellDisconnectCount";
  v214[0] = v4;
  v214[1] = v7;
  v215[0] = &unk_282C11EF8;
  v215[1] = &unk_282C14EE0;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:2];
  v273[46] = v63;
  v272[47] = @"GaugeResetCounter";
  v212[0] = v4;
  v212[1] = v7;
  v213[0] = &unk_282C11EF8;
  v213[1] = &unk_282C14EF8;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v213 forKeys:v212 count:2];
  v273[47] = v62;
  v272[48] = @"ChemicalWeightedRa";
  v210[0] = v4;
  v210[1] = v7;
  v211[0] = &unk_282C11EF8;
  v211[1] = &unk_282C14F10;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v211 forKeys:v210 count:2];
  v273[48] = v61;
  v272[49] = @"WeightedRa";
  v208[0] = v4;
  v208[1] = v6;
  v209[0] = &unk_282C11EF8;
  v209[1] = v3;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v209 forKeys:v208 count:2];
  v273[49] = v60;
  v272[50] = @"BatteryHealthMetric";
  v206[0] = v4;
  v206[1] = v7;
  v207[0] = &unk_282C11EF8;
  v207[1] = &unk_282C14F28;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v207 forKeys:v206 count:2];
  v273[50] = v59;
  v272[51] = @"PeakPerformanceCapacity";
  v204[0] = v4;
  v204[1] = v7;
  v205[0] = &unk_282C11EF8;
  v205[1] = &unk_282C14F40;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v205 forKeys:v204 count:2];
  v273[51] = v58;
  v272[52] = @"QmaxDisqualificationReason";
  v202[0] = v4;
  v202[1] = v7;
  v203[0] = &unk_282C11EF8;
  v203[1] = &unk_282C14F58;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v203 forKeys:v202 count:2];
  v273[52] = v57;
  v272[53] = @"SimRate";
  v200[0] = v4;
  v200[1] = v7;
  v201[0] = &unk_282C11EF8;
  v201[1] = &unk_282C14F70;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v201 forKeys:v200 count:2];
  v273[53] = v56;
  v272[54] = @"ChargeAccum";
  v198[0] = v4;
  v198[1] = v7;
  v199[0] = &unk_282C11EF8;
  v199[1] = &unk_282C14F88;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v199 forKeys:v198 count:2];
  v273[54] = v55;
  v272[55] = @"FilteredCurrent";
  v196[0] = v4;
  v196[1] = v7;
  v197[0] = &unk_282C11EF8;
  v197[1] = &unk_282C14FA0;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:v196 count:2];
  v273[55] = v54;
  v272[56] = @"VacVoltageLimit";
  v194[0] = v4;
  v194[1] = v7;
  v195[0] = &unk_282C11EF8;
  v195[1] = &unk_282C14FB8;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v195 forKeys:v194 count:2];
  v273[56] = v53;
  v272[57] = @"KioskModeHighSocSeconds";
  v192[0] = v4;
  v192[1] = v7;
  v193[0] = &unk_282C11EF8;
  v193[1] = &unk_282C14FD0;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:v192 count:2];
  v273[57] = v52;
  v272[58] = @"KioskModeMode";
  v190[0] = v4;
  v190[1] = v7;
  v191[0] = &unk_282C11EF8;
  v191[1] = &unk_282C14FE8;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:v190 count:2];
  v273[58] = v51;
  v272[59] = @"CurrentSenseMonitorStatus";
  v188[0] = v4;
  v188[1] = v7;
  v189[0] = &unk_282C11EF8;
  v189[1] = &unk_282C15000;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:v188 count:2];
  v273[59] = v50;
  v272[60] = @"AdapterPower";
  v186[0] = v4;
  v186[1] = v7;
  v187[0] = &unk_282C11EC8;
  v187[1] = &unk_282C15018;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:2];
  v273[60] = v49;
  v272[61] = @"SystemPower";
  v184[0] = v4;
  v184[1] = v7;
  v185[0] = &unk_282C11EC8;
  v185[1] = &unk_282C15030;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:2];
  v273[61] = v48;
  v272[62] = @"PMUConfigured";
  v182[0] = v4;
  v182[1] = v7;
  v183[0] = &unk_282C11EC8;
  v183[1] = &unk_282C15048;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v183 forKeys:v182 count:2];
  v273[62] = v47;
  v272[63] = @"VirtualTemperature";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v273[63] = v45;
  v272[64] = @"SWRemCap";
  v180[0] = v4;
  v180[1] = v7;
  v181[0] = &unk_282C11EF8;
  v181[1] = &unk_282C15060;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v181 forKeys:v180 count:2];
  v273[64] = v44;
  v272[65] = @"SWRawFCC";
  v178[0] = v4;
  v178[1] = v7;
  v179[0] = &unk_282C11EF8;
  v179[1] = &unk_282C15078;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v179 forKeys:v178 count:2];
  v273[65] = v43;
  v272[66] = @"SWRawSOC";
  v176[0] = v4;
  v176[1] = v7;
  v177[0] = &unk_282C11EF8;
  v177[1] = &unk_282C15090;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:2];
  v273[66] = v42;
  v272[67] = @"OCVCount";
  v174[0] = v4;
  v174[1] = v7;
  v175[0] = &unk_282C11EF8;
  v175[1] = &unk_282C150A8;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:2];
  v273[67] = v41;
  v272[68] = @"OCV";
  v172[0] = v4;
  v172[1] = v7;
  v173[0] = &unk_282C11EF8;
  v173[1] = &unk_282C150C0;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:2];
  v273[68] = v40;
  v272[69] = @"RaUpdateDisqualified";
  v170[0] = v4;
  v170[1] = v7;
  v171[0] = &unk_282C11EF8;
  v171[1] = &unk_282C150D8;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:2];
  v273[69] = v39;
  v272[70] = @"QmaxUpdateDisqualified";
  v168[0] = v4;
  v168[1] = v7;
  v169[0] = &unk_282C11EF8;
  v169[1] = &unk_282C150F0;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:2];
  v273[70] = v38;
  v272[71] = @"TimeSinceLastOCV";
  v166[0] = v4;
  v166[1] = v7;
  v167[0] = &unk_282C11EF8;
  v167[1] = &unk_282C15108;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:2];
  v273[71] = v37;
  v272[72] = @"LPEMMode";
  v164[0] = v4;
  v164[1] = v7;
  v165[0] = &unk_282C11EF8;
  v165[1] = &unk_282C15120;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:2];
  v273[72] = v36;
  v272[73] = @"InductiveFWMode";
  v162[0] = v4;
  v162[1] = v7;
  v163[0] = &unk_282C11EF8;
  v163[1] = &unk_282C15138;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:2];
  v273[73] = v35;
  v272[74] = @"Port1FilteredPower";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v273[74] = v33;
  v272[75] = @"Port1Current";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_IntegerFormat];
  v273[75] = v31;
  v272[76] = @"Port1Voltage";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v273[76] = v29;
  v272[77] = @"Port1Power";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v273[77] = v27;
  v272[78] = @"ChargerRegisterStatus";
  v160[0] = v4;
  v160[1] = v7;
  v161[0] = &unk_282C11F28;
  v161[1] = &unk_282C15150;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:2];
  v273[78] = v26;
  v272[79] = @"SOCFThreshold";
  v158[0] = v4;
  v158[1] = v7;
  v159[0] = &unk_282C11EF8;
  v159[1] = &unk_282C15168;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:2];
  v273[79] = v25;
  v272[80] = @"SOCAlarm";
  v156[0] = v4;
  v156[1] = v7;
  v157[0] = &unk_282C11EF8;
  v157[1] = &unk_282C15180;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:2];
  v273[80] = v24;
  v272[81] = @"DynamicEntryStatus";
  v154[0] = v4;
  v154[1] = v7;
  v155[0] = &unk_282C11EF8;
  v155[1] = &unk_282C15198;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:2];
  v273[81] = v23;
  v272[82] = @"ShallowDischargeLevels";
  v152[0] = v4;
  v152[1] = v7;
  v153[0] = &unk_282C11EF8;
  v153[1] = &unk_282C151B0;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:2];
  v273[82] = v22;
  v272[83] = @"ShallowDischargeScore";
  v150[0] = v4;
  v150[1] = v7;
  v151[0] = &unk_282C11EF8;
  v151[1] = &unk_282C151C8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:2];
  v273[83] = v21;
  v272[84] = @"ShallowDischargeFlag";
  v148[0] = v4;
  v148[1] = v7;
  v149[0] = &unk_282C11EF8;
  v149[1] = &unk_282C151E0;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:2];
  v273[84] = v20;
  v272[85] = @"TLCDuration";
  v146[0] = v4;
  v146[1] = v7;
  v147[0] = &unk_282C11EF8;
  v147[1] = &unk_282C151F8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
  v273[85] = v19;
  v272[86] = @"AverageAmperage";
  v144[0] = v4;
  v144[1] = v7;
  v145[0] = &unk_282C11EF8;
  v145[1] = &unk_282C15210;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];
  v273[86] = v8;
  v272[87] = @"DODatEOC";
  v142[0] = v4;
  v142[1] = v7;
  v143[0] = &unk_282C11EF8;
  v143[1] = &unk_282C15228;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:2];
  v273[87] = v9;
  v272[88] = @"SOC1Voltage";
  v140[0] = v4;
  v140[1] = v7;
  v141[0] = &unk_282C11EF8;
  v141[1] = &unk_282C15240;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:2];
  v273[88] = v10;
  v272[89] = @"ChargerInhibitReason";
  v138[0] = v4;
  v138[1] = v7;
  v139[0] = &unk_282C11EF8;
  v139[1] = &unk_282C15258;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:2];
  v273[89] = v11;
  v272[90] = @"Dod0AtQualifiedQmax";
  v136[0] = v4;
  v136[1] = v7;
  v137[0] = &unk_282C11EF8;
  v137[1] = &unk_282C15270;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:2];
  v273[90] = v12;
  v272[91] = @"SlowChargingReason";
  v134[0] = v4;
  v134[1] = v7;
  v135[0] = &unk_282C11EF8;
  v135[1] = &unk_282C15288;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];
  v273[91] = v13;
  v272[92] = @"BatteryRsenseOpenCount";
  v132[0] = v4;
  v132[1] = v7;
  v133[0] = &unk_282C11EF8;
  v133[1] = &unk_282C152A0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:2];
  v273[92] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v273 forKeys:v272 count:93];
  v278[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v278 forKeys:v277 count:2];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)entryEventBackwardDefinitionBatteryUI
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C6D8;
  v17[1] = &unk_282C11EE0;
  v16[2] = *MEMORY[0x277D3F588];
  v17[2] = &unk_282C1C6E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"Level";
  v4 = *MEMORY[0x277D3F5B0];
  v12[0] = *MEMORY[0x277D3F5A8];
  v12[1] = v4;
  v13[0] = &unk_282C11EC8;
  v13[1] = @"%";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[1] = @"IsCharging";
  v15[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v19[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventBackwardDefinitionEABattery
{
  v88[2] = *MEMORY[0x277D85DE8];
  if (+[PLBatteryAgent hasExternalAccessory])
  {
    v87[0] = *MEMORY[0x277D3F4E8];
    v85 = *MEMORY[0x277D3F568];
    v86 = &unk_282C1C798;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v88[0] = v56;
    v87[1] = *MEMORY[0x277D3F540];
    v83[0] = @"Battery Case Available Current";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_IntegerFormat];
    v84[0] = v54;
    v83[1] = @"Is Present";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v84[1] = v52;
    v83[2] = @"Power Source State";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_StringFormat];
    v84[2] = v50;
    v83[3] = @"Name";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_StringFormat];
    v84[3] = v48;
    v83[4] = @"Max Capacity";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat_withUnit_mAh];
    v84[4] = v46;
    v83[5] = @"Current";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat_withUnit_mA];
    v84[5] = v44;
    v83[6] = @"Voltage";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat_withUnit_mV];
    v84[6] = v42;
    v83[7] = @"Current Capacity";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat_withUnit_mAh];
    v84[7] = v40;
    v83[8] = @"Transport Type";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_StringFormat];
    v84[8] = v38;
    v83[9] = @"Is Charging";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v84[9] = v36;
    v83[10] = @"Power Source ID";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v84[10] = v34;
    v83[11] = @"Time to Empty";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v84[11] = v32;
    v83[12] = @"Type";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_StringFormat];
    v84[12] = v30;
    v83[13] = @"Temperature";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v84[13] = v28;
    v83[14] = @"AppleRawCurrentCapacity";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat_withUnit_mAh];
    v84[14] = v26;
    v83[15] = @"Battery Case Cumulative Current";
    v3 = *MEMORY[0x277D3F5B0];
    v81[0] = *MEMORY[0x277D3F5A8];
    v2 = v81[0];
    v81[1] = v3;
    v82[0] = &unk_282C11EF8;
    v82[1] = @"As";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
    v84[15] = v25;
    v83[16] = @"IncomingVoltage";
    v4 = *MEMORY[0x277D3F538];
    v79[0] = v2;
    v79[1] = v4;
    v80[0] = &unk_282C11EF8;
    v80[1] = &unk_282C152B8;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
    v84[16] = v24;
    v83[17] = @"IncomingCurrent";
    v77[0] = v2;
    v77[1] = v4;
    v78[0] = &unk_282C11EF8;
    v78[1] = &unk_282C152D0;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
    v84[17] = v23;
    v83[18] = @"Cell0Voltage";
    v75[0] = v2;
    v75[1] = v4;
    v76[0] = &unk_282C11EF8;
    v76[1] = &unk_282C152E8;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
    v84[18] = v22;
    v83[19] = @"Cell1Voltage";
    v73[0] = v2;
    v73[1] = v4;
    v74[0] = &unk_282C11EF8;
    v74[1] = &unk_282C15300;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
    v84[19] = v21;
    v83[20] = @"PowerStatus";
    v71[0] = v2;
    v71[1] = v4;
    v72[0] = &unk_282C11EF8;
    v72[1] = &unk_282C15318;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
    v84[20] = v20;
    v83[21] = @"ChargingStatus";
    v69[0] = v2;
    v69[1] = v4;
    v70[0] = &unk_282C11EF8;
    v70[1] = &unk_282C15330;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v84[21] = v19;
    v83[22] = @"InductiveStatus";
    v67[0] = v2;
    v67[1] = v4;
    v68[0] = &unk_282C11EF8;
    v68[1] = &unk_282C15348;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v84[22] = v18;
    v83[23] = @"FamilyCode";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v84[23] = v16;
    v83[24] = @"AvailablePower";
    v65[0] = v2;
    v65[1] = v4;
    v66[0] = &unk_282C11EF8;
    v66[1] = &unk_282C15360;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v84[24] = v15;
    v83[25] = @"RxPowerLimit";
    v63[0] = v2;
    v63[1] = v4;
    v64[0] = &unk_282C11EF8;
    v64[1] = &unk_282C15378;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v84[25] = v5;
    v83[26] = @"ChargingCurrent";
    v61[0] = v2;
    v61[1] = v4;
    v62[0] = &unk_282C11EF8;
    v62[1] = &unk_282C15390;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
    v84[26] = v6;
    v83[27] = @"CycleCount";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v84[27] = v8;
    v83[28] = @"NominalChargeCapacity";
    v59[0] = v2;
    v59[1] = v4;
    v60[0] = &unk_282C11EF8;
    v60[1] = &unk_282C153A8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v84[28] = v9;
    v83[29] = @"ChargingVoltage";
    v57[0] = v2;
    v57[1] = v4;
    v58[0] = &unk_282C11EF8;
    v58[1] = &unk_282C153C0;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v84[29] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:30];
    v88[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionEABatteryConfig
{
  v92[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F1B8] hasInductiveCharging])
  {
    v91[0] = *MEMORY[0x277D3F4E8];
    v89 = *MEMORY[0x277D3F568];
    v90 = &unk_282C1C718;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    v92[0] = v34;
    v91[1] = *MEMORY[0x277D3F540];
    v87[0] = @"AttachCountType0";
    v3 = *MEMORY[0x277D3F538];
    v85[0] = *MEMORY[0x277D3F5A8];
    v2 = v85[0];
    v85[1] = v3;
    v86[0] = &unk_282C11EF8;
    v86[1] = &unk_282C153D8;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
    v88[0] = v33;
    v87[1] = @"AttachCountType1";
    v83[0] = v2;
    v83[1] = v3;
    v84[0] = &unk_282C11EF8;
    v84[1] = &unk_282C153F0;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
    v88[1] = v32;
    v87[2] = @"AttachCountType2";
    v81[0] = v2;
    v81[1] = v3;
    v82[0] = &unk_282C11EF8;
    v82[1] = &unk_282C15408;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
    v88[2] = v31;
    v87[3] = @"AttachCountAdapter5";
    v79[0] = v2;
    v79[1] = v3;
    v80[0] = &unk_282C11EF8;
    v80[1] = &unk_282C15420;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
    v88[3] = v30;
    v87[4] = @"AttachCountAdapter7";
    v77[0] = v2;
    v77[1] = v3;
    v78[0] = &unk_282C11EF8;
    v78[1] = &unk_282C15438;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
    v88[4] = v29;
    v87[5] = @"AttachCountAdapter10";
    v75[0] = v2;
    v75[1] = v3;
    v76[0] = &unk_282C11EF8;
    v76[1] = &unk_282C15450;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
    v88[5] = v28;
    v87[6] = @"AttachCountAdapter12";
    v73[0] = v2;
    v73[1] = v3;
    v74[0] = &unk_282C11EF8;
    v74[1] = &unk_282C15468;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
    v88[6] = v27;
    v87[7] = @"AttachCountAdapter15";
    v71[0] = v2;
    v71[1] = v3;
    v72[0] = &unk_282C11EF8;
    v72[1] = &unk_282C15480;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
    v88[7] = v26;
    v87[8] = @"AttachCountAdapter18";
    v69[0] = v2;
    v69[1] = v3;
    v70[0] = &unk_282C11EF8;
    v70[1] = &unk_282C15498;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v88[8] = v25;
    v87[9] = @"AttachCountAdapter20";
    v67[0] = v2;
    v67[1] = v3;
    v68[0] = &unk_282C11EF8;
    v68[1] = &unk_282C154B0;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v88[9] = v24;
    v87[10] = @"QmaxCell0";
    v65[0] = v2;
    v65[1] = v3;
    v66[0] = &unk_282C11EF8;
    v66[1] = &unk_282C154C8;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v88[10] = v23;
    v87[11] = @"QmaxCell1";
    v63[0] = v2;
    v63[1] = v3;
    v64[0] = &unk_282C11EF8;
    v64[1] = &unk_282C154E0;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v88[11] = v22;
    v87[12] = @"MaximumTemperature";
    v61[0] = v2;
    v61[1] = v3;
    v62[0] = &unk_282C11EF8;
    v62[1] = &unk_282C154F8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
    v88[12] = v21;
    v87[13] = @"MinimumTemperature";
    v59[0] = v2;
    v59[1] = v3;
    v60[0] = &unk_282C11EF8;
    v60[1] = &unk_282C15510;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v88[13] = v20;
    v87[14] = @"MaximumVoltageCell0";
    v57[0] = v2;
    v57[1] = v3;
    v58[0] = &unk_282C11EF8;
    v58[1] = &unk_282C15528;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v88[14] = v19;
    v87[15] = @"MaximumVoltageCell1";
    v55[0] = v2;
    v55[1] = v3;
    v56[0] = &unk_282C11EF8;
    v56[1] = &unk_282C15540;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v88[15] = v18;
    v87[16] = @"MinimumVoltageCell0";
    v53[0] = v2;
    v53[1] = v3;
    v54[0] = &unk_282C11EF8;
    v54[1] = &unk_282C15558;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    v88[16] = v17;
    v87[17] = @"MinimumVoltageCell1";
    v51[0] = v2;
    v51[1] = v3;
    v52[0] = &unk_282C11EF8;
    v52[1] = &unk_282C15570;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v88[17] = v16;
    v87[18] = @"MaximumChargeCurrent";
    v49[0] = v2;
    v49[1] = v3;
    v50[0] = &unk_282C11EF8;
    v50[1] = &unk_282C15588;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    v88[18] = v15;
    v87[19] = @"MaximumDischargeCurrent";
    v47[0] = v2;
    v47[1] = v3;
    v48[0] = &unk_282C11EF8;
    v48[1] = &unk_282C155A0;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v88[19] = v4;
    v87[20] = @"TimeBelowLowTemperature";
    v45[0] = v2;
    v45[1] = v3;
    v46[0] = &unk_282C11EF8;
    v46[1] = &unk_282C155B8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    v88[20] = v5;
    v87[21] = @"TimeAboveLowTemperature";
    v43[0] = v2;
    v43[1] = v3;
    v44[0] = &unk_282C11EF8;
    v44[1] = &unk_282C155D0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v88[21] = v6;
    v87[22] = @"TimeAboveMedTemperature";
    v41[0] = v2;
    v41[1] = v3;
    v42[0] = &unk_282C11EF8;
    v42[1] = &unk_282C155E8;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    v88[22] = v7;
    v87[23] = @"TimeAboveHighTemperature";
    v39[0] = v2;
    v39[1] = v3;
    v40[0] = &unk_282C11EF8;
    v40[1] = &unk_282C15600;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v88[23] = v8;
    v87[24] = @"TotalOperatingTime";
    v37[0] = v2;
    v37[1] = v3;
    v38[0] = &unk_282C11EF8;
    v38[1] = &unk_282C15618;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v88[24] = v9;
    v87[25] = @"KioskModeCount";
    v35[0] = v2;
    v35[1] = v3;
    v36[0] = &unk_282C11EF8;
    v36[1] = &unk_282C15630;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v88[25] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:26];
    v92[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionBTM
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (+[PLBatteryAgent shouldLogBTM])
  {
    v28[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4D8];
    v26[0] = *MEMORY[0x277D3F568];
    v26[1] = v2;
    v27[0] = &unk_282C1C758;
    v27[1] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v29[0] = v23;
    v28[1] = *MEMORY[0x277D3F540];
    v24[0] = @"BTMProperty_TimestampforImax1";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_DateFormat];
    v25[0] = v21;
    v24[1] = @"BTMProperty_OCVforImax";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v25[1] = v19;
    v24[2] = @"BTMProperty_Imax";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v25[2] = v17;
    v24[3] = @"BTMProperty_VforImax";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v25[3] = v15;
    v24[4] = @"BTMProperty_TimestampforVmin1";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_DateFormat];
    v25[4] = v4;
    v24[5] = @"BTMProperty_OCVforVmin";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v25[5] = v6;
    v24[6] = @"BTMProperty_Vmin";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v25[6] = v8;
    v24[7] = @"BTMProperty_IforVmin";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v25[7] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:8];
    v29[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionTrustedBatteryHealth
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1C718;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"TrustedDataEnabled";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v16[0] = v3;
  v15[1] = @"TrustedDataFailedTimestamp";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_DateFormat];
  v16[1] = v5;
  v15[2] = @"TrustedDataTimestamp";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_DateFormat];
  v16[2] = v7;
  v15[3] = @"TrustedDataFailedCount";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionAdapter
{
  v36[2] = *MEMORY[0x277D85DE8];
  v35[0] = *MEMORY[0x277D3F4E8];
  v33 = *MEMORY[0x277D3F568];
  v34 = &unk_282C1C6D8;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v36[0] = v30;
  v35[1] = *MEMORY[0x277D3F540];
  v31[0] = @"AccumulatedAdapterEfficiencyLoss";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v32[0] = v28;
  v31[1] = @"AccumulatedSystemLoad";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat];
  v32[1] = v26;
  v31[2] = @"AccumulatedSystemPowerIn";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v32[2] = v24;
  v31[3] = @"AdapterEfficiencyLoss";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_IntegerFormat];
  v32[3] = v22;
  v31[4] = @"AdapterEfficiencyLossAccumulatorCount";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v32[4] = v20;
  v31[5] = @"SystemLoad";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v32[5] = v18;
  v31[6] = @"SystemLoadAccumulatorCount";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v32[6] = v16;
  v31[7] = @"SystemPowerIn";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v32[7] = v14;
  v31[8] = @"SystemPowerInAccumulatorCount";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v32[8] = v3;
  v31[9] = @"SystemInputVoltage";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v32[9] = v5;
  v31[10] = @"SystemInputCurrent";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v32[10] = v7;
  v31[11] = @"PowerTelemetryErrorCount";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v32[11] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:12];
  v36[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionPowerOut
{
  v58[2] = *MEMORY[0x277D85DE8];
  v57[0] = *MEMORY[0x277D3F4E8];
  v55 = *MEMORY[0x277D3F568];
  v56 = &unk_282C1C728;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v58[0] = v52;
  v57[1] = *MEMORY[0x277D3F540];
  v53[0] = @"FilteredPower";
  v51 = [MEMORY[0x277D3F198] sharedInstance];
  v50 = [v51 commonTypeDict_IntegerFormat];
  v54[0] = v50;
  v53[1] = @"Current";
  v49 = [MEMORY[0x277D3F198] sharedInstance];
  v48 = [v49 commonTypeDict_IntegerFormat];
  v54[1] = v48;
  v53[2] = @"AdapterVoltage";
  v47 = [MEMORY[0x277D3F198] sharedInstance];
  v46 = [v47 commonTypeDict_IntegerFormat];
  v54[2] = v46;
  v53[3] = @"Watts";
  v45 = [MEMORY[0x277D3F198] sharedInstance];
  v44 = [v45 commonTypeDict_IntegerFormat];
  v54[3] = v44;
  v53[4] = @"ConfiguredCurrent";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_IntegerFormat];
  v54[4] = v42;
  v53[5] = @"ConfiguredVoltage";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_IntegerFormat];
  v54[5] = v40;
  v53[6] = @"AccumulatedPower";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_IntegerFormat];
  v54[6] = v38;
  v53[7] = @"AccumulatorCount";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_IntegerFormat];
  v54[7] = v36;
  v53[8] = @"AccumulatorErrorCount";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat];
  v54[8] = v34;
  v53[9] = @"PortType";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_IntegerFormat];
  v54[9] = v32;
  v53[10] = @"PortIndex";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v54[10] = v30;
  v53[11] = @"VConnAccumulatedPower";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v54[11] = v28;
  v53[12] = @"VConnMaxCurrent";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat];
  v54[12] = v26;
  v53[13] = @"VConnCurrent";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v54[13] = v24;
  v53[14] = @"VConnAccumulatorErrorCount";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_IntegerFormat];
  v54[14] = v22;
  v53[15] = @"VConnAccumulatorCount";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v54[15] = v20;
  v53[16] = @"VConnPower";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v54[16] = v18;
  v53[17] = @"CPMSBudget";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v54[17] = v16;
  v53[18] = @"PowerState";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v54[18] = v14;
  v53[19] = @"PDPowermW";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v54[19] = v3;
  v53[20] = @"USBSleepPoolPowermW";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v54[20] = v5;
  v53[21] = @"USBWakePoolPowermW";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v54[21] = v7;
  v53[22] = @"NumLDCMCollisions";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v54[22] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:23];
  v58[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionCurrentAccumulator
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v21[0] = *MEMORY[0x277D3F4E8];
    v19 = *MEMORY[0x277D3F568];
    v20 = &unk_282C1C718;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v16;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"CurrentAccumulator";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v18[0] = v14;
    v17[1] = @"CurrentAccumulatorCount";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v18[1] = v3;
    v17[2] = @"Cell1CurrentAccumulator";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v18[2] = v5;
    v17[3] = @"Cell2CurrentAccumulator";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v18[3] = v7;
    v17[4] = @"CellCurrentAccumulatorCount";
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

+ (id)entryEventBackwardDefinitionChargingHeatMapA
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1C758;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"Temperature";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v16[0] = v3;
  v15[1] = @"Bin";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"TimeInMinutes";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[2] = v7;
  v15[3] = @"HeatMapType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionChargingHeatMapB
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1C758;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"Temperature";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v16[0] = v3;
  v15[1] = @"Bin";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"TimeInMinutes";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[2] = v7;
  v15[3] = @"HeatMapType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionDischargingHeatMap
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1C758;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"Temperature";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v16[0] = v3;
  v15[1] = @"Bin";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"TimeInMinutes";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[2] = v7;
  v15[3] = @"HeatMapType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionKioskMode
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v29 = *MEMORY[0x277D3F568];
  v30 = &unk_282C1C718;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v32[0] = v26;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"KioskModeEntries";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v28[0] = v24;
  v27[1] = @"KioskModeExits";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_IntegerFormat];
  v28[1] = v22;
  v27[2] = @"KioskModeResidency0";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v28[2] = v20;
  v27[3] = @"KioskModeResidency1";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v28[3] = v18;
  v27[4] = @"KioskModeResidency2";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v28[4] = v16;
  v27[5] = @"KioskModeResidency3";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v28[5] = v14;
  v27[6] = @"KioskModeHighSocResidency0";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v28[6] = v3;
  v27[7] = @"KioskModeHighSocResidency1";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v28[7] = v5;
  v27[8] = @"KioskModeHighSocResidency2";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v28[8] = v7;
  v27[9] = @"KioskModeHighSocResidency3";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v28[9] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:10];
  v32[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionChargingLimit
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_282C1C718;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"lastDOD0Update";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v20[0] = v16;
  v19[1] = @"lastFullChargeDate";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v20[1] = v14;
  v19[2] = @"lastFullChargeReq";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_BoolFormat];
  v20[2] = v3;
  v19[3] = @"lastQMaxUpdate";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[3] = v5;
  v19[4] = @"lastQualQMaxDate";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v20[4] = v7;
  v19[5] = @"lastQualQmaxDODValue";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v20[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionchargingIconography
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C718;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"chargeStatus";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryAggregateDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"UILevel";
  v2 = +[PLBatteryAgent entryAggregateDefinitionUILevel];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryAggregateDefinitionUILevel
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_282C1C6D8;
  v23[1] = &unk_282C11EE0;
  v22[2] = *MEMORY[0x277D3F588];
  v23[2] = &unk_282C1C6E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"Level";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[1] = @"energyConsumed";
  v21[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_282C1C7A8;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_282C1C6E8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15[0] = @"Level";
  v15[1] = @"energyConsumed";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLBatteryAgent)init
{
  v73 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] hasBattery])
  {
    if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
    {
      v70.receiver = self;
      v70.super_class = PLBatteryAgent;
      v3 = [(PLAgent *)&v70 init];
      v4 = v3;
      if (!v3)
      {
LABEL_60:
        self = v4;
        v25 = self;
        goto LABEL_31;
      }

      v3->_lastUILevel = 0;
      v3->_presentMaxRa = -1;
      v3->_lifetimeMaxRa = -1;
      v3->_EAEnergyDrained = 0.0;
      v3->_EABatteryLevel = -1.0;
      lastkIOPSAppleBatteryCaseCumulativeCurrentKey = v3->_lastkIOPSAppleBatteryCaseCumulativeCurrentKey;
      v3->_lastkIOPSAppleBatteryCaseCumulativeCurrentKey = 0;

      v4->_isFirstTimeCheckingPingPong = 1;
      v4->_presentMaxRa = -1;
      v4->_lifetimeMaxRa = -1;
      v4->_prevConnectedState = 0;
      v4->_prevChargingState = 0;
      v4->_inPenaltyBox = 0;
      v6 = [(PLBatteryAgent *)v4 getMitigatedUPOCountDefault];
      mitigatedUPOCount = v4->_mitigatedUPOCount;
      v4->_mitigatedUPOCount = v6;

      v4->_lifetimeDataLogged = 0;
      v4->_ppmEventLoggingCount = 0;
      lastBatteryConfigEntry = v4->_lastBatteryConfigEntry;
      v4->_lastBatteryConfigEntry = 0;

      lastDOD0 = v4->_lastDOD0;
      v4->_lastDOD0 = 0;

      lastVacVoltageLimit = v4->_lastVacVoltageLimit;
      v4->_lastVacVoltageLimit = 0;

      v4->_presentOCVCount = -1;
      v4->_presentOCV = -1;
      v4->_presentRaUpdateDisqualified = -1;
      v4->_presentQmaxUpdateDisqualified = -1;
      v4->_presentTimeSinceLastOCV = -1;
      v4->_shouldQueryForAccessory = 0;
      v4->_prevAccumulatorCount = 0.0;
      v4->_prevAccumulatorErrorCount = 0.0;
      v4->_prevAccumulatedPower = 0.0;
      v4->_deltaAccumulatorCount = 0.0;
      v4->_deltaAccumulatorErrorCount = 0.0;
      v4->_deltaAccumulatedPower = 0.0;
      v4->_powerOutTotalCount = 0.0;
      v4->_powerOutTotalPower = 0.0;
      v4->_filteredPower = 0.0;
      lastAdapterPower = v4->_lastAdapterPower;
      v4->_lastAdapterPower = 0;

      lastAdapterManufacturer = v4->_lastAdapterManufacturer;
      v4->_lastAdapterManufacturer = 0;

      [(PLBatteryAgent *)v4 setupCSMLogging];
      if ([MEMORY[0x277D3F258] hasGasGauge])
      {
        v4->_gasGaugeConsecutiveEmptyEntriesCount = 0;
      }

      if (+[PLBatteryAgent hasExternalAccessory])
      {
        v13 = [MEMORY[0x277CBEB18] array];
        trackedAccessories = v4->_trackedAccessories;
        v4->_trackedAccessories = v13;

        v4->_priIOAccessoryPowerMode = -1;
      }

      if ([MEMORY[0x277D3F1B8] hasWirelessCharger])
      {
        v15 = [objc_alloc(MEMORY[0x277D3F1C8]) initWithOperator:v4 forService:@"AppleC26Charger" withBlock:&__block_literal_global_3279];
        chargerIOService = v4->_chargerIOService;
        v4->_chargerIOService = v15;

        if ([MEMORY[0x277D3F1B8] hasInductiveCharging])
        {
          v17 = [objc_alloc(MEMORY[0x277D3F1C8]) initWithOperator:0 forService:@"IOAccessoryDock0PinBuiltin"];
          magsafeIOService = v4->_magsafeIOService;
          v4->_magsafeIOService = v17;

          v19 = PLLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v64 = [(PLIOKitOperatorComposition *)v4->_magsafeIOService serviceName];
            *buf = 138412290;
            *v72 = v64;
            _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "connected to IOKit: %@", buf, 0xCu);
          }

          [(PLBatteryAgent *)v4 setShouldLogEABatteryConfig:1];
        }

        [(PLBatteryAgent *)v4 setLastChargerEntry:0];
      }

      if (+[PLBatteryAgent hasChargingInfoLogging])
      {
        v4->_prevConnectedState = 0;
        v4->_prevChargingState = 0;
        v4->_inPenaltyBox = 0;
      }

      if ([MEMORY[0x277D3F258] deviceRebooted])
      {
        [MEMORY[0x277D3F180] setObject:0 forKey:@"LastPanicData" saveToDisk:1];
      }

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "TLC: Initializing TLC notification defaults", buf, 2u);
      }

      -[PLBatteryAgent setIsTLCNotificationSurfaced:](v4, "setIsTLCNotificationSurfaced:", [MEMORY[0x277D3F180] BOOLForKey:@"kPLDefaultTLCNotificationSurfaced" ifNotSet:0]);
      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v60 = [(PLBatteryAgent *)v4 isTLCNotificationSurfaced];
        *buf = 67109120;
        *v72 = v60;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "TLC: Notification Surfaced Value at Bootup: %d", buf, 8u);
      }

      [(PLBatteryAgent *)v4 setSmartChargingEngaged:0];
      [(PLBatteryAgent *)v4 setCleanEnergyChargingEngaged:0];
      [(PLBatteryAgent *)v4 setLastTLCEntryStartTime:0];
      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v61 = [(PLBatteryAgent *)v4 lastTLCEntryStartTime];
        *buf = 138412290;
        *v72 = v61;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "TLC: Last TLC Entry Start Time at Bootup: %@", buf, 0xCu);
      }

      if ([MEMORY[0x277D3F180] objectExistsForKey:@"BUI_DEMO_MODE"])
      {
        v23 = [MEMORY[0x277D3F180] BOOLForKey:@"BUI_DEMO_MODE"];
      }

      else
      {
        v23 = 0;
      }

      [(PLBatteryAgent *)v4 setDemoMode:v23];
      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v62 = [(PLBatteryAgent *)v4 isTLCNotificationSurfaced];
        v63 = [(PLBatteryAgent *)v4 demoMode];
        *buf = 67109376;
        *v72 = v62;
        *&v72[4] = 1024;
        *&v72[6] = v63;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "TLC: isTLCNotificationSurfaced: %d  BUI Demo Mode: %d", buf, 0xEu);
      }

      v29 = objc_alloc(MEMORY[0x277D3F1C8]);
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __22__PLBatteryAgent_init__block_invoke_3292;
      v68[3] = &unk_27825CE10;
      self = v4;
      v69 = self;
      v30 = [v29 initWithOperator:self forService:@"IOPMPowerSource" withBlock:v68];
      iokitPowerSource = self->_iokitPowerSource;
      self->_iokitPowerSource = v30;

      if (self->_iokitPowerSource)
      {
        if ([MEMORY[0x277D3F258] hasGasGauge] && !-[PLBatteryAgent hasAppleSmartBattery](self, "hasAppleSmartBattery"))
        {
          v33 = objc_alloc(MEMORY[0x277D3F250]);
          v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:20.0];
          v35 = [(PLOperator *)self workQueue];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __22__PLBatteryAgent_init__block_invoke_3354;
          v66[3] = &unk_278259C40;
          v36 = self;
          v67 = v36;
          v37 = [v33 initWithFireDate:v34 withInterval:1 withTolerance:0 repeats:v35 withUserInfo:v66 withQueue:20.0 withBlock:0.0];
          gasGaugeTimer = v36->_gasGaugeTimer;
          v36->_gasGaugeTimer = v37;

          [(PLBatteryAgent *)v36 setAllowGasGaugeRead:0];
          [(PLBatteryAgent *)v36 gasGaugeOpenAndStartLogging];
        }

        else
        {
          v32 = self->_gasGaugeTimer;
          self->_gasGaugeTimer = 0;

          [(PLBatteryAgent *)self setAllowGasGaugeRead:0];
        }

        if ([(PLOperator *)self isDebugEnabled])
        {
          v39 = [MEMORY[0x277CCAB98] defaultCenter];
          [v39 addObserver:self selector:sel_fakeLogEntry_ name:@"PLBatteryAgent.fakeLogEntry" object:0];
        }

        v40 = [MEMORY[0x277D3F1B8] hasInductiveCharging];
        v41 = [MEMORY[0x277CCAB98] defaultCenter];
        v42 = v41;
        if (v40)
        {
          [v41 addObserver:self selector:sel_accessoryConnectionEventNotification_ name:@"PLCAAccessoryAttachedNotification" object:0];

          v43 = [MEMORY[0x277CCAB98] defaultCenter];
          [v43 addObserver:self selector:sel_accessoryDisconnectEventNotification_ name:@"PLCAAccessoryDetachedNotification" object:0];
        }

        else
        {
          [v41 addObserver:self selector:sel_accessoryConnected_ name:*MEMORY[0x277CC5E88] object:0];

          v44 = [MEMORY[0x277CCAB98] defaultCenter];
          [v44 addObserver:self selector:sel_accessoryDisconnected_ name:*MEMORY[0x277CC5E90] object:0];

          v43 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
          [v43 registerForLocalNotifications];
        }

        if (+[PLBatteryAgent hasExternalAccessory])
        {
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v45 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __22__PLBatteryAgent_init__block_invoke_2_3376;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v45;
            if (qword_2811F3B10 != -1)
            {
              dispatch_once(&qword_2811F3B10, block);
            }

            if (byte_2811F3A7D == 1)
            {
              v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Notification registered"];
              v47 = MEMORY[0x277D3F178];
              v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
              v49 = [v48 lastPathComponent];
              v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent init]"];
              [v47 logMessage:v46 fromFile:v49 fromFunction:v50 fromLineNumber:3603];

              v51 = PLLogCommon();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *v72 = v46;
                _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          v52 = PLLogCommon();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "[BATTERY] init EA Battery", buf, 2u);
          }

          [(PLBatteryAgent *)self refreshEABatteryStatusTriggeredByConnectionEvent:0];
          v53 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"EABattery"];
          entryKeyEABattery = self->_entryKeyEABattery;
          self->_entryKeyEABattery = v53;

          v55 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"EAPencilStats"];
          entryKeyEAPencilStats = self->_entryKeyEAPencilStats;
          self->_entryKeyEAPencilStats = v55;
        }

        if ([(PLOperator *)self isDebugEnabled])
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(DarwinNotifyCenter, self, pushConfigToAggd, @"com.apple.powerlogd.PLBatteryAgent.pushConfigToAggd", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        }

        v58 = objc_alloc_init(ChargingStateProvider);
        chargingStateProvider = self->_chargingStateProvider;
        self->_chargingStateProvider = v58;

        [(ChargingStateProvider *)self->_chargingStateProvider setDelegate:self];
        goto LABEL_60;
      }
    }
  }

  else
  {
    v24 = PLLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEFAULT, "no battery detected", buf, 2u);
    }
  }

  v25 = 0;
LABEL_31:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void __22__PLBatteryAgent_init__block_invoke_3292(uint64_t a1, uint64_t a2, int a3)
{
  v206 = *MEMORY[0x277D85DE8];
  if (a3 == -536723200)
  {
    v5 = *(a1 + 32);
    v6 = +[PLEventBackwardBatteryEntry entryKey];
    [v5 timeIntervalSinceLastLogForEntryKey:v6];
    v8 = v7;
    v200[0] = MEMORY[0x277D85DD0];
    v200[1] = 3221225472;
    v200[2] = __22__PLBatteryAgent_init__block_invoke_2;
    v200[3] = &unk_2782591D0;
    v201 = *(a1 + 32);
    v9 = v200;
    if (qword_2811F3AD0 != -1)
    {
      dispatch_once(&qword_2811F3AD0, v9);
    }

    v10 = *&qword_2811F3AD8;
    v11 = [MEMORY[0x277D3F180] debugEnabled];
    if (v8 > v10)
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = objc_opt_class();
        v199[0] = MEMORY[0x277D85DD0];
        v199[1] = 3221225472;
        v199[2] = __22__PLBatteryAgent_init__block_invoke_3;
        v199[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v199[4] = v13;
        v14 = v199;
        if (qword_2811F3AE0 != -1)
        {
          dispatch_once(&qword_2811F3AE0, v14);
        }

        if (byte_2811F3A7A == 1)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = *(a1 + 32);
          v17 = +[PLEventBackwardBatteryEntry entryKey];
          [v16 timeIntervalSinceLastLogForEntryKey:v17];
          v19 = [v15 stringWithFormat:@"kIOPMMessageBatteryStatusHasChanged ok for ratelimit %f", v18];

          v20 = MEMORY[0x277D3F178];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v22 = [v21 lastPathComponent];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent init]_block_invoke"];
          [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:3291];

          v24 = PLLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v203 = v19;
            _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v25 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2];
      v26 = [*(a1 + 32) logEventBackwardBatteryWithRawData:v25];
      if ([*(a1 + 32) hasAppleSmartBattery])
      {
        v27 = @"ChargerStatus";
      }

      else
      {
        v27 = @"ChargerRegisterStatus";
      }

      [v26 setObject:0 forKeyedSubscript:v27];
      [*(a1 + 32) sampleBatteryEntryWithRawData:v25 andProperties:v26];
      if ([*(a1 + 32) lifetimeDataLogged] & 1) != 0 || (objc_msgSend(*(a1 + 32), "shouldWaitForLifetimeDataWithRawData:", v25))
      {
        if ([*(a1 + 32) lifetimeDataLogged])
        {
LABEL_36:
          [*(a1 + 32) logAdapterDetails:v25];
          [*(a1 + 32) logAdapterInfo:v25];
          [*(a1 + 32) logPowerOutDetails:v25];
          v48 = [MEMORY[0x277CBEAA8] monotonicDate];
          v49 = [*(a1 + 32) previousPortControllerRead];
          if (!v49 || (v50 = v49, [*(a1 + 32) previousPortControllerRead], v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "timeIntervalSinceDate:", v51), v53 = v52, v51, v50, v53 >= 600.0))
          {
            [*(a1 + 32) setPreviousPortControllerRead:v48];
            v54 = PLLogCommon();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v203 = v48;
              _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "PortControlInfo is sampled at %@", buf, 0xCu);
            }

            [*(a1 + 32) logPortControllerInfo:v25];
            [*(a1 + 32) logOrionInfo:v25];
          }

          [*(a1 + 32) logFedDetails:v25];
          [*(a1 + 32) logEventPointBatteryPanicShutdown:v25];
          v55 = [v26 objectForKeyedSubscript:@"ExternalConnected"];
          if ([v55 BOOLValue])
          {
            v56 = [v26 objectForKeyedSubscript:@"CurrentCapacity"];
            [v56 doubleValue];
            v58 = v57 * 100.0;
            v59 = [v26 objectForKeyedSubscript:@"MaxCapacity"];
            [v59 doubleValue];
            v61 = v58 / v60 > 95.0;
          }

          else
          {
            v61 = 0;
          }

          if (([*(a1 + 32) isFirstTimeCheckingPingPong] & 1) != 0 || v61 != objc_msgSend(*(a1 + 32), "isPingPongCharging"))
          {
            v62 = MEMORY[0x277CBEBF8];
            if (v61)
            {
              v62 = &unk_282C15648;
            }

            v63 = v62;
            v64 = [MEMORY[0x277D3F0C0] sharedInstance];
            v65 = [v26 entryDate];
            [v64 createQualificationEventForwardWithQualificationID:7 withChildNodeNames:v63 withStartDate:v65];

            [*(a1 + 32) setIsPingPongCharging:v61];
            [*(a1 + 32) setIsFirstTimeCheckingPingPong:0];
          }

          v66 = 0x278257000uLL;
          v184 = a2;
          v183 = v48;
          if ([MEMORY[0x277D3F1B8] hasWirelessCharger])
          {
            v67 = [*(a1 + 32) chargerIOService];
            v68 = [v67 properties];

            if (v68)
            {
              v69 = [v68 objectForKeyedSubscript:@"ConnectState"];

              if (v69)
              {
                v70 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ExternalCharger"];
                v71 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v70];
                v72 = [v68 objectForKeyedSubscript:@"DeviceInfoInterfaceSerialNumber"];
                if (!v72)
                {
                  v72 = [*(a1 + 32) magsafeIOService];

                  if (v72)
                  {
                    v73 = [*(a1 + 32) magsafeIOService];
                    v74 = [v73 properties];

                    v72 = [v74 objectForKeyedSubscript:@"IOAccessoryAccessorySerialNumber"];
                  }
                }

                v75 = [v68 objectForKeyedSubscript:@"ConnectState"];
                v76 = [PLBatteryAgent connectStateStringToEnum:v75];
                [v71 setObject:v76 forKeyedSubscript:@"ConnectState"];

                v77 = [v68 objectForKeyedSubscript:@"ResetCount"];
                [v71 setObject:v77 forKeyedSubscript:@"ResetCount"];

                v78 = [*(a1 + 32) parseBatterySerialNumber:v72];
                v79 = [v78 objectForKeyedSubscript:@"eeee_code"];
                [v71 setObject:v79 forKeyedSubscript:@"EEEECode"];

                v80 = [v68 objectForKeyedSubscript:@"Cloaked"];
                [v71 setObject:v80 forKeyedSubscript:@"Cloaked"];

                v81 = [v68 objectForKeyedSubscript:@"FWStatus"];
                [v71 setObject:v81 forKeyedSubscript:@"FWStatus"];

                v82 = [v68 objectForKeyedSubscript:@"LinkEfficiency"];
                [v71 setObject:v82 forKeyedSubscript:@"LinkEfficiency"];

                v83 = [v68 objectForKeyedSubscript:@"CloakReason"];
                [v71 setObject:v83 forKeyedSubscript:@"CloakReason"];

                v84 = [v68 objectForKeyedSubscript:@"DeviceInfoChipVariant"];
                [v71 setObject:v84 forKeyedSubscript:@"DeviceInfoChipVariant"];

                v85 = [v68 objectForKeyedSubscript:@"DeviceInfoRegionCode"];
                [v71 setObject:v85 forKeyedSubscript:@"DeviceInfoRegionCode"];

                v86 = [v68 objectForKeyedSubscript:@"PuckClassification"];
                [v71 setObject:v86 forKeyedSubscript:@"PuckClassification"];

                v87 = [v68 objectForKeyedSubscript:@"HFPolicy"];
                [v71 setObject:v87 forKeyedSubscript:@"HFPolicy"];

                v88 = [*(a1 + 32) lastChargerEntry];
                if (!v88 || (v89 = v88, v90 = [*(a1 + 32) modifiedExternalChargerEntry:v71], v89, v90))
                {
                  [*(a1 + 32) logEntry:v71];
                }

                [*(a1 + 32) setLastChargerEntry:v71];

                v66 = 0x278257000uLL;
              }
            }
          }

          v91 = *MEMORY[0x277D3F5C8];
          v92 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
          [*(a1 + 32) EABatteryLevel];
          v94 = v93;
          v95 = [v26 objectForKeyedSubscript:@"ExternalConnected"];
          v96 = [v95 BOOLValue];
          if (v94 >= 1.0)
          {
            v97 = 1;
          }

          else
          {
            v97 = v96;
          }

          v98 = [*(a1 + 32) deviceIsPluggedIn];
          if (!v98 || (v99 = v98, [*(a1 + 32) deviceIsPluggedIn], v100 = objc_claimAutoreleasedReturnValue(), v101 = objc_msgSend(v100, "BOOLValue"), v100, v99, v97 != v101))
          {
            v102 = *(a1 + 32);
            v103 = [v26 entryDate];
            [v102 updateIntervalForType:1 withState:v97 andTime:v103];
          }

          v104 = [v26 objectForKeyedSubscript:@"TimeChargingThermallyLimited"];
          v105 = [*(a1 + 32) TLCOverrideValue];

          if (v105)
          {
            v106 = PLLogCommon();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
            {
              v182 = [*(a1 + 32) TLCOverrideValue];
              *buf = 138412546;
              v203 = v104;
              v204 = 2112;
              v205 = v182;
              _os_log_debug_impl(&dword_21A4C6000, v106, OS_LOG_TYPE_DEBUG, "TLC: override %@ -> %@", buf, 0x16u);
            }

            v107 = [*(a1 + 32) TLCOverrideValue];

            v104 = v107;
          }

          v108 = PLLogCommon();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            v181 = [*(a1 + 32) lastTLCCounter];
            *buf = 138412546;
            v203 = v181;
            v204 = 2112;
            v205 = v104;
            _os_log_debug_impl(&dword_21A4C6000, v108, OS_LOG_TYPE_DEBUG, "TLC: was:%@ now:%@", buf, 0x16u);
          }

          v109 = [v104 intValue];
          v110 = [*(a1 + 32) lastTLCCounter];
          v111 = v109 > [v110 intValue];

          [*(a1 + 32) setTlcIncreased:v111];
          if ([MEMORY[0x277D3F058] supportsSlowCharging])
          {
            v112 = [v26 objectForKeyedSubscript:@"AdapterPowerTier"];

            if (v112)
            {
              v186 = [v26 objectForKeyedSubscript:@"AdapterPowerTier"];
            }

            else
            {
              v186 = &unk_282C11F58;
            }
          }

          else
          {
            v186 = 0;
          }

          [*(a1 + 32) handleCameraStreaming:v97 withProperties:v26];
          [*(a1 + 32) setLastTLCCounter:v104];
          if (![MEMORY[0x277D3F058] supportsSlowCharging])
          {
LABEL_86:
            v119 = [*(a1 + 32) deviceIsPluggedIn];
            v187 = v104;
            v185 = v92;
            if (v119)
            {
              v120 = v119;
              v121 = [*(a1 + 32) deviceIsPluggedIn];
              if (v97 == [v121 BOOLValue])
              {
                [*(a1 + 32) timeIntervalSinceLastLogForEntryKey:v92];
                v123 = v122;
                v192[0] = MEMORY[0x277D85DD0];
                v192[1] = 3221225472;
                v192[2] = __22__PLBatteryAgent_init__block_invoke_3330;
                v192[3] = &unk_2782591D0;
                v193 = *(a1 + 32);
                v124 = v192;
                if (qword_2811F3AF0 != -1)
                {
                  dispatch_once(&qword_2811F3AF0, v124);
                }

                v125 = *&qword_2811F3AF8;
                v126 = v187;
                if (v123 <= v125)
                {
                  goto LABEL_105;
                }
              }

              else
              {
              }
            }

            v127 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v92];
            v128 = [v26 objectForKeyedSubscript:@"Level"];
            v129 = [v128 intValue];

            v130 = [*(a1 + 32) deviceIsPluggedIn];

            if (v130)
            {
              if ((v97 & 1) == 0)
              {
                v131 = [*(a1 + 32) deviceIsPluggedIn];
                v132 = [v131 BOOLValue];

                if (v132)
                {
                  v133 = [v127 entryDate];
                  [v133 timeIntervalSince1970];
                  v135 = v134;

                  [*(a1 + 32) updateLastChargeLevel:v129 withTimestamp:v135];
                }
              }
            }

            else
            {
              v136 = *(a1 + 32);
              v137 = [objc_opt_class() entryKeyForType:v91 andName:@"BatteryUI"];
              v138 = [*(a1 + 32) storage];
              v139 = [v138 lastEntryForKey:v137];

              if (v139)
              {
                v140 = [v139 objectForKeyedSubscript:@"IsCharging"];
                v141 = [v140 BOOLValue];

                if (!(v97 & 1 | ((v141 & 1) == 0)))
                {
                  v142 = [MEMORY[0x277CBEAA8] monotonicDate];
                  [v142 timeIntervalSince1970];
                  v144 = v143;

                  [*(a1 + 32) updateLastChargeLevel:v129 withTimestamp:v144];
                }
              }

              v66 = 0x278257000uLL;
            }

            v145 = [MEMORY[0x277CCABB0] numberWithInt:v129];
            [v127 setObject:v145 forKeyedSubscript:@"Level"];

            v146 = [MEMORY[0x277CCABB0] numberWithBool:v97];
            [v127 setObject:v146 forKeyedSubscript:@"IsCharging"];

            v147 = PLLogCommon();
            if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21A4C6000, v147, OS_LOG_TYPE_DEFAULT, "Updating level and plugged in status", buf, 2u);
            }

            [*(a1 + 32) logEntry:v127];
            v148 = [*(a1 + 32) lastUILevel];
            v149 = (v148 - v129);
            if (v148 - v129 >= 0)
            {
              v150 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
              v151 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v150];
              v152 = [MEMORY[0x277CCABB0] numberWithInt:v149];
              [v151 setObject:v152 forKeyedSubscript:@"Level"];

              [*(a1 + 32) logEntry:v151];
              v66 = 0x278257000;
            }

            [*(a1 + 32) setLastUILevel:v129];

            v92 = v185;
            v126 = v187;
LABEL_105:
            v153 = [v25 objectForKeyedSubscript:@"CurrentCapacity"];
            [v153 doubleValue];
            v155 = v154;

            v156 = [v25 objectForKeyedSubscript:@"MaxCapacity"];
            [v156 doubleValue];
            v158 = v157;

            v159 = 0.0;
            if (v158 > 0.0)
            {
              v159 = v155 * 100.0 / v158;
            }

            [*(a1 + 32) setBatteryLevelPercent:v159];
            v160 = [MEMORY[0x277CCABB0] numberWithBool:v97];
            [*(a1 + 32) setDeviceIsPluggedIn:v160];

            v161 = *(a1 + 32);
            v162 = [v25 objectForKeyedSubscript:@"Voltage"];
            [v162 doubleValue];
            [v161 setRawBatteryVoltageVolt:v163 / 1000.0];

            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v164 = *(a1 + 32);
              v165 = objc_opt_class();
              v191[0] = MEMORY[0x277D85DD0];
              v191[1] = 3221225472;
              v191[2] = __22__PLBatteryAgent_init__block_invoke_3333;
              v191[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v191[4] = v165;
              v166 = v191;
              if (qword_2811F3B00 != -1)
              {
                dispatch_once(&qword_2811F3B00, v166);
              }

              if (byte_2811F3A7B == 1)
              {
                v167 = MEMORY[0x277CCACA8];
                [*(a1 + 32) rawBatteryVoltageVolt];
                v169 = [v167 stringWithFormat:@"rawBatteryVoltageVolt: %f", v168];
                v170 = MEMORY[0x277D3F178];
                v171 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
                v172 = [v171 lastPathComponent];
                v173 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent init]_block_invoke_2"];
                [v170 logMessage:v169 fromFile:v172 fromFunction:v173 fromLineNumber:3537];

                v174 = PLLogCommon();
                if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v203 = v169;
                  _os_log_debug_impl(&dword_21A4C6000, v174, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v66 = 0x278257000uLL;
                v92 = v185;
                v126 = v187;
              }
            }

            if ([*(a1 + 32) hasAppleSmartBattery])
            {
              [*(a1 + 32) logCurrentAccumulatorWithRawData:v25];
            }

            if ([*(v66 + 3176) hasChargingInfoLogging])
            {
              [*(a1 + 32) checkChargingInfoChange:v25];
              v175 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:v184 forKey:@"ChargingParameters"];
              v176 = [v175 mutableCopy];

              v177 = [v25 objectForKeyedSubscript:@"InductiveData"];
              v178 = [v177 objectForKeyedSubscript:@"FirmwareMode"];
              [v176 setObject:v178 forKeyedSubscript:@"InductiveFWMode"];

              v126 = v187;
              [*(a1 + 32) logEventPointChargingInfoWithChargingData:v176];
            }

            if ([MEMORY[0x277D3F1B8] hasInductiveCharging] && objc_msgSend(*(a1 + 32), "shouldQueryForAccessory"))
            {
              v179 = [*(a1 + 32) workQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __22__PLBatteryAgent_init__block_invoke_3341;
              block[3] = &unk_2782591D0;
              v190 = *(a1 + 32);
              dispatch_async(v179, block);
            }

LABEL_122:
            goto LABEL_123;
          }

          v113 = [v186 intValue];
          if (v113 == 1)
          {
            v114 = *(a1 + 32);
            v115 = [v26 entryDate];
            v116 = v114;
            v117 = 1;
          }

          else
          {
            if ((v113 & 0xFFFFFFFD) != 0)
            {
              v115 = PLLogCommon();
              if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v203 = v186;
                _os_log_error_impl(&dword_21A4C6000, v115, OS_LOG_TYPE_ERROR, "Invalid value for PLkIOPMPSAdapterDetailsPowerTierKey, currentSlowChargingState=%@", buf, 0xCu);
              }

              goto LABEL_85;
            }

            v118 = *(a1 + 32);
            v115 = [v26 entryDate];
            v116 = v118;
            v117 = 0;
          }

          [v116 updateIntervalForType:9 withState:v117 andTime:v115];
LABEL_85:

          goto LABEL_86;
        }

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "Lifetime data deferred", buf, 2u);
        }
      }

      else
      {
        v28 = [MEMORY[0x277D3F180] objectForKey:@"overrideBatteryData"];
        if (v28)
        {
          v39 = [*(a1 + 32) overrideBatteryData:v25 withPath:v28];

          v25 = v39;
        }

        v196[0] = MEMORY[0x277D85DD0];
        v196[1] = 3221225472;
        v196[2] = __22__PLBatteryAgent_init__block_invoke_3304;
        v196[3] = &unk_278259658;
        v197 = *(a1 + 32);
        v25 = v25;
        v198 = v25;
        v40 = v196;
        if (qword_2811F3AE8 != -1)
        {
          dispatch_once(&qword_2811F3AE8, v40);
        }

        v41 = PLLogCommon();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "Lifetime data logged", buf, 2u);
        }

        [*(a1 + 32) setLifetimeDataLogged:1];
        if ([MEMORY[0x277D3F258] deviceRebooted])
        {
          [*(a1 + 32) logEventPointBatteryTrapInfo:v25];
        }

        [*(a1 + 32) defaultDoubleForKey:@"AggdTimerBatteryConfig"];
        v43 = v42;
        v44 = objc_alloc(MEMORY[0x277D3F250]);
        v45 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:v43];
        v46 = [*(a1 + 32) workQueue];
        v194[0] = MEMORY[0x277D85DD0];
        v194[1] = 3221225472;
        v194[2] = __22__PLBatteryAgent_init__block_invoke_3306;
        v194[3] = &unk_278259C40;
        v195 = *(a1 + 32);
        v47 = [v44 initWithFireDate:v45 withInterval:1 withTolerance:0 repeats:v46 withUserInfo:v194 withQueue:v43 withBlock:0.0];
        [*(a1 + 32) setPeriodicAggdTimer:v47];
      }

      goto LABEL_36;
    }

    if (v11)
    {
      v29 = *(a1 + 32);
      v30 = objc_opt_class();
      v188[0] = MEMORY[0x277D85DD0];
      v188[1] = 3221225472;
      v188[2] = __22__PLBatteryAgent_init__block_invoke_3350;
      v188[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v188[4] = v30;
      if (qword_2811F3B08 != -1)
      {
        dispatch_once(&qword_2811F3B08, v188);
      }

      if (byte_2811F3A7C == 1)
      {
        v31 = MEMORY[0x277CCACA8];
        v32 = *(a1 + 32);
        v33 = +[PLEventBackwardBatteryEntry entryKey];
        [v32 timeIntervalSinceLastLogForEntryKey:v33];
        v25 = [v31 stringWithFormat:@"kIOPMMessageBatteryStatusHasChanged ignored due to ratelimit %f", v34];

        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v37 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent init]_block_invoke_2"];
        [v35 logMessage:v25 fromFile:v37 fromFunction:v38 fromLineNumber:3569];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v203 = v25;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        goto LABEL_122;
      }
    }
  }

LABEL_123:
  v180 = *MEMORY[0x277D85DE8];
}

uint64_t __22__PLBatteryAgent_init__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"RateLimiterBattery"];
  qword_2811F3AD8 = v2;
  return result;
}

uint64_t __22__PLBatteryAgent_init__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A7A = result;
  return result;
}

uint64_t __22__PLBatteryAgent_init__block_invoke_3330(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"RateLimiterBatteryUI"];
  qword_2811F3AF8 = v2;
  return result;
}

uint64_t __22__PLBatteryAgent_init__block_invoke_3333(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A7B = result;
  return result;
}

void __22__PLBatteryAgent_init__block_invoke_3341(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "[EABattery]: checking for accessory", buf, 2u);
  }

  [*(a1 + 32) refreshEABatteryStatusTriggeredByConnectionEvent:1];
  v3 = [*(a1 + 32) trackedAccessories];
  if ([v3 containsObject:@"1452-5017"])
  {
  }

  else
  {
    v4 = [*(a1 + 32) trackedAccessories];
    v5 = [v4 containsObject:@"1452-5026"];

    if (!v5)
    {
      return;
    }
  }

  [*(a1 + 32) setShouldQueryForAccessory:0];
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "[EABattery]: accessory found", v7, 2u);
  }
}

uint64_t __22__PLBatteryAgent_init__block_invoke_3350(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A7C = result;
  return result;
}

uint64_t __22__PLBatteryAgent_init__block_invoke_2_3376(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A7D = result;
  return result;
}

- (void)dealloc
{
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    [(PLBatteryAgent *)self gasGaugeStopLoggingAndClose];
    if (([MEMORY[0x277D3F1B8] hasInductiveCharging] & 1) == 0)
    {
      v3 = [MEMORY[0x277CCAB98] defaultCenter];
      [v3 removeObserver:self name:*MEMORY[0x277CC5E88] object:0];

      v4 = [MEMORY[0x277CCAB98] defaultCenter];
      [v4 removeObserver:self name:*MEMORY[0x277CC5E90] object:0];

      v5 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
      [v5 unregisterForLocalNotifications];
    }
  }

  v6.receiver = self;
  v6.super_class = PLBatteryAgent;
  [(PLAgent *)&v6 dealloc];
}

void __38__PLBatteryAgent_hasAppleSmartBattery__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) iokitPowerSource];
  v2 = IOObjectCopyClass([v1 service]);

  byte_2811F3A7E = [(__CFString *)v2 isEqualToString:@"AppleSmartBattery"];
}

- (BOOL)modifiedExternalChargerEntry:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v3 keys];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = *v23;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v23 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v22 + 1) + 8 * i);
      v9 = [v3 objectForKeyedSubscript:v8];
      if (v9)
      {
      }

      else
      {
        v10 = [(PLEntry *)self->_lastChargerEntry objectForKeyedSubscript:v8];

        if (!v10)
        {
          continue;
        }
      }

      v11 = [v3 objectForKeyedSubscript:v8];
      if (objc_opt_respondsToSelector())
      {
        v12 = [(PLEntry *)self->_lastChargerEntry objectForKeyedSubscript:v8];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = [v3 objectForKeyedSubscript:v8];
          v15 = [(PLEntry *)self->_lastChargerEntry objectForKeyedSubscript:v8];
          v16 = [v14 compare:v15];

          if (v16)
          {
            v17 = 1;
            goto LABEL_17;
          }
        }
      }

      else
      {
      }
    }

    v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v5);
LABEL_16:
  v17 = 0;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __40__PLBatteryAgent_hasChargingInfoLogging__block_invoke()
{
  byte_2811F3A7F = 0;
  if ([MEMORY[0x277D3F208] isWatch] && (objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClassIsOneOf:", 200007, 200008, 200009, 200010, 0) & 1) == 0)
  {
    byte_2811F3A7F = 1;
  }

  result = [MEMORY[0x277D3F1B8] hasWirelessCharger];
  if (result)
  {
    result = [MEMORY[0x277D3F208] isiOS];
    v1 = result | byte_2811F3A7F;
  }

  else
  {
    v1 = 0;
  }

  byte_2811F3A7F = v1 & 1;
  return result;
}

- (void)showOrHideTLCNotification:(BOOL)a3 meetsTLCNotificationConditions:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(PLBatteryAgent *)self isTLCNotificationSurfaced];
  v8 = v7;
  if (!v4)
  {
    v10 = PLLogCommon();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (!v8)
    {
      if (v11)
      {
        LOWORD(v25) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "TLC conditions not met OR TLC notification already surfaced", &v25, 2u);
      }

      goto LABEL_34;
    }

    if (v11)
    {
      v25 = 67109120;
      LODWORD(v26) = 1;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "TLC: Removal Conditions Satisfied: %d", &v25, 8u);
    }

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v25) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "TLC: aggD --> helperD to hide TLC notification", &v25, 2u);
    }

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"ShowTLCNotification"];
LABEL_13:
    AnalyticsSendEventLazy();
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v25 = 138412290;
      v26 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "Sending Query Payload to Notification Service: %@", &v25, 0xCu);
    }

    v14 = PLQueryRegistered();
    v10 = v14;
    if (v14 && ([v14 objectForKeyedSubscript:@"TLCNotificationState"], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v25 = 138412290;
        v26 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "TLC: Entire response from Notification Service: %@", &v25, 0xCu);
      }

      v17 = [v10 objectForKeyedSubscript:@"TLCNotificationState"];
      v18 = PLLogCommon();
      v19 = v18;
      if (v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v23 = [v17 BOOLValue];
          v25 = 67109120;
          LODWORD(v26) = v23;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "TLC: Reading response from Notification Service: %d", &v25, 8u);
        }

        [(PLBatteryAgent *)self setIsTLCNotificationSurfaced:[v17 BOOLValue]];
        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v17 BOOLValue];
          v25 = 67109120;
          LODWORD(v26) = v24;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "TLC: Writing %d response to defaults", &v25, 8u);
        }

        [MEMORY[0x277D3F180] setObject:v17 forKey:@"kPLDefaultTLCNotificationSurfaced" saveToDisk:1];
        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v21 = [MEMORY[0x277D3F180] BOOLForKey:@"kPLDefaultTLCNotificationSurfaced"];
          v25 = 67109120;
          LODWORD(v26) = v21;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "TLC: Reading Notification Surfaced Default Value: %d", &v25, 8u);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412290;
        v26 = 0;
        _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, "TLC: Invalid Notification Surfaced Boolean: %@", &v25, 0xCu);
      }
    }

    else
    {
      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v25 = 138412290;
        v26 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "TLC: Invalid response from Notification Service: %@", &v25, 0xCu);
      }
    }

LABEL_34:
    goto LABEL_35;
  }

  if (!v7 && ![(PLBatteryAgent *)self cleanEnergyChargingEngaged])
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v25) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "TLC: aggD --> helperD to show TLC notification", &v25, 2u);
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"ShowTLCNotification"];
    goto LABEL_13;
  }

LABEL_35:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setupEALoggingTriggeredByConnectionEvent:(BOOL)a3
{
  v3 = a3;
  v42 = *MEMORY[0x277D85DE8];
  if (+[PLBatteryAgent hasExternalAccessory])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F3B28 != -1)
      {
        dispatch_once(&qword_2811F3B28, block);
      }

      if (byte_2811F3A80 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"In Setup EA Logging"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent setupEALoggingTriggeredByConnectionEvent:]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:3845];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v41 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v3)
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "[BATTERY] log new connection count", buf, 2u);
      }

      [(PLBatteryAgent *)self logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:1];
    }

    v13 = [(PLBatteryAgent *)self EABatteryTimer];

    if (!v13)
    {
      [(PLBatteryAgent *)self logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:0];
      v14 = objc_alloc(MEMORY[0x277D3F250]);
      v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:20.0];
      v16 = [(PLOperator *)self workQueue];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_3446;
      v38[3] = &unk_278259C40;
      v38[4] = self;
      v17 = [v14 initWithFireDate:v15 withInterval:1 withTolerance:0 repeats:v16 withUserInfo:v38 withQueue:20.0 withBlock:0.0];
      [(PLBatteryAgent *)self setEABatteryTimer:v17];

      [(PLOperator *)self defaultDoubleForKey:@"B244SBCInterval"];
      v19 = v18;
      v20 = MEMORY[0x277D3F1E0];
      v21 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:?];
      v22 = [(PLOperator *)self workQueue];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_2;
      v37[3] = &unk_27825B230;
      v37[4] = self;
      v23 = [v20 scheduledTimerWithMonotonicFireDate:v21 withInterval:v22 withQueue:v37 withBlock:v19];
      [(PLBatteryAgent *)self setSignificantBatteryChangeTimer:v23];
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v24 = objc_opt_class();
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_3;
      v35 = &__block_descriptor_40_e5_v8__0lu32l8;
      v36 = v24;
      if (qword_2811F3B30 != -1)
      {
        dispatch_once(&qword_2811F3B30, &v32);
      }

      if (byte_2811F3A81 == 1)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"In Setup EA Logging: Done", v32, v33, v34, v35, v36];
        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v28 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent setupEALoggingTriggeredByConnectionEvent:]"];
        [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:3871];

        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v41 = v25;
          _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A80 = result;
  return result;
}

void __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D3F258];
  v2 = *(a1 + 32);
  v6 = @"entry";
  v3 = [MEMORY[0x277CBEB68] null];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v1 postNotificationName:@"PLBatteryAgent_EventBackward_Battery.filtered.Level_0_1.Level_7_1800.Level_8_300" object:v2 userInfo:v4];

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A81 = result;
  return result;
}

uint64_t __33__PLBatteryAgent_cancelEALogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A82 = result;
  return result;
}

uint64_t __33__PLBatteryAgent_cancelEALogging__block_invoke_3466(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A83 = result;
  return result;
}

- (void)accessoryDisconnected:(id)a3
{
  v4 = a3;
  if (+[PLBatteryAgent hasExternalAccessory])
  {
    v5 = [(PLOperator *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__PLBatteryAgent_accessoryDisconnected___block_invoke;
    v6[3] = &unk_278259658;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

uint64_t __40__PLBatteryAgent_accessoryDisconnected___block_invoke(uint64_t a1)
{
  [*(a1 + 32) detectEAPencilConnectionWithNotification:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 refreshEABatteryStatusTriggeredByConnectionEvent:1];
}

- (void)accessoryConnected:(id)a3
{
  v4 = a3;
  if (+[PLBatteryAgent hasExternalAccessory])
  {
    v5 = [(PLOperator *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__PLBatteryAgent_accessoryConnected___block_invoke;
    v6[3] = &unk_278259658;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

uint64_t __37__PLBatteryAgent_accessoryConnected___block_invoke(uint64_t a1)
{
  [*(a1 + 32) detectEAPencilConnectionWithNotification:*(a1 + 40)];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "[BATTERY] EA connected!", v4, 2u);
  }

  return [*(a1 + 32) refreshEABatteryStatusTriggeredByConnectionEvent:1];
}

- (void)accessoryConnectionEventNotification:(id)a3
{
  if (+[PLBatteryAgent hasExternalAccessory])
  {
    v4 = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLBatteryAgent_accessoryConnectionEventNotification___block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

uint64_t __55__PLBatteryAgent_accessoryConnectionEventNotification___block_invoke(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "[EABattery]: accessory connect", v4, 2u);
  }

  [*(a1 + 32) setShouldQueryForAccessory:1];
  return [*(a1 + 32) setShouldLogEABatteryConfig:1];
}

- (void)accessoryDisconnectEventNotification:(id)a3
{
  if (+[PLBatteryAgent hasExternalAccessory])
  {
    v4 = [(PLOperator *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLBatteryAgent_accessoryDisconnectEventNotification___block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

uint64_t __55__PLBatteryAgent_accessoryDisconnectEventNotification___block_invoke(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "[EABattery]: accessory disconnect", v4, 2u);
  }

  return [*(a1 + 32) setShouldQueryForAccessory:0];
}

uint64_t __32__PLBatteryAgent_getIOPSDevices__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A84 = result;
  return result;
}

uint64_t __32__PLBatteryAgent_getIOPSDevices__block_invoke_3475(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A85 = result;
  return result;
}

uint64_t __32__PLBatteryAgent_getIOPSDevices__block_invoke_3481(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A86 = result;
  return result;
}

- (id)getBaseIdentifierFromDevice:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (+[PLBatteryAgent hasExternalAccessory])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Vendor ID"];
    v5 = [v3 objectForKey:v4];
    v6 = [v5 intValue];

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Product ID"];
    v8 = [v3 objectForKey:v7];
    v9 = [v8 intValue];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__PLBatteryAgent_getBaseIdentifierFromDevice___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (qword_2811F3B60 != -1)
      {
        dispatch_once(&qword_2811F3B60, block);
      }

      if (byte_2811F3A87 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%d: vendorID=%d, productID=%d", "-[PLBatteryAgent getBaseIdentifierFromDevice:]", 3984, v6, v9];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent getBaseIdentifierFromDevice:]"];
        [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:3984];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v17 = 0;
    if (v6 != 0xFFFF && v6 && v9 && v9 != 0xFFFF)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d-%d", v6, v9];
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __46__PLBatteryAgent_getBaseIdentifierFromDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A87 = result;
  return result;
}

- (void)logEABatteryStatistics
{
  v49 = *MEMORY[0x277D85DE8];
  if (!+[PLBatteryAgent hasExternalAccessory])
  {
    goto LABEL_29;
  }

  v3 = [(PLBatteryAgent *)self getIOPSDevices];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (!v4)
  {
    goto LABEL_27;
  }

  v6 = v4;
  v7 = 0;
  v8 = *v41;
  *&v5 = 134218240;
  v39 = v5;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v41 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v40 + 1) + 8 * i);
      v11 = [(PLBatteryAgent *)self getBaseIdentifierFromDevice:v10, v39];
      v12 = [(PLBatteryAgent *)self trackedAccessories];
      v13 = [v12 containsObject:v11];

      if (v13)
      {
        if ([v11 isEqualToString:@"76-546"])
        {
          v14 = objc_alloc(MEMORY[0x277D3F190]);
          v15 = [(PLBatteryAgent *)self entryKeyEAPencilStats];
          v16 = [v14 initWithEntryKey:v15 withRawData:v10];

          [(PLOperator *)self logEntry:v16];
          goto LABEL_22;
        }

        if (([v11 isEqualToString:@"1452-5013"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"1452-5016") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"1452-5017") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"1452-5026"))
        {
          v17 = objc_alloc(MEMORY[0x277D3F190]);
          v18 = [(PLBatteryAgent *)self entryKeyEABattery];
          v16 = [v17 initWithEntryKey:v18 withRawData:v10];

          [(PLOperator *)self logEntry:v16];
          [(PLBatteryAgent *)self logEABatteryConfig:v10];
          v19 = [v16 objectForKeyedSubscript:@"Current Capacity"];
          [v19 doubleValue];
          v21 = v20;

          v22 = [v16 objectForKeyedSubscript:@"Max Capacity"];
          v23 = [v22 intValue];

          v24 = PLLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = v39;
            v45 = v21;
            v46 = 1024;
            v47 = v23;
            _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "EALevel: %f / %d", buf, 0x12u);
          }

          if (v23 < 1)
          {
            v25 = -1.0;
          }

          else
          {
            v25 = v21 / v23 * 100.0;
          }

          [(PLBatteryAgent *)self setEABatteryLevel:v25];
          v26 = [(PLBatteryAgent *)self lastkIOPSAppleBatteryCaseCumulativeCurrentKey];

          if (v26)
          {
            v27 = [(PLBatteryAgent *)self lastkIOPSAppleBatteryCaseCumulativeCurrentKey];
            [v27 doubleValue];
            v29 = v28;
            v30 = [v16 objectForKeyedSubscript:@"Battery Case Cumulative Current"];
            [v30 doubleValue];
            v32 = v29 - v31;
            v33 = [v16 objectForKeyedSubscript:@"Voltage"];
            [v33 doubleValue];
            v35 = v32 * v34 / 3600.0;

            [(PLBatteryAgent *)self EAEnergyDrained];
            [(PLBatteryAgent *)self setEAEnergyDrained:v35 + v36];
          }

          v37 = [v16 objectForKeyedSubscript:@"Battery Case Cumulative Current"];
          [(PLBatteryAgent *)self setLastkIOPSAppleBatteryCaseCumulativeCurrentKey:v37];

          [(PLBatteryAgent *)self logEABatteryConnectedTimeToAnalyticsWithEAConnectionState:0];
LABEL_22:
        }

        v7 = 1;
      }
    }

    v6 = [v3 countByEnumeratingWithState:&v40 objects:v48 count:16];
  }

  while (v6);
  if ((v7 & 1) == 0)
  {
LABEL_27:
    [(PLBatteryAgent *)self refreshEABatteryStatusTriggeredByConnectionEvent:0];
  }

LABEL_29:
  v38 = *MEMORY[0x277D85DE8];
}

- (void)logEABatteryConfigToCA:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 definedKeys];
  v6 = [v5 mutableCopy];

  v18 = objc_opt_new();
  [v6 addObjectsFromArray:&unk_282C15660];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
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
        [(PLBatteryAgent *)self setAggdIntegerValueFromEntry:v4 forKey:v11 withPrefix:@"com.apple.power.battery.eabatteryconfig."];
        v12 = [v4 objectForKeyedSubscript:v11];
        v13 = v11;
        if ([v13 rangeOfString:@"-"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [v13 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

          v13 = v14;
        }

        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
            [v18 setValue:v15 forKey:v13];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = v18;
  AnalyticsSendEventLazy();

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logEABatteryConfig:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PLBatteryAgent *)self shouldLogEABatteryConfig])
  {
    v5 = [v4 objectForKeyedSubscript:@"Debug Information"];

    if (v5)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v6 = objc_opt_class();
        block = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __37__PLBatteryAgent_logEABatteryConfig___block_invoke;
        v21 = &__block_descriptor_40_e5_v8__0lu32l8;
        v22 = v6;
        if (qword_2811F3B68 != -1)
        {
          dispatch_once(&qword_2811F3B68, &block);
        }

        if (byte_2811F3A88 == 1)
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"The payload is %@", v4, block, v19, v20, v21, v22];
          v8 = MEMORY[0x277D3F178];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v10 = [v9 lastPathComponent];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEABatteryConfig:]"];
          [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:4105];

          v12 = PLLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v7;
            _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v13 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"EABatteryConfig"];
      v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:v4];
      [(PLOperator *)self logEntry:v14];
      v15 = [v4 objectForKeyedSubscript:@"Nominal Capacity"];
      [v14 setObject:v15 forKeyedSubscript:@"NominalChargeCapacity"];

      v16 = [v4 objectForKeyedSubscript:@"CycleCount"];
      [v14 setObject:v16 forKeyedSubscript:@"CycleCount"];

      [(PLBatteryAgent *)self logEABatteryConfigToCA:v14];
      [(PLBatteryAgent *)self setShouldLogEABatteryConfig:0];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLBatteryAgent_logEABatteryConfig___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A88 = result;
  return result;
}

- (void)logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBatteryAgent *)self setLastEABatteryConnectedTime:v5];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "[BATTERY] logEABatteryConnectedEventToAnalytics", buf, 2u);
  }

  v7 = [MEMORY[0x277CBEAA8] monotonicDate];
  [MEMORY[0x277D3F180] doubleForKey:@"LastEABatteryConnectCountLogTimestamp" ifNotSet:0.0];
  v9 = v8;
  [v7 timeIntervalSince1970];
  v11 = v10;
  if (v9 == 0.0 || v3)
  {
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v25 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "[BATTERY] No recorded last EA Battery connect time", v25, 2u);
    }

    goto LABEL_14;
  }

  if (v10 - v9 >= 86400.0)
  {
LABEL_14:
    v15 = MEMORY[0x277D3F180];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v15 setObject:v16 forKey:@"LastEABatteryConnectCountLogTimestamp" saveToDisk:1];

    v17 = [(PLBatteryAgent *)self eaBatteryConnectCountTimer];

    if (v17)
    {
      v18 = [(PLBatteryAgent *)self eaBatteryConnectCountTimer];
      [v18 invalidate];

      v19 = [MEMORY[0x277CBEAA8] date];
      v20 = [v19 dateByAddingTimeInterval:86400.0];
      v21 = [(PLBatteryAgent *)self eaBatteryConnectCountTimer];
      [v21 setFireDate:v20];
    }

    else
    {
      v19 = [(PLBatteryAgent *)self createTimerForEABatteryCountLogging];
      [(PLBatteryAgent *)self setEaBatteryConnectCountTimer:v19];
    }

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "[BATTERY] log EA connect count", v23, 2u);
    }

    MEMORY[0x21CEDCD40](@"com.apple.powerlog.EABattery.connected", 1);
    AnalyticsSendEventLazy();
    goto LABEL_20;
  }

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "[BATTERY] Last EA Battery connect time too recent", v24, 2u);
  }

LABEL_20:
}

- (void)logEABatteryConnectedTimeToAnalyticsWithEAConnectionState:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLBatteryAgent *)self lastEABatteryConnectedTime];

  if (v5)
  {
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "[BATTERY] logEABatteryConnectedTimeToAnalyticsWithEAConnectionState", buf, 2u);
    }

    v7 = [MEMORY[0x277CBEAA8] monotonicDate];
    v8 = [(PLBatteryAgent *)self lastEABatteryConnectedTime];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v3)
    {
      [(PLBatteryAgent *)self setLastEABatteryConnectedTime:0];
    }

    else
    {
      v11 = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLBatteryAgent *)self setLastEABatteryConnectedTime:v11];
    }

    v12 = [(PLBatteryAgent *)self deviceIsPluggedIn];
    v13 = [v12 BOOLValue];

    if ((v13 & 1) == 0)
    {
      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "[BATTERY] log EA connection time", buf, 2u);
      }

      MEMORY[0x21CEDCD40](@"com.apple.powerlog.EABattery.connectedTime", v10);
      AnalyticsSendEventLazy();
    }
  }
}

id __76__PLBatteryAgent_logEABatteryConnectedTimeToAnalyticsWithEAConnectionState___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"timeConnected";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)createTimerForEABatteryCountLogging
{
  v3 = objc_alloc(MEMORY[0x277D3F250]);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v4 dateByAddingTimeInterval:86400.0];
  v6 = [(PLOperator *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__PLBatteryAgent_createTimerForEABatteryCountLogging__block_invoke;
  v9[3] = &unk_278259C40;
  v9[4] = self;
  v7 = [v3 initWithFireDate:v5 withInterval:1 withTolerance:0 repeats:v6 withUserInfo:v9 withQueue:86400.0 withBlock:1.0];

  return v7;
}

- (BOOL)isUPOEntry:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D3F180] BOOLForKey:@"UPO_Debug" ifNotSet:0])
  {
    v4 = 1;
  }

  else if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"UISOC"];
    v6 = [v5 intValue];

    v7 = [v3 objectForKeyedSubscript:@"Temperature"];
    v8 = [v7 intValue];

    v4 = v6 > 10 && v8 > 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)detectEAPencilConnectionWithNotification:(id)a3
{
  v4 = [a3 userInfo];
  v14 = [v4 objectForKey:@"EAAccessoryKey"];

  v5 = [v14 name];
  v6 = [v5 isEqualToString:@"Apple Pencil"];

  v7 = v14;
  if (v6)
  {
    v8 = [v14 isConnected];
    v9 = [(PLBatteryAgent *)self trackedAccessories];
    v10 = v9;
    if (v8)
    {
      [v9 addObject:@"76-546"];
    }

    else
    {
      [v9 removeObject:@"76-546"];
    }

    v11 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"EAPencilConnect"];
    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v12 setObject:v13 forKeyedSubscript:@"isPhysicallyAttached"];

    [(PLOperator *)self logEntry:v12];
    v7 = v14;
  }
}

- (void)initOperatorDependancies
{
  v148 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isDeviceClass:101001] & 1) == 0)
  {
    [(PLBatteryAgent *)self logEventPointBatteryShutdown];
  }

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    [(PLBatteryAgent *)self logEventPointUPOStepper];
  }

  if ([MEMORY[0x277D3F258] hasGasGauge])
  {
    v3 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F468]];
    [(PLBatteryAgent *)self setCanSleepSemaphore:v3];

    v4 = [(PLBatteryAgent *)self canSleepSemaphore];
    [v4 signalInterestByObject:self];

    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v143[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke;
    v143[3] = &unk_2782597E8;
    v143[4] = self;
    v5 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v143];
    canSleepEntryNotifications = self->_canSleepEntryNotifications;
    self->_canSleepEntryNotifications = v5;

    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3559;
    v142[3] = &unk_2782597E8;
    v142[4] = self;
    v7 = [MEMORY[0x277D3F1A8] wakeEntryNotificationWithOperator:self withBlock:v142];
    wakeEntryNotifications = self->_wakeEntryNotifications;
    self->_wakeEntryNotifications = v7;

    [(PLBatteryAgent *)self setAllowGasGaugeRead:1];
  }

  v9 = objc_alloc(MEMORY[0x277D3F278]);
  v10 = dispatch_get_global_queue(-32768, 0);
  v11 = [v9 initWithWorkQueue:v10 withRegistration:&unk_282C18C88 withBlock:&__block_literal_global_3578];

  [(PLBatteryAgent *)self setBatteryInfoResponder:v11];
  v12 = objc_alloc(MEMORY[0x277D3F278]);
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3605;
  v141[3] = &unk_278259810;
  v141[4] = self;
  v13 = [v12 initWithWorkQueue:v10 withRegistration:&unk_282C18CB0 withBlock:v141];
  [(PLBatteryAgent *)self setBatteryConfigResponder:v13];

  v14 = [objc_alloc(MEMORY[0x277D3F278]) initWithWorkQueue:v10 withRegistration:&unk_282C18CD8 withBlock:&__block_literal_global_3622];
  [(PLBatteryAgent *)self setBatteryUPOStepperResponder:v14];

  v15 = [objc_alloc(MEMORY[0x277D3F278]) initWithWorkQueue:v10 withRegistration:&unk_282C18D00 withBlock:&__block_literal_global_3631];
  [(PLBatteryAgent *)self setBatteryShutdownDataResponder:v15];

  v16 = [objc_alloc(MEMORY[0x277D3F278]) initWithWorkQueue:v10 withRegistration:&unk_282C18D28 withBlock:&__block_literal_global_3640];
  [(PLBatteryAgent *)self setBatteryTemperatureResponder:v16];

  v17 = [objc_alloc(MEMORY[0x277D3F278]) initWithWorkQueue:v10 withRegistration:&unk_282C18D50 withBlock:&__block_literal_global_3652];
  [(PLBatteryAgent *)self setBatteryDischargeCurrentResponder:v17];

  v18 = objc_alloc(MEMORY[0x277D3F278]);
  v19 = [(PLOperator *)self workQueue];
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3668;
  v140[3] = &unk_278259810;
  v140[4] = self;
  v20 = [v18 initWithWorkQueue:v19 withRegistration:&unk_282C18D78 withBlock:v140];
  [(PLBatteryAgent *)self setBatteryChargingStateResponder:v20];

  v21 = 0x277D3F000uLL;
  v22 = objc_alloc(MEMORY[0x277D3F1C8]);
  v139[0] = MEMORY[0x277D85DD0];
  v139[1] = 3221225472;
  v139[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3685;
  v139[3] = &unk_27825CE10;
  v139[4] = self;
  v23 = [v22 initWithOperator:self forServiceClass:@"IOAccessoryManager" withBlock:v139];
  ioAccessoryManager = self->_ioAccessoryManager;
  self->_ioAccessoryManager = v23;

  if (!self->_ioAccessoryManager && [MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3696;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v25;
    if (qword_2811F3B90 != -1)
    {
      dispatch_once(&qword_2811F3B90, block);
    }

    if (byte_2811F3A8D == 1)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not register IOAccessoryManager callback"];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v29 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]"];
      [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:4549];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *v147 = 138412290;
        *&v147[4] = v26;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", v147, 0xCu);
      }

      v21 = 0x277D3F000;
    }
  }

  [(PLBatteryAgent *)self logEventBackwardTrustedBatteryHealth];
  [(PLBatteryAgent *)self logEventBackwardHeatMap];
  [(PLBatteryAgent *)self logEventBackwardKioskMode];
  if ([MEMORY[0x277D3F180] taskMode])
  {
    [(PLBatteryAgent *)self logEventNoneBatteryConfigCycleCountData];
  }

  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3700;
  v137[3] = &unk_2782597E8;
  v137[4] = self;
  v32 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v137];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v32;

  v34 = objc_alloc(MEMORY[0x277D3F270]);
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3708;
  v136[3] = &unk_27825A1D8;
  v136[4] = self;
  v35 = [v34 initWithOperator:self withRegistration:&unk_282C18DA0 withBlock:v136];
  UPOStepperListener = self->_UPOStepperListener;
  self->_UPOStepperListener = v35;

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    state64[0] = 0;
    *out_token = 0;
    v37 = [(PLOperator *)self workQueue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3715;
    handler[3] = &unk_278260C40;
    handler[4] = self;
    v38 = notify_register_dispatch("com.apple.thermalmonitor.ageAwareMitigationState", &out_token[1], v37, handler);

    if (v38 && [MEMORY[0x277D3F180] debugEnabled])
    {
      v39 = objc_opt_class();
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3719;
      v133[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v133[4] = v39;
      if (qword_2811F3BA0 != -1)
      {
        dispatch_once(&qword_2811F3BA0, v133);
      }

      if (byte_2811F3A8F == 1)
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"notify_register_dispatch failed %d %s", v38, "com.apple.thermalmonitor.ageAwareMitigationState"];
        v41 = MEMORY[0x277D3F178];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v43 = [v42 lastPathComponent];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]"];
        [v41 logMessage:v40 fromFile:v43 fromFunction:v44 fromLineNumber:4594];

        v45 = PLLogCommon();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *v147 = 138412290;
          *&v147[4] = v40;
          _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", v147, 0xCu);
        }
      }
    }

    v46 = [(PLOperator *)self workQueue];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3724;
    v132[3] = &unk_278260C40;
    v132[4] = self;
    v47 = notify_register_dispatch("com.apple.thermalmonitor.ageAwareMitigationsDisabled", out_token, v46, v132);

    if (v47 && [MEMORY[0x277D3F180] debugEnabled])
    {
      v48 = objc_opt_class();
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3727;
      v131[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v131[4] = v48;
      if (qword_2811F3BA8 != -1)
      {
        dispatch_once(&qword_2811F3BA8, v131);
      }

      if (byte_2811F3A90 == 1)
      {
        v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"notify_register_dispatch failed %d %s", v47, "com.apple.thermalmonitor.ageAwareMitigationsDisabled"];
        v50 = MEMORY[0x277D3F178];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v52 = [v51 lastPathComponent];
        v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]"];
        [v50 logMessage:v49 fromFile:v52 fromFunction:v53 fromLineNumber:4601];

        v54 = PLLogCommon();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *v147 = 138412290;
          *&v147[4] = v49;
          _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "%@", v147, 0xCu);
        }
      }
    }

    state = notify_get_state(out_token[1], state64);
    if (state)
    {
      v56 = state;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v57 = objc_opt_class();
        v130[0] = MEMORY[0x277D85DD0];
        v130[1] = 3221225472;
        v130[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3730;
        v130[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v130[4] = v57;
        if (qword_2811F3BB0 != -1)
        {
          dispatch_once(&qword_2811F3BB0, v130);
        }

        if (byte_2811F3A91 == 1)
        {
          v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"notify_get_state failed %d %s", v56, "com.apple.thermalmonitor.ageAwareMitigationState"];
          v59 = MEMORY[0x277D3F178];
          v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v61 = [v60 lastPathComponent];
          v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]"];
          [v59 logMessage:v58 fromFile:v61 fromFunction:v62 fromLineNumber:4608];

          v63 = PLLogCommon();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            *v147 = 138412290;
            *&v147[4] = v58;
            _os_log_debug_impl(&dword_21A4C6000, v63, OS_LOG_TYPE_DEBUG, "%@", v147, 0xCu);
          }
        }
      }
    }

    else
    {
      [(PLBatteryAgent *)self logEventForwardMitigationStateWithState:state64[0] userDisabled:0];
    }

    v21 = 0x277D3F000uLL;
  }

  if (+[PLBatteryAgent shouldLogCPMS](PLBatteryAgent, "shouldLogCPMS") || +[PLBatteryAgent shouldLogPPMDebugDetail])
  {
    v64 = objc_alloc(*(v21 + 456));
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3737;
    v129[3] = &unk_27825CE10;
    v129[4] = self;
    v65 = [v64 initWithOperator:self forService:@"ApplePPM" withBlock:v129];
    iokitPPM = self->_iokitPPM;
    self->_iokitPPM = v65;
  }

  if (self->_iokitPPM && +[PLBatteryAgent shouldLogPPMDebugDetail](PLBatteryAgent, "shouldLogPPMDebugDetail") && !+[PLBatteryAgent shouldLogCPMS])
  {
    v67 = objc_alloc(MEMORY[0x277D3F250]);
    v68 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
    v69 = [(PLOperator *)self workQueue];
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v128[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3744;
    v128[3] = &unk_278259C40;
    v128[4] = self;
    v70 = [v67 initWithFireDate:v68 withInterval:1 withTolerance:0 repeats:v69 withUserInfo:v128 withQueue:3600.0 withBlock:0.0];
    ppmEventThresholdTimer = self->_ppmEventThresholdTimer;
    self->_ppmEventThresholdTimer = v70;
  }

  [(PLBatteryAgent *)self logEventForwardLPEM];
  [(PLBatteryAgent *)self initSmartChargingLogging];
  [(PLBatteryAgent *)self initCleanEnergyChargingLogging];
  [(PLBatteryAgent *)self initializeChargingStateIntervals];
  v72 = objc_alloc(MEMORY[0x277D3F270]);
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3758;
  v127[3] = &unk_27825A1D8;
  v127[4] = self;
  v73 = [v72 initWithOperator:self withRegistration:&unk_282C18DC8 withBlock:v127];
  mobileChargeModeListener = self->_mobileChargeModeListener;
  self->_mobileChargeModeListener = v73;

  v75 = [objc_alloc(MEMORY[0x277D3F1F0]) initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:&__block_literal_global_3765];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v75;

  if (+[PLBatteryAgent shouldLogCPMS])
  {
    v77 = objc_alloc(MEMORY[0x277D3F160]);
    v78 = [(PLOperator *)self workQueue];
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3770;
    v126[3] = &unk_2782597E8;
    v126[4] = self;
    v79 = [v77 initWithWorkQueue:v78 forNotification:@"com.apple.powerlogd.logCPMS" requireState:0 withBlock:v126];
    [(PLBatteryAgent *)self setCpmsDebugNotification:v79];

    [(PLBatteryAgent *)self logCPMSSnapshotWithTrigger:2];
  }

  if (+[PLBatteryAgent shouldLogBTM])
  {
    v80 = IOHIDManagerCreate(*MEMORY[0x277CBECE8], 0);
    self->_BTMmanager = v80;
    if (v80)
    {
      v81 = v80;
      v82 = [(PLOperator *)self workQueue];
      IOHIDManagerSetDispatchQueue(v81, v82);

      v145[0] = @"AppleBTM";
      v144[0] = @"IOClass";
      v144[1] = @"DeviceUsagePage";
      v83 = [MEMORY[0x277CCABB0] numberWithInt:65280];
      v145[1] = v83;
      v144[2] = @"DeviceUsage";
      v84 = [MEMORY[0x277CCABB0] numberWithInt:72];
      v145[2] = v84;
      v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:3];

      IOHIDManagerSetDeviceMatching(self->_BTMmanager, v85);
      IOHIDManagerActivate(self->_BTMmanager);
    }

    else
    {
      v85 = PLLogCommon();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        *v147 = 0;
        _os_log_error_impl(&dword_21A4C6000, v85, OS_LOG_TYPE_ERROR, "manager is not existent", v147, 2u);
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    v86 = objc_alloc(MEMORY[0x277D3F270]);
    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3794;
    v125[3] = &unk_27825A1D8;
    v125[4] = self;
    v87 = [v86 initWithOperator:self withRegistration:&unk_282C18DF0 withBlock:v125];
    [(PLBatteryAgent *)self setBdcAMAListener:v87];
  }

  v88 = objc_alloc(MEMORY[0x277D3F270]);
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3802;
  v124[3] = &unk_27825A1D8;
  v124[4] = self;
  v89 = [v88 initWithOperator:self withRegistration:&unk_282C18E18 withBlock:v124];
  [(PLBatteryAgent *)self setAcamSBCListener:v89];

  v90 = objc_alloc(MEMORY[0x277D3F270]);
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3_3810;
  v123[3] = &unk_27825A1D8;
  v123[4] = self;
  v91 = [v90 initWithOperator:self withRegistration:&unk_282C18E40 withBlock:v123];
  [(PLBatteryAgent *)self setBatteryUIVisitsListener:v91];

  v92 = objc_alloc(MEMORY[0x277D3F270]);
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_4_3818;
  v122[3] = &unk_27825A1D8;
  v122[4] = self;
  v93 = [v92 initWithOperator:self withRegistration:&unk_282C18E68 withBlock:v122];
  [(PLBatteryAgent *)self setBatteryUIInsightsListener:v93];

  v94 = objc_alloc(MEMORY[0x277D3F160]);
  v95 = [(PLOperator *)self workQueue];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_5_3822;
  v121[3] = &unk_2782597E8;
  v121[4] = self;
  v96 = [v94 initWithWorkQueue:v95 forNotification:@"com.apple.powerlogd.logBatteryHealthUIVisit" requireState:0 withBlock:v121];
  [(PLBatteryAgent *)self setBatteryHealthUIVisitNotification:v96];

  v97 = objc_alloc(MEMORY[0x277D3F160]);
  v98 = [(PLOperator *)self workQueue];
  v120[0] = MEMORY[0x277D85DD0];
  v120[1] = 3221225472;
  v120[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_6_3826;
  v120[3] = &unk_2782597E8;
  v120[4] = self;
  v99 = [v97 initWithWorkQueue:v98 forNotification:@"com.apple.powerlogd.logBatteryChargingUIVisit" requireState:0 withBlock:v120];
  [(PLBatteryAgent *)self setBatteryChargingUIVisitNotification:v99];

  v100 = objc_alloc(MEMORY[0x277D3F160]);
  v101 = [(PLOperator *)self workQueue];
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 3221225472;
  v119[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_7_3830;
  v119[3] = &unk_2782597E8;
  v119[4] = self;
  v102 = [v100 initWithWorkQueue:v101 forNotification:@"com.apple.powerlog.ShowAllUsageViewVisit" requireState:0 withBlock:v119];
  [(PLBatteryAgent *)self setBatteryDetailVisitNotification:v102];

  v103 = objc_alloc(MEMORY[0x277D3F160]);
  v104 = [(PLOperator *)self workQueue];
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_8;
  v118[3] = &unk_2782597E8;
  v118[4] = self;
  v105 = [v103 initWithWorkQueue:v104 forNotification:@"com.apple.powerlog.AppDetailViewVisit" requireState:0 withBlock:v118];
  [(PLBatteryAgent *)self setBatteryAppDetailVisitNotification:v105];

  *v147 = 0;
  out_token[1] = 0;
  v106 = [(PLOperator *)self workQueue];
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_9;
  v117[3] = &unk_278260C40;
  v117[4] = self;
  v107 = notify_register_dispatch("com.apple.system.powersources.gaugingmitigation", &out_token[1], v106, v117);

  if (v107)
  {
    v108 = PLLogCommon();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      LODWORD(state64[0]) = 67109120;
      HIDWORD(state64[0]) = v107;
      _os_log_error_impl(&dword_21A4C6000, v108, OS_LOG_TYPE_ERROR, "Failed to register for gauging mitigation notification, ret = %d", state64, 8u);
    }
  }

  v109 = notify_get_state(out_token[1], v147);
  if (v109)
  {
    v110 = v109;
    v111 = PLLogCommon();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      LODWORD(state64[0]) = 67109120;
      HIDWORD(state64[0]) = v110;
      _os_log_error_impl(&dword_21A4C6000, v111, OS_LOG_TYPE_ERROR, "Failed to get initial mitigation state, ret = %d", state64, 8u);
    }
  }

  else if (v147[0])
  {
    [(PLBatteryAgent *)self logEventBackwardChargingLimit];
  }

  out_token[0] = 0;
  v112 = [(PLOperator *)self workQueue];
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3836;
  v116[3] = &unk_278260C40;
  v116[4] = self;
  v113 = notify_register_dispatch("com.apple.system.powersources.chargingiconography", out_token, v112, v116);

  if (v113)
  {
    v114 = PLLogCommon();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      LODWORD(state64[0]) = 67109120;
      HIDWORD(state64[0]) = v113;
      _os_log_error_impl(&dword_21A4C6000, v114, OS_LOG_TYPE_ERROR, "Failed to register for Iconography State Change notification, ret = %d", state64, 8u);
    }
  }

  [(PLBatteryAgent *)self logEventBackwardIconographyState];

  v115 = *MEMORY[0x277D85DE8];
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2;
    block[3] = &unk_27825A310;
    v26 = @"GasGauge";
    v27 = v3;
    if (qword_2811F3B70 != -1)
    {
      dispatch_once(&qword_2811F3B70, block);
    }

    v4 = byte_2811F3A89;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Blocking GasGauge reads"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:4312];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) setAllowGasGaugeRead:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3553;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v11;
    if (qword_2811F3B78 != -1)
    {
      dispatch_once(&qword_2811F3B78, &v20);
    }

    if (byte_2811F3A8A == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ signaling done", *(a1 + 32), v20, v21, v22, v23, v24];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke_2"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:4314];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = [*(a1 + 32) canSleepSemaphore];
  [v18 signalDoneByObject:*(a1 + 32)];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F3A89 = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3553(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A8A = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3559(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3560;
    v16 = &unk_27825A310;
    v17 = @"GasGauge";
    v18 = v3;
    if (qword_2811F3B80 != -1)
    {
      dispatch_once(&qword_2811F3B80, &v13);
    }

    v4 = byte_2811F3A8B;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Opening GasGauge reads", v13, v14, v15, v16];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:4318];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  result = [*(a1 + 32) setAllowGasGaugeRead:{1, v13, v14, v15, v16}];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3560(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F3A8B = result;
  return result;
}

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3575()
{
  v34 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v1 = [v0 performQuery:{@"SELECT ID, CycleCount FROM PLBatteryAgent_EventBackward_Battery GROUP BY CycleCount"}];;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v1;
  v2 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *v28;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v8);
        v11 = [v10 objectForKeyedSubscript:@"CycleCount"];
        v6 = [v11 integerValue];

        v12 = v6 - v9;
        if (v6 - v9 < 0)
        {
          v12 = v9 - v6;
        }

        if (v12 > 5)
        {
          v4 = v5;
        }

        v13 = [v10 objectForKeyedSubscript:@"ID"];
        v5 = [v13 longLongValue];

        ++v8;
        v9 = v6;
      }

      while (v3 != v8);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v14 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"select MAX(AppleRawMaxCapacity) AS Max, MIN(AppleRawMaxCapacity) AS Min, AVG(AppleRawMaxCapacity) AS Avg from PLBatteryAgent_EventBackward_Battery where ID > %lld", v4];
  v16 = [v14 performQuery:v15];

  if ([v16 count])
  {
    v31[0] = @"fullChargeCapacityMax";
    v17 = [v16 objectAtIndexedSubscript:0];
    v18 = [v17 objectForKeyedSubscript:@"Max"];
    v32[0] = v18;
    v31[1] = @"fullChargeCapacityMin";
    v19 = [v16 objectAtIndexedSubscript:0];
    v20 = [v19 objectForKeyedSubscript:@"Min"];
    v32[1] = v20;
    v31[2] = @"fullChargeCapacityAvg";
    v21 = [v16 objectAtIndexedSubscript:0];
    v22 = [v21 objectForKeyedSubscript:@"Avg"];
    v32[2] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3605(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = a4;
  v8 = a5;
  v9 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"BatteryConfig"];
  v10 = [MEMORY[0x277D3F2A0] sharedCore];
  v11 = [v10 storage];
  v12 = [v11 entriesForKey:v9];

  v13 = [*(a1 + 32) getBUIVisitsTotal];
  v14 = [*(a1 + 32) getBUIVisitsToday];
  v15 = [*(a1 + 32) getBUIVisitsLastHour];
  [MEMORY[0x277D3F1B0] totalLogDuration];
  v17 = v16;
  v18 = [*(a1 + 32) aggregateBUIVisitData:v13 withBUIVisitsToday:v14 andBUIVisitsLastHour:v15 andTotalLogDuration:?];
  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = v17;
    _os_log_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEFAULT, "BUIVisits=%@, totalLogDuration=%f", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy__13;
  v34 = __Block_byref_object_dispose__13;
  v35 = objc_opt_new();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3608;
  v27[3] = &unk_27825B0B0;
  v20 = v18;
  v28 = v20;
  v29 = buf;
  [v12 enumerateObjectsUsingBlock:v27];
  v30[0] = @"dataReady";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "lifetimeDataLogged")}];
  v30[1] = @"BatteryConfig";
  v31[0] = v21;
  v31[1] = *(*&buf[8] + 40);
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  _Block_object_dispose(buf, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3608(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [a2 dictionary];
  v5 = [v3 dictionaryWithDictionary:v4];

  [v5 addEntriesFromDictionary:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3620(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"UPOStepper"];
  v11 = [MEMORY[0x277D3F2A0] sharedCore];
  v12 = [v11 storage];
  v13 = [v12 entriesForKey:v10];

  v14 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UPOStepper"];
  v15 = [MEMORY[0x277D3F2A0] sharedCore];
  v16 = [v15 storage];
  v17 = [v16 entriesForKey:v14];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__13;
  v35 = __Block_byref_object_dispose__13;
  v36 = objc_opt_new();
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__13;
  v29 = __Block_byref_object_dispose__13;
  v30 = objc_opt_new();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3;
  v24[3] = &unk_278260C18;
  v24[4] = &v25;
  [v13 enumerateObjectsUsingBlock:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_4;
  v23[3] = &unk_278260C18;
  v23[4] = &v31;
  [v17 enumerateObjectsUsingBlock:v23];
  v18 = v26[5];
  v37[0] = @"State";
  v37[1] = @"Metrics";
  v19 = v32[5];
  v38[0] = v18;
  v38[1] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 dictionary];
  [v2 addObject:v3];
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 dictionary];
  [v2 addObject:v3];
}

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_5()
{
  v24 = *MEMORY[0x277D85DE8];
  v0 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BatteryShutdown"];
  v1 = [MEMORY[0x277D3F2A0] sharedCore];
  v2 = [v1 storage];
  v3 = [v2 entriesForKey:v0];

  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) dictionary];
        v11 = [v10 objectForKeyedSubscript:@"BatteryShutdownTimestamp"];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 convertFromMonotonicToSystem];
          [v10 setObject:v13 forKeyedSubscript:@"BatteryShutdownTimestamp"];
        }

        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v21 = @"BatteryShutdownData";
  v22 = v4;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_6()
{
  v0 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT MIN(%@) TemperatureMin, MAX(%@) TemperatureMax, AVG(%@) TemperatureAvg FROM %@", @"Temperature", @"Temperature", @"Temperature", v0];;
  v2 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v3 = [v2 performQuery:v1];

  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_7()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"                                           SELECT AmperageBucket, COUNT(*) NumSamples                                           FROM(                                          SELECT %@, -ROUND(%@/%f + 0.5)*%f AmperageBucket                                           FROM %@                                           WHERE %@ <= -%f AND timestamp > (-%f +(                                          SELECT MAX(timestamp)                                            FROM %@                                          ))                                          )                                           GROUP BY AmperageBucket                                           ORDER BY AmperageBucket", @"InstantAmperage", @"InstantAmperage", 0x4049000000000000, 0x4049000000000000, v0, @"InstantAmperage", 0x4054000000000000, 0x40F5180000000000, v0];;
  v7 = @"DischargeCurrentHist";
  v2 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v3 = [v2 performQuery:v1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEFAULT, "[BatteryQueryForChargingState] Received query with payload=%@!", buf, 0xCu);
  }

  if (v6 && ([v6 objectForKeyedSubscript:@"StartEpochTime"], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = MEMORY[0x277CBEAA8];
    v10 = [v6 objectForKeyedSubscript:@"StartEpochTime"];
    [v10 doubleValue];
    v11 = [v9 dateWithTimeIntervalSince1970:?];

    v12 = [v11 convertFromSystemToMonotonic];
    [v12 timeIntervalSinceNow];
    if (v13 >= -3600.0)
    {
      v14 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];
      v16 = MEMORY[0x277CCACA8];
      [v12 timeIntervalSince1970];
      v18 = [v16 stringWithFormat:@"SELECT timestamp, %@, %@ FROM %@ where timestamp > %f", @"ExternalConnected", @"IsCharging", v14, v17];
      v19 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
      v20 = [v19 performQuery:v18];

      if ([v20 count])
      {
        v21 = [MEMORY[0x277D3F230] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F618]];
        v22 = [*(a1 + 32) storage];
        v23 = [v22 lastEntryForKey:v21];

        v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D3F620]];
        [v24 doubleValue];
        v26 = v25;

        v30[0] = @"Result";
        v30[1] = @"TimeOffset";
        v31[0] = v20;
        v27 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        v31[1] = v27;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      }

      else
      {
        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_ERROR, "[BatteryQueryForChargingState] No entries found", buf, 2u);
        }

        v15 = 0;
      }
    }

    else
    {
      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v33 = v11;
        v34 = 2112;
        v35 = v12;
        _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "[BatteryQueryForChargingState] Invalid StartDate=%@, MonotonicStartDate=%@", buf, 0x16u);
      }

      v15 = 0;
    }
  }

  else
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "[BatteryQueryForChargingState] Invalid payload!", buf, 2u);
    }

    v15 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3685(uint64_t a1, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D3F208] isiPad])
  {
    goto LABEL_10;
  }

  if ((a3 + 469794800) >= 2)
  {
    if (a3 == -469794798)
    {
LABEL_12:
      v15 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2];
      v16 = [v15 objectForKeyedSubscript:@"IOAccessoryActivePowerMode"];
      v17 = [v16 intValue];
      if (v17 != [*(a1 + 32) priIOAccessoryPowerMode])
      {
        v18 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LightningConnectorStatus"];
        v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18];
        [v19 setObject:v16 forKeyedSubscript:@"IOAccessoryPowerMode"];
        [*(a1 + 32) logEntry:v19];
        [*(a1 + 32) setPriIOAccessoryPowerMode:{objc_msgSend(v16, "intValue")}];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v20 = *(a1 + 32);
          v21 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3692;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v21;
          if (qword_2811F3B88 != -1)
          {
            dispatch_once(&qword_2811F3B88, block);
          }

          if (byte_2811F3A8C == 1)
          {
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"IOAccessoryPowerMode: %d", objc_msgSend(*(a1 + 32), "priIOAccessoryPowerMode")];
            v23 = MEMORY[0x277D3F178];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
            v25 = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
            [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:4539];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v38 = v22;
              _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }
      }

      goto LABEL_23;
    }

    if (a3 != -536870608)
    {
LABEL_23:
      v28 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v6 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2];
  if (v6)
  {
    v34 = v6;
    v7 = [v6 objectForKeyedSubscript:@"IOAccessoryPrimaryDevicePort"];
    v8 = [v7 intValue];

    if (v8 == 257)
    {
      v9 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"EAPencilCharging"];
      v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:v34];
      v11 = [v34 objectForKeyedSubscript:@"IOAccessoryID"];
      v12 = [v11 intValue];

      v13 = [MEMORY[0x277CCABB0] numberWithInt:v12 == 71];
      [v10 setObject:v13 forKeyedSubscript:@"Pencil"];

      [*(a1 + 32) logEntry:v10];
      v6 = v34;
      goto LABEL_8;
    }

LABEL_10:
    if (a3 == -469794799)
    {
      if ([*(a1 + 32) priIOAccessoryPowerMode] != 1)
      {
        v35 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LightningConnectorStatus"];
        v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v35];
        v30 = [MEMORY[0x277CCABB0] numberWithInt:1];
        [v29 setObject:v30 forKeyedSubscript:@"IOAccessoryPowerMode"];

        [*(a1 + 32) logEntry:v29];
        v31 = *(a1 + 32);
        v32 = [MEMORY[0x277CCABB0] numberWithInt:1];
        [v31 setPriIOAccessoryPowerMode:{objc_msgSend(v32, "intValue")}];

        v33 = *MEMORY[0x277D85DE8];
        v6 = v35;
        goto LABEL_25;
      }
    }

    else if (a3 == -469794798)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_8:
  v14 = *MEMORY[0x277D85DE8];
LABEL_25:
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3692(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A8C = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3700(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "SBC trigger occurred", v4, 2u);
  }

  return [*(a1 + 32) handleSBC];
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3709;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F3B98 != -1)
    {
      dispatch_once(&qword_2811F3B98, &block);
    }

    if (byte_2811F3A8E == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPOStepper Callback %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:4579];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventForwardUPOStepperWithPayload:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3709(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A8E = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3719(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A8F = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3727(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A90 = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3730(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A91 = result;
  return result;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3737(uint64_t a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3738;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v6;
    if (qword_2811F3BB8 != -1)
    {
      dispatch_once(&qword_2811F3BB8, &block);
    }

    if (byte_2811F3A92 == 1)
    {
      v7 = "NOT ";
      if (a3 == -528318208)
      {
        v7 = "";
      }

      v8 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Message recieved from ApplePPM (messageType = %skIOApplePPMMessagePowerlogTrigger"), v7, block, v16, v17, v18, v19;
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:4615];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (a3 == -528318208)
  {
    [*(a1 + 32) handlePPMCallback];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3738(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A92 = result;
  return result;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3744(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPpmEventLoggingCount:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3745;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F3BC0 != -1)
    {
      dispatch_once(&qword_2811F3BC0, block);
    }

    if (byte_2811F3A93 == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [*(a1 + 32) ppmEventLoggingCount];
      v6 = [MEMORY[0x277CBEAA8] date];
      v7 = [v4 stringWithFormat:@"PPMEvent count reset to %ld at %@", v5, v6];

      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:4627];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3745(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A93 = result;
  return result;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "MCM callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardMobileChargeMode:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3763(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __30__PLBatteryAgent_shouldLogBTM__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiPhone];
  if (result)
  {
    result = [MEMORY[0x277D3F208] kPLDeviceClass];
    v1 = result > 102033;
  }

  else
  {
    v1 = 0;
  }

  byte_2811F3A94 = v1;
  return result;
}

- (void)handlePPMCallback
{
  if (+[PLBatteryAgent shouldLogCPMS])
  {

    [(PLBatteryAgent *)self logCPMSSnapshotWithTrigger:1];
  }
}

- (void)handleBDCAMALogging:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"StartTimestamp"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:@"StartTimestamp"];
    [v7 doubleValue];
    v9 = v8 * 1000.0 / 1000000000.0;

    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9];
    v11 = [v10 convertFromSystemToMonotonic];
    v12 = [v5 allKeys];
    v13 = [v12 mutableCopy];

    [v13 removeObject:@"StartTimestamp"];
    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "[BDC_AMA] StartTimestamp = %f StartDate = %@ StartDateMonotonic = %@", buf, 0x20u);
    }

    v15 = [v13 sortedArrayUsingComparator:&__block_literal_global_3844];
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = [v15 count];
      *buf = 134217984;
      v25 = *&v19;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "[BDC_AMA] #Samples = %lu", buf, 0xCu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __38__PLBatteryAgent_handleBDCAMALogging___block_invoke_3845;
    v20[3] = &unk_27825B088;
    v21 = v11;
    v22 = self;
    v23 = v5;
    v17 = v11;
    [v15 enumerateObjectsUsingBlock:v20];
  }

  else
  {
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = *&v5;
      _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "[BDC_AMA] Expected date keys not found in payload %@!", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __38__PLBatteryAgent_handleBDCAMALogging___block_invoke_3845(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 dateByAddingTimeInterval:{objc_msgSend(v4, "integerValue")}];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) objectForKeyedSubscript:v4];

  [v5 logForSubsystem:@"BatteryDataCollection" category:@"BDC_AMA" data:v6 date:v7];
}

- (void)handleOnDeviceACAMSBC:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 allKeys];
    v7 = [v6 mutableCopy];

    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_3854];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__PLBatteryAgent_handleOnDeviceACAMSBC___block_invoke_2;
    v9[3] = &unk_278260C68;
    v10 = v5;
    v11 = self;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "[OnDeviceACAMSBC] No payload found!", buf, 2u);
    }
  }
}

void __40__PLBatteryAgent_handleOnDeviceACAMSBC___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = MEMORY[0x277CBEAA8];
  v5 = [v3 objectForKeyedSubscript:@"timeSinceLastSBC"];
  [v5 doubleValue];
  v6 = [v4 dateWithTimeIntervalSince1970:?];

  v7 = [v6 convertFromSystemToMonotonic];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Logging ACAMSBC Entry: %@ at %@", &v10, 0x16u);
  }

  [*(a1 + 40) logForSubsystem:@"BatteryIntelligence" category:@"OnDeviceACAMSBC" data:v3 date:v7];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)log
{
  [(PLBatteryAgent *)self logEventBackwardBattery];
  [(PLBatteryAgent *)self logEventIntervalGasGauge];
  [(PLBatteryAgent *)self logEABatteryStatistics];

  [(PLBatteryAgent *)self logEventNoneUserType];
}

- (void)fakeLogEntry:(id)a3
{
  v4 = [a3 userInfo];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"entry"];
    if (v6)
    {
      v7 = [(PLOperator *)self workQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __31__PLBatteryAgent_fakeLogEntry___block_invoke;
      v8[3] = &unk_278259658;
      v8[4] = self;
      v9 = v6;
      dispatch_async(v7, v8);
    }
  }
}

void __31__PLBatteryAgent_fakeLogEntry___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __31__PLBatteryAgent_fakeLogEntry___block_invoke_2;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v4;
    if (qword_2811F3BD0 != -1)
    {
      dispatch_once(&qword_2811F3BD0, &block);
    }

    if (byte_2811F3A95 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"logging fake entry=%@", *(a1 + 40), block, v13, v14, v15, v16];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent fakeLogEntry:]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:4919];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEntry:*(a1 + 40)];
  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __31__PLBatteryAgent_fakeLogEntry___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A95 = result;
  return result;
}

- (void)logEventPointUPOStepper
{
  v3 = [(PLBatteryAgent *)self getUPOStepperData];
  if (v3)
  {
    v17 = v3;
    v4 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"UPOStepper"];
    v5 = [v17 objectForKeyedSubscript:@"upoMetrics"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v5];
    v7 = MEMORY[0x277CBEAA8];
    v8 = [v5 objectForKeyedSubscript:@"timestamp"];
    [v8 doubleValue];
    v9 = [v7 dateWithTimeIntervalSince1970:?];

    v10 = [v9 convertFromSystemToMonotonic];
    [v6 setObject:v10 forKeyedSubscript:@"BatteryShutdownTimestamp"];

    v11 = [v17 objectForKeyedSubscript:@"mitigatedUPOCount"];
    [v6 setObject:v11 forKeyedSubscript:@"mitigatedUPOCount"];

    v12 = [v6 objectForKeyedSubscript:@"mitigatedUPOCount"];
    [v12 intValue];
    ADClientSetValueForScalarKey();

    v13 = [v6 objectForKeyedSubscript:@"mitigationState"];
    [v13 intValue];
    ADClientSetValueForScalarKey();

    v14 = [v6 objectForKeyedSubscript:@"timeWindow"];
    [v14 intValue];
    ADClientSetValueForScalarKey();

    v15 = [v6 objectForKeyedSubscript:@"trueRa"];
    [v15 intValue];
    ADClientSetValueForScalarKey();

    v16 = [v6 objectForKeyedSubscript:@"virtualRa"];
    [v16 intValue];
    ADClientSetValueForScalarKey();

    [(PLOperator *)self logEntry:v6];
    v3 = v17;
  }
}

- (void)logEventPointBatteryUIVisitWithPayload:(id)a3
{
  v4 = MEMORY[0x277D3F180];
  v5 = a3;
  if (([v4 objectExistsForKey:@"BUIVisitDefaultKey"] & 1) == 0)
  {
    [MEMORY[0x277D3F180] setObject:MEMORY[0x277CBEC38] forKey:@"BUIVisitDefaultKey" saveToDisk:1];
  }

  v9 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BatteryUIVisit"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
  [v6 setObject:&unk_282C11FE8 forKeyedSubscript:@"Visit"];
  v7 = [v5 objectForKeyedSubscript:@"UsageSummary"];
  [v6 setObject:v7 forKeyedSubscript:@"UsageSummary"];

  v8 = [v5 objectForKeyedSubscript:@"Qualifiers"];

  [v6 setObject:v8 forKeyedSubscript:@"Qualifiers"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointBatteryUIInsightsAndSuggestionsWithPayload:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v8 = [(PLOperator *)PLBatteryAgent entryKeyForType:v4 andName:@"BatteryUIVisit"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  [v6 setObject:&unk_282C11FE8 forKeyedSubscript:@"Visit"];
  v7 = [v5 objectForKeyedSubscript:@"Insights"];

  [v6 setObject:v7 forKeyedSubscript:@"Insights"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointBatteryHealthUIVisit
{
  if (([MEMORY[0x277D3F180] objectExistsForKey:@"BUIVisitDefaultKey"] & 1) == 0)
  {
    [MEMORY[0x277D3F180] setObject:MEMORY[0x277CBEC38] forKey:@"BUIVisitDefaultKey" saveToDisk:1];
  }

  v4 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BatteryUIVisit"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  [v3 setObject:&unk_282C12000 forKeyedSubscript:@"Visit"];
  [(PLOperator *)self logEntry:v3];
}

- (void)logEventPointBatteryChargingUIVisit
{
  if (([MEMORY[0x277D3F180] objectExistsForKey:@"BUIVisitDefaultKey"] & 1) == 0)
  {
    [MEMORY[0x277D3F180] setObject:MEMORY[0x277CBEC38] forKey:@"BUIVisitDefaultKey" saveToDisk:1];
  }

  v4 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BatteryUIVisit"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  [v3 setObject:&unk_282C12018 forKeyedSubscript:@"Visit"];
  [(PLOperator *)self logEntry:v3];
}

- (void)logEventPointBatteryUIDetailVisit
{
  if (([MEMORY[0x277D3F180] objectExistsForKey:@"DetailVisit"] & 1) == 0)
  {
    [MEMORY[0x277D3F180] setObject:MEMORY[0x277CBEC38] forKey:@"DetailVisit" saveToDisk:1];
  }

  v4 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BatteryUIVisit"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  [v3 setObject:&unk_282C12030 forKeyedSubscript:@"Visit"];
  [(PLOperator *)self logEntry:v3];
}

- (void)logEventPointBatteryUIAppDetailVisit
{
  if (([MEMORY[0x277D3F180] objectExistsForKey:@"AppDetailVisit"] & 1) == 0)
  {
    [MEMORY[0x277D3F180] setObject:MEMORY[0x277CBEC38] forKey:@"AppDetailVisit" saveToDisk:1];
  }

  v4 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BatteryUIVisit"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  [v3 setObject:&unk_282C12048 forKeyedSubscript:@"Visit"];
  [(PLOperator *)self logEntry:v3];
}

- (id)getBUIVisitsTotal
{
  v2 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v3 = [v2 performQuery:{@"SELECT Visit, COUNT(*) AS Count FROM PLBatteryAgent_EventPoint_BatteryUIVisit GROUP BY Visit"}];;

  return v3;
}

- (id)getBUIVisitsToday
{
  v2 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v3 = [v2 performQuery:{@"SELECT Visit, COUNT(*) AS Count FROM PLBatteryAgent_EventPoint_BatteryUIVisit WHERE timestamp > ((SELECT MAX(timestamp) FROM PLBatteryAgent_EventBackward_Battery)-86400) GROUP BY Visit"}];;

  return v3;
}

- (id)getBUIVisitsLastHour
{
  v2 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v3 = [v2 performQuery:{@"SELECT Visit, COUNT(*) AS Count FROM PLBatteryAgent_EventPoint_BatteryUIVisit WHERE timestamp > ((SELECT MAX(timestamp) FROM PLBatteryAgent_EventBackward_Battery)-3600) GROUP BY Visit"}];;

  return v3;
}

- (id)aggregateBUIVisitData:(id)a3 withBUIVisitsToday:(id)a4 andBUIVisitsLastHour:(id)a5 andTotalLogDuration:(double)a6
{
  v66[10] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v25 = a4;
  v24 = a5;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __100__PLBatteryAgent_aggregateBUIVisitData_withBUIVisitsToday_andBUIVisitsLastHour_andTotalLogDuration___block_invoke;
  v28[3] = &unk_278260C90;
  v28[4] = &v61;
  v28[5] = &v49;
  v28[6] = &v37;
  v23 = v9;
  [v9 enumerateObjectsUsingBlock:v28];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __100__PLBatteryAgent_aggregateBUIVisitData_withBUIVisitsToday_andBUIVisitsLastHour_andTotalLogDuration___block_invoke_2;
  v27[3] = &unk_278260C90;
  v27[4] = &v57;
  v27[5] = &v45;
  v27[6] = &v33;
  [v25 enumerateObjectsUsingBlock:v27];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__PLBatteryAgent_aggregateBUIVisitData_withBUIVisitsToday_andBUIVisitsLastHour_andTotalLogDuration___block_invoke_3;
  v26[3] = &unk_278260C90;
  v26[4] = &v53;
  v26[5] = &v41;
  v26[6] = &v29;
  [v24 enumerateObjectsUsingBlock:v26];
  v65[0] = @"BUIVisitsTotal";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:*(v62 + 6)];
  v66[0] = v10;
  v65[1] = @"BUIVisitsToday";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(v58 + 6)];
  v66[1] = v11;
  v65[2] = @"BUIVisitsLastHour";
  v12 = [MEMORY[0x277CCABB0] numberWithInt:*(v54 + 6)];
  v66[2] = v12;
  v65[3] = @"BHUIVisitsTotal";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:*(v50 + 6)];
  v66[3] = v13;
  v65[4] = @"BHUIVisitsToday";
  v14 = [MEMORY[0x277CCABB0] numberWithInt:*(v46 + 6)];
  v66[4] = v14;
  v65[5] = @"BHUIVisitsLastHour";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:*(v42 + 6)];
  v66[5] = v15;
  v65[6] = @"ChargingUIVisitsTotal";
  v16 = [MEMORY[0x277CCABB0] numberWithInt:*(v38 + 6)];
  v66[6] = v16;
  v65[7] = @"ChargingUIVisitsToday";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:*(v34 + 6)];
  v66[7] = v17;
  v65[8] = @"ChargingUIVisitsLastHour";
  v18 = [MEMORY[0x277CCABB0] numberWithInt:*(v30 + 6)];
  v66[8] = v18;
  v65[9] = @"LogDuration";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
  v66[9] = v19;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:10];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

void __100__PLBatteryAgent_aggregateBUIVisitData_withBUIVisitsToday_andBUIVisitsLastHour_andTotalLogDuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Visit"];
  v5 = [v4 intValue];

  v6 = [v3 objectForKeyedSubscript:@"Count"];

  v7 = [v6 intValue];
  if ((v5 - 1) <= 2)
  {
    v8 = *(*(a1 + (8 * (v5 - 1)) + 32) + 8);
    *(v8 + 24) += v7;
  }
}

void __100__PLBatteryAgent_aggregateBUIVisitData_withBUIVisitsToday_andBUIVisitsLastHour_andTotalLogDuration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Visit"];
  v5 = [v4 intValue];

  v6 = [v3 objectForKeyedSubscript:@"Count"];

  v7 = [v6 intValue];
  if ((v5 - 1) <= 2)
  {
    v8 = *(*(a1 + (8 * (v5 - 1)) + 32) + 8);
    *(v8 + 24) += v7;
  }
}

void __100__PLBatteryAgent_aggregateBUIVisitData_withBUIVisitsToday_andBUIVisitsLastHour_andTotalLogDuration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Visit"];
  v5 = [v4 intValue];

  v6 = [v3 objectForKeyedSubscript:@"Count"];

  v7 = [v6 intValue];
  if ((v5 - 1) <= 2)
  {
    v8 = *(*(a1 + (8 * (v5 - 1)) + 32) + 8);
    *(v8 + 24) += v7;
  }
}

- (void)logEventForwardLPEM
{
  if ([MEMORY[0x277D3F208] hasLPEM])
  {
    v3 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"IOPMUBootLPMLog"];
    v4 = IOServiceMatching("IOService");
    if (v4)
    {
      v5 = v4;
      valuePtr[0] = 0;
      v6 = *MEMORY[0x277CBECE8];
      values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
      v7 = CFDictionaryCreate(v6, &logEventForwardLPEM_dictKey, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(v5, @"IOPropertyMatch", v7);
        CFRelease(v8);
        MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v5);
        if (MatchingService)
        {
          v10 = MatchingService;
          v11 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:MatchingService];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 objectForKeyedSubscript:@"IOPMUBootLPMLog"];

            if (v13)
            {
              v14 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
              v15 = [v14 objectForKeyedSubscript:@"TMS0"];
              v16 = [v15 unsignedIntegerValue];

              v17 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
              v18 = [v17 objectForKeyedSubscript:@"TMSc"];
              v19 = [v18 unsignedIntegerValue];

              v20 = [(PLOperator *)self storage];
              v21 = [v20 lastEntryForKey:v3];

              if (v21)
              {
                v22 = [v21 objectForKeyedSubscript:@"TMS0"];
                if ([v22 unsignedIntegerValue] == v16)
                {
                  v23 = [v21 objectForKeyedSubscript:@"TMSc"];
                  v24 = [v23 unsignedIntegerValue] != v19;
                }

                else
                {
                  v24 = 1;
                }
              }

              else
              {
                v24 = 1;
              }

              if (v16 && v19 && v24)
              {
                v25 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
                v26 = MEMORY[0x277CCABB0];
                v27 = [MEMORY[0x277D3F248] sharedInstance];
                [v27 currentTimeFromTimeReference:2 toTimeReference:2];
                v28 = v74 = v21;
                [v28 timeIntervalSince1970];
                v75 = [v26 numberWithDouble:?];

                v29 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v30 = [v29 objectForKeyedSubscript:@"TMS0"];
                [v25 setObject:v30 forKeyedSubscript:@"TMS0"];

                v31 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v32 = [v31 objectForKeyedSubscript:@"CAPA"];
                [v25 setObject:v32 forKeyedSubscript:@"CAPA"];

                v33 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v34 = [v33 objectForKeyedSubscript:@"CCCs"];
                [v25 setObject:v34 forKeyedSubscript:@"CCCs"];

                v35 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v36 = [v35 objectForKeyedSubscript:@"PDD0"];
                [v25 setObject:v36 forKeyedSubscript:@"PDD0"];

                v37 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v38 = [v37 objectForKeyedSubscript:@"PDDc"];
                [v25 setObject:v38 forKeyedSubscript:@"PDDc"];

                v39 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v40 = [v39 objectForKeyedSubscript:@"GGTm"];
                [v25 setObject:v40 forKeyedSubscript:@"GGTm"];

                v41 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v42 = [v41 objectForKeyedSubscript:@"VOLT"];
                [v25 setObject:v42 forKeyedSubscript:@"VOLT"];

                v43 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v44 = [v43 objectForKeyedSubscript:@"STAT"];
                [v25 setObject:v44 forKeyedSubscript:@"STAT"];

                v45 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v46 = [v45 objectForKeyedSubscript:@"TMSc"];
                [v25 setObject:v46 forKeyedSubscript:@"TMSc"];

                v47 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v48 = [v47 objectForKeyedSubscript:@"CCCu"];
                [v25 setObject:v48 forKeyedSubscript:@"CCCu"];

                v49 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v50 = [v49 objectForKeyedSubscript:@"BTLC"];
                [v25 setObject:v50 forKeyedSubscript:@"BTLC"];

                [v25 setObject:v75 forKeyedSubscript:@"CurrentTimeRTC"];
                [(PLOperator *)self logEntry:v25];
                ADClientSetValueForScalarKey();
                [v75 longLongValue];
                ADClientSetValueForScalarKey();
                v51 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v52 = [v51 objectForKeyedSubscript:@"CAPA"];
                [v52 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v53 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v54 = [v53 objectForKeyedSubscript:@"CCCs"];
                [v54 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v55 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v56 = [v55 objectForKeyedSubscript:@"PDD0"];
                [v56 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v57 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v58 = [v57 objectForKeyedSubscript:@"PDDc"];
                [v58 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v59 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v60 = [v59 objectForKeyedSubscript:@"GGTm"];
                [v60 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v61 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v62 = [v61 objectForKeyedSubscript:@"VOLT"];
                [v62 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v63 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v64 = [v63 objectForKeyedSubscript:@"STAT"];
                [v64 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v65 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v66 = [v65 objectForKeyedSubscript:@"CCCu"];
                [v66 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v67 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v68 = [v67 objectForKeyedSubscript:@"BTLC"];
                [v68 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v69 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v70 = [v69 objectForKeyedSubscript:@"CCCn"];
                [v70 unsignedLongLongValue];
                ADClientSetValueForScalarKey();

                v71 = [v12 objectForKeyedSubscript:@"IOPMUBootLPMLog"];
                v72 = [v71 objectForKeyedSubscript:@"STAT"];
                [v72 unsignedCharValue];

                v21 = v74;
                ADClientSetValueForScalarKey();
                ADClientSetValueForScalarKey();
                ADClientSetValueForScalarKey();
                v76 = v12;
                v73 = v75;
                AnalyticsSendEventLazy();
              }
            }
          }

          IOObjectRelease(v10);
        }
      }

      else
      {
        CFRelease(v5);
      }
    }
  }
}

id __37__PLBatteryAgent_logEventForwardLPEM__block_invoke(uint64_t a1)
{
  v49[15] = *MEMORY[0x277D85DE8];
  v48[0] = @"tmsdiff";
  v47 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 48) - *(a1 + 56)];
  v49[0] = v47;
  v48[1] = @"tmsdifftms0";
  v46 = [MEMORY[0x277CCABB0] numberWithLongLong:{*(a1 + 48) - objc_msgSend(*(a1 + 32), "longLongValue")}];
  v49[1] = v46;
  v48[2] = @"capa";
  v2 = MEMORY[0x277CCABB0];
  v45 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v44 = [v45 objectForKeyedSubscript:@"CAPA"];
  v43 = [v2 numberWithUnsignedLongLong:{objc_msgSend(v44, "unsignedLongLongValue")}];
  v49[2] = v43;
  v48[3] = @"cccs";
  v3 = MEMORY[0x277CCABB0];
  v42 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v41 = [v42 objectForKeyedSubscript:@"CCCs"];
  v40 = [v3 numberWithUnsignedLongLong:{objc_msgSend(v41, "unsignedLongLongValue")}];
  v49[3] = v40;
  v48[4] = @"pdd0";
  v4 = MEMORY[0x277CCABB0];
  v39 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v38 = [v39 objectForKeyedSubscript:@"PDD0"];
  v37 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v38, "unsignedLongLongValue")}];
  v49[4] = v37;
  v48[5] = @"pddc";
  v5 = MEMORY[0x277CCABB0];
  v36 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v35 = [v36 objectForKeyedSubscript:@"PDDc"];
  v34 = [v5 numberWithUnsignedLongLong:{objc_msgSend(v35, "unsignedLongLongValue")}];
  v49[5] = v34;
  v48[6] = @"ggtm";
  v6 = MEMORY[0x277CCABB0];
  v33 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v32 = [v33 objectForKeyedSubscript:@"GGTm"];
  v31 = [v6 numberWithUnsignedLongLong:{objc_msgSend(v32, "unsignedLongLongValue")}];
  v49[6] = v31;
  v48[7] = @"volt";
  v7 = MEMORY[0x277CCABB0];
  v30 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v29 = [v30 objectForKeyedSubscript:@"VOLT"];
  v28 = [v7 numberWithUnsignedLongLong:{objc_msgSend(v29, "unsignedLongLongValue")}];
  v49[7] = v28;
  v48[8] = @"stat";
  v8 = MEMORY[0x277CCABB0];
  v27 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v26 = [v27 objectForKeyedSubscript:@"STAT"];
  v25 = [v8 numberWithUnsignedLongLong:{objc_msgSend(v26, "unsignedLongLongValue")}];
  v49[8] = v25;
  v48[9] = @"cccu";
  v9 = MEMORY[0x277CCABB0];
  v24 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v23 = [v24 objectForKeyedSubscript:@"CCCu"];
  v10 = [v9 numberWithUnsignedLongLong:{objc_msgSend(v23, "unsignedLongLongValue")}];
  v49[9] = v10;
  v48[10] = @"btlc";
  v11 = MEMORY[0x277CCABB0];
  v12 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v13 = [v12 objectForKeyedSubscript:@"BTLC"];
  v14 = [v11 numberWithUnsignedLongLong:{objc_msgSend(v13, "unsignedLongLongValue")}];
  v49[10] = v14;
  v48[11] = @"cccn";
  v15 = [*(a1 + 40) objectForKeyedSubscript:@"IOPMUBootLPMLog"];
  v16 = [v15 objectForKeyedSubscript:@"CCCn"];
  v49[11] = v16;
  v48[12] = @"uvlo0";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(*(a1 + 102) >> 2) & 1];
  v49[12] = v17;
  v48[13] = @"uvlo1";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(*(a1 + 102) >> 3) & 1];
  v49[13] = v18;
  v48[14] = @"uvlo2";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(*(a1 + 102) >> 4) & 1];
  v49[14] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:15];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)logEventIntervalGasGauge
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(PLBatteryAgent *)self allowGasGaugeRead];
  v4 = [MEMORY[0x277D3F180] debugEnabled];
  if (v3)
  {
    if (v4)
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLBatteryAgent_logEventIntervalGasGauge__block_invoke;
      block[3] = &unk_27825A310;
      v29 = @"GasGauge";
      v30 = v5;
      if (qword_2811F3BD8 != -1)
      {
        dispatch_once(&qword_2811F3BD8, block);
      }

      v6 = byte_2811F3A96;

      if (v6 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"reading the GasGauge"];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventIntervalGasGauge]"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:5233];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLBatteryAgent *)self gasGaugeRead];
  }

  else if (v4)
  {
    v13 = objc_opt_class();
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __42__PLBatteryAgent_logEventIntervalGasGauge__block_invoke_4051;
    v25 = &unk_27825A310;
    v26 = @"GasGauge";
    v27 = v13;
    if (qword_2811F3BE0 != -1)
    {
      dispatch_once(&qword_2811F3BE0, &v22);
    }

    v14 = byte_2811F3A97;

    if (v14 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"no reading the GasGauge allowed!", v22, v23, v24, v25];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventIntervalGasGauge]"];
      [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:5236];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBatteryAgent_logEventIntervalGasGauge__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F3A96 = result;
  return result;
}

uint64_t __42__PLBatteryAgent_logEventIntervalGasGauge__block_invoke_4051(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F3A97 = result;
  return result;
}

- (void)logEventPointChargingInfoWithChargingData:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ChargingInfo"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_prevConnectedState];
    [v6 setObject:v7 forKeyedSubscript:@"Connected"];

    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_prevChargingState];
    [v6 setObject:v8 forKeyedSubscript:@"Charging"];

    v9 = [v4 objectForKeyedSubscript:@"DriverState"];
    [v6 setObject:v9 forKeyedSubscript:@"DriverState"];

    v10 = [v4 objectForKeyedSubscript:@"DriverStatusBits"];
    [v6 setObject:v10 forKeyedSubscript:@"DriverStatusBits"];

    v11 = [v4 objectForKeyedSubscript:@"FirmwareStatus"];
    [v6 setObject:v11 forKeyedSubscript:@"FirmwareStatus"];

    v12 = [v4 objectForKeyedSubscript:@"Frequency"];
    [v6 setObject:v12 forKeyedSubscript:@"Frequency"];

    v13 = [v4 objectForKeyedSubscript:@"RectifierCurrent"];
    [v6 setObject:v13 forKeyedSubscript:@"RectifierCurrent"];

    v14 = [v4 objectForKeyedSubscript:@"RectifierVoltage"];
    [v6 setObject:v14 forKeyedSubscript:@"RectifierVoltage"];

    v15 = [v4 objectForKeyedSubscript:@"PowerTarget"];
    [v6 setObject:v15 forKeyedSubscript:@"PowerTarget"];

    v16 = [v4 objectForKeyedSubscript:@"VoltageTarget"];
    [v6 setObject:v16 forKeyedSubscript:@"VoltageTarget"];

    v17 = [v4 objectForKeyedSubscript:@"PowerBudget"];
    [v6 setObject:v17 forKeyedSubscript:@"PowerBudget"];

    v18 = [v4 objectForKeyedSubscript:@"TxGain1"];
    [v6 setObject:v18 forKeyedSubscript:@"TxGain1"];

    v19 = [v4 objectForKeyedSubscript:@"TxGain2"];
    [v6 setObject:v19 forKeyedSubscript:@"TxGain2"];

    v20 = [v4 objectForKeyedSubscript:@"TxVersion"];
    [v6 setObject:v20 forKeyedSubscript:@"TxVersion"];

    v21 = [v4 objectForKeyedSubscript:@"SignalStrength"];
    [v6 setObject:v21 forKeyedSubscript:@"SignalStrength"];

    v22 = [v4 objectForKeyedSubscript:@"NotCloakReason"];
    [v6 setObject:v22 forKeyedSubscript:@"NotCloakReason"];

    v23 = [v4 objectForKeyedSubscript:@"ModDepth"];
    [v6 setObject:v23 forKeyedSubscript:@"ModDepth"];

    v24 = [v4 objectForKeyedSubscript:@"HighFreq"];
    [v6 setObject:v24 forKeyedSubscript:@"HighFreq"];

    v25 = [v4 objectForKeyedSubscript:@"CloakReason"];
    [v6 setObject:v25 forKeyedSubscript:@"CloakReason"];

    v26 = [v4 objectForKeyedSubscript:@"InductiveFWMode"];
    [v6 setObject:v26 forKeyedSubscript:@"InductiveFWMode"];

    v27 = [v4 objectForKeyedSubscript:@"OVPCount"];
    [v6 setObject:v27 forKeyedSubscript:@"OVPCount"];

    v28 = [v4 objectForKeyedSubscript:@"MagnetAttach"];
    [v6 setObject:v28 forKeyedSubscript:@"MagnetAttach"];

    v29 = [v4 objectForKeyedSubscript:@"PTxType"];
    [v6 setObject:v29 forKeyedSubscript:@"PTxType"];

    v30 = [v4 objectForKeyedSubscript:@"PowerNegotiable"];
    [v6 setObject:v30 forKeyedSubscript:@"PowerNegotiable"];

    v31 = [v4 objectForKeyedSubscript:@"PowerLimitReason"];
    [v6 setObject:v31 forKeyedSubscript:@"PowerLimitReason"];

    v32 = [v4 objectForKeyedSubscript:@"PowerPotential"];
    [v6 setObject:v32 forKeyedSubscript:@"PowerPotential"];

    v33 = [v4 objectForKeyedSubscript:@"Prect"];
    [v6 setObject:v33 forKeyedSubscript:@"Prect"];

    v34 = [v4 objectForKeyedSubscript:@"IlimTarget"];
    [v6 setObject:v34 forKeyedSubscript:@"IlimTarget"];

    v35 = [v4 objectForKeyedSubscript:@"IlimHeadroom"];
    [v6 setObject:v35 forKeyedSubscript:@"IlimHeadroom"];

    v36 = [v4 objectForKeyedSubscript:@"TxGain3"];
    [v6 setObject:v36 forKeyedSubscript:@"TxGain3"];

    v37 = [v4 objectForKeyedSubscript:@"TxGain4"];
    [v6 setObject:v37 forKeyedSubscript:@"TxGain4"];

    v38 = [v4 objectForKeyedSubscript:@"PowerProfile"];
    [v6 setObject:v38 forKeyedSubscript:@"PowerProfile"];

    v39 = [v4 objectForKeyedSubscript:@"PowerProfSwitch"];
    [v6 setObject:v39 forKeyedSubscript:@"PowerProfSwitch"];

    v40 = [v4 objectForKeyedSubscript:@"TxKest"];
    [v6 setObject:v40 forKeyedSubscript:@"TxKest"];

    v41 = [v4 objectForKeyedSubscript:@"RxQippVer"];
    [v6 setObject:v41 forKeyedSubscript:@"RxQippVer"];

    v42 = [v4 objectForKeyedSubscript:@"DplossStat"];
    [v6 setObject:v42 forKeyedSubscript:@"DplossStat"];

    v43 = [v4 objectForKeyedSubscript:@"MainCurrent"];
    [v6 setObject:v43 forKeyedSubscript:@"MainCurrent"];

    v44 = [v4 objectForKeyedSubscript:@"AuthFodStatus"];
    [v6 setObject:v44 forKeyedSubscript:@"AuthFodStatus"];

    v45 = [v4 objectForKeyedSubscript:@"InductiveCoexStatus"];
    [v6 setObject:v45 forKeyedSubscript:@"InductiveCoexStatus"];

    v46 = [v4 objectForKeyedSubscript:@"VMID"];
    [v6 setObject:v46 forKeyedSubscript:@"VMID"];

    v47 = [v4 objectForKeyedSubscript:@"PowerConverterStatus"];
    [v6 setObject:v47 forKeyedSubscript:@"PowerConverterStatus"];

    v48 = [v4 objectForKeyedSubscript:@"CommStatus"];
    [v6 setObject:v48 forKeyedSubscript:@"CommStatus"];

    v49 = [v4 objectForKeyedSubscript:@"SlowChargerReason"];
    [v6 setObject:v49 forKeyedSubscript:@"SlowChargerReason"];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v50 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v63 = 3221225472;
      v64 = __60__PLBatteryAgent_logEventPointChargingInfoWithChargingData___block_invoke;
      v65 = &__block_descriptor_40_e5_v8__0lu32l8;
      v66 = v50;
      if (qword_2811F3BE8 != -1)
      {
        dispatch_once(&qword_2811F3BE8, &block);
      }

      if (byte_2811F3A98 == 1)
      {
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Charging Data: %@", v4, block, v63, v64, v65, v66];
        v52 = MEMORY[0x277D3F178];
        v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v54 = [v53 lastPathComponent];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventPointChargingInfoWithChargingData:]"];
        [v52 logMessage:v51 fromFile:v54 fromFunction:v55 fromLineNumber:5289];

        v56 = PLLogCommon();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v68 = v51;
          _os_log_debug_impl(&dword_21A4C6000, v56, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (!self->_entryChargingOld || (-[PLBatteryAgent entryChargingOld](self, "entryChargingOld"), v57 = objc_claimAutoreleasedReturnValue(), v58 = [v6 compare:v57], v57, v58))
    {
      [(PLOperator *)self logEntry:v6];
    }

    [(PLBatteryAgent *)self setEntryChargingOld:v6];
    if ((self->_prevChargingState & 0x1B) != 0 || ([v6 objectForKeyedSubscript:@"DriverState"], v59 = objc_claimAutoreleasedReturnValue(), v60 = -[PLBatteryAgent driverActive:](self, "driverActive:", v59), v59, v60))
    {
      [(PLBatteryAgent *)self logChargingParametersToAggd:v4];
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PLBatteryAgent_logEventPointChargingInfoWithChargingData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A98 = result;
  return result;
}

- (BOOL)driverActive:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = v3 && [v3 intValue] == 3;

  return v5;
}

- (void)logChargingParametersToAggd:(id)a3
{
  v4 = a3;
  if (v4)
  {
    prevChargingState = self->_prevChargingState;
    if (prevChargingState == 8)
    {
      v6 = @"com.apple.power.state.b3.rectifierVoltage";
    }

    else
    {
      v6 = @"com.apple.power.state.rectifierVoltage";
    }

    if (prevChargingState == 8)
    {
      v7 = @"com.apple.power.state.b3.rectifierCurrent";
    }

    else
    {
      v7 = @"com.apple.power.state.rectifierCurrent";
    }

    v8 = objc_opt_new();
    v9 = [v4 objectForKeyedSubscript:@"Frequency"];

    if (v9)
    {
      if (prevChargingState == 8)
      {
        v10 = @"com.apple.power.state.b3.frequency";
      }

      else
      {
        v10 = @"com.apple.power.state.frequency";
      }

      v11 = [v4 objectForKeyedSubscript:@"Frequency"];
      [v11 doubleValue];
      v13 = v12;

      MEMORY[0x21CEDCD60](v10, v13);
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v8 setObject:v14 forKeyedSubscript:@"Frequency"];
    }

    v15 = [v4 objectForKeyedSubscript:@"RectifierCurrent"];

    if (v15)
    {
      v16 = [v4 objectForKeyedSubscript:@"RectifierCurrent"];
      [v16 doubleValue];
      v18 = v17;

      MEMORY[0x21CEDCD60](v7, v18);
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
      [v8 setObject:v19 forKeyedSubscript:@"RectifierCurrent"];
    }

    v20 = [v4 objectForKeyedSubscript:@"RectifierVoltage"];

    if (v20)
    {
      v21 = [v4 objectForKeyedSubscript:@"RectifierVoltage"];
      [v21 doubleValue];
      v23 = v22;

      MEMORY[0x21CEDCD60](v6, v23);
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
      [v8 setObject:v24 forKeyedSubscript:@"RectifierVoltage"];
    }

    if ([v8 count])
    {
      v25 = v8;
      AnalyticsSendEventLazy();
    }
  }
}

- (void)checkChargingInfoChange:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v4 objectForKey:@"AppleRawAdapterDetails"];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"FamilyCode"];

        if (v12)
        {
          v13 = [v11 objectForKeyedSubscript:@"FamilyCode"];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v14 = [(PLBatteryAgent *)self calculateConnectedState:v5];
  v15 = [(PLBatteryAgent *)self calculateChargingState:v4];
  v16 = [v4 objectForKeyedSubscript:@"ChargerData"];
  v17 = [(PLBatteryAgent *)self checkForPenaltyBox:v16];
  v18 = [MEMORY[0x277CBEAA8] monotonicDate];
  v19 = v18;
  if (v17)
  {
    if (self->_lastTimePenaltyBoxIntervalUpdated)
    {
      [v18 timeIntervalSinceDate:?];
      [(PLBatteryAgent *)self logPenaltyBoxDurationToAggd:?];
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    lastTimePenaltyBoxIntervalUpdated = self->_lastTimePenaltyBoxIntervalUpdated;
    self->_lastTimePenaltyBoxIntervalUpdated = v20;

    if (self->_inPenaltyBox)
    {
      v22 = v19;
    }

    else
    {
      if (!self->_lastTimeInPenaltyBox)
      {
        goto LABEL_20;
      }

      [v19 timeIntervalSinceDate:?];
      MEMORY[0x21CEDCD60](@"com.apple.power.state.penaltybox");
      AnalyticsSendEventLazy();
      v22 = 0;
    }

    lastTimeInPenaltyBox = self->_lastTimeInPenaltyBox;
    self->_lastTimeInPenaltyBox = v22;
  }

LABEL_20:
  if (v14 != self->_prevConnectedState || v15 != self->_prevChargingState)
  {
    if (self->_lastTimeChargingInfoUpdated)
    {
      [v19 timeIntervalSinceDate:?];
      [(PLBatteryAgent *)self logChargingTimeToAggd:?];
    }

    if (self->_lastTimePenaltyBoxIntervalUpdated)
    {
      [v19 timeIntervalSinceDate:?];
      [(PLBatteryAgent *)self logPenaltyBoxDurationToAggd:?];
      objc_storeStrong(&self->_lastTimePenaltyBoxIntervalUpdated, v19);
    }

    self->_prevConnectedState = v14;
    self->_prevChargingState = v15;
    objc_storeStrong(&self->_lastTimeChargingInfoUpdated, v19);
  }

LABEL_28:
  v24 = *MEMORY[0x277D85DE8];
}

id __42__PLBatteryAgent_checkChargingInfoChange___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setObject:&unk_282C12060 forKeyedSubscript:@"State"];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"Duration"];

  return v2;
}

- (BOOL)checkForPenaltyBox:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = [v4 objectForKeyedSubscript:@"NotChargingReason"];

  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [v5 objectForKeyedSubscript:@"NotChargingReason"];
  v8 = [v7 intValue];

  v9 = (v8 & 0x180) == 256;
  if (self->_inPenaltyBox != v9)
  {
    self->_inPenaltyBox = v9;
    v10 = 1;
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

- (void)logPenaltyBoxDurationToAggd:(double)a3
{
  prevConnectedState = self->_prevConnectedState;
  if (prevConnectedState > 4)
  {
    if (prevConnectedState <= 7)
    {
      if (prevConnectedState != 5 && prevConnectedState != 6 || self->_prevChargingState != 4)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (prevConnectedState != 8)
    {
      if (prevConnectedState == 12 && self->_prevChargingState == 4)
      {
        MEMORY[0x21CEDCD60](@"com.apple.power.state.f.penaltybox", a2, a3);
LABEL_16:
        v5 = @"com.apple.power.state.c.penaltybox";
        goto LABEL_24;
      }

LABEL_23:
      v5 = @"com.apple.power.state.d.penaltybox";
      goto LABEL_24;
    }

    if (self->_prevChargingState != 8)
    {
      goto LABEL_23;
    }

    MEMORY[0x21CEDCD60](@"com.apple.power.state.e.penaltybox", a2, a3);
LABEL_22:
    v5 = @"com.apple.power.state.b.penaltybox";
    goto LABEL_24;
  }

  if (prevConnectedState == 1)
  {
    if (self->_prevChargingState != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (prevConnectedState == 2)
  {
    if (self->_prevChargingState != 2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (prevConnectedState != 4 || self->_prevChargingState != 4)
  {
    goto LABEL_23;
  }

  v5 = @"com.apple.power.state.a.penaltybox";
LABEL_24:
  MEMORY[0x21CEDCD60](v5, a2, a3);
  AnalyticsSendEventLazy();
}

id __46__PLBatteryAgent_logPenaltyBoxDurationToAggd___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "prevConnectedState")}];
  [v2 setObject:v3 forKeyedSubscript:@"State"];

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v2 setObject:v4 forKeyedSubscript:@"Duration"];

  return v2;
}

- (void)logChargingTimeToAggd:(double)a3
{
  prevConnectedState = self->_prevConnectedState;
  if (prevConnectedState > 5)
  {
    if (prevConnectedState == 6)
    {
      if (self->_prevChargingState != 4)
      {
        return;
      }

      v4 = @"com.apple.power.state.c1.chargetime";
      goto LABEL_20;
    }

    if (prevConnectedState == 8)
    {
      if (self->_prevChargingState != 8)
      {
        return;
      }

      v4 = @"com.apple.power.state.b3.chargetime";
      goto LABEL_20;
    }

    if (prevConnectedState == 12 && self->_prevChargingState == 4)
    {
      v4 = @"com.apple.power.state.c3.chargetime";
      goto LABEL_20;
    }
  }

  else
  {
    if (prevConnectedState == 1)
    {
      if (self->_prevChargingState != 1)
      {
        return;
      }

      v4 = @"com.apple.power.state.b2.chargetime";
      goto LABEL_20;
    }

    if (prevConnectedState == 2)
    {
      if (self->_prevChargingState != 2)
      {
        return;
      }

      v4 = @"com.apple.power.state.b1.chargetime";
      goto LABEL_20;
    }

    if (prevConnectedState == 5 && self->_prevChargingState == 4)
    {
      v4 = @"com.apple.power.state.c2.chargetime";
LABEL_20:
      MEMORY[0x21CEDCD60]([MEMORY[0x277CCACA8] stringWithFormat:v4], a3);
      AnalyticsSendEventLazy();
    }
  }
}

id __40__PLBatteryAgent_logChargingTimeToAggd___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "prevConnectedState")}];
  [v2 setObject:v3 forKeyedSubscript:@"State"];

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v2 setObject:v4 forKeyedSubscript:@"Duration"];

  return v2;
}

- (int)calculateConnectedState:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) intValue];
        if (v9 <= -536723450)
        {
          if (v9 == -536723453)
          {
            v6 |= 2u;
            continue;
          }

          if (v9 == -536723450)
          {
            v6 |= 1u;
            continue;
          }
        }

        else
        {
          switch(v9)
          {
            case -536723449:
              v6 |= 8u;
              continue;
            case -536723448:
              v6 |= 0x10u;
              continue;
            case 0:
              continue;
          }
        }

        v6 |= 4u;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v5)
      {
        goto LABEL_22;
      }
    }
  }

  v6 = 0;
LABEL_22:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)calculateChargingState:(id)a3
{
  v3 = [a3 objectForKey:@"AdapterDetails"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"FamilyCode"];
    v6 = [v5 intValue];

    if (v6 <= -536723450)
    {
      if (v6 == -536723453)
      {
        v6 = 2;
      }

      else
      {
        if (v6 != -536723450)
        {
LABEL_14:
          v6 = 4;
          goto LABEL_15;
        }

        v6 = 1;
      }
    }

    else if (v6 == -536723449)
    {
      v6 = 8;
    }

    else if (v6 == -536723448)
    {
      v6 = 16;
    }

    else if (v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = -1;
  }

LABEL_15:

  return v6;
}

- (void)logEventForwardCalibration0withData:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "calibration data %@", &v13, 0xCu);
    }

    v6 = [v4 objectForKeyedSubscript:@"baseline"];

    v7 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BatteryCalibration0Baseline"];
    v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v6];
    v9 = [v6 objectForKeyedSubscript:@"Battery Service State"];
    [v8 setObject:v9 forKeyedSubscript:@"batteryServiceRecommended"];

    v10 = [v6 objectForKeyedSubscript:@"Maximum Capacity Percent"];
    [v8 setObject:v10 forKeyedSubscript:@"MaximumCapacityPercent"];

    v11 = [v6 objectForKeyedSubscript:@"Battery Service Flags"];
    [v8 setObject:v11 forKeyedSubscript:@"batteryServiceFlags"];

    [(PLOperator *)self logEntry:v8];
    [(PLBatteryAgent *)self logBaselineToAggD:v8];
    [(PLBatteryAgent *)self logBaselineToCA:v8];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13) = 0;
    _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "failed to read calibration data", &v13, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardCalibration0InfowithData:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v40 = 138412290;
      v41 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "calibration0Info data %@", &v40, 0xCu);
    }

    v6 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Calibration0Info"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    v8 = [v4 objectForKeyedSubscript:@"status0"];

    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:@"status0"];
      v10 = [v9 objectForKeyedSubscript:@"correction"];
      [v7 setObject:v10 forKeyedSubscript:@"status0correction"];

      v11 = [v4 objectForKeyedSubscript:@"status0"];
      v12 = [v11 objectForKeyedSubscript:@"status"];
      [v7 setObject:v12 forKeyedSubscript:@"status0status"];

      v13 = MEMORY[0x277CCABB0];
      v14 = [v4 objectForKeyedSubscript:@"status0"];
      v15 = [v14 objectForKeyedSubscript:@"epoch"];
      [v15 doubleValue];
      v17 = [v13 numberWithDouble:round(v16 / 1800.0) * 3600.0];
      [v7 setObject:v17 forKeyedSubscript:@"status0epoch"];
    }

    v18 = [v4 objectForKeyedSubscript:@"status1"];

    if (v18)
    {
      v19 = [v4 objectForKeyedSubscript:@"status1"];
      v20 = [v19 objectForKeyedSubscript:@"correction"];
      [v7 setObject:v20 forKeyedSubscript:@"status1correction"];

      v21 = [v4 objectForKeyedSubscript:@"status1"];
      v22 = [v21 objectForKeyedSubscript:@"status"];
      [v7 setObject:v22 forKeyedSubscript:@"status1status"];

      v23 = MEMORY[0x277CCABB0];
      v24 = [v4 objectForKeyedSubscript:@"status1"];
      v25 = [v24 objectForKeyedSubscript:@"epoch"];
      [v25 doubleValue];
      v27 = [v23 numberWithDouble:round(v26 / 1800.0) * 3600.0];
      [v7 setObject:v27 forKeyedSubscript:@"status1epoch"];
    }

    v28 = [v4 objectForKeyedSubscript:@"postCalibrationSnapshot"];

    if (v28)
    {
      v29 = [v4 objectForKeyedSubscript:@"postCalibrationSnapshot"];
      v30 = [v29 objectForKeyedSubscript:@"ncc"];
      [v7 setObject:v30 forKeyedSubscript:@"ncc"];

      v31 = [v4 objectForKeyedSubscript:@"postCalibrationSnapshot"];
      v32 = [v31 objectForKeyedSubscript:@"nccAlt"];
      [v7 setObject:v32 forKeyedSubscript:@"nccAlt"];

      v33 = [v4 objectForKeyedSubscript:@"postCalibrationSnapshot"];
      v34 = [v33 objectForKeyedSubscript:@"Battery Service State"];
      [v7 setObject:v34 forKeyedSubscript:@"batteryServiceRecommended"];

      v35 = [v4 objectForKeyedSubscript:@"postCalibrationSnapshot"];
      v36 = [v35 objectForKeyedSubscript:@"Maximum Capacity Percent"];
      [v7 setObject:v36 forKeyedSubscript:@"MaximumCapacityPercent"];

      v37 = [v4 objectForKeyedSubscript:@"postCalibrationSnapshot"];
      v38 = [v37 objectForKeyedSubscript:@"Battery Service Flags"];
      [v7 setObject:v38 forKeyedSubscript:@"batteryServiceFlags"];
    }

    [(PLOperator *)self logEntry:v7];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v40) = 0;
    _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "failed to read calibration0Info data", &v40, 2u);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardUPOStepperWithPayload:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v6 = [(PLOperator *)PLBatteryAgent entryKeyForType:v4 andName:@"UPOStepper"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:v5];

  v8 = [v7 objectForKeyedSubscript:@"RAv"];
  [v8 intValue];
  ADClientSetValueForScalarKey();

  v9 = [v7 objectForKeyedSubscript:@"VirtualRADelta"];
  [v9 intValue];
  ADClientSetValueForScalarKey();

  v10 = [v7 objectForKeyedSubscript:@"MitigationState"];
  [v10 intValue];
  ADClientSetValueForScalarKey();

  v11 = [v7 objectForKeyedSubscript:@"RAvTimeWindow"];
  [v11 intValue];
  ADClientSetValueForScalarKey();

  v14 = v7;
  v12 = v7;
  AnalyticsSendEventLazy();
  [(PLOperator *)self logEntry:v12];
  v13 = [(PLOperator *)self storage];
  [v13 flushCachesWithReason:@"UPOStepper"];
}

id __55__PLBatteryAgent_logEventForwardUPOStepperWithPayload___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CCABB0];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"RAv"];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "intValue")}];
  [v2 setObject:v5 forKeyedSubscript:@"RAv"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"RAv"];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "intValue")}];
  [v2 setObject:v8 forKeyedSubscript:@"VirtualRaDelta"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) objectForKeyedSubscript:@"MitigationState"];
  v11 = [v9 numberWithInt:{objc_msgSend(v10, "intValue")}];
  [v2 setObject:v11 forKeyedSubscript:@"MitigationState"];

  v12 = MEMORY[0x277CCABB0];
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"RAvTimeWindow"];
  v14 = [v12 numberWithInt:{objc_msgSend(v13, "intValue")}];
  [v2 setObject:v14 forKeyedSubscript:@"RAvTimeWindow"];

  return v2;
}

- (void)createFixedChargingIntervals:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v20[0] = 67109376;
    v20[1] = [(PLBatteryAgent *)self smartChargingEngaged];
    v21 = 1024;
    v22 = [(PLBatteryAgent *)self fixedChargingEngaged];
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Smart Charging: %d, Fixed Charging: %d", v20, 0xEu);
  }

  if (![MEMORY[0x277D3F1B8] hasFixedChargingLimit])
  {
    if ([(PLBatteryAgent *)self fixedChargingEngaged])
    {
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Fixed Charging true for unsupported device", v20, 2u);
      }
    }

    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "Unsupported device, just update OBC interval", v20, 2u);
    }

    v12 = [(PLBatteryAgent *)self smartChargingEngaged];
    v8 = [v4 entryDate];
    v13 = self;
    v14 = v12;
    goto LABEL_24;
  }

  if (![(PLBatteryAgent *)self smartChargingEngaged]|| ![(PLBatteryAgent *)self fixedChargingEngaged])
  {
    if ([(PLBatteryAgent *)self smartChargingEngaged]&& ![(PLBatteryAgent *)self fixedChargingEngaged])
    {
      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20[0]) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "Open only OBC interval, close fixed", v20, 2u);
      }

      v18 = [v4 entryDate];
      [(PLBatteryAgent *)self updateIntervalForType:8 withState:0 andTime:v18];

      v8 = [v4 entryDate];
      v13 = self;
      v14 = 1;
    }

    else
    {
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20[0]) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Close fixed and OBC intervals", v20, 2u);
      }

      v16 = [v4 entryDate];
      [(PLBatteryAgent *)self updateIntervalForType:8 withState:0 andTime:v16];

      v8 = [v4 entryDate];
      v13 = self;
      v14 = 0;
    }

LABEL_24:
    [(PLBatteryAgent *)v13 updateIntervalForType:2 withState:v14 andTime:v8];
    goto LABEL_25;
  }

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20[0]) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Open only fixed interval, close OBC", v20, 2u);
  }

  v7 = [v4 entryDate];
  [(PLBatteryAgent *)self updateIntervalForType:2 withState:0 andTime:v7];

  v8 = [v4 entryDate];
  v9 = [v4 objectForKeyedSubscript:@"chargeLimitTargetSoC"];
  [(PLBatteryAgent *)self updateIntervalForType:8 withState:1 andTime:v8 selectedChargedLimit:v9];

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

id __71__PLBatteryAgent_logEventForwardMitigationStateWithState_userDisabled___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"MitigationState"];

  return v2;
}

- (void)logEventForwardSmartChargingWithPayload:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SmartCharging"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
    v7 = [v6 objectForKeyedSubscript:@"decisionTime"];
    if (v7)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [v6 objectForKeyedSubscript:@"decisionTime"];
      v10 = [v9 convertFromSystemToMonotonic];
      [v10 timeIntervalSince1970];
      v12 = [v8 numberWithInt:v11];
      [v6 setObject:v12 forKeyedSubscript:@"decisionTime"];
    }

    else
    {
      [v6 setObject:&unk_282C11F10 forKeyedSubscript:@"decisionTime"];
    }

    v13 = [v4 objectForKeyedSubscript:@"engagementProbability"];
    if (v13)
    {
      v14 = [v4 objectForKeyedSubscript:@"engagementProbability"];
      if (objc_opt_respondsToSelector())
      {
        v15 = MEMORY[0x277CCABB0];
        v16 = [v4 objectForKeyedSubscript:@"engagementProbability"];
        [v16 doubleValue];
        v18 = [v15 numberWithInt:(v17 * 100.0)];
        [v6 setObject:v18 forKeyedSubscript:@"engagementProbability"];
      }

      else
      {
        [v6 setObject:&unk_282C11F10 forKeyedSubscript:@"engagementProbability"];
      }
    }

    else
    {
      [v6 setObject:&unk_282C11F10 forKeyedSubscript:@"engagementProbability"];
    }

    v19 = [v4 objectForKeyedSubscript:@"durationPrediction"];
    if (v19)
    {
      v20 = [v4 objectForKeyedSubscript:@"durationPrediction"];
      if (objc_opt_respondsToSelector())
      {
        v21 = MEMORY[0x277CCABB0];
        v22 = [v4 objectForKeyedSubscript:@"durationPrediction"];
        [v22 doubleValue];
        v24 = [v21 numberWithInt:(v23 * 10.0)];
        [v6 setObject:v24 forKeyedSubscript:@"durationPrediction"];
      }

      else
      {
        [v6 setObject:&unk_282C11F10 forKeyedSubscript:@"durationPrediction"];
      }
    }

    else
    {
      [v6 setObject:&unk_282C11F10 forKeyedSubscript:@"durationPrediction"];
    }

    v25 = [v4 objectForKeyedSubscript:@"state"];
    [v6 setObject:v25 forKeyedSubscript:@"state"];

    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEFAULT, "Logging smart charging", &v38, 2u);
    }

    [(PLOperator *)self logEntry:v6];
    v27 = [v4 objectForKeyedSubscript:@"isManuallyChargeLimited"];
    [v6 setObject:v27 forKeyedSubscript:@"isFixed"];

    v28 = [v6 objectForKeyedSubscript:@"isEngaged"];
    -[PLBatteryAgent setSmartChargingEngaged:](self, "setSmartChargingEngaged:", [v28 BOOLValue]);

    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [(PLBatteryAgent *)self smartChargingEngaged];
      v38 = 67109120;
      v39 = v30;
      _os_log_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_INFO, "Smart Charging State: %d", &v38, 8u);
    }

    v31 = [v6 objectForKeyedSubscript:@"isFixed"];
    -[PLBatteryAgent setFixedChargingEngaged:](self, "setFixedChargingEngaged:", [v31 intValue] == 1);

    v32 = PLLogCommon();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [v6 objectForKeyedSubscript:@"isFixed"];
      v34 = [v33 intValue];
      v38 = 67109120;
      v39 = v34;
      _os_log_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_INFO, "Fixed limit enum: %d", &v38, 8u);
    }

    v35 = PLLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [(PLBatteryAgent *)self fixedChargingEngaged];
      v38 = 67109120;
      v39 = v36;
      _os_log_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_INFO, "Fixed limit State: %d", &v38, 8u);
    }

    [(PLBatteryAgent *)self createFixedChargingIntervals:v6];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardCleanEnergyChargingWithPayload:(id)a3
{
  if (a3)
  {
    v4 = *MEMORY[0x277D3F5D0];
    v5 = a3;
    v6 = [(PLOperator *)PLBatteryAgent entryKeyForType:v4 andName:@"CleanEnergyCharging"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:v5];

    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, "Logging clean charging", v12, 2u);
    }

    [(PLOperator *)self logEntry:v7];
    v9 = [v7 objectForKeyedSubscript:@"isPaused"];
    -[PLBatteryAgent setCleanEnergyChargingEngaged:](self, "setCleanEnergyChargingEngaged:", [v9 BOOLValue]);

    v10 = [(PLBatteryAgent *)self cleanEnergyChargingEngaged];
    v11 = [v7 entryDate];
    [(PLBatteryAgent *)self updateIntervalForType:7 withState:v10 andTime:v11];
  }
}

- (void)logEventForwardMobileChargeMode:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLBatteryAgent entryKeyForType:v4 andName:@"MobileChargeMode"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardTrustedBatteryHealth
{
  cf = 0;
  if (IOPSCopyPowerSourcesByTypePrecise())
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_ERROR, "Failed to retrieve power sources Internal.", v3, 2u);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (id)dateNoEarlierThan:(unint64_t)a3 since:(id)a4 withDelta:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  [v7 timeIntervalSinceDate:v8];
  if ((v9 / 86400.0) <= a3)
  {
    v12 = v8;
  }

  else
  {
    v10 = (a3 * 86400.0);
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16[0] = 67109120;
      v16[1] = v10;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "offset of day to go backward is %d", v16, 8u);
    }

    v12 = [v7 dateByAddingTimeInterval:-v10];
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)logEventBackwardHeatMap
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)self workQueue];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke;
  block[8] = &unk_27825C7A0;
  block[9] = self;
  v4 = IOPMCopyBatteryHeatMap();

  if (v4 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F3BF0 != -1)
    {
      dispatch_once(&qword_2811F3BF0, block);
    }

    if (byte_2811F3A99 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ChargingA Heat Map Error: %x", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventBackwardHeatMap]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:5874];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = [(PLOperator *)self workQueue];
  v32[5] = MEMORY[0x277D85DD0];
  v32[6] = 3221225472;
  v32[7] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_4180;
  v32[8] = &unk_27825C7A0;
  v32[9] = self;
  v13 = IOPMCopyBatteryHeatMap();

  if (v13 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2_4183;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v14;
    if (qword_2811F3BF8 != -1)
    {
      dispatch_once(&qword_2811F3BF8, v32);
    }

    if (byte_2811F3A9A == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ChargingB Heat Map Error: %x", v13];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventBackwardHeatMap]"];
      [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:5880];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v21 = [(PLOperator *)self workQueue];
  v31[5] = MEMORY[0x277D85DD0];
  v31[6] = 3221225472;
  v31[7] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_4187;
  v31[8] = &unk_27825C7A0;
  v31[9] = self;
  v22 = IOPMCopyBatteryHeatMap();

  if (v22 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v23 = objc_opt_class();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2_4190;
    v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v31[4] = v23;
    if (qword_2811F3C00 != -1)
    {
      dispatch_once(&qword_2811F3C00, v31);
    }

    if (byte_2811F3A9B == 1)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Discharging Heat Map Error: %x", v22];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v27 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventBackwardHeatMap]"];
      [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:5886];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v24;
        _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) logEventBackwardHeatMapCallback:a2 andHeatMapType:0];
}

uint64_t __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A99 = result;
  return result;
}

void __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_4180(uint64_t a1, void *a2)
{
  [*(a1 + 32) logEventBackwardHeatMapCallback:a2 andHeatMapType:1];
}

uint64_t __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2_4183(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A9A = result;
  return result;
}

void __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_4187(uint64_t a1, void *a2)
{
  [*(a1 + 32) logEventBackwardHeatMapCallback:a2 andHeatMapType:2];
}

uint64_t __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2_4190(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A9B = result;
  return result;
}

- (void)logEventBackwardHeatMapCallback:(id)a3 andHeatMapType:(int64_t)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"batteryHeatMapData"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"HeatMapType"];
    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"HeatMapType"];
      v9 = [v8 intValue];
    }

    else
    {
      v9 = 0;
    }

    v10 = &unk_282C156C0;
    if (v9 == 1)
    {
      v10 = &unk_282C156A8;
    }

    v48 = v10;
    if (v9 == 1)
    {
      v11 = @"SoC";
    }

    else
    {
      v11 = @"voltage";
    }

    if (v9 == 1)
    {
      v12 = @"com.apple.power.battery.heatmap.soc";
    }

    else
    {
      v12 = @"com.apple.power.battery.heatmap.voltage";
    }

    v49 = v12;
    v50 = v11;
    v46 = [MEMORY[0x277CBEAA8] monotonicDate];
    if (a4 > 2)
    {
      v47 = 0;
      v44 = 0;
    }

    else
    {
      v47 = off_278260F58[a4];
      v44 = off_278260F70[a4];
    }

    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v54 = 0u;
    v38 = v6;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v55;
      v43 = *MEMORY[0x277D3F5C8];
      v39 = *v55;
      v40 = v13;
      do
      {
        v17 = 0;
        v41 = v15;
        do
        {
          if (*v55 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v42 = v17;
          v18 = *(*(&v54 + 1) + 8 * v17);
          v19 = [&unk_282C15678 indexOfObject:v18];
          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = v19;
            v21 = [v13 objectForKey:v18];
            for (i = 0; i != 25; ++i)
            {
              v23 = [v21 objectAtIndex:i];
              v24 = [v23 intValue];

              if (v24)
              {
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __65__PLBatteryAgent_logEventBackwardHeatMapCallback_andHeatMapType___block_invoke;
                block[3] = &unk_27825B7C8;
                v52 = @"forceLogBatteryHeatmap";
                v53 = 0;
                if (qword_2811F3C08 != -1)
                {
                  dispatch_once(&qword_2811F3C08, block);
                }

                v25 = byte_2811F3A9C;

                if (([MEMORY[0x277D3F180] taskMode] & 1) != 0 || v25)
                {
                  v26 = [(PLOperator *)PLBatteryAgent entryKeyForType:v43 andName:v44];
                  v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v26];
                  [v27 setEntryDate:v46];
                  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
                  [v27 setObject:v28 forKeyedSubscript:@"Temperature"];

                  v29 = [MEMORY[0x277CCABB0] numberWithInt:i];
                  [v27 setObject:v29 forKeyedSubscript:@"Bin"];

                  v30 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
                  [v27 setObject:v30 forKeyedSubscript:@"HeatMapType"];

                  v31 = [MEMORY[0x277CCABB0] numberWithInt:v24];
                  [v27 setObject:v31 forKeyedSubscript:@"TimeInMinutes"];

                  [(PLOperator *)self logEntry:v27];
                }

                v32 = PLLogCommon();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v59 = v49;
                  v60 = 2112;
                  v61 = v50;
                  _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "Sending CA event %@ with field %@", buf, 0x16u);
                }

                AnalyticsSendEventLazy();
                v33 = MEMORY[0x277CCACA8];
                v34 = [&unk_282C15690 objectAtIndexedSubscript:v20];
                v35 = [v48 objectAtIndexedSubscript:i];
                v36 = [v33 stringWithFormat:@"%@.%@.%@", v47, v34, v35];

                ADClientSetValueForScalarKey();
              }
            }

            v13 = v40;
            v15 = v41;
            v16 = v39;
          }

          v17 = v42 + 1;
        }

        while (v42 + 1 != v15);
        v15 = [v13 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v15);
    }

    v6 = v38;
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PLBatteryAgent_logEventBackwardHeatMapCallback_andHeatMapType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  byte_2811F3A9C = result;
  return result;
}

id __65__PLBatteryAgent_logEventBackwardHeatMapCallback_andHeatMapType___block_invoke_4443(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"action"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"temperature"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  [v2 setObject:v5 forKeyedSubscript:*(a1 + 32)];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 68)];
  [v2 setObject:v6 forKeyedSubscript:@"timeSpent"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  [v2 setObject:v7 forKeyedSubscript:@"version"];

  return v2;
}

- (void)logEventBackwardKioskMode
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)self workQueue];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __43__PLBatteryAgent_logEventBackwardKioskMode__block_invoke;
  block[8] = &unk_27825C7A0;
  block[9] = self;
  v4 = IOPMCopyKioskModeData();

  if (v4 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLBatteryAgent_logEventBackwardKioskMode__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F3C10 != -1)
    {
      dispatch_once(&qword_2811F3C10, block);
    }

    if (byte_2811F3A9D == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Kiosk Mode Lifetime Data Error: %x", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventBackwardKioskMode]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:6006];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __43__PLBatteryAgent_logEventBackwardKioskMode__block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) logEventBackwardKioskModeCallback:a2];
}

uint64_t __43__PLBatteryAgent_logEventBackwardKioskMode__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A9D = result;
  return result;
}

- (void)logEventBackwardKioskModeCallback:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"batteryKioskModeData"];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __52__PLBatteryAgent_logEventBackwardKioskModeCallback___block_invoke;
      v18 = &__block_descriptor_40_e5_v8__0lu32l8;
      v19 = v5;
      if (qword_2811F3C18 != -1)
      {
        dispatch_once(&qword_2811F3C18, &block);
      }

      if (byte_2811F3A9E == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Kiosk Mode callback: %@", v4, block, v16, v17, v18, v19];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventBackwardKioskModeCallback:]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:6015];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v4)
    {
      v12 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"KioskMode"];
      v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12 withRawData:v4];
      [(PLOperator *)self logEntry:v13];
      [(PLBatteryAgent *)self logKioskModeEntryToCA:v13];
      [(PLBatteryAgent *)self logKioskModeEntryToAggd:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLBatteryAgent_logEventBackwardKioskModeCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A9E = result;
  return result;
}

- (void)logEventBackwardBattery
{
  v5 = [(PLBatteryAgent *)self iokitPowerSource];
  v3 = [v5 properties];
  v4 = [(PLBatteryAgent *)self logEventBackwardBatteryWithRawData:v3];
}

- (void)logBatteryEntry:(id)a3
{
  v4 = a3;
  v6 = [v4 dictionary];
  v5 = [v4 entryDate];

  [(PLOperator *)self logForSubsystem:@"BatteryMetrics" category:@"Battery" data:v6 date:v5];
}

- (id)logEventBackwardBatteryWithRawData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v16 = 0;
    goto LABEL_92;
  }

  v5 = [[PLEventBackwardBatteryEntry alloc] initEntryWithRawData:v4];
  v6 = [(PLBatteryAgent *)self presentMaxRaFromRawData:v4];
  v127 = v6;
  if (v6)
  {
    v7 = v6;
    if ([v6 intValue] >= 1 && objc_msgSend(v7, "intValue") != self->_presentMaxRa)
    {
      [v5 setObject:v7 forKeyedSubscript:@"PresentMaxRa0-8"];
      self->_presentMaxRa = [v7 intValue];
      v8 = [v4 objectForKey:@"BatteryData"];
      if (v8)
      {
        v9 = v8;
        v10 = [v4 objectForKey:@"BatteryData"];
        v11 = [v10 objectForKey:@"LifetimeData"];

        if (v11)
        {
          v12 = [v11 objectForKeyedSubscript:@"MaximumRa0-8"];
          v13 = v12;
          lifetimeMaxRa = self->_lifetimeMaxRa;
          v15 = lifetimeMaxRa != -1;
          if (lifetimeMaxRa == -1 || v12 && [v12 intValue] != self->_lifetimeMaxRa)
          {
            self->_lifetimeMaxRa = [v13 intValue];
          }

          else
          {
            v15 = 0;
          }

          v17 = [MEMORY[0x277CCABB0] numberWithBool:v15];
          [v5 setObject:v17 forKeyedSubscript:@"LifetimeMaxRa0-8Updated"];
        }
      }
    }
  }

  v18 = [v5 objectForKeyedSubscript:@"ChemicalWeightedRa"];
  if (v18 && (v19 = v18, [v5 objectForKeyedSubscript:@"ChemicalWeightedRa"], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "intValue"), v22 = self->_presentChemicalWeightedRa, v20, v19, v21 == v22))
  {
    [v5 setObject:0 forKeyedSubscript:@"ChemicalWeightedRa"];
    v23 = 0;
  }

  else
  {
    v24 = [v5 objectForKeyedSubscript:@"ChemicalWeightedRa"];
    self->_presentChemicalWeightedRa = [v24 intValue];

    presentChemicalWeightedRa = self->_presentChemicalWeightedRa;
    ADClientSetValueForScalarKey();
    v26 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLBatteryAgent presentChemicalWeightedRa](self, "presentChemicalWeightedRa")}];
    v27 = [(PLBatteryAgent *)self lastBatteryConfigEntry];
    [v27 setObject:v26 forKeyedSubscript:@"ChemicalWeightedRa"];

    v23 = 1;
  }

  v28 = [v5 objectForKeyedSubscript:@"WeightedRa"];
  if (v28 && (v29 = v28, [v5 objectForKeyedSubscript:@"WeightedRa"], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "intValue"), v32 = self->_presentWeightedRa, v30, v29, v31 == v32))
  {
    [v5 setObject:0 forKeyedSubscript:@"WeightedRa"];
  }

  else
  {
    v33 = [v5 objectForKeyedSubscript:@"WeightedRa"];
    self->_presentWeightedRa = [v33 intValue];

    presentWeightedRa = self->_presentWeightedRa;
    ADClientSetValueForScalarKey();
    v35 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLBatteryAgent presentWeightedRa](self, "presentWeightedRa")}];
    v36 = [(PLBatteryAgent *)self lastBatteryConfigEntry];
    [v36 setObject:v35 forKeyedSubscript:@"WeightedRa"];

    v23 = 1;
  }

  v37 = [v5 objectForKeyedSubscript:@"BatteryHealthMetric"];
  if (v37 && (v38 = v37, [v5 objectForKeyedSubscript:@"BatteryHealthMetric"], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "intValue"), v41 = self->_presentBatteryHealthMetric, v39, v38, v40 == v41))
  {
    [v5 setObject:0 forKeyedSubscript:@"BatteryHealthMetric"];
  }

  else
  {
    v42 = [v5 objectForKeyedSubscript:@"BatteryHealthMetric"];
    self->_presentBatteryHealthMetric = [v42 intValue];

    presentBatteryHealthMetric = self->_presentBatteryHealthMetric;
    ADClientSetValueForScalarKey();
  }

  v44 = [v5 objectForKeyedSubscript:@"PeakPerformanceCapacity"];
  if (!v44 || (v45 = v44, [v5 objectForKeyedSubscript:@"PeakPerformanceCapacity"], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "intValue"), v48 = self->_presentPeakPerformanceCapacity, v46, v45, v47 != v48))
  {
    v49 = [v5 objectForKeyedSubscript:@"PeakPerformanceCapacity"];
    self->_presentPeakPerformanceCapacity = [v49 intValue];

    presentPeakPerformanceCapacity = self->_presentPeakPerformanceCapacity;
    ADClientSetValueForScalarKey();
    if (!v23)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  [v5 setObject:0 forKeyedSubscript:@"PeakPerformanceCapacity"];
  if (v23)
  {
LABEL_31:
    v51 = [(PLBatteryAgent *)self lastBatteryConfigEntry];
    [(PLBatteryAgent *)self logBatteryConfigToCA:v51];
  }

LABEL_32:
  v52 = [v5 objectForKeyedSubscript:@"OCVCount"];
  if (v52 && (v53 = v52, [v5 objectForKeyedSubscript:@"OCVCount"], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "intValue"), presentOCVCount = self->_presentOCVCount, v54, v53, v55 == presentOCVCount))
  {
    [v5 setObject:0 forKeyedSubscript:@"OCVCount"];
  }

  else
  {
    v57 = [v5 objectForKeyedSubscript:@"OCVCount"];
    self->_presentOCVCount = [v57 intValue];
  }

  v58 = [v5 objectForKeyedSubscript:@"OCV"];
  if (v58 && (v59 = v58, [v5 objectForKeyedSubscript:@"OCV"], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "intValue"), presentOCV = self->_presentOCV, v60, v59, v61 == presentOCV))
  {
    [v5 setObject:0 forKeyedSubscript:@"OCV"];
  }

  else
  {
    v63 = [v5 objectForKeyedSubscript:@"OCV"];
    self->_presentOCV = [v63 intValue];
  }

  v64 = [v5 objectForKeyedSubscript:@"RaUpdateDisqualified"];
  if (v64 && (v65 = v64, [v5 objectForKeyedSubscript:@"RaUpdateDisqualified"], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "intValue"), presentRaUpdateDisqualified = self->_presentRaUpdateDisqualified, v66, v65, v67 == presentRaUpdateDisqualified))
  {
    [v5 setObject:0 forKeyedSubscript:@"RaUpdateDisqualified"];
  }

  else
  {
    v69 = [v5 objectForKeyedSubscript:@"RaUpdateDisqualified"];
    self->_presentRaUpdateDisqualified = [v69 intValue];
  }

  v70 = [v5 objectForKeyedSubscript:@"QmaxUpdateDisqualified"];
  if (v70 && (v71 = v70, [v5 objectForKeyedSubscript:@"QmaxUpdateDisqualified"], v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "intValue"), presentQmaxUpdateDisqualified = self->_presentQmaxUpdateDisqualified, v72, v71, v73 == presentQmaxUpdateDisqualified))
  {
    [v5 setObject:0 forKeyedSubscript:@"QmaxUpdateDisqualified"];
  }

  else
  {
    v75 = [v5 objectForKeyedSubscript:@"QmaxUpdateDisqualified"];
    self->_presentQmaxUpdateDisqualified = [v75 intValue];
  }

  v76 = [v5 objectForKeyedSubscript:@"TimeSinceLastOCV"];
  if (v76 && (v77 = v76, [v5 objectForKeyedSubscript:@"TimeSinceLastOCV"], v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v78, "intValue"), presentTimeSinceLastOCV = self->_presentTimeSinceLastOCV, v78, v77, v79 == presentTimeSinceLastOCV))
  {
    [v5 setObject:0 forKeyedSubscript:@"TimeSinceLastOCV"];
  }

  else
  {
    v81 = [v5 objectForKeyedSubscript:@"TimeSinceLastOCV"];
    self->_presentTimeSinceLastOCV = [v81 intValue];
  }

  v82 = [v5 objectForKeyedSubscript:@"ITMiscStatus"];
  v83 = [(PLBatteryAgent *)self parseITMiscStatusCounters:v82];
  if (v83)
  {
    v84 = [(PLBatteryAgent *)self lastITMiscStatus];

    if (v84)
    {
      v85 = objc_opt_new();
      v149[0] = MEMORY[0x277D85DD0];
      v149[1] = 3221225472;
      v149[2] = __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke;
      v149[3] = &unk_27825B610;
      v149[4] = self;
      v86 = v85;
      v150 = v86;
      [v83 enumerateKeysAndObjectsUsingBlock:v149];
      if ([v86 count])
      {
        v144 = MEMORY[0x277D85DD0];
        v145 = 3221225472;
        v146 = __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke_2;
        v147 = &unk_278259D58;
        v148 = v86;
        AnalyticsSendEventLazy();
      }
    }

    [(PLBatteryAgent *)self setLastITMiscStatus:v83];
  }

  v87 = [v5 objectForKeyedSubscript:@"BatteryCellDisconnectCount"];

  if (v87)
  {
    v88 = [(PLBatteryAgent *)self prevBatteryCellDisconnectCount];
    if (!v88)
    {
      goto LABEL_61;
    }

    v89 = v88;
    v90 = [(PLBatteryAgent *)self prevBatteryCellDisconnectCount];
    v91 = [v5 objectForKeyedSubscript:@"BatteryCellDisconnectCount"];

    if (v90 != v91)
    {
LABEL_61:
      v92 = [v5 objectForKeyedSubscript:@"BatteryCellDisconnectCount"];
      [v92 intValue];
      ADClientSetValueForScalarKey();

      v139 = MEMORY[0x277D85DD0];
      v140 = 3221225472;
      v141 = __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke_3;
      v142 = &unk_278259D58;
      v143 = v5;
      AnalyticsSendEventLazy();
    }

    v93 = [v5 objectForKeyedSubscript:@"BatteryCellDisconnectCount"];
    [(PLBatteryAgent *)self setPrevBatteryCellDisconnectCount:v93];
  }

  v94 = [v5 objectForKeyedSubscript:@"GaugeResetCounter"];

  if (v94)
  {
    v95 = [v5 objectForKeyedSubscript:@"GaugeResetCounter"];
    v96 = [v95 intValue];

    v97 = [(PLBatteryAgent *)self prevGGResetCount];

    if (v97)
    {
      v98 = [(PLBatteryAgent *)self prevGGResetCount];
      v99 = [v98 intValue];
    }

    else
    {
      v98 = +[PLEventBackwardBatteryEntry entryKey];
      v100 = [(PLOperator *)self storage];
      v101 = [v100 lastEntryForKey:v98];

      if (v101)
      {
        v99 = [v101 objectForKeyedSubscript:@"GaugeResetCounter"];

        if (v99)
        {
          v102 = [v101 objectForKeyedSubscript:@"GaugeResetCounter"];
          v99 = [v102 intValue];
        }
      }

      else
      {
        v99 = 0;
      }
    }

    v103 = (v96 - v99);
    if (v103 >= 1)
    {
      MEMORY[0x21CEDCD40](@"com.apple.power.battery.GaugeResetCounter", v103);
      v134 = MEMORY[0x277D85DD0];
      v135 = 3221225472;
      v136 = __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke_4;
      v137 = &__block_descriptor_36_e19___NSDictionary_8__0l;
      v138 = v103;
      AnalyticsSendEventLazy();
      v104 = [v5 objectForKeyedSubscript:@"GaugeResetCounter"];
      [(PLBatteryAgent *)self setPrevGGResetCount:v104];
    }

    v105 = [(PLBatteryAgent *)self prevGGResetCount];

    if (!v105)
    {
      v106 = [MEMORY[0x277CCABB0] numberWithInt:v99];
      [(PLBatteryAgent *)self setPrevGGResetCount:v106];
    }
  }

  v107 = [v5 objectForKeyedSubscript:@"DOD0"];

  if (v107)
  {
    v108 = [v5 objectForKeyedSubscript:@"DOD0"];
    v109 = [v108 intValue];

    v110 = [(PLBatteryAgent *)self lastDOD0];
    if (v110)
    {
      v111 = v110;
      v112 = [(PLBatteryAgent *)self lastDOD0];
      v113 = [v112 intValue];

      if (v113 != v109)
      {
        MEMORY[0x21CEDCD40](@"com.apple.power.battery.DOD0Updated", 1);
        AnalyticsSendEventLazy();
      }
    }

    v114 = [MEMORY[0x277CCABB0] numberWithInt:v109];
    [(PLBatteryAgent *)self setLastDOD0:v114];
  }

  v115 = [v5 objectForKeyedSubscript:@"VacVoltageLimit"];

  if (v115)
  {
    v116 = [v5 objectForKeyedSubscript:@"VacVoltageLimit"];
    v117 = [v116 intValue];

    v118 = [(PLBatteryAgent *)self lastVacVoltageLimit];
    if (v118)
    {
      v119 = v118;
      v120 = [(PLBatteryAgent *)self lastVacVoltageLimit];
      v121 = [v120 intValue];

      if (v121 != v117)
      {
        v122 = [MEMORY[0x277CCABB0] numberWithInt:v117];
        [(PLBatteryAgent *)self setLastVacVoltageLimit:v122];
      }
    }

    v129 = MEMORY[0x277D85DD0];
    v130 = 3221225472;
    v131 = __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke_6;
    v132 = &__block_descriptor_36_e19___NSDictionary_8__0l;
    v133 = v117;
    AnalyticsSendEventLazy();
    v123 = [MEMORY[0x277CCABB0] numberWithInt:v117];
    [(PLBatteryAgent *)self setLastVacVoltageLimit:v123];
  }

  v124 = [v5 objectForKeyedSubscript:@"CurrentSenseMonitorStatus"];

  if (v124)
  {
    if ([(PLBatteryAgent *)self csmOverrideValue])
    {
      v125 = PLLogCommon();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v125, OS_LOG_TYPE_DEBUG, "csm: overriding value", buf, 2u);
      }

      [v5 setObject:&unk_282C11F70 forKeyedSubscript:@"CurrentSenseMonitorStatus"];
    }

    [(PLBatteryAgent *)self updateCurrentSenseMonitorStatusWithEntry:v5];
  }

  [(PLOperator *)self logEntry:v5];
  v16 = v5;

LABEL_92:

  return v16;
}

void __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) lastITMiscStatus];
    v7 = [v6 objectForKeyedSubscript:v13];
    v8 = [v7 intValue];

    v9 = [v5 intValue];
    v10 = v9 - v8;
    v11 = v9 >= v8 ? v10 : v10 + 4;
    if (v11 >= 1)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInt:v11];
      [*(a1 + 40) setObject:v12 forKeyedSubscript:v13];

      MEMORY[0x21CEDCD40]([MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.power.battery.ITMiscStatus.%@.count", v13], v11);
    }
  }
}

id __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke_3(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CCABB0];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"BatteryCellDisconnectCount"];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "intValue")}];
  [v2 setObject:v5 forKeyedSubscript:@"value"];

  return v2;
}

id __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"value"];

  return v2;
}

id __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke_5()
{
  v0 = objc_opt_new();
  [v0 setObject:&unk_282C11F70 forKeyedSubscript:@"DOD0Count"];

  return v0;
}

id __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke_6(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"VacVoltageLimit";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)getGaugingMitigationDict
{
  v10 = *MEMORY[0x277D85DE8];
  State = IOPSGaugingMitigationGetState();
  if (State)
  {
    v3 = State;
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v9) = v3;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "Failed to get gauging mitigation state dictionary, ret = %x", buf, 8u);
    }

    v5 = 0;
  }

  else
  {
    v5 = 0;
    CFRelease(v5);
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Gauging mitigation state dictionary: %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)logEventBackwardChargingLimit
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(PLBatteryAgent *)self getGaugingMitigationDict];
  if (v3)
  {
    v28 = self;
    v27 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ChargingLimit"];
    v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v27];
    v5 = [MEMORY[0x277CBEAA8] monotonicDate];
    v6 = [v3 objectForKeyedSubscript:@"lastDOD0Update"];
    [v5 timeIntervalSinceDate:v6];
    v8 = (v7 / 86400.0);

    v9 = [v3 objectForKeyedSubscript:@"lastFullChargeDate"];
    [v5 timeIntervalSinceDate:v9];
    v11 = (v10 / 86400.0);

    v12 = [v3 objectForKeyedSubscript:@"lastQMaxUpdate"];
    [v5 timeIntervalSinceDate:v12];
    v14 = (v13 / 86400.0);

    v15 = [v3 objectForKeyedSubscript:@"lastQualQMaxDate"];
    [v5 timeIntervalSinceDate:v15];
    v17 = (v16 / 86400.0);

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
    [v4 setObject:v18 forKeyedSubscript:@"lastDOD0Update"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    [v4 setObject:v19 forKeyedSubscript:@"lastFullChargeDate"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    [v4 setObject:v20 forKeyedSubscript:@"lastQMaxUpdate"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    [v4 setObject:v21 forKeyedSubscript:@"lastQualQMaxDate"];

    v22 = [v3 objectForKeyedSubscript:@"lastFullChargeReq"];
    [v4 setObject:v22 forKeyedSubscript:@"lastFullChargeReq"];

    v23 = [v3 objectForKeyedSubscript:@"lastQualQmaxDODValue"];
    [v4 setObject:v23 forKeyedSubscript:@"lastQualQmaxDODValue"];

    v24 = PLLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v4 dictionary];
      *buf = 138412290;
      v30 = v26;
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "Logging current mitigation state: %@", buf, 0xCu);
    }

    [(PLOperator *)v28 logEntry:v4];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)getIconographyStateDict
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = IOPSCopyChargeStatus();
  if (v2)
  {
    v3 = v2;
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v9) = v3;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "Failed to get Iconography charge state dictionary, ret = %x", buf, 8u);
    }

    v5 = 0;
  }

  else
  {
    v5 = 0;
    CFRelease(v5);
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Iconography charge state dictionary: %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (int)getIconChargeState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Charging"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Disconnected"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Charging Completed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Charging Completed Limited"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Charging On Hold"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (void)logEventBackwardIconographyState
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(PLBatteryAgent *)self getIconographyStateDict];
  if (v3)
  {
    v4 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Iconography"];
    v5 = [v3 objectForKeyedSubscript:@"chargeStatus"];
    v6 = [(PLBatteryAgent *)self getIconChargeState:v5];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 67109120;
      LODWORD(v14) = v6;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "current state is : %u", &v13, 8u);
    }

    v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v3];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    [v8 setObject:v9 forKeyedSubscript:@"chargeStatus"];

    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v8 dictionary];
      v13 = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Logging Iconography charge state: %@", &v13, 0xCu);
    }

    [(PLOperator *)self logEntry:v8];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logEventNoneUserType
{
  if (([MEMORY[0x277D3F180] liteMode] & 1) == 0)
  {
    v7 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"UserType"];
    v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
    v4 = MEMORY[0x277CCABB0];
    v5 = [MEMORY[0x277D36CC0] predictor];
    v6 = [v4 numberWithInteger:{objc_msgSend(v5, "historicalClassification")}];
    [v3 setObject:v6 forKeyedSubscript:@"UserType"];

    [(PLOperator *)self logEntry:v3];
  }
}

- (int)batteryLifetimeUPOCount
{
  v2 = IOServiceMatching("IOService");
  if (!v2)
  {
    return -1;
  }

  v3 = v2;
  valuePtr = 0;
  v4 = *MEMORY[0x277CBECE8];
  v15 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v5 = CFDictionaryCreate(v4, &batteryLifetimeUPOCount_tmp, &v15, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v5)
  {
    CFRelease(v3);
    return -1;
  }

  v6 = v5;
  CFDictionarySetValue(v3, @"IOPropertyMatch", v5);
  CFRelease(v6);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v3);
  if (!MatchingService)
  {
    return -1;
  }

  v8 = MatchingService;
  v9 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:MatchingService];
  v10 = v9;
  if (v9 && ([v9 objectForKeyedSubscript:@"IOPMUBootUPOCounter"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v10 objectForKeyedSubscript:@"IOPMUBootUPOCounter"];
    v13 = [v12 intValue];
  }

  else
  {
    v13 = -1;
  }

  IOObjectRelease(v8);

  return v13;
}

- (id)lowBatteryLogPath
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__13;
  v28 = __Block_byref_object_dispose__13;
  v29 = 0;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/" error:0];
  if (v3)
  {
    v4 = MEMORY[0x277CCAC30];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.*%@%@", @"LowBatteryLog-", @".ips", @"(\\.synced)?"];
    v6 = [v4 predicateWithFormat:@"SELF MATCHES[c] %@", v5];

    v7 = [v3 filteredArrayUsingPredicate:v6];
    v8 = v7;
    if (v7 && [v7 count])
    {
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x3032000000;
      v22[3] = __Block_byref_object_copy__13;
      v22[4] = __Block_byref_object_dispose__13;
      v23 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __35__PLBatteryAgent_lowBatteryLogPath__block_invoke;
      v16[3] = &unk_278260D28;
      v9 = v8;
      v17 = v9;
      v18 = @"LowBatteryLog-";
      v19 = @"yyyy-MM-dd-HHmmss";
      v20 = v22;
      v21 = &v24;
      [v9 enumerateObjectsUsingBlock:v16];
      if (!v25[5])
      {
        v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v9, "count") - 1}];
        v11 = v25[5];
        v25[5] = v10;
      }

      _Block_object_dispose(v22, 8);
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"/var/mobile/Library/Logs/CrashReporter/", v25[5]];
    v13 = v25[5];
    v25[5] = v12;
  }

  v14 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __35__PLBatteryAgent_lowBatteryLogPath__block_invoke(uint64_t a1)
{
  obj = [*(a1 + 32) objectAtIndexedSubscript:?];
  v2 = [obj length];
  if (v2 == 42 || v2 == 35)
  {
    v3 = [obj substringWithRange:{objc_msgSend(*(a1 + 40), "length"), objc_msgSend(*(a1 + 48), "length")}];
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v4 setDateFormat:*(a1 + 48)];
    v5 = [v4 dateFromString:v3];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEAA8] date];
      v7 = [v6 dateByAddingTimeInterval:-86400.0];
      v8 = [v5 compare:v7];

      if (v8 == 1)
      {
        v9 = *(*(*(a1 + 56) + 8) + 40);
        if (!v9 || [v9 compare:v5] == -1)
        {
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
        }
      }
    }
  }
}

- (id)lowBatteryLogString
{
  v2 = [(PLBatteryAgent *)self lowBatteryLogPath];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v2 encoding:4 error:0];
    v4 = [v3 componentsSeparatedByString:@"\n"];
    v5 = [v4 count];
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = [v4 objectAtIndexedSubscript:v6];
        v8 = [v7 hasPrefix:@"Date:"];

        if (v8)
        {
          break;
        }

        if (v5 == ++v6)
        {
          v5 = 0;
          goto LABEL_9;
        }
      }

      v9 = [v4 subarrayWithRange:{v6, &v5[-v6]}];
      v5 = [v9 componentsJoinedByString:@"\n"];
    }

LABEL_9:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)isOriginalBattery
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3F1B8] hasBatteryModuleAuth];
  v3 = [MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{102027, 102028, 102029, 0}];
  v4 = 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"Battery" andSubGroup:0 withChannelIDs:&unk_282C156D8];
    v7 = [v6 currentValueForSimpleChannel:@"BatteryIDChanged"];
    v8 = v7;
    if (v7)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "BOOLValue") ^ 1}];
    }

    else
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v9 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __35__PLBatteryAgent_isOriginalBattery__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v9;
        if (qword_2811F3C20 != -1)
        {
          dispatch_once(&qword_2811F3C20, block);
        }

        if (byte_2811F3A9F == 1)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not determine original battery"];
          v11 = MEMORY[0x277D3F178];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v13 = [v12 lastPathComponent];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent isOriginalBattery]"];
          [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:6507];

          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v20 = v10;
            _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v4 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __35__PLBatteryAgent_isOriginalBattery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3A9F = result;
  return result;
}

- (id)parseBatterySerialNumber:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (v4)
  {
    if ([v4 length] == 18)
    {
      v6 = [v4 substringWithRange:{0, 3}];
      [v5 setObject:v6 forKeyedSubscript:@"vendor"];

      v7 = [v4 substringWithRange:{3, 3}];
      [v5 setObject:v7 forKeyedSubscript:@"dom"];

      v8 = [v4 substringWithRange:{6, 5}];
      [v5 setObject:v8 forKeyedSubscript:@"sequence"];

      v9 = [v4 substringWithRange:{11, 7}];
      [v5 setObject:v9 forKeyedSubscript:@"eeee_code"];

      v10 = [v5 objectForKeyedSubscript:@"dom"];
      v11 = [(PLBatteryAgent *)self customConvertBase34ToBase10:v10];

      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v11 * 86400.0];
      v13 = objc_alloc(MEMORY[0x277CBEA80]);
      v14 = [v13 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
      [v5 setObject:v12 forKeyedSubscript:@"SNDate"];
      v15 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
      [v14 setTimeZone:v15];

      v16 = [v14 components:24576 fromDate:v12];
      v17 = [v16 valueForComponent:0x2000];
      v18 = [v16 valueForComponent:0x4000];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
      v20 = [v19 stringValue];

      v21 = [v20 substringFromIndex:{objc_msgSend(v20, "length") - 1}];
      [v5 setObject:v21 forKeyedSubscript:@"year"];

      v22 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
      v23 = [v22 stringValue];
      [v5 setObject:v23 forKeyedSubscript:@"week"];
    }

    else
    {
      if ([v4 length] == 17)
      {
        v24 = [v4 substringWithRange:{3, 1}];
        [v5 setObject:v24 forKeyedSubscript:@"year"];

        v25 = [v4 substringWithRange:{4, 2}];
        [v5 setObject:v25 forKeyedSubscript:@"week"];

        v26 = v4;
        v27 = 11;
      }

      else
      {
        if ([v4 length] != 12)
        {
          goto LABEL_10;
        }

        v26 = v4;
        v27 = 8;
      }

      v12 = [v26 substringWithRange:{v27, 4}];
      [v5 setObject:v12 forKeyedSubscript:@"eeee_code"];
    }
  }

LABEL_10:

  return v5;
}

- (unint64_t)customConvertBase34ToBase10:(id)a3
{
  v20[24] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v19[0] = &unk_282C12090;
  v19[1] = &unk_282C120C0;
  v20[0] = &unk_282C120A8;
  v20[1] = &unk_282C120D8;
  v19[2] = &unk_282C120F0;
  v19[3] = &unk_282C12120;
  v20[2] = &unk_282C12108;
  v20[3] = &unk_282C12138;
  v19[4] = &unk_282C12150;
  v19[5] = &unk_282C12180;
  v20[4] = &unk_282C12168;
  v20[5] = &unk_282C12198;
  v19[6] = &unk_282C121B0;
  v19[7] = &unk_282C121E0;
  v20[6] = &unk_282C121C8;
  v20[7] = &unk_282C121F8;
  v19[8] = &unk_282C12210;
  v19[9] = &unk_282C12240;
  v20[8] = &unk_282C12228;
  v20[9] = &unk_282C12258;
  v19[10] = &unk_282C12270;
  v19[11] = &unk_282C122A0;
  v20[10] = &unk_282C12288;
  v20[11] = &unk_282C122B8;
  v19[12] = &unk_282C122D0;
  v19[13] = &unk_282C12300;
  v20[12] = &unk_282C122E8;
  v20[13] = &unk_282C12318;
  v19[14] = &unk_282C12330;
  v19[15] = &unk_282C12360;
  v20[14] = &unk_282C12348;
  v20[15] = &unk_282C12378;
  v19[16] = &unk_282C12390;
  v19[17] = &unk_282C123C0;
  v20[16] = &unk_282C123A8;
  v20[17] = &unk_282C123D8;
  v19[18] = &unk_282C123F0;
  v19[19] = &unk_282C12420;
  v20[18] = &unk_282C12408;
  v20[19] = &unk_282C12438;
  v19[20] = &unk_282C12450;
  v19[21] = &unk_282C12480;
  v20[20] = &unk_282C12468;
  v20[21] = &unk_282C12498;
  v19[22] = &unk_282C124B0;
  v19[23] = &unk_282C124E0;
  v20[22] = &unk_282C124C8;
  v20[23] = &unk_282C124F8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:24];
  if ([v3 isEqualToString:@"000"])
  {
    v5 = 39304;
    goto LABEL_15;
  }

  if (![v3 length])
  {
    goto LABEL_14;
  }

  v6 = 0;
  v5 = 0;
  v7 = 2;
  while (1)
  {
    v8 = [v3 characterAtIndex:v6];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
    v10 = [v4 objectForKey:v9];

    if (!v10)
    {
      break;
    }

    v11 = pow(34.0, v7);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
    v13 = [v4 objectForKeyedSubscript:v12];
    v14 = v5 + v11 * [v13 intValue];

LABEL_9:
    v5 = v14;
    ++v6;
    --v7;
    if ([v3 length] <= v6)
    {
      goto LABEL_15;
    }
  }

  if ((v8 - 48) <= 9)
  {
    v14 = v5 + pow(34.0, v7) * (v8 - 48);
    goto LABEL_9;
  }

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v18[0] = 67109120;
    v18[1] = v8;
    _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "SN parsed a digit %hu", v18, 8u);
  }

LABEL_14:
  v5 = 0;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)weekOfManufacture:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Serial"];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(PLBatteryAgent *)self parseBatterySerialNumber:v5];
  v7 = [v6 objectForKeyedSubscript:@"year"];
  v8 = [v6 objectForKeyedSubscript:@"week"];
  v9 = v8;
  if (!v7 || !v8)
  {

LABEL_8:
    v13 = &unk_282C11F10;
    goto LABEL_9;
  }

  if ([v8 length] == 1)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"0%@", v9];

    v9 = v10;
  }

  v11 = MEMORY[0x277CCABB0];
  v12 = [v7 stringByAppendingString:v9];
  v13 = [v11 numberWithInteger:{objc_msgSend(v12, "integerValue")}];

LABEL_9:

  return v13;
}

- (id)batteryEEEECode:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Serial"];
  if (v5)
  {
    v6 = [(PLBatteryAgent *)self parseBatterySerialNumber:v5];
    v7 = [v6 objectForKeyedSubscript:@"eeee_code"];
  }

  else
  {
    v7 = &stru_282B650A0;
  }

  return v7;
}

- (id)parseRawSafetyFaultCounter:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [v3 bytes];
    v6 = [v3 length];
    v7 = (2 * v6) >= 0x13 ? 19 : 2 * v6;
    if (2 * v6)
    {
      v8 = 0;
      do
      {
        v10 = *v5++;
        v9 = v10;
        v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:v10 & 0xF];
        [v4 addObject:v11];
        v12 = v8 + 1;
        if (v8 + 1 < v7)
        {
          v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:v9 >> 4];

          [v4 addObject:v13];
          v12 = v8 + 2;
          v11 = v13;
        }

        v8 = v12;
      }

      while (v12 < v7);
    }
  }

  return v4;
}

- (id)parseRawRaTableData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [v3 length];
    if (v5 >= 2)
    {
      v6 = v5;
      v7 = [v3 bytes];
      if (v6 >= 4)
      {
        v8 = (v6 >> 1) - 1;
        v9 = (v7 + 1);
        do
        {
          v10 = *(v9 - 1);
          v11 = objc_alloc(MEMORY[0x277CCABB0]);
          v12 = *v9;
          v9 += 2;
          v13 = [v11 initWithUnsignedLong:v12 | (v10 << 8)];
          [v4 addObject:v13];

          --v8;
        }

        while (v8);
      }
    }
  }

  return v4;
}

- (id)presentMaxRaFromRawData:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:-2147483647];
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v7 = [v6 objectForKeyedSubscript:@"RaTableRaw"];

    v8 = [v7 firstObject];
    v9 = [(PLBatteryAgent *)self parseRawRaTableData:v8];
    if ([v9 count] == 15)
    {
      v21 = v7;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = [v9 subarrayWithRange:{0, 8}];
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            v16 = [v15 intValue];
            if (v16 > [v5 intValue])
            {
              v17 = v15;

              v5 = v17;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      v5 = v5;
      v18 = v5;
      v7 = v21;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)parseITMiscStatusCounters:(id)a3
{
  v16[8] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [a3 unsignedShortValue];
    v15[0] = @"QmaxDisqualified";
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v3 >> 14];
    v16[0] = v4;
    v15[1] = @"QmaxDOD0";
    v5 = [MEMORY[0x277CCABB0] numberWithInt:(v3 >> 12) & 3];
    v16[1] = v5;
    v15[2] = @"DOD0Update";
    v6 = [MEMORY[0x277CCABB0] numberWithInt:(v3 >> 10) & 3];
    v16[2] = v6;
    v15[3] = @"QmaxAtEOC";
    v7 = [MEMORY[0x277CCABB0] numberWithInt:(v3 >> 8) & 3];
    v16[3] = v7;
    v15[4] = @"FastQmaxUpdate";
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v3 >> 6];
    v16[4] = v8;
    v15[5] = @"QmaxUpdate";
    v9 = [MEMORY[0x277CCABB0] numberWithInt:(v3 >> 4) & 3];
    v16[5] = v9;
    v15[6] = @"RaUpdate";
    v10 = [MEMORY[0x277CCABB0] numberWithInt:(v3 >> 2) & 3];
    v16[6] = v10;
    v15[7] = @"ITSimulation";
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v3 & 3];
    v16[7] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:8];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)parseTimeAtHighSoc:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v3)
  {
    v5 = [v3 length];
    v6 = [v3 bytes];
    if (v5 >= 4)
    {
      v7 = v6;
      v8 = 0;
      do
      {
        NSLog(&cfstr_BinDU.isa, v8, *(v7 + 4 * v8));
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"bin%d", v8];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v7 + 4 * v8)];
        [v4 setObject:v10 forKeyedSubscript:v9];

        ++v8;
      }

      while (v5 >> 2 != v8);
    }
  }

  if ([v4 count])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)parseLowVoltageResidencyCounters:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  if (v3)
  {
    v4 = [v3 length];
    v5 = [v3 bytes];
    if (v4 >= 4)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        NSLog(&cfstr_Lowvoltageresi_0.isa, v7, *(v6 + 4 * v7));
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"bin%d", v7];
        v9 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(MEMORY[0x277D3F258], "roundToSigFig:withSigFig:", *(v6 + 4 * v7), 2)}];
        [v13 setObject:v9 forKeyedSubscript:v8];

        ++v7;
      }

      while (v4 >> 2 != v7);
    }
  }

  if ([v13 count])
  {
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)parseFlashWearLevelData:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v3)
  {
    v5 = [v3 length];
    v6 = [v3 bytes];
    v7 = [&unk_282C156F0 count];
    v8 = v5 >> 2 >= v7 ? v7 : v5 >> 2;
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(v6 + 4 * i);
          *buf = 67109376;
          v18[0] = i;
          LOWORD(v18[1]) = 1024;
          *(&v18[1] + 2) = v13;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "flashWearLevelData %d: %u", buf, 0xEu);
        }

        v11 = [&unk_282C156F0 objectAtIndexedSubscript:i];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v6 + 4 * i)];
        [v4 setObject:v12 forKeyedSubscript:v11];
      }
    }
  }

  if ([v4 count])
  {
    v14 = v4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __54__PLBatteryAgent_pushLowVoltageResidencyCountersToCA___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v4 = v7;
  v5 = v6;
  AnalyticsSendEventLazy();
}

id __54__PLBatteryAgent_pushLowVoltageResidencyCountersToCA___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) substringFromIndex:{objc_msgSend(@"bin", "length")}];
  [v2 setObject:v3 forKeyedSubscript:@"bin"];

  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"value"];

  return v2;
}

- (id)parseTimeAtHighSocHex:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(PLBatteryAgent *)self dataFromHexString:v4];
    v6 = [(PLBatteryAgent *)self parseTimeAtHighSoc:v5];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dataFromHexString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB28] data];
  v9 = 0;
  v5 = [v3 length];
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      __str[0] = [v3 characterAtIndex:v6];
      __str[1] = [v3 characterAtIndex:v6 + 1];
      HIBYTE(v9) = strtol(__str, 0, 16);
      [v4 appendBytes:&v9 + 1 length:1];
      v6 += 2;
    }

    while (v6 < v5);
  }

  return v4;
}

- (void)pushTimeAtHighSocToAggD:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PLBatteryAgent_pushTimeAtHighSocToAggD___block_invoke;
  v7[3] = &unk_27825CDE8;
  v6 = v5;
  v8 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  if ([v6 count])
  {
    MEMORY[0x21CEDCD50](0, v6);
  }
}

void __42__PLBatteryAgent_pushTimeAtHighSocToAggD___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [@"com.apple.power.battery.TimeAtHighSoc." stringByAppendingString:a2];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

void __40__PLBatteryAgent_pushTimeAtHighSocToCA___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v4 = v7;
  v5 = v6;
  AnalyticsSendEventLazy();
}

id __40__PLBatteryAgent_pushTimeAtHighSocToCA___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) substringFromIndex:{objc_msgSend(@"bin", "length")}];
  [v2 setObject:v3 forKeyedSubscript:@"bin"];

  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"value"];

  return v2;
}

- (void)pushFlashWearLevelDataToCA:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"factory"];
  v5 = [v3 objectForKeyedSubscript:@"usr"];
  v6 = [v3 objectForKeyedSubscript:@"log"];
  v7 = [v3 objectForKeyedSubscript:@"bdc"];

  if (v4 && v5 && v6 && v7)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "Pushing FlashWearLevelData to CA - factory:%@ usr:%@ log:%@ bdc:%@", buf, 0x2Au);
    }

    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    AnalyticsSendEventLazy();
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __45__PLBatteryAgent_pushFlashWearLevelDataToCA___block_invoke(void *a1)
{
  v2 = objc_opt_new();
  [v2 setObject:a1[4] forKeyedSubscript:@"factory"];
  [v2 setObject:a1[5] forKeyedSubscript:@"usr"];
  [v2 setObject:a1[6] forKeyedSubscript:@"log"];
  [v2 setObject:a1[7] forKeyedSubscript:@"bdc"];

  return v2;
}

- (id)getUPOStepperData
{
  v3 = objc_opt_new();
  v4 = *MEMORY[0x277CBF020];
  v5 = *MEMORY[0x277CBF030];
  v6 = CFPreferencesCopyValue(@"mitigatedUPOCount", @"com.apple.thermalmonitor.upostepper.metrics", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
  v7 = CFPreferencesCopyValue(@"upoMetrics", @"com.apple.thermalmonitor.upostepper.metrics", v4, v5);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    [v3 setObject:v6 forKeyedSubscript:@"mitigatedUPOCount"];
    v10 = [v8 lastObject];
    [v3 setObject:v10 forKeyedSubscript:@"upoMetrics"];

    [(PLBatteryAgent *)self setMitigatedUPOCountDefault:v6];
    v11 = v3;
  }

  return v11;
}

- (void)setMitigatedUPOCountDefault:(id)a3
{
  objc_storeStrong(&self->_mitigatedUPOCount, a3);
  v4 = a3;
  v5 = *MEMORY[0x277CBF040];
  v6 = *MEMORY[0x277CBF030];
  [MEMORY[0x277D3F258] containerPath];
  _CFPreferencesSetValueWithContainer();
  v7 = [MEMORY[0x277D3F258] containerPath];

  MEMORY[0x2821102A0](@"com.apple.powerlogd", v7);
}

- (id)getMitigatedUPOCountDefault
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  [MEMORY[0x277D3F258] containerPath];
  v4 = _CFPreferencesCopyValueWithContainer();

  return v4;
}

- (id)getBatteryShutdownData
{
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MEMORY[0x277D3F1C8];

  return [v5 snapshotFromIOEntry:MatchingService];
}

- (void)setAggdIntegerValueFromEntry:(id)a3 forKey:(id)a4 withPrefix:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [a3 objectForKeyedSubscript:v7];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 stringByAppendingString:v7];
      v11 = PLLogBH();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "Logging battery data to aggd - key:%@, value:%@", &v13, 0x16u);
      }

      [v9 integerValue];
      ADClientSetValueForScalarKey();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logBatteryShutdownToCA:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = objc_opt_new();
  v5 = [v4 objectForKeyedSubscript:@"DataError"];
  v24 = v5;
  if (v5)
  {
    v6 = [v5 intValue];
    MEMORY[0x21CEDCD40](@"com.apple.power.batteryshutdown.Count", 1);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    MEMORY[0x21CEDCD40](@"com.apple.power.batteryshutdown.Count", 1);
  }

  v7 = [v4 objectForKeyedSubscript:@"UISOC"];
  v8 = [v7 intValue];

  if (v8 >= 11)
  {
    MEMORY[0x21CEDCD40](@"com.apple.power.batteryshutdown.UPOCount", 1);
    [v25 setObject:&unk_282C11F70 forKeyedSubscript:@"UPOCount"];
  }

LABEL_7:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v4 definedKeys];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    v13 = @"LowBatteryLog";
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if (([v15 isEqualToString:@"BatteryShutdownTimestamp"] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", v13) & 1) == 0)
        {
          v16 = [v4 objectForKeyedSubscript:v15];
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v9;
              v18 = v13;
              v19 = v4;
              v20 = self;
              v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "integerValue")}];
              [v25 setValue:v21 forKey:v15];

              self = v20;
              v4 = v19;
              v13 = v18;
              v9 = v17;
            }
          }

          [(PLBatteryAgent *)self setAggdIntegerValueFromEntry:v4 forKey:v15 withPrefix:@"com.apple.power.batteryshutdown."];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v22 = v25;
  AnalyticsSendEventLazy();

  v23 = *MEMORY[0x277D85DE8];
}

- (void)aggdTimerFired
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__PLBatteryAgent_aggdTimerFired__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F3C28 != -1)
    {
      dispatch_once(&qword_2811F3C28, block);
    }

    if (byte_2811F3AA0 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Aggd Timer Fired"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent aggdTimerFired]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:7040];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLBatteryAgent *)self lastBatteryConfigEntry];

  if (v10)
  {
    v11 = [(PLBatteryAgent *)self lastBatteryConfigEntry];
    [(PLBatteryAgent *)self logBatteryConfigToAggd:v11];

    v12 = [(PLBatteryAgent *)self lastBatteryConfigEntry];
    [(PLBatteryAgent *)self logBatteryConfigToCA:v12];

    v13 = [(PLBatteryAgent *)self lastBatteryConfigEntry];
    v14 = [v13 objectForKeyedSubscript:@"xFlags"];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v14;
        AnalyticsSendEventLazy();
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __32__PLBatteryAgent_aggdTimerFired__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA0 = result;
  return result;
}

id __32__PLBatteryAgent_aggdTimerFired__block_invoke_4792(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"flags";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "integerValue")}];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logBatteryConfigToAggd:(id)a3
{
  v20[24] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 definedKeys];
    v7 = [v6 mutableCopy];

    v20[0] = @"RSS";
    v20[1] = @"ChemID";
    v20[2] = @"QmaxCell0";
    v20[3] = @"KioskModeHighSocSeconds";
    v20[4] = @"NominalChargeCapacity";
    v20[5] = @"SafetyEvent0";
    v20[6] = @"SafetyEvent1";
    v20[7] = @"SafetyEvent2";
    v20[8] = @"SafetyEvent3";
    v20[9] = @"SafetyEvent4";
    v20[10] = @"SafetyEvent5";
    v20[11] = @"SafetyEvent6";
    v20[12] = @"SafetyEvent7";
    v20[13] = @"SafetyEvent8";
    v20[14] = @"SafetyEvent9";
    v20[15] = @"SafetyEvent10";
    v20[16] = @"SafetyEvent11";
    v20[17] = @"SafetyEvent12";
    v20[18] = @"SafetyEvent13";
    v20[19] = @"SafetyEvent14";
    v20[20] = @"SafetyEvent15";
    v20[21] = @"SafetyEvent16";
    v20[22] = @"SafetyEvent17";
    v20[23] = @"SafetyEvent18";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:24];
    [v7 addObjectsFromArray:v8];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(PLBatteryAgent *)self setAggdIntegerValueFromEntry:v5 forKey:*(*(&v15 + 1) + 8 * v13++) withPrefix:@"com.apple.power.battery.", v15];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)logBatteryConfigToCA:(id)a3
{
  v36[26] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "In logBatteryConfigtoCA", buf, 2u);
  }

  if (v3)
  {
    v27 = v3;
    v5 = [v3 definedKeys];
    v6 = [v5 mutableCopy];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Copied Keys", buf, 2u);
    }

    v25 = objc_opt_new();
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Created dictionary", buf, 2u);
    }

    v36[0] = @"RSS";
    v36[1] = @"ChemID";
    v36[2] = @"QmaxCell0";
    v36[3] = @"KioskModeHighSocSeconds";
    v36[4] = @"LastUPOSystemTimestamp";
    v36[5] = @"NominalChargeCapacity";
    v36[6] = @"SafetyEvent0";
    v36[7] = @"SafetyEvent1";
    v36[8] = @"SafetyEvent2";
    v36[9] = @"SafetyEvent3";
    v36[10] = @"SafetyEvent4";
    v36[11] = @"SafetyEvent5";
    v36[12] = @"SafetyEvent6";
    v36[13] = @"SafetyEvent7";
    v36[14] = @"SafetyEvent8";
    v36[15] = @"SafetyEvent9";
    v36[16] = @"SafetyEvent10";
    v36[17] = @"SafetyEvent11";
    v36[18] = @"SafetyEvent12";
    v36[19] = @"SafetyEvent13";
    v36[20] = @"SafetyEvent14";
    v36[21] = @"SafetyEvent15";
    v36[22] = @"SafetyEvent16";
    v36[23] = @"SafetyEvent17";
    v36[24] = @"SafetyEvent18";
    v36[25] = @"LTDataCorruptionOffset";
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:26];
    [v6 addObjectsFromArray:?];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    v3 = v27;
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        v12 = 0;
        do
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          v14 = PLLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v34 = v13;
            _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "In logBatteryConfigtoCA. Adding key %@", buf, 0xCu);
          }

          v15 = [v3 objectForKeyedSubscript:v13];
          if ([v13 isEqualToString:@"DOFU"])
          {
            v16 = [(PLBatteryAgent *)self serialNumber];
            v17 = [(PLBatteryAgent *)self ApplyPolicyToDOFU:v15 forSerial:v16];

            v15 = v17;
            v3 = v27;
          }

          v18 = v13;
          if ([v18 rangeOfString:@"-"] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [v18 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

            v18 = v19;
          }

          if (v15)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v25 setValue:v15 forKey:v18];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v10);
    }

    v20 = PLLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "In logBatteryConfigtoCA. Sending to CA", buf, 2u);
    }

    v21 = v25;
    AnalyticsSendEventLazy();
    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEFAULT, "In logBatteryConfigtoCA. Sent to CA", buf, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)logBaselineToAggD:(id)a3
{
  v4 = a3;
  v5 = [v4 definedKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__PLBatteryAgent_logBaselineToAggD___block_invoke;
  v13[3] = &unk_278259C90;
  v13[4] = self;
  v6 = v4;
  v14 = v6;
  [v5 enumerateObjectsUsingBlock:v13];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v6 objectForKeyedSubscript:@"TimeAtHighSoc"];
  v9 = [(PLBatteryAgent *)self parseTimeAtHighSocHex:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__PLBatteryAgent_logBaselineToAggD___block_invoke_2;
  v11[3] = &unk_27825CDE8;
  v10 = v7;
  v12 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
  if ([v10 count])
  {
    MEMORY[0x21CEDCD50](0, v10);
  }
}

void __36__PLBatteryAgent_logBaselineToAggD___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [@"com.apple.power.battery.calibration0.baseline.TimeAtHighSoc." stringByAppendingString:a2];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (void)logBaselineToCA:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 definedKeys];
  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v10;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "In logBaselinetoCA. Adding key %@", buf, 0xCu);
        }

        v12 = [v3 objectForKeyedSubscript:v10];
        v13 = v10;
        if ([v13 rangeOfString:@"-"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [v13 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

          v13 = v14;
        }

        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 setObject:v12 forKeyedSubscript:v13];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "In logBaselinetoCA. Sending to CA", buf, 2u);
  }

  v16 = v21;
  AnalyticsSendEventLazy();
  v17 = [v3 objectForKeyedSubscript:@"TimeAtHighSoc"];
  v18 = [(PLBatteryAgent *)self parseTimeAtHighSocHex:v17];

  [v18 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4810];
  v19 = *MEMORY[0x277D85DE8];
}

void __34__PLBatteryAgent_logBaselineToCA___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v4 = v7;
  v5 = v6;
  AnalyticsSendEventLazy();
}

id __34__PLBatteryAgent_logBaselineToCA___block_invoke_3(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) substringFromIndex:{objc_msgSend(@"bin", "length")}];
  [v2 setObject:v3 forKeyedSubscript:@"bin"];

  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"value"];

  return v2;
}

- (void)logKioskModeEntryToAggd:(id)a3
{
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "In log KioskMode aggd", buf, 2u);
  }

  v6 = [v4 definedKeys];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PLBatteryAgent_logKioskModeEntryToAggd___block_invoke;
  v8[3] = &unk_278259C90;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (void)logKioskModeEntryToCA:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 definedKeys];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__PLBatteryAgent_logKioskModeEntryToCA___block_invoke;
  v10[3] = &unk_278259C90;
  v11 = v3;
  v6 = v4;
  v12 = v6;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v10];

  v9 = v6;
  v8 = v6;
  AnalyticsSendEventLazy();
}

void __40__PLBatteryAgent_logKioskModeEntryToCA___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v8 = v3;
  v5 = v8;
  if ([v8 rangeOfString:@"-"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  }

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
      [v6 setValue:v7 forKey:v5];
    }
  }
}

- (void)logFlashAgingToCA:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"BatteryData"];
  v5 = [v4 objectForKeyedSubscript:@"LifetimeData"];
  v6 = [v5 objectForKeyedSubscript:@"FlashEraseCounter"];

  v7 = [v3 objectForKeyedSubscript:@"BatteryData"];

  v8 = [v7 objectForKeyedSubscript:@"LifetimeData"];
  v9 = [v8 objectForKeyedSubscript:@"FlashFailureCounter"];

  if (v9)
  {
    [v9 unsignedIntValue];
    v10 = v6;
    AnalyticsSendEventLazy();
  }
}

id __36__PLBatteryAgent_logFlashAgingToCA___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = *(a1 + 32);
  v7[0] = @"dnvd_flash_erase_counters";
  v7[1] = @"flash_failure_counters";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 40)];
  v8[1] = v2;
  v7[2] = @"last_flash_failure_error";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 42)];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)logSlowChargingReasonToCA:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"ChargerData"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"ChargerData"];
    v6 = [v5 objectForKeyedSubscript:@"SlowChargingReason"];

    if (v6)
    {
      v7 = v6;
      AnalyticsSendEventLazy();
    }
  }
}

id __44__PLBatteryAgent_logSlowChargingReasonToCA___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"slow_charging_reason";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logkBatteryRsenseOpenCountToCA:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"BatteryData"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"BatteryData"];
    v6 = [v5 objectForKeyedSubscript:@"BatteryRsenseOpenCount"];

    if (v6)
    {
      v7 = v6;
      AnalyticsSendEventLazy();
    }
  }
}

id __49__PLBatteryAgent_logkBatteryRsenseOpenCountToCA___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"battery_Rsense_opencount";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)ApplyPolicyToDOFU:(id)a3 forSerial:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    v9 = [a3 intValue];
    if (v9)
    {
      v10 = v9;
      v11 = [(PLBatteryAgent *)self parseBatterySerialNumber:v7];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 objectForKeyedSubscript:@"SNDate"];
        v14 = v13;
        if (v13)
        {
          v15 = v10;
          [v13 timeIntervalSince1970];
          v17 = v10 - v16;
          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v23 = 134217984;
            v24 = v17;
            _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "diff of the DOFU and SN is %ld", &v23, 0xCu);
          }

          if (v17 < 0)
          {
            v19 = PLLogCommon();
            v17 = -v17;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v23 = 134217984;
              v24 = v17;
              _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, "diff of the DOFU and SN is negative with the value of %ld", &v23, 0xCu);
            }
          }

          v20 = dbl_21AA221F0[v17 / 604800.0 > 52.0];
          v8 = [MEMORY[0x277CCABB0] numberWithDouble:v20 * floor(v15 / v20)];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)logEventPointBatteryShutdown
{
  v2 = self;
  v87[1] = *MEMORY[0x277D85DE8];
  v3 = [(PLBatteryAgent *)self getBatteryShutdownData];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"BatteryShutdownReason"];
    v6 = v5;
    if (v5 && [v5 count])
    {
      v82 = v4;
      v7 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BatteryShutdown"];
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
      v85 = v7;
      v9 = [MEMORY[0x277D3F180] objectForKey:@"LastShutdownSystemTimestamp"];
      v10 = [v6 objectForKeyedSubscript:@"ShutDownTimestamp"];
      if (v10)
      {
        v11 = [v6 objectForKeyedSubscript:@"ShutDownTimestamp"];
        [v11 doubleValue];
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      if (!v9 || ([v9 doubleValue], v14 != v13))
      {
        v81 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v13];
        v84 = [v81 convertFromSystemToMonotonic];
        [v84 timeIntervalSince1970];
        v16 = v15;
        [v8 setObject:v84 forKeyedSubscript:@"BatteryShutdownTimestamp"];
        v17 = [v6 objectForKeyedSubscript:@"ShutDownUISoc"];
        [v8 setObject:v17 forKeyedSubscript:@"UISOC"];

        v18 = [v6 objectForKeyedSubscript:@"ShutDownTemperature"];
        [v8 setObject:v18 forKeyedSubscript:@"Temperature"];

        v19 = [v6 objectForKeyedSubscript:@"ShutDownPresentDOD"];
        [v8 setObject:v19 forKeyedSubscript:@"PresentDOD"];

        v20 = [v6 objectForKeyedSubscript:@"ShutDownMaxRa08"];
        [v8 setObject:v20 forKeyedSubscript:@"MaximumRa0-8"];

        v21 = [v6 objectForKeyedSubscript:@"ShutDownNominalChargeCapacity"];
        [v8 setObject:v21 forKeyedSubscript:@"NominalChargeCapacity"];

        v22 = [v6 objectForKeyedSubscript:@"ShutDownPrevNominalChargeCapacity"];
        [v8 setObject:v22 forKeyedSubscript:@"NominalChargeCapacityPrevious"];

        v23 = [v6 objectForKeyedSubscript:@"ShutDownFullChargeCapacity"];
        [v8 setObject:v23 forKeyedSubscript:@"FullChargeCapacity"];

        v24 = [v6 objectForKeyedSubscript:@"ShutDownPrevFullChargeCapacity"];
        [v8 setObject:v24 forKeyedSubscript:@"FullChargeCapacityPrevious"];

        v25 = [v6 objectForKeyedSubscript:@"ShutDownRemainingCapacity"];
        [v8 setObject:v25 forKeyedSubscript:@"RemainingCapacity"];

        v26 = [v6 objectForKeyedSubscript:@"ShutDownPrevRemainingCapacity"];
        [v8 setObject:v26 forKeyedSubscript:@"RemainingCapacityPrevious"];

        v27 = [v6 objectForKeyedSubscript:@"ShutDownCycleCount"];
        [v8 setObject:v27 forKeyedSubscript:@"CycleCount"];

        v28 = [v6 objectForKeyedSubscript:@"ShutDownMaxDischargeCurrent"];
        [v8 setObject:v28 forKeyedSubscript:@"MaximumDischargeCurrent"];

        v29 = [v6 objectForKeyedSubscript:@"ShutDownTimeAbove95"];
        [v8 setObject:v29 forKeyedSubscript:@"TimeAbove95Perc"];

        v30 = [v6 objectForKeyedSubscript:@"ShutDownVoltage"];
        [v8 setObject:v30 forKeyedSubscript:@"Voltage"];

        v31 = [v6 objectForKeyedSubscript:@"ShutDownPrevVoltage"];
        [v8 setObject:v31 forKeyedSubscript:@"VoltagePrevious"];

        v32 = [v6 objectForKeyedSubscript:@"ShutDownAverageCurrent"];
        [v8 setObject:v32 forKeyedSubscript:@"AverageCurrent"];

        v33 = [v6 objectForKeyedSubscript:@"ShutDownPrevAverageCurrent"];
        [v8 setObject:v33 forKeyedSubscript:@"AverageCurrentPrevious"];

        v34 = [v6 objectForKeyedSubscript:@"ShutDownCycleCountLastQmax"];
        [v8 setObject:v34 forKeyedSubscript:@"CycleCountLastQmax"];

        v35 = [v6 objectForKeyedSubscript:@"ShutDownResScale"];
        [v8 setObject:v35 forKeyedSubscript:@"ResScale"];

        v36 = [v6 objectForKeyedSubscript:@"ShutDownQstart"];
        [v8 setObject:v36 forKeyedSubscript:@"Qstart"];

        v37 = [v6 objectForKeyedSubscript:@"ShutDownPassedCharge"];
        [v8 setObject:v37 forKeyedSubscript:@"PassedCharge"];

        v38 = [v6 objectForKeyedSubscript:@"ShutDownDOD0"];
        [v8 setObject:v38 forKeyedSubscript:@"DOD0"];

        v39 = [v6 objectForKeyedSubscript:@"timeSinceAwake"];
        [v8 setObject:v39 forKeyedSubscript:@"TimeSinceWake"];

        v40 = [v6 objectForKeyedSubscript:@"ShutDownRSS"];
        [v8 setObject:v40 forKeyedSubscript:@"RSS"];

        v41 = [v6 objectForKeyedSubscript:@"ShutDownUpoReboot"];
        [v8 setObject:v41 forKeyedSubscript:@"UpoReboot"];

        v42 = [v6 objectForKeyedSubscript:@"ShutDownDataError"];
        [v8 setObject:v42 forKeyedSubscript:@"DataError"];

        v43 = [v6 objectForKeyedSubscript:@"ShutDownFilteredCurrent"];
        [v8 setObject:v43 forKeyedSubscript:@"FilteredCurrent"];

        v44 = [v6 objectForKeyedSubscript:@"ShutDownDynSdVoltage"];
        [v8 setObject:v44 forKeyedSubscript:@"ShutdownVoltage"];

        v45 = [v6 objectForKeyedSubscript:@"ShutDownLpemSocfThresh"];
        [v8 setObject:v45 forKeyedSubscript:@"SOCFThreshold"];

        v46 = [v6 objectForKeyedSubscript:@"ShutDownDynSdSoc"];
        [v8 setObject:v46 forKeyedSubscript:@"ShutdownSoc"];

        v47 = [v6 objectForKeyedSubscript:@"ShutDownLPEMMode"];
        [v8 setObject:v47 forKeyedSubscript:@"LPEMMode"];

        v48 = [v6 objectForKeyedSubscript:@"ShutDownSocAlarm"];
        [v8 setObject:v48 forKeyedSubscript:@"SOCAlarm"];

        v49 = [v6 objectForKeyedSubscript:@"ShutDownSWRemcap"];
        [v8 setObject:v49 forKeyedSubscript:@"SWRemcap"];

        v50 = [v6 objectForKeyedSubscript:@"ShutDownSocSoc2"];
        [v8 setObject:v50 forKeyedSubscript:@"SocSoc2"];

        v51 = [v6 objectForKeyedSubscript:@"ShutDownSWFcc"];
        [v8 setObject:v51 forKeyedSubscript:@"SWFcc"];

        v52 = [v6 objectForKeyedSubscript:@"ShutDownDynamicSOCVcut"];
        [v8 setObject:v52 forKeyedSubscript:@"DynamicSOCVcut"];

        v53 = [v6 objectForKeyedSubscript:@"ShutdownDataCriticalFlagsKey"];
        [v8 setObject:v53 forKeyedSubscript:@"DataCriticalFlagsKey"];

        v54 = [(PLBatteryAgent *)v2 lowBatteryLogString];
        if (v54)
        {
          [v8 setObject:v54 forKeyedSubscript:@"LowBatteryLog"];
        }

        v80 = v54;
        v83 = [v6 objectForKeyedSubscript:@"ShutDownDLog"];
        v79 = v9;
        if (v83)
        {
          v55 = [v83 length];
          if (v55 >= 2)
          {
            v77 = v2;
            v56 = [v83 bytes];
            v57 = 0;
            v58 = 0;
            v59 = (v55 >> 1) + 1;
            do
            {
              v60 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:*(v56 + 2 * v57)];

              v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"DLOG_%d", v57];
              [v8 setObject:v60 forKeyedSubscript:v61];

              ++v57;
              v58 = v60;
            }

            while (v59 != v57);

            v2 = v77;
          }
        }

        v78 = [v6 objectForKeyedSubscript:@"ShutDownRaTableRaw"];
        v62 = [(PLBatteryAgent *)v2 parseRawRaTableData:?];
        for (i = 0; [v62 count] > i; ++i)
        {
          v64 = [v62 objectAtIndexedSubscript:i];
          v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"RaTable_%d", i + 1];
          [v8 setObject:v64 forKeyedSubscript:v65];
        }

        [(PLOperator *)v2 logEntry:v8];
        v86 = @"BatteryShutdownTimestamp";
        v66 = [v8 objectForKeyedSubscript:?];
        v87[0] = v66;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:&v86 count:1];

        [(PLOperator *)v2 logForSubsystem:@"BatteryMetrics" category:@"BatteryShutdown" data:v67];
        v68 = [MEMORY[0x277D3F2A0] sharedCore];
        v69 = [v68 storage];
        [v69 flushCachesWithReason:@"BatteryShutdownReason"];

        [(PLBatteryAgent *)v2 logBatteryShutdownToCA:v8];
        v70 = MEMORY[0x277D3F180];
        v71 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        [v70 setObject:v71 forKey:@"LastShutdownSystemTimestamp" saveToDisk:1];

        if ([(PLBatteryAgent *)v2 isUPOEntry:v8])
        {
          v72 = MEMORY[0x277D3F180];
          v73 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
          [v72 setObject:v73 forKey:@"LastUPOTimestamp" saveToDisk:1];

          v74 = MEMORY[0x277D3F180];
          v75 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
          [v74 setObject:v75 forKey:@"LastUPOSystemTimestamp" saveToDisk:1];
        }

        v4 = v82;
        v9 = v79;
      }
    }
  }

  v76 = *MEMORY[0x277D85DE8];
}

uint64_t __46__PLBatteryAgent_logEventPointBatteryShutdown__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA1 = result;
  return result;
}

- (void)logEventPointBatteryPanicShutdown:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"I2CLog"];
    v7 = v6;
    if (v6 && [v6 count])
    {
      v8 = [MEMORY[0x277D3F180] objectForKey:@"LastPanicData"];
      v9 = [v7 objectForKeyedSubscript:@"I2CLogData"];
      if (!v8 || ([v8 isEqualToData:v9] & 1) == 0)
      {
        v10 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BatteryPanicShutdown"];
        v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
        v12 = [v5 objectForKeyedSubscript:@"I2CLog"];
        v13 = [v12 objectForKeyedSubscript:@"I2CLogData"];
        [v11 setObject:v13 forKeyedSubscript:@"I2CLogData"];

        [(PLOperator *)self logEntry:v11];
        v14 = [MEMORY[0x277D3F2A0] sharedCore];
        v15 = [v14 storage];
        [v15 flushCachesWithReason:@"PanicShutdown"];

        v17 = v5;
        AnalyticsSendEventLazy();
        [MEMORY[0x277D3F180] setObject:v9 forKey:@"LastPanicData" saveToDisk:1];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

id __52__PLBatteryAgent_logEventPointBatteryPanicShutdown___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"I2CLogData";
  v1 = [*(a1 + 32) objectForKeyedSubscript:@"I2CLog"];
  v2 = [v1 objectForKeyedSubscript:@"I2CLogData"];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __52__PLBatteryAgent_logEventPointBatteryPanicShutdown___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA2 = result;
  return result;
}

- (void)logEventPointBatteryTrapInfo:(id)a3
{
  if (!a3)
  {
    return;
  }

  v4 = [a3 objectForKeyedSubscript:@"DeadBatteryBootData"];
  if (v4)
  {
    v31 = v4;
    v4 = [v4 count];
    if (v4)
    {
      v5 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"TrapInfo"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
      v7 = [v31 objectForKey:@"ActivePayloads"];
      if (v7)
      {
        [v31 objectForKey:@"ActivePayloads"];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
      }
      v8 = ;
      [v6 setObject:v8 forKeyedSubscript:@"ActivePayloads"];

      v9 = [v6 objectForKeyedSubscript:@"ActivePayloads"];
      v10 = [v9 unsignedIntegerValue];

      if (v10)
      {
        v11 = [v31 objectForKeyedSubscript:@"GeneralPayload"];
        v12 = v11;
        if (!v11 || ![v11 count])
        {

          goto LABEL_19;
        }

        v13 = [v12 objectForKeyedSubscript:@"TimeOnCharger"];
        [v6 setObject:v13 forKeyedSubscript:@"TimeOnCharger"];

        v14 = [v12 objectForKeyedSubscript:@"CloakEntryCount"];
        [v6 setObject:v14 forKeyedSubscript:@"CloakEntryCount"];

        v15 = [v12 objectForKeyedSubscript:@"PrechargeCount"];
        [v6 setObject:v15 forKeyedSubscript:@"PrechargeCount"];

        v16 = [v12 objectForKeyedSubscript:@"AverageBattVirtualTemp"];
        [v6 setObject:v16 forKeyedSubscript:@"AverageBattVirtualTemp"];

        v17 = [v12 objectForKeyedSubscript:@"AverageBattSkinTemp"];
        [v6 setObject:v17 forKeyedSubscript:@"AverageBattSkinTemp"];

        v18 = [v12 objectForKeyedSubscript:@"StartBatteryCapacity"];
        [v6 setObject:v18 forKeyedSubscript:@"StartBatteryCapacity"];

        v19 = [v12 objectForKeyedSubscript:@"StartBatteryVoltage"];
        [v6 setObject:v19 forKeyedSubscript:@"StartBatteryVoltage"];

        v20 = [v12 objectForKeyedSubscript:@"VbusType"];
        [v6 setObject:v20 forKeyedSubscript:@"VbusType"];

        v21 = [v12 objectForKeyedSubscript:@"AdapterType"];
        [v6 setObject:v21 forKeyedSubscript:@"AdapterType"];

        v22 = [v12 objectForKeyedSubscript:@"WirelessChargingMode"];
        [v6 setObject:v22 forKeyedSubscript:@"WirelessChargingMode"];
      }

      if ((v10 & 2) != 0)
      {
        v23 = [v31 objectForKeyedSubscript:@"SMCBootManagementPayload"];
        v24 = v23;
        if (!v23 || ![v23 count])
        {

          goto LABEL_19;
        }

        v25 = [v24 objectForKeyedSubscript:@"AdapterPower"];
        [v6 setObject:v25 forKeyedSubscript:@"AdapterPower"];

        v26 = [v24 objectForKeyedSubscript:@"DeviceResetCount"];
        [v6 setObject:v26 forKeyedSubscript:@"ResetCount"];

        v27 = [v24 objectForKeyedSubscript:@"HighPoweriBootCount"];
        [v6 setObject:v27 forKeyedSubscript:@"HighPoweriBootCount"];

        v28 = [v24 objectForKeyedSubscript:@"APBootCount"];
        [v6 setObject:v28 forKeyedSubscript:@"APBootCount"];

        v29 = [v24 objectForKeyedSubscript:@"DisplayTimeBootCount"];
        [v6 setObject:v29 forKeyedSubscript:@"DisplayTimeBootCount"];

        v30 = [v24 objectForKeyedSubscript:@"Ok2SwitchCount"];
        [v6 setObject:v30 forKeyedSubscript:@"Ok2SwitchCount"];
      }

      [(PLOperator *)self logEntry:v6];
LABEL_19:
    }
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)logEventNoneBatteryConfigWithRawData:(id)a3
{
  v223[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && ([MEMORY[0x277D3F208] isDeviceClass:101001] & 1) == 0)
  {
    v211 = self;
    v207 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"BatteryConfig"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v207];
    v6 = [v4 objectForKey:@"BatteryData"];
    if (!v6 || ([v4 objectForKey:@"BatteryData"], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKey:", @"LifetimeData"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, !v8))
    {
      if (![MEMORY[0x277D3F208] isMac])
      {
LABEL_83:

        goto LABEL_84;
      }

      v8 = 0;
    }

    [PLEventBackwardBatteryEntry populateQmaxForEntry:v5 withRawData:v4];
    v9 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v10 = [v9 objectForKeyedSubscript:@"Flags"];
    [v5 setObject:v10 forKeyedSubscript:@"Flags"];

    v11 = [v4 objectForKeyedSubscript:@"NominalChargeCapacity"];
    [v5 setObject:v11 forKeyedSubscript:@"NominalChargeCapacity"];

    v12 = [v4 objectForKeyedSubscript:@"AppleRawMaxCapacity"];
    [v5 setObject:v12 forKeyedSubscript:@"AppleRawMaxCapacity"];

    v13 = [v8 objectForKeyedSubscript:@"TotalOperatingTime"];
    [v5 setObject:v13 forKeyedSubscript:@"TotalOperatingTime"];

    v14 = [v8 objectForKeyedSubscript:@"AverageTemperature"];
    [v5 setObject:v14 forKeyedSubscript:@"AverageTemperature"];

    v15 = [v8 objectForKeyedSubscript:@"CycleCountLastQmax"];
    [v5 setObject:v15 forKeyedSubscript:@"CycleCountLastQmax"];

    v16 = [v8 objectForKeyedSubscript:@"FlashWriteCount"];
    [v5 setObject:v16 forKeyedSubscript:@"FlashWriteCount"];

    v17 = [v8 objectForKeyedSubscript:@"HighAvgCurrentLastRun"];
    [v5 setObject:v17 forKeyedSubscript:@"HighAvgCurrentLastRun"];

    v18 = [v8 objectForKeyedSubscript:@"LowAvgCurrentLastRun"];
    [v5 setObject:v18 forKeyedSubscript:@"LowAvgCurrentLastRun"];

    v19 = [v8 objectForKeyedSubscript:@"MaximumDeltaVoltage"];
    [v5 setObject:v19 forKeyedSubscript:@"MaximumDeltaVoltage"];

    v20 = [v8 objectForKeyedSubscript:@"MinimumDeltaVoltage"];
    [v5 setObject:v20 forKeyedSubscript:@"MinimumDeltaVoltage"];

    v21 = [v8 objectForKeyedSubscript:@"MaximumFCC"];
    [v5 setObject:v21 forKeyedSubscript:@"MaximumFCC"];

    v22 = [v8 objectForKeyedSubscript:@"MinimumFCC"];
    [v5 setObject:v22 forKeyedSubscript:@"MinimumFCC"];

    v23 = [v8 objectForKeyedSubscript:@"MaximumPackVoltage"];
    [v5 setObject:v23 forKeyedSubscript:@"MaximumPackVoltage"];

    v24 = [v8 objectForKeyedSubscript:@"MinimumPackVoltage"];
    [v5 setObject:v24 forKeyedSubscript:@"MinimumPackVoltage"];

    v25 = [v8 objectForKeyedSubscript:@"MaximumQmax"];
    [v5 setObject:v25 forKeyedSubscript:@"MaximumQmax"];

    v26 = [v8 objectForKeyedSubscript:@"MinimumQmax"];
    [v5 setObject:v26 forKeyedSubscript:@"MinimumQmax"];

    v27 = [v8 objectForKeyedSubscript:@"MaximumRa0-8"];
    [v5 setObject:v27 forKeyedSubscript:@"MaximumRa0-8"];

    v28 = [v8 objectForKeyedSubscript:@"MinimumRa0-8"];
    [v5 setObject:v28 forKeyedSubscript:@"MinimumRa0-8"];

    v29 = [v8 objectForKeyedSubscript:@"MaximumTemperature"];
    [v5 setObject:v29 forKeyedSubscript:@"MaximumTemperature"];

    v30 = [v8 objectForKeyedSubscript:@"MinimumTemperature"];
    [v5 setObject:v30 forKeyedSubscript:@"MinimumTemperature"];

    v31 = [v8 objectForKeyedSubscript:@"MaximumChargeCurrent"];
    [v5 setObject:v31 forKeyedSubscript:@"MaximumChargeCurrent"];

    v32 = [v8 objectForKeyedSubscript:@"MaximumDischargeCurrent"];
    [v5 setObject:v32 forKeyedSubscript:@"MaximumDischargeCurrent"];

    v33 = [v8 objectForKeyedSubscript:@"MaximumOverChargedCapacity"];
    [v5 setObject:v33 forKeyedSubscript:@"MaximumOverChargedCapacity"];

    v34 = [v8 objectForKeyedSubscript:@"MaximumOverDischargedCapacity"];
    [v5 setObject:v34 forKeyedSubscript:@"MaximumOverDischargedCapacity"];

    v35 = [v8 objectForKeyedSubscript:@"RDISCnt"];
    [v5 setObject:v35 forKeyedSubscript:@"RDISCnt"];

    v36 = [v8 objectForKeyedSubscript:@"TemperatureSamples"];
    [v5 setObject:v36 forKeyedSubscript:@"TemperatureSamples"];

    v37 = [v8 objectForKeyedSubscript:@"TimeAbove95Perc"];

    if (v37)
    {
      v38 = [v8 objectForKeyedSubscript:@"TimeAbove95Perc"];
      [v5 setObject:v38 forKeyedSubscript:@"TimeAbove95Perc"];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = [v5 objectForKeyedSubscript:@"TimeAbove95Perc"];
        *buf = 138412290;
        v217 = v40;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "collected TA95%% %@", buf, 0xCu);
      }
    }

    else
    {
      v39 = [v8 objectForKeyedSubscript:@"TimeAtHighSoc"];
      [v5 setObject:v39 forKeyedSubscript:@"TimeAtHighSoc"];
      v41 = PLLogCommon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v198 = [v5 objectForKeyedSubscript:@"TimeAtHighSoc"];
        *buf = 138412290;
        v217 = v198;
        _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "collected TAHighSoc: %@", buf, 0xCu);
      }

      v42 = [(PLBatteryAgent *)v211 parseTimeAtHighSoc:v39];
      [(PLBatteryAgent *)v211 pushTimeAtHighSocToAggD:v42];
      [(PLBatteryAgent *)v211 pushTimeAtHighSocToCA:v42];
    }

    v43 = [v8 objectForKeyedSubscript:@"TimeAbove95Perc"];
    [v5 setObject:v43 forKeyedSubscript:@"TimeAbove95Perc"];

    v44 = [v8 objectForKeyedSubscript:@"LowVoltageResidencyCounters"];
    [v5 setObject:v44 forKeyedSubscript:@"LowVoltageResidencyCounters"];

    v205 = [v8 objectForKeyedSubscript:@"LowVoltageResidencyCounters"];
    if (v205)
    {
      v45 = PLLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v196 = [v5 objectForKeyedSubscript:@"LowVoltageResidencyCounters"];
        *buf = 138412290;
        v217 = v196;
        _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "collected LowVoltageResidencyCounters: %@", buf, 0xCu);
      }

      v46 = [(PLBatteryAgent *)v211 parseLowVoltageResidencyCounters:v205];
      [(PLBatteryAgent *)v211 pushLowVoltageResidencyCountersToCA:v46];
    }

    v47 = [v8 objectForKeyedSubscript:@"UpdateTime"];
    [v5 setObject:v47 forKeyedSubscript:@"UpdateTime"];

    v48 = [v8 objectForKeyedSubscript:@"QmaxUpdSuccessCount"];
    [v5 setObject:v48 forKeyedSubscript:@"QmaxUpdSuccessCount"];

    v49 = [v8 objectForKeyedSubscript:@"QmaxUpdFailCount"];
    [v5 setObject:v49 forKeyedSubscript:@"QmaxUpdFailCount"];

    v50 = [v8 objectForKeyedSubscript:@"MinimumRa8"];
    [v5 setObject:v50 forKeyedSubscript:@"MinimumRa8"];

    v51 = [v8 objectForKeyedSubscript:@"MaximumRa8"];
    [v5 setObject:v51 forKeyedSubscript:@"MaximumRa8"];

    v52 = [v8 objectForKeyedSubscript:@"TimeAbove95PercRange1"];
    [v5 setObject:v52 forKeyedSubscript:@"TimeAbove95PercRange1"];

    v53 = [v8 objectForKeyedSubscript:@"TimeAbove95PercRange2"];
    [v5 setObject:v53 forKeyedSubscript:@"TimeAbove95PercRange2"];

    v54 = [v8 objectForKeyedSubscript:@"TimeAbove95PercRange3"];
    [v5 setObject:v54 forKeyedSubscript:@"TimeAbove95PercRange3"];

    v55 = [v8 objectForKeyedSubscript:@"ResetCnt"];
    [v5 setObject:v55 forKeyedSubscript:@"ResetCnt"];

    v56 = [v8 objectForKeyedSubscript:@"NCCMin"];
    [v5 setObject:v56 forKeyedSubscript:@"NCCMin"];

    v57 = [v8 objectForKeyedSubscript:@"NCCMax"];
    [v5 setObject:v57 forKeyedSubscript:@"NCCMax"];

    v58 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v59 = [v58 objectForKeyedSubscript:@"DataFlashWriteCount"];
    [v5 setObject:v59 forKeyedSubscript:@"DataFlashWriteCount"];

    v60 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v61 = [v60 objectForKeyedSubscript:@"ResetDataComms"];
    [v5 setObject:v61 forKeyedSubscript:@"ResetDataComms"];

    v62 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v63 = [v62 objectForKeyedSubscript:@"ResetDataFirmware"];
    [v5 setObject:v63 forKeyedSubscript:@"ResetDataFirmware"];

    v64 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v65 = [v64 objectForKeyedSubscript:@"ResetDataHardware"];
    [v5 setObject:v65 forKeyedSubscript:@"ResetDataHardware"];

    v66 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v67 = [v66 objectForKeyedSubscript:@"ResetDataSoftware"];
    [v5 setObject:v67 forKeyedSubscript:@"ResetDataSoftware"];

    v68 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v69 = [v68 objectForKeyedSubscript:@"ResetDataWatchDog"];
    [v5 setObject:v69 forKeyedSubscript:@"ResetDataWatchDog"];

    v70 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v206 = [v70 objectForKeyedSubscript:@"ResetData"];

    if (v206 && [v206 length] >= 0xB)
    {
      v71 = PLLogCommon();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v217 = v206;
        _os_log_debug_impl(&dword_21A4C6000, v71, OS_LOG_TYPE_DEBUG, "ResetData: %@", buf, 0xCu);
      }

      v72 = v206;
      v73 = [v206 bytes];
      v74 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v73[10]];
      [v5 setObject:v74 forKeyedSubscript:@"LastResetReason"];

      if ([MEMORY[0x277D3F208] isiPhone] && objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClass") > 102037 || objc_msgSend(MEMORY[0x277D3F208], "isWatch") && objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClass") >= 200045)
      {
        v75 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v73[12]];
        [v5 setObject:v75 forKeyedSubscript:@"ResetDataSwWatchDog"];

        v76 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v73[14]];
        [v5 setObject:v76 forKeyedSubscript:@"ResetDataHardFault"];

        v77 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v73[16]];
        [v5 setObject:v77 forKeyedSubscript:@"ResetDataCorruption"];
      }
    }

    v78 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v79 = [v78 objectForKeyedSubscript:@"CycleCount"];
    [v5 setObject:v79 forKeyedSubscript:@"CycleCount"];

    v80 = [v4 objectForKeyedSubscript:@"ITSimulationCounter"];
    [v5 setObject:v80 forKeyedSubscript:@"ITSimulationCounter"];

    v81 = [v4 objectForKeyedSubscript:@"RaUpdateCounter"];
    [v5 setObject:v81 forKeyedSubscript:@"RaUpdateCounter"];

    v82 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v83 = [v82 objectForKeyedSubscript:@"ITMiscStatus"];
    [v5 setObject:v83 forKeyedSubscript:@"ITMiscStatus"];

    v84 = [v4 objectForKeyedSubscript:@"GasGaugeFirmwareVersion"];
    [v5 setObject:v84 forKeyedSubscript:@"GasGaugeFirmwareVersion"];

    v222 = @"GasGaugeFirmwareVersion";
    v85 = [v5 objectForKeyedSubscript:@"GasGaugeFirmwareVersion"];
    v223[0] = v85;
    v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v223 forKeys:&v222 count:1];
    v87 = [v5 entryDate];
    [(PLOperator *)v211 logForSubsystem:@"BatteryMetrics" category:@"BatteryConfig" data:v86 date:v87];

    v88 = [v4 objectForKeyedSubscript:@"FlashWearLevelData"];
    LOBYTE(v85) = v88 == 0;

    if ((v85 & 1) == 0)
    {
      v89 = [v4 objectForKeyedSubscript:@"FlashWearLevelData"];
      [v5 setObject:v89 forKeyedSubscript:@"FlashWearLevelData"];
      v90 = PLLogCommon();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        v197 = [v5 objectForKeyedSubscript:@"FlashWearLevelData"];
        *buf = 138412290;
        v217 = v197;
        _os_log_debug_impl(&dword_21A4C6000, v90, OS_LOG_TYPE_DEBUG, "collected flashWearLevelDataRaw: %@", buf, 0xCu);
      }

      v91 = [(PLBatteryAgent *)v211 parseFlashWearLevelData:v89];
      [(PLBatteryAgent *)v211 pushFlashWearLevelDataToCA:v91];
    }

    v92 = [(PLBatteryAgent *)v211 getBatteryMaximumCapacityPercent];
    if (v92 >= 1)
    {
      v93 = [MEMORY[0x277CCABB0] numberWithInt:v92];
      [v5 setObject:v93 forKeyedSubscript:@"MaximumCapacityPercent"];

      v94 = PLLogBH();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v217) = v92;
        _os_log_impl(&dword_21A4C6000, v94, OS_LOG_TYPE_INFO, "Maximum Capacity: %d", buf, 8u);
      }
    }

    v95 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v96 = [v95 objectForKeyedSubscript:@"AlgoChemID"];
    [v5 setObject:v96 forKeyedSubscript:@"AlgoChemID"];

    v97 = [v4 objectForKeyedSubscript:@"ChargerData"];
    v98 = [v97 objectForKeyedSubscript:@"VacVoltageLimit"];
    [v5 setObject:v98 forKeyedSubscript:@"VacVoltageLimit"];

    v210 = [(PLBatteryAgent *)v211 getBatteryCalibration0Data];
    if (v210)
    {
      [(PLBatteryAgent *)v211 logEventForwardCalibration0withData:v210];
      v99 = [v210 objectForKeyedSubscript:@"calibrationFlags"];
      [v5 setObject:v99 forKeyedSubscript:@"calibrationFlags"];

      v100 = [v210 objectForKeyedSubscript:@"filteredNCC"];
      [v5 setObject:v100 forKeyedSubscript:@"filteredNCC"];

      v101 = [v210 objectForKeyedSubscript:@"exitTotalOperatingTime"];
      [v5 setObject:v101 forKeyedSubscript:@"exitTotalOperatingTime"];

      v102 = [v210 objectForKeyedSubscript:@"svcTotalOperatingTime"];
      [v5 setObject:v102 forKeyedSubscript:@"svcTotalOperatingTime"];
    }

    v103 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v104 = [v103 objectForKeyedSubscript:@"RSS"];
    [v5 setObject:v104 forKeyedSubscript:@"RSS"];

    v105 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v106 = [v105 objectForKeyedSubscript:@"ChemID"];
    [v5 setObject:v106 forKeyedSubscript:@"ChemID"];

    v107 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v204 = [v107 objectForKeyedSubscript:@"RaTableRaw"];

    if ([v204 count])
    {
      v108 = [v204 objectAtIndexedSubscript:0];
      v109 = [(PLBatteryAgent *)v211 parseRawRaTableData:v108];
      for (i = 0; [v109 count] > i; ++i)
      {
        v111 = [v109 objectAtIndexedSubscript:i];
        v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"RaTable_%d", i + 1];
        [v5 setObject:v111 forKeyedSubscript:v112];
      }
    }

    v113 = [v8 objectForKeyedSubscript:@"LTDataCorruptionOffset"];
    [v5 setObject:v113 forKeyedSubscript:@"LTDataCorruptionOffset"];

    v114 = PLLogCommon();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
    {
      v195 = [v5 objectForKeyedSubscript:@"LTDataCorruptionOffset"];
      *buf = 138412290;
      v217 = v195;
      _os_log_debug_impl(&dword_21A4C6000, v114, OS_LOG_TYPE_DEBUG, "DataCorruptionOffset: %@", buf, 0xCu);
    }

    v203 = [v8 objectForKeyedSubscript:@"SafetyFaultCounter"];
    v115 = [(PLBatteryAgent *)v211 parseRawSafetyFaultCounter:?];
    v116 = PLLogBH();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v217 = v203;
      _os_log_debug_impl(&dword_21A4C6000, v116, OS_LOG_TYPE_DEBUG, "SafetyFaultCounter: %@", buf, 0xCu);
    }

    for (j = 0; [v115 count] > j; ++j)
    {
      v118 = [v115 objectAtIndexedSubscript:j];
      v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"SafetyEvent%d", j];
      [v5 setObject:v118 forKeyedSubscript:v119];
    }

    v120 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLBatteryAgent batteryLifetimeUPOCount](v211, "batteryLifetimeUPOCount")}];
    [v5 setObject:v120 forKeyedSubscript:@"LifetimeUPOCount"];

    v121 = [v4 objectForKeyedSubscript:@"Serial"];
    [(PLBatteryAgent *)v211 setSerialNumber:v121];

    v122 = [(PLBatteryAgent *)v211 weekOfManufacture:v4];
    [v5 setObject:v122 forKeyedSubscript:@"WeekMfd"];

    v123 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v124 = [v123 objectForKeyedSubscript:@"DateOfFirstUse"];
    v125 = v124 == 0;

    if (!v125)
    {
      v126 = [v4 objectForKeyedSubscript:@"BatteryData"];
      v127 = [v126 objectForKeyedSubscript:@"DateOfFirstUse"];
      [v127 doubleValue];
      v129 = v128;

      if (v129 == 0.0)
      {
        [v5 setObject:0 forKeyedSubscript:@"DOFU"];
      }

      else
      {
        v130 = PLLogCommon();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
        {
          v199 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v129];
          *buf = 138412290;
          v217 = v199;
          _os_log_debug_impl(&dword_21A4C6000, v130, OS_LOG_TYPE_DEBUG, "DOFU is %@", buf, 0xCu);
        }

        v131 = MEMORY[0x277CCABB0];
        v132 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v129];
        [v132 timeIntervalSince1970];
        v133 = [v131 numberWithDouble:?];
        [v5 setObject:v133 forKeyedSubscript:@"DOFU"];
      }

      v220 = @"DOFU";
      v134 = [v5 objectForKeyedSubscript:?];
      if (v134)
      {
        [v5 objectForKeyedSubscript:@"DOFU"];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithDouble:v129];
      }
      v135 = ;
      v221 = v135;
      v136 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v221 forKeys:&v220 count:1];
      v137 = [v5 entryDate];
      [(PLOperator *)v211 logForSubsystem:@"BatteryMetrics" category:@"BatteryConfig" data:v136 date:v137];
    }

    v138 = [(PLBatteryAgent *)v211 batteryEEEECode:v4];
    [v5 setObject:v138 forKeyedSubscript:@"EEEECode"];

    v139 = [(PLBatteryAgent *)v211 isOriginalBattery];
    [v5 setObject:v139 forKeyedSubscript:@"OriginalBattery"];

    v140 = [(PLBatteryAgent *)v211 batterySerialChanged:v4];
    v141 = [MEMORY[0x277CCABB0] numberWithBool:v140];
    [v5 setObject:v141 forKeyedSubscript:@"BatterySerialChanged"];

    if (v140)
    {
      MEMORY[0x21CEDCD40](@"com.apple.power.battery.newSerial", 1);
    }

    [PLEventBackwardBatteryEntry populateCellWOMForEntry:v5 withRawData:v4];
    v142 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v143 = [v142 objectForKeyedSubscript:@"DailyMaxSoc"];
    [v5 setObject:v143 forKeyedSubscript:@"DailyMaxSoc"];

    v144 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v145 = [v144 objectForKeyedSubscript:@"DailyMinSoc"];
    [v5 setObject:v145 forKeyedSubscript:@"DailyMinSoc"];

    v209 = [v4 objectForKey:@"KioskMode"];
    if (v209)
    {
      v146 = [v209 objectForKeyedSubscript:@"KioskModeHighSocDays"];
      [v5 setObject:v146 forKeyedSubscript:@"KioskModeHighSocDays"];

      v147 = [v209 objectForKeyedSubscript:@"KioskModeLastHighSocHours"];
      [v5 setObject:v147 forKeyedSubscript:@"KioskModeLastHighSocHours"];

      v148 = [v209 objectForKeyedSubscript:@"KioskModeHighSocSeconds"];
      [v5 setObject:v148 forKeyedSubscript:@"KioskModeHighSocSeconds"];
    }

    v208 = [v4 objectForKeyedSubscript:@"GgDataFlashUpdate"];
    if (v208)
    {
      v149 = [v208 objectForKeyedSubscript:@"Status"];
      if (v149)
      {
        [v5 setObject:v149 forKeyedSubscript:@"GGUpdateStatus"];
        if ([v149 intValue] - 3 <= 0xFFFFFFFD)
        {
          v150 = [v208 objectForKeyedSubscript:@"Error"];
          [v5 setObject:v150 forKeyedSubscript:@"GGUpdateError"];

          v151 = [v208 objectForKeyedSubscript:@"Phase"];
          [v5 setObject:v151 forKeyedSubscript:@"GGUpdatePhase"];

          v152 = [v208 objectForKeyedSubscript:@"ErrorPhase"];
          [v5 setObject:v152 forKeyedSubscript:@"GGUpdateErrorPhase"];

          v153 = [v208 objectForKeyedSubscript:@"SubclassId"];
          [v5 setObject:v153 forKeyedSubscript:@"GGUpdateSubclassID"];

          v154 = [v208 objectForKeyedSubscript:@"Block"];
          [v5 setObject:v154 forKeyedSubscript:@"GGUpdateBlock"];
        }
      }
    }

    v155 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v156 = [v155 objectForKeyedSubscript:@"LifetimeData"];
    v157 = [v156 objectForKeyedSubscript:@"LTOCVRestCounter"];
    [v5 setObject:v157 forKeyedSubscript:@"LifeTimeOCVRestCounter"];

    v158 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v159 = [v158 objectForKeyedSubscript:@"LifetimeData"];
    v160 = [v159 objectForKeyedSubscript:@"LTQmaxUpdateCounter"];
    [v5 setObject:v160 forKeyedSubscript:@"LifeTimeQmaxUpdateCounter"];

    v161 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v162 = [v161 objectForKeyedSubscript:@"LifetimeData"];
    v163 = [v162 objectForKeyedSubscript:@"LTOCVRestCounterHsp"];
    [v5 setObject:v163 forKeyedSubscript:@"LifeTimeOCVRestCounterHsp"];

    v164 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v165 = [v164 objectForKeyedSubscript:@"LifetimeData"];
    v166 = [v165 objectForKeyedSubscript:@"LTQmaxUpdateCounterHsp"];
    [v5 setObject:v166 forKeyedSubscript:@"LifeTimeQmaxUpdateCounterHsp"];

    [MEMORY[0x277D3F180] doubleForKey:@"LastUPOSystemTimestamp" ifNotSet:0.0];
    v168 = v167;
    ADClientSetValueForScalarKey();
    v169 = [MEMORY[0x277CCABB0] numberWithDouble:v168];
    [v5 setObject:v169 forKeyedSubscript:@"LastUPOSystemTimestamp"];

    [MEMORY[0x277D3F180] doubleForKey:@"LastUPOTimestamp" ifNotSet:0.0];
    v170 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v5 setObject:v170 forKeyedSubscript:@"LastUPOTimestamp"];

    v171 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v172 = [v171 objectForKeyedSubscript:@"ChemicalWeightedRa"];
    [v5 setObject:v172 forKeyedSubscript:@"ChemicalWeightedRa"];

    [PLEventBackwardBatteryEntry populatewRaForEntry:v5 withRawData:v4];
    v173 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v174 = [v173 objectForKeyedSubscript:@"BatteryHealthMetric"];
    [v5 setObject:v174 forKeyedSubscript:@"BatteryHealthMetric"];

    v175 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v176 = [v175 objectForKeyedSubscript:@"PeakPerformanceCapacity"];
    [v5 setObject:v176 forKeyedSubscript:@"PeakPerformanceCapacity"];

    v177 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLBatteryAgent getBatteryHealthServiceState](v211, "getBatteryHealthServiceState")}];
    v178 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBatteryAgent getBatteryHealthServiceFlags](v211, "getBatteryHealthServiceFlags")}];
    [v5 setObject:v177 forKeyedSubscript:@"ServiceOption"];
    [v5 setObject:v178 forKeyedSubscript:@"batteryServiceFlags"];
    [v177 intValue];
    ADClientSetValueForScalarKey();
    [v178 intValue];
    ADClientSetValueForScalarKey();
    v179 = PLLogBH();
    if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v217 = v177;
      v218 = 2112;
      v219 = v178;
      _os_log_impl(&dword_21A4C6000, v179, OS_LOG_TYPE_INFO, "BH State: %@. Flags: %@", buf, 0x16u);
    }

    [(PLBatteryAgent *)v211 logAuthFail:v5];
    if ([MEMORY[0x277D3F1B8] hasBatteryModuleAuth])
    {
      v202 = [(PLBatteryAgent *)v211 xFlags];
      v180 = [MEMORY[0x277CCABB0] numberWithInteger:v202];
      [v5 setObject:v180 forKeyedSubscript:@"xFlags"];

      if ((v202 & 0x2B) != 0)
      {
        [(PLOperator *)v211 defaultDoubleForKey:@"xFlagsRetryTimerInterval"];
        v182 = v181;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v183 = objc_opt_class();
          v215[0] = MEMORY[0x277D85DD0];
          v215[1] = 3221225472;
          v215[2] = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke;
          v215[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v215[4] = v183;
          v184 = v215;
          if (qword_2811F3C40 != -1)
          {
            dispatch_once(&qword_2811F3C40, v184);
          }

          if (byte_2811F3AA3 == 1)
          {
            v201 = [MEMORY[0x277CCACA8] stringWithFormat:@"xFlags indicate error, will retry in %.1f seconds", *&v182];
            v200 = MEMORY[0x277D3F178];
            v185 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
            v186 = [v185 lastPathComponent];
            v187 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventNoneBatteryConfigWithRawData:]"];
            [v200 logMessage:v201 fromFile:v186 fromFunction:v187 fromLineNumber:7954];

            v188 = PLLogCommon();
            if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v217 = v201;
              _os_log_debug_impl(&dword_21A4C6000, v188, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v189 = objc_alloc(MEMORY[0x277D3F250]);
        v190 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:v182];
        v191 = [(PLOperator *)v211 workQueue];
        v212[0] = MEMORY[0x277D85DD0];
        v212[1] = 3221225472;
        v212[2] = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5048;
        v212[3] = &unk_278260DC0;
        v212[4] = v211;
        v214 = v202;
        v213 = v5;
        v192 = [v189 initWithFireDate:v190 withInterval:0 withTolerance:0 repeats:v191 withUserInfo:v212 withQueue:v182 withBlock:6.0e10];
        [(PLBatteryAgent *)v211 setXFlagsRetryTimer:v192];
      }

      else
      {
        AnalyticsSendEventLazy();
      }
    }

    [(PLOperator *)v211 logEntry:v5];
    [(PLBatteryAgent *)v211 setLastBatteryConfigEntry:v5];
    v193 = PLLogCommon();
    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v193, OS_LOG_TYPE_DEBUG, "About to push data to CA", buf, 2u);
    }

    [(PLBatteryAgent *)v211 logBatteryConfigToCA:v5];
    [(PLBatteryAgent *)v211 logBatteryConfigToAggd:v5];
    [(PLBatteryAgent *)v211 logWatchdogDebugDumpToCA:v4];
    [(PLBatteryAgent *)v211 logFlashAgingToCA:v4];
    [(PLBatteryAgent *)v211 logShallowChargingToCA:v4];
    [(PLBatteryAgent *)v211 logSlowChargingReasonToCA:v4];
    [(PLBatteryAgent *)v211 logkBatteryRsenseOpenCountToCA:v4];

    goto LABEL_83;
  }

LABEL_84:

  v194 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA3 = result;
  return result;
}

void __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5048(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) xFlags];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F3C48 != -1)
    {
      dispatch_once(&qword_2811F3C48, block);
    }

    if (byte_2811F3AA4 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"xFlags retry value: %ld, previously: %ld", v2, *(a1 + 48)];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventNoneBatteryConfigWithRawData:]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:7963];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v2 == *(a1 + 48))
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v11 = [*(a1 + 32) storage];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5052;
    v14[3] = &unk_27825CFA0;
    v12 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v12;
    v16 = v2;
    [v11 updateEntry:v15 withBlock:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA4 = result;
  return result;
}

uint64_t __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5052(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_2_5053;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F3C50 != -1)
    {
      dispatch_once(&qword_2811F3C50, block);
    }

    if (byte_2811F3AA5 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Updating xFlags value in powerlog and aggd"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventNoneBatteryConfigWithRawData:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:7968];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [*(a1 + 40) setObject:v10 forKeyedSubscript:@"xFlags"];

  [*(a1 + 32) setAggdIntegerValueFromEntry:*(a1 + 40) forKey:@"xFlags" withPrefix:@"com.apple.power.battery."];
  v13 = MEMORY[0x277D85DD0];
  v14 = *(a1 + 48);
  AnalyticsSendEventLazy();
  result = [*(a1 + 32) setLastBatteryConfigEntry:{*(a1 + 40), v13, 3221225472, __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5057, &__block_descriptor_40_e19___NSDictionary_8__0l, v14}];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_2_5053(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA5 = result;
  return result;
}

id __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5057(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"flags";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_2_5058(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"flags";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"flags";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5061(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA6 = result;
  return result;
}

- (void)logEventNoneBatteryConfigCycleCountData
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)self workQueue];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __57__PLBatteryAgent_logEventNoneBatteryConfigCycleCountData__block_invoke;
  block[8] = &unk_27825C7A0;
  block[9] = self;
  v4 = IOPMCopyCycleCountData();

  if (v4 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PLBatteryAgent_logEventNoneBatteryConfigCycleCountData__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F3C60 != -1)
    {
      dispatch_once(&qword_2811F3C60, block);
    }

    if (byte_2811F3AA7 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Battery Config Cycle Count Data Error: %x", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventNoneBatteryConfigCycleCountData]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:8075];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __57__PLBatteryAgent_logEventNoneBatteryConfigCycleCountData__block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"batteryCycleCountData"];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"Cycles"];
    if (v4)
    {
      v5 = v4;
      v50 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"BatteryConfig"];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = v5;
      v6 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v6)
      {
        v7 = v6;
        v49 = *v53;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v53 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v52 + 1) + 8 * i);
            v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v50];
            v11 = [v9 objectForKeyedSubscript:@"CycleCount"];
            [v10 setObject:v11 forKeyedSubscript:@"CycleCount"];

            v12 = [v9 objectForKeyedSubscript:@"AppleRawMaxCapacity"];
            [v10 setObject:v12 forKeyedSubscript:@"AppleRawMaxCapacity"];

            v13 = [v9 objectForKeyedSubscript:@"NominalChargeCapacity"];
            [v10 setObject:v13 forKeyedSubscript:@"NominalChargeCapacity"];

            v14 = [v9 objectForKeyedSubscript:@"Flags"];
            [v10 setObject:v14 forKeyedSubscript:@"Flags"];

            v15 = [v9 objectForKeyedSubscript:@"QmaxCell0"];
            [v10 setObject:v15 forKeyedSubscript:@"QmaxCell0"];

            v16 = [v9 objectForKeyedSubscript:@"Ra00"];
            [v10 setObject:v16 forKeyedSubscript:@"RaTable_1"];

            v17 = [v9 objectForKeyedSubscript:@"Ra01"];
            [v10 setObject:v17 forKeyedSubscript:@"RaTable_2"];

            v18 = [v9 objectForKeyedSubscript:@"Ra02"];
            [v10 setObject:v18 forKeyedSubscript:@"RaTable_3"];

            v19 = [v9 objectForKeyedSubscript:@"Ra03"];
            [v10 setObject:v19 forKeyedSubscript:@"RaTable_4"];

            v20 = [v9 objectForKeyedSubscript:@"Ra04"];
            [v10 setObject:v20 forKeyedSubscript:@"RaTable_5"];

            v21 = [v9 objectForKeyedSubscript:@"Ra05"];
            [v10 setObject:v21 forKeyedSubscript:@"RaTable_6"];

            v22 = [v9 objectForKeyedSubscript:@"Ra06"];
            [v10 setObject:v22 forKeyedSubscript:@"RaTable_7"];

            v23 = [v9 objectForKeyedSubscript:@"Ra07"];
            [v10 setObject:v23 forKeyedSubscript:@"RaTable_8"];

            v24 = [v9 objectForKeyedSubscript:@"Ra08"];
            [v10 setObject:v24 forKeyedSubscript:@"RaTable_9"];

            v25 = [v9 objectForKeyedSubscript:@"Ra09"];
            [v10 setObject:v25 forKeyedSubscript:@"RaTable_10"];

            v26 = [v9 objectForKeyedSubscript:@"Ra10"];
            [v10 setObject:v26 forKeyedSubscript:@"RaTable_11"];

            v27 = [v9 objectForKeyedSubscript:@"Ra11"];
            [v10 setObject:v27 forKeyedSubscript:@"RaTable_12"];

            v28 = [v9 objectForKeyedSubscript:@"Ra12"];
            [v10 setObject:v28 forKeyedSubscript:@"RaTable_13"];

            v29 = [v9 objectForKeyedSubscript:@"Ra13"];
            [v10 setObject:v29 forKeyedSubscript:@"RaTable_14"];

            v30 = [v9 objectForKeyedSubscript:@"Ra14"];
            [v10 setObject:v30 forKeyedSubscript:@"RaTable_15"];

            v31 = [v9 objectForKeyedSubscript:@"Wom1"];
            [v10 setObject:v31 forKeyedSubscript:@"Wom_1"];

            v32 = [v9 objectForKeyedSubscript:@"Wom2"];
            [v10 setObject:v32 forKeyedSubscript:@"Wom_2"];

            v33 = [v9 objectForKeyedSubscript:@"MaximumTemperature"];
            [v10 setObject:v33 forKeyedSubscript:@"MaximumTemperature"];

            v34 = [v9 objectForKeyedSubscript:@"MinimumTemperature"];
            [v10 setObject:v34 forKeyedSubscript:@"MinimumTemperature"];

            v35 = [v9 objectForKeyedSubscript:@"MaximumPackVoltage"];
            [v10 setObject:v35 forKeyedSubscript:@"MaximumPackVoltage"];

            v36 = [v9 objectForKeyedSubscript:@"MinimumPackVoltage"];
            [v10 setObject:v36 forKeyedSubscript:@"MinimumPackVoltage"];

            v37 = [v9 objectForKeyedSubscript:@"MaximimChargeCurrent"];
            [v10 setObject:v37 forKeyedSubscript:@"MaximumChargeCurrent"];

            v38 = [v9 objectForKeyedSubscript:@"MaximimDischargeCurrent"];
            [v10 setObject:v38 forKeyedSubscript:@"MaximumDischargeCurrent"];

            v39 = [v9 objectForKeyedSubscript:@"MinimumFCC"];
            [v10 setObject:v39 forKeyedSubscript:@"MinimumFCC"];

            v40 = [v9 objectForKeyedSubscript:@"LowAvgCurrentLastRun"];
            [v10 setObject:v40 forKeyedSubscript:@"LowAvgCurrentLastRun"];

            v41 = [v9 objectForKeyedSubscript:@"HighAvgCurrentLastRun"];
            [v10 setObject:v41 forKeyedSubscript:@"HighAvgCurrentLastRun"];

            v42 = [v9 objectForKeyedSubscript:@"AverageTemperature"];
            [v10 setObject:v42 forKeyedSubscript:@"AverageTemperature"];

            v43 = [v9 objectForKeyedSubscript:@"RDISCnt"];
            [v10 setObject:v43 forKeyedSubscript:@"RDISCnt"];

            v44 = [v9 objectForKeyedSubscript:@"CycleCountLastQmax"];
            [v10 setObject:v44 forKeyedSubscript:@"CycleCountLastQmax"];

            v45 = [v9 objectForKeyedSubscript:@"TotalOperatingTime"];
            [v10 setObject:v45 forKeyedSubscript:@"TotalOperatingTime"];

            v46 = [v9 objectForKeyedSubscript:@"TimeAbove95Perc"];
            [v10 setObject:v46 forKeyedSubscript:@"TimeAbove95Perc"];

            [*(a1 + 32) logEntry:v10];
          }

          v7 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v7);
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __57__PLBatteryAgent_logEventNoneBatteryConfigCycleCountData__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA7 = result;
  return result;
}

- (BOOL)givePluggedInFreePass
{
  v2 = self;
  v3 = MEMORY[0x277D3F258];
  v4 = [(PLBatteryAgent *)self deviceIsPluggedIn];
  v5 = [v4 BOOLValue];
  [(PLBatteryAgent *)v2 batteryLevelPercent];
  LOBYTE(v2) = [v3 isPingPongChargingWith:v5 andBatteryLevelPercent:?];

  return v2;
}

- (void)addPowerMeasurementToAccounting:(double)a3 withStartDate:(id)a4 withEndDate:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v10 addPowerMeasurementEventIntervalWithPower:v8 withStartDate:v9 withEndDate:a3];

  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v22 = 134218498;
    v23 = a3;
    v24 = 2112;
    v25 = *&v8;
    v26 = 2112;
    v27 = v9;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "added power %.2fmW for %@-%@", &v22, 0x20u);
  }

  v12 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
  v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  [v9 timeIntervalSinceDate:v8];
  v15 = v14;
  v16 = v14 / 3600.0 * a3;
  v17 = PLLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v22 = 134218240;
    v23 = v16;
    v24 = 2048;
    v25 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "calculated energy %.2fmWh for %.2fs", &v22, 0x16u);
  }

  v18 = llround(v16 * 1000.0);
  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v22 = 134217984;
    v23 = v18;
    _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "scaled to %.2fuWh", &v22, 0xCu);
  }

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  [v13 setObject:v20 forKeyedSubscript:@"energyConsumed"];

  [(PLOperator *)self logEntry:v13];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)logCurrentAccumulatorWithRawData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"BatteryData"];

    if (v6)
    {
      v7 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CurrentAccumulator"];
      [(PLOperator *)self timeIntervalSinceLastLogForEntryKey:v7];
      v9 = v8;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__PLBatteryAgent_logCurrentAccumulatorWithRawData___block_invoke;
      block[3] = &unk_2782591D0;
      block[4] = self;
      if (qword_2811F3C68 != -1)
      {
        dispatch_once(&qword_2811F3C68, block);
      }

      if (v9 > *&qword_2811F3C70)
      {
        v10 = [v5 objectForKeyedSubscript:@"BatteryData"];
        v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
        v12 = [v10 objectForKeyedSubscript:@"CellCurrentAccumulator"];
        v17 = MEMORY[0x277D85DD0];
        v18 = 3221225472;
        v19 = __51__PLBatteryAgent_logCurrentAccumulatorWithRawData___block_invoke_2;
        v20 = &unk_278260DE8;
        v21 = v11;
        v13 = v11;
        [v12 enumerateObjectsUsingBlock:&v17];
        v14 = [v10 objectForKeyedSubscript:{@"PackCurrentAccumulator", v17, v18, v19, v20}];
        [v13 setObject:v14 forKeyedSubscript:@"CurrentAccumulator"];

        v15 = [v10 objectForKeyedSubscript:@"PackCurrentAccumulatorCount"];
        [v13 setObject:v15 forKeyedSubscript:@"CurrentAccumulatorCount"];

        v16 = [v10 objectForKeyedSubscript:@"CellCurrentAccumulatorCount"];
        [v13 setObject:v16 forKeyedSubscript:@"CellCurrentAccumulatorCount"];

        [(PLBatteryAgent *)self accountGaugePowerFromCurrentAccumulatorEntry:v13];
        [(PLOperator *)self logEntry:v13];
      }
    }
  }
}

uint64_t __51__PLBatteryAgent_logCurrentAccumulatorWithRawData___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"RateLimiterCurrentAccumulator"];
  qword_2811F3C70 = v2;
  return result;
}

void __51__PLBatteryAgent_logCurrentAccumulatorWithRawData___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = (a3 + 1);
  v6 = a2;
  v7 = [v4 stringWithFormat:@"Cell%dCurrentAccumulator", v5];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

- (void)accountGaugePowerFromCurrentAccumulatorEntry:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v32 = v4;
    v5 = [v4 objectForKeyedSubscript:@"CurrentAccumulator"];
    v4 = v32;
    if (v5)
    {
      v6 = [v32 objectForKeyedSubscript:@"CurrentAccumulatorCount"];

      v4 = v32;
      if (v6)
      {
        v7 = [v32 objectForKeyedSubscript:@"CurrentAccumulator"];
        v8 = [v7 intValue];

        v9 = [v32 objectForKeyedSubscript:@"CurrentAccumulatorCount"];
        v10 = [v9 intValue];

        v11 = MEMORY[0x277CBEAA8];
        v12 = [v32 objectForKeyedSubscript:@"timestamp"];
        [v12 doubleValue];
        v13 = [v11 dateWithTimeIntervalSince1970:?];

        if (![(PLBatteryAgent *)self previousCurrentAccumulator]|| ![(PLBatteryAgent *)self previousCurrentAccumulatorCount]|| ([(PLBatteryAgent *)self previousCurrentAccumulatorDate], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
        {
          v15 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CurrentAccumulator"];
          v16 = [(PLOperator *)self storage];
          v17 = [v16 lastEntryForKey:v15];

          if (v17)
          {
            v18 = [v17 objectForKeyedSubscript:@"CurrentAccumulator"];

            if (v18)
            {
              v19 = [v17 objectForKeyedSubscript:@"CurrentAccumulator"];
              -[PLBatteryAgent setPreviousCurrentAccumulator:](self, "setPreviousCurrentAccumulator:", [v19 intValue]);
            }

            v20 = [v17 objectForKeyedSubscript:@"CurrentAccumulatorCount"];

            if (v20)
            {
              v21 = [v17 objectForKeyedSubscript:@"CurrentAccumulatorCount"];
              -[PLBatteryAgent setPreviousCurrentAccumulatorCount:](self, "setPreviousCurrentAccumulatorCount:", [v21 intValue]);
            }

            v22 = MEMORY[0x277CBEAA8];
            v23 = [v17 objectForKeyedSubscript:@"timestamp"];
            [v23 doubleValue];
            v24 = [v22 dateWithTimeIntervalSince1970:?];
            [(PLBatteryAgent *)self setPreviousCurrentAccumulatorDate:v24];
          }

          if (![(PLBatteryAgent *)self previousCurrentAccumulator]|| ![(PLBatteryAgent *)self previousCurrentAccumulatorCount])
          {
            [(PLBatteryAgent *)self setPreviousCurrentAccumulator:v8];
            [(PLBatteryAgent *)self setPreviousCurrentAccumulatorCount:v10];
            [(PLBatteryAgent *)self setPreviousCurrentAccumulatorDate:v13];

LABEL_25:
            v4 = v32;
            goto LABEL_26;
          }
        }

        if (v10 > [(PLBatteryAgent *)self previousCurrentAccumulatorCount])
        {
          v25 = [(PLBatteryAgent *)self previousCurrentAccumulator]- v8;
          v26 = v25 / (v10 - [(PLBatteryAgent *)self previousCurrentAccumulatorCount]);
          [(PLBatteryAgent *)self rawBatteryVoltageVolt];
          v28 = v27 * v26;
          v29 = [(PLBatteryAgent *)self givePluggedInFreePass];
          if (v28 <= 0.0 || v29)
          {
            v28 = 0.0;
          }

          v31 = [(PLBatteryAgent *)self previousCurrentAccumulatorDate];
          [(PLBatteryAgent *)self addPowerMeasurementToAccounting:v31 withStartDate:v13 withEndDate:v28];
        }

        [(PLBatteryAgent *)self setPreviousCurrentAccumulator:v8];
        [(PLBatteryAgent *)self setPreviousCurrentAccumulatorCount:v10];
        [(PLBatteryAgent *)self setPreviousCurrentAccumulatorDate:v13];
        goto LABEL_25;
      }
    }
  }

LABEL_26:
}

- (BOOL)shouldWaitForLifetimeDataWithRawData:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D3F208] isWatch])
  {
LABEL_8:
    LOBYTE(v4) = 0;
    goto LABEL_9;
  }

  if (([MEMORY[0x277D3F180] BOOLForKey:@"ForceFullGGUpdateOnBoot" ifNotSet:1] & 1) == 0)
  {
    v6 = PLLogBH();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "ForceFullGGUpdateOnBoot";
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Bypassing %s", &v9, 0xCu);
    }

    goto LABEL_8;
  }

  v4 = [v3 objectForKeyedSubscript:@"ForceFullGGUpdateOnBoot"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"ForceFullGGUpdateOnBoot"];
    LOBYTE(v4) = [v5 BOOLValue];
  }

LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int64_t)xFlags
{
  v113 = *MEMORY[0x277D85DE8];
  v2 = IOServiceMatching("IOPMPowerSource");
  v3 = IOServiceMatching("AppleAuthCPRelay");
  v4 = v3;
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (!v2)
    {
      goto LABEL_43;
    }

    CFRelease(v2);
LABEL_42:
    v2 = 0;
LABEL_43:
    v37 = 1;
    goto LABEL_44;
  }

  CFDictionarySetValue(v3, @"IOParentMatch", v2);
  CFRelease(v2);
  v2 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:{IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v4)}];
  v6 = [MEMORY[0x277D3F180] debugEnabled];
  if (!v2)
  {
    if (v6)
    {
      v38 = objc_opt_class();
      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __24__PLBatteryAgent_xFlags__block_invoke;
      v110[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v110[4] = v38;
      if (qword_2811F3C78 != -1)
      {
        dispatch_once(&qword_2811F3C78, v110);
      }

      if (byte_2811F3AA8 == 1)
      {
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to snapshot %s", "AppleAuthCPRelay"];
        v40 = MEMORY[0x277D3F178];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v42 = [v41 lastPathComponent];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
        [v40 logMessage:v39 fromFile:v42 fromFunction:v43 fromLineNumber:8408];

        v44 = PLLogCommon();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v112 = v39;
          _os_log_debug_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_42;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__PLBatteryAgent_xFlags__block_invoke_5105;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F3C80 != -1)
    {
      dispatch_once(&qword_2811F3C80, block);
    }

    if (byte_2811F3AA9 == 1)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [v2 objectForKeyedSubscript:@"isTrustedForUI"];
      v10 = [v8 stringWithFormat:@"isTrustedForUI: %@", v9];

      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:8413];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v112 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __24__PLBatteryAgent_xFlags__block_invoke_5114;
    v108[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v108[4] = v16;
    if (qword_2811F3C88 != -1)
    {
      dispatch_once(&qword_2811F3C88, v108);
    }

    if (byte_2811F3AAA == 1)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [v2 objectForKeyedSubscript:@"AuthPassed"];
      v19 = [v17 stringWithFormat:@"AuthPassed: %@", v18];

      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
      [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:8414];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v112 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = objc_opt_class();
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __24__PLBatteryAgent_xFlags__block_invoke_5123;
    v107[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v107[4] = v25;
    if (qword_2811F3C90 != -1)
    {
      dispatch_once(&qword_2811F3C90, v107);
    }

    if (byte_2811F3AAB == 1)
    {
      v26 = MEMORY[0x277CCACA8];
      v27 = [v2 objectForKeyedSubscript:@"FdrValidationStatus"];
      v28 = [v26 stringWithFormat:@"FDR Val St: %@", v27];

      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v31 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
      [v29 logMessage:v28 fromFile:v31 fromFunction:v32 fromLineNumber:8415];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v112 = v28;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v34 = [v2 objectForKeyedSubscript:@"isTrustedForUI"];

  if (v34)
  {
    v35 = [v2 objectForKeyedSubscript:@"isTrustedForUI"];
    v36 = [v35 BOOLValue];

    if (v36)
    {
      v37 = 4;
      goto LABEL_61;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v54 = objc_opt_class();
      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __24__PLBatteryAgent_xFlags__block_invoke_5132;
      v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v106[4] = v54;
      if (qword_2811F3C98 != -1)
      {
        dispatch_once(&qword_2811F3C98, v106);
      }

      if (byte_2811F3AAC == 1)
      {
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"isTrustedForUI failed"];
        v55 = MEMORY[0x277D3F178];
        v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v57 = [v56 lastPathComponent];
        v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
        [v55 logMessage:v48 fromFile:v57 fromFunction:v58 fromLineNumber:8422];

        v53 = PLLogCommon();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v112 = v48;
          _os_log_debug_impl(&dword_21A4C6000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v37 = 0;
LABEL_58:

        goto LABEL_61;
      }
    }

    v37 = 0;
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v47 = objc_opt_class();
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __24__PLBatteryAgent_xFlags__block_invoke_5138;
      v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v105[4] = v47;
      if (qword_2811F3CA0 != -1)
      {
        dispatch_once(&qword_2811F3CA0, v105);
      }

      if (byte_2811F3AAD == 1)
      {
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"isTrustedForUI missing"];
        v49 = MEMORY[0x277D3F178];
        v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v51 = [v50 lastPathComponent];
        v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
        [v49 logMessage:v48 fromFile:v51 fromFunction:v52 fromLineNumber:8426];

        v53 = PLLogCommon();
        v37 = 2;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v112 = v48;
          v37 = 2;
          _os_log_debug_impl(&dword_21A4C6000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        goto LABEL_58;
      }
    }

    v37 = 2;
  }

LABEL_61:
  v59 = [v2 objectForKeyedSubscript:@"AuthPassed"];

  if (v59)
  {
    v60 = [v2 objectForKeyedSubscript:@"AuthPassed"];
    v61 = [v60 BOOLValue];

    if (v61)
    {
      v37 |= 0x10uLL;
      goto LABEL_76;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v69 = objc_opt_class();
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __24__PLBatteryAgent_xFlags__block_invoke_5144;
      v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v104[4] = v69;
      if (qword_2811F3CA8 != -1)
      {
        dispatch_once(&qword_2811F3CA8, v104);
      }

      if (byte_2811F3AAE == 1)
      {
        v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"Auth Failed"];
        v70 = MEMORY[0x277D3F178];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v72 = [v71 lastPathComponent];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
        [v70 logMessage:v63 fromFile:v72 fromFunction:v73 fromLineNumber:8434];

        v68 = PLLogCommon();
        if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_75;
        }

        *buf = 138412290;
        v112 = v63;
        goto LABEL_103;
      }
    }
  }

  else
  {
    v37 |= 8uLL;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v62 = objc_opt_class();
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __24__PLBatteryAgent_xFlags__block_invoke_5150;
      v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v103[4] = v62;
      if (qword_2811F3CB0 != -1)
      {
        dispatch_once(&qword_2811F3CB0, v103);
      }

      if (byte_2811F3AAF == 1)
      {
        v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"AuthPassed missing"];
        v64 = MEMORY[0x277D3F178];
        v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v66 = [v65 lastPathComponent];
        v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
        [v64 logMessage:v63 fromFile:v66 fromFunction:v67 fromLineNumber:8438];

        v68 = PLLogCommon();
        if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
LABEL_75:

          goto LABEL_76;
        }

        *buf = 138412290;
        v112 = v63;
LABEL_103:
        _os_log_debug_impl(&dword_21A4C6000, v68, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        goto LABEL_75;
      }
    }
  }

LABEL_76:
  v74 = [v2 objectForKeyedSubscript:@"FdrValidationStatus"];

  if (!v74)
  {
    v37 |= 0x20uLL;
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_95;
    }

    v84 = objc_opt_class();
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __24__PLBatteryAgent_xFlags__block_invoke_5165;
    v101[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v101[4] = v84;
    if (qword_2811F3CC0 != -1)
    {
      dispatch_once(&qword_2811F3CC0, v101);
    }

    if (byte_2811F3AB1 != 1)
    {
      goto LABEL_95;
    }

    v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"FDR Validation Missing"];
    v85 = MEMORY[0x277D3F178];
    v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
    v87 = [v86 lastPathComponent];
    v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
    [v85 logMessage:v76 fromFile:v87 fromFunction:v88 fromLineNumber:8451];

    v78 = PLLogCommon();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v112 = v76;
      _os_log_debug_impl(&dword_21A4C6000, v78, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_93:

    goto LABEL_94;
  }

  v75 = [v2 objectForKeyedSubscript:@"FdrValidationStatus"];
  v76 = v75;
  if (!v75 || ![v75 isEqualToString:@"Pass"])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_94;
    }

    v77 = objc_opt_class();
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __24__PLBatteryAgent_xFlags__block_invoke_5159;
    v102[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v102[4] = v77;
    if (qword_2811F3CB8 != -1)
    {
      dispatch_once(&qword_2811F3CB8, v102);
    }

    if (byte_2811F3AB0 != 1)
    {
      goto LABEL_94;
    }

    v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"FDR Validation Failed: %@", v76];
    v79 = MEMORY[0x277D3F178];
    v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
    v81 = [v80 lastPathComponent];
    v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
    [v79 logMessage:v78 fromFile:v81 fromFunction:v82 fromLineNumber:8447];

    v83 = PLLogCommon();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v112 = v78;
      _os_log_debug_impl(&dword_21A4C6000, v83, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    goto LABEL_93;
  }

  v37 |= 0x40uLL;
LABEL_94:

LABEL_95:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v89 = objc_opt_class();
    v96 = MEMORY[0x277D85DD0];
    v97 = 3221225472;
    v98 = __24__PLBatteryAgent_xFlags__block_invoke_5171;
    v99 = &__block_descriptor_40_e5_v8__0lu32l8;
    v100 = v89;
    if (qword_2811F3CC8 != -1)
    {
      dispatch_once(&qword_2811F3CC8, &v96);
    }

    if (byte_2811F3AB2 == 1)
    {
      v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got auth flags: %ld", v37, v96, v97, v98, v99, v100];
      v91 = MEMORY[0x277D3F178];
      v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v93 = [v92 lastPathComponent];
      v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
      [v91 logMessage:v90 fromFile:v93 fromFunction:v94 fromLineNumber:8453];

      v95 = PLLogCommon();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v112 = v90;
        _os_log_debug_impl(&dword_21A4C6000, v95, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_44:

  v45 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA8 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5105(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AA9 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5114(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AAA = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5123(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AAB = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5132(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AAC = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5138(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AAD = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5144(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AAE = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5150(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AAF = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5159(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AB0 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5165(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AB1 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5171(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AB2 = result;
  return result;
}

- (void)setupCSMLogging
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  csmLastFlushMonotonicDate = self->_csmLastFlushMonotonicDate;
  self->_csmLastFlushMonotonicDate = v3;

  [(PLOperator *)self defaultDoubleForKey:@"RateLimiterCSMAggdUpdate"];
  self->_csmFlushInterval = v5;
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    csmFlushInterval = self->_csmFlushInterval;
    *buf = 134217984;
    v19 = csmFlushInterval;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "csm: flush interval %f", buf, 0xCu);
  }

  self->_csmTotalCount = 0;
  self->_csmFailureCount = 0;
  self->_csmOverrideValue = 0;
  if ([MEMORY[0x277D3F180] BOOLForKey:@"PLDebugService_Enabled" ifNotSet:0])
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEFAULT, "csm: enabling debug notifications", buf, 2u);
    }

    v8 = objc_alloc(MEMORY[0x277D3F160]);
    v9 = [(PLOperator *)self workQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __33__PLBatteryAgent_setupCSMLogging__block_invoke;
    v17[3] = &unk_2782597E8;
    v17[4] = self;
    v10 = [v8 initWithWorkQueue:v9 forNotification:@"com.apple.powerlogd.csm.override" requireState:1 withBlock:v17];
    [(PLBatteryAgent *)self setCsmOverrideNotification:v10];

    v11 = objc_alloc(MEMORY[0x277D3F160]);
    v12 = [(PLOperator *)self workQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __33__PLBatteryAgent_setupCSMLogging__block_invoke_5184;
    v16[3] = &unk_2782597E8;
    v16[4] = self;
    v13 = [v11 initWithWorkQueue:v12 forNotification:@"com.apple.powerlogd.csm.flush" requireState:0 withBlock:v16];
    [(PLBatteryAgent *)self setCsmFlushNotification:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __33__PLBatteryAgent_setupCSMLogging__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:?];
  [*(a1 + 32) setCsmOverrideValue:{objc_msgSend(v3, "intValue") != 0}];
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) csmOverrideValue];
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "csm: setting override %d", v7, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __33__PLBatteryAgent_setupCSMLogging__block_invoke_5184(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "csm: flushing due to notification", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v3 flushCSMToAggdAtDate:v4];
}

- (void)updateCurrentSenseMonitorStatusWithEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"CurrentSenseMonitorStatus"];
  v6 = [v5 intValue];

  if (v6)
  {
    [(PLBatteryAgent *)self setCsmFailureCount:[(PLBatteryAgent *)self csmFailureCount]+ 1];
  }

  [(PLBatteryAgent *)self setCsmTotalCount:[(PLBatteryAgent *)self csmTotalCount]+ 1];
  v11 = [v4 entryDate];

  v7 = [(PLBatteryAgent *)self csmLastFlushMonotonicDate];
  [v11 timeIntervalSinceDate:v7];
  v9 = v8;

  [(PLBatteryAgent *)self csmFlushInterval];
  if (v9 > v10)
  {
    [(PLBatteryAgent *)self flushCSMToAggdAtDate:v11];
  }
}

- (void)flushCSMToAggdAtDate:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLBatteryAgent *)self csmTotalCount];
  v6 = [(PLBatteryAgent *)self csmFailureCount];
  v17[0] = @"com.apple.power.battery.csm.totalCount";
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  v17[1] = @"com.apple.power.battery.csm.failureCount";
  v18[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  v18[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "csm: updating aggd with total %lld failures %lld", buf, 0x16u);
  }

  MEMORY[0x21CEDCD50](v9, 0);
  v12 = MEMORY[0x277D85DD0];
  AnalyticsSendEventLazy();
  [(PLBatteryAgent *)self setCsmTotalCount:0, v12, 3221225472, __39__PLBatteryAgent_flushCSMToAggdAtDate___block_invoke, &__block_descriptor_48_e19___NSDictionary_8__0l, v5, v6];
  [(PLBatteryAgent *)self setCsmFailureCount:0];
  [(PLBatteryAgent *)self setCsmLastFlushMonotonicDate:v4];

  v11 = *MEMORY[0x277D85DE8];
}

id __39__PLBatteryAgent_flushCSMToAggdAtDate___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"totalCount"];

  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  [v2 setObject:v4 forKeyedSubscript:@"failureCount"];

  return v2;
}

- (void)logAdapterInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"PowerTelemetryData"];
  if (v4)
  {
    v19 = v4;
    v5 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Adapter"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    v7 = [v19 objectForKeyedSubscript:@"AccumulatedAdapterEfficiencyLoss"];
    [v6 setObject:v7 forKeyedSubscript:@"AccumulatedAdapterEfficiencyLoss"];

    v8 = [v19 objectForKeyedSubscript:@"AccumulatedSystemLoad"];
    [v6 setObject:v8 forKeyedSubscript:@"AccumulatedSystemLoad"];

    v9 = [v19 objectForKeyedSubscript:@"AccumulatedSystemPowerIn"];
    [v6 setObject:v9 forKeyedSubscript:@"AccumulatedSystemPowerIn"];

    v10 = [v19 objectForKeyedSubscript:@"AdapterEfficiencyLoss"];
    [v6 setObject:v10 forKeyedSubscript:@"AdapterEfficiencyLoss"];

    v11 = [v19 objectForKeyedSubscript:@"SystemLoad"];
    [v6 setObject:v11 forKeyedSubscript:@"SystemLoad"];

    v12 = [v19 objectForKeyedSubscript:@"SystemLoadAccumulatorCount"];
    [v6 setObject:v12 forKeyedSubscript:@"SystemLoadAccumulatorCount"];

    v13 = [v19 objectForKeyedSubscript:@"SystemPowerIn"];
    [v6 setObject:v13 forKeyedSubscript:@"SystemPowerIn"];

    v14 = [v19 objectForKeyedSubscript:@"AccumulatedAdapterEfficiencyLoss"];
    [v6 setObject:v14 forKeyedSubscript:@"AccumulatedAdapterEfficiencyLoss"];

    v15 = [v19 objectForKeyedSubscript:@"SystemPowerInAccumulatorCount"];
    [v6 setObject:v15 forKeyedSubscript:@"SystemPowerInAccumulatorCount"];

    v16 = [v19 objectForKeyedSubscript:@"SystemVoltageIn"];
    [v6 setObject:v16 forKeyedSubscript:@"SystemInputVoltage"];

    v17 = [v19 objectForKeyedSubscript:@"SystemCurrentIn"];
    [v6 setObject:v17 forKeyedSubscript:@"SystemInputCurrent"];

    v18 = [v19 objectForKeyedSubscript:@"PowerTelemetryErrorCount"];
    [v6 setObject:v18 forKeyedSubscript:@"PowerTelemetryErrorCount"];

    [(PLOperator *)self logEntry:v6];
    v4 = v19;
  }
}

- (void)logPowerOutDetails:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"PowerOutDetails"];
    v5 = PLLogCommon();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "Logging powerout details: %@", buf, 0xCu);
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __37__PLBatteryAgent_logPowerOutDetails___block_invoke;
      v15[3] = &unk_278260E30;
      v15[4] = self;
      [v4 enumerateObjectsUsingBlock:v15];
    }

    else
    {
      if (v6)
      {
        [(PLBatteryAgent *)self powerOutTotalPower];
        v8 = v7;
        [(PLBatteryAgent *)self powerOutTotalCount];
        *buf = 134218240;
        v17 = v8;
        v18 = 2048;
        v19 = v9;
        _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "Total Power: %f  Total Count: %f", buf, 0x16u);
      }

      [(PLBatteryAgent *)self powerOutTotalCount];
      if (v10 <= 0.0 || ([(PLBatteryAgent *)self powerOutTotalPower], v11 <= 100.0))
      {
        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "No need to create power out event", buf, 2u);
        }
      }

      else
      {
        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Values have been accumulated above threshold but no new data incoming", buf, 2u);
        }

        [(PLBatteryAgent *)self flushPowerOut];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __37__PLBatteryAgent_logPowerOutDetails___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"PortIndex"];
  v5 = [v4 intValue];

  if (v5 >= 8)
  {
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "powerout is happening in an illegal port", buf, 2u);
    }
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"PowerOut%d", v5];
  v8 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:v7];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v3];
  v10 = [v3 objectForKeyedSubscript:@"AccumulatorCount"];
  v11 = [v10 intValue];
  [*(a1 + 32) prevAccumulatorCount];
  v13 = (v11 - v12);

  v14 = [v3 objectForKeyedSubscript:@"AccumulatorErrorCount"];
  v15 = [v14 intValue];
  [*(a1 + 32) prevAccumulatorErrorCount];
  v17 = v16;

  v18 = [v3 objectForKeyedSubscript:@"AccumulatedPower"];
  v19 = [v18 intValue];
  [*(a1 + 32) prevAccumulatedPower];
  v21 = v20;

  v22 = *(a1 + 32);
  if ((v13 & 0x80000000) != 0 || (v23 = (v15 - v17), (v23 & 0x80000000) != 0) || (v24 = (v19 - v21), (v24 & 0x80000000) != 0))
  {
    [v22 setDeltaAccumulatorCount:0.0];
    [*(a1 + 32) setDeltaAccumulatorErrorCount:0.0];
    [*(a1 + 32) setDeltaAccumulatedPower:0.0];
    [*(a1 + 32) setPowerOutTotalCount:0.0];
    [*(a1 + 32) setPowerOutTotalPower:0.0];
  }

  else
  {
    [v22 prevAccumulatorCount];
    if (v25 > 0.0)
    {
      [*(a1 + 32) prevAccumulatedPower];
      if (v26 > 0.0)
      {
        [*(a1 + 32) setDeltaAccumulatorCount:v13];
        [*(a1 + 32) setDeltaAccumulatorErrorCount:v23];
        [*(a1 + 32) setDeltaAccumulatedPower:v24];
      }
    }
  }

  v27 = [v3 objectForKeyedSubscript:@"AccumulatorCount"];
  [*(a1 + 32) setPrevAccumulatorCount:{objc_msgSend(v27, "intValue")}];

  v28 = [v3 objectForKeyedSubscript:@"AccumulatorErrorCount"];
  [*(a1 + 32) setPrevAccumulatorErrorCount:{objc_msgSend(v28, "intValue")}];

  v29 = [v3 objectForKeyedSubscript:@"AccumulatedPower"];
  [*(a1 + 32) setPrevAccumulatedPower:{objc_msgSend(v29, "intValue")}];

  if (_os_feature_enabled_impl())
  {
    v30 = [v3 objectForKeyedSubscript:@"FilteredPower"];
    [*(a1 + 32) setFilteredPower:{objc_msgSend(v30, "intValue")}];

    v31 = PLLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 32) filteredPower];
      *buf = 134217984;
      v35 = v32;
      _os_log_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_INFO, "Filtered Power: %f", buf, 0xCu);
    }

    [*(a1 + 32) accountUSBCPowerOut];
  }

  [*(a1 + 32) logEntry:v9];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)logAdapterDetails:(id)a3
{
  if (!a3)
  {
    return;
  }

  v4 = [a3 objectForKeyedSubscript:@"AdapterDetails"];
  if (v4)
  {
    v12 = v4;
    v5 = [v4 objectForKeyedSubscript:@"Watts"];
    v6 = [v5 intValue];

    v7 = [v12 objectForKeyedSubscript:@"Manufacturer"];
    v8 = [(PLBatteryAgent *)self lastAdapterPower];

    if (!v8)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v6)
    {
      v8 = [(PLBatteryAgent *)self lastAdapterPower];
      if ([v8 intValue] != v6)
      {

LABEL_17:
        [(PLBatteryAgent *)self logAdapterDetailsEntry:v12];
        goto LABEL_18;
      }

      if (!v7)
      {

LABEL_18:
        [(PLBatteryAgent *)self setLastAdapterManufacturer:v7];
        v11 = [MEMORY[0x277CCABB0] numberWithInt:v6];
        [(PLBatteryAgent *)self setLastAdapterPower:v11];

        v4 = v12;
        goto LABEL_19;
      }
    }

    else if (!v7)
    {
      goto LABEL_18;
    }

    v9 = [(PLBatteryAgent *)self lastAdapterManufacturer];
    v10 = [v9 isEqualToString:v7];

    if (v6)
    {
    }

    if (v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
}

- (void)logAdapterDetailsEntry:(id)a3
{
  v23 = a3;
  v4 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AdapterDetails"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v23 objectForKeyedSubscript:@"Watts"];
  v7 = [v6 intValue];

  v8 = [v23 objectForKeyedSubscript:@"Manufacturer"];
  v9 = [v23 objectForKeyedSubscript:@"Model"];
  if (([(__CFString *)v8 isEqualToString:@"Apple, Inc"]& 1) != 0 || [(__CFString *)v8 isEqualToString:@"Apple Inc."])
  {
    v10 = v5;
    v11 = v8;
  }

  else
  {
    v11 = &stru_282B650A0;
    v10 = v5;
  }

  [v10 setObject:v11 forKeyedSubscript:@"Manufacturer"];
  v12 = [(__CFString *)v9 length];
  v13 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v14 = [(__CFString *)v9 stringByTrimmingCharactersInSet:v13];
  v15 = [v14 isEqualToString:&stru_282B650A0];

  if ([(__CFString *)v9 hasPrefix:@"0x"]&& v12 == 6 && v15)
  {
    v16 = v5;
    v17 = v9;
  }

  else
  {
    v17 = &stru_282B650A0;
    v16 = v5;
  }

  [v16 setObject:v17 forKeyedSubscript:@"Model"];
  v18 = [v23 objectForKeyedSubscript:@"IsWireless"];
  v19 = [v18 BOOLValue];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [v5 setObject:v20 forKeyedSubscript:@"isWireless"];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  [v5 setObject:v21 forKeyedSubscript:@"Watts"];

  v22 = [v23 objectForKeyedSubscript:@"AdapterPowerTier"];
  [v5 setObject:v22 forKeyedSubscript:@"AdapterPowerTier"];

  [(PLOperator *)self logEntry:v5];
  [(PLBatteryAgent *)self logAdapterDetailsToCA:v5];
}

- (void)logAdapterDetailsToCA:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 dictionary];
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_INFO, "Pushing AdapterDetails to CA: %@", buf, 0xCu);
  }

  v8 = v3;
  v6 = v3;
  AnalyticsSendEventLazy();

  v7 = *MEMORY[0x277D85DE8];
}

id __40__PLBatteryAgent_logAdapterDetailsToCA___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"Model"];
  [v2 setObject:v3 forKeyedSubscript:@"AdapterModel"];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"Manufacturer"];
  [v2 setObject:v4 forKeyedSubscript:@"Manufacturer"];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"isWireless"];
  [v2 setObject:v5 forKeyedSubscript:@"isWireless"];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"Watts"];
  [v2 setObject:v6 forKeyedSubscript:@"Watts"];

  return v2;
}

- (void)flushPowerOut
{
  v25 = *MEMORY[0x277D85DE8];
  [(PLBatteryAgent *)self powerOutTotalPower];
  v4 = v3;
  [(PLBatteryAgent *)self powerOutTotalCount];
  v6 = fmax(v4 / v5, 0.0);
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v24 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Avg power: %f", buf, 0xCu);
  }

  v8 = MEMORY[0x277CCABB0];
  [(PLBatteryAgent *)self powerOutTotalCount];
  v9 = [v8 numberWithDouble:?];
  [(PLBatteryAgent *)self filteredPower];
  if (v10 < 250.0 && [(PLBatteryAgent *)self headphonesConnected])
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEFAULT, "headphones connected", buf, 2u);
    }

    v12 = &unk_282C18EB8;
    v9 = &unk_282C11F10;
  }

  else
  {
    v12 = &unk_282C18E90;
  }

  v13 = [MEMORY[0x277CBEAA8] monotonicDate];
  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = *&v12;
    _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_INFO, "Distribution Weight: %@", buf, 0xCu);
  }

  v15 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v15 createPowerEventBackwardWithRootNodeID:61 withPower:v13 withEndDate:v6];

  v16 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v16 createDistributionEventForwardWithDistributionID:49 withChildNodeNameToWeight:v12 withStartDate:v13];

  v21 = @"time";
  v22 = v9;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v18 = MEMORY[0x277D3F258];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.PerfPowerServices.powerOut"];
  [v18 postNotificationName:v19 object:self userInfo:v17];

  [(PLBatteryAgent *)self setPowerOutTotalCount:0.0];
  [(PLBatteryAgent *)self setPowerOutTotalPower:0.0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)accountUSBCPowerOut
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_INFO, "Accounting Power Out", &v30, 2u);
  }

  [(PLBatteryAgent *)self deltaAccumulatedPower];
  if (v4 >= 0.0 && ([(PLBatteryAgent *)self deltaAccumulatorCount], v5 >= 0.0) && ([(PLBatteryAgent *)self deltaAccumulatorErrorCount], v6 >= 0.0))
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      [(PLBatteryAgent *)self deltaAccumulatedPower];
      v11 = v10;
      [(PLBatteryAgent *)self deltaAccumulatorCount];
      v13 = v12;
      [(PLBatteryAgent *)self deltaAccumulatorErrorCount];
      v30 = 134218496;
      v31 = v11;
      v32 = 2048;
      v33 = v13;
      v34 = 2048;
      v35 = v14;
      _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_INFO, "Power Diff: %f   Count Diff: %f   Error Count Diff: %f", &v30, 0x20u);
    }

    [(PLBatteryAgent *)self deltaAccumulatorCount];
    v16 = v15;
    [(PLBatteryAgent *)self deltaAccumulatorErrorCount];
    v18 = v16 + v17;
    [(PLBatteryAgent *)self powerOutTotalCount];
    [(PLBatteryAgent *)self setPowerOutTotalCount:v19 + v18];
    [(PLBatteryAgent *)self deltaAccumulatedPower];
    v21 = v20;
    [(PLBatteryAgent *)self powerOutTotalPower];
    [(PLBatteryAgent *)self setPowerOutTotalPower:v21 + v22];
    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      [(PLBatteryAgent *)self powerOutTotalPower];
      v25 = v24;
      [(PLBatteryAgent *)self powerOutTotalCount];
      v30 = 134218240;
      v31 = v25;
      v32 = 2048;
      v33 = v26;
      _os_log_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_INFO, "Total Power: %f   Total Count: %f", &v30, 0x16u);
    }

    [(PLBatteryAgent *)self powerOutTotalCount];
    if (v27 >= 300.0)
    {
      [(PLBatteryAgent *)self flushPowerOut];
    }

    else
    {
      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryAgent *)self powerOutTotalCount];
        v30 = 134217984;
        v31 = v29;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "Count did not meet threshold: %f", &v30, 0xCu);
      }
    }
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v30) = 0;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Invalid Power Out data", &v30, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logFedDetails:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"FedDetails"];
    v5 = v4;
    if (v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __32__PLBatteryAgent_logFedDetails___block_invoke;
      v6[3] = &unk_278260E30;
      v6[4] = self;
      [v4 enumerateObjectsUsingBlock:v6];
    }
  }
}

void __32__PLBatteryAgent_logFedDetails___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v9 = [v5 stringWithFormat:@"USBCCharging%d", a3];
  v7 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:v9];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v6];

  [*(a1 + 32) logEntry:v8];
}

- (void)logAuthFail:(id)a3
{
  v3 = a3;
  v4 = IOServiceMatching("IOPMPowerSource");
  v5 = IOServiceMatching("AppleBatteryAuth");
  v6 = v5;
  if (v5 && v4)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
LABEL_7:
    CFDictionarySetValue(v6, @"IOParentMatch", v4);
    CFRelease(v4);
    goto LABEL_8;
  }

  CFDictionarySetValue(v6, @"IOParentMatch", 0);
LABEL_8:
  v7 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:{IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v6)}];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"CommunicationError"];

    if (v9)
    {
      v10 = [v8 objectForKeyedSubscript:@"CommunicationError"];
      [v3 setObject:v10 forKeyedSubscript:@"CommunicationError"];
    }

    v11 = [v8 objectForKeyedSubscript:@"CoProcError"];

    if (v11)
    {
      v12 = [v8 objectForKeyedSubscript:@"CoProcError"];
      [v3 setObject:v12 forKeyedSubscript:@"CoProcError"];
    }

    v13 = v8;
    AnalyticsSendEventLazy();
  }
}

id __30__PLBatteryAgent_logAuthFail___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"CommunicationError"];
  [v2 setObject:v3 forKeyedSubscript:@"communication_error"];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"CoProcError"];
  [v2 setObject:v4 forKeyedSubscript:@"coprocerror"];

  return v2;
}

- (void)logPortControllerInfo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"PortControllerInfo"];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEAA8] monotonicDate];
      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "PortControllerInfo received at time:%@ is: %@", buf, 0x16u);
      }

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __40__PLBatteryAgent_logPortControllerInfo___block_invoke;
      v13[3] = &unk_278260E58;
      v7 = v5;
      v14 = v7;
      v15 = self;
      [v4 enumerateObjectsUsingBlock:v13];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __40__PLBatteryAgent_logPortControllerInfo___block_invoke_3;
      v10[3] = &unk_278260E58;
      v11 = v7;
      v12 = self;
      v8 = v7;
      [v4 enumerateObjectsUsingBlock:v10];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __40__PLBatteryAgent_logPortControllerInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"PortControllerInfo%d", a3];
  v8 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:v7];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  v10 = [v6 objectForKeyedSubscript:@"PortControllerPortPDO"];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__PLBatteryAgent_logPortControllerInfo___block_invoke_2;
  v12[3] = &unk_27825B950;
  v13 = v9;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:v12];

  [v11 setEntryDate:*(a1 + 32)];
  [*(a1 + 40) logEntry:v11];
  [*(a1 + 40) logPortControllerInfoToCA:v11 forPort:a3];
}

void __40__PLBatteryAgent_logPortControllerInfo___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"PortControllerPortPDO%d", a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void __40__PLBatteryAgent_logPortControllerInfo___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"PortControllerBuffer%d", a3];
  v7 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:v6];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withDate:*(a1 + 32)];
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = [v5 objectForKeyedSubscript:@"PortControllerEvtBuffer"];
    *buf = 138412546;
    v28 = v25;
    v29 = 2112;
    v30 = v26;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "portControllerInfodict received at time:%@ is: %@", buf, 0x16u);
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v16 = *(a1 + 40);
      v17 = 448;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_18;
      }

      v16 = *(a1 + 40);
      v17 = 456;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v10 = *(a1 + 40);
        if (!*(v10 + 432) || (v11 = *(v10 + 440), [v5 objectForKeyedSubscript:@"PortControllerEvtBuffer"], v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(v11) = objc_msgSend(v11, "isEqualToData:", v12), v12, (v11 & 1) == 0))
        {
          v13 = [v5 objectForKeyedSubscript:@"PortControllerEvtBuffer"];
          v14 = *(a1 + 40);
          v15 = *(v14 + 440);
          *(v14 + 440) = v13;
LABEL_17:

          goto LABEL_18;
        }

        goto LABEL_19;
      }

LABEL_18:
      v23 = [v5 objectForKeyedSubscript:@"PortControllerEvtBuffer"];
      [v8 setObject:v23 forKeyedSubscript:@"PortControllerEvtBuffer"];

      [*(a1 + 40) logEntry:v8];
      goto LABEL_19;
    }

    v16 = *(a1 + 40);
    v17 = 432;
  }

  v18 = *(v16 + v17);
  if (!v18 || ([v5 objectForKeyedSubscript:@"PortControllerEvtBuffer"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToData:", v19), v19, (v20 & 1) == 0))
  {
    v21 = [v5 objectForKeyedSubscript:@"PortControllerEvtBuffer"];
    v22 = *(a1 + 40);
    v15 = *(v22 + v17);
    *(v22 + v17) = v21;
    goto LABEL_17;
  }

LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)logOrionInfo:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"OrionInfo"];
    if (v4)
    {
      v5 = PLLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "OrionInfo received is: %@", &v12, 0xCu);
      }

      v6 = *MEMORY[0x277D3F5D0];
      v7 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"OrionInfo"];
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v4];
      v9 = [(PLOperator *)PLBatteryAgent entryKeyForType:v6 andName:@"OrionBuffer"];
      v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:v4];
      [(PLOperator *)self logEntry:v8];
      [(PLOperator *)self logEntry:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logWatchdogDebugDumpToCA:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"BatteryData"];
  v4 = [v3 objectForKeyedSubscript:@"WatchdogDebugDump"];

  if (v4)
  {
    v5 = [MEMORY[0x277D3F180] objectForKey:@"WatchdogDebugDump" ifNotSet:0];
    if (!v5 || ([v4 isEqualToData:v5] & 1) == 0)
    {
      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "pushing WatchDogDebug to CA :%@", buf, 0xCu);
      }

      v8 = v4;
      AnalyticsSendEventLazy();
      [MEMORY[0x277D3F180] setObject:v8 forKey:@"WatchdogDebugDump" saveToDisk:1];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

id __43__PLBatteryAgent_logWatchdogDebugDumpToCA___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"reset_data";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)handleGaugingMitigationStateCallback:(int)a3
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(a3, &state64);
  if (state)
  {
    v5 = state;
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v5;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Failed to get current mitigation state, ret = %d", buf, 8u);
    }
  }

  else if (state64)
  {
    [(PLBatteryAgent *)self logEventBackwardChargingLimit];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleMitigationStateCallback:(int)a3
{
  v22 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(a3, &state64);
  if (state)
  {
    v5 = state;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __48__PLBatteryAgent_handleMitigationStateCallback___block_invoke;
      v17 = &__block_descriptor_40_e5_v8__0lu32l8;
      v18 = v6;
      if (qword_2811F3CD0 != -1)
      {
        dispatch_once(&qword_2811F3CD0, &block);
      }

      if (byte_2811F3AB3 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"notify_get_state failed %d %s", v5, "com.apple.thermalmonitor.ageAwareMitigationState", block, v15, v16, v17, v18];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent handleMitigationStateCallback:]"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:9088];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    [(PLBatteryAgent *)self logEventForwardMitigationStateWithState:state64 userDisabled:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLBatteryAgent_handleMitigationStateCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AB3 = result;
  return result;
}

- (void)setMitigationStateDefault:(unint64_t)a3
{
  v8 = [MEMORY[0x277D3F180] objectForKey:@"perfManagementState" ifNotSet:0];
  if (!v8 || (v4 = [v8 intValue], v5 = v8, v4 != a3))
  {
    v6 = MEMORY[0x277D3F180];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    [v6 setObject:v7 forKey:@"perfManagementState" saveToDisk:1];

    v5 = v8;
  }
}

- (int)getMitigationDefaults
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  [MEMORY[0x277D3F258] containerPath];
  v4 = _CFPreferencesCopyValueWithContainer();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)getBatteryHealthServiceState
{
  v2 = IOPSCopyPowerSourcesByType();
  v3 = v2;
  if (v2 && [v2 count] && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"Battery Service State"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKeyedSubscript:@"Battery Service State"];
    v8 = [v7 intValue];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int)getBatteryHealthServiceFlags
{
  v2 = IOPSCopyPowerSourcesByType();
  v3 = v2;
  if (v2 && [v2 count] && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"Battery Service Flags"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKeyedSubscript:@"Battery Service Flags"];
    v8 = [v7 intValue];
  }

  else
  {
    v8 = 256;
  }

  return v8;
}

- (int)getBatteryMaximumCapacityPercent
{
  v2 = IOPSCopyPowerSourcesByType();
  v3 = v2;
  if (v2 && [v2 count] && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"Maximum Capacity Percent"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKeyedSubscript:@"Maximum Capacity Percent"];
    v8 = [v7 intValue];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)getBatteryCalibration0Data
{
  v2 = IOPSCopyPowerSourcesByType();
  v3 = v2;
  if (v2 && [v2 count] && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"calibration0"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKeyedSubscript:@"calibration0"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)batterySerialChanged:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PLBatteryAgent_batterySerialChanged___block_invoke;
  block[3] = &unk_2782591D0;
  v9 = v3;
  v4 = qword_2811F3CD8;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_2811F3CD8, block);
  }

  v6 = byte_2811F3AB4;

  return v6;
}

void __39__PLBatteryAgent_batterySerialChanged___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3F180] objectForKey:@"BatterySerial" ifNotSet:&stru_282B650A0];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"Serial"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_282B650A0;
  }

  v6 = v5;

  if (v2 && ([v2 isEqualToString:v6] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    [MEMORY[0x277D3F180] setObject:v6 forKey:@"BatterySerial" saveToDisk:1];
  }

  byte_2811F3AB4 = v7;
  v8 = PLLogBH();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67109120;
    v10[1] = byte_2811F3AB4;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "batterySerialChanged: %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)overrideBatteryData:(id)a3 withPath:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    v8 = PLLogBH();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v44 = v7;
        _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "override battery data %@", buf, 0xCu);
      }

      v10 = [v7 objectForKey:@"iopm"];
      v11 = v10;
      if (v10 && [v10 intValue] == -1)
      {
        v12 = PLLogBH();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, "raw data removed", buf, 2u);
        }

        v18 = 0;
      }

      else
      {
        v39 = v11;
        v12 = [v5 mutableCopy];
        v13 = [v5 objectForKey:@"BatteryData"];
        v14 = [v13 mutableCopy];

        v15 = [v14 objectForKey:@"LifetimeData"];
        v41 = [v15 mutableCopy];

        v16 = [v7 objectForKey:@"MaximumRa0-8"];
        v17 = v16;
        if (v16)
        {
          if ([v16 intValue] == -1)
          {
            [v41 removeObjectForKey:@"MaximumRa0-8"];
          }

          else
          {
            [v41 setObject:v17 forKeyedSubscript:@"MaximumRa0-8"];
          }
        }

        [v14 setObject:v41 forKey:@"LifetimeData"];
        v19 = [v7 objectForKey:@"WeightedRa"];
        v20 = v19;
        if (v19)
        {
          if ([v19 intValue] == -1)
          {
            [v14 removeObjectForKey:@"WeightedRa"];
          }

          else
          {
            [v14 setObject:v20 forKeyedSubscript:@"WeightedRa"];
          }
        }

        v21 = [v7 objectForKey:@"ChemID"];
        v22 = v21;
        if (v21)
        {
          if ([v21 intValue] == -1)
          {
            [v14 removeObjectForKey:@"ChemID"];
          }

          else
          {
            [v14 setObject:v22 forKeyedSubscript:@"ChemID"];
          }
        }

        v40 = [v7 objectForKey:@"DesignCapacity"];
        if (v40)
        {
          if ([v40 intValue] == -1)
          {
            [v14 removeObjectForKey:@"DesignCapacity"];
          }

          else
          {
            [v14 setObject:v40 forKeyedSubscript:@"DesignCapacity"];
          }
        }

        v38 = v17;
        [v12 setObject:v14 forKey:@"BatteryData"];
        v23 = [v7 objectForKey:@"NominalChargeCapacity"];
        v24 = v23;
        if (v23)
        {
          if ([v23 intValue] == -1)
          {
            [v12 removeObjectForKey:@"NominalChargeCapacity"];
          }

          else
          {
            [v12 setObject:v24 forKeyedSubscript:@"NominalChargeCapacity"];
          }
        }

        v37 = v20;
        v25 = [v7 objectForKey:@"BatteryCellDisconnectCount"];
        v26 = v25;
        if (v25)
        {
          if ([v25 intValue] == -1)
          {
            [v12 removeObjectForKey:@"BatteryCellDisconnectCount"];
          }

          else
          {
            [v12 setObject:v26 forKeyedSubscript:@"BatteryCellDisconnectCount"];
          }
        }

        v36 = v22;
        v27 = [v7 objectForKey:@"Serial"];
        v28 = v27;
        if (v27)
        {
          if ([v27 intValue] == -1)
          {
            [v12 removeObjectForKey:@"Serial"];
          }

          else
          {
            [v12 setObject:v28 forKeyedSubscript:@"Serial"];
          }
        }

        v29 = [v7 objectForKey:@"mitigatedUPOCount"];
        v30 = v29;
        if (v29)
        {
          if ([v29 intValue] == -1)
          {
            v31 = self;
            v32 = 0;
          }

          else
          {
            v31 = self;
            v32 = v30;
          }

          [(PLBatteryAgent *)v31 setMitigatedUPOCount:v32];
        }

        v33 = PLLogBH();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v44 = v12;
          _os_log_error_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_ERROR, "New raw data: %@", buf, 0xCu);
        }

        v18 = [v12 copy];
        v11 = v39;
      }
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v44 = v6;
        _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "Invalid override dictionary at %@", buf, 0xCu);
      }

      v18 = v5;
    }
  }

  else
  {
    v18 = v5;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v18;
}

- (int)deviceType
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3F208] kPLDeviceClass];
  if ([MEMORY[0x277D3F180] objectExistsForKey:@"overrideDeviceType"])
  {
    v2 = [MEMORY[0x277D3F180] longForKey:@"overrideDeviceType"];
    v3 = PLLogBH();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = v2;
      _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, "overriding device type to %d", v6, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)initCameraStreamingIntervalTracking
{
  v32[3] = *MEMORY[0x277D85DE8];
  [(PLBatteryAgent *)self setupAVSystemController];
  v3 = [(PLBatteryAgent *)self avSystemController];
  v4 = [v3 attributeForKey:*MEMORY[0x277D26E28]];
  -[PLBatteryAgent setCameraStreamingActive:](self, "setCameraStreamingActive:", [v4 BOOLValue]);

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v31) = [(PLBatteryAgent *)self cameraStreamingActive];
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "Init Camera Streaming Active: %d", buf, 8u);
  }

  v6 = MEMORY[0x277D26D40];
  v7 = MEMORY[0x277D26E38];
  v8 = *MEMORY[0x277D26E38];
  v32[0] = *MEMORY[0x277D26D40];
  v32[1] = v8;
  v9 = MEMORY[0x277D26C10];
  v32[2] = *MEMORY[0x277D26C10];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  if (v10)
  {
    v11 = [(PLBatteryAgent *)self avSystemController];
    [v11 setAttribute:v10 forKey:*MEMORY[0x277D26DD0] error:0];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *v6;
    v14 = [(PLBatteryAgent *)self avSystemController];
    [v12 addObserver:self selector:sel_setupAVSystemController name:v13 object:v14];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = *v7;
    v17 = [(PLBatteryAgent *)self avSystemController];
    [v15 addObserver:self selector:sel_handleCameraStreamingLogging_ name:v16 object:v17];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = *v9;
    v20 = [(PLBatteryAgent *)self avSystemController];
    [v18 addObserver:self selector:sel_handleHeadphoneConnected_ name:v19 object:v20];

    v21 = [(PLBatteryAgent *)self avSystemController];
    v22 = [v21 attributeForKey:*MEMORY[0x277D26C08]];
    [(PLBatteryAgent *)self setHeadphonesConnected:[v22 BOOLValue]];
LABEL_5:

    goto LABEL_12;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v23 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLBatteryAgent_initCameraStreamingIntervalTracking__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v23;
    if (qword_2811F3CF0 != -1)
    {
      dispatch_once(&qword_2811F3CF0, block);
    }

    if (byte_2811F3AB5 == 1)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"No AV System Controller Notifications"];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v26 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initCameraStreamingIntervalTracking]"];
      [v24 logMessage:v21 fromFile:v26 fromFunction:v27 fromLineNumber:9392];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v21;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_5;
    }
  }

LABEL_12:

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLBatteryAgent_initCameraStreamingIntervalTracking__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AB5 = result;
  return result;
}

- (void)setupAVSystemController
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_INFO, "Setting up AV System Controller", buf, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = *MEMORY[0x277D26D40];
  v6 = [(PLBatteryAgent *)self avSystemController];
  [v4 removeObserver:self name:v5 object:v6];

  v7 = [MEMORY[0x277D26E58] sharedAVSystemController];
  [(PLBatteryAgent *)self setAvSystemController:v7];

  v8 = [(PLBatteryAgent *)self avSystemController];

  if (!v8 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLBatteryAgent_setupAVSystemController__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F3CF8 != -1)
    {
      dispatch_once(&qword_2811F3CF8, block);
    }

    if (byte_2811F3AB6 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"AV System Controller not available"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent setupAVSystemController]"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:9408];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLBatteryAgent_setupAVSystemController__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AB6 = result;
  return result;
}

- (void)handleCameraStreamingLogging:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "received notification: %@\n", &v16, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:*MEMORY[0x277D26E48]];
    v9 = v8;
    if (v8)
    {
      [(PLBatteryAgent *)self setCameraStreamingActive:[v8 BOOLValue]];
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(PLBatteryAgent *)self cameraStreamingActive];
        v16 = 67109120;
        LODWORD(v17) = v11;
        v12 = "cameraStreamingActive: %d\n";
        v13 = v10;
        v14 = 8;
LABEL_11:
        _os_log_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_INFO, v12, &v16, v14);
      }
    }

    else
    {
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v7;
        v12 = "userInfo misses feature status:%@\n";
        v13 = v10;
        v14 = 12;
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_INFO, "notification misses userInfo dict:%@\n", &v16, 0xCu);
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleHeadphoneConnected:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  [(PLBatteryAgent *)self flushPowerOut];
  v4 = [(PLBatteryAgent *)self avSystemController];
  v5 = [v4 attributeForKey:*MEMORY[0x277D26C08]];
  -[PLBatteryAgent setHeadphonesConnected:](self, "setHeadphonesConnected:", [v5 BOOLValue]);

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = [(PLBatteryAgent *)self headphonesConnected];
    _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "headphones connected = %d", v8, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleCameraStreaming:(BOOL)a3 withProperties:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v25[0]) = 0;
    _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "Start Camera Streaming Interval Tracking Section", v25, 2u);
  }

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(PLBatteryAgent *)self cameraStreamingActive];
    v25[0] = 67109120;
    v25[1] = v9;
    _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "Camera Streaming State: %d", v25, 8u);
  }

  if (![(PLBatteryAgent *)self cameraStreamingActive]|| !a3)
  {
    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_INFO, "Camera Streaming not active OR device not plugged in", v25, 2u);
    }

    v19 = [v6 entryDate];
    [(PLBatteryAgent *)self updateIntervalForType:4 withState:0 andTime:v19];

    v15 = [v6 entryDate];
    v16 = self;
    v17 = 6;
    goto LABEL_14;
  }

  v10 = [(ChargingStateProvider *)self->_chargingStateProvider chargingState];
  v11 = PLLogCommon();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10 == 3)
  {
    if (v12)
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_INFO, "Open WTLC, close TLC, close camera streaming", v25, 2u);
    }

    v13 = [v6 entryDate];
    [(PLBatteryAgent *)self updateIntervalForType:6 withState:1 andTime:v13];

    v14 = [v6 entryDate];
    [(PLBatteryAgent *)self updateIntervalForType:4 withState:0 andTime:v14];

    v15 = [v6 entryDate];
    v16 = self;
    v17 = 3;
LABEL_14:
    v20 = 0;
LABEL_15:
    [(PLBatteryAgent *)v16 updateIntervalForType:v17 withState:v20 andTime:v15];

    goto LABEL_16;
  }

  if (v12)
  {
    LOWORD(v25[0]) = 0;
    _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_INFO, "Close WTLC, close TLC, open camera streaming", v25, 2u);
  }

  v22 = [v6 entryDate];
  [(PLBatteryAgent *)self updateIntervalForType:6 withState:0 andTime:v22];

  v23 = [v6 entryDate];
  [(PLBatteryAgent *)self updateIntervalForType:3 withState:0 andTime:v23];

  [(PLBatteryAgent *)self batteryLevelPercent];
  if (v24 >= 75.0)
  {
    v15 = [v6 entryDate];
    v16 = self;
    v17 = 4;
    v20 = 1;
    goto LABEL_15;
  }

LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)initSmartChargingLogging
{
  if (+[PLBatteryAgent supportsSmartCharging](PLBatteryAgent, "supportsSmartCharging") || [MEMORY[0x277D3F1B8] hasFixedChargingLimit])
  {
    v3 = objc_alloc(MEMORY[0x277D3F270]);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__PLBatteryAgent_initSmartChargingLogging__block_invoke;
    v8[3] = &unk_27825A1D8;
    v8[4] = self;
    v4 = [v3 initWithOperator:self withRegistration:&unk_282C18EE0 withBlock:v8];
    smartChargingListener = self->_smartChargingListener;
    self->_smartChargingListener = v4;

    v6 = dispatch_time(0, 60000000000);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_5335;
    v7[3] = &unk_2782591D0;
    v7[4] = self;
    dispatch_after(v6, MEMORY[0x277D85CD0], v7);
  }
}

uint64_t __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AB7 = result;
  return result;
}

void __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_5335(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = notify_post("com.apple.perfpowerservices.reportobcanalytics");
  v3 = [MEMORY[0x277D3F180] debugEnabled];
  if (v2)
  {
    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_2_5337;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F3D08 != -1)
      {
        dispatch_once(&qword_2811F3D08, block);
      }

      if (byte_2811F3AB8 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to post %s", "com.apple.perfpowerservices.reportobcanalytics"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initSmartChargingLogging]_block_invoke"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:9510];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = v6;
LABEL_16:
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }
  }

  else if (v3)
  {
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_5343;
    v19[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v19[4] = v13;
    if (qword_2811F3D10 != -1)
    {
      dispatch_once(&qword_2811F3D10, v19);
    }

    if (byte_2811F3AB9 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"posted %s", "com.apple.perfpowerservices.reportobcanalytics"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initSmartChargingLogging]_block_invoke_2"];
      [v14 logMessage:v6 fromFile:v16 fromFunction:v17 fromLineNumber:9512];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v6;
        goto LABEL_16;
      }

LABEL_13:
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_2_5337(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AB8 = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_5343(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3AB9 = result;
  return result;
}

- (void)initCleanEnergyChargingLogging
{
  if (+[PLBatteryAgent supportsCleanEnergyCharging])
  {
    v3 = objc_alloc(MEMORY[0x277D3F270]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__PLBatteryAgent_initCleanEnergyChargingLogging__block_invoke;
    v6[3] = &unk_27825A1D8;
    v6[4] = self;
    v4 = [v3 initWithOperator:self withRegistration:&unk_282C18F08 withBlock:v6];
    cleanEnergyChargingListener = self->_cleanEnergyChargingListener;
    self->_cleanEnergyChargingListener = v4;
  }
}

void __48__PLBatteryAgent_initCleanEnergyChargingLogging__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __48__PLBatteryAgent_initCleanEnergyChargingLogging__block_invoke_2;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F3D18 != -1)
    {
      dispatch_once(&qword_2811F3D18, &block);
    }

    if (byte_2811F3ABA == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Clean Energy Charging Callback %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initCleanEnergyChargingLogging]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:9541];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventForwardCleanEnergyChargingWithPayload:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLBatteryAgent_initCleanEnergyChargingLogging__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3ABA = result;
  return result;
}

- (void)initializeChargingStateIntervals
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_INFO, "Initializing Camera Streaming Interval Tracking", buf, 2u);
  }

  [(PLBatteryAgent *)self initCameraStreamingIntervalTracking];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryAgent *)self setOpenChargingIntervals:v4];

  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  v6 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"Charging"];
  [(PLBatteryAgent *)self setChargingIntervalsEntryKey:v6];

  v7 = 0;
  v31 = v5;
  do
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%d", @"intervalType", v7];
    v9 = [(PLOperator *)self storage];
    v10 = [(PLBatteryAgent *)self chargingIntervalsEntryKey];
    v44[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    v12 = [v9 lastEntryForKey:v10 withFilters:v11];

    if (!v12)
    {
      v14 = PLLogCommon();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      *buf = 67109120;
      *v43 = v7;
      v15 = v14;
      v16 = "no previous %d interval";
      v17 = 8;
      goto LABEL_25;
    }

    v13 = [v12 objectForKeyedSubscript:@"timestampEnd"];

    if (v13)
    {
      v14 = PLLogCommon();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      *buf = 67109378;
      *v43 = v7;
      *&v43[4] = 2112;
      *&v43[6] = v12;
      v15 = v14;
      v16 = "last %d interval closed: %@";
      v17 = 18;
LABEL_25:
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, v16, buf, v17);
      goto LABEL_9;
    }

    switch(v7)
    {
      case 6u:
        [v12 setObject:v5 forKeyedSubscript:@"timestampEnd"];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5361;
        v33[3] = &unk_278260E80;
        v35 = 6;
        v34 = v12;
        [(PLOperator *)self updateEntry:v34 withBlock:v33];
        v14 = v34;
        break;
      case 4u:
        [v12 setObject:v5 forKeyedSubscript:@"timestampEnd"];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5360;
        v36[3] = &unk_278260E80;
        v38 = 4;
        v37 = v12;
        [(PLOperator *)self updateEntry:v37 withBlock:v36];
        v14 = v37;
        break;
      case 3u:
        [v12 setObject:v5 forKeyedSubscript:@"timestampEnd"];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke;
        v39[3] = &unk_278260E80;
        v41 = 3;
        v40 = v12;
        [(PLOperator *)self updateEntry:v40 withBlock:v39];
        v14 = v40;
        break;
      default:
        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          *v43 = v7;
          *&v43[4] = 2112;
          *&v43[6] = v12;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "open %d interval %@", buf, 0x12u);
        }

        v19 = [(PLBatteryAgent *)self openChargingIntervals];
        v20 = [MEMORY[0x277CCABB0] numberWithShort:v7];
        v21 = [v19 objectForKeyedSubscript:v20];

        if (v21)
        {
          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *v43 = v7;
            _os_log_error_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_ERROR, "multiple open %d intervals", buf, 8u);
          }
        }

        v14 = [(PLBatteryAgent *)self openChargingIntervals];
        v23 = [MEMORY[0x277CCABB0] numberWithShort:v7];
        [v14 setObject:v12 forKeyedSubscript:v23];

        v5 = v31;
        break;
    }

LABEL_9:

    v7 = (v7 + 1);
  }

  while (v7 != 11);
  v24 = PLLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(PLBatteryAgent *)self openChargingIntervals];
    v26 = [v25 count];
    *buf = 134217984;
    *v43 = v26;
    _os_log_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEFAULT, "initialized charging interval tracking, %lu open", buf, 0xCu);

    v5 = v31;
  }

  [(PLBatteryAgent *)self setTLCOverrideValue:0];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v27 = objc_alloc(MEMORY[0x277D3F160]);
    v28 = [(PLOperator *)self workQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5365;
    v32[3] = &unk_2782597E8;
    v32[4] = self;
    v29 = [v27 initWithWorkQueue:v28 forNotification:@"com.apple.powerlogd.tlc.override" requireState:1 withBlock:v32];
    [(PLBatteryAgent *)self setTlcOverrideNotification:v29];

    v5 = v31;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "closed %d interval at init: %@", v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5360(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "closed %d interval at init: %@", v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5361(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "closed %d interval at init: %@", v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5365(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:?];
  if ([v3 intValue] == -1)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "tlc: clearing value", &v8, 2u);
    }

    [*(a1 + 32) setTLCOverrideValue:0];
  }

  else
  {
    [*(a1 + 32) setTLCOverrideValue:v3];
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) TLCOverrideValue];
      v8 = 138412290;
      v9 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "tlc: overriding value=%@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __79__PLBatteryAgent_updateIntervalForType_withState_andTime_selectedChargedLimit___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "closed %d interval", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldLogCPMSSnapshotWithReason:(unsigned __int8)a3 withTrigger:(int64_t)a4
{
  if (a4)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 0;
  }

  if (a4 == 1)
  {
    return a3 != 0;
  }

  else
  {
    return v4;
  }
}

- (void)logCPMSSnapshotWithTrigger:(int64_t)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_INFO, "cpms: getting snapshots with trigger 0x%X", buf, 8u);
  }

  v5 = [MEMORY[0x277CF6EE0] copyCPMSControlStateSnapshots];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 sortedArrayUsingComparator:&__block_literal_global_5370];
    v8 = *MEMORY[0x277D3F5E8];
    v9 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CPMSControlState"];
    v19 = [(PLOperator *)PLBatteryAgent entryKeyForType:v8 andName:@"CPMSClientState"];
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    *buf = 0;
    v50 = buf;
    v51 = 0x2020000000;
    v52 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2;
    v22[3] = &unk_278260F38;
    v22[4] = self;
    v32 = a3;
    v12 = v9;
    v23 = v12;
    v27 = &v45;
    v28 = &v41;
    v29 = &v37;
    v30 = &v33;
    v31 = buf;
    v13 = v10;
    v24 = v13;
    v14 = v19;
    v25 = v14;
    v15 = v11;
    v26 = v15;
    [v7 enumerateObjectsUsingBlock:v22];
    if ([v13 count] || objc_msgSend(v15, "count"))
    {
      v16 = objc_opt_new();
      if ([v13 count])
      {
        [v16 setObject:v13 forKeyedSubscript:v12];
      }

      if ([v15 count])
      {
        [v16 setObject:v15 forKeyedSubscript:v14];
      }

      [(PLOperator *)self logEntries:v16 withGroupID:v12];
    }

    v17 = objc_opt_new();
    MEMORY[0x21CEDCD40](@"com.apple.power.battery.cpms.count", 1);
    [v17 setObject:&unk_282C11F70 forKeyedSubscript:@"snapshotCount"];
    if (v50[24] == 1)
    {
      MEMORY[0x21CEDCD40](@"com.apple.power.battery.cpms.fullMode", 1);
      [v17 setObject:&unk_282C11F70 forKeyedSubscript:@"fullModeCount"];
    }

    if (*(v46 + 24) == 1)
    {
      MEMORY[0x21CEDCD40](@"com.apple.power.battery.cpms.droopCE", 1);
      [v17 setObject:&unk_282C11F70 forKeyedSubscript:@"droopCECount"];
    }

    if (*(v42 + 24) == 1)
    {
      MEMORY[0x21CEDCD40](@"com.apple.power.battery.cpms.source.generic", 1);
      [v17 setObject:&unk_282C11F70 forKeyedSubscript:@"genericSourceCount"];
    }

    if (*(v38 + 24) == 1)
    {
      MEMORY[0x21CEDCD40](@"com.apple.power.battery.cpms.source.specific", 1);
      [v17 setObject:&unk_282C11F70 forKeyedSubscript:@"specificSourceCount"];
    }

    if (*(v34 + 24) == 1)
    {
      MEMORY[0x21CEDCD40](@"com.apple.power.battery.cpms.source.safeharbor", 1);
      [v17 setObject:&unk_282C11F70 forKeyedSubscript:@"safeharborSourceCount"];
    }

    v21 = v17;
    AnalyticsSendEventLazy();

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "cpms: could not get snapshots", buf, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"timestamp"];
  v6 = [v4 objectForKeyedSubscript:@"timestamp"];

  v7 = [v5 compare:v6];
  return v7;
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2(uint64_t a1, void *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"reason"];
  v5 = [v4 intValue];

  LOBYTE(v4) = [*(a1 + 32) shouldLogCPMSSnapshotWithReason:v5 withTrigger:*(a1 + 112)];
  v6 = PLLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v8 = v5;
    if (v7)
    {
      v60 = *(a1 + 112);
      *buf = 67109376;
      v84 = v5;
      v85 = 1024;
      v86 = v60;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "cpms: logging snapshot with reason %d and trigger 0x%X", buf, 0xEu);
    }

    v9 = [v3 objectForKeyedSubscript:@"timestamp"];
    v10 = [v9 unsignedLongLongValue];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v10 / 0x3B9ACA00)];
    v12 = [v11 convertFromSystemToMonotonic];

    v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withDate:v12];
    v14 = [v3 objectForKeyedSubscript:@"overrideFlags"];
    [v13 setObject:v14 forKeyedSubscript:@"flags"];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    [v13 setObject:v15 forKeyedSubscript:@"reason"];

    *(*(*(a1 + 72) + 8) + 24) |= v8 == 2;
    v16 = [v3 objectForKeyedSubscript:@"systemCapabilitySource"];
    LOBYTE(v14) = [v16 intValue];

    LODWORD(v16) = v14;
    v17 = v14 == 0;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
    [v13 setObject:v18 forKeyedSubscript:@"source"];

    *(*(*(a1 + 80) + 8) + 24) |= v16 == 1;
    *(*(*(a1 + 88) + 8) + 24) |= v16 == 2;
    *(*(*(a1 + 96) + 8) + 24) |= v17;
    v19 = [v3 objectForKeyedSubscript:@"mode"];
    v20 = [v19 intValue];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v20];
    [v13 setObject:v21 forKeyedSubscript:@"mode"];

    *(*(*(a1 + 104) + 8) + 24) |= v20 == 2;
    v22 = [v3 objectForKeyedSubscript:@"batteryPowerConsumption"];
    if (!v22)
    {
      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_ERROR, "cpms: could not get power consumptions", buf, 2u);
      }
    }

    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5371;
    v81[3] = &unk_278260DE8;
    v24 = v13;
    v82 = v24;
    [v22 enumerateObjectsUsingBlock:v81];
    v25 = [v3 objectForKeyedSubscript:@"systemCapability"];
    if (!v25)
    {
      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_ERROR, "cpms: could not get system capability", buf, 2u);
      }
    }

    v62 = v22;
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5372;
    v79[3] = &unk_278260DE8;
    v27 = v24;
    v80 = v27;
    [v25 enumerateObjectsUsingBlock:v79];
    v28 = [v3 objectForKeyedSubscript:@"droopCE"];
    [v28 floatValue];
    v30 = v29;

    v31 = [MEMORY[0x277CCABB0] numberWithInt:(v30 * 65535.0)];
    [v27 setObject:v31 forKeyedSubscript:@"droopCE"];

    v32 = [v3 objectForKeyedSubscript:@"zeroSumCE"];
    [v32 floatValue];
    v34 = v33;

    v35 = [MEMORY[0x277CCABB0] numberWithInt:(v34 * 65535.0)];
    [v27 setObject:v35 forKeyedSubscript:@"zeroSumCE"];

    v36 = [v3 objectForKeyedSubscript:@"undroopCE"];
    [v36 floatValue];
    v38 = v37;

    v39 = [MEMORY[0x277CCABB0] numberWithInt:(v38 * 65535.0)];
    [v27 setObject:v39 forKeyedSubscript:@"undroopCE"];

    v40 = [v3 objectForKeyedSubscript:@"brownoutRiskNotificationEngaged"];
    [v27 setObject:v40 forKeyedSubscript:@"brownoutRiskEngaged"];

    v41 = [v3 objectForKeyedSubscript:@"brownoutRiskSysCap"];
    [v27 setObject:v41 forKeyedSubscript:@"brownoutRiskSysCap"];

    v42 = [v3 objectForKeyedSubscript:@"brownoutRiskPu"];
    [v27 setObject:v42 forKeyedSubscript:@"brownoutRiskPu"];

    v43 = [v3 objectForKeyedSubscript:@"peakPowerPressureLevel"];
    [v27 setObject:v43 forKeyedSubscript:@"peakPowerPressureLevel"];

    v44 = [v3 objectForKeyedSubscript:@"servoCEs"];
    if (!v44)
    {
      v45 = PLLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_ERROR, "cpms: could not get servo control efforts", buf, 2u);
      }
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5373;
    v77[3] = &unk_278260DE8;
    v46 = v27;
    v78 = v46;
    [v44 enumerateObjectsUsingBlock:v77];
    v47 = [v3 objectForKeyedSubscript:@"remCapCEFloors"];
    if (!v47)
    {
      v48 = PLLogCommon();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_ERROR, "cpms: could not get remCap control efforts", buf, 2u);
      }
    }

    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5374;
    v75[3] = &unk_278260DE8;
    v6 = v46;
    v76 = v6;
    [v47 enumerateObjectsUsingBlock:v75];
    [*(a1 + 48) addObject:v6];
    v49 = [v3 objectForKeyedSubscript:@"requestedBudgets"];
    if (!v49)
    {
      v50 = PLLogCommon();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_ERROR, "cpms: could not get client requested budgets", buf, 2u);
      }
    }

    v51 = [v3 objectForKeyedSubscript:@"grantedBudgets"];
    if (!v51)
    {
      v52 = PLLogCommon();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_ERROR, "cpms: could not get client granted budgets", buf, 2u);
      }
    }

    v53 = objc_opt_new();
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5375;
    v70[3] = &unk_278260EE8;
    v71 = *(a1 + 56);
    v54 = v12;
    v72 = v54;
    v55 = v53;
    v56 = *(a1 + 32);
    v73 = v55;
    v74 = v56;
    [v49 enumerateObjectsUsingBlock:v70];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5376;
    v65[3] = &unk_278260EE8;
    v66 = v55;
    v67 = *(a1 + 56);
    v68 = v54;
    v69 = *(a1 + 32);
    v57 = v54;
    v58 = v55;
    [v51 enumerateObjectsUsingBlock:v65];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5377;
    v63[3] = &unk_278260F10;
    v64 = *(a1 + 64);
    [v58 enumerateKeysAndObjectsUsingBlock:v63];
  }

  else if (v7)
  {
    v61 = *(a1 + 112);
    *buf = 67109376;
    v84 = v5;
    v85 = 1024;
    v86 = v61;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "cpms: ignoring snapshot with reason %d and trigger 0x%X", buf, 0xEu);
  }

  v59 = *MEMORY[0x277D85DE8];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5371(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"battPC%d", a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5372(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"sysCap%d", a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5373(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v10 = [v5 stringWithFormat:@"servoCE%d", a3];
  [v6 floatValue];
  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithInt:(v8 * 65535.0)];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5374(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v10 = [v5 stringWithFormat:@"remCapCE%d", a3];
  [v6 floatValue];
  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithInt:(v8 * 65535.0)];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5375(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"clientID"];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
    [v5 setObject:v4 forKeyedSubscript:@"client"];
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v4];
    [*(a1 + 56) populateClientEntry:v5 withBudget:v3 withTemplate:@"req%d"];
  }

  else
  {
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "cpms: could not get clientID for requested budget %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5376(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"clientID"];
  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withDate:*(a1 + 48)];
      [v6 setObject:v4 forKeyedSubscript:@"client"];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
    }

    [*(a1 + 56) populateClientEntry:v5 withBudget:v3 withTemplate:@"grant%d"];
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "cpms: could not get clientID for granted budget %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5377(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) addObject:a3];
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "cpms: adding entry for clientID %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)populateClientEntry:(id)a3 withBudget:(id)a4 withTemplate:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v8 && v9)
  {
    v11 = [v8 objectForKeyedSubscript:@"timescales"];
    if (v11)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__PLBatteryAgent_populateClientEntry_withBudget_withTemplate___block_invoke;
      v14[3] = &unk_278260E58;
      v15 = v10;
      v16 = v7;
      [v11 enumerateObjectsUsingBlock:v14];

      v12 = v15;
    }

    else
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, "cpms: could not get timescale information for budget %@", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __62__PLBatteryAgent_populateClientEntry_withBudget_withTemplate___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"timescale"];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:*(a1 + 32), objc_msgSend(v4, "intValue")];
    v7 = [v3 objectForKeyedSubscript:@"level"];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
  }

  else
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "cpms: could not get timescale for %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dataChanged
{
  v3 = [(ChargingStateProvider *)self->_chargingStateProvider chargingState];
  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBatteryAgent *)self updateIntervalForType:3 withState:v3 == 3 andTime:v4];
  v5 = _os_feature_enabled_impl();
  v6 = PLLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "bui_tlc_notif_iOS feature flag is enabled.", buf, 2u);
    }

    [(PLBatteryAgent *)self showOrHideTLCNotification:[(ChargingStateProvider *)self->_chargingStateProvider isExternallyConnected] meetsTLCNotificationConditions:v3 == 3];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "bui_tlc_notif_iOS feature flag is disabled.", v8, 2u);
    }
  }
}

@end