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
- (void)dealloc;
- (void)detectEAPencilConnectionWithNotification:(id)a3;
- (void)deviceType;
- (void)fakeLogEntry:(id)a3;
- (void)flushCSMToAggdAtDate:(id)a3;
- (void)flushPowerOut;
- (void)getGaugingMitigationDict;
- (void)getIconographyStateDict;
- (void)handleBDCAMALogging:(id)a3;
- (void)handleCameraStreaming:(BOOL)a3 withProperties:(id)a4;
- (void)handleCameraStreamingLogging:(id)a3;
- (void)handleGaugingMitigationStateCallback:(int)a3;
- (void)handleHeadphoneConnected:(id)a3;
- (void)handleMitigationStateCallback:(int)a3;
- (void)handleOnDeviceACAMSBC:(id)a3;
- (void)handlePPMCallback;
- (void)handleSBC;
- (void)init;
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
  if (+[PLUtilities hasGasGauge])
  {
    v35[0] = *MEMORY[0x277D3F4E8];
    v33 = *MEMORY[0x277D3F568];
    v34 = &unk_28714B9D8;
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
    v30[0] = &unk_287147368;
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
  v17[0] = &unk_28714B9E8;
  v17[1] = &unk_287147380;
  v16[2] = *MEMORY[0x277D3F588];
  v17[2] = &unk_28714B9F8;
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
  v249[0] = &unk_28714BA08;
  v249[1] = &unk_287147380;
  v248[2] = *MEMORY[0x277D3F588];
  v249[2] = &unk_28714BA18;
  v239 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v249 forKeys:v248 count:3];
  v251[0] = v239;
  v250[1] = *MEMORY[0x277D3F540];
  v246[0] = @"QmaxCell0";
  v4 = *MEMORY[0x277D3F538];
  v244[0] = *MEMORY[0x277D3F5A8];
  v3 = v244[0];
  v244[1] = v4;
  v245[0] = &unk_287147398;
  v245[1] = &unk_28714DD30;
  v238 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v245 forKeys:v244 count:2];
  v247[0] = v238;
  v246[1] = @"Flags";
  v242[0] = v3;
  v242[1] = v4;
  v243[0] = &unk_287147398;
  v243[1] = &unk_28714DD48;
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
  v241[0] = &unk_287147398;
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
  v13[0] = &unk_28714BA28;
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

+ (BOOL)shouldLogCPMS
{
  if (shouldLogCPMS_onceToken != -1)
  {
    +[PLBatteryAgent shouldLogCPMS];
  }

  return shouldLogCPMS___cpmsEnabled;
}

uint64_t __31__PLBatteryAgent_shouldLogCPMS__block_invoke()
{
  result = [MEMORY[0x277CF6ED8] isCPMSSupported];
  shouldLogCPMS___cpmsEnabled = result;
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
    v81[0] = &unk_28714BA38;
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
    v25[0] = &unk_28714BA28;
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
  if (shouldLogPPMDebugDetail_onceToken != -1)
  {
    +[PLBatteryAgent shouldLogPPMDebugDetail];
  }

  return shouldLogPPMDebugDetail_result;
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

  shouldLogPPMDebugDetail_result = result;
  return result;
}

+ (id)entryEventForwardDefinitionIOPMUBootLPMLog
{
  v36[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasLPEM])
  {
    v35[0] = *MEMORY[0x277D3F4E8];
    v33 = *MEMORY[0x277D3F568];
    v34 = &unk_28714BA48;
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
    v20 = &unk_28714BA28;
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
  if (+[PLUtilities hasGasGauge])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F580];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_28714BA28;
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
    v12 = &unk_28714BA28;
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
  v159[0] = &unk_28714BA58;
  v159[1] = &unk_287147380;
  v158[2] = *MEMORY[0x277D3F588];
  v159[2] = &unk_28714BA18;
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
  v12 = &unk_28714BA28;
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
  v44 = &unk_28714BA68;
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
  v15[0] = &unk_28714B9E8;
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
  v20[0] = &unk_28714BA78;
  v20[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F588];
  v19[2] = *MEMORY[0x277D3F590];
  v19[3] = v3;
  v20[2] = &unk_287147380;
  v20[3] = &unk_28714B9F8;
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
    v97[0] = &unk_28714BA48;
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
    v23[0] = &unk_28714BA28;
    v23[1] = &unk_287147380;
    v22[2] = *MEMORY[0x277D3F588];
    v23[2] = &unk_28714BA18;
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
    v78 = &unk_28714BA28;
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
    v18 = &unk_28714BA28;
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
    v35[0] = &unk_28714B9E8;
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
  v159[0] = &unk_28714BA38;
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
    v21[0] = &unk_28714BA28;
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
    v13[0] = &unk_28714BA28;
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
    v13[0] = &unk_28714BA28;
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
    v28 = &unk_28714BA28;
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
    v12 = &unk_28714BA28;
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
    v32 = &unk_28714BA68;
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
  v3 = [&unk_28714DD60 indexOfObject:a3];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &unk_2871473B0;
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
    v18 = &unk_28714BA28;
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
    v14 = &unk_28714BA28;
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
    v40 = &unk_28714BA88;
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
    v16 = &unk_28714B9E8;
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
  v20 = &unk_28714B9E8;
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
  v276[0] = &unk_28714BA98;
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
  v271[0] = &unk_287147368;
  v271[1] = @"%";
  v270 = *MEMORY[0x277D3F4E0];
  v6 = v270;
  v271[2] = v3;
  v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v271 forKeys:v269 count:3];
  v273[0] = v129;
  v272[1] = @"RawLevel";
  v267[0] = v4;
  v267[1] = v5;
  v268[0] = &unk_287147368;
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
  v266[0] = &unk_287147398;
  v266[1] = &unk_28714DD78;
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v266 forKeys:v265 count:2];
  v273[5] = v121;
  v272[6] = @"InstantAmperage";
  v120 = [MEMORY[0x277D3F198] sharedInstance];
  v119 = [v120 commonTypeDict_IntegerFormat_withUnit_mA];
  v273[6] = v119;
  v272[7] = @"FullAvailableCapacity";
  v263[0] = v4;
  v263[1] = v5;
  v264[0] = &unk_287147398;
  v264[1] = @"mAh";
  v263[2] = v7;
  v264[2] = &unk_28714DD90;
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
  v262[0] = &unk_287147398;
  v262[1] = @"mA";
  v261[2] = v7;
  v262[2] = &unk_28714DDA8;
  v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v262 forKeys:v261 count:3];
  v273[17] = v99;
  v272[18] = @"NotChargingReason";
  v259[0] = v4;
  v259[1] = v7;
  v260[0] = &unk_287147398;
  v260[1] = &unk_28714DDC0;
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v260 forKeys:v259 count:2];
  v273[18] = v98;
  v272[19] = @"ChargerAlert";
  v257[0] = v4;
  v257[1] = v7;
  v258[0] = &unk_287147398;
  v258[1] = &unk_28714DDD8;
  v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v258 forKeys:v257 count:2];
  v273[19] = v97;
  v272[20] = @"ChargerStatus";
  v255[0] = v4;
  v255[1] = v7;
  v256[0] = &unk_287147398;
  v256[1] = &unk_28714DDF0;
  v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v256 forKeys:v255 count:2];
  v273[20] = v96;
  v272[21] = @"ChargingVoltage";
  v253[0] = v4;
  v253[1] = v7;
  v254[0] = &unk_287147398;
  v254[1] = &unk_28714DE08;
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:v253 count:2];
  v273[21] = v95;
  v272[22] = @"Amperage";
  v251[0] = v4;
  v251[1] = v5;
  v252[0] = &unk_287147398;
  v252[1] = @"mA";
  v251[2] = v7;
  v252[2] = &unk_28714DE20;
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v252 forKeys:v251 count:3];
  v273[22] = v94;
  v272[23] = @"Temperature";
  v249[0] = v4;
  v249[1] = v5;
  v250[0] = &unk_287147368;
  v250[1] = @"C";
  v249[2] = v6;
  v250[2] = v3;
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v250 forKeys:v249 count:3];
  v273[23] = v93;
  v272[24] = @"AdapterInfo";
  v247[0] = v4;
  v247[1] = v7;
  v248[0] = &unk_287147398;
  v248[1] = &unk_28714DE38;
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
  v246[0] = &unk_287147398;
  v246[1] = &unk_28714DE50;
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
  v244[0] = &unk_287147398;
  v244[1] = v3;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v244 forKeys:v243 count:2];
  v273[30] = v82;
  v272[31] = @"QmaxCell1";
  v241[0] = v4;
  v241[1] = v6;
  v242[0] = &unk_287147398;
  v242[1] = v3;
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v242 forKeys:v241 count:2];
  v273[31] = v81;
  v272[32] = @"QmaxCell2";
  v239[0] = v4;
  v239[1] = v6;
  v240[0] = &unk_287147398;
  v240[1] = v3;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v240 forKeys:v239 count:2];
  v273[32] = v80;
  v272[33] = @"AbsoluteLevel";
  v237[0] = v4;
  v237[1] = v5;
  v238[0] = &unk_287147368;
  v238[1] = @"%";
  v237[2] = v6;
  v238[2] = v3;
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v238 forKeys:v237 count:3];
  v273[33] = v79;
  v272[34] = @"PMUConfiguration";
  v235[0] = v4;
  v235[1] = v7;
  v236[0] = &unk_287147398;
  v236[1] = &unk_28714DE68;
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v236 forKeys:v235 count:2];
  v273[34] = v78;
  v272[35] = @"DOD0";
  v233[0] = v4;
  v233[1] = v6;
  v234[0] = &unk_287147398;
  v234[1] = v3;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v234 forKeys:v233 count:2];
  v273[35] = v77;
  v272[36] = @"DOD1";
  v231[0] = v4;
  v231[1] = v6;
  v232[0] = &unk_287147398;
  v232[1] = v3;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v232 forKeys:v231 count:2];
  v273[36] = v76;
  v272[37] = @"DOD2";
  v229[0] = v4;
  v229[1] = v6;
  v230[0] = &unk_287147398;
  v230[1] = v3;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v230 forKeys:v229 count:2];
  v273[37] = v75;
  v272[38] = @"PassedCharge";
  v227[0] = v4;
  v227[1] = v7;
  v228[0] = &unk_287147398;
  v228[1] = &unk_28714DE80;
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v228 forKeys:v227 count:2];
  v273[38] = v74;
  v272[39] = @"Qstart";
  v225[0] = v4;
  v225[1] = v7;
  v226[0] = &unk_287147398;
  v226[1] = &unk_28714DE98;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v226 forKeys:v225 count:2];
  v273[39] = v73;
  v272[40] = @"ResScale";
  v223[0] = v4;
  v223[1] = v7;
  v224[0] = &unk_287147398;
  v224[1] = &unk_28714DEB0;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v224 forKeys:v223 count:2];
  v273[40] = v72;
  v272[41] = @"RSS";
  v221[0] = v4;
  v221[1] = v7;
  v222[0] = &unk_287147398;
  v222[1] = &unk_28714DEC8;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v222 forKeys:v221 count:2];
  v273[41] = v71;
  v272[42] = @"ITMiscStatus";
  v220[0] = &unk_287147398;
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
  v217[0] = &unk_287147398;
  v217[1] = &unk_28714DEE0;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v217 forKeys:v216 count:2];
  v273[45] = v64;
  v272[46] = @"BatteryCellDisconnectCount";
  v214[0] = v4;
  v214[1] = v7;
  v215[0] = &unk_287147398;
  v215[1] = &unk_28714DEF8;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:2];
  v273[46] = v63;
  v272[47] = @"GaugeResetCounter";
  v212[0] = v4;
  v212[1] = v7;
  v213[0] = &unk_287147398;
  v213[1] = &unk_28714DF10;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v213 forKeys:v212 count:2];
  v273[47] = v62;
  v272[48] = @"ChemicalWeightedRa";
  v210[0] = v4;
  v210[1] = v7;
  v211[0] = &unk_287147398;
  v211[1] = &unk_28714DF28;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v211 forKeys:v210 count:2];
  v273[48] = v61;
  v272[49] = @"WeightedRa";
  v208[0] = v4;
  v208[1] = v6;
  v209[0] = &unk_287147398;
  v209[1] = v3;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v209 forKeys:v208 count:2];
  v273[49] = v60;
  v272[50] = @"BatteryHealthMetric";
  v206[0] = v4;
  v206[1] = v7;
  v207[0] = &unk_287147398;
  v207[1] = &unk_28714DF40;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v207 forKeys:v206 count:2];
  v273[50] = v59;
  v272[51] = @"PeakPerformanceCapacity";
  v204[0] = v4;
  v204[1] = v7;
  v205[0] = &unk_287147398;
  v205[1] = &unk_28714DF58;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v205 forKeys:v204 count:2];
  v273[51] = v58;
  v272[52] = @"QmaxDisqualificationReason";
  v202[0] = v4;
  v202[1] = v7;
  v203[0] = &unk_287147398;
  v203[1] = &unk_28714DF70;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v203 forKeys:v202 count:2];
  v273[52] = v57;
  v272[53] = @"SimRate";
  v200[0] = v4;
  v200[1] = v7;
  v201[0] = &unk_287147398;
  v201[1] = &unk_28714DF88;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v201 forKeys:v200 count:2];
  v273[53] = v56;
  v272[54] = @"ChargeAccum";
  v198[0] = v4;
  v198[1] = v7;
  v199[0] = &unk_287147398;
  v199[1] = &unk_28714DFA0;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v199 forKeys:v198 count:2];
  v273[54] = v55;
  v272[55] = @"FilteredCurrent";
  v196[0] = v4;
  v196[1] = v7;
  v197[0] = &unk_287147398;
  v197[1] = &unk_28714DFB8;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:v196 count:2];
  v273[55] = v54;
  v272[56] = @"VacVoltageLimit";
  v194[0] = v4;
  v194[1] = v7;
  v195[0] = &unk_287147398;
  v195[1] = &unk_28714DFD0;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v195 forKeys:v194 count:2];
  v273[56] = v53;
  v272[57] = @"KioskModeHighSocSeconds";
  v192[0] = v4;
  v192[1] = v7;
  v193[0] = &unk_287147398;
  v193[1] = &unk_28714DFE8;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:v192 count:2];
  v273[57] = v52;
  v272[58] = @"KioskModeMode";
  v190[0] = v4;
  v190[1] = v7;
  v191[0] = &unk_287147398;
  v191[1] = &unk_28714E000;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:v190 count:2];
  v273[58] = v51;
  v272[59] = @"CurrentSenseMonitorStatus";
  v188[0] = v4;
  v188[1] = v7;
  v189[0] = &unk_287147398;
  v189[1] = &unk_28714E018;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:v188 count:2];
  v273[59] = v50;
  v272[60] = @"AdapterPower";
  v186[0] = v4;
  v186[1] = v7;
  v187[0] = &unk_287147368;
  v187[1] = &unk_28714E030;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:2];
  v273[60] = v49;
  v272[61] = @"SystemPower";
  v184[0] = v4;
  v184[1] = v7;
  v185[0] = &unk_287147368;
  v185[1] = &unk_28714E048;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:2];
  v273[61] = v48;
  v272[62] = @"PMUConfigured";
  v182[0] = v4;
  v182[1] = v7;
  v183[0] = &unk_287147368;
  v183[1] = &unk_28714E060;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v183 forKeys:v182 count:2];
  v273[62] = v47;
  v272[63] = @"VirtualTemperature";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v273[63] = v45;
  v272[64] = @"SWRemCap";
  v180[0] = v4;
  v180[1] = v7;
  v181[0] = &unk_287147398;
  v181[1] = &unk_28714E078;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v181 forKeys:v180 count:2];
  v273[64] = v44;
  v272[65] = @"SWRawFCC";
  v178[0] = v4;
  v178[1] = v7;
  v179[0] = &unk_287147398;
  v179[1] = &unk_28714E090;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v179 forKeys:v178 count:2];
  v273[65] = v43;
  v272[66] = @"SWRawSOC";
  v176[0] = v4;
  v176[1] = v7;
  v177[0] = &unk_287147398;
  v177[1] = &unk_28714E0A8;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:2];
  v273[66] = v42;
  v272[67] = @"OCVCount";
  v174[0] = v4;
  v174[1] = v7;
  v175[0] = &unk_287147398;
  v175[1] = &unk_28714E0C0;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:2];
  v273[67] = v41;
  v272[68] = @"OCV";
  v172[0] = v4;
  v172[1] = v7;
  v173[0] = &unk_287147398;
  v173[1] = &unk_28714E0D8;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:2];
  v273[68] = v40;
  v272[69] = @"RaUpdateDisqualified";
  v170[0] = v4;
  v170[1] = v7;
  v171[0] = &unk_287147398;
  v171[1] = &unk_28714E0F0;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:2];
  v273[69] = v39;
  v272[70] = @"QmaxUpdateDisqualified";
  v168[0] = v4;
  v168[1] = v7;
  v169[0] = &unk_287147398;
  v169[1] = &unk_28714E108;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:2];
  v273[70] = v38;
  v272[71] = @"TimeSinceLastOCV";
  v166[0] = v4;
  v166[1] = v7;
  v167[0] = &unk_287147398;
  v167[1] = &unk_28714E120;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:2];
  v273[71] = v37;
  v272[72] = @"LPEMMode";
  v164[0] = v4;
  v164[1] = v7;
  v165[0] = &unk_287147398;
  v165[1] = &unk_28714E138;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:2];
  v273[72] = v36;
  v272[73] = @"InductiveFWMode";
  v162[0] = v4;
  v162[1] = v7;
  v163[0] = &unk_287147398;
  v163[1] = &unk_28714E150;
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
  v161[0] = &unk_2871473C8;
  v161[1] = &unk_28714E168;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:2];
  v273[78] = v26;
  v272[79] = @"SOCFThreshold";
  v158[0] = v4;
  v158[1] = v7;
  v159[0] = &unk_287147398;
  v159[1] = &unk_28714E180;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:2];
  v273[79] = v25;
  v272[80] = @"SOCAlarm";
  v156[0] = v4;
  v156[1] = v7;
  v157[0] = &unk_287147398;
  v157[1] = &unk_28714E198;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:2];
  v273[80] = v24;
  v272[81] = @"DynamicEntryStatus";
  v154[0] = v4;
  v154[1] = v7;
  v155[0] = &unk_287147398;
  v155[1] = &unk_28714E1B0;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:2];
  v273[81] = v23;
  v272[82] = @"ShallowDischargeLevels";
  v152[0] = v4;
  v152[1] = v7;
  v153[0] = &unk_287147398;
  v153[1] = &unk_28714E1C8;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:2];
  v273[82] = v22;
  v272[83] = @"ShallowDischargeScore";
  v150[0] = v4;
  v150[1] = v7;
  v151[0] = &unk_287147398;
  v151[1] = &unk_28714E1E0;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:2];
  v273[83] = v21;
  v272[84] = @"ShallowDischargeFlag";
  v148[0] = v4;
  v148[1] = v7;
  v149[0] = &unk_287147398;
  v149[1] = &unk_28714E1F8;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:2];
  v273[84] = v20;
  v272[85] = @"TLCDuration";
  v146[0] = v4;
  v146[1] = v7;
  v147[0] = &unk_287147398;
  v147[1] = &unk_28714E210;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
  v273[85] = v19;
  v272[86] = @"AverageAmperage";
  v144[0] = v4;
  v144[1] = v7;
  v145[0] = &unk_287147398;
  v145[1] = &unk_28714E228;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];
  v273[86] = v8;
  v272[87] = @"DODatEOC";
  v142[0] = v4;
  v142[1] = v7;
  v143[0] = &unk_287147398;
  v143[1] = &unk_28714E240;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:2];
  v273[87] = v9;
  v272[88] = @"SOC1Voltage";
  v140[0] = v4;
  v140[1] = v7;
  v141[0] = &unk_287147398;
  v141[1] = &unk_28714E258;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:2];
  v273[88] = v10;
  v272[89] = @"ChargerInhibitReason";
  v138[0] = v4;
  v138[1] = v7;
  v139[0] = &unk_287147398;
  v139[1] = &unk_28714E270;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:2];
  v273[89] = v11;
  v272[90] = @"Dod0AtQualifiedQmax";
  v136[0] = v4;
  v136[1] = v7;
  v137[0] = &unk_287147398;
  v137[1] = &unk_28714E288;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:2];
  v273[90] = v12;
  v272[91] = @"SlowChargingReason";
  v134[0] = v4;
  v134[1] = v7;
  v135[0] = &unk_287147398;
  v135[1] = &unk_28714E2A0;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];
  v273[91] = v13;
  v272[92] = @"BatteryRsenseOpenCount";
  v132[0] = v4;
  v132[1] = v7;
  v133[0] = &unk_287147398;
  v133[1] = &unk_28714E2B8;
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
  v17[0] = &unk_28714B9E8;
  v17[1] = &unk_287147380;
  v16[2] = *MEMORY[0x277D3F588];
  v17[2] = &unk_28714B9F8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"Level";
  v4 = *MEMORY[0x277D3F5B0];
  v12[0] = *MEMORY[0x277D3F5A8];
  v12[1] = v4;
  v13[0] = &unk_287147368;
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
    v86 = &unk_28714BAA8;
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
    v82[0] = &unk_287147398;
    v82[1] = @"As";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
    v84[15] = v25;
    v83[16] = @"IncomingVoltage";
    v4 = *MEMORY[0x277D3F538];
    v79[0] = v2;
    v79[1] = v4;
    v80[0] = &unk_287147398;
    v80[1] = &unk_28714E2D0;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
    v84[16] = v24;
    v83[17] = @"IncomingCurrent";
    v77[0] = v2;
    v77[1] = v4;
    v78[0] = &unk_287147398;
    v78[1] = &unk_28714E2E8;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
    v84[17] = v23;
    v83[18] = @"Cell0Voltage";
    v75[0] = v2;
    v75[1] = v4;
    v76[0] = &unk_287147398;
    v76[1] = &unk_28714E300;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
    v84[18] = v22;
    v83[19] = @"Cell1Voltage";
    v73[0] = v2;
    v73[1] = v4;
    v74[0] = &unk_287147398;
    v74[1] = &unk_28714E318;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
    v84[19] = v21;
    v83[20] = @"PowerStatus";
    v71[0] = v2;
    v71[1] = v4;
    v72[0] = &unk_287147398;
    v72[1] = &unk_28714E330;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
    v84[20] = v20;
    v83[21] = @"ChargingStatus";
    v69[0] = v2;
    v69[1] = v4;
    v70[0] = &unk_287147398;
    v70[1] = &unk_28714E348;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v84[21] = v19;
    v83[22] = @"InductiveStatus";
    v67[0] = v2;
    v67[1] = v4;
    v68[0] = &unk_287147398;
    v68[1] = &unk_28714E360;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v84[22] = v18;
    v83[23] = @"FamilyCode";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v84[23] = v16;
    v83[24] = @"AvailablePower";
    v65[0] = v2;
    v65[1] = v4;
    v66[0] = &unk_287147398;
    v66[1] = &unk_28714E378;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v84[24] = v15;
    v83[25] = @"RxPowerLimit";
    v63[0] = v2;
    v63[1] = v4;
    v64[0] = &unk_287147398;
    v64[1] = &unk_28714E390;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v84[25] = v5;
    v83[26] = @"ChargingCurrent";
    v61[0] = v2;
    v61[1] = v4;
    v62[0] = &unk_287147398;
    v62[1] = &unk_28714E3A8;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
    v84[26] = v6;
    v83[27] = @"CycleCount";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v84[27] = v8;
    v83[28] = @"NominalChargeCapacity";
    v59[0] = v2;
    v59[1] = v4;
    v60[0] = &unk_287147398;
    v60[1] = &unk_28714E3C0;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v84[28] = v9;
    v83[29] = @"ChargingVoltage";
    v57[0] = v2;
    v57[1] = v4;
    v58[0] = &unk_287147398;
    v58[1] = &unk_28714E3D8;
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
    v90 = &unk_28714BA28;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    v92[0] = v34;
    v91[1] = *MEMORY[0x277D3F540];
    v87[0] = @"AttachCountType0";
    v3 = *MEMORY[0x277D3F538];
    v85[0] = *MEMORY[0x277D3F5A8];
    v2 = v85[0];
    v85[1] = v3;
    v86[0] = &unk_287147398;
    v86[1] = &unk_28714E3F0;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
    v88[0] = v33;
    v87[1] = @"AttachCountType1";
    v83[0] = v2;
    v83[1] = v3;
    v84[0] = &unk_287147398;
    v84[1] = &unk_28714E408;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
    v88[1] = v32;
    v87[2] = @"AttachCountType2";
    v81[0] = v2;
    v81[1] = v3;
    v82[0] = &unk_287147398;
    v82[1] = &unk_28714E420;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
    v88[2] = v31;
    v87[3] = @"AttachCountAdapter5";
    v79[0] = v2;
    v79[1] = v3;
    v80[0] = &unk_287147398;
    v80[1] = &unk_28714E438;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
    v88[3] = v30;
    v87[4] = @"AttachCountAdapter7";
    v77[0] = v2;
    v77[1] = v3;
    v78[0] = &unk_287147398;
    v78[1] = &unk_28714E450;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
    v88[4] = v29;
    v87[5] = @"AttachCountAdapter10";
    v75[0] = v2;
    v75[1] = v3;
    v76[0] = &unk_287147398;
    v76[1] = &unk_28714E468;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
    v88[5] = v28;
    v87[6] = @"AttachCountAdapter12";
    v73[0] = v2;
    v73[1] = v3;
    v74[0] = &unk_287147398;
    v74[1] = &unk_28714E480;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
    v88[6] = v27;
    v87[7] = @"AttachCountAdapter15";
    v71[0] = v2;
    v71[1] = v3;
    v72[0] = &unk_287147398;
    v72[1] = &unk_28714E498;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
    v88[7] = v26;
    v87[8] = @"AttachCountAdapter18";
    v69[0] = v2;
    v69[1] = v3;
    v70[0] = &unk_287147398;
    v70[1] = &unk_28714E4B0;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v88[8] = v25;
    v87[9] = @"AttachCountAdapter20";
    v67[0] = v2;
    v67[1] = v3;
    v68[0] = &unk_287147398;
    v68[1] = &unk_28714E4C8;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v88[9] = v24;
    v87[10] = @"QmaxCell0";
    v65[0] = v2;
    v65[1] = v3;
    v66[0] = &unk_287147398;
    v66[1] = &unk_28714E4E0;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v88[10] = v23;
    v87[11] = @"QmaxCell1";
    v63[0] = v2;
    v63[1] = v3;
    v64[0] = &unk_287147398;
    v64[1] = &unk_28714E4F8;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v88[11] = v22;
    v87[12] = @"MaximumTemperature";
    v61[0] = v2;
    v61[1] = v3;
    v62[0] = &unk_287147398;
    v62[1] = &unk_28714E510;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
    v88[12] = v21;
    v87[13] = @"MinimumTemperature";
    v59[0] = v2;
    v59[1] = v3;
    v60[0] = &unk_287147398;
    v60[1] = &unk_28714E528;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v88[13] = v20;
    v87[14] = @"MaximumVoltageCell0";
    v57[0] = v2;
    v57[1] = v3;
    v58[0] = &unk_287147398;
    v58[1] = &unk_28714E540;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v88[14] = v19;
    v87[15] = @"MaximumVoltageCell1";
    v55[0] = v2;
    v55[1] = v3;
    v56[0] = &unk_287147398;
    v56[1] = &unk_28714E558;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v88[15] = v18;
    v87[16] = @"MinimumVoltageCell0";
    v53[0] = v2;
    v53[1] = v3;
    v54[0] = &unk_287147398;
    v54[1] = &unk_28714E570;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    v88[16] = v17;
    v87[17] = @"MinimumVoltageCell1";
    v51[0] = v2;
    v51[1] = v3;
    v52[0] = &unk_287147398;
    v52[1] = &unk_28714E588;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v88[17] = v16;
    v87[18] = @"MaximumChargeCurrent";
    v49[0] = v2;
    v49[1] = v3;
    v50[0] = &unk_287147398;
    v50[1] = &unk_28714E5A0;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    v88[18] = v15;
    v87[19] = @"MaximumDischargeCurrent";
    v47[0] = v2;
    v47[1] = v3;
    v48[0] = &unk_287147398;
    v48[1] = &unk_28714E5B8;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v88[19] = v4;
    v87[20] = @"TimeBelowLowTemperature";
    v45[0] = v2;
    v45[1] = v3;
    v46[0] = &unk_287147398;
    v46[1] = &unk_28714E5D0;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    v88[20] = v5;
    v87[21] = @"TimeAboveLowTemperature";
    v43[0] = v2;
    v43[1] = v3;
    v44[0] = &unk_287147398;
    v44[1] = &unk_28714E5E8;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v88[21] = v6;
    v87[22] = @"TimeAboveMedTemperature";
    v41[0] = v2;
    v41[1] = v3;
    v42[0] = &unk_287147398;
    v42[1] = &unk_28714E600;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    v88[22] = v7;
    v87[23] = @"TimeAboveHighTemperature";
    v39[0] = v2;
    v39[1] = v3;
    v40[0] = &unk_287147398;
    v40[1] = &unk_28714E618;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v88[23] = v8;
    v87[24] = @"TotalOperatingTime";
    v37[0] = v2;
    v37[1] = v3;
    v38[0] = &unk_287147398;
    v38[1] = &unk_28714E630;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v88[24] = v9;
    v87[25] = @"KioskModeCount";
    v35[0] = v2;
    v35[1] = v3;
    v36[0] = &unk_287147398;
    v36[1] = &unk_28714E648;
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
    v27[0] = &unk_28714BA68;
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
  v18 = &unk_28714BA28;
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
  v34 = &unk_28714B9E8;
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
  v56 = &unk_28714BA38;
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
    v20 = &unk_28714BA28;
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
  v18 = &unk_28714BA68;
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
  v18 = &unk_28714BA68;
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
  v18 = &unk_28714BA68;
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
  v30 = &unk_28714BA28;
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
  v22 = &unk_28714BA28;
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
  v13[0] = &unk_28714BA28;
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
  v23[0] = &unk_28714B9E8;
  v23[1] = &unk_287147380;
  v22[2] = *MEMORY[0x277D3F588];
  v23[2] = &unk_28714B9F8;
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
  v18 = &unk_28714BAB8;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_28714B9F8;
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
  if (+[PLUtilities hasBattery])
  {
    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
    {
      v62.receiver = self;
      v62.super_class = PLBatteryAgent;
      v3 = [(PLAgent *)&v62 init];
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
      if (+[PLUtilities hasGasGauge])
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
            [(PLBatteryAgent *)&v4->_magsafeIOService init];
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

      if (+[PLUtilities deviceRebooted])
      {
        [MEMORY[0x277D3F180] setObject:0 forKey:@"LastPanicData" saveToDisk:1];
      }

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryAgent init];
      }

      -[PLBatteryAgent setIsTLCNotificationSurfaced:](v4, "setIsTLCNotificationSurfaced:", [MEMORY[0x277D3F180] BOOLForKey:@"kPLDefaultTLCNotificationSurfaced" ifNotSet:0]);
      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryAgent *)v4 init];
      }

      [(PLBatteryAgent *)v4 setSmartChargingEngaged:0];
      [(PLBatteryAgent *)v4 setCleanEnergyChargingEngaged:0];
      [(PLBatteryAgent *)v4 setLastTLCEntryStartTime:0];
      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryAgent *)v4 init];
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
      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryAgent *)v4 init];
      }

      v28 = objc_alloc(MEMORY[0x277D3F1C8]);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __22__PLBatteryAgent_init__block_invoke_3292;
      v60[3] = &unk_279A5E828;
      self = v4;
      v61 = self;
      v29 = [v28 initWithOperator:self forService:@"IOPMPowerSource" withBlock:v60];
      iokitPowerSource = self->_iokitPowerSource;
      self->_iokitPowerSource = v29;

      if (self->_iokitPowerSource)
      {
        if (+[PLUtilities hasGasGauge]&& ![(PLBatteryAgent *)self hasAppleSmartBattery])
        {
          v32 = objc_alloc(MEMORY[0x277D3F250]);
          v33 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:20.0];
          v34 = [(PLOperator *)self workQueue];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __22__PLBatteryAgent_init__block_invoke_3356;
          v58[3] = &unk_279A5D088;
          v35 = self;
          v59 = v35;
          v36 = [v32 initWithFireDate:v33 withInterval:1 withTolerance:0 repeats:v34 withUserInfo:v58 withQueue:20.0 withBlock:0.0];
          gasGaugeTimer = v35->_gasGaugeTimer;
          v35->_gasGaugeTimer = v36;

          [(PLBatteryAgent *)v35 setAllowGasGaugeRead:0];
          [(PLBatteryAgent *)v35 gasGaugeOpenAndStartLogging];
        }

        else
        {
          v31 = self->_gasGaugeTimer;
          self->_gasGaugeTimer = 0;

          [(PLBatteryAgent *)self setAllowGasGaugeRead:0];
        }

        if ([(PLOperator *)self isDebugEnabled])
        {
          v38 = [MEMORY[0x277CCAB98] defaultCenter];
          [v38 addObserver:self selector:sel_fakeLogEntry_ name:@"PLBatteryAgent.fakeLogEntry" object:0];
        }

        v39 = [MEMORY[0x277D3F1B8] hasInductiveCharging];
        v40 = [MEMORY[0x277CCAB98] defaultCenter];
        v41 = v40;
        if (v39)
        {
          [v40 addObserver:self selector:sel_accessoryConnectionEventNotification_ name:@"PLCAAccessoryAttachedNotification" object:0];

          v42 = [MEMORY[0x277CCAB98] defaultCenter];
          [v42 addObserver:self selector:sel_accessoryDisconnectEventNotification_ name:@"PLCAAccessoryDetachedNotification" object:0];
        }

        else
        {
          [v40 addObserver:self selector:sel_accessoryConnected_ name:*MEMORY[0x277CC5E88] object:0];

          v43 = [MEMORY[0x277CCAB98] defaultCenter];
          [v43 addObserver:self selector:sel_accessoryDisconnected_ name:*MEMORY[0x277CC5E90] object:0];

          v42 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
          [v42 registerForLocalNotifications];
        }

        if (+[PLBatteryAgent hasExternalAccessory])
        {
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v44 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __22__PLBatteryAgent_init__block_invoke_2_3378;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v44;
            if (init_defaultOnce_2 != -1)
            {
              dispatch_once(&init_defaultOnce_2, block);
            }

            if (init_classDebugEnabled_2 == 1)
            {
              v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Notification registered"];
              v46 = MEMORY[0x277D3F178];
              v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
              v48 = [v47 lastPathComponent];
              v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent init]"];
              [v46 logMessage:v45 fromFile:v48 fromFunction:v49 fromLineNumber:3603];

              v50 = PLLogCommon();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
              }
            }
          }

          v51 = PLLogCommon();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryAgent init];
          }

          [(PLBatteryAgent *)self refreshEABatteryStatusTriggeredByConnectionEvent:0];
          v52 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"EABattery"];
          entryKeyEABattery = self->_entryKeyEABattery;
          self->_entryKeyEABattery = v52;

          v54 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"EAPencilStats"];
          entryKeyEAPencilStats = self->_entryKeyEAPencilStats;
          self->_entryKeyEAPencilStats = v54;
        }

        if ([(PLOperator *)self isDebugEnabled])
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(DarwinNotifyCenter, self, pushConfigToAggd, @"com.apple.powerlogd.PLBatteryAgent.pushConfigToAggd", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        }

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
      _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEFAULT, "no battery detected", buf, 2u);
    }
  }

  v25 = 0;
LABEL_31:

  return v25;
}

void __22__PLBatteryAgent_init__block_invoke_3292(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536723200)
  {
    v211 = v8;
    v212 = v7;
    v213 = v6;
    v214 = v5;
    v215 = v3;
    v216 = v4;
    v10 = (a1 + 32);
    v11 = *(a1 + 32);
    v12 = +[PLEventBackwardBatteryEntry entryKey];
    [v11 timeIntervalSinceLastLogForEntryKey:v12];
    v14 = v13;
    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = __22__PLBatteryAgent_init__block_invoke_2;
    v209[3] = &unk_279A5BDC0;
    v210 = *v10;
    v15 = v209;
    if (kPLBatteryAgentStringUserType_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_defaultOnce, v15);
    }

    v16 = *&kPLBatteryAgentStringUserType_block_invoke_objectForKey;
    v17 = [MEMORY[0x277D3F180] debugEnabled];
    if (v14 > v16)
    {
      if (v17)
      {
        v18 = *v10;
        v19 = objc_opt_class();
        v208[0] = MEMORY[0x277D85DD0];
        v208[1] = 3221225472;
        v208[2] = __22__PLBatteryAgent_init__block_invoke_3;
        v208[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v208[4] = v19;
        v20 = v208;
        if (kPLBatteryAgentStringUserType_block_invoke_defaultOnce_3294 != -1)
        {
          dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_defaultOnce_3294, v20);
        }

        if (kPLBatteryAgentStringUserType_block_invoke_classDebugEnabled == 1)
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = *v10;
          v23 = +[PLEventBackwardBatteryEntry entryKey];
          [v22 timeIntervalSinceLastLogForEntryKey:v23];
          v25 = [v21 stringWithFormat:@"kIOPMMessageBatteryStatusHasChanged ok for ratelimit %f", v24];

          v26 = MEMORY[0x277D3F178];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v28 = [v27 lastPathComponent];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent init]_block_invoke"];
          [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:3291];

          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
          }
        }
      }

      v31 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2];
      v32 = [*v10 logEventBackwardBatteryWithRawData:v31];
      if ([*v10 hasAppleSmartBattery])
      {
        v33 = @"ChargerStatus";
      }

      else
      {
        v33 = @"ChargerRegisterStatus";
      }

      [v32 setObject:0 forKeyedSubscript:v33];
      [*v10 sampleBatteryEntryWithRawData:v31 andProperties:v32];
      if ([*v10 lifetimeDataLogged] & 1) != 0 || (objc_msgSend(*v10, "shouldWaitForLifetimeDataWithRawData:", v31))
      {
        if ([*v10 lifetimeDataLogged])
        {
LABEL_36:
          [*v10 logAdapterDetails:v31];
          [*v10 logAdapterInfo:v31];
          [*v10 logPowerOutDetails:v31];
          v54 = [MEMORY[0x277CBEAA8] monotonicDate];
          v55 = [*v10 previousPortControllerRead];
          if (!v55 || (v56 = v55, [*v10 previousPortControllerRead], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v54, "timeIntervalSinceDate:", v57), v59 = v58, v57, v56, v59 >= 600.0))
          {
            [*v10 setPreviousPortControllerRead:v54];
            v60 = PLLogCommon();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              __22__PLBatteryAgent_init__block_invoke_3292_cold_5();
            }

            [*v10 logPortControllerInfo:v31];
            [*v10 logOrionInfo:v31];
          }

          [*v10 logFedDetails:v31];
          [*v10 logEventPointBatteryPanicShutdown:v31];
          v61 = [v32 objectForKeyedSubscript:@"ExternalConnected"];
          if ([v61 BOOLValue])
          {
            v62 = [v32 objectForKeyedSubscript:@"CurrentCapacity"];
            [v62 doubleValue];
            v64 = v63 * 100.0;
            v65 = [v32 objectForKeyedSubscript:@"MaxCapacity"];
            [v65 doubleValue];
            v67 = v64 / v66 > 95.0;
          }

          else
          {
            v67 = 0;
          }

          if (([*v10 isFirstTimeCheckingPingPong] & 1) != 0 || v67 != objc_msgSend(*v10, "isPingPongCharging"))
          {
            v68 = MEMORY[0x277CBEBF8];
            if (v67)
            {
              v68 = &unk_28714E660;
            }

            v69 = v68;
            v70 = [MEMORY[0x277D3F0C0] sharedInstance];
            v71 = [v32 entryDate];
            [v70 createQualificationEventForwardWithQualificationID:7 withChildNodeNames:v69 withStartDate:v71];

            [*v10 setIsPingPongCharging:v67];
            [*v10 setIsFirstTimeCheckingPingPong:0];
          }

          v192 = a2;
          v191 = v54;
          if ([MEMORY[0x277D3F1B8] hasWirelessCharger])
          {
            v72 = [*v10 chargerIOService];
            v73 = [v72 properties];

            if (v73)
            {
              v74 = [v73 objectForKeyedSubscript:@"ConnectState"];

              if (v74)
              {
                v75 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ExternalCharger"];
                v76 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v75];
                v77 = [v73 objectForKeyedSubscript:@"DeviceInfoInterfaceSerialNumber"];
                if (!v77)
                {
                  v77 = [*v10 magsafeIOService];

                  if (v77)
                  {
                    v78 = [*v10 magsafeIOService];
                    v79 = [v78 properties];

                    v77 = [v79 objectForKeyedSubscript:@"IOAccessoryAccessorySerialNumber"];
                  }
                }

                v80 = [v73 objectForKeyedSubscript:@"ConnectState"];
                v81 = [PLBatteryAgent connectStateStringToEnum:v80];
                [v76 setObject:v81 forKeyedSubscript:@"ConnectState"];

                v82 = [v73 objectForKeyedSubscript:@"ResetCount"];
                [v76 setObject:v82 forKeyedSubscript:@"ResetCount"];

                v83 = [*v10 parseBatterySerialNumber:v77];
                v84 = [v83 objectForKeyedSubscript:@"eeee_code"];
                [v76 setObject:v84 forKeyedSubscript:@"EEEECode"];

                v85 = [v73 objectForKeyedSubscript:@"Cloaked"];
                [v76 setObject:v85 forKeyedSubscript:@"Cloaked"];

                v86 = [v73 objectForKeyedSubscript:@"FWStatus"];
                [v76 setObject:v86 forKeyedSubscript:@"FWStatus"];

                v87 = [v73 objectForKeyedSubscript:@"LinkEfficiency"];
                [v76 setObject:v87 forKeyedSubscript:@"LinkEfficiency"];

                v88 = [v73 objectForKeyedSubscript:@"CloakReason"];
                [v76 setObject:v88 forKeyedSubscript:@"CloakReason"];

                v89 = [v73 objectForKeyedSubscript:@"DeviceInfoChipVariant"];
                [v76 setObject:v89 forKeyedSubscript:@"DeviceInfoChipVariant"];

                v90 = [v73 objectForKeyedSubscript:@"DeviceInfoRegionCode"];
                [v76 setObject:v90 forKeyedSubscript:@"DeviceInfoRegionCode"];

                v91 = [v73 objectForKeyedSubscript:@"PuckClassification"];
                [v76 setObject:v91 forKeyedSubscript:@"PuckClassification"];

                v92 = [v73 objectForKeyedSubscript:@"HFPolicy"];
                [v76 setObject:v92 forKeyedSubscript:@"HFPolicy"];

                v93 = [*v10 lastChargerEntry];
                if (!v93 || (v94 = v93, v95 = [*v10 modifiedExternalChargerEntry:v76], v94, v95))
                {
                  [*v10 logEntry:v76];
                }

                [*v10 setLastChargerEntry:v76];
              }
            }
          }

          v96 = *MEMORY[0x277D3F5C8];
          v195 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
          [*v10 EABatteryLevel];
          v98 = v97;
          v99 = [v32 objectForKeyedSubscript:@"ExternalConnected"];
          v100 = [v99 BOOLValue];
          if (v98 >= 1.0)
          {
            v101 = 1;
          }

          else
          {
            v101 = v100;
          }

          v102 = [*v10 deviceIsPluggedIn];
          if (!v102 || (v103 = v102, [*v10 deviceIsPluggedIn], v104 = objc_claimAutoreleasedReturnValue(), v105 = objc_msgSend(v104, "BOOLValue"), v104, v103, v101 != v105))
          {
            v106 = *v10;
            v107 = [v32 entryDate];
            [v106 updateIntervalForType:1 withState:v101 andTime:v107];
          }

          v108 = [v32 objectForKeyedSubscript:@"TimeChargingThermallyLimited"];
          v109 = [*v10 TLCOverrideValue];

          if (v109)
          {
            v110 = PLLogCommon();
            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
            {
              __22__PLBatteryAgent_init__block_invoke_3292_cold_6(v108, v10);
            }

            v111 = [*v10 TLCOverrideValue];

            v108 = v111;
          }

          v112 = PLLogCommon();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
          {
            __22__PLBatteryAgent_init__block_invoke_3292_cold_7(v10);
          }

          v113 = [v108 intValue];
          v114 = [*v10 lastTLCCounter];
          v115 = v113 > [v114 intValue];

          [*v10 setTlcIncreased:v115];
          if ([MEMORY[0x277D3F058] supportsSlowCharging])
          {
            v116 = [v32 objectForKeyedSubscript:@"AdapterPowerTier"];

            if (v116)
            {
              v194 = [v32 objectForKeyedSubscript:@"AdapterPowerTier"];
            }

            else
            {
              v194 = &unk_2871473F8;
            }
          }

          else
          {
            v194 = 0;
          }

          [*v10 handleCameraStreaming:v101 withProperties:v32];
          v117 = [*v10 lastTLCCounter];

          if (v117)
          {
            v118 = [*v10 tlcIncreased];
            v119 = *v10;
            v120 = [v32 entryDate];
            [v119 updateIntervalForType:3 withState:v118 andTime:v120];
          }

          v121 = _os_feature_enabled_impl();
          v122 = PLLogCommon();
          v123 = os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG);
          if (v121)
          {
            if (v123)
            {
              __22__PLBatteryAgent_init__block_invoke_3292_cold_9();
            }

            [*v10 handleTLCNotification:v31 externalConnected:v101];
          }

          else
          {
            if (v123)
            {
              __22__PLBatteryAgent_init__block_invoke_3292_cold_8();
            }
          }

          [*v10 setLastTLCCounter:v108];
          if (![MEMORY[0x277D3F058] supportsSlowCharging])
          {
LABEL_95:
            v130 = [*v10 deviceIsPluggedIn];
            v193 = v108;
            if (v130)
            {
              v131 = v130;
              v132 = [*v10 deviceIsPluggedIn];
              if (v101 == [v132 BOOLValue])
              {
                [*v10 timeIntervalSinceLastLogForEntryKey:v195];
                v134 = v133;
                v201[0] = MEMORY[0x277D85DD0];
                v201[1] = 3221225472;
                v201[2] = __22__PLBatteryAgent_init__block_invoke_3332;
                v201[3] = &unk_279A5BDC0;
                v202 = *v10;
                v135 = v201;
                if (kPLBatteryAgentStringUserType_block_invoke_defaultOnce_3330 != -1)
                {
                  dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_defaultOnce_3330, v135);
                }

                v136 = *&kPLBatteryAgentStringUserType_block_invoke_objectForKey_3331;
                if (v134 <= v136)
                {
                  goto LABEL_114;
                }
              }

              else
              {
              }
            }

            v137 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v195];
            v138 = [v32 objectForKeyedSubscript:@"Level"];
            v139 = [v138 intValue];

            v140 = [*v10 deviceIsPluggedIn];

            if (v140)
            {
              if ((v101 & 1) == 0)
              {
                v141 = [*v10 deviceIsPluggedIn];
                v142 = [v141 BOOLValue];

                if (v142)
                {
                  v143 = [v137 entryDate];
                  [v143 timeIntervalSince1970];
                  v145 = v144;

                  [*v10 updateLastChargeLevel:v139 withTimestamp:v145];
                }
              }
            }

            else
            {
              v146 = *v10;
              v147 = [objc_opt_class() entryKeyForType:v96 andName:@"BatteryUI"];
              v148 = [*v10 storage];
              v149 = [v148 lastEntryForKey:v147];

              if (v149)
              {
                v150 = [v149 objectForKeyedSubscript:@"IsCharging"];
                v151 = [v150 BOOLValue];

                if (!(v101 & 1 | ((v151 & 1) == 0)))
                {
                  v152 = [MEMORY[0x277CBEAA8] monotonicDate];
                  [v152 timeIntervalSince1970];
                  v154 = v153;

                  [*v10 updateLastChargeLevel:v139 withTimestamp:v154];
                }
              }
            }

            v155 = [MEMORY[0x277CCABB0] numberWithInt:v139];
            [v137 setObject:v155 forKeyedSubscript:@"Level"];

            v156 = [MEMORY[0x277CCABB0] numberWithBool:v101];
            [v137 setObject:v156 forKeyedSubscript:@"IsCharging"];

            v157 = PLLogCommon();
            if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_25EE51000, v157, OS_LOG_TYPE_DEFAULT, "Updating level and plugged in status", buf, 2u);
            }

            [*v10 logEntry:v137];
            v158 = [*v10 lastUILevel];
            v159 = (v158 - v139);
            if (v158 - v139 >= 0)
            {
              v160 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
              v161 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v160];
              v162 = [MEMORY[0x277CCABB0] numberWithInt:v159];
              [v161 setObject:v162 forKeyedSubscript:@"Level"];

              [*v10 logEntry:v161];
            }

            [*v10 setLastUILevel:v139];

            v108 = v193;
LABEL_114:
            v163 = [v31 objectForKeyedSubscript:@"CurrentCapacity"];
            [v163 doubleValue];
            v165 = v164;

            v166 = [v31 objectForKeyedSubscript:@"MaxCapacity"];
            [v166 doubleValue];
            v168 = v167;

            v169 = 0.0;
            if (v168 > 0.0)
            {
              v169 = v165 * 100.0 / v168;
            }

            [*v10 setBatteryLevelPercent:v169];
            v170 = [MEMORY[0x277CCABB0] numberWithBool:v101];
            [*v10 setDeviceIsPluggedIn:v170];

            v171 = *v10;
            v172 = [v31 objectForKeyedSubscript:@"Voltage"];
            [v172 doubleValue];
            [v171 setRawBatteryVoltageVolt:v173 / 1000.0];

            v174 = 0x279A5A000;
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v175 = *v10;
              v176 = objc_opt_class();
              v199[0] = MEMORY[0x277D85DD0];
              v199[1] = 3221225472;
              v199[2] = __22__PLBatteryAgent_init__block_invoke_3335;
              v199[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v199[4] = v176;
              v177 = v199;
              if (kPLBatteryAgentStringUserType_block_invoke_defaultOnce_3333 != -1)
              {
                dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_defaultOnce_3333, v177);
              }

              if (kPLBatteryAgentStringUserType_block_invoke_classDebugEnabled_3334 == 1)
              {
                v178 = MEMORY[0x277CCACA8];
                [*v10 rawBatteryVoltageVolt];
                v180 = [v178 stringWithFormat:@"rawBatteryVoltageVolt: %f", v179];
                v181 = MEMORY[0x277D3F178];
                v182 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
                v183 = [v182 lastPathComponent];
                v184 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent init]_block_invoke_2"];
                [v181 logMessage:v180 fromFile:v183 fromFunction:v184 fromLineNumber:3537];

                v185 = PLLogCommon();
                if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
                {
                  __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
                }

                v174 = 0x279A5A000uLL;
                v108 = v193;
              }
            }

            if ([*v10 hasAppleSmartBattery])
            {
              [*v10 logCurrentAccumulatorWithRawData:v31];
            }

            if ([*(v174 + 3224) hasChargingInfoLogging])
            {
              [*v10 checkChargingInfoChange:v31];
              v186 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:v192 forKey:@"ChargingParameters"];
              v187 = [v186 mutableCopy];

              v188 = [v31 objectForKeyedSubscript:@"InductiveData"];
              v189 = [v188 objectForKeyedSubscript:@"FirmwareMode"];
              [v187 setObject:v189 forKeyedSubscript:@"InductiveFWMode"];

              [*v10 logEventPointChargingInfoWithChargingData:v187];
            }

            if ([MEMORY[0x277D3F1B8] hasInductiveCharging])
            {
              if ([*v10 shouldQueryForAccessory])
              {
                v190 = [*v10 workQueue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __22__PLBatteryAgent_init__block_invoke_3343;
                block[3] = &unk_279A5BDC0;
                v198 = *v10;
                dispatch_async(v190, block);
              }
            }

LABEL_131:
            return;
          }

          v124 = [v194 intValue];
          if (v124 == 1)
          {
            v125 = *v10;
            v126 = [v32 entryDate];
            v127 = v125;
            v128 = 1;
          }

          else
          {
            if ((v124 & 0xFFFFFFFD) != 0)
            {
              v126 = PLLogCommon();
              if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
              {
                __22__PLBatteryAgent_init__block_invoke_3292_cold_10();
              }

              goto LABEL_94;
            }

            v129 = *v10;
            v126 = [v32 entryDate];
            v127 = v129;
            v128 = 0;
          }

          [v127 updateIntervalForType:9 withState:v128 andTime:v126];
LABEL_94:

          goto LABEL_95;
        }

        v34 = PLLogCommon();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          __22__PLBatteryAgent_init__block_invoke_3292_cold_4();
        }
      }

      else
      {
        v34 = [MEMORY[0x277D3F180] objectForKey:@"overrideBatteryData"];
        if (v34)
        {
          v45 = [*v10 overrideBatteryData:v31 withPath:v34];

          v31 = v45;
        }

        v205[0] = MEMORY[0x277D85DD0];
        v205[1] = 3221225472;
        v205[2] = __22__PLBatteryAgent_init__block_invoke_3304;
        v205[3] = &unk_279A5C3F8;
        v206 = *v10;
        v31 = v31;
        v207 = v31;
        v46 = v205;
        if (kPLBatteryAgentStringUserType_block_invoke_once != -1)
        {
          dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_once, v46);
        }

        v47 = PLLogCommon();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          __22__PLBatteryAgent_init__block_invoke_3292_cold_3();
        }

        [*v10 setLifetimeDataLogged:1];
        if (+[PLUtilities deviceRebooted])
        {
          [*v10 logEventPointBatteryTrapInfo:v31];
        }

        [*v10 defaultDoubleForKey:@"AggdTimerBatteryConfig"];
        v49 = v48;
        v50 = objc_alloc(MEMORY[0x277D3F250]);
        v51 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:v49];
        v52 = [*v10 workQueue];
        v203[0] = MEMORY[0x277D85DD0];
        v203[1] = 3221225472;
        v203[2] = __22__PLBatteryAgent_init__block_invoke_3306;
        v203[3] = &unk_279A5D088;
        v204 = *v10;
        v53 = [v50 initWithFireDate:v51 withInterval:1 withTolerance:0 repeats:v52 withUserInfo:v203 withQueue:v49 withBlock:0.0];
        [*v10 setPeriodicAggdTimer:v53];
      }

      goto LABEL_36;
    }

    if (v17)
    {
      v35 = *v10;
      v36 = objc_opt_class();
      v196[0] = MEMORY[0x277D85DD0];
      v196[1] = 3221225472;
      v196[2] = __22__PLBatteryAgent_init__block_invoke_3352;
      v196[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v196[4] = v36;
      if (kPLBatteryAgentStringUserType_block_invoke_defaultOnce_3350 != -1)
      {
        dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_defaultOnce_3350, v196);
      }

      if (kPLBatteryAgentStringUserType_block_invoke_classDebugEnabled_3351 == 1)
      {
        v37 = MEMORY[0x277CCACA8];
        v38 = *v10;
        v39 = +[PLEventBackwardBatteryEntry entryKey];
        [v38 timeIntervalSinceLastLogForEntryKey:v39];
        v31 = [v37 stringWithFormat:@"kIOPMMessageBatteryStatusHasChanged ignored due to ratelimit %f", v40];

        v41 = MEMORY[0x277D3F178];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v43 = [v42 lastPathComponent];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent init]_block_invoke_2"];
        [v41 logMessage:v31 fromFile:v43 fromFunction:v44 fromLineNumber:3569];

        v32 = PLLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }

        goto LABEL_131;
      }
    }
  }
}

uint64_t __22__PLBatteryAgent_init__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"RateLimiterBattery"];
  kPLBatteryAgentStringUserType_block_invoke_objectForKey = v2;
  return result;
}

uint64_t __22__PLBatteryAgent_init__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_classDebugEnabled = result;
  return result;
}

uint64_t __22__PLBatteryAgent_init__block_invoke_3332(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"RateLimiterBatteryUI"];
  kPLBatteryAgentStringUserType_block_invoke_objectForKey_3331 = v2;
  return result;
}

uint64_t __22__PLBatteryAgent_init__block_invoke_3335(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_classDebugEnabled_3334 = result;
  return result;
}

void __22__PLBatteryAgent_init__block_invoke_3343(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __22__PLBatteryAgent_init__block_invoke_3343_cold_1();
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
    __22__PLBatteryAgent_init__block_invoke_3343_cold_2();
  }
}

uint64_t __22__PLBatteryAgent_init__block_invoke_3352(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_classDebugEnabled_3351 = result;
  return result;
}

uint64_t __22__PLBatteryAgent_init__block_invoke_2_3378(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_2 = result;
  return result;
}

- (void)dealloc
{
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
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

- (BOOL)hasAppleSmartBattery
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PLBatteryAgent_hasAppleSmartBattery__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  if (hasAppleSmartBattery_onceToken != -1)
  {
    dispatch_once(&hasAppleSmartBattery_onceToken, block);
  }

  return hasAppleSmartBattery_hasASM;
}

void __38__PLBatteryAgent_hasAppleSmartBattery__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) iokitPowerSource];
  v2 = IOObjectCopyClass([v1 service]);

  hasAppleSmartBattery_hasASM = [(__CFString *)v2 isEqualToString:@"AppleSmartBattery"];
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

+ (BOOL)hasChargingInfoLogging
{
  if (hasChargingInfoLogging_onceToken != -1)
  {
    +[PLBatteryAgent hasChargingInfoLogging];
  }

  return hasChargingInfoLogging_result;
}

uint64_t __40__PLBatteryAgent_hasChargingInfoLogging__block_invoke()
{
  hasChargingInfoLogging_result = 0;
  if ([MEMORY[0x277D3F208] isWatch] && (objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClassIsOneOf:", 200007, 200008, 200009, 200010, 0) & 1) == 0)
  {
    hasChargingInfoLogging_result = 1;
  }

  result = [MEMORY[0x277D3F1B8] hasWirelessCharger];
  if (result)
  {
    result = [MEMORY[0x277D3F208] isiOS];
    v1 = result | hasChargingInfoLogging_result;
  }

  else
  {
    v1 = 0;
  }

  hasChargingInfoLogging_result = v1 & 1;
  return result;
}

- (void)showOrHideTLCNotification:(BOOL)a3 meetsTLCNotificationConditions:(BOOL)a4
{
  v4 = a4;
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
        [PLBatteryAgent showOrHideTLCNotification:meetsTLCNotificationConditions:];
      }

      goto LABEL_34;
    }

    if (v11)
    {
      [PLBatteryAgent showOrHideTLCNotification:meetsTLCNotificationConditions:];
    }

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent showOrHideTLCNotification:meetsTLCNotificationConditions:];
    }

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"ShowTLCNotification"];
LABEL_13:
    AnalyticsSendEventLazy();
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent showOrHideTLCNotification:meetsTLCNotificationConditions:];
    }

    v14 = PLQueryRegistered();
    v10 = v14;
    if (v14 && ([v14 objectForKeyedSubscript:@"TLCNotificationState"], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryAgent showOrHideTLCNotification:meetsTLCNotificationConditions:];
      }

      v17 = [v10 objectForKeyedSubscript:@"TLCNotificationState"];
      v18 = PLLogCommon();
      v19 = v18;
      if (v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryAgent showOrHideTLCNotification:v17 meetsTLCNotificationConditions:?];
        }

        [(PLBatteryAgent *)self setIsTLCNotificationSurfaced:[v17 BOOLValue]];
        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryAgent showOrHideTLCNotification:v17 meetsTLCNotificationConditions:?];
        }

        [MEMORY[0x277D3F180] setObject:v17 forKey:@"kPLDefaultTLCNotificationSurfaced" saveToDisk:1];
        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryAgent showOrHideTLCNotification:meetsTLCNotificationConditions:];
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryAgent showOrHideTLCNotification:meetsTLCNotificationConditions:];
      }
    }

    else
    {
      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryAgent showOrHideTLCNotification:meetsTLCNotificationConditions:];
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
      [PLBatteryAgent showOrHideTLCNotification:meetsTLCNotificationConditions:];
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"ShowTLCNotification"];
    goto LABEL_13;
  }

LABEL_35:
}

- (void)setupEALoggingTriggeredByConnectionEvent:(BOOL)a3
{
  v3 = a3;
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
      if (setupEALoggingTriggeredByConnectionEvent__defaultOnce != -1)
      {
        dispatch_once(&setupEALoggingTriggeredByConnectionEvent__defaultOnce, block);
      }

      if (setupEALoggingTriggeredByConnectionEvent__classDebugEnabled == 1)
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
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    if (v3)
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryAgent setupEALoggingTriggeredByConnectionEvent:];
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
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_3447;
      v33[3] = &unk_279A5D088;
      v33[4] = self;
      v17 = [v14 initWithFireDate:v15 withInterval:1 withTolerance:0 repeats:v16 withUserInfo:v33 withQueue:20.0 withBlock:0.0];
      [(PLBatteryAgent *)self setEABatteryTimer:v17];

      [(PLOperator *)self defaultDoubleForKey:@"B244SBCInterval"];
      v19 = v18;
      v20 = MEMORY[0x277D3F1E0];
      v21 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:?];
      v22 = [(PLOperator *)self workQueue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_2;
      v32[3] = &unk_279A5D110;
      v32[4] = self;
      v23 = [v20 scheduledTimerWithMonotonicFireDate:v21 withInterval:v22 withQueue:v32 withBlock:v19];
      [(PLBatteryAgent *)self setSignificantBatteryChangeTimer:v23];
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v24 = objc_opt_class();
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_3;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v24;
      if (setupEALoggingTriggeredByConnectionEvent__defaultOnce_3457 != -1)
      {
        dispatch_once(&setupEALoggingTriggeredByConnectionEvent__defaultOnce_3457, v31);
      }

      if (setupEALoggingTriggeredByConnectionEvent__classDebugEnabled_3458 == 1)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"In Setup EA Logging: Done"];
        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v28 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent setupEALoggingTriggeredByConnectionEvent:]"];
        [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:3871];

        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setupEALoggingTriggeredByConnectionEvent__classDebugEnabled = result;
  return result;
}

void __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"entry";
  v2 = [MEMORY[0x277CBEB68] null];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [PLUtilities postNotificationName:@"PLBatteryAgent_EventBackward_Battery.filtered.Level_0_1.Level_7_1800.Level_8_300" object:v1 userInfo:v3];

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PLBatteryAgent_setupEALoggingTriggeredByConnectionEvent___block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setupEALoggingTriggeredByConnectionEvent__classDebugEnabled_3458 = result;
  return result;
}

- (void)cancelEALogging
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __33__PLBatteryAgent_cancelEALogging__block_invoke;
    v29 = &__block_descriptor_40_e5_v8__0lu32l8;
    v30 = v3;
    if (cancelEALogging_defaultOnce != -1)
    {
      dispatch_once(&cancelEALogging_defaultOnce, &block);
    }

    if (cancelEALogging_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __33__PLBatteryAgent_cancelEALogging__block_invoke_3467;
      v24 = &__block_descriptor_40_e5_v8__0lu32l8;
      v25 = v11;
      if (cancelEALogging_defaultOnce_3465 != -1)
      {
        dispatch_once(&cancelEALogging_defaultOnce_3465, &v21);
      }

      if (cancelEALogging_classDebugEnabled_3466 == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"In Cancel EA Logging: Cancelled timer", v21, v22, v23, v24, v25];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent cancelEALogging]"];
        [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:3881];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    v18 = [(PLBatteryAgent *)self EABatteryTimer:v21];
    [v18 setTimerActive:0];

    v19 = [(PLBatteryAgent *)self EABatteryTimer];
    [v19 invalidate];

    [(PLBatteryAgent *)self setEABatteryTimer:0];
    v20 = [(PLBatteryAgent *)self significantBatteryChangeTimer];
    [v20 cancel];

    [(PLBatteryAgent *)self setLastkIOPSAppleBatteryCaseCumulativeCurrentKey:0];
  }
}

uint64_t __33__PLBatteryAgent_cancelEALogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  cancelEALogging_classDebugEnabled = result;
  return result;
}

uint64_t __33__PLBatteryAgent_cancelEALogging__block_invoke_3467(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  cancelEALogging_classDebugEnabled_3466 = result;
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
    v6[3] = &unk_279A5C3F8;
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
    v6[3] = &unk_279A5C3F8;
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
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "[BATTERY] EA connected!", v4, 2u);
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
    block[3] = &unk_279A5BDC0;
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
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "[EABattery]: accessory connect", v4, 2u);
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
    block[3] = &unk_279A5BDC0;
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
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "[EABattery]: accessory disconnect", v4, 2u);
  }

  return [*(a1 + 32) setShouldQueryForAccessory:0];
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
    if (getIOPSDevices_defaultOnce != -1)
    {
      dispatch_once(&getIOPSDevices_defaultOnce, v40);
    }

    if (getIOPSDevices_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
              block[2] = __32__PLBatteryAgent_getIOPSDevices__block_invoke_3476;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v20;
              if (getIOPSDevices_defaultOnce_3474 != -1)
              {
                dispatch_once(&getIOPSDevices_defaultOnce_3474, block);
              }

              if (getIOPSDevices_classDebugEnabled_3475 == 1)
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
                  _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
    v38[2] = __32__PLBatteryAgent_getIOPSDevices__block_invoke_3482;
    v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v38[4] = v27;
    if (getIOPSDevices_defaultOnce_3480 != -1)
    {
      dispatch_once(&getIOPSDevices_defaultOnce_3480, v38);
    }

    if (getIOPSDevices_classDebugEnabled_3481 == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

LABEL_32:
  v34 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t __32__PLBatteryAgent_getIOPSDevices__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getIOPSDevices_classDebugEnabled = result;
  return result;
}

uint64_t __32__PLBatteryAgent_getIOPSDevices__block_invoke_3476(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getIOPSDevices_classDebugEnabled_3475 = result;
  return result;
}

uint64_t __32__PLBatteryAgent_getIOPSDevices__block_invoke_3482(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getIOPSDevices_classDebugEnabled_3481 = result;
  return result;
}

- (id)getBaseIdentifierFromDevice:(id)a3
{
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
      if (getBaseIdentifierFromDevice__defaultOnce != -1)
      {
        dispatch_once(&getBaseIdentifierFromDevice__defaultOnce, block);
      }

      if (getBaseIdentifierFromDevice__classDebugEnabled == 1)
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
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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

  return v17;
}

uint64_t __46__PLBatteryAgent_getBaseIdentifierFromDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBaseIdentifierFromDevice__classDebugEnabled = result;
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
            _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "EALevel: %f / %d", buf, 0x12u);
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
  [v6 addObjectsFromArray:&unk_28714E678];
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
        v18 = 3221225472;
        v19 = __37__PLBatteryAgent_logEABatteryConfig___block_invoke;
        v20 = &__block_descriptor_40_e5_v8__0lu32l8;
        v21 = v6;
        if (logEABatteryConfig__defaultOnce != -1)
        {
          dispatch_once(&logEABatteryConfig__defaultOnce, &block);
        }

        if (logEABatteryConfig__classDebugEnabled == 1)
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"The payload is %@", v4, block, v18, v19, v20, v21];
          v8 = MEMORY[0x277D3F178];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v10 = [v9 lastPathComponent];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEABatteryConfig:]"];
          [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:4105];

          v12 = PLLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
}

uint64_t __37__PLBatteryAgent_logEABatteryConfig___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEABatteryConfig__classDebugEnabled = result;
  return result;
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

- (void)logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBatteryAgent *)self setLastEABatteryConnectedTime:v5];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryAgent logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:];
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
      [PLBatteryAgent logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:];
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
      [PLBatteryAgent logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:];
    }

    MEMORY[0x25F8D18D0](@"com.apple.powerlog.EABattery.connected", 1);
    AnalyticsSendEventLazy();
    goto LABEL_20;
  }

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryAgent logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:];
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
      [PLBatteryAgent logEABatteryConnectedTimeToAnalyticsWithEAConnectionState:];
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
        [PLBatteryAgent logEABatteryConnectedTimeToAnalyticsWithEAConnectionState:];
      }

      MEMORY[0x25F8D18D0](@"com.apple.powerlog.EABattery.connectedTime", v10);
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
  v9[3] = &unk_279A5D088;
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
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2;
    block[3] = &unk_279A5E8C8;
    v25 = @"GasGauge";
    v26 = v3;
    if (kPLBatteryAgentStringUserType_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_2_defaultOnce, block);
    }

    v4 = kPLBatteryAgentStringUserType_block_invoke_2_classDebugEnabled;

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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) setAllowGasGaugeRead:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3554;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v11;
    if (kPLBatteryAgentStringUserType_block_invoke_2_defaultOnce_3552 != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_2_defaultOnce_3552, &v19);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_2_classDebugEnabled_3553 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ signaling done", *(a1 + 32), v19, v20, v21, v22, v23];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke_2"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:4314];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v18 = [*(a1 + 32) canSleepSemaphore];
  [v18 signalDoneByObject:*(a1 + 32)];
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_2_classDebugEnabled = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3554(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_2_classDebugEnabled_3553 = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3560(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3561;
    v15 = &unk_279A5E8C8;
    v16 = @"GasGauge";
    v17 = v3;
    if (kPLBatteryAgentStringUserType_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_3_defaultOnce, &v12);
    }

    v4 = kPLBatteryAgentStringUserType_block_invoke_3_classDebugEnabled;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Opening GasGauge reads", v12, v13, v14, v15];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:4318];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  return [*(a1 + 32) setAllowGasGaugeRead:{1, v12, v13, v14, v15}];
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3561(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_3_classDebugEnabled = result;
  return result;
}

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3576()
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

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3606(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
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
    _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEFAULT, "BUIVisits=%@, totalLogDuration=%f", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy__16;
  v34 = __Block_byref_object_dispose__16;
  v35 = objc_opt_new();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3609;
  v27[3] = &unk_279A5CBB0;
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

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3609(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [a2 dictionary];
  v5 = [v3 dictionaryWithDictionary:v4];

  [v5 addEntriesFromDictionary:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3621(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  v34 = __Block_byref_object_copy__16;
  v35 = __Block_byref_object_dispose__16;
  v36 = objc_opt_new();
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__16;
  v29 = __Block_byref_object_dispose__16;
  v30 = objc_opt_new();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3;
  v24[3] = &unk_279A5E960;
  v24[4] = &v25;
  [v13 enumerateObjectsUsingBlock:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_4;
  v23[3] = &unk_279A5E960;
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

id __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3669(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "[BatteryQueryForChargingState] Received query with payload=%@!", buf, 0xCu);
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
          __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3669_cold_1();
        }

        v15 = 0;
      }
    }

    else
    {
      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3669_cold_2();
      }

      v15 = 0;
    }
  }

  else
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3669_cold_3();
    }

    v15 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3686(uint64_t a1, uint64_t a2, int a3)
{
  if ([MEMORY[0x277D3F208] isiPad])
  {
    if ((a3 + 469794800) >= 2)
    {
      if (a3 == -469794798)
      {
        goto LABEL_11;
      }

      if (a3 != -536870608)
      {
        return;
      }
    }

    v6 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2];
    if (!v6)
    {
LABEL_25:

      return;
    }

    v29 = v6;
    v7 = [v6 objectForKeyedSubscript:@"IOAccessoryPrimaryDevicePort"];
    v8 = [v7 intValue];

    if (v8 == 257)
    {
      v9 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"EAPencilCharging"];
      v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:v29];
      v11 = [v29 objectForKeyedSubscript:@"IOAccessoryID"];
      v12 = [v11 intValue];

      v13 = [MEMORY[0x277CCABB0] numberWithInt:v12 == 71];
      [v10 setObject:v13 forKeyedSubscript:@"Pencil"];

      [*(a1 + 32) logEntry:v10];
LABEL_24:

      v6 = v29;
      goto LABEL_25;
    }
  }

  if (a3 == -469794799)
  {
    if ([*(a1 + 32) priIOAccessoryPowerMode] == 1)
    {
      return;
    }

    v29 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LightningConnectorStatus"];
    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v29];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v9 setObject:v27 forKeyedSubscript:@"IOAccessoryPowerMode"];

    [*(a1 + 32) logEntry:v9];
    v28 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v28 setPriIOAccessoryPowerMode:{objc_msgSend(v10, "intValue")}];
    goto LABEL_24;
  }

  if (a3 != -469794798)
  {
    return;
  }

LABEL_11:
  v14 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2];
  v15 = [v14 objectForKeyedSubscript:@"IOAccessoryActivePowerMode"];
  v16 = [v15 intValue];
  if (v16 != [*(a1 + 32) priIOAccessoryPowerMode])
  {
    v17 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LightningConnectorStatus"];
    v18 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v17];
    [v18 setObject:v15 forKeyedSubscript:@"IOAccessoryPowerMode"];
    [*(a1 + 32) logEntry:v18];
    [*(a1 + 32) setPriIOAccessoryPowerMode:{objc_msgSend(v15, "intValue")}];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3693;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v20;
      if (kPLBatteryAgentStringUserType_block_invoke_4_defaultOnce != -1)
      {
        dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_4_defaultOnce, block);
      }

      if (kPLBatteryAgentStringUserType_block_invoke_4_classDebugEnabled == 1)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"IOAccessoryPowerMode: %d", objc_msgSend(*(a1 + 32), "priIOAccessoryPowerMode")];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v24 = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
        [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:4539];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3693(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_4_classDebugEnabled = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3697(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled_2 = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3701(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3701_cold_1();
  }

  return [*(a1 + 32) handleSBC];
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3709(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3710;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v8;
    if (kPLBatteryAgentStringUserType_block_invoke_5_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_5_defaultOnce, &block);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_5_classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPOStepper Callback %@", v6, block, v16, v17, v18, v19];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:4579];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logEventForwardUPOStepperWithPayload:v6];
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3710(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_5_classDebugEnabled = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3720(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled_3719 = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3728(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled_3727 = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3731(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled_3730 = result;
  return result;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3738(uint64_t a1, uint64_t a2, int a3)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3739;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v6;
    if (kPLBatteryAgentStringUserType_block_invoke_6_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_6_defaultOnce, &block);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_6_classDebugEnabled == 1)
    {
      v7 = "NOT ";
      if (a3 == -528318208)
      {
        v7 = "";
      }

      v8 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Message recieved from ApplePPM (messageType = %skIOApplePPMMessagePowerlogTrigger"), v7, block, v15, v16, v17, v18;
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initOperatorDependancies]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:4615];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  if (a3 == -528318208)
  {
    [*(a1 + 32) handlePPMCallback];
  }
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3739(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_6_classDebugEnabled = result;
  return result;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3745(uint64_t a1)
{
  [*(a1 + 32) setPpmEventLoggingCount:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3746;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (kPLBatteryAgentStringUserType_block_invoke_7_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_7_defaultOnce, block);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_7_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

uint64_t __42__PLBatteryAgent_initOperatorDependancies__block_invoke_2_3746(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_7_classDebugEnabled = result;
  return result;
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3759(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3759_cold_1();
  }

  [*(a1 + 32) logEventForwardMobileChargeMode:v6];
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3764(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3764_cold_1();
  }
}

+ (BOOL)shouldLogBTM
{
  if (shouldLogBTM_onceToken != -1)
  {
    +[PLBatteryAgent shouldLogBTM];
  }

  return shouldLogBTM__supportedTarget;
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

  shouldLogBTM__supportedTarget = v1;
  return result;
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

- (void)handlePPMCallback
{
  if (+[PLBatteryAgent shouldLogCPMS])
  {

    [(PLBatteryAgent *)self logCPMSSnapshotWithTrigger:1];
  }
}

- (void)handleBDCAMALogging:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
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
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEFAULT, "[BDC_AMA] StartTimestamp = %f StartDate = %@ StartDateMonotonic = %@", buf, 0x20u);
    }

    v15 = [v13 sortedArrayUsingComparator:&__block_literal_global_3844];
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent handleBDCAMALogging:v15];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __38__PLBatteryAgent_handleBDCAMALogging___block_invoke_3845;
    v19[3] = &unk_279A5CB88;
    v20 = v11;
    v21 = self;
    v22 = v5;
    v17 = v11;
    [v15 enumerateObjectsUsingBlock:v19];
  }

  else
  {
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryAgent handleBDCAMALogging:];
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
    v9[3] = &unk_279A5FAD0;
    v10 = v5;
    v11 = self;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryAgent handleOnDeviceACAMSBC:];
    }
  }
}

void __40__PLBatteryAgent_handleOnDeviceACAMSBC___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = MEMORY[0x277CBEAA8];
  v5 = [v3 objectForKeyedSubscript:@"timeSinceLastSBC"];
  [v5 doubleValue];
  v6 = [v4 dateWithTimeIntervalSince1970:?];

  v7 = [v6 convertFromSystemToMonotonic];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __40__PLBatteryAgent_handleOnDeviceACAMSBC___block_invoke_2_cold_1();
  }

  [*(a1 + 40) logForSubsystem:@"BatteryIntelligence" category:@"OnDeviceACAMSBC" data:v3 date:v7];
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
      v8[3] = &unk_279A5C3F8;
      v8[4] = self;
      v9 = v6;
      dispatch_async(v7, v8);
    }
  }
}

void __31__PLBatteryAgent_fakeLogEntry___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __31__PLBatteryAgent_fakeLogEntry___block_invoke_2;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v4;
    if (kPLBatteryAgentStringUserType_block_invoke_8_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_8_defaultOnce, &block);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_8_classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"logging fake entry=%@", *(a1 + 40), block, v12, v13, v14, v15];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent fakeLogEntry:]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:4919];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logEntry:*(a1 + 40)];
  objc_autoreleasePoolPop(v2);
}

uint64_t __31__PLBatteryAgent_fakeLogEntry___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_8_classDebugEnabled = result;
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
  [v6 setObject:&unk_287147488 forKeyedSubscript:@"Visit"];
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
  [v6 setObject:&unk_287147488 forKeyedSubscript:@"Visit"];
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
  [v3 setObject:&unk_2871474A0 forKeyedSubscript:@"Visit"];
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
  [v3 setObject:&unk_2871474B8 forKeyedSubscript:@"Visit"];
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
  [v3 setObject:&unk_2871474D0 forKeyedSubscript:@"Visit"];
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
  [v3 setObject:&unk_2871474E8 forKeyedSubscript:@"Visit"];
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
  v28[3] = &unk_279A5FAF8;
  v28[4] = &v61;
  v28[5] = &v49;
  v28[6] = &v37;
  v23 = v9;
  [v9 enumerateObjectsUsingBlock:v28];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __100__PLBatteryAgent_aggregateBUIVisitData_withBUIVisitsToday_andBUIVisitsLastHour_andTotalLogDuration___block_invoke_2;
  v27[3] = &unk_279A5FAF8;
  v27[4] = &v57;
  v27[5] = &v45;
  v27[6] = &v33;
  [v25 enumerateObjectsUsingBlock:v27];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__PLBatteryAgent_aggregateBUIVisitData_withBUIVisitsToday_andBUIVisitsLastHour_andTotalLogDuration___block_invoke_3;
  v26[3] = &unk_279A5FAF8;
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
      block[3] = &unk_279A5E8C8;
      v28 = @"GasGauge";
      v29 = v5;
      if (logEventIntervalGasGauge_defaultOnce != -1)
      {
        dispatch_once(&logEventIntervalGasGauge_defaultOnce, block);
      }

      v6 = logEventIntervalGasGauge_classDebugEnabled;

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
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    [(PLBatteryAgent *)self gasGaugeRead];
  }

  else if (v4)
  {
    v13 = objc_opt_class();
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __42__PLBatteryAgent_logEventIntervalGasGauge__block_invoke_4051;
    v24 = &unk_279A5E8C8;
    v25 = @"GasGauge";
    v26 = v13;
    if (logEventIntervalGasGauge_defaultOnce_4049 != -1)
    {
      dispatch_once(&logEventIntervalGasGauge_defaultOnce_4049, &v21);
    }

    v14 = logEventIntervalGasGauge_classDebugEnabled_4050;

    if (v14 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"no reading the GasGauge allowed!", v21, v22, v23, v24];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventIntervalGasGauge]"];
      [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:5236];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

uint64_t __42__PLBatteryAgent_logEventIntervalGasGauge__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  logEventIntervalGasGauge_classDebugEnabled = result;
  return result;
}

uint64_t __42__PLBatteryAgent_logEventIntervalGasGauge__block_invoke_4051(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  logEventIntervalGasGauge_classDebugEnabled_4050 = result;
  return result;
}

- (void)logEventPointChargingInfoWithChargingData:(id)a3
{
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
      v62 = 3221225472;
      v63 = __60__PLBatteryAgent_logEventPointChargingInfoWithChargingData___block_invoke;
      v64 = &__block_descriptor_40_e5_v8__0lu32l8;
      v65 = v50;
      if (logEventPointChargingInfoWithChargingData__defaultOnce != -1)
      {
        dispatch_once(&logEventPointChargingInfoWithChargingData__defaultOnce, &block);
      }

      if (logEventPointChargingInfoWithChargingData__classDebugEnabled == 1)
      {
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Charging Data: %@", v4, block, v62, v63, v64, v65];
        v52 = MEMORY[0x277D3F178];
        v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v54 = [v53 lastPathComponent];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventPointChargingInfoWithChargingData:]"];
        [v52 logMessage:v51 fromFile:v54 fromFunction:v55 fromLineNumber:5289];

        v56 = PLLogCommon();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
}

uint64_t __60__PLBatteryAgent_logEventPointChargingInfoWithChargingData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointChargingInfoWithChargingData__classDebugEnabled = result;
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

      MEMORY[0x25F8D18F0](v10, v13);
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v8 setObject:v14 forKeyedSubscript:@"Frequency"];
    }

    v15 = [v4 objectForKeyedSubscript:@"RectifierCurrent"];

    if (v15)
    {
      v16 = [v4 objectForKeyedSubscript:@"RectifierCurrent"];
      [v16 doubleValue];
      v18 = v17;

      MEMORY[0x25F8D18F0](v7, v18);
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
      [v8 setObject:v19 forKeyedSubscript:@"RectifierCurrent"];
    }

    v20 = [v4 objectForKeyedSubscript:@"RectifierVoltage"];

    if (v20)
    {
      v21 = [v4 objectForKeyedSubscript:@"RectifierVoltage"];
      [v21 doubleValue];
      v23 = v22;

      MEMORY[0x25F8D18F0](v6, v23);
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
      MEMORY[0x25F8D18F0](@"com.apple.power.state.penaltybox");
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
  [v2 setObject:&unk_287147500 forKeyedSubscript:@"State"];
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
        MEMORY[0x25F8D18F0](@"com.apple.power.state.f.penaltybox", a2, a3);
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

    MEMORY[0x25F8D18F0](@"com.apple.power.state.e.penaltybox", a2, a3);
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
  MEMORY[0x25F8D18F0](v5, a2, a3);
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
      MEMORY[0x25F8D18F0]([MEMORY[0x277CCACA8] stringWithFormat:v4], a3);
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
  v4 = a3;
  v5 = PLLogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent logEventForwardCalibration0withData:];
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
    [PLBatteryAgent logEventForwardCalibration0withData:];
  }
}

- (void)logEventForwardCalibration0InfowithData:(id)a3
{
  v4 = a3;
  v5 = PLLogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent logEventForwardCalibration0InfowithData:];
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
    [PLBatteryAgent logEventForwardCalibration0InfowithData:];
  }
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
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryAgent createFixedChargingIntervals:?];
  }

  if (![MEMORY[0x277D3F1B8] hasFixedChargingLimit])
  {
    if ([(PLBatteryAgent *)self fixedChargingEngaged])
    {
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryAgent createFixedChargingIntervals:];
      }
    }

    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent createFixedChargingIntervals:];
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
        [PLBatteryAgent createFixedChargingIntervals:];
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
        [PLBatteryAgent createFixedChargingIntervals:];
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
    [PLBatteryAgent createFixedChargingIntervals:];
  }

  v7 = [v4 entryDate];
  [(PLBatteryAgent *)self updateIntervalForType:2 withState:0 andTime:v7];

  v8 = [v4 entryDate];
  v9 = [v4 objectForKeyedSubscript:@"chargeLimitTargetSoC"];
  [(PLBatteryAgent *)self updateIntervalForType:8 withState:1 andTime:v8 selectedChargedLimit:v9];

LABEL_25:
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
      [v6 setObject:&unk_2871473B0 forKeyedSubscript:@"decisionTime"];
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
        [v6 setObject:&unk_2871473B0 forKeyedSubscript:@"engagementProbability"];
      }
    }

    else
    {
      [v6 setObject:&unk_2871473B0 forKeyedSubscript:@"engagementProbability"];
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
        [v6 setObject:&unk_2871473B0 forKeyedSubscript:@"durationPrediction"];
      }
    }

    else
    {
      [v6 setObject:&unk_2871473B0 forKeyedSubscript:@"durationPrediction"];
    }

    v25 = [v4 objectForKeyedSubscript:@"state"];
    [v6 setObject:v25 forKeyedSubscript:@"state"];

    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEFAULT, "Logging smart charging", &v38, 2u);
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
      _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_INFO, "Smart Charging State: %d", &v38, 8u);
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
      _os_log_impl(&dword_25EE51000, v32, OS_LOG_TYPE_INFO, "Fixed limit enum: %d", &v38, 8u);
    }

    v35 = PLLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [(PLBatteryAgent *)self fixedChargingEngaged];
      v38 = 67109120;
      v39 = v36;
      _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_INFO, "Fixed limit State: %d", &v38, 8u);
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
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEFAULT, "Logging clean charging", v12, 2u);
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
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)dateNoEarlierThan:(unint64_t)a3 since:(id)a4 withDelta:(id)a5
{
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
      [PLBatteryAgent dateNoEarlierThan:since:withDelta:];
    }

    v12 = [v7 dateByAddingTimeInterval:-v10];
  }

  v13 = v12;

  return v13;
}

- (void)logEventBackwardHeatMap
{
  v3 = [(PLOperator *)self workQueue];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke;
  block[8] = &unk_279A5C228;
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
    if (logEventBackwardHeatMap_defaultOnce != -1)
    {
      dispatch_once(&logEventBackwardHeatMap_defaultOnce, block);
    }

    if (logEventBackwardHeatMap_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v12 = [(PLOperator *)self workQueue];
  v31[5] = MEMORY[0x277D85DD0];
  v31[6] = 3221225472;
  v31[7] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_4180;
  v31[8] = &unk_279A5C228;
  v31[9] = self;
  v13 = IOPMCopyBatteryHeatMap();

  if (v13 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2_4183;
    v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v31[4] = v14;
    if (logEventBackwardHeatMap_defaultOnce_4181 != -1)
    {
      dispatch_once(&logEventBackwardHeatMap_defaultOnce_4181, v31);
    }

    if (logEventBackwardHeatMap_classDebugEnabled_4182 == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v21 = [(PLOperator *)self workQueue];
  v30[5] = MEMORY[0x277D85DD0];
  v30[6] = 3221225472;
  v30[7] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_4187;
  v30[8] = &unk_279A5C228;
  v30[9] = self;
  v22 = IOPMCopyBatteryHeatMap();

  if (v22 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v23 = objc_opt_class();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2_4190;
    v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v30[4] = v23;
    if (logEventBackwardHeatMap_defaultOnce_4188 != -1)
    {
      dispatch_once(&logEventBackwardHeatMap_defaultOnce_4188, v30);
    }

    if (logEventBackwardHeatMap_classDebugEnabled_4189 == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

void __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) logEventBackwardHeatMapCallback:a2 andHeatMapType:0];
}

uint64_t __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardHeatMap_classDebugEnabled = result;
  return result;
}

void __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_4180(uint64_t a1, void *a2)
{
  [*(a1 + 32) logEventBackwardHeatMapCallback:a2 andHeatMapType:1];
}

uint64_t __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2_4183(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardHeatMap_classDebugEnabled_4182 = result;
  return result;
}

void __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_4187(uint64_t a1, void *a2)
{
  [*(a1 + 32) logEventBackwardHeatMapCallback:a2 andHeatMapType:2];
}

uint64_t __41__PLBatteryAgent_logEventBackwardHeatMap__block_invoke_2_4190(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardHeatMap_classDebugEnabled_4189 = result;
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

    v10 = &unk_28714E6D8;
    if (v9 == 1)
    {
      v10 = &unk_28714E6C0;
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
      v47 = off_279A5FCE0[a4];
      v44 = off_279A5FCF8[a4];
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
          v19 = [&unk_28714E690 indexOfObject:v18];
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
                block[3] = &unk_279A5EA80;
                v52 = @"forceLogBatteryHeatmap";
                v53 = 0;
                if (logEventBackwardHeatMapCallback_andHeatMapType__defaultOnce != -1)
                {
                  dispatch_once(&logEventBackwardHeatMapCallback_andHeatMapType__defaultOnce, block);
                }

                v25 = logEventBackwardHeatMapCallback_andHeatMapType__objectForKey;

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
                  _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, "Sending CA event %@ with field %@", buf, 0x16u);
                }

                AnalyticsSendEventLazy();
                v33 = MEMORY[0x277CCACA8];
                v34 = [&unk_28714E6A8 objectAtIndexedSubscript:v20];
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
  logEventBackwardHeatMapCallback_andHeatMapType__objectForKey = result;
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
  v3 = [(PLOperator *)self workQueue];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __43__PLBatteryAgent_logEventBackwardKioskMode__block_invoke;
  block[8] = &unk_279A5C228;
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
    if (logEventBackwardKioskMode_defaultOnce != -1)
    {
      dispatch_once(&logEventBackwardKioskMode_defaultOnce, block);
    }

    if (logEventBackwardKioskMode_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

void __43__PLBatteryAgent_logEventBackwardKioskMode__block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) logEventBackwardKioskModeCallback:a2];
}

uint64_t __43__PLBatteryAgent_logEventBackwardKioskMode__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardKioskMode_classDebugEnabled = result;
  return result;
}

- (void)logEventBackwardKioskModeCallback:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"batteryKioskModeData"];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __52__PLBatteryAgent_logEventBackwardKioskModeCallback___block_invoke;
      v17 = &__block_descriptor_40_e5_v8__0lu32l8;
      v18 = v5;
      if (logEventBackwardKioskModeCallback__defaultOnce != -1)
      {
        dispatch_once(&logEventBackwardKioskModeCallback__defaultOnce, &block);
      }

      if (logEventBackwardKioskModeCallback__classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Kiosk Mode callback: %@", v4, block, v15, v16, v17, v18];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventBackwardKioskModeCallback:]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:6015];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
}

uint64_t __52__PLBatteryAgent_logEventBackwardKioskModeCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardKioskModeCallback__classDebugEnabled = result;
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

          v17 = [MEMORY[0x277CCABB0] numberWithBool:{v15, v127}];
          [v5 setObject:v17 forKeyedSubscript:@"LifetimeMaxRa0-8Updated"];
        }
      }
    }
  }

  v18 = [v5 objectForKeyedSubscript:{@"ChemicalWeightedRa", v127}];
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
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __53__PLBatteryAgent_logEventBackwardBatteryWithRawData___block_invoke;
      v131[3] = &unk_279A5FB70;
      v131[4] = self;
      v86 = v85;
      v132 = v86;
      [v83 enumerateKeysAndObjectsUsingBlock:v131];
      if ([v86 count])
      {
        v130 = v86;
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

      v129 = v5;
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
      MEMORY[0x25F8D18D0](@"com.apple.power.battery.GaugeResetCounter", v103);
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
        MEMORY[0x25F8D18D0](@"com.apple.power.battery.DOD0Updated", 1);
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
        [PLBatteryAgent logEventBackwardBatteryWithRawData:];
      }

      [v5 setObject:&unk_287147410 forKeyedSubscript:@"CurrentSenseMonitorStatus"];
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

      MEMORY[0x25F8D18D0]([MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.power.battery.ITMiscStatus.%@.count", v13], v11);
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
  [v0 setObject:&unk_287147410 forKeyedSubscript:@"DOD0Count"];

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
  if (IOPSGaugingMitigationGetState())
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryAgent getGaugingMitigationDict];
    }

    v3 = 0;
  }

  else
  {
    v3 = 0;
    CFRelease(v3);
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent getGaugingMitigationDict];
    }
  }

  return v3;
}

- (void)logEventBackwardChargingLimit
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 dictionary];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getIconographyStateDict
{
  if (IOPSCopyChargeStatus())
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryAgent getIconographyStateDict];
    }

    v3 = 0;
  }

  else
  {
    v3 = 0;
    CFRelease(v3);
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent getIconographyStateDict];
    }
  }

  return v3;
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
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 dictionary];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
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
  v27 = __Block_byref_object_copy__16;
  v28 = __Block_byref_object_dispose__16;
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
      v22[3] = __Block_byref_object_copy__16;
      v22[4] = __Block_byref_object_dispose__16;
      v23 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __35__PLBatteryAgent_lowBatteryLogPath__block_invoke;
      v16[3] = &unk_279A5FB98;
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
    v6 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"Battery" andSubGroup:0 withChannelIDs:&unk_28714E6F0];
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
        if (isOriginalBattery_defaultOnce != -1)
        {
          dispatch_once(&isOriginalBattery_defaultOnce, block);
        }

        if (isOriginalBattery_classDebugEnabled == 1)
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
            __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
          }
        }
      }

      v4 = 0;
    }
  }

  return v4;
}

uint64_t __35__PLBatteryAgent_isOriginalBattery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  isOriginalBattery_classDebugEnabled = result;
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
  v19[24] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18[0] = &unk_287147530;
  v18[1] = &unk_287147560;
  v19[0] = &unk_287147548;
  v19[1] = &unk_287147578;
  v18[2] = &unk_287147590;
  v18[3] = &unk_2871475C0;
  v19[2] = &unk_2871475A8;
  v19[3] = &unk_2871475D8;
  v18[4] = &unk_2871475F0;
  v18[5] = &unk_287147620;
  v19[4] = &unk_287147608;
  v19[5] = &unk_287147638;
  v18[6] = &unk_287147650;
  v18[7] = &unk_287147680;
  v19[6] = &unk_287147668;
  v19[7] = &unk_287147698;
  v18[8] = &unk_2871476B0;
  v18[9] = &unk_2871476E0;
  v19[8] = &unk_2871476C8;
  v19[9] = &unk_2871476F8;
  v18[10] = &unk_287147710;
  v18[11] = &unk_287147740;
  v19[10] = &unk_287147728;
  v19[11] = &unk_287147758;
  v18[12] = &unk_287147770;
  v18[13] = &unk_2871477A0;
  v19[12] = &unk_287147788;
  v19[13] = &unk_2871477B8;
  v18[14] = &unk_2871477D0;
  v18[15] = &unk_287147800;
  v19[14] = &unk_2871477E8;
  v19[15] = &unk_287147818;
  v18[16] = &unk_287147830;
  v18[17] = &unk_287147860;
  v19[16] = &unk_287147848;
  v19[17] = &unk_287147878;
  v18[18] = &unk_287147890;
  v18[19] = &unk_2871478C0;
  v19[18] = &unk_2871478A8;
  v19[19] = &unk_2871478D8;
  v18[20] = &unk_2871478F0;
  v18[21] = &unk_287147920;
  v19[20] = &unk_287147908;
  v19[21] = &unk_287147938;
  v18[22] = &unk_287147950;
  v18[23] = &unk_287147980;
  v19[22] = &unk_287147968;
  v19[23] = &unk_287147998;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:24];
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
    [PLBatteryAgent customConvertBase34ToBase10:];
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
    v13 = &unk_2871473B0;
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
    v7 = &stru_287103958;
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
        v8 = (v7 + 1);
        v9 = (v6 >> 1) - 1;
        do
        {
          v10 = *(v8 - 1);
          v11 = objc_alloc(MEMORY[0x277CCABB0]);
          v12 = *v8;
          v8 += 2;
          v13 = [v11 initWithUnsignedLong:v12 | (v10 << 8)];
          [v4 addObject:v13];

          --v9;
        }

        while (v9);
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

  return v11;
}

- (id)parseLowVoltageResidencyCounters:(id)a3
{
  v3 = a3;
  v12 = [MEMORY[0x277CBEB38] dictionary];
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
        v9 = [MEMORY[0x277CCABB0] numberWithLong:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", *(v6 + 4 * v7), 2)}];
        [v12 setObject:v9 forKeyedSubscript:v8];

        ++v7;
      }

      while (v4 >> 2 != v7);
    }
  }

  if ([v12 count])
  {
    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)parseFlashWearLevelData:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v3)
  {
    v5 = [v3 length];
    v6 = [v3 bytes];
    v7 = [&unk_28714E708 count];
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
          v18 = i;
          v19 = 1024;
          v20 = v13;
          _os_log_debug_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEBUG, "flashWearLevelData %d: %u", buf, 0xEu);
        }

        v11 = [&unk_28714E708 objectAtIndexedSubscript:i];
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
  v7[3] = &unk_279A5E3E0;
  v6 = v5;
  v8 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  if ([v6 count])
  {
    MEMORY[0x25F8D18E0](0, v6);
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
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "Pushing FlashWearLevelData to CA - factory:%@ usr:%@ log:%@ bdc:%@", buf, 0x2Au);
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
  +[PLUtilities containerPath];
  _CFPreferencesSetValueWithContainer();
  v7 = +[PLUtilities containerPath];

  MEMORY[0x2821102A0](@"com.apple.powerlogd", v7);
}

- (id)getMitigatedUPOCountDefault
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
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
        [PLBatteryAgent setAggdIntegerValueFromEntry:forKey:withPrefix:];
      }

      [v9 integerValue];
      ADClientSetValueForScalarKey();
    }
  }
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
    MEMORY[0x25F8D18D0](@"com.apple.power.batteryshutdown.Count", 1);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    MEMORY[0x25F8D18D0](@"com.apple.power.batteryshutdown.Count", 1);
  }

  v7 = [v4 objectForKeyedSubscript:@"UISOC"];
  v8 = [v7 intValue];

  if (v8 >= 11)
  {
    MEMORY[0x25F8D18D0](@"com.apple.power.batteryshutdown.UPOCount", 1);
    [v25 setObject:&unk_287147410 forKeyedSubscript:@"UPOCount"];
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
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__PLBatteryAgent_aggdTimerFired__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (aggdTimerFired_defaultOnce != -1)
    {
      dispatch_once(&aggdTimerFired_defaultOnce, block);
    }

    if (aggdTimerFired_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
        v15 = v14;
        AnalyticsSendEventLazy();
      }
    }
  }
}

uint64_t __32__PLBatteryAgent_aggdTimerFired__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  aggdTimerFired_classDebugEnabled = result;
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
    [PLBatteryAgent logBatteryConfigToCA:];
  }

  if (v3)
  {
    v27 = v3;
    v5 = [v3 definedKeys];
    v6 = [v5 mutableCopy];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent logBatteryConfigToCA:];
    }

    v25 = objc_opt_new();
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent logBatteryConfigToCA:];
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
            _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "In logBatteryConfigtoCA. Adding key %@", buf, 0xCu);
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
      [PLBatteryAgent logBatteryConfigToCA:];
    }

    v21 = v25;
    AnalyticsSendEventLazy();
    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEFAULT, "In logBatteryConfigtoCA. Sent to CA", buf, 2u);
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
  v13[3] = &unk_279A5D6D8;
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
  v11[3] = &unk_279A5E3E0;
  v10 = v7;
  v12 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
  if ([v10 count])
  {
    MEMORY[0x25F8D18E0](0, v10);
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
          _os_log_debug_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEBUG, "In logBaselinetoCA. Adding key %@", buf, 0xCu);
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
    [PLBatteryAgent logBaselineToCA:];
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
    [PLBatteryAgent logKioskModeEntryToAggd:];
  }

  v6 = [v4 definedKeys];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PLBatteryAgent_logKioskModeEntryToAggd___block_invoke;
  v8[3] = &unk_279A5D6D8;
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
  v10[3] = &unk_279A5D6D8;
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
            [PLBatteryAgent ApplyPolicyToDOFU:forSerial:];
          }

          if (v17 < 0)
          {
            v19 = PLLogCommon();
            v17 = -v17;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v23 = 134217984;
              v24 = v17;
              _os_log_error_impl(&dword_25EE51000, v19, OS_LOG_TYPE_ERROR, "diff of the DOFU and SN is negative with the value of %ld", &v23, 0xCu);
            }
          }

          v20 = dbl_25F023F60[v17 / 604800.0 > 52.0];
          v8 = [MEMORY[0x277CCABB0] numberWithDouble:floor(v15 / v20) * v20];
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
  logEventPointBatteryShutdown_classDebugEnabled = result;
  return result;
}

- (void)logEventPointBatteryPanicShutdown:(id)a3
{
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

        v16 = v5;
        AnalyticsSendEventLazy();
        [MEMORY[0x277D3F180] setObject:v9 forKey:@"LastPanicData" saveToDisk:1];
      }
    }
  }
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
  logEventPointBatteryPanicShutdown__classDebugEnabled = result;
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
  v219[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && ([MEMORY[0x277D3F208] isDeviceClass:101001] & 1) == 0)
  {
    v206 = self;
    v201 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"BatteryConfig"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v201];
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
        [v5 objectForKeyedSubscript:@"TimeAbove95Perc"];
        objc_claimAutoreleasedReturnValue();
        [PLBatteryAgent logEventNoneBatteryConfigWithRawData:];
      }
    }

    else
    {
      v39 = [v8 objectForKeyedSubscript:@"TimeAtHighSoc"];
      [v5 setObject:v39 forKeyedSubscript:@"TimeAtHighSoc"];
      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [v5 objectForKeyedSubscript:@"TimeAtHighSoc"];
        objc_claimAutoreleasedReturnValue();
        [PLBatteryAgent logEventNoneBatteryConfigWithRawData:];
      }

      v41 = [(PLBatteryAgent *)v206 parseTimeAtHighSoc:v39];
      [(PLBatteryAgent *)v206 pushTimeAtHighSocToAggD:v41];
      [(PLBatteryAgent *)v206 pushTimeAtHighSocToCA:v41];
    }

    v42 = [v8 objectForKeyedSubscript:@"TimeAbove95Perc"];
    [v5 setObject:v42 forKeyedSubscript:@"TimeAbove95Perc"];

    v43 = [v8 objectForKeyedSubscript:@"LowVoltageResidencyCounters"];
    [v5 setObject:v43 forKeyedSubscript:@"LowVoltageResidencyCounters"];

    v200 = [v8 objectForKeyedSubscript:@"LowVoltageResidencyCounters"];
    if (v200)
    {
      v44 = PLLogCommon();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        [v5 objectForKeyedSubscript:@"LowVoltageResidencyCounters"];
        objc_claimAutoreleasedReturnValue();
        [PLBatteryAgent logEventNoneBatteryConfigWithRawData:];
      }

      v45 = [(PLBatteryAgent *)v206 parseLowVoltageResidencyCounters:v200];
      [(PLBatteryAgent *)v206 pushLowVoltageResidencyCountersToCA:v45];
    }

    v46 = [v8 objectForKeyedSubscript:@"UpdateTime"];
    [v5 setObject:v46 forKeyedSubscript:@"UpdateTime"];

    v47 = [v8 objectForKeyedSubscript:@"QmaxUpdSuccessCount"];
    [v5 setObject:v47 forKeyedSubscript:@"QmaxUpdSuccessCount"];

    v48 = [v8 objectForKeyedSubscript:@"QmaxUpdFailCount"];
    [v5 setObject:v48 forKeyedSubscript:@"QmaxUpdFailCount"];

    v49 = [v8 objectForKeyedSubscript:@"MinimumRa8"];
    [v5 setObject:v49 forKeyedSubscript:@"MinimumRa8"];

    v50 = [v8 objectForKeyedSubscript:@"MaximumRa8"];
    [v5 setObject:v50 forKeyedSubscript:@"MaximumRa8"];

    v51 = [v8 objectForKeyedSubscript:@"TimeAbove95PercRange1"];
    [v5 setObject:v51 forKeyedSubscript:@"TimeAbove95PercRange1"];

    v52 = [v8 objectForKeyedSubscript:@"TimeAbove95PercRange2"];
    [v5 setObject:v52 forKeyedSubscript:@"TimeAbove95PercRange2"];

    v53 = [v8 objectForKeyedSubscript:@"TimeAbove95PercRange3"];
    [v5 setObject:v53 forKeyedSubscript:@"TimeAbove95PercRange3"];

    v54 = [v8 objectForKeyedSubscript:@"ResetCnt"];
    [v5 setObject:v54 forKeyedSubscript:@"ResetCnt"];

    v55 = [v8 objectForKeyedSubscript:@"NCCMin"];
    [v5 setObject:v55 forKeyedSubscript:@"NCCMin"];

    v56 = [v8 objectForKeyedSubscript:@"NCCMax"];
    [v5 setObject:v56 forKeyedSubscript:@"NCCMax"];

    v57 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v58 = [v57 objectForKeyedSubscript:@"DataFlashWriteCount"];
    [v5 setObject:v58 forKeyedSubscript:@"DataFlashWriteCount"];

    v59 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v60 = [v59 objectForKeyedSubscript:@"ResetDataComms"];
    [v5 setObject:v60 forKeyedSubscript:@"ResetDataComms"];

    v61 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v62 = [v61 objectForKeyedSubscript:@"ResetDataFirmware"];
    [v5 setObject:v62 forKeyedSubscript:@"ResetDataFirmware"];

    v63 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v64 = [v63 objectForKeyedSubscript:@"ResetDataHardware"];
    [v5 setObject:v64 forKeyedSubscript:@"ResetDataHardware"];

    v65 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v66 = [v65 objectForKeyedSubscript:@"ResetDataSoftware"];
    [v5 setObject:v66 forKeyedSubscript:@"ResetDataSoftware"];

    v67 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v68 = [v67 objectForKeyedSubscript:@"ResetDataWatchDog"];
    [v5 setObject:v68 forKeyedSubscript:@"ResetDataWatchDog"];

    v69 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v202 = [v69 objectForKeyedSubscript:@"ResetData"];

    if (v202 && [v202 length] >= 0xB)
    {
      v70 = PLLogCommon();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryAgent logEventNoneBatteryConfigWithRawData:];
      }

      v71 = v202;
      v72 = [v202 bytes];
      v73 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v72[10]];
      [v5 setObject:v73 forKeyedSubscript:@"LastResetReason"];

      if ([MEMORY[0x277D3F208] isiPhone] && objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClass") > 102037 || objc_msgSend(MEMORY[0x277D3F208], "isWatch") && objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClass") >= 200045)
      {
        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v72[12]];
        [v5 setObject:v74 forKeyedSubscript:@"ResetDataSwWatchDog"];

        v75 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v72[14]];
        [v5 setObject:v75 forKeyedSubscript:@"ResetDataHardFault"];

        v76 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v72[16]];
        [v5 setObject:v76 forKeyedSubscript:@"ResetDataCorruption"];
      }
    }

    v77 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v78 = [v77 objectForKeyedSubscript:@"CycleCount"];
    [v5 setObject:v78 forKeyedSubscript:@"CycleCount"];

    v79 = [v4 objectForKeyedSubscript:@"ITSimulationCounter"];
    [v5 setObject:v79 forKeyedSubscript:@"ITSimulationCounter"];

    v80 = [v4 objectForKeyedSubscript:@"RaUpdateCounter"];
    [v5 setObject:v80 forKeyedSubscript:@"RaUpdateCounter"];

    v81 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v82 = [v81 objectForKeyedSubscript:@"ITMiscStatus"];
    [v5 setObject:v82 forKeyedSubscript:@"ITMiscStatus"];

    v83 = [v4 objectForKeyedSubscript:@"GasGaugeFirmwareVersion"];
    [v5 setObject:v83 forKeyedSubscript:@"GasGaugeFirmwareVersion"];

    v218 = @"GasGaugeFirmwareVersion";
    v84 = [v5 objectForKeyedSubscript:@"GasGaugeFirmwareVersion"];
    v219[0] = v84;
    v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v219 forKeys:&v218 count:1];
    v86 = [v5 entryDate];
    [(PLOperator *)v206 logForSubsystem:@"BatteryMetrics" category:@"BatteryConfig" data:v85 date:v86];

    v87 = [v4 objectForKeyedSubscript:@"FlashWearLevelData"];
    LOBYTE(v84) = v87 == 0;

    if ((v84 & 1) == 0)
    {
      v88 = [v4 objectForKeyedSubscript:@"FlashWearLevelData"];
      [v5 setObject:v88 forKeyedSubscript:@"FlashWearLevelData"];
      v89 = PLLogCommon();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        [v5 objectForKeyedSubscript:@"FlashWearLevelData"];
        objc_claimAutoreleasedReturnValue();
        [PLBatteryAgent logEventNoneBatteryConfigWithRawData:];
      }

      v90 = [(PLBatteryAgent *)v206 parseFlashWearLevelData:v88];
      [(PLBatteryAgent *)v206 pushFlashWearLevelDataToCA:v90];
    }

    v91 = [(PLBatteryAgent *)v206 getBatteryMaximumCapacityPercent];
    if (v91 >= 1)
    {
      v92 = [MEMORY[0x277CCABB0] numberWithInt:v91];
      [v5 setObject:v92 forKeyedSubscript:@"MaximumCapacityPercent"];

      v93 = PLLogBH();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v212) = v91;
        _os_log_impl(&dword_25EE51000, v93, OS_LOG_TYPE_INFO, "Maximum Capacity: %d", buf, 8u);
      }
    }

    v94 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v95 = [v94 objectForKeyedSubscript:@"AlgoChemID"];
    [v5 setObject:v95 forKeyedSubscript:@"AlgoChemID"];

    v96 = [v4 objectForKeyedSubscript:@"ChargerData"];
    v97 = [v96 objectForKeyedSubscript:@"VacVoltageLimit"];
    [v5 setObject:v97 forKeyedSubscript:@"VacVoltageLimit"];

    v205 = [(PLBatteryAgent *)v206 getBatteryCalibration0Data];
    if (v205)
    {
      [(PLBatteryAgent *)v206 logEventForwardCalibration0withData:v205];
      v98 = [v205 objectForKeyedSubscript:@"calibrationFlags"];
      [v5 setObject:v98 forKeyedSubscript:@"calibrationFlags"];

      v99 = [v205 objectForKeyedSubscript:@"filteredNCC"];
      [v5 setObject:v99 forKeyedSubscript:@"filteredNCC"];

      v100 = [v205 objectForKeyedSubscript:@"exitTotalOperatingTime"];
      [v5 setObject:v100 forKeyedSubscript:@"exitTotalOperatingTime"];

      v101 = [v205 objectForKeyedSubscript:@"svcTotalOperatingTime"];
      [v5 setObject:v101 forKeyedSubscript:@"svcTotalOperatingTime"];
    }

    v102 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v103 = [v102 objectForKeyedSubscript:@"RSS"];
    [v5 setObject:v103 forKeyedSubscript:@"RSS"];

    v104 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v105 = [v104 objectForKeyedSubscript:@"ChemID"];
    [v5 setObject:v105 forKeyedSubscript:@"ChemID"];

    v106 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v199 = [v106 objectForKeyedSubscript:@"RaTableRaw"];

    if ([v199 count])
    {
      v107 = [v199 objectAtIndexedSubscript:0];
      v108 = [(PLBatteryAgent *)v206 parseRawRaTableData:v107];
      for (i = 0; [v108 count] > i; ++i)
      {
        v110 = [v108 objectAtIndexedSubscript:i];
        v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"RaTable_%d", i + 1];
        [v5 setObject:v110 forKeyedSubscript:v111];
      }
    }

    v112 = [v8 objectForKeyedSubscript:@"LTDataCorruptionOffset"];
    [v5 setObject:v112 forKeyedSubscript:@"LTDataCorruptionOffset"];

    v113 = PLLogCommon();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      [v5 objectForKeyedSubscript:@"LTDataCorruptionOffset"];
      objc_claimAutoreleasedReturnValue();
      [PLBatteryAgent logEventNoneBatteryConfigWithRawData:];
    }

    v198 = [v8 objectForKeyedSubscript:@"SafetyFaultCounter"];
    v114 = [(PLBatteryAgent *)v206 parseRawSafetyFaultCounter:?];
    v115 = PLLogBH();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent logEventNoneBatteryConfigWithRawData:];
    }

    for (j = 0; [v114 count] > j; ++j)
    {
      v117 = [v114 objectAtIndexedSubscript:j];
      v118 = [MEMORY[0x277CCACA8] stringWithFormat:@"SafetyEvent%d", j];
      [v5 setObject:v117 forKeyedSubscript:v118];
    }

    v119 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLBatteryAgent batteryLifetimeUPOCount](v206, "batteryLifetimeUPOCount")}];
    [v5 setObject:v119 forKeyedSubscript:@"LifetimeUPOCount"];

    v120 = [v4 objectForKeyedSubscript:@"Serial"];
    [(PLBatteryAgent *)v206 setSerialNumber:v120];

    v121 = [(PLBatteryAgent *)v206 weekOfManufacture:v4];
    [v5 setObject:v121 forKeyedSubscript:@"WeekMfd"];

    v122 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v123 = [v122 objectForKeyedSubscript:@"DateOfFirstUse"];
    v124 = v123 == 0;

    if (!v124)
    {
      v125 = [v4 objectForKeyedSubscript:@"BatteryData"];
      v126 = [v125 objectForKeyedSubscript:@"DateOfFirstUse"];
      [v126 doubleValue];
      v128 = v127;

      if (v128 == 0.0)
      {
        [v5 setObject:0 forKeyedSubscript:@"DOFU"];
      }

      else
      {
        v129 = PLLogCommon();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          v130 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v128];
          [(PLBatteryAgent *)v130 logEventNoneBatteryConfigWithRawData:v217, v129];
        }

        v131 = MEMORY[0x277CCABB0];
        v132 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v128];
        [v132 timeIntervalSince1970];
        v133 = [v131 numberWithDouble:?];
        [v5 setObject:v133 forKeyedSubscript:@"DOFU"];
      }

      v215 = @"DOFU";
      v134 = [v5 objectForKeyedSubscript:?];
      if (v134)
      {
        [v5 objectForKeyedSubscript:@"DOFU"];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithDouble:v128];
      }
      v135 = ;
      v216 = v135;
      v136 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
      v137 = [v5 entryDate];
      [(PLOperator *)v206 logForSubsystem:@"BatteryMetrics" category:@"BatteryConfig" data:v136 date:v137];
    }

    v138 = [(PLBatteryAgent *)v206 batteryEEEECode:v4];
    [v5 setObject:v138 forKeyedSubscript:@"EEEECode"];

    v139 = [(PLBatteryAgent *)v206 isOriginalBattery];
    [v5 setObject:v139 forKeyedSubscript:@"OriginalBattery"];

    v140 = [(PLBatteryAgent *)v206 batterySerialChanged:v4];
    v141 = [MEMORY[0x277CCABB0] numberWithBool:v140];
    [v5 setObject:v141 forKeyedSubscript:@"BatterySerialChanged"];

    if (v140)
    {
      MEMORY[0x25F8D18D0](@"com.apple.power.battery.newSerial", 1);
    }

    [PLEventBackwardBatteryEntry populateCellWOMForEntry:v5 withRawData:v4];
    v142 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v143 = [v142 objectForKeyedSubscript:@"DailyMaxSoc"];
    [v5 setObject:v143 forKeyedSubscript:@"DailyMaxSoc"];

    v144 = [v4 objectForKeyedSubscript:@"BatteryData"];
    v145 = [v144 objectForKeyedSubscript:@"DailyMinSoc"];
    [v5 setObject:v145 forKeyedSubscript:@"DailyMinSoc"];

    v204 = [v4 objectForKey:@"KioskMode"];
    if (v204)
    {
      v146 = [v204 objectForKeyedSubscript:@"KioskModeHighSocDays"];
      [v5 setObject:v146 forKeyedSubscript:@"KioskModeHighSocDays"];

      v147 = [v204 objectForKeyedSubscript:@"KioskModeLastHighSocHours"];
      [v5 setObject:v147 forKeyedSubscript:@"KioskModeLastHighSocHours"];

      v148 = [v204 objectForKeyedSubscript:@"KioskModeHighSocSeconds"];
      [v5 setObject:v148 forKeyedSubscript:@"KioskModeHighSocSeconds"];
    }

    v203 = [v4 objectForKeyedSubscript:@"GgDataFlashUpdate"];
    if (v203)
    {
      v149 = [v203 objectForKeyedSubscript:@"Status"];
      if (v149)
      {
        [v5 setObject:v149 forKeyedSubscript:@"GGUpdateStatus"];
        if ([v149 intValue] - 3 <= 0xFFFFFFFD)
        {
          v150 = [v203 objectForKeyedSubscript:@"Error"];
          [v5 setObject:v150 forKeyedSubscript:@"GGUpdateError"];

          v151 = [v203 objectForKeyedSubscript:@"Phase"];
          [v5 setObject:v151 forKeyedSubscript:@"GGUpdatePhase"];

          v152 = [v203 objectForKeyedSubscript:@"ErrorPhase"];
          [v5 setObject:v152 forKeyedSubscript:@"GGUpdateErrorPhase"];

          v153 = [v203 objectForKeyedSubscript:@"SubclassId"];
          [v5 setObject:v153 forKeyedSubscript:@"GGUpdateSubclassID"];

          v154 = [v203 objectForKeyedSubscript:@"Block"];
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

    v177 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLBatteryAgent getBatteryHealthServiceState](v206, "getBatteryHealthServiceState")}];
    v178 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBatteryAgent getBatteryHealthServiceFlags](v206, "getBatteryHealthServiceFlags")}];
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
      v212 = v177;
      v213 = 2112;
      v214 = v178;
      _os_log_impl(&dword_25EE51000, v179, OS_LOG_TYPE_INFO, "BH State: %@. Flags: %@", buf, 0x16u);
    }

    [(PLBatteryAgent *)v206 logAuthFail:v5];
    if ([MEMORY[0x277D3F1B8] hasBatteryModuleAuth])
    {
      v197 = [(PLBatteryAgent *)v206 xFlags];
      v180 = [MEMORY[0x277CCABB0] numberWithInteger:v197];
      [v5 setObject:v180 forKeyedSubscript:@"xFlags"];

      if ((v197 & 0x2B) != 0)
      {
        [(PLOperator *)v206 defaultDoubleForKey:@"xFlagsRetryTimerInterval"];
        v182 = v181;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v183 = objc_opt_class();
          v210[0] = MEMORY[0x277D85DD0];
          v210[1] = 3221225472;
          v210[2] = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke;
          v210[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v210[4] = v183;
          v184 = v210;
          if (logEventNoneBatteryConfigWithRawData__defaultOnce != -1)
          {
            dispatch_once(&logEventNoneBatteryConfigWithRawData__defaultOnce, v184);
          }

          if (logEventNoneBatteryConfigWithRawData__classDebugEnabled == 1)
          {
            v196 = [MEMORY[0x277CCACA8] stringWithFormat:@"xFlags indicate error, will retry in %.1f seconds", *&v182];
            v195 = MEMORY[0x277D3F178];
            v185 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
            v186 = [v185 lastPathComponent];
            v187 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventNoneBatteryConfigWithRawData:]"];
            [v195 logMessage:v196 fromFile:v186 fromFunction:v187 fromLineNumber:7954];

            v188 = PLLogCommon();
            if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
            {
              __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
            }
          }
        }

        v189 = objc_alloc(MEMORY[0x277D3F250]);
        v190 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:v182];
        v191 = [(PLOperator *)v206 workQueue];
        v207[0] = MEMORY[0x277D85DD0];
        v207[1] = 3221225472;
        v207[2] = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5048;
        v207[3] = &unk_279A5FC08;
        v207[4] = v206;
        v209 = v197;
        v208 = v5;
        v192 = [v189 initWithFireDate:v190 withInterval:0 withTolerance:0 repeats:v191 withUserInfo:v207 withQueue:v182 withBlock:6.0e10];
        [(PLBatteryAgent *)v206 setXFlagsRetryTimer:v192];
      }

      else
      {
        AnalyticsSendEventLazy();
      }
    }

    [(PLOperator *)v206 logEntry:v5];
    [(PLBatteryAgent *)v206 setLastBatteryConfigEntry:v5];
    v193 = PLLogCommon();
    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryAgent logEventNoneBatteryConfigWithRawData:];
    }

    [(PLBatteryAgent *)v206 logBatteryConfigToCA:v5];
    [(PLBatteryAgent *)v206 logBatteryConfigToAggd:v5];
    [(PLBatteryAgent *)v206 logWatchdogDebugDumpToCA:v4];
    [(PLBatteryAgent *)v206 logFlashAgingToCA:v4];
    [(PLBatteryAgent *)v206 logShallowChargingToCA:v4];
    [(PLBatteryAgent *)v206 logSlowChargingReasonToCA:v4];
    [(PLBatteryAgent *)v206 logkBatteryRsenseOpenCountToCA:v4];

    goto LABEL_83;
  }

LABEL_84:

  v194 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventNoneBatteryConfigWithRawData__classDebugEnabled = result;
  return result;
}

void __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5048(uint64_t a1)
{
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
    if (kPLBatteryAgentStringUserType_block_invoke_9_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_9_defaultOnce, block);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_9_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5052;
    v13[3] = &unk_279A5C470;
    v12 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v12;
    v15 = v2;
    [v11 updateEntry:v14 withBlock:v13];
  }
}

uint64_t __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_9_classDebugEnabled = result;
  return result;
}

uint64_t __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5052(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_2_5053;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (kPLBatteryAgentStringUserType_block_invoke_10_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_10_defaultOnce, block);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_10_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [*(a1 + 40) setObject:v10 forKeyedSubscript:@"xFlags"];

  [*(a1 + 32) setAggdIntegerValueFromEntry:*(a1 + 40) forKey:@"xFlags" withPrefix:@"com.apple.power.battery."];
  v12 = MEMORY[0x277D85DD0];
  v13 = *(a1 + 48);
  AnalyticsSendEventLazy();
  return [*(a1 + 32) setLastBatteryConfigEntry:{*(a1 + 40), v12, 3221225472, __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5057, &__block_descriptor_40_e19___NSDictionary_8__0l, v13}];
}

uint64_t __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_2_5053(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_10_classDebugEnabled = result;
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
  logEventNoneBatteryConfigWithRawData__classDebugEnabled_5060 = result;
  return result;
}

- (void)logEventNoneBatteryConfigCycleCountData
{
  v3 = [(PLOperator *)self workQueue];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __57__PLBatteryAgent_logEventNoneBatteryConfigCycleCountData__block_invoke;
  block[8] = &unk_279A5C228;
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
    if (logEventNoneBatteryConfigCycleCountData_defaultOnce != -1)
    {
      dispatch_once(&logEventNoneBatteryConfigCycleCountData_defaultOnce, block);
    }

    if (logEventNoneBatteryConfigCycleCountData_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
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
  logEventNoneBatteryConfigCycleCountData_classDebugEnabled = result;
  return result;
}

- (BOOL)givePluggedInFreePass
{
  v2 = self;
  v3 = [(PLBatteryAgent *)self deviceIsPluggedIn];
  v4 = [v3 BOOLValue];
  [(PLBatteryAgent *)v2 batteryLevelPercent];
  LOBYTE(v2) = [PLUtilities isPingPongChargingWith:v4 andBatteryLevelPercent:?];

  return v2;
}

- (void)addPowerMeasurementToAccounting:(double)a3 withStartDate:(id)a4 withEndDate:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v10 addPowerMeasurementEventIntervalWithPower:v8 withStartDate:v9 withEndDate:a3];

  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218498;
    v22 = a3;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_debug_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEBUG, "added power %.2fmW for %@-%@", &v21, 0x20u);
  }

  v12 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
  v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  [v9 timeIntervalSinceDate:v8];
  v15 = v14 / 3600.0 * a3;
  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryAgent addPowerMeasurementToAccounting:withStartDate:withEndDate:];
  }

  v17 = llround(v15 * 1000.0);
  v18 = PLLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryAgent addPowerMeasurementToAccounting:withStartDate:withEndDate:];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  [v13 setObject:v19 forKeyedSubscript:@"energyConsumed"];

  [(PLOperator *)self logEntry:v13];
  v20 = *MEMORY[0x277D85DE8];
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
      block[3] = &unk_279A5BDC0;
      block[4] = self;
      if (logCurrentAccumulatorWithRawData__defaultOnce != -1)
      {
        dispatch_once(&logCurrentAccumulatorWithRawData__defaultOnce, block);
      }

      if (v9 > *&logCurrentAccumulatorWithRawData__objectForKey)
      {
        v10 = [v5 objectForKeyedSubscript:@"BatteryData"];
        v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
        v12 = [v10 objectForKeyedSubscript:@"CellCurrentAccumulator"];
        v17 = MEMORY[0x277D85DD0];
        v18 = 3221225472;
        v19 = __51__PLBatteryAgent_logCurrentAccumulatorWithRawData___block_invoke_2;
        v20 = &unk_279A5E4A8;
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
  logCurrentAccumulatorWithRawData__objectForKey = v2;
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
      [PLBatteryAgent shouldWaitForLifetimeDataWithRawData:];
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

  return v4;
}

- (int64_t)xFlags
{
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
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __24__PLBatteryAgent_xFlags__block_invoke;
      v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v105[4] = v38;
      if (xFlags_defaultOnce != -1)
      {
        dispatch_once(&xFlags_defaultOnce, v105);
      }

      if (xFlags_classDebugEnabled == 1)
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
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
    if (xFlags_defaultOnce_5103 != -1)
    {
      dispatch_once(&xFlags_defaultOnce_5103, block);
    }

    if (xFlags_classDebugEnabled_5104 == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __24__PLBatteryAgent_xFlags__block_invoke_5114;
    v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v103[4] = v16;
    if (xFlags_defaultOnce_5112 != -1)
    {
      dispatch_once(&xFlags_defaultOnce_5112, v103);
    }

    if (xFlags_classDebugEnabled_5113 == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = objc_opt_class();
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __24__PLBatteryAgent_xFlags__block_invoke_5123;
    v102[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v102[4] = v25;
    if (xFlags_defaultOnce_5121 != -1)
    {
      dispatch_once(&xFlags_defaultOnce_5121, v102);
    }

    if (xFlags_classDebugEnabled_5122 == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
      v53 = objc_opt_class();
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __24__PLBatteryAgent_xFlags__block_invoke_5132;
      v101[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v101[4] = v53;
      if (xFlags_defaultOnce_5130 != -1)
      {
        dispatch_once(&xFlags_defaultOnce_5130, v101);
      }

      if (xFlags_classDebugEnabled_5131 == 1)
      {
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"isTrustedForUI failed"];
        v54 = MEMORY[0x277D3F178];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v56 = [v55 lastPathComponent];
        v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
        [v54 logMessage:v47 fromFile:v56 fromFunction:v57 fromLineNumber:8422];

        v52 = PLLogCommon();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
      v46 = objc_opt_class();
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __24__PLBatteryAgent_xFlags__block_invoke_5138;
      v100[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v100[4] = v46;
      if (xFlags_defaultOnce_5136 != -1)
      {
        dispatch_once(&xFlags_defaultOnce_5136, v100);
      }

      if (xFlags_classDebugEnabled_5137 == 1)
      {
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"isTrustedForUI missing"];
        v48 = MEMORY[0x277D3F178];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v50 = [v49 lastPathComponent];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
        [v48 logMessage:v47 fromFile:v50 fromFunction:v51 fromLineNumber:8426];

        v52 = PLLogCommon();
        v37 = 2;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
          v37 = 2;
        }

        goto LABEL_58;
      }
    }

    v37 = 2;
  }

LABEL_61:
  v58 = [v2 objectForKeyedSubscript:@"AuthPassed"];

  if (v58)
  {
    v59 = [v2 objectForKeyedSubscript:@"AuthPassed"];
    v60 = [v59 BOOLValue];

    if (v60)
    {
      v37 |= 0x10uLL;
      goto LABEL_77;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v68 = objc_opt_class();
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __24__PLBatteryAgent_xFlags__block_invoke_5144;
      v99[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v99[4] = v68;
      if (xFlags_defaultOnce_5142 != -1)
      {
        dispatch_once(&xFlags_defaultOnce_5142, v99);
      }

      if (xFlags_classDebugEnabled_5143 == 1)
      {
        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Auth Failed"];
        v69 = MEMORY[0x277D3F178];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v71 = [v70 lastPathComponent];
        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
        [v69 logMessage:v62 fromFile:v71 fromFunction:v72 fromLineNumber:8434];

        v67 = PLLogCommon();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }

LABEL_76:
      }
    }
  }

  else
  {
    v37 |= 8uLL;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v61 = objc_opt_class();
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __24__PLBatteryAgent_xFlags__block_invoke_5150;
      v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v98[4] = v61;
      if (xFlags_defaultOnce_5148 != -1)
      {
        dispatch_once(&xFlags_defaultOnce_5148, v98);
      }

      if (xFlags_classDebugEnabled_5149 == 1)
      {
        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"AuthPassed missing"];
        v63 = MEMORY[0x277D3F178];
        v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v65 = [v64 lastPathComponent];
        v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
        [v63 logMessage:v62 fromFile:v65 fromFunction:v66 fromLineNumber:8438];

        v67 = PLLogCommon();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }

        goto LABEL_76;
      }
    }
  }

LABEL_77:
  v73 = [v2 objectForKeyedSubscript:@"FdrValidationStatus"];

  if (!v73)
  {
    v37 |= 0x20uLL;
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_96;
    }

    v83 = objc_opt_class();
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __24__PLBatteryAgent_xFlags__block_invoke_5165;
    v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v96[4] = v83;
    if (xFlags_defaultOnce_5163 != -1)
    {
      dispatch_once(&xFlags_defaultOnce_5163, v96);
    }

    if (xFlags_classDebugEnabled_5164 != 1)
    {
      goto LABEL_96;
    }

    v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"FDR Validation Missing"];
    v84 = MEMORY[0x277D3F178];
    v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
    v86 = [v85 lastPathComponent];
    v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
    [v84 logMessage:v75 fromFile:v86 fromFunction:v87 fromLineNumber:8451];

    v77 = PLLogCommon();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
    }

LABEL_94:

    goto LABEL_95;
  }

  v74 = [v2 objectForKeyedSubscript:@"FdrValidationStatus"];
  v75 = v74;
  if (!v74 || ![v74 isEqualToString:@"Pass"])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_95;
    }

    v76 = objc_opt_class();
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __24__PLBatteryAgent_xFlags__block_invoke_5159;
    v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v97[4] = v76;
    if (xFlags_defaultOnce_5157 != -1)
    {
      dispatch_once(&xFlags_defaultOnce_5157, v97);
    }

    if (xFlags_classDebugEnabled_5158 != 1)
    {
      goto LABEL_95;
    }

    v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"FDR Validation Failed: %@", v75];
    v78 = MEMORY[0x277D3F178];
    v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
    v80 = [v79 lastPathComponent];
    v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
    [v78 logMessage:v77 fromFile:v80 fromFunction:v81 fromLineNumber:8447];

    v82 = PLLogCommon();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
    }

    goto LABEL_94;
  }

  v37 |= 0x40uLL;
LABEL_95:

LABEL_96:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v88 = objc_opt_class();
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __24__PLBatteryAgent_xFlags__block_invoke_5171;
    v95[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v95[4] = v88;
    if (xFlags_defaultOnce_5169 != -1)
    {
      dispatch_once(&xFlags_defaultOnce_5169, v95);
    }

    if (xFlags_classDebugEnabled_5170 == 1)
    {
      v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got auth flags: %ld", v37];
      v90 = MEMORY[0x277D3F178];
      v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v92 = [v91 lastPathComponent];
      v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent xFlags]"];
      [v90 logMessage:v89 fromFile:v92 fromFunction:v93 fromLineNumber:8453];

      v94 = PLLogCommon();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

LABEL_44:

  return v37;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5105(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5104 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5114(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5113 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5123(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5122 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5132(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5131 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5138(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5137 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5144(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5143 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5150(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5149 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5159(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5158 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5165(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5164 = result;
  return result;
}

uint64_t __24__PLBatteryAgent_xFlags__block_invoke_5171(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  xFlags_classDebugEnabled_5170 = result;
  return result;
}

- (void)setupCSMLogging
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "csm: setting override %d", v7, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __33__PLBatteryAgent_setupCSMLogging__block_invoke_5184(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "csm: flushing due to notification", v5, 2u);
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
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLBatteryAgent *)self csmTotalCount];
  v6 = [(PLBatteryAgent *)self csmFailureCount];
  v12[0] = @"com.apple.power.battery.csm.totalCount";
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  v12[1] = @"com.apple.power.battery.csm.failureCount";
  v13[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryAgent flushCSMToAggdAtDate:];
  }

  MEMORY[0x25F8D18E0](v9, 0);
  AnalyticsSendEventLazy();
  [(PLBatteryAgent *)self setCsmTotalCount:0];
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
        _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Logging powerout details: %@", buf, 0xCu);
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __37__PLBatteryAgent_logPowerOutDetails___block_invoke;
      v15[3] = &unk_279A5E370;
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
        _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Total Power: %f  Total Count: %f", buf, 0x16u);
      }

      [(PLBatteryAgent *)self powerOutTotalCount];
      if (v10 <= 0.0 || ([(PLBatteryAgent *)self powerOutTotalPower], v11 <= 100.0))
      {
        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryAgent logPowerOutDetails:];
        }
      }

      else
      {
        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryAgent logPowerOutDetails:];
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
      __37__PLBatteryAgent_logPowerOutDetails___block_invoke_cold_1();
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
      _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_INFO, "Filtered Power: %f", buf, 0xCu);
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
    v11 = &stru_287103958;
    v10 = v5;
  }

  [v10 setObject:v11 forKeyedSubscript:@"Manufacturer"];
  v12 = [(__CFString *)v9 length];
  v13 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v14 = [(__CFString *)v9 stringByTrimmingCharactersInSet:v13];
  v15 = [v14 isEqualToString:&stru_287103958];

  if ([(__CFString *)v9 hasPrefix:@"0x"]&& v12 == 6 && v15)
  {
    v16 = v5;
    v17 = v9;
  }

  else
  {
    v17 = &stru_287103958;
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
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "Pushing AdapterDetails to CA: %@", buf, 0xCu);
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
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)accountUSBCPowerOut
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
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
      v6[3] = &unk_279A5E370;
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
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"PortControllerInfo"];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEAA8] monotonicDate];
      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryAgent logPortControllerInfo:];
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__PLBatteryAgent_logPortControllerInfo___block_invoke;
      v12[3] = &unk_279A5D6B0;
      v7 = v5;
      v13 = v7;
      v14 = self;
      [v4 enumerateObjectsUsingBlock:v12];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __40__PLBatteryAgent_logPortControllerInfo___block_invoke_3;
      v9[3] = &unk_279A5D6B0;
      v10 = v7;
      v11 = self;
      v8 = v7;
      [v4 enumerateObjectsUsingBlock:v9];
    }
  }
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
  v12[3] = &unk_279A5EB98;
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
  v5 = a2;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"PortControllerBuffer%d", a3];
  v7 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:v6];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withDate:*(a1 + 32)];
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __40__PLBatteryAgent_logPortControllerInfo___block_invoke_3_cold_1((a1 + 32), v5);
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
}

- (void)logOrionInfo:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"OrionInfo"];
    if (v4)
    {
      v5 = PLLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryAgent logOrionInfo:];
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
        _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "pushing WatchDogDebug to CA :%@", buf, 0xCu);
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
  state64 = 0;
  if (notify_get_state(a3, &state64))
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryAgent handleGaugingMitigationStateCallback:];
    }
  }

  else if (state64)
  {
    [(PLBatteryAgent *)self logEventBackwardChargingLimit];
  }
}

- (void)handleMitigationStateCallback:(int)a3
{
  state64 = 0;
  state = notify_get_state(a3, &state64);
  if (state)
  {
    v5 = state;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __48__PLBatteryAgent_handleMitigationStateCallback___block_invoke;
      v16 = &__block_descriptor_40_e5_v8__0lu32l8;
      v17 = v6;
      if (handleMitigationStateCallback__defaultOnce != -1)
      {
        dispatch_once(&handleMitigationStateCallback__defaultOnce, &block);
      }

      if (handleMitigationStateCallback__classDebugEnabled == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"notify_get_state failed %d %s", v5, "com.apple.thermalmonitor.ageAwareMitigationState", block, v14, v15, v16, v17];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent handleMitigationStateCallback:]"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:9088];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    [(PLBatteryAgent *)self logEventForwardMitigationStateWithState:state64 userDisabled:0];
  }
}

uint64_t __48__PLBatteryAgent_handleMitigationStateCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleMitigationStateCallback__classDebugEnabled = result;
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
  +[PLUtilities containerPath];
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
  block[3] = &unk_279A5BDC0;
  v9 = v3;
  v4 = batterySerialChanged__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&batterySerialChanged__onceToken, block);
  }

  v6 = batterySerialChanged__isNewBattery;

  return v6;
}

void __39__PLBatteryAgent_batterySerialChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"BatterySerial" ifNotSet:&stru_287103958];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"Serial"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_287103958;
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

  batterySerialChanged__isNewBattery = v7;
  v8 = PLLogBH();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __39__PLBatteryAgent_batterySerialChanged___block_invoke_cold_1();
  }
}

- (id)overrideBatteryData:(id)a3 withPath:(id)a4
{
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
        [PLBatteryAgent overrideBatteryData:withPath:];
      }

      v10 = [v7 objectForKey:@"iopm"];
      v11 = v10;
      if (v10 && [v10 intValue] == -1)
      {
        v12 = PLLogBH();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PLBatteryAgent overrideBatteryData:withPath:];
        }

        v18 = 0;
      }

      else
      {
        v38 = v11;
        v12 = [v5 mutableCopy];
        v13 = [v5 objectForKey:@"BatteryData"];
        v14 = [v13 mutableCopy];

        v15 = [v14 objectForKey:@"LifetimeData"];
        v40 = [v15 mutableCopy];

        v16 = [v7 objectForKey:@"MaximumRa0-8"];
        v17 = v16;
        if (v16)
        {
          if ([v16 intValue] == -1)
          {
            [v40 removeObjectForKey:@"MaximumRa0-8"];
          }

          else
          {
            [v40 setObject:v17 forKeyedSubscript:@"MaximumRa0-8"];
          }
        }

        [v14 setObject:v40 forKey:@"LifetimeData"];
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

        v39 = [v7 objectForKey:@"DesignCapacity"];
        if (v39)
        {
          if ([v39 intValue] == -1)
          {
            [v14 removeObjectForKey:@"DesignCapacity"];
          }

          else
          {
            [v14 setObject:v39 forKeyedSubscript:@"DesignCapacity"];
          }
        }

        v37 = v17;
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

        v36 = v20;
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

        v35 = v22;
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
          [PLBatteryAgent overrideBatteryData:withPath:];
        }

        v18 = [v12 copy];
        v11 = v38;
      }
    }

    else
    {
      if (v9)
      {
        [PLBatteryAgent overrideBatteryData:withPath:];
      }

      v18 = v5;
    }
  }

  else
  {
    v18 = v5;
  }

  return v18;
}

- (int)deviceType
{
  v2 = [MEMORY[0x277D3F208] kPLDeviceClass];
  if ([MEMORY[0x277D3F180] objectExistsForKey:@"overrideDeviceType"])
  {
    v2 = [MEMORY[0x277D3F180] longForKey:@"overrideDeviceType"];
    v3 = PLLogBH();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryAgent deviceType];
    }
  }

  return v2;
}

- (void)initCameraStreamingIntervalTracking
{
  v37 = *MEMORY[0x277D85DE8];
  [(PLBatteryAgent *)self setupAVSystemController];
  v3 = [(PLBatteryAgent *)self avSystemController];
  v4 = [v3 attributeForKey:*MEMORY[0x277D26E30]];
  -[PLBatteryAgent setCameraStreamingActive:](self, "setCameraStreamingActive:", [v4 BOOLValue]);

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v36 = [(PLBatteryAgent *)self cameraStreamingActive];
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Init Camera Streaming Active: %d", buf, 8u);
  }

  v6 = MEMORY[0x277D26D48];
  v7 = MEMORY[0x277D26E40];
  v8 = *MEMORY[0x277D26E40];
  v34[0] = *MEMORY[0x277D26D48];
  v34[1] = v8;
  v9 = MEMORY[0x277D26C18];
  v34[2] = *MEMORY[0x277D26C18];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  if (v10)
  {
    v11 = [(PLBatteryAgent *)self avSystemController];
    [v11 setAttribute:v10 forKey:*MEMORY[0x277D26DC8] error:0];

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
    v22 = [v21 attributeForKey:*MEMORY[0x277D26C00]];
    [(PLBatteryAgent *)self setHeadphonesConnected:[v22 BOOLValue]];
LABEL_5:

    goto LABEL_12;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v23 = objc_opt_class();
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __53__PLBatteryAgent_initCameraStreamingIntervalTracking__block_invoke;
    v32 = &__block_descriptor_40_e5_v8__0lu32l8;
    v33 = v23;
    if (initCameraStreamingIntervalTracking_defaultOnce != -1)
    {
      dispatch_once(&initCameraStreamingIntervalTracking_defaultOnce, &v29);
    }

    if (initCameraStreamingIntervalTracking_classDebugEnabled == 1)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"No AV System Controller Notifications", v29, v30, v31, v32, v33];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v26 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initCameraStreamingIntervalTracking]"];
      [v24 logMessage:v21 fromFile:v26 fromFunction:v27 fromLineNumber:9392];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
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
  initCameraStreamingIntervalTracking_classDebugEnabled = result;
  return result;
}

- (void)setupAVSystemController
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Setting up AV System Controller", buf, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = *MEMORY[0x277D26D48];
  v6 = [(PLBatteryAgent *)self avSystemController];
  [v4 removeObserver:self name:v5 object:v6];

  v7 = [MEMORY[0x277D26E60] sharedAVSystemController];
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
    if (setupAVSystemController_defaultOnce != -1)
    {
      dispatch_once(&setupAVSystemController_defaultOnce, block);
    }

    if (setupAVSystemController_classDebugEnabled == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

uint64_t __41__PLBatteryAgent_setupAVSystemController__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setupAVSystemController_classDebugEnabled = result;
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
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "received notification: %@\n", &v16, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:*MEMORY[0x277D26E50]];
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
        _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, v12, &v16, v14);
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
    _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_INFO, "notification misses userInfo dict:%@\n", &v16, 0xCu);
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleHeadphoneConnected:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  [(PLBatteryAgent *)self flushPowerOut];
  v4 = [(PLBatteryAgent *)self avSystemController];
  v5 = [v4 attributeForKey:*MEMORY[0x277D26C00]];
  -[PLBatteryAgent setHeadphonesConnected:](self, "setHeadphonesConnected:", [v5 BOOLValue]);

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = [(PLBatteryAgent *)self headphonesConnected];
    _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "headphones connected = %d", v8, 8u);
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
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "Start Camera Streaming Interval Tracking Section", v25, 2u);
  }

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(PLBatteryAgent *)self cameraStreamingActive];
    v25[0] = 67109120;
    v25[1] = v9;
    _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "Camera Streaming State: %d", v25, 8u);
  }

  if (![(PLBatteryAgent *)self cameraStreamingActive]|| !a3)
  {
    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_INFO, "Camera Streaming not active OR device not plugged in", v25, 2u);
    }

    v19 = [v6 entryDate];
    [(PLBatteryAgent *)self updateIntervalForType:4 withState:0 andTime:v19];

    v15 = [v6 entryDate];
    v16 = self;
    v17 = 6;
    goto LABEL_14;
  }

  v10 = [(PLBatteryAgent *)self tlcIncreased];
  v11 = PLLogCommon();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "Open WTLC, close TLC, close camera streaming", v25, 2u);
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
    _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "Close WTLC, close TLC, open camera streaming", v25, 2u);
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
    v8[3] = &unk_279A5BCB8;
    v8[4] = self;
    v4 = [v3 initWithOperator:self withRegistration:&unk_28714AE08 withBlock:v8];
    smartChargingListener = self->_smartChargingListener;
    self->_smartChargingListener = v4;

    v6 = dispatch_time(0, 60000000000);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_5335;
    v7[3] = &unk_279A5BDC0;
    v7[4] = self;
    dispatch_after(v6, MEMORY[0x277D85CD0], v7);
  }
}

void __42__PLBatteryAgent_initSmartChargingLogging__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_2;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v8;
    if (kPLBatteryAgentStringUserType_block_invoke_11_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_11_defaultOnce, &block);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_11_classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Smart Charging Callback %@", v6, block, v16, v17, v18, v19];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initSmartChargingLogging]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:9502];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logEventForwardSmartChargingWithPayload:v6];
}

uint64_t __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_11_classDebugEnabled = result;
  return result;
}

void __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_5335(uint64_t a1)
{
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
      if (kPLBatteryAgentStringUserType_block_invoke_12_defaultOnce != -1)
      {
        dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_12_defaultOnce, block);
      }

      if (kPLBatteryAgentStringUserType_block_invoke_12_classDebugEnabled == 1)
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
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }

LABEL_14:
      }
    }
  }

  else if (v3)
  {
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_5343;
    v18[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v18[4] = v13;
    if (kPLBatteryAgentStringUserType_block_invoke_12_defaultOnce_5341 != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_12_defaultOnce_5341, v18);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_12_classDebugEnabled_5342 == 1)
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
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }

      goto LABEL_14;
    }
  }
}

uint64_t __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_2_5337(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_12_classDebugEnabled = result;
  return result;
}

uint64_t __42__PLBatteryAgent_initSmartChargingLogging__block_invoke_5343(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_12_classDebugEnabled_5342 = result;
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
    v6[3] = &unk_279A5BCB8;
    v6[4] = self;
    v4 = [v3 initWithOperator:self withRegistration:&unk_28714AE30 withBlock:v6];
    cleanEnergyChargingListener = self->_cleanEnergyChargingListener;
    self->_cleanEnergyChargingListener = v4;
  }
}

void __48__PLBatteryAgent_initCleanEnergyChargingLogging__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __48__PLBatteryAgent_initCleanEnergyChargingLogging__block_invoke_2;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v8;
    if (kPLBatteryAgentStringUserType_block_invoke_13_defaultOnce != -1)
    {
      dispatch_once(&kPLBatteryAgentStringUserType_block_invoke_13_defaultOnce, &block);
    }

    if (kPLBatteryAgentStringUserType_block_invoke_13_classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Clean Energy Charging Callback %@", v6, block, v16, v17, v18, v19];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent initCleanEnergyChargingLogging]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:9541];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logEventForwardCleanEnergyChargingWithPayload:v6];
}

uint64_t __48__PLBatteryAgent_initCleanEnergyChargingLogging__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLBatteryAgentStringUserType_block_invoke_13_classDebugEnabled = result;
  return result;
}

- (void)initializeChargingStateIntervals
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Initializing Camera Streaming Interval Tracking", buf, 2u);
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
      _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, v16, buf, v17);
      goto LABEL_9;
    }

    switch(v7)
    {
      case 6u:
        [v12 setObject:v5 forKeyedSubscript:@"timestampEnd"];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5361;
        v33[3] = &unk_279A5FC50;
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
        v36[3] = &unk_279A5FC50;
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
        v39[3] = &unk_279A5FC50;
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
          _os_log_debug_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEBUG, "open %d interval %@", buf, 0x12u);
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
            _os_log_error_impl(&dword_25EE51000, v22, OS_LOG_TYPE_ERROR, "multiple open %d intervals", buf, 8u);
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
    _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEFAULT, "initialized charging interval tracking, %lu open", buf, 0xCu);

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
    v32[3] = &unk_279A5BE78;
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
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_INFO, "closed %d interval at init: %@", v6, 0x12u);
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
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_INFO, "closed %d interval at init: %@", v6, 0x12u);
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
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_INFO, "closed %d interval at init: %@", v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5365(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:?];
  if ([v3 intValue] == -1)
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5365_cold_2();
    }

    [*(a1 + 32) setTLCOverrideValue:0];
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    [v5 setTLCOverrideValue:v3];
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5365_cold_1(v4);
    }
  }
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
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "closed %d interval", v5, 8u);
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
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "cpms: getting snapshots with trigger 0x%X", buf, 8u);
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
    v22[3] = &unk_279A5FCC0;
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
    MEMORY[0x25F8D18D0](@"com.apple.power.battery.cpms.count", 1);
    [v17 setObject:&unk_287147410 forKeyedSubscript:@"snapshotCount"];
    if (v50[24] == 1)
    {
      MEMORY[0x25F8D18D0](@"com.apple.power.battery.cpms.fullMode", 1);
      [v17 setObject:&unk_287147410 forKeyedSubscript:@"fullModeCount"];
    }

    if (*(v46 + 24) == 1)
    {
      MEMORY[0x25F8D18D0](@"com.apple.power.battery.cpms.droopCE", 1);
      [v17 setObject:&unk_287147410 forKeyedSubscript:@"droopCECount"];
    }

    if (*(v42 + 24) == 1)
    {
      MEMORY[0x25F8D18D0](@"com.apple.power.battery.cpms.source.generic", 1);
      [v17 setObject:&unk_287147410 forKeyedSubscript:@"genericSourceCount"];
    }

    if (*(v38 + 24) == 1)
    {
      MEMORY[0x25F8D18D0](@"com.apple.power.battery.cpms.source.specific", 1);
      [v17 setObject:&unk_287147410 forKeyedSubscript:@"specificSourceCount"];
    }

    if (*(v34 + 24) == 1)
    {
      MEMORY[0x25F8D18D0](@"com.apple.power.battery.cpms.source.safeharbor", 1);
      [v17 setObject:&unk_287147410 forKeyedSubscript:@"safeharborSourceCount"];
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
      [PLBatteryAgent logCPMSSnapshotWithTrigger:];
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

  v6 = [*(a1 + 32) shouldLogCPMSSnapshotWithReason:v5 withTrigger:*(a1 + 112)];
  v7 = PLLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    v9 = v5;
    if (v8)
    {
      v61 = *(a1 + 112);
      *buf = 67109376;
      v84 = v5;
      v85 = 1024;
      v86 = v61;
      _os_log_debug_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEBUG, "cpms: logging snapshot with reason %d and trigger 0x%X", buf, 0xEu);
    }

    v10 = [v3 objectForKeyedSubscript:@"timestamp"];
    v11 = [v10 unsignedLongLongValue];

    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v11 / 0x3B9ACA00)];
    v13 = [v12 convertFromSystemToMonotonic];

    v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withDate:v13];
    v15 = [v3 objectForKeyedSubscript:@"overrideFlags"];
    [v14 setObject:v15 forKeyedSubscript:@"flags"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    [v14 setObject:v16 forKeyedSubscript:@"reason"];

    *(*(*(a1 + 72) + 8) + 24) |= v9 == 2;
    v17 = [v3 objectForKeyedSubscript:@"systemCapabilitySource"];
    LOBYTE(v15) = [v17 intValue];

    LODWORD(v17) = v15;
    v18 = v15 == 0;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
    [v14 setObject:v19 forKeyedSubscript:@"source"];

    *(*(*(a1 + 80) + 8) + 24) |= v17 == 1;
    *(*(*(a1 + 88) + 8) + 24) |= v17 == 2;
    *(*(*(a1 + 96) + 8) + 24) |= v18;
    v20 = [v3 objectForKeyedSubscript:@"mode"];
    v21 = [v20 intValue];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
    [v14 setObject:v22 forKeyedSubscript:@"mode"];

    *(*(*(a1 + 104) + 8) + 24) |= v21 == 2;
    v23 = [v3 objectForKeyedSubscript:@"batteryPowerConsumption"];
    if (!v23)
    {
      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_2();
      }
    }

    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5371;
    v81[3] = &unk_279A5E4A8;
    v25 = v14;
    v82 = v25;
    v62 = v23;
    [v23 enumerateObjectsUsingBlock:v81];
    v26 = [v3 objectForKeyedSubscript:@"systemCapability"];
    if (!v26)
    {
      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_3();
      }
    }

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5372;
    v79[3] = &unk_279A5E4A8;
    v28 = v25;
    v80 = v28;
    [v26 enumerateObjectsUsingBlock:v79];
    v29 = [v3 objectForKeyedSubscript:@"droopCE"];
    [v29 floatValue];
    v31 = v30;

    v32 = [MEMORY[0x277CCABB0] numberWithInt:(v31 * 65535.0)];
    [v28 setObject:v32 forKeyedSubscript:@"droopCE"];

    v33 = [v3 objectForKeyedSubscript:@"zeroSumCE"];
    [v33 floatValue];
    v35 = v34;

    v36 = [MEMORY[0x277CCABB0] numberWithInt:(v35 * 65535.0)];
    [v28 setObject:v36 forKeyedSubscript:@"zeroSumCE"];

    v37 = [v3 objectForKeyedSubscript:@"undroopCE"];
    [v37 floatValue];
    v39 = v38;

    v40 = [MEMORY[0x277CCABB0] numberWithInt:(v39 * 65535.0)];
    [v28 setObject:v40 forKeyedSubscript:@"undroopCE"];

    v41 = [v3 objectForKeyedSubscript:@"brownoutRiskNotificationEngaged"];
    [v28 setObject:v41 forKeyedSubscript:@"brownoutRiskEngaged"];

    v42 = [v3 objectForKeyedSubscript:@"brownoutRiskSysCap"];
    [v28 setObject:v42 forKeyedSubscript:@"brownoutRiskSysCap"];

    v43 = [v3 objectForKeyedSubscript:@"brownoutRiskPu"];
    [v28 setObject:v43 forKeyedSubscript:@"brownoutRiskPu"];

    v44 = [v3 objectForKeyedSubscript:@"peakPowerPressureLevel"];
    [v28 setObject:v44 forKeyedSubscript:@"peakPowerPressureLevel"];

    v45 = [v3 objectForKeyedSubscript:@"servoCEs"];
    if (!v45)
    {
      v46 = PLLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_4();
      }
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5373;
    v77[3] = &unk_279A5E4A8;
    v47 = v28;
    v78 = v47;
    [v45 enumerateObjectsUsingBlock:v77];
    v48 = [v3 objectForKeyedSubscript:@"remCapCEFloors"];
    if (!v48)
    {
      v49 = PLLogCommon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_5();
      }
    }

    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5374;
    v75[3] = &unk_279A5E4A8;
    v7 = v47;
    v76 = v7;
    [v48 enumerateObjectsUsingBlock:v75];
    [*(a1 + 48) addObject:v7];
    v50 = [v3 objectForKeyedSubscript:@"requestedBudgets"];
    if (!v50)
    {
      v51 = PLLogCommon();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_6();
      }
    }

    v52 = [v3 objectForKeyedSubscript:@"grantedBudgets"];
    if (!v52)
    {
      v53 = PLLogCommon();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_7();
      }
    }

    v54 = objc_opt_new();
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5375;
    v70[3] = &unk_279A5CE90;
    v71 = *(a1 + 56);
    v55 = v13;
    v72 = v55;
    v56 = v54;
    v57 = *(a1 + 32);
    v73 = v56;
    v74 = v57;
    [v50 enumerateObjectsUsingBlock:v70];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5376;
    v65[3] = &unk_279A5CE90;
    v66 = v56;
    v67 = *(a1 + 56);
    v68 = v55;
    v69 = *(a1 + 32);
    v58 = v55;
    v59 = v56;
    [v52 enumerateObjectsUsingBlock:v65];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5377;
    v63[3] = &unk_279A5FC98;
    v64 = *(a1 + 64);
    [v59 enumerateKeysAndObjectsUsingBlock:v63];
  }

  else if (v8)
  {
    __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_1(v5, (a1 + 112));
  }

  v60 = *MEMORY[0x277D85DE8];
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
      __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5375_cold_1();
    }
  }
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5376(uint64_t a1, void *a2)
{
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
      __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5376_cold_1();
    }
  }
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5377(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) addObject:a3];
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5377_cold_1();
  }
}

- (void)logBTM
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)populateClientEntry:(id)a3 withBudget:(id)a4 withTemplate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v8 && v9)
  {
    v11 = [v8 objectForKeyedSubscript:@"timescales"];
    if (v11)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __62__PLBatteryAgent_populateClientEntry_withBudget_withTemplate___block_invoke;
      v13[3] = &unk_279A5D6B0;
      v14 = v10;
      v15 = v7;
      [v11 enumerateObjectsUsingBlock:v13];

      v12 = v14;
    }

    else
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryAgent populateClientEntry:withBudget:withTemplate:];
      }
    }
  }
}

void __62__PLBatteryAgent_populateClientEntry_withBudget_withTemplate___block_invoke(uint64_t a1, void *a2)
{
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
      __62__PLBatteryAgent_populateClientEntry_withBudget_withTemplate___block_invoke_cold_1();
    }
  }
}

- (void)init
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLBatteryAgent_init__block_invoke_3292_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLBatteryAgent_init__block_invoke_3292_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLBatteryAgent_init__block_invoke_3292_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __22__PLBatteryAgent_init__block_invoke_3292_cold_6(uint64_t a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [*a2 TLCOverrideValue];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __22__PLBatteryAgent_init__block_invoke_3292_cold_7(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 lastTLCCounter];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __22__PLBatteryAgent_init__block_invoke_3292_cold_8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLBatteryAgent_init__block_invoke_3292_cold_9()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLBatteryAgent_init__block_invoke_3292_cold_10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __22__PLBatteryAgent_init__block_invoke_3343_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__PLBatteryAgent_init__block_invoke_3343_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)showOrHideTLCNotification:(void *)a1 timeInTLC:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 cleanEnergyChargingEngaged];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)showOrHideTLCNotification:meetsTLCNotificationConditions:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)showOrHideTLCNotification:meetsTLCNotificationConditions:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showOrHideTLCNotification:meetsTLCNotificationConditions:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)showOrHideTLCNotification:meetsTLCNotificationConditions:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)showOrHideTLCNotification:meetsTLCNotificationConditions:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showOrHideTLCNotification:meetsTLCNotificationConditions:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showOrHideTLCNotification:(void *)a1 meetsTLCNotificationConditions:.cold.7(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 BOOLValue];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)showOrHideTLCNotification:(void *)a1 meetsTLCNotificationConditions:.cold.8(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 BOOLValue];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)showOrHideTLCNotification:meetsTLCNotificationConditions:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D3F180] BOOLForKey:@"kPLDefaultTLCNotificationSurfaced"];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showOrHideTLCNotification:meetsTLCNotificationConditions:.cold.10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showOrHideTLCNotification:meetsTLCNotificationConditions:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setupEALoggingTriggeredByConnectionEvent:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEABatteryConnectedEventToAnalyticsIgnoreLastLogTimestamp:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEABatteryConnectedTimeToAnalyticsWithEAConnectionState:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEABatteryConnectedTimeToAnalyticsWithEAConnectionState:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3669_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3669_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3669_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3701_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3759_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__PLBatteryAgent_initOperatorDependancies__block_invoke_3764_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleBDCAMALogging:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleBDCAMALogging:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleOnDeviceACAMSBC:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__PLBatteryAgent_handleOnDeviceACAMSBC___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardCalibration0withData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardCalibration0withData:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventForwardCalibration0InfowithData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardCalibration0InfowithData:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createFixedChargingIntervals:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 smartChargingEngaged];
  [a1 fixedChargingEngaged];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)createFixedChargingIntervals:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createFixedChargingIntervals:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createFixedChargingIntervals:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createFixedChargingIntervals:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createFixedChargingIntervals:.cold.6()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dateNoEarlierThan:since:withDelta:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardBatteryWithRawData:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getGaugingMitigationDict
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getIconographyStateDict
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)customConvertBase34ToBase10:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseTimeAtHighSoc:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseLowVoltageResidencyCounters:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseFlashWearLevelData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAggdIntegerValueFromEntry:forKey:withPrefix:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logBatteryConfigToCA:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logBatteryConfigToCA:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logBatteryConfigToCA:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logBatteryConfigToCA:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logBaselineToCA:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logKioskModeEntryToAggd:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)ApplyPolicyToDOFU:forSerial:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventNoneBatteryConfigWithRawData:.cold.1()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)logEventNoneBatteryConfigWithRawData:.cold.2()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)logEventNoneBatteryConfigWithRawData:.cold.3()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)logEventNoneBatteryConfigWithRawData:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventNoneBatteryConfigWithRawData:.cold.5()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)logEventNoneBatteryConfigWithRawData:.cold.6()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)logEventNoneBatteryConfigWithRawData:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventNoneBatteryConfigWithRawData:(NSObject *)a3 .cold.8(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = a1;
  *a2 = 138412290;
  *(a2 + 4) = v5;
  _os_log_debug_impl(&dword_25EE51000, a3, OS_LOG_TYPE_DEBUG, "DOFU is %@", a2, 0xCu);
}

- (void)logEventNoneBatteryConfigWithRawData:.cold.10()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addPowerMeasurementToAccounting:withStartDate:withEndDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addPowerMeasurementToAccounting:withStartDate:withEndDate:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)shouldWaitForLifetimeDataWithRawData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)flushCSMToAggdAtDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logPowerOutDetails:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logPowerOutDetails:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __37__PLBatteryAgent_logPowerOutDetails___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logPortControllerInfo:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__PLBatteryAgent_logPortControllerInfo___block_invoke_3_cold_1(uint64_t *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v9 = [a2 objectForKeyedSubscript:@"PortControllerEvtBuffer"];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logOrionInfo:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleGaugingMitigationStateCallback:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__PLBatteryAgent_batterySerialChanged___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)overrideBatteryData:withPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)overrideBatteryData:withPath:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)overrideBatteryData:withPath:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)overrideBatteryData:withPath:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deviceType
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5365_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 TLCOverrideValue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __50__PLBatteryAgent_initializeChargingStateIntervals__block_invoke_5365_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateIntervalForType:withState:andTime:selectedChargedLimit:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateIntervalForType:withState:andTime:selectedChargedLimit:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logCPMSSnapshotWithTrigger:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  OUTLINED_FUNCTION_7_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_6()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_2_cold_7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5375_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5376_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__PLBatteryAgent_logCPMSSnapshotWithTrigger___block_invoke_5377_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)populateClientEntry:withBudget:withTemplate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__PLBatteryAgent_populateClientEntry_withBudget_withTemplate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end