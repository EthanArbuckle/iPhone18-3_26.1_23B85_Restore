@interface PowerUISmartChargeManager
+ (id)manager;
- (BOOL)deviceHasEnoughPluggedInTime;
- (BOOL)deviceHasOverriddenLegitimateUsageDetection;
- (BOOL)isDEoCSupported;
- (BOOL)isDeviceWithLegitimateUsage;
- (BOOL)isExternalConnected;
- (BOOL)isMCLSupported;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldDisableChargingOverrideModel:(unint64_t)a3;
- (NSDictionary)signalDeadline;
- (PowerUISmartChargeManager)initWithDefaultsDomain:(id)a3 contextStore:(id)a4 beforeHandlingBatteryChangeCallback:(id)a5 afterHandlingBatteryChangeCallback:(id)a6;
- (double)durationToFullChargeFromBatteryLevel:(unint64_t)a3 includeTLCDelay:(BOOL)a4;
- (double)idleDurationWithEngagedCheckpoints:(id)a3 withTopOffStartCheckpoints:(id)a4 withDisabledCheckpoints:(id)a5 withTopOffStart:(id)a6 withIdleStart:(id)a7 withTemporarilyDisabledStart:(id)a8 withPluginEnd:(id)a9;
- (double)totalTemporarilyDisabledHours:(id)a3 withEngagements:(id)a4 withPluginEnd:(id)a5;
- (double)totalTopOffDurationWithTopOffStartCheckpoints:(id)a3 withFullyChargedCheckpoints:(id)a4 withTopOffStart:(id)a5 withFullyChargedDate:(id)a6 withPluginEnd:(id)a7;
- (id)adjustedFullChargeDeadlineWithSignals:(id)a3 withDesktopMode:(BOOL)a4 withFullChargeDeadline:(id)a5 withResult:(id)a6;
- (id)chargePrediction:(unint64_t)a3 fullyCharged:(BOOL)a4 previousCheckpoint:(unint64_t)a5 predictor:(unint64_t)a6;
- (id)checkpointNameFromCheckpoint:(unint64_t)a3;
- (id)cloakingMetrics:(id)a3 withIdleCheckpoints:(id)a4 withIdleStart:(id)a5 withTopOffStart:(id)a6 withPluginEnd:(id)a7;
- (id)computeSignalDeadline;
- (id)constructAnalyticsStatus;
- (id)constructAnalyticsStatusFromEvents:(id)a3;
- (id)constructDailyStats:(id)a3;
- (id)dailyStatsFromLastReported:(id)a3;
- (id)defaultDateToDisableUntilGivenDate:(id)a3;
- (id)eligibleEngagementIntervalFromTimelineEvents:(id)a3;
- (id)genericOBCFailureNotification:(id)a3;
- (id)getCECLifetimeValues;
- (id)getCurrentSystemChargeLimit;
- (id)lastAcquiredLocation;
- (id)mcmActiveNotificationRequest;
- (id)readAndRemoveRecentEngagements;
- (id)readDateForPreferenceKey:(id)a3;
- (id)readNumberForPreferenceKey:(id)a3;
- (id)readStringForPreferenceKey:(id)a3;
- (id)recentEngagements;
- (id)setFullChargeDeadline:(id)a3;
- (id)shouldDisableChargingAsOfDate:(id)a3 atBatteryLevel:(unint64_t)a4 overrideAllSignals:(BOOL)a5 withPredictor:(id)a6 bypassSaved:(BOOL)a7;
- (id)shouldDisableChargingAtBatteryLevel:(unint64_t)a3 withPredictor:(id)a4;
- (id)stringFromDecisionMaker:(int64_t)a3 decisionDate:(id)a4;
- (id)stringFromInterval:(id)a3;
- (id)stringFromState:(unint64_t)a3;
- (id)timeStringFromDate:(id)a3;
- (id)ttrURLforGenericFailure:(id)a3;
- (id)uiDeadlineFromFullChargeDeadline:(id)a3 atDate:(id)a4;
- (id)updateAnalyticsWithPluginMetrics:(id)a3 withBatteryLevel:(int)a4;
- (unint64_t)currentChargeLimit;
- (unint64_t)currentDecisionMaker;
- (unint64_t)currentModeOfOperation;
- (unint64_t)mostRecentOBCModeOfoperationFromTimeline;
- (unint64_t)projectedBatteryLevelForDuration:(unint64_t)a3 withInitialBatteryLevel:(unint64_t)a4;
- (unsigned)getUISoCChargeLimit;
- (void)accessoryConnectionAttached:(id)a3 type:(int)a4;
- (void)accessoryConnectionDetached:(id)a3;
- (void)accessoryNFCConnectionCallback:(id)a3;
- (void)addEngagementFromDate:(id)a3 withDuration:(double)a4;
- (void)addPowerLogEventForCheckpoint:(unint64_t)a3 decisionSignalID:(id)a4 decisionDate:(id)a5;
- (void)cacheCurrentDEoCBehaviorForced:(BOOL)a3;
- (void)cecFullChargeDeadlineWithHandler:(id)a3;
- (void)checkWhetherMCLTempDisablementCanBeClearedOnPlugin:(BOOL)a3;
- (void)cleanupOverrides;
- (void)clearAllNotificationState;
- (void)clearPluginTimeline;
- (void)client:(id)a3 getMCLLimitWithHandler:(id)a4;
- (void)client:(id)a3 setCECState:(unint64_t)a4 withHandler:(id)a5;
- (void)client:(id)a3 setDEoCState:(unint64_t)a4 withHandler:(id)a5;
- (void)client:(id)a3 setMCMState:(unint64_t)a4 withHandler:(id)a5;
- (void)client:(id)a3 setState:(unint64_t)a4 withHandler:(id)a5;
- (void)currentChargeLimitWithHandler:(id)a3;
- (void)currentLeewayWithHandler:(id)a3;
- (void)disableCharging;
- (void)disableDEoC;
- (void)disableMCL;
- (void)dispatchAlarmAfter:(int64_t)a3 withName:(id)a4;
- (void)enableCharging;
- (void)enableDEoC;
- (void)enableMCL;
- (void)engageManualChargeLimit;
- (void)enterDevelopmentMode;
- (void)evaluateChargeLimitRecommendationForced:(BOOL)a3;
- (void)evaluateIfDEoCDevice;
- (void)forceDEoCReevaluation;
- (void)fullChargeDeadlineWithHandler:(id)a3;
- (void)getDEoCPredictionsWithHandler:(id)a3;
- (void)handleAlarmEvent:(id)a3;
- (void)handleCallback:(BOOL)a3;
- (void)handleDebounceTimerEvent;
- (void)handleInternalCarryPromptEvent;
- (void)handleNewBatteryLevelForMCL:(int)a3 whileExternalConnected:(BOOL)a4;
- (void)handleNotificationResponse:(id)a3;
- (void)handleTopOffSupervisorEvent;
- (void)handleTopOffSupervisorEventInternal;
- (void)handleUnplugAtDate:(id)a3 withBatteryLevel:(int)a4;
- (void)handleXPCActivityOnBoot;
- (void)incomingBDCRequest:(id)a3;
- (void)isCECCurrentlyEnabledWithHandler:(id)a3;
- (void)isCECSupportedWithHandler:(id)a3;
- (void)isDEoCCurrentlyEnabledWithHandler:(id)a3;
- (void)isDEoCSupportedWithHandler:(id)a3;
- (void)isMCLCurrentlyEnabledWithHandler:(id)a3;
- (void)isMCLSupportedWithHandler:(id)a3;
- (void)isMCMCurrentlyEnabledWithHandler:(id)a3;
- (void)isOBCEngagedOrChargeLimitedWithHandler:(id)a3;
- (void)isOBCSupportedWithHandler:(id)a3;
- (void)isSmartChargingCurrentlyEnabledWithHandler:(id)a3;
- (void)legacy_isOBCEngagedWithHandler:(id)a3;
- (void)listMonitorSignals;
- (void)loadCheckpoint;
- (void)loadDefaults;
- (void)mcmDisableCharging;
- (void)mcmEnableCharging;
- (void)monitor:(id)a3 maySuggestNewFullChargeDeadline:(id)a4;
- (void)monitorMayInvalidateDEoCCache:(id)a3;
- (void)pluginTimelineAddEvent:(id)a3 atDate:(id)a4 withBatteryLevel:(unint64_t)a5;
- (void)postOBCNotificationWithTopOff:(BOOL)a3;
- (void)powerLogStatusWithHandler:(id)a3;
- (void)powerStateChangedCallback;
- (void)promptBDCToQueryCurrentState;
- (void)recomputeEmpiricalTimeToFullCharge;
- (void)recordAnalytics;
- (void)recordDEoCAnalytics:(id)a3;
- (void)registerBDCXPC;
- (void)reportAggDKeys:(id)a3;
- (void)reportBatteryHealthMetrics;
- (void)reportMonthlyData;
- (void)requestPeriodicCheck;
- (void)requestPeriodicCheckWithDuration:(double)a3 withAlarmKey:(const char *)a4;
- (void)resetDevelopmentMode;
- (void)resetDeviceHasLegitimateUsage;
- (void)resetEngagementOverrideWithHandler:(id)a3;
- (void)resetState;
- (void)sendBDCData:(id)a3 withMessage:(id)a4;
- (void)sendChargeLimitRecommendationAnalytics;
- (void)sendDEoCAnalyticsToCA:(id)a3;
- (void)sendHistoricalDEoCEngagementEventToCA:(id)a3;
- (void)sendLegacyData;
- (void)setCheckpoint:(unint64_t)a3 withSelector:(SEL)a4 forceWrite:(BOOL)a5;
- (void)setCurrentState:(unint64_t)a3;
- (void)setDate:(id)a3 forPreferenceKey:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setTemporarilyDisabled:(BOOL)a3 until:(id)a4;
- (void)shouldMCMBeDisplayedWithHandler:(id)a3;
- (void)smartChargingUIStateWithHandler:(id)a3;
- (void)startAllMonitoring;
- (void)startFidgetMitigationTimer;
- (void)statusWithHandler:(id)a3;
- (void)stopAllMonitoring;
- (void)tempDisableMCL;
- (void)tmpDisableMCLViaClient:(id)a3 withHandler:(id)a4;
- (void)updateChargingTimeSaved;
- (void)updateCurrentDEoCStatusAsGaugingMitigated;
- (void)updateDecisionMakerID:(int64_t)a3 withCheckpoint:(unint64_t)a4;
- (void)updateNotificationSettings:(BOOL)a3;
- (void)updateResourceHint;
@end

@implementation PowerUISmartChargeManager

- (PowerUISmartChargeManager)initWithDefaultsDomain:(id)a3 contextStore:(id)a4 beforeHandlingBatteryChangeCallback:(id)a5 afterHandlingBatteryChangeCallback:(id)a6
{
  v254[4] = *MEMORY[0x277D85DE8];
  v159 = a3;
  v160 = a4;
  v166 = a5;
  v163 = a6;
  v249.receiver = self;
  v249.super_class = PowerUISmartChargeManager;
  v11 = [(PowerUISmartChargeManager *)&v249 init];
  if (v11)
  {
    v154 = os_transaction_create();
    v12 = os_log_create("com.apple.powerui.smartcharging", "smartChargeManager");
    v13 = *(v11 + 12);
    *(v11 + 12) = v12;

    v14 = os_log_create("com.apple.powerui.smartcharging", "smartChargeManagerVerbose");
    v15 = *(v11 + 13);
    *(v11 + 13) = v14;

    objc_storeStrong(v11 + 6, a4);
    objc_storeStrong(v11 + 7, a3);
    v16 = +[PowerUIChargingController sharedInstance];
    v17 = *(v11 + 52);
    *(v11 + 52) = v16;

    v18 = +[PowerUIAnalyticsManager sharedInstance];
    v19 = *(v11 + 53);
    *(v11 + 53) = v18;

    v158 = [v11 readStringForPreferenceKey:@"bootUUIDOnLastInit"];
    v162 = +[PowerUISmartChargeUtilities getCurrentBootSessionUUID];
    v20 = [v162 isEqualToString:v158];
    [v11 setString:v162 forPreferenceKey:@"bootUUIDOnLastInit"];
    v21 = *(v11 + 12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = v21;
      v24 = [v22 numberWithBool:v20 ^ 1u];
      *buf = 138412290;
      v251 = v24;
      _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "SmartChargeManager initializing. Was the device restarted: %@", buf, 0xCu);
    }

    if (v20)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    [*(v11 + 53) submitEngagementEventWithBatteryLevel:0 targetSoC:0 predictedEndOfCharge:0 modeOfOperation:0 eventType:v25];
    if (+[PowerUISmartChargeUtilities isiPhone])
    {
      kTopOffProtectionSoCFloor = 1;
    }

    v26 = MEMORY[0x21CEF8A60](v166);
    v27 = *(v11 + 8);
    *(v11 + 8) = v26;

    v28 = MEMORY[0x21CEF8A60](v166);
    v29 = *(v11 + 9);
    *(v11 + 9) = v28;

    if ((v20 & 1) == 0)
    {
      [*(v11 + 52) clearAllChargeLimits];
    }

    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_create("com.apple.powerui.queue", v30);
    v32 = *(v11 + 23);
    *(v11 + 23) = v31;

    v33 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v34 = *(v11 + 61);
    *(v11 + 61) = v33;

    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    [v35 addObserver:v11 selector:sel_powerStateChangedCallback name:*MEMORY[0x277CCA5E8] object:0];

    v36 = os_log_create("com.apple.powerui.mobilechargemode", "");
    v37 = *(v11 + 14);
    *(v11 + 14) = v36;

    v38 = [MEMORY[0x277CCA9A0] defaultCenter];
    v39 = *(v11 + 11);
    *(v11 + 11) = v38;

    v165 = [v11 readNumberForPreferenceKey:@"MCMCurrentState"];
    if (!v165)
    {
      [v11 setNumber:&unk_282D4E5A8 forPreferenceKey:@"MCMCurrentState"];
      v165 = &unk_282D4E5A8;
    }

    v164 = [v11 readNumberForPreferenceKey:@"MCMForbidsCharging"];
    if (!v164)
    {
      [v11 setNumber:MEMORY[0x277CBEC28] forPreferenceKey:@"MCMForbidsCharging"];
      v164 = MEMORY[0x277CBEC28];
    }

    *(v11 + 17) = 0;
    v40 = [v165 unsignedIntValue];
    *(v11 + 54) = v40;
    if (v40 == 2)
    {
      [v11 startFidgetMitigationTimer];
    }

    *(v11 + 18) = [v164 BOOLValue];
    v41 = [MEMORY[0x277CFD210] sharedInstance];
    v42 = *(v11 + 55);
    *(v11 + 55) = v41;

    if ([v11 isMCMSupported])
    {
      [*(v11 + 55) registerDelegate:v11];
    }

    v43 = [v11 readNumberForPreferenceKey:@"NumberOfTimesMCMNotificationWasDisplayed"];
    v157 = v43;
    if (v43)
    {
      *(v11 + 59) = [v43 unsignedIntValue];
    }

    else
    {
      *(v11 + 59) = 0;
      [v11 setNumber:&unk_282D4E5C0 forPreferenceKey:@"NumberOfTimesMCMNotificationWasDisplayed"];
    }

    v44 = [MEMORY[0x277CFE358] keyPathWithKey:@"/charging/topOffCheckpoint"];
    v45 = *(v11 + 10);
    *(v11 + 10) = v44;

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"smartChargeManager init before trialManager"];
    v46 = [[PowerUITrialManager alloc] initWithDefaultsDomain:*(v11 + 7)];
    v47 = *(v11 + 51);
    *(v11 + 51) = v46;

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"smartChargeManager init before monitors"];
    v48 = [PowerUIAlarmSignalMonitor monitorWithDelegate:v11 trialManager:*(v11 + 51) withContext:*(v11 + 6)];
    v254[0] = v48;
    v49 = [PowerUICalendarSignalMonitor monitorWithDelegate:v11 trialManager:*(v11 + 51) withContext:*(v11 + 6)];
    v254[1] = v49;
    v50 = [PowerUILocationSignalMonitor monitorWithDelegate:v11 trialManager:*(v11 + 51) withContext:*(v11 + 6)];
    v254[2] = v50;
    v51 = [PowerUIWalletSignalMonitor monitorWithDelegate:v11];
    v254[3] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v254 count:4];
    v53 = *(v11 + 41);
    *(v11 + 41) = v52;

    *(v11 + 16) = 0;
    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"smartChargeManager init before CEC manager"];
    if (!+[PowerUICECUtilities isDemoDevice])
    {
      v54 = +[PowerUICECManager manager];
      if (v54)
      {
        v55 = [*(v11 + 41) mutableCopy];
        [v55 addObject:v54];
        v56 = *(v11 + 41);
        *(v11 + 41) = v55;
      }
    }

    *(v11 + 4) = -1;
    if (([v11 isExternalConnected] & v20) == 1)
    {
      *(v11 + 9) = 1;
      v57 = *(v11 + 12);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v57, OS_LOG_TYPE_DEFAULT, "Device is still plugged in on daemon restart.", buf, 2u);
      }
    }

    *(v11 + 10) = -1;
    *(v11 + 14) = 0;
    *(v11 + 36) = -1;
    v58 = [v11 readNumberForPreferenceKey:@"engagementsLastMonthBucket"];
    v59 = *(v11 + 29);
    *(v11 + 29) = v58;

    if (!*(v11 + 29))
    {
      *(v11 + 29) = &unk_282D4E5D8;
    }

    v60 = [v11 readNumberForPreferenceKey:@"numberOfPluginEvents"];
    v61 = *(v11 + 30);
    *(v11 + 30) = v60;

    if (!*(v11 + 30))
    {
      *(v11 + 30) = &unk_282D4E5D8;
    }

    v62 = [v11 readNumberForPreferenceKey:@"medianPluginLength"];
    v63 = *(v11 + 31);
    *(v11 + 31) = v62;

    if (!*(v11 + 31))
    {
      *(v11 + 31) = &unk_282D4E5D8;
    }

    v161 = [v11 readNumberForPreferenceKey:@"previousDecisionMaker"];
    if (v161)
    {
      *(v11 + 36) = [v161 integerValue];
    }

    v64 = [v11 readDateForPreferenceKey:@"previousDecisionMakerDate"];
    v65 = *(v11 + 38);
    *(v11 + 38) = v64;

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"smartChargeManager init before predictor"];
    v66 = [(PowerUIMLTwoStageModelPredictor *)[PowerUIMLPhonePredictor alloc] initWithDefaultsDomain:*(v11 + 7) withContextStore:*(v11 + 6) withTrialManager:*(v11 + 51)];
    v67 = *(v11 + 39);
    *(v11 + 39) = v66;

    v68 = [[PowerUIIntelligenceManager alloc] initWithDefaultsDomain:*(v11 + 7) withContextStore:*(v11 + 6) withTrialManager:*(v11 + 51)];
    v69 = *(v11 + 40);
    *(v11 + 40) = v68;

    if (*(v11 + 9) >= 1)
    {
      v70 = +[PowerUISmartChargeUtilities lastPluggedInDate];
      [*(v11 + 39) setPluginDate:v70];
    }

    objc_initWeak(&location, v11);
    v71 = *(v11 + 51);
    v246[0] = MEMORY[0x277D85DD0];
    v246[1] = 3221225472;
    v246[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke;
    v246[3] = &unk_2782D4C58;
    objc_copyWeak(&v247, &location);
    [v71 addUpdateHandler:v246];
    if (!+[PowerUISmartChargeUtilities isUltraWatch])
    {
      kMaxDEoCBatteryDrain = 1;
    }

    [v11 handleXPCActivityOnBoot];
    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"smartChargeManager init before loadDefaults"];
    [v11 loadDefaults];
    if ((v20 & 1) != 0 || *(v11 + 15) == 1)
    {
      [v11 loadCheckpoint];
      v72 = *(v11 + 12);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v11 + 15)];
        *buf = 138412290;
        v251 = v73;
        _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Loading checkpoint value: %@", buf, 0xCu);
      }
    }

    else
    {
      [v11 setCheckpoint:0 withSelector:a2 forceWrite:1];
      v153 = *(v11 + 12);
      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v153, OS_LOG_TYPE_DEFAULT, "Device was restarted, reset checkpoint.", buf, 2u);
      }
    }

    v74 = MEMORY[0x277CBEAA8];
    v75 = [v11 readNumberForPreferenceKey:@"disabledUntil"];
    [v75 doubleValue];
    v76 = [v74 dateWithTimeIntervalSinceReferenceDate:?];
    v77 = *(v11 + 18);
    *(v11 + 18) = v76;

    [v11 setTemporarilyDisabled:1 until:*(v11 + 18)];
    v78 = *(v11 + 12);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v79 = *(v11 + 18);
      [v79 timeIntervalSinceNow];
      *buf = 138412546;
      v251 = v79;
      v252 = 1024;
      v253 = v80 > 0.0;
      _os_log_impl(&dword_21B766000, v78, OS_LOG_TYPE_DEFAULT, "Temp disabled until date: %@ (temp disabled: %u)", buf, 0x12u);
    }

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"smartChargeManager init before mitigationManager"];
    v81 = +[PowerUIBatteryMitigationManager sharedManager];
    v82 = *(v11 + 48);
    *(v11 + 48) = v81;

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"smartChargeManager init before BDC manager"];
    v83 = +[PowerUIBDCDataManager sharedInstance];
    v84 = *(v11 + 49);
    *(v11 + 49) = v83;

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"smartChargeManager init after BDC manager"];
    if (+[PowerUISmartChargeUtilities isInternalBuild])
    {
      kMaximumDurationUntilFullyCharged = 0x40E89C0000000000;
    }

    if (*(v11 + 62) == 1)
    {
      [v11 engageManualChargeLimit];
    }

    v85 = MEMORY[0x277CFE360];
    v86 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
    v87 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
    v88 = [MEMORY[0x277CFE338] keyPathForForegroundApp];
    v89 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
    v156 = [v85 predicateForKeyPath:v86 withFormat:@"(SELF.%@.value.rawExternalConnected = %@) AND NOT (SELF.%@.value = %@) AND NOT (SELF.%@.value.fullyCharged = %@)", v87, MEMORY[0x277CBEC38], v88, @"com.apple.camera", v89, &unk_282D4E5F0];

    v242[0] = MEMORY[0x277D85DD0];
    v242[1] = 3221225472;
    v242[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_999;
    v242[3] = &unk_2782D4CA8;
    v90 = v11;
    v243 = v90;
    v244 = v166;
    v245 = v163;
    v91 = MEMORY[0x21CEF8A60](v242);
    v92 = MEMORY[0x277CFE360];
    v93 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
    v94 = [v92 predicateForChangeAtKeyPath:v93];

    v95 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.smartcharge" contextualPredicate:v156 clientIdentifier:@"com.apple.powerui.smartChargeManager" callback:v91];
    v96 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.smartcharge.unplug" contextualPredicate:v94 clientIdentifier:@"com.apple.powerui.smartChargeManager" callback:v91];
    [*(v11 + 6) registerCallback:v95];
    [*(v11 + 6) registerCallback:v96];
    v97 = *(v11 + 23);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3;
    block[3] = &unk_2782D3EA8;
    v98 = v90;
    v241 = v98;
    dispatch_async(v97, block);
    v99 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.powerui.smartChargeManager"];
    v100 = v98[50];
    v98[50] = v99;

    [v98[50] setDelegate:v98];
    [v98[50] resume];
    [v98 registerBDCXPC];
    *buf = 0;
    v101 = *(v11 + 23);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_4;
    handler[3] = &unk_2782D3E60;
    v102 = v98;
    v239 = v102;
    notify_register_dispatch("AppleLanguagePreferencesChangedNotification", buf, v101, handler);
    out_token = 0;
    v103 = *(v11 + 23);
    v235[0] = MEMORY[0x277D85DD0];
    v235[1] = 3221225472;
    v235[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1020;
    v235[3] = &unk_2782D3E60;
    v104 = v102;
    v236 = v104;
    notify_register_dispatch("com.apple.powerui.checkpoint", &out_token, v103, v235);
    v234 = 0;
    v105 = [@"com.apple.smartcharging.defaultschanged" UTF8String];
    v106 = *(v11 + 23);
    v232[0] = MEMORY[0x277D85DD0];
    v232[1] = 3221225472;
    v232[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1021;
    v232[3] = &unk_2782D3E60;
    v107 = v104;
    v233 = v107;
    notify_register_dispatch(v105, &v234, v106, v232);
    v231 = 0;
    v108 = *(v11 + 23);
    v229[0] = MEMORY[0x277D85DD0];
    v229[1] = 3221225472;
    v229[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3_1023;
    v229[3] = &unk_2782D3E60;
    v109 = v107;
    v230 = v109;
    notify_register_dispatch("com.apple.powerui.requiredFullCharge", &v231, v108, v229);
    v228 = 0;
    v110 = *(v11 + 23);
    v226[0] = MEMORY[0x277D85DD0];
    v226[1] = 3221225472;
    v226[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1025;
    v226[3] = &unk_2782D3E60;
    v111 = v109;
    v227 = v111;
    notify_register_dispatch("com.apple.powerui.ptoengaged", &v228, v110, v226);
    v225 = 0;
    v112 = *(v11 + 23);
    v223[0] = MEMORY[0x277D85DD0];
    v223[1] = 3221225472;
    v223[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1027;
    v223[3] = &unk_2782D3E60;
    v113 = v111;
    v224 = v113;
    notify_register_dispatch("com.apple.powerui.ttr", &v225, v112, v223);
    v222 = 0;
    v114 = *(v11 + 23);
    v219[0] = MEMORY[0x277D85DD0];
    v219[1] = 3221225472;
    v219[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3_1029;
    v219[3] = &unk_2782D4CD0;
    v115 = v113;
    v220 = v115;
    v221 = a2;
    notify_register_dispatch("com.apple.system.powersources.chargingtofulloverride", &v222, v114, v219);
    v218 = 0;
    v116 = *(v11 + 23);
    v216[0] = MEMORY[0x277D85DD0];
    v216[1] = 3221225472;
    v216[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1031;
    v216[3] = &unk_2782D3E60;
    v117 = v115;
    v217 = v117;
    notify_register_dispatch("com.apple.powerui.computehistorical", &v218, v116, v216);
    v215 = 0;
    v118 = *(v11 + 23);
    v213[0] = MEMORY[0x277D85DD0];
    v213[1] = 3221225472;
    v213[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1033;
    v213[3] = &unk_2782D3E60;
    v119 = v117;
    v214 = v119;
    notify_register_dispatch("com.apple.powerui.testMCMActiveNotificationRequest", &v215, v118, v213);
    v212 = 0;
    v120 = *(v11 + 23);
    v210[0] = MEMORY[0x277D85DD0];
    v210[1] = 3221225472;
    v210[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1035;
    v210[3] = &unk_2782D3E60;
    v121 = v119;
    v211 = v121;
    notify_register_dispatch("com.apple.powerui.genericttr", &v212, v120, v210);
    v209 = 0;
    v122 = *(v11 + 23);
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3_1040;
    v207[3] = &unk_2782D3E60;
    v123 = v121;
    v208 = v123;
    notify_register_dispatch("com.apple.powerui.checklocation", &v209, v122, v207);
    v206 = 0;
    v124 = *(v11 + 23);
    v204[0] = MEMORY[0x277D85DD0];
    v204[1] = 3221225472;
    v204[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1042;
    v204[3] = &unk_2782D3E60;
    v125 = v123;
    v205 = v125;
    notify_register_dispatch("com.apple.powerui.testMonthlyAnalytics", &v206, v124, v204);
    v203 = 0;
    v126 = *(v11 + 23);
    v201[0] = MEMORY[0x277D85DD0];
    v201[1] = 3221225472;
    v201[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1044;
    v201[3] = &unk_2782D3E60;
    v127 = v125;
    v202 = v127;
    notify_register_dispatch("com.apple.powerui.testHardwareCheck", &v203, v126, v201);
    v200 = 0;
    v128 = *(v11 + 23);
    v198[0] = MEMORY[0x277D85DD0];
    v198[1] = 3221225472;
    v198[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1049;
    v198[3] = &unk_2782D3E60;
    v129 = v127;
    v199 = v129;
    notify_register_dispatch("com.apple.powerui.evaluateDEoC", &v200, v128, v198);
    v197 = 0;
    v130 = *(v11 + 23);
    v195[0] = MEMORY[0x277D85DD0];
    v195[1] = 3221225472;
    v195[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1051;
    v195[3] = &unk_2782D3E60;
    v131 = v129;
    v196 = v131;
    notify_register_dispatch("com.apple.powerui.printBiomeStreams", &v197, v130, v195);
    v194 = 0;
    v132 = *(v11 + 23);
    v192[0] = MEMORY[0x277D85DD0];
    v192[1] = 3221225472;
    v192[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1053;
    v192[3] = &unk_2782D3E60;
    v133 = v131;
    v193 = v133;
    notify_register_dispatch("com.apple.powerui.pluginEvents", &v194, v132, v192);
    v191 = 0;
    v134 = *(v11 + 23);
    v189[0] = MEMORY[0x277D85DD0];
    v189[1] = 3221225472;
    v189[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1055;
    v189[3] = &unk_2782D3E60;
    v135 = v133;
    v190 = v135;
    notify_register_dispatch("com.apple.powerui.gaugingStatistics", &v191, v134, v189);
    v188 = 0;
    v136 = *(v11 + 23);
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = 3221225472;
    v186[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1057;
    v186[3] = &unk_2782D3E60;
    v137 = v135;
    v187 = v137;
    notify_register_dispatch("com.apple.powerui.evaluateChargeLimitRecommendation", &v188, v136, v186);
    v185 = 0;
    v138 = *(v11 + 23);
    v183[0] = MEMORY[0x277D85DD0];
    v183[1] = 3221225472;
    v183[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1059;
    v183[3] = &unk_2782D3E60;
    v139 = v137;
    v184 = v139;
    notify_register_dispatch("com.apple.powerui.postChargeLimitRecommendation", &v185, v138, v183);
    v182 = 0;
    v140 = *(v11 + 23);
    v180[0] = MEMORY[0x277D85DD0];
    v180[1] = 3221225472;
    v180[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3_1061;
    v180[3] = &unk_2782D3E60;
    v141 = v139;
    v181 = v141;
    notify_register_dispatch("com.apple.powerui.testTmpDisableChargeLimit", &v182, v140, v180);
    v179 = 0;
    v142 = *(v11 + 23);
    v177[0] = MEMORY[0x277D85DD0];
    v177[1] = 3221225472;
    v177[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_4_1063;
    v177[3] = &unk_2782D3E60;
    v143 = v141;
    v178 = v143;
    notify_register_dispatch("com.apple.powerui.testCheckForTempDisabled", &v179, v142, v177);
    v144 = *(v11 + 23);
    v175[0] = MEMORY[0x277D85DD0];
    v175[1] = 3221225472;
    v175[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_5;
    v175[3] = &unk_2782D3E60;
    v145 = v143;
    v176 = v145;
    notify_register_dispatch("com.apple.perfpowerservices.reportobcanalytics", v143 + 7, v144, v175);
    v146 = *MEMORY[0x277D86238];
    v173[0] = MEMORY[0x277D85DD0];
    v173[1] = 3221225472;
    v173[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1065;
    v173[3] = &unk_2782D48D8;
    v147 = v145;
    v174 = v147;
    xpc_activity_register("com.apple.poweruiagent.reportAnalyticsRepeating", v146, v173);
    v171[0] = MEMORY[0x277D85DD0];
    v171[1] = 3221225472;
    v171[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1068;
    v171[3] = &unk_2782D48D8;
    v148 = v147;
    v172 = v148;
    xpc_activity_register("com.apple.poweruiagent.reportMonthlyAnalytics", v146, v171);
    v169[0] = MEMORY[0x277D85DD0];
    v169[1] = 3221225472;
    v169[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1069;
    v169[3] = &unk_2782D48D8;
    v149 = v148;
    v170 = v149;
    xpc_activity_register("com.apple.poweruiagent.reportBatteryHealthMetrics", v146, v169);
    if ([v149 isMCLSupported])
    {
      v167[0] = MEMORY[0x277D85DD0];
      v167[1] = 3221225472;
      v167[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1070;
      v167[3] = &unk_2782D48D8;
      v168 = v149;
      xpc_activity_register("com.apple.poweruiagent.evaluateRecommendedLimit", v146, v167);
    }

    else
    {
      xpc_activity_unregister("com.apple.poweruiagent.evaluateRecommendedLimit");
    }

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of smartChargeManager init"];

    objc_destroyWeak(&v247);
    objc_destroyWeak(&location);
  }

  v150 = *(v11 + 12);
  if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v150, OS_LOG_TYPE_DEFAULT, "smartChargeManager init complete!", buf, 2u);
  }

  v151 = *MEMORY[0x277D85DE8];
  return v11;
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);

  if (v1)
  {
    v2 = objc_loadWeakRetained(&to);
    v3 = [v2 modelTwoStagePredictor];
    [v3 loadTrial];
  }

  objc_destroyWeak(&to);
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_999(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2;
  block[3] = &unk_2782D4C80;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  dispatch_sync(v2, block);
}

uint64_t __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2[8])
  {
    (*(a1[5] + 16))();
    v2 = a1[4];
  }

  result = [v2 handleCallback];
  if (*(a1[4] + 72))
  {
    v4 = *(a1[6] + 16);

    return v4();
  }

  return result;
}

uint64_t __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3(uint64_t a1)
{
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v2 = +[PowerUINotificationManager sharedInstance];
    [v2 cancelNotificationRequestWithIdentifier:@"com.apple.powerui.note.location"];
  }

  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 forceDEoCReevaluation];
  }

  else if ([v5 isExternalConnected])
  {
    [*(a1 + 32) evaluateIfDesktopDevice];
  }

  v6 = *(a1 + 32);

  return [v6 handleCallback];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_21B766000, v1, OS_LOG_TYPE_DEFAULT, "Language preference has changed, exit daemon!", v2, 2u);
  }

  exit(0);
}

uint64_t __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1020(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) handleNewBatteryLevel:state64 - 100 * ((state64 / 0x64) & 0x3FFFFFFF) whileExternalConnected:state64 > 0x64 fullyCharged:0];
}

uint64_t __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1021(uint64_t a1)
{
  [*(a1 + 32) loadDefaults];
  v2 = *(a1 + 32);

  return [v2 handleCallback];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3_1023(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) monitors];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 138412546;
    v12 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [*(a1 + 32) log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 requiredFullChargeDate];
          *buf = v12;
          v18 = v8;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "%@ requires full charge by %@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1025(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  if (state64 == 42)
  {
    v3 = +[PowerUINotificationManager sharedInstance];
    [v3 removeAllNotifications];
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4[19])
    {
      [v4 postOBCNotificationWithTopOff:state64 != 0];
    }

    else
    {
      v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:21600.0];
      v6 = *(a1 + 32);
      v7 = *(v6 + 152);
      *(v6 + 152) = v5;

      [*(a1 + 32) postOBCNotificationWithTopOff:state64 != 0];
      v8 = *(a1 + 32);
      v9 = *(v8 + 152);
      *(v8 + 152) = 0;
    }
  }
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1027(uint64_t a1)
{
  v2 = +[PowerUINotificationManager sharedInstance];
  [v2 removeAllNotifications];

  v7 = +[PowerUINotificationManager sharedInstance];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 smartTopOffFailureNotificationAtBatteryLevel:42 withDate:v4];
  v6 = [v7 postNotificationWithRequest:v5];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3_1029(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 384) fetchCurrentMitigationState];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  if (v2)
  {
    if (os_log_type_enabled(*(v3 + 96), OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 384);
      v6 = v4;
      v11[0] = 67109120;
      v11[1] = [v5 mitigationsCurrentlyEnabled];
      _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Gauging mitigation state changed, new state: %d", v11, 8u);
    }

    if ([*(*(a1 + 32) + 384) mitigationsCurrentlyEnabled])
    {
      [*(a1 + 32) updateCurrentDEoCStatusAsGaugingMitigated];
    }

    if ([PowerUISmartChargeUtilities isPluggedInWithContext:*(*(a1 + 32) + 48)])
    {
      v7 = [*(*(a1 + 32) + 384) mitigationsCurrentlyEnabled];
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      if (v7)
      {
        [v8 setCheckpoint:6 withSelector:v9];
        [*(a1 + 32) clearAllNotificationState];
      }

      else
      {
        [v8 setCheckpoint:0 withSelector:v9];
      }

      [*(a1 + 32) handleCallback:1];
    }
  }

  else if (os_log_type_enabled(*(v3 + 96), OS_LOG_TYPE_DEBUG))
  {
    __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3_1029_cold_1();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1031(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [PowerUISmartChargeUtilities historicalFullChargeDurationStartingAt:80 withMinimumPluginDuration:1200];
  v3 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    [v2 percentile:0.95];
    v7 = 138412546;
    v8 = v2;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Durations are %@, and 95th percentile is %.0lf", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1033(uint64_t a1)
{
  v4 = +[PowerUINotificationManager sharedInstance];
  v2 = [*(a1 + 32) mcmActiveNotificationRequest];
  v3 = [v4 postNotificationWithRequest:v2];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1035(uint64_t a1)
{
  v2 = +[PowerUINotificationManager sharedInstance];
  [v2 removeAllNotifications];

  v5 = +[PowerUINotificationManager sharedInstance];
  v3 = [*(a1 + 32) genericOBCFailureNotification:@"TTR Debugging"];
  v4 = [v5 postNotificationWithRequest:v3];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_3_1040(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 328);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412290;
    v14 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if ([v8 signalID] == 4)
        {
          v9 = v8;
          v10 = *(*(a1 + 32) + 96);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v10;
            v12 = [v9 requiredFullChargeDate];
            *buf = v14;
            v20 = v12;
            _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Required full charge date from location monitor: %@", buf, 0xCu);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1044(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v3 numberWithBool:{objc_msgSend(v4, "isDEoCSupported")}];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{+[PowerUISmartChargeUtilities isDEoCDryRunSupported](PowerUISmartChargeUtilities, "isDEoCDryRunSupported")}];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:MGGetBoolAnswer()];
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "DEoC Supported: %@ - DEoC DryRun Supported: %@ - BOOL answer: %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1051(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 424) printExistingEvents];
  v2 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 424);
    v4 = MEMORY[0x277CBEAA8];
    v5 = v2;
    v6 = [v4 distantPast];
    v7 = [v3 chargingStatisticsSince:v6];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "chargingStatisticsSince: %@", &v15, 0xCu);
  }

  v8 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Get charging statistics since last charge session", &v15, 2u);
  }

  v9 = +[PowerUISmartChargeUtilities lastPluggedInDate];
  v10 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(a1 + 32) + 424);
    v12 = v10;
    v13 = [v11 chargingStatisticsSince:v9];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "chargingStatistics since last charge session: %@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1053(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Charge sessions WITHOUT filtering debounces:", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  [*(*(a1 + 32) + 312) minInputChargeDuration];
  v4 = [PowerUISmartChargeUtilities pluginEventsBefore:"pluginEventsBefore:withMinimumDuration:ignoringDisconnectsShorterThan:" withMinimumDuration:v3 ignoringDisconnectsShorterThan:?];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v36;
    *&v7 = 138412546;
    v30 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(a1 + 32) + 96);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(&v35 + 1) + 8 * i);
          v13 = v11;
          v14 = [v12 startDate];
          v15 = [v12 endDate];
          *buf = v30;
          v41 = v14;
          v42 = 2112;
          v43 = v15;
          _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "  start: %@ - end %@", buf, 0x16u);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v8);
  }

  v16 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Charge sessions WITH filtering debounces:", buf, 2u);
  }

  v17 = [MEMORY[0x277CBEAA8] date];
  [*(*(a1 + 32) + 312) minInputChargeDuration];
  v18 = [PowerUISmartChargeUtilities pluginEventsBefore:"pluginEventsBefore:withMinimumDuration:ignoringDisconnectsShorterThan:" withMinimumDuration:v17 ignoringDisconnectsShorterThan:?];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(a1 + 32) + 96);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(*(&v31 + 1) + 8 * j);
          v26 = v24;
          v27 = [v25 startDate];
          v28 = [v25 endDate];
          *buf = 138412546;
          v41 = v27;
          v42 = 2112;
          v43 = v28;
          _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, "  start: %@ - end %@", buf, 0x16u);
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v21);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1055(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 424);
    v4 = MEMORY[0x277CBEAA8];
    v5 = v2;
    v6 = [v4 distantPast];
    v7 = [v3 gaugingMitigationStatisticsSince:v6];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "gaugingMitigationStatisticsSince: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1059(uint64_t a1)
{
  v3 = +[PowerUINotificationManager sharedInstance];
  v2 = [v3 postChargeLimitRecommendationWithLimit:{objc_msgSend(*(a1 + 32), "getUISoCChargeLimit")}];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_5(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 powerLogStatus];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Writing to PowerLog %@", &v9, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) powerLogStatus];
  PLLogRegisteredEvent();

  objc_autoreleasePoolPop(v6);
  v8 = *MEMORY[0x277D85DE8];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1065(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v4 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1066;
    block[3] = &unk_2782D3EA8;
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }

  else if (!state && os_log_type_enabled(*(*(a1 + 32) + 96), OS_LOG_TYPE_DEBUG))
  {
    __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1065_cold_1();
  }
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1066(uint64_t a1)
{
  v2 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"AggDStatus" inDomain:*(*(a1 + 32) + 56)];
  [*(a1 + 32) reportAggDKeys:v2];
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1068(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v4 = *(a1 + 32);

    [v4 reportMonthlyData];
  }

  else if (!state && os_log_type_enabled(*(*(a1 + 32) + 96), OS_LOG_TYPE_DEBUG))
  {
    __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_2_1068_cold_1();
  }
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1069(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v4 = *(a1 + 32);

    [v4 reportBatteryHealthMetrics];
  }

  else if (!state && os_log_type_enabled(*(*(a1 + 32) + 96), OS_LOG_TYPE_DEBUG))
  {
    __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1069_cold_1();
  }
}

void __136__PowerUISmartChargeManager_initWithDefaultsDomain_contextStore_beforeHandlingBatteryChangeCallback_afterHandlingBatteryChangeCallback___block_invoke_1070(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v5 = *(*(a1 + 32) + 96);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Running EvaluateRecommendedLimitActivity", v6, 2u);
    }

    [*(a1 + 32) evaluateChargeLimitRecommendationForced:0];
  }

  else if (!state)
  {
    v4 = *(*(a1 + 32) + 96);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "EvaluateRecommendedLimitActivity checking in!", buf, 2u);
    }
  }
}

+ (id)manager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PowerUISmartChargeManager_manager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (manager_onceToken_0 != -1)
  {
    dispatch_once(&manager_onceToken_0, block);
  }

  v2 = manager_manager_0;

  return v2;
}

void __36__PowerUISmartChargeManager_manager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc(objc_opt_class());
  v5 = [MEMORY[0x277CFE318] userContext];
  v3 = [v2 initWithDefaultsDomain:@"com.apple.smartcharging.topoffprotection" contextStore:v5 beforeHandlingBatteryChangeCallback:0 afterHandlingBatteryChangeCallback:0];
  v4 = manager_manager_0;
  manager_manager_0 = v3;
}

- (void)handleXPCActivityOnBoot
{
  v2 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__PowerUISmartChargeManager_handleXPCActivityOnBoot__block_invoke;
  handler[3] = &unk_2782D48D8;
  handler[4] = self;
  xpc_activity_register("com.apple.poweruiagent.runOnBoot", v2, handler);
}

void __52__PowerUISmartChargeManager_handleXPCActivityOnBoot__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) && xpc_activity_get_state(v3) == 2)
  {
    v4 = *(*(a1 + 32) + 96);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Activity run on boot!", v5, 2u);
    }

    [*(*(a1 + 32) + 312) deleteCompiledModels];
  }
}

- (void)loadCheckpoint
{
  v3 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"checkpoint"];
  self->_checkpoint = [v3 unsignedIntegerValue];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_checkpoint];
  [(_CDLocalContext *)self->_context setObject:v4 forKeyedSubscript:self->_checkpointKP];

  if (self->_checkpoint - 2 <= 2)
  {
    [(PowerUISmartChargeManager *)self startAllMonitoring];
    if (!self->_isDesktopDevice && self->_manualChargeLimitStatus != 1)
    {
      v5 = +[PowerUINotificationManager sharedInstance];
      v6 = [v5 getDeliveredNotifications];

      if (![v6 count])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Top-Off Detected and no notification delivered. Provide non-obvious notification", v8, 2u);
        }

        [(PowerUISmartChargeManager *)self postOBCNotificationWithTopOff:0];
      }
    }

    [(PowerUISmartChargeManager *)self requestPeriodicCheck];
  }

  [(PowerUISmartChargeManager *)self updateResourceHint];
}

- (id)checkpointNameFromCheckpoint:(unint64_t)a3
{
  if (a3 - 1 > 0xA)
  {
    return @"None";
  }

  else
  {
    return off_2782D4EB0[a3 - 1];
  }
}

- (void)setCheckpoint:(unint64_t)a3 withSelector:(SEL)a4 forceWrite:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v9 = os_transaction_create();
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = log;
    v12 = NSStringFromSelector(a4);
    *buf = 134218242;
    v23 = a3;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Set Checkpoint: %llu from %@", buf, 0x16u);
  }

  v13 = objc_autoreleasePoolPush();
  if (self->_checkpoint != a3 || v5)
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = a3;
      _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Saving Checkpoint: %llu to defaults", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(PowerUISmartChargeManager *)self setNumber:v16 forPreferenceKey:@"checkpoint"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(_CDLocalContext *)self->_context setObject:v17 forKeyedSubscript:self->_checkpointKP];

    self->_checkpoint = a3;
    [(PowerUISmartChargeManager *)self setPreviousPowerLogStatus:0];
    v18 = [(PowerUISmartChargeManager *)self checkpointNameFromCheckpoint:a3];
    v19 = [v18 lowercaseString];

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.das.smartcharging.%@", v19];
    ADClientSetValueForScalarKey();
    if (a3 >= 9)
    {
      [(PowerUISmartChargeManager *)self promptBDCToQueryCurrentState];
    }

    [(PowerUISmartChargeManager *)self updateResourceHint];
  }

  objc_autoreleasePoolPop(v13);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateResourceHint
{
  checkpoint = self->_checkpoint;
  resourceHint = self->_resourceHint;
  if (checkpoint != 5)
  {
    if (!resourceHint)
    {
      return;
    }

    v5 = 0;
    goto LABEL_6;
  }

  if (resourceHint)
  {
    v5 = 1;
LABEL_6:

    [(ResourceHint *)resourceHint updateState:v5];
    return;
  }

  v6 = [objc_alloc(MEMORY[0x277D3F038]) initWithResourceType:13 andState:1];
  v7 = self->_resourceHint;
  self->_resourceHint = v6;

  MEMORY[0x2821F96F8]();
}

- (id)readNumberForPreferenceKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, self->_defaultsDomain);

  return v3;
}

- (void)setDate:(id)a3 forPreferenceKey:(id)a4
{
  key = a4;
  if (a3)
  {
    v6 = MEMORY[0x277CCABB0];
    [a3 timeIntervalSinceReferenceDate];
    v7 = [v6 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  CFPreferencesSetAppValue(key, v7, self->_defaultsDomain);
}

- (id)readDateForPreferenceKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, self->_defaultsDomain);
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEAA8];
    [v3 doubleValue];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)readStringForPreferenceKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, self->_defaultsDomain);

  return v3;
}

- (id)eligibleEngagementIntervalFromTimelineEvents:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v29 = self;
    v6 = 1.79769313e308;
    v7 = *v31;
    v8 = 1.79769313e308;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"event"];
        v12 = [v11 isEqualToString:@"EligibleForIdle"];

        if (v12)
        {
          v13 = [v10 objectForKeyedSubscript:@"date"];
          [v13 doubleValue];
          v15 = v14;

          if (v15 < v8 && v15 > 0.0)
          {
            v8 = v15;
          }
        }

        else
        {
          v17 = [v10 objectForKeyedSubscript:@"event"];
          v18 = [v17 isEqualToString:@"Unplug"];

          if (v18)
          {
            v19 = [v10 objectForKeyedSubscript:@"date"];
            [v19 doubleValue];
            v21 = v20;

            if (v21 < v6 && v21 > 0.0)
            {
              v6 = v21;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
    if (v6 != 1.79769313e308 && v8 <= v6)
    {
      empiricalTimeToFullChargeDurationMinutes = v29->_empiricalTimeToFullChargeDurationMinutes;
      if (empiricalTimeToFullChargeDurationMinutes <= 2.22507386e-308)
      {
        v24 = 5400.0;
      }

      else
      {
        v24 = empiricalTimeToFullChargeDurationMinutes * 60.0;
      }

      v25 = objc_alloc(MEMORY[0x277CCA970]);
      v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
      v5 = [v25 initWithStartDate:v26 duration:{fmax(v6 - v8 - v24, 0.0)}];
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)pluginTimelineAddEvent:(id)a3 atDate:(id)a4 withBatteryLevel:(unint64_t)a5
{
  v25[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CCABB0];
  v10 = a4;
  v11 = [v9 numberWithUnsignedInteger:a5];
  [(PowerUISmartChargeManager *)self _submitEngagementEventWithBatteryLevel:v11 eventType:[PowerUIAnalyticsManager convertTimelineStringToOBCEvent:v8]];

  v12 = CFPreferencesCopyAppValue(@"timeline", self->_defaultsDomain);
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v13 = [MEMORY[0x277CBEB18] array];
  }

  v14 = [(PowerUISmartChargeManager *)self currentModeOfOperation];
  v25[0] = v8;
  v24[0] = @"event";
  v24[1] = @"date";
  v15 = MEMORY[0x277CCABB0];
  [v10 timeIntervalSinceReferenceDate];
  v17 = v16;

  v18 = [v15 numberWithDouble:v17];
  v25[1] = v18;
  v24[2] = @"batteryLevel";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v25[2] = v19;
  v24[3] = @"obcModeOfOperation";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v25[3] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  [v13 addObject:v21];

  v22 = [v13 copy];
  CFPreferencesSetAppValue(@"timeline", v22, self->_defaultsDomain);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)clearPluginTimeline
{
  value = CFPreferencesCopyAppValue(@"timeline", self->_defaultsDomain);
  v3 = [(PowerUISmartChargeManager *)self eligibleEngagementIntervalFromTimelineEvents:?];
  [v3 duration];
  if (v4 >= 4500.0)
  {
    CFPreferencesSetAppValue(@"timeline.archive", value, self->_defaultsDomain);
  }

  CFPreferencesSetAppValue(@"timeline", 0, self->_defaultsDomain);
}

- (void)reportMonthlyData
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  if (self->_enabled || [(PowerUISmartChargeManager *)self isMCLSupported])
  {
    v4 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"MonthlyDataReportedDate"];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = v5;
    if (v4 && ([v5 timeIntervalSinceDate:v4], v7 < 2592000.0))
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Considered submitting monthly OBC analytics, but not enough time has passed since last submission: %@", buf, 0xCu);
      }
    }

    else
    {
      [(PowerUISmartChargeManager *)self sendLegacyData];
      v13 = v4;
      AnalyticsSendEventLazy();
      v9 = [(PowerUIAnalyticsManager *)self->_analyticsManager gaugingMitigationStatisticsSince:v13];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_manualChargeLimitStatus];
      [v9 setObject:v10 forKeyedSubscript:@"CurrentMCLEnabled"];

      v11 = v9;
      AnalyticsSendEventLazy();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendLegacyData
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deocFeatureState];
  [v3 setObject:v4 forKeyedSubscript:@"currentDEoCState"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_manualChargeLimitStatus];
  [v3 setObject:v5 forKeyedSubscript:@"currentMCLState"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reporting monthly metrics to CoreAnalytics %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  [(PowerUISmartChargeManager *)self setDate:v7 forPreferenceKey:@"MonthlyDataReportedDate"];

  v10 = v3;
  v8 = v3;
  AnalyticsSendEventLazy();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendHistoricalDEoCEngagementEventToCA:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

- (void)reportBatteryHealthMetrics
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[PowerUISmartChargeUtilities batteryProperties];
  v5 = [v4 objectForKey:@"CycleCount"];
  [v3 setObject:v5 forKeyedSubscript:@"CycleCount"];
  v22 = v5;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{50 * (objc_msgSend(v5, "unsignedIntegerValue") / 0x32uLL)}];
  [v3 setObject:? forKeyedSubscript:?];
  v6 = [v4 objectForKey:@"BatteryData"];
  v7 = [v6 objectForKey:@"ChemID"];

  v20 = v7;
  [v3 setObject:v7 forKeyedSubscript:@"BatteryChemID"];
  v8 = [v4 objectForKey:@"BatteryData"];
  v9 = [v8 objectForKey:@"ChemicalWeightedRa"];

  [v3 setObject:v9 forKeyedSubscript:@"ChemicalWeightedRa"];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{50 * (objc_msgSend(v9, "unsignedIntegerValue") / 0x32uLL)}];
  [v3 setObject:v10 forKeyedSubscript:@"ChemicalWeightedRaBuckets"];
  v11 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessionsEngaged"];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_282D4E5C0;
  }

  [v3 setObject:v12 forKeyedSubscript:@"LifetimeEngagements"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{25 * (objc_msgSend(v12, "unsignedIntegerValue") / 0x19uLL)}];
  [v3 setObject:v13 forKeyedSubscript:@"LifetimeEngagementsBuckets"];
  v14 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countMinutesIdled"];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_282D4E5C0;
  }

  [v3 setObject:v15 forKeyedSubscript:@"LifetimeIdleDurationMins"];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{100 * (objc_msgSend(v15, "unsignedIntegerValue") / 0x1770uLL)}];
  [v3 setObject:v16 forKeyedSubscript:@"LifetimeIdleDurationMinsBuckets"];
  v17 = v3;
  AnalyticsSendEventLazy();
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v17;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reported battery health metrics to CoreAnalytics %@", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (double)idleDurationWithEngagedCheckpoints:(id)a3 withTopOffStartCheckpoints:(id)a4 withDisabledCheckpoints:(id)a5 withTopOffStart:(id)a6 withIdleStart:(id)a7 withTemporarilyDisabledStart:(id)a8 withPluginEnd:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (v18 && v19)
  {
    [v18 timeIntervalSinceDate:v19];
    v24 = v23;
    if (v23 < 0.0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        [PowerUISmartChargeManager idleDurationWithEngagedCheckpoints:? withTopOffStartCheckpoints:? withDisabledCheckpoints:? withTopOffStart:? withIdleStart:? withTemporarilyDisabledStart:? withPluginEnd:?];
      }
    }
  }

  else if (v19 && v20)
  {
    [v20 timeIntervalSinceDate:v19];
    v24 = v26;
    if (v26 < 0.0)
    {
      v27 = self->_log;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [PowerUISmartChargeManager idleDurationWithEngagedCheckpoints:v27 withTopOffStartCheckpoints:? withDisabledCheckpoints:? withTopOffStart:? withIdleStart:? withTemporarilyDisabledStart:? withPluginEnd:?];
      }
    }
  }

  else
  {
    v24 = 0.0;
    if (v19)
    {
      if (v21)
      {
        [v21 timeIntervalSinceDate:v19];
        v24 = v28;
        if (v28 < 0.0)
        {
          v29 = self->_log;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [PowerUISmartChargeManager idleDurationWithEngagedCheckpoints:v29 withTopOffStartCheckpoints:? withDisabledCheckpoints:? withTopOffStart:? withIdleStart:? withTemporarilyDisabledStart:? withPluginEnd:?];
          }
        }
      }
    }
  }

  v30 = +[PowerUISmartChargeUtilities isInternalBuild];
  if (v24 < 0.0 && v30)
  {
    v31 = +[PowerUINotificationManager sharedInstance];
    v32 = [(PowerUISmartChargeManager *)self genericOBCFailureNotification:@"negative idle duration"];
    v33 = [v31 postNotificationWithRequest:v32];
  }

  return v24;
}

- (double)totalTopOffDurationWithTopOffStartCheckpoints:(id)a3 withFullyChargedCheckpoints:(id)a4 withTopOffStart:(id)a5 withFullyChargedDate:(id)a6 withPluginEnd:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v13 && (v16 = v14) != 0 || (v17 = 0.0, v13) && (v16 = v15) != 0)
  {
    [v16 timeIntervalSinceDate:v13];
    v17 = v18;
  }

  return v17;
}

- (double)totalTemporarilyDisabledHours:(id)a3 withEngagements:(id)a4 withPluginEnd:(id)a5
{
  v7 = a3;
  v8 = a4;
  v33 = a5;
  v9 = [v8 count];
  v10 = [v7 count];
  v11 = v10 - 1;
  if (v10 - 1 < 0)
  {
    v14 = 0.0;
  }

  else
  {
    v12 = v10;
    v13 = v9 - 1;
    v14 = 0.0;
    do
    {
      v15 = v11;
      v16 = [v7 objectAtIndexedSubscript:v11];
      v17 = [v16 objectForKeyedSubscript:@"date"];
      [v17 doubleValue];
      v19 = v18;

      v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v19];
      if ((v13 & 0x8000000000000000) == 0)
      {
        v34 = v16;
        v21 = 0;
        v22 = 0.0;
        while (1)
        {
          v23 = v21;
          v24 = [v8 objectAtIndexedSubscript:v13];
          v25 = [v24 objectForKeyedSubscript:@"date"];
          [v25 doubleValue];
          v27 = v26;

          v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v27];

          [v21 timeIntervalSinceDate:v20];
          if (v28 <= 0.0)
          {
            break;
          }

          v29 = v28;

          v22 = v29;
          if (v13-- <= 0)
          {
            v13 = -1;
            goto LABEL_12;
          }
        }

        if (v22 == 0.0)
        {
          if (v33 && v12 == [v7 count])
          {
            [v33 timeIntervalSinceDate:v20];
            v14 = v14 + v31;
          }
        }

        else
        {
          v14 = v14 + v22;
        }

LABEL_12:
        v16 = v34;
      }

      v11 = v15 - 1;
      v12 = v15;
    }

    while (v15 > 0);
  }

  return v14;
}

- (id)cloakingMetrics:(id)a3 withIdleCheckpoints:(id)a4 withIdleStart:(id)a5 withTopOffStart:(id)a6 withPluginEnd:(id)a7
{
  v44 = a3;
  v11 = a4;
  v46 = a5;
  v47 = a6;
  v45 = a7;
  if ([v11 count])
  {
    v12 = 0;
    LODWORD(v13) = 0;
    LODWORD(v14) = 0;
    v15 = 0.0;
    v16 = 0x277CBE000uLL;
    v17 = 0.0;
    do
    {
      v18 = [v11 objectAtIndexedSubscript:v12];
      v19 = [v18 objectForKeyedSubscript:@"event"];
      v20 = [v18 objectForKeyedSubscript:@"date"];
      [v20 doubleValue];
      v22 = v21;

      v23 = [*(v16 + 2728) dateWithTimeIntervalSinceReferenceDate:v22];
      v48 = [v19 isEqualToString:@"EngagedFloor"];
      if (v12)
      {
        [v11 objectAtIndexedSubscript:v12 - 1];
        v25 = v24 = v11;
        v26 = [v25 objectForKeyedSubscript:@"date"];
        [v26 doubleValue];
        v28 = v27;

        v29 = [*(v16 + 2728) dateWithTimeIntervalSinceReferenceDate:v28];
        v30 = [v19 isEqualToString:@"EngagedFloor"];
        [v23 timeIntervalSinceDate:v29];
        v32 = v15 + v31;
        v33 = v17 + v31;
        if (v30)
        {
          v15 = v32;
        }

        else
        {
          v17 = v33;
        }

        v11 = v24;
      }

      else if (v46)
      {
        [v23 timeIntervalSinceDate:?];
        v15 = v15 + v34;
      }

      if (++v12 == [v11 count])
      {
        v16 = 0x277CBE000;
        if ([v19 isEqualToString:@"EngagedFloor"])
        {
          v35 = v47;
          if (v47 || (v35 = v45) != 0)
          {
            [v35 timeIntervalSinceDate:v23];
            v17 = v17 + v36;
          }
        }

        else
        {
          v37 = v47;
          if (v47 || (v37 = v45) != 0)
          {
            [v37 timeIntervalSinceDate:v23];
            v15 = v15 + v38;
          }
        }
      }

      else
      {
        v16 = 0x277CBE000;
      }

      v14 = v14 + (v48 ^ 1);
      v13 = (v13 + v48);
    }

    while ([v11 count] > v12);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v17 = 0.0;
    v15 = 0.0;
  }

  v39 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  [v44 setObject:v39 forKeyedSubscript:@"DrainedToFloorCount"];

  v40 = [MEMORY[0x277CCABB0] numberWithInt:v14];
  [v44 setObject:v40 forKeyedSubscript:@"ToppedOffToCeilingCount"];

  v41 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  [v44 setObject:v41 forKeyedSubscript:@"CloakingTopOffToCeilingDuration"];

  if (v15 == 0.0)
  {
    [v44 objectForKeyedSubscript:@"IdleDuration"];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithDouble:v15];
  }
  v42 = ;
  [v44 setObject:v42 forKeyedSubscript:@"DrainedDuration"];

  return v44;
}

- (id)constructAnalyticsStatusFromEvents:(id)a3
{
  v183 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = !self->_enabled || self->_temporarilyDisabled;
  v154 = v5;
  v161 = [MEMORY[0x277CBEB18] array];
  isDesktopDevice = self->_isDesktopDevice;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v156 = self;
  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v182 = v4;
    _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Events are %@", buf, 0xCu);
  }

  v165 = v6;

  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v175 objects:v180 count:16];
  v168 = v8;
  if (v9)
  {
    v10 = v9;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v155 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v166 = 0;
    v11 = 0;
    v12 = *v176;
    v13 = @"event";
    v14 = @"Plugin";
    v169 = *v176;
    while (1)
    {
      v15 = 0;
      v170 = v10;
      do
      {
        if (*v176 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v175 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:v13];
        v18 = [v17 isEqualToString:v14];
        if (v18 & v11)
        {
          v11 = 1;
          goto LABEL_35;
        }

        v19 = v14;
        v20 = v8;
        v21 = v13;
        v11 |= v18;
        v22 = [v16 objectForKeyedSubscript:@"date"];
        [v22 doubleValue];
        v24 = v23;

        v25 = [v16 objectForKeyedSubscript:@"batteryLevel"];
        v26 = [v25 unsignedIntegerValue];

        if (v24 <= 0.0 || v26 == 0)
        {
          v13 = v21;
          v12 = v169;
          v10 = v170;
          v8 = v20;
          v14 = v19;
          goto LABEL_35;
        }

        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@BatteryLevel", v17];
        v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v24];
        v14 = v19;
        if ([v17 isEqualToString:v19])
        {
          v31 = v29;
          if (!v166 || ([v166 timeIntervalSinceDate:v29], v32 < 0.0))
          {
            v33 = v29;

            v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
            [v165 setObject:v34 forKeyedSubscript:v28];

            v166 = v33;
            v31 = v29;
          }

          v14 = v19;
          goto LABEL_34;
        }

        if (![v17 isEqualToString:@"EligibleForIdle"] || v164)
        {
          if ([v17 isEqualToString:@"Engaged"])
          {
            if (v162)
            {
              goto LABEL_33;
            }

            v162 = v29;
            v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
            [v165 setObject:v36 forKeyedSubscript:v28];

            v31 = v29;
            v160 = v26;
          }

          else
          {
            if (([v17 isEqualToString:@"EngagedFloor"] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"EngagedCeiling"))
            {
              [v161 addObject:v16];
              goto LABEL_33;
            }

            if ([v17 isEqualToString:@"TopOff"])
            {
              v31 = v29;
              if (v158)
              {
                goto LABEL_34;
              }

              v158 = v29;
LABEL_43:
              v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
              [v165 setObject:v37 forKeyedSubscript:v28];

LABEL_33:
              v31 = v29;
              goto LABEL_34;
            }

            v31 = v29;
            if (![v17 isEqualToString:@"FullyCharged"])
            {
              if ([v17 isEqualToString:@"Unplug"] && !v157)
              {
                v157 = v29;
                v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
                [v165 setObject:v38 forKeyedSubscript:v28];

                v31 = v29;
                v155 = v26;
              }

              goto LABEL_34;
            }

            if (!v159)
            {
              v159 = v29;
              goto LABEL_43;
            }
          }
        }

        else
        {
          v164 = v29;
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
          [v165 setObject:v35 forKeyedSubscript:v28];

          v31 = v29;
          v163 = v26;
        }

LABEL_34:

        v13 = v21;
        v8 = v168;
        v12 = v169;
        v10 = v170;
LABEL_35:

        ++v15;
      }

      while (v10 != v15);
      v39 = [v8 countByEnumeratingWithState:&v175 objects:v180 count:16];
      v10 = v39;
      if (!v39)
      {
        goto LABEL_50;
      }
    }
  }

  v157 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v155 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v166 = 0;
LABEL_50:
  v40 = v8;

  v41 = [MEMORY[0x277CCABB0] numberWithBool:isDesktopDevice];
  [v165 setObject:v41 forKeyedSubscript:@"ChargeLimited"];

  if (v156->_manualChargeLimitStatus)
  {
    v42 = MEMORY[0x277CBEC38];
  }

  else
  {
    v42 = MEMORY[0x277CBEC28];
  }

  [v165 setObject:v42 forKeyedSubscript:@"ManualChargeLimit"];
  v44 = v166;
  if (!v166)
  {
    v44 = +[PowerUISmartChargeUtilities lastPluggedInDate];
  }

  if (v157 && v44)
  {
    v45 = MEMORY[0x277CCABB0];
    [v44 timeIntervalSince1970];
    v46 = [v45 numberWithDouble:?];
    [v165 setObject:v46 forKeyedSubscript:@"AnalyticsPluginDate"];

    v47 = MEMORY[0x277CCABB0];
    [v157 timeIntervalSinceDate:v44];
    v48 = [v47 numberWithDouble:?];
    [v165 setObject:v48 forKeyedSubscript:@"PluginDuration"];
  }

  if (v157)
  {
    v49 = v164 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v49;
  v51 = 0x277CCA000uLL;
  v52 = v155;
  if (((v50 | v154) & 1) == 0)
  {
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v163];
    [v165 setObject:v53 forKeyedSubscript:@"EligibleForIdleBatteryLevelScore"];

    v54 = [(PowerUISmartChargeManager *)v156 readNumberForPreferenceKey:@"recentlyInterrupted"];
    v55 = [v54 BOOLValue];

    if (v55)
    {
      [v165 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"recentlyInterrupted"];
      [(PowerUISmartChargeManager *)v156 setNumber:0 forPreferenceKey:@"recentlyInterrupted"];
    }

    v56 = [v165 objectForKeyedSubscript:@"PluginDuration"];
    v57 = [v56 unsignedIntegerValue];

    if (!v57)
    {
      [v165 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"BadSession"];
LABEL_79:
      v51 = 0x277CCA000;
      goto LABEL_81;
    }

    [(PowerUISmartChargeManager *)v156 durationToFullChargeFromBatteryLevel:v163];
    v59 = v58;
    [v157 timeIntervalSinceDate:v164];
    v61 = v60;
    v62 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v165 setObject:v62 forKeyedSubscript:@"TotalEligibleDuration"];

    v63 = v61 - v59;
    v64 = 0.0;
    if (v63 >= 0.0)
    {
      v64 = v63;
    }

    v65 = [MEMORY[0x277CCABB0] numberWithDouble:v64];
    [v165 setObject:v65 forKeyedSubscript:@"EstimatedUsableEligibleDuration"];

    if (v159 && v158)
    {
      v66 = v159;
LABEL_77:
      [v66 timeIntervalSinceDate:v158];
      v68 = v67;
      v69 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v165 setObject:v69 forKeyedSubscript:@"TopOffDuration"];

      v51 = 0x277CCA000uLL;
      v43 = v61 - v68;
      if (v61 - v68 <= 0.0)
      {
        goto LABEL_81;
      }

      v70 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
      [v165 setObject:v70 forKeyedSubscript:@"ActualUsableEligibleDuration"];

      goto LABEL_79;
    }

    if (v158 && v155 == 100)
    {
      v66 = v157;
      goto LABEL_77;
    }

    v71 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
    [v165 setObject:v71 forKeyedSubscript:@"ActualUsableEligibleDuration"];

    v51 = 0x277CCA000uLL;
  }

LABEL_81:
  [(PowerUISmartChargeManager *)v156 idleDurationWithEngagedCheckpoints:0 withTopOffStartCheckpoints:0 withDisabledCheckpoints:0 withTopOffStart:v158 withIdleStart:v162 withTemporarilyDisabledStart:0 withPluginEnd:v43, v157];
  v73 = v72;
  v74 = [*(v51 + 2992) numberWithDouble:?];
  [v165 setObject:v74 forKeyedSubscript:@"IdleDuration"];

  if (v73 < 0.0)
  {
    v75 = v156->_log;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      [(PowerUISmartChargeManager *)v40 constructAnalyticsStatusFromEvents:v75];
    }

    [v165 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"BadSession"];
  }

  v76 = [MEMORY[0x277CCABB0] numberWithInt:v73 > 0.0];
  [v165 setObject:v76 forKeyedSubscript:@"Engaged"];

  v77 = [v165 objectForKeyedSubscript:@"ActualUsableEligibleDuration"];
  [v77 doubleValue];
  v79 = v78 - v73;

  if (v79 > 0.0)
  {
    v80 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
    [v165 setObject:v80 forKeyedSubscript:@"EstimatedMissedIdleDuration"];
  }

  v81 = [(PowerUISmartChargeManager *)v156 cloakingMetrics:v165 withIdleCheckpoints:v161 withIdleStart:v162 withTopOffStart:v158 withPluginEnd:v157];

  if (v157 && v159)
  {
    v82 = MEMORY[0x277CCABB0];
    [v157 timeIntervalSinceDate:v159];
    v83 = [v82 numberWithDouble:?];
    [v81 setObject:v83 forKeyedSubscript:@"FullChargeDuration"];
  }

  if (v157 && v155)
  {
    v52 = v155 & 0xFFFFFFFFFFFFFFFELL;
    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v155 & 0xFFFFFFFFFFFFFFFELL];
    [v81 setObject:v84 forKeyedSubscript:@"PluginEndBatteryLevelScore"];
  }

  if (v157 && v162)
  {
    v85 = [v81 objectForKeyedSubscript:@"PluginDuration"];
    v86 = [v85 unsignedIntegerValue];

    if (!v86)
    {
      [v81 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"BadSession"];
    }

    v87 = MEMORY[0x277CBEC28];
    [v81 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"UnderChargedAvoidable"];
    [v81 setObject:v87 forKeyedSubscript:@"UnderChargedUnavoidable"];
    [v81 setObject:v87 forKeyedSubscript:@"UnderChargedTLC"];
    if (v52 <= 0x63)
    {
      [(PowerUISmartChargeManager *)v156 durationToFullChargeFromBatteryLevel:v160];
      v89 = v88;
      v90 = [v81 objectForKeyedSubscript:@"TotalEligibleDuration"];
      v91 = [v90 unsignedIntegerValue];

      if (v89 <= v91)
      {
        if (v156->_encounteredTLCDuringTopOff)
        {
          v92 = @"UnderChargedTLC";
        }

        else
        {
          v92 = @"UnderChargedAvoidable";
        }
      }

      else
      {
        v92 = @"UnderChargedUnavoidable";
      }

      [v81 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v92];
    }
  }

  else if (!v162)
  {
    if (!v158)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v149 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v160 & 0xFFFFFFFFFFFFFFFELL];
  [v81 setObject:v149 forKeyedSubscript:@"IdleBatteryLevelScore"];

  v150 = [v81 objectForKeyedSubscript:@"IdleDuration"];
  v151 = -[PowerUISmartChargeManager projectedBatteryLevelForDuration:withInitialBatteryLevel:](v156, "projectedBatteryLevelForDuration:withInitialBatteryLevel:", [v150 unsignedIntegerValue], v160 & 0xFFFFFFFFFFFFFFFELL);

  v152 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v151 & 0xFFFFFFFFFFFFFFFELL];
  [v81 setObject:v152 forKeyedSubscript:@"ProjectedPluginEndBatteryLevelScore"];

  if (v158)
  {
LABEL_102:
    [v81 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TopOffInitiated"];
  }

LABEL_103:
  if (v159)
  {
    [v81 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"FullCharged"];
  }

  if (v157 && v158 && v162)
  {
    [(PowerUISmartChargeManager *)v156 totalTopOffDurationWithTopOffStartCheckpoints:0 withFullyChargedCheckpoints:0 withTopOffStart:v158 withFullyChargedDate:v159 withPluginEnd:v157];
    v94 = [MEMORY[0x277CCABB0] numberWithDouble:v73 / (v73 + v93) * 100.0];
    [v81 setObject:v94 forKeyedSubscript:@"ImpactRatio"];
  }

  [v81 setObject:v156->_engagementsLastMonthBucket forKeyedSubscript:@"EngagementsLastMonthBucket"];
  [v81 setObject:v156->_lastReportedNumberOfPluginEvents forKeyedSubscript:@"NumberOfPluginEvents"];
  [v81 setObject:v156->_medianPluginLength forKeyedSubscript:@"MedianPluginLength"];
  [(NSDate *)v156->_previousDecisionMakerDate timeIntervalSinceDate:v44];
  if (v95 > 0.0)
  {
    v96 = [MEMORY[0x277CCABB0] numberWithInteger:v156->_previousDecisionMakerID];
    [v81 setObject:v96 forKeyedSubscript:@"DecisionMaker"];

    v97 = [(PowerUIBatteryMitigationManager *)v156->_batteryMitigationManager getGaugingMitigationDict];
    v98 = [v97 objectForKeyedSubscript:@"lastDOD0Update"];

    if (v98)
    {
      v99 = [v97 objectForKeyedSubscript:@"lastDOD0Update"];
      v100 = MEMORY[0x277CCABB0];
      v101 = [MEMORY[0x277CBEAA8] date];
      [v101 timeIntervalSinceDate:v99];
      v103 = [v100 numberWithDouble:v102 / 86400.0];
      [v81 setObject:v103 forKeyedSubscript:@"DaysSinceOCVUpdate"];
    }

    else
    {
      [v81 setObject:&unk_282D4E5C0 forKeyedSubscript:@"DaysSinceOCVUpdate"];
    }

    v104 = [v97 objectForKeyedSubscript:@"lastQMaxUpdate"];

    if (v104)
    {
      v105 = [v97 objectForKeyedSubscript:@"lastQMaxUpdate"];
      v106 = MEMORY[0x277CCABB0];
      v107 = [MEMORY[0x277CBEAA8] date];
      [v107 timeIntervalSinceDate:v105];
      v109 = [v106 numberWithDouble:v108 / 86400.0];
      [v81 setObject:v109 forKeyedSubscript:@"DaysSinceQmaxUpdate"];
    }

    else
    {
      [v81 setObject:&unk_282D4E5C0 forKeyedSubscript:@"DaysSinceQmaxUpdate"];
    }
  }

  v167 = v44;
  v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PowerUIMLTwoStageModelPredictor engagementModelVersion](v156->_modelTwoStagePredictor, "engagementModelVersion")}];
  [v81 setObject:v110 forKeyedSubscript:@"EngageModelVersion"];

  v111 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PowerUIMLTwoStageModelPredictor durationModelVersion](v156->_modelTwoStagePredictor, "durationModelVersion")}];
  [v81 setObject:v111 forKeyedSubscript:@"DurationModelVersion"];

  v112 = [(PowerUIMLTwoStageModelPredictor *)v156->_modelTwoStagePredictor engagementModelBoltID];
  [v81 setObject:v112 forKeyedSubscript:@"EngageModelBoltID"];

  v113 = [(PowerUIMLTwoStageModelPredictor *)v156->_modelTwoStagePredictor durationModelBoltID];
  [v81 setObject:v113 forKeyedSubscript:@"DurationModelBoltID"];

  v114 = [(PowerUITrialManager *)v156->_trialManager treatmentID];
  v115 = [v114 description];
  [v81 setObject:v115 forKeyedSubscript:@"TrackingID"];

  v116 = [(PowerUITrialManager *)v156->_trialManager experimentID];
  v117 = [v116 description];
  [v81 setObject:v117 forKeyedSubscript:@"ExperimentID"];

  v118 = [MEMORY[0x277CCABB0] numberWithBool:v156->_enabled];
  [v81 setObject:v118 forKeyedSubscript:@"Enabled"];

  v119 = [MEMORY[0x277CCABB0] numberWithBool:v156->_temporarilyDisabled];
  [v81 setObject:v119 forKeyedSubscript:@"TempDisabled"];

  v120 = [MEMORY[0x277CCABB0] numberWithBool:v156->_encounteredTLCDuringTopOff];
  [v81 setObject:v120 forKeyedSubscript:@"EncounteredTLC"];

  v121 = MEMORY[0x277CCABB0];
  [(PowerUIMLTwoStageModelPredictor *)v156->_modelTwoStagePredictor lastEngagementResult];
  v122 = [v121 numberWithDouble:?];
  [v81 setObject:v122 forKeyedSubscript:@"EngagementModelResult"];

  [(PowerUIMLTwoStageModelPredictor *)v156->_modelTwoStagePredictor threshold];
  v124 = v123;
  [(PowerUIMLTwoStageModelPredictor *)v156->_modelTwoStagePredictor lastEngagementResult];
  v126 = v124 - v125;
  v127 = v126 <= 0.05 && v126 > 0.0;
  v128 = [MEMORY[0x277CCABB0] numberWithInt:v127];
  [v81 setObject:v128 forKeyedSubscript:@"EngagementModelResultCloseBelowThreshold"];

  v129 = MEMORY[0x277CCABB0];
  [(PowerUIMLTwoStageModelPredictor *)v156->_modelTwoStagePredictor lastDurationResult];
  v130 = [v129 numberWithDouble:?];
  [v81 setObject:v130 forKeyedSubscript:@"DurationModelResult"];

  v131 = 1;
  v132 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v81 setObject:v132 forKeyedSubscript:@"AnalyticsVersion"];

  v133 = [v81 objectForKeyedSubscript:@"EstimatedUsableEligibleDuration"];
  v134 = [v133 unsignedIntegerValue];

  v135 = [v81 objectForKeyedSubscript:@"IdleDuration"];
  v136 = [v135 unsignedIntegerValue];

  v137 = [v81 objectForKeyedSubscript:@"EligibleForIdleBatteryLevelScore"];
  v138 = [v137 unsignedIntegerValue];

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v139 = v156->_monitors;
  v140 = [(NSArray *)v139 countByEnumeratingWithState:&v171 objects:v179 count:16];
  if (v140)
  {
    v141 = v140;
    v142 = *v172;
    do
    {
      for (i = 0; i != v141; ++i)
      {
        if (*v172 != v142)
        {
          objc_enumerationMutation(v139);
        }

        v144 = *(*(&v171 + 1) + 8 * i);
        if ([v144 signalID] == 4)
        {
          v131 = [v144 notAuthorizedForLocation] ^ 1;
        }
      }

      v141 = [(NSArray *)v139 countByEnumeratingWithState:&v171 objects:v179 count:16];
    }

    while (v141);
  }

  if (v156->_enabled && ([(PowerUISmartChargeManager *)v156 isDeviceWithLegitimateUsage]& v131) == 1 && !v156->_temporarilyDisabled && v136 <= 0x3B && v134 >> 2 >= 0x717 && v138 <= 0x5E)
  {
    [v81 setObject:&unk_282D4E5F0 forKeyedSubscript:@"ShouldHaveEngaged"];
  }

  if (v156->_enabled && ([(PowerUISmartChargeManager *)v156 isDeviceWithLegitimateUsage]& v131) == 1 && !v156->_temporarilyDisabled && v134 >> 2 >= 0x717 && v138 <= 0x5E)
  {
    [v81 setObject:&unk_282D4E5F0 forKeyedSubscript:@"AbsoluteShouldHaveEngaged"];
  }

  v145 = [MEMORY[0x277CCABB0] numberWithLong:{-[PowerUITrialManager longFactorForName:](v156->_trialManager, "longFactorForName:", @"modelExecutionPath"}];
  [v81 setObject:v145 forKeyedSubscript:@"ModelExecutionPath"];

  v146 = [v81 copy];
  v147 = *MEMORY[0x277D85DE8];

  return v146;
}

- (id)constructAnalyticsStatus
{
  v3 = CFPreferencesCopyAppValue(@"timeline", self->_defaultsDomain);
  v4 = [(PowerUISmartChargeManager *)self constructAnalyticsStatusFromEvents:v3];

  return v4;
}

- (void)recordDEoCAnalytics:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"PreviousDEoCStatus" inDomain:self->_defaultsDomain];
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      *v59 = v5;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Got previous DEoC status: %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v5 objectForKeyedSubscript:@"dryRun"];
    [v8 setObject:v9 forKeyedSubscript:@"dryRun"];

    v10 = [v5 objectForKeyedSubscript:@"limitCharge"];
    v11 = [v10 BOOLValue];

    v12 = [v5 objectForKeyedSubscript:@"DEoCStatus"];
    v13 = [v12 unsignedIntValue];

    v14 = [v5 objectForKeyedSubscript:@"mostRecentDrain"];
    v15 = [v14 intValue];

    v16 = [(PowerUISmartChargeManager *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v59 = v15;
      *&v59[4] = 1024;
      *&v59[6] = v11;
      v60 = 2048;
      v61 = v13;
      _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "DEoC Analytics - most recent drain: %d, last charge DEoC: %d, last status: %lu", buf, 0x18u);
    }

    if ((v13 - 1) >= 5 && (v13 - 200) > 1)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      [v8 setObject:v41 forKeyedSubscript:@"DEoCStatus"];

      v19 = &unk_282D4E620;
    }

    else
    {
      if (v15 < 0x3E9)
      {
        if (kMaxDEoCBatteryDrain)
        {
          v20 = 60;
        }

        else
        {
          v20 = 70;
        }

        v21 = v15 >= v20;
        v22 = 3;
        if (v21)
        {
          v22 = 1;
        }

        v23 = 4;
        if (!v21)
        {
          v23 = 2;
        }

        if (v11)
        {
          v24 = v23;
        }

        else
        {
          v24 = v22;
        }

        v25 = [(PowerUISmartChargeManager *)self log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v59 = v24;
          _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Last DEoC decision was: %lu", buf, 0xCu);
        }

        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
        [v8 setObject:v26 forKeyedSubscript:@"DEoCStatus"];

        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
        [v8 setObject:v27 forKeyedSubscript:@"DEoCDecision"];

        v28 = v15 - v15 % 5u;
        if (v28 >= 0x64)
        {
          v29 = 100;
        }

        else
        {
          v29 = v28;
        }

        v30 = [MEMORY[0x277CCABB0] numberWithInt:v29];
        [v8 setObject:v30 forKeyedSubscript:@"lastDrainBucket"];

        v31 = [v5 objectForKeyedSubscript:@"idleDurationMinutes"];
        [v8 setObject:v31 forKeyedSubscript:@"idleDurationMinutes"];

        v32 = [v5 objectForKeyedSubscript:@"totalEligibleDurationMinutes"];
        if (v32)
        {
          [v8 setObject:v32 forKeyedSubscript:@"totalEligibleDurationMinutes"];
          v33 = MEMORY[0x277CCABB0];
          v34 = [v32 intValue] / 60;
          if (v34 >= 19)
          {
            v35 = 19;
          }

          else
          {
            v35 = v34;
          }

          v36 = [v33 numberWithInt:v35];
          [v8 setObject:v36 forKeyedSubscript:@"totalEligibleDurationHoursBucket"];
        }

        v37 = [v5 objectForKeyedSubscript:@"modelThreshold"];

        if (v37)
        {
          v38 = MEMORY[0x277CCACA8];
          v39 = [v5 objectForKeyedSubscript:@"modelThreshold"];
          v40 = [v38 stringWithFormat:@"threshold:%@", v39];
          [v8 setObject:v40 forKeyedSubscript:@"trialExperimentID"];
        }

        goto LABEL_40;
      }

      v17 = [(PowerUISmartChargeManager *)self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PowerUISmartChargeManager recordDEoCAnalytics:];
      }

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      [v8 setObject:v18 forKeyedSubscript:@"DEoCStatus"];

      v19 = &unk_282D4E608;
    }

    [v8 setObject:v19 forKeyedSubscript:@"DEoCDecision"];
LABEL_40:
    v42 = self->_log;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v59 = v8;
      _os_log_impl(&dword_21B766000, v42, OS_LOG_TYPE_DEFAULT, "Reporting DEoC plugout metrics to CoreAnalytics %@", buf, 0xCu);
    }

    [PowerUISmartChargeUtilities setDict:0 forPreferenceKey:@"PreviousDEoCStatus" inDomain:self->_defaultsDomain];
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
    [(PowerUISmartChargeManager *)self sendDEoCAnalyticsToCA:v43];

    goto LABEL_43;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "No previous DEoC charge found, no analytics to send.", buf, 2u);
  }

LABEL_43:
  [(NSLock *)self->_deocCurrentStatusLock lock];
  v44 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
  [(NSLock *)self->_deocCurrentStatusLock unlock];
  if (v44)
  {
    v45 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v44];
    v46 = v45;
    if (self->_isDesktopDevice)
    {
      v47 = MEMORY[0x277CCABB0];
      v48 = [v4 objectForKeyedSubscript:@"IdleDuration"];
      v49 = [v47 numberWithInt:{(objc_msgSend(v48, "intValue") / 60)}];
      [v46 setObject:v49 forKeyedSubscript:@"idleDurationMinutes"];
    }

    else
    {
      [v45 setObject:&unk_282D4E5C0 forKeyedSubscript:@"idleDurationMinutes"];
    }

    v50 = MEMORY[0x277CCABB0];
    v51 = [v4 objectForKeyedSubscript:@"TotalEligibleDuration"];
    v52 = [v50 numberWithInt:{(objc_msgSend(v51, "intValue") / 60)}];
    [v46 setObject:v52 forKeyedSubscript:@"totalEligibleDurationMinutes"];

    if (+[PowerUISmartChargeUtilities isInternalBuild](PowerUISmartChargeUtilities, "isInternalBuild") || +[PowerUISmartChargeUtilities isUltraWatch])
    {
      v53 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"NoLoIButRegularCharges" inDomain:@"com.apple.smartcharging.topoffprotection"];
      v54 = v53;
      if (v53)
      {
        if ([v53 intValue] == 1)
        {
          v55 = [v46 objectForKeyedSubscript:@"DEoCStatus"];
          v56 = [v55 unsignedIntValue];

          if ((v56 - 2) <= 3)
          {
            [v46 setObject:qword_2782D4F08[v56 - 2] forKeyedSubscript:@"DEoCStatus"];
          }
        }
      }
    }

    [PowerUISmartChargeUtilities setDict:v46 forPreferenceKey:@"PreviousDEoCStatus" inDomain:self->_defaultsDomain];
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)sendDEoCAnalyticsToCA:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

- (id)defaultDateToDisableUntilGivenDate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (defaultDateToDisableUntilGivenDate__onceToken_0 != -1)
  {
    [PowerUISmartChargeManager defaultDateToDisableUntilGivenDate:];
  }

  v5 = [defaultDateToDisableUntilGivenDate__calendar_0 components:60 fromDate:v4];
  if ([v5 hour] >= 6)
  {
    [v5 setDay:{objc_msgSend(v5, "day") + 1}];
  }

  [v5 setHour:6];
  v6 = [defaultDateToDisableUntilGivenDate__calendar_0 dateFromComponents:v5];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Feature disabled until: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __64__PowerUISmartChargeManager_defaultDateToDisableUntilGivenDate___block_invoke()
{
  defaultDateToDisableUntilGivenDate__calendar_0 = [MEMORY[0x277CBEA80] currentCalendar];

  return MEMORY[0x2821F96F8]();
}

- (void)setTemporarilyDisabled:(BOOL)a3 until:(id)a4
{
  v5 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceNow];
    v11 = v10;
    if (v10 >= 0.0 && v5)
    {
LABEL_4:
      if (!self->_temporarilyDisabled)
      {
        v12 = MEMORY[0x277CCABB0];
        [v9 timeIntervalSinceReferenceDate];
        v13 = [v12 numberWithDouble:?];
        [(PowerUISmartChargeManager *)self setNumber:v13 forPreferenceKey:@"disabledUntil"];

        objc_storeStrong(&self->_disabledUntilDate, a4);
        self->_temporarilyDisabled = 1;
        [(PowerUISmartChargeManager *)self setCurrentState:3];
        v14 = [MEMORY[0x277CBEAA8] now];
        [(PowerUISmartChargeManager *)self pluginTimelineAddEvent:@"TemporarilyDisabled" atDate:v14 withBatteryLevel:[PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context]];

        v15 = [MEMORY[0x277CBEAA8] date];
        [(PowerUISmartChargeManager *)self addPowerLogEventForCheckpoint:11 decisionSignalID:0 decisionDate:v15];

        [(PowerUISmartChargeManager *)self setCheckpoint:11 withSelector:a2];
        v16 = dispatch_walltime(0, (v11 * 1000000000.0));
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__PowerUISmartChargeManager_setTemporarilyDisabled_until___block_invoke;
        block[3] = &unk_2782D3EA8;
        block[4] = self;
        dispatch_after(v16, queue, block);
        [(PowerUISmartChargeManager *)self forceDEoCReevaluation];
      }

      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0.0;
    if (v5)
    {
      goto LABEL_4;
    }
  }

  [(PowerUISmartChargeManager *)self setNumber:0 forPreferenceKey:@"disabledUntil"];
  disabledUntilDate = self->_disabledUntilDate;
  self->_disabledUntilDate = 0;

  if ([PowerUISmartChargeUtilities isPluggedInWithContext:self->_context]&& self->_temporarilyDisabled)
  {
    v19 = 6;
LABEL_12:
    [(PowerUISmartChargeManager *)self setCheckpoint:v19 withSelector:a2];
    goto LABEL_13;
  }

  if ((self->_checkpoint & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v19 = 0;
    goto LABEL_12;
  }

LABEL_13:
  self->_temporarilyDisabled = 0;
  if (self->_currentState == 3)
  {
    [(PowerUISmartChargeManager *)self setCurrentState:1];
    notify_post([@"com.apple.powerui.smartchargestatuschanged" UTF8String]);
  }

  checkpoint = self->_checkpoint;
  v21 = [MEMORY[0x277CBEAA8] date];
  [(PowerUISmartChargeManager *)self addPowerLogEventForCheckpoint:checkpoint decisionSignalID:0 decisionDate:v21];

LABEL_16:
}

- (void)loadDefaults
{
  v113[1] = *MEMORY[0x277D85DE8];
  v3 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"enabled"];
  if (+[PowerUISmartChargeUtilities isiPad])
  {
    self->_enabled = 0;
  }

  else
  {
    if (v3)
    {
      v4 = [v3 BOOLValue];
    }

    else
    {
      v4 = 1;
    }

    self->_enabled = v4;
  }

  ADClientSetValueForScalarKey();
  v112 = @"enabled";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_enabled];
  v113[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:&v112 count:1];
  AnalyticsSendEvent();

  v7 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"currentState"];
  v8 = v7;
  if (!v7)
  {
    if (self->_enabled)
    {
      self->_currentState = 1;
    }

    else
    {
      self->_currentState = 0;
      v11 = [MEMORY[0x277CBEAA8] date];
      [(PowerUISmartChargeManager *)self addPowerLogEventForCheckpoint:10 decisionSignalID:0 decisionDate:v11];

      currentState = self->_currentState;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [(PowerUISmartChargeManager *)self setNumber:v10 forPreferenceKey:@"currentState"];
    goto LABEL_15;
  }

  v9 = [v7 unsignedIntegerValue];
  self->_currentState = v9;
  if (!self->_enabled && v9 == 1)
  {
    [(PowerUISmartChargeManager *)self setCurrentState:0];
    v10 = [MEMORY[0x277CBEAA8] date];
    [(PowerUISmartChargeManager *)self addPowerLogEventForCheckpoint:10 decisionSignalID:0 decisionDate:v10];
LABEL_15:
  }

  v13 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"potentialUnplugDate"];
  potentialUnplugDate = self->_potentialUnplugDate;
  self->_potentialUnplugDate = v13;

  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v15 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"debounceOverrideInSeconds"];
    if (v15)
    {
      v16 = self->_log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v91 = v15;
        _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Overriding debounce time to %@ seconds", buf, 0xCu);
      }

      [v15 doubleValue];
    }

    else
    {
      v17 = -1.0;
    }

    self->_debounceOverride = v17;
    v18 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"overrideRecentDeviceConnectedToChargerThresholdSeconds"];
    if (v18)
    {
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v91 = v15;
        _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "Overriding recently connected duration to %@ seconds", buf, 0xCu);
      }

      *&kRecentDeviceConnectedToChargerThresholdSeconds = [v18 intValue];
    }
  }

  v20 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"MCLTempDisabledUntilDate"];
  mclDisabledUntilDate = self->_mclDisabledUntilDate;
  self->_mclDisabledUntilDate = v20;

  v89 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"MCLFeatureState"];
  if (v89)
  {
    v22 = [v89 unsignedIntValue];
  }

  else
  {
    v22 = 0;
  }

  self->_manualChargeLimitStatus = v22;
  v84 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"initialChargeLimitSetDate"];
  if (v84)
  {
    self->_manualChargeLimitWasEverEnabled = 1;
  }

  else if (self->_manualChargeLimitStatus)
  {
    self->_manualChargeLimitWasEverEnabled = 1;
    v23 = [MEMORY[0x277CBEAA8] now];
    [(PowerUISmartChargeManager *)self setDate:v23 forPreferenceKey:@"initialChargeLimitSetDate"];

    [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E668 forPreferenceKey:@"mclLimitValue"];
  }

  else
  {
    self->_manualChargeLimitWasEverEnabled = 0;
  }

  v24 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"mclLimitValue"];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 unsignedCharValue];
  }

  else
  {
    v26 = 100;
  }

  self->_mclTargetSoC = v26;
  v27 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"ChargeLimitRecommendation"];
  v88 = v27;
  if (v27)
  {
    v28 = [v27 unsignedIntValue];
  }

  else
  {
    v28 = 0;
  }

  self->_recommendedLimit = v28;
  v29 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"DEoCFeatureState"];

  v87 = v29;
  if (+[PowerUISmartChargeUtilities isiPad])
  {
    self->_deocFeatureState = 0;
  }

  else
  {
    if (v29)
    {
      v30 = [v29 unsignedIntValue] != 0;
    }

    else
    {
      v30 = 1;
    }

    self->_deocFeatureState = v30;
  }

  v31 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"alarmsIgnored"];
  self->_signalsIgnored = [v31 BOOLValue];

  [(NSLock *)self->_deocCurrentStatusLock lock];
  v32 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
  [(NSLock *)self->_deocCurrentStatusLock unlock];
  if (v32)
  {
    v33 = [v32 objectForKeyedSubscript:@"dryRun"];
    v34 = [v33 BOOLValue];

    if ((v34 & 1) == 0)
    {
      v35 = [v32 objectForKeyedSubscript:@"limitCharge"];
      self->_isDesktopDevice = [v35 BOOLValue];
    }
  }

  v36 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"lastDesktopModeChangeDate"];
  lastDesktopModeChangeDate = self->_lastDesktopModeChangeDate;
  self->_lastDesktopModeChangeDate = v36;

  v38 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"lastNonEngagementSignalID"];
  lastNonEngagementSignalID = self->_lastNonEngagementSignalID;
  self->_lastNonEngagementSignalID = v38;

  v40 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"chargePredictionModel"];
  v41 = self->_log;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v91 = v40;
    _os_log_impl(&dword_21B766000, v41, OS_LOG_TYPE_DEFAULT, "Loading model: %@", buf, 0xCu);
  }

  if (!v40 || [v40 unsignedIntegerValue] == 2)
  {
    v42 = 2;
LABEL_55:
    self->_predictorType = v42;
    goto LABEL_56;
  }

  if ([v40 unsignedIntegerValue] == 4)
  {
    v42 = 4;
    goto LABEL_55;
  }

  if ([v40 unsignedIntegerValue] == -1)
  {
    v42 = -1;
    goto LABEL_55;
  }

  self->_predictorType = 2;
  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  [(PowerUISmartChargeManager *)self setNumber:v75 forPreferenceKey:@"chargePredictionModel"];

LABEL_56:
  v43 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"fullChargeDeadline"];
  v44 = v43;
  if (v43)
  {
    v45 = MEMORY[0x277CBEAA8];
    [v43 doubleValue];
    v46 = [v45 dateWithTimeIntervalSinceReferenceDate:?];
    fullChargeDeadline = self->__fullChargeDeadline;
    self->__fullChargeDeadline = v46;
  }

  v48 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"empiricalFullChargeDuration"];
  [v48 doubleValue];
  self->_empiricalTimeToFullChargeDurationMinutes = v49;

  empiricalTimeToFullChargeDurationMinutes = self->_empiricalTimeToFullChargeDurationMinutes;
  v51 = fmax(fmin(empiricalTimeToFullChargeDurationMinutes, 180.0), 40.0);
  v52 = empiricalTimeToFullChargeDurationMinutes - v51;
  if (v52 < 0.0)
  {
    v52 = -v52;
  }

  if (v52 > 1.0)
  {
    self->_empiricalTimeToFullChargeDurationMinutes = v51;
    v53 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [(PowerUISmartChargeManager *)self setNumber:v53 forPreferenceKey:@"empiricalFullChargeDuration"];
  }

  v54 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"wirelessCharger"];
  self->_lastChargerWasWireless = [v54 BOOLValue];

  v55 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"engagementTimeOverride"];
  [(PowerUISmartChargeManager *)self setEngagementTimeOverride:v55];

  v56 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"fullChargeDeadlineOverride"];
  [(PowerUISmartChargeManager *)self setFullChargeDeadlineOverride:v56];

  v57 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"repeatEngagementOverrideEndDate"];
  [(PowerUISmartChargeManager *)self setRepeatEngagementOverrideEndDate:v57];

  [(PowerUISmartChargeManager *)self cleanupOverrides];
  v58 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"powerLogStatus" inDomain:self->_defaultsDomain];
  [(PowerUISmartChargeManager *)self setPowerLogStatus:v58];

  v59 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"becameOBCEligible"];
  v60 = v59;
  v85 = v44;
  if (v59)
  {
    LOBYTE(v59) = [v59 BOOLValue];
  }

  self->_becameOBCEligible = v59;
  v61 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"reachedTargetSoC"];
  v62 = v61;
  v86 = v40;
  if (v61)
  {
    LOBYTE(v61) = [v61 BOOLValue];
  }

  self->_reachedTargetSoC = v61;
  v63 = self->_log;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v82 = v25;
    v83 = v8;
    enabled = self->_enabled;
    v76 = self->_currentState;
    signalsIgnored = self->_signalsIgnored;
    isDesktopDevice = self->_isDesktopDevice;
    manualChargeLimitStatus = self->_manualChargeLimitStatus;
    v65 = MEMORY[0x277CCABB0];
    predictorType = self->_predictorType;
    log = v63;
    v67 = [v65 numberWithUnsignedInteger:predictorType];
    signalDeadline = self->_signalDeadline;
    v69 = [(PowerUISmartChargeManager *)self engagementTimeOverride];
    v70 = [(PowerUISmartChargeManager *)self fullChargeDeadlineOverride];
    [(PowerUISmartChargeManager *)self repeatEngagementOverrideEndDate];
    v71 = v81 = v32;
    v72 = [MEMORY[0x277CCABB0] numberWithBool:self->_overrideAllSignals];
    v73 = self->_empiricalTimeToFullChargeDurationMinutes;
    *buf = 67111938;
    *v91 = enabled;
    v25 = v82;
    *&v91[4] = 2048;
    *&v91[6] = v76;
    v92 = 1024;
    v93 = signalsIgnored;
    v94 = 1024;
    v95 = isDesktopDevice;
    v96 = 2048;
    v97 = manualChargeLimitStatus;
    v98 = 2112;
    v99 = v67;
    v100 = 2112;
    v101 = signalDeadline;
    v102 = 2112;
    v103 = v69;
    v104 = 2112;
    v105 = v70;
    v106 = 2112;
    v107 = v71;
    v108 = 2112;
    v109 = v72;
    v110 = 2048;
    v111 = v73;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Loaded Settings: Enabled=%u, CurrentState=%lu, Signals Ignored=%u, Desktop device=%u, Manual Charge Limit=%lu, Predictor = %@, Full Charge Deadline=%@, EngagementTimeOverride=%@, FullChargeDeadlineOverride=%@, repeatEngagementOverrideEndDate=%@ OverrideAllSignals=%@ minutesToFullCharge=%f", buf, 0x6Eu);

    v32 = v81;
    v8 = v83;
  }

  v74 = *MEMORY[0x277D85DE8];
}

- (BOOL)isExternalConnected
{
  if ([(PowerUISmartChargeManager *)self lastPluginStatus]> 0)
  {
    return 1;
  }

  if (([(PowerUISmartChargeManager *)self lastPluginStatus]& 0x80000000) == 0)
  {
    return 0;
  }

  v4 = [(PowerUISmartChargeManager *)self context];
  v5 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 BOOLValue];

  return v9;
}

- (void)handleTopOffSupervisorEventInternal
{
  if ([(PowerUISmartChargeManager *)self isExternalConnected])
  {
    verboseLog = self->_verboseLog;
    if (os_log_type_enabled(verboseLog, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21B766000, verboseLog, OS_LOG_TYPE_DEFAULT, "Handling periodic check for callback", v4, 2u);
    }

    [(PowerUISmartChargeManager *)self handleCallback:1];
  }
}

- (void)handleTopOffSupervisorEvent
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__PowerUISmartChargeManager_handleTopOffSupervisorEvent__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __56__PowerUISmartChargeManager_handleTopOffSupervisorEvent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) recallPeriodicCheck];
  v2 = *(a1 + 32);

  return [v2 handleTopOffSupervisorEventInternal];
}

- (void)requestPeriodicCheckWithDuration:(double)a3 withAlarmKey:(const char *)a4
{
  xdict = xpc_dictionary_create(0, 0, 0);
  v5 = time(0);
  xpc_dictionary_set_date(xdict, "Date", 1000000000 * (v5 + a3));
  xpc_set_event();
}

- (void)requestPeriodicCheck
{
  [(PowerUISmartChargeManager *)self periodicCheckDuration];

  [(PowerUISmartChargeManager *)self requestPeriodicCheckWithDuration:"TopOffSupervisor" withAlarmKey:?];
}

- (void)handleInternalCarryPromptEvent
{
  xpc_set_event();
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PowerUISmartChargeManager_handleInternalCarryPromptEvent__block_invoke;
    block[3] = &unk_2782D3EA8;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

void __59__PowerUISmartChargeManager_handleInternalCarryPromptEvent__block_invoke(uint64_t a1)
{
  if ([PowerUISmartChargeUtilities isPluggedInWithContext:*(*(a1 + 32) + 48)])
  {

    ADClientSetValueForScalarKey();
  }

  else
  {
    v2 = *(*(a1 + 32) + 96);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Failure: Providing notification to charge.", v7, 2u);
    }

    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-5.0];
    v4 = +[PowerUINotificationManager sharedInstance];
    v5 = [*(a1 + 32) smartTopOffFailureNotificationAtBatteryLevel:*(*(a1 + 32) + 32) withDate:v3];
    v6 = [v4 postNotificationWithRequest:v5];

    ADClientSetValueForScalarKey();
  }
}

- (void)handleDebounceTimerEvent
{
  v3 = [(PowerUISmartChargeManager *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v3, OS_LOG_TYPE_DEFAULT, "Handling debounce timer callback", buf, 2u);
  }

  xpc_set_event();
  v4 = [(PowerUISmartChargeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PowerUISmartChargeManager_handleDebounceTimerEvent__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleAlarmEvent:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = *MEMORY[0x277D86430];
  v6 = a3;
  v7 = [v4 stringWithUTF8String:{xpc_dictionary_get_string(v6, v5)}];
  reply = xpc_dictionary_create_reply(v6);
  v9 = xpc_dictionary_get_remote_connection(v6);

  xpc_connection_send_message(v9, reply);
  verboseLog = self->_verboseLog;
  if (os_log_type_enabled(verboseLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_21B766000, verboseLog, OS_LOG_TYPE_DEFAULT, "Alarm fired for %@", &v12, 0xCu);
  }

  if ([v7 isEqualToString:@"TopOffSupervisor"])
  {
    [(PowerUISmartChargeManager *)self handleTopOffSupervisorEvent];
  }

  else if ([v7 isEqualToString:@"InternalCarryPrompt"])
  {
    [(PowerUISmartChargeManager *)self handleInternalCarryPromptEvent];
  }

  else if ([v7 isEqualToString:@"DebounceTimer"])
  {
    [(PowerUISmartChargeManager *)self handleDebounceTimerEvent];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dispatchAlarmAfter:(int64_t)a3 withName:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = a3;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Requesting wake in %llu seconds for %@", &v11, 0x16u);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = time(0);
  xpc_dictionary_set_date(v8, "Date", 1000000000 * (v9 + a3));
  [v6 UTF8String];
  xpc_set_event();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)promptBDCToQueryCurrentState
{
  v7 = [(PowerUIBDCDataManager *)self->_bdcDataManager getBDCDataDictTemplate];
  [v7 setObject:&unk_282D4E5D8 forKeyedSubscript:@"ChargingState"];
  [v7 setObject:&unk_282D4E5D8 forKeyedSubscript:@"InflowState"];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PowerUISmartChargeManager currentChargeLimit](self, "currentChargeLimit")}];
  [v7 setObject:v3 forKeyedSubscript:@"ChargeLimit"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_checkpoint];
  [v7 setObject:v4 forKeyedSubscript:@"CheckPoint"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PowerUISmartChargeManager currentModeOfOperation](self, "currentModeOfOperation")}];
  [v7 setObject:v5 forKeyedSubscript:@"ModeOfOperation"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PowerUISmartChargeManager currentDecisionMaker](self, "currentDecisionMaker")}];
  [v7 setObject:v6 forKeyedSubscript:@"DecisionMaker"];

  [(PowerUIBDCDataManager *)self->_bdcDataManager promptBDCToQueryState:v7];
}

- (void)registerBDCXPC
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.powerui.xpcCallbackQueue", v3);
  xpcCallbackQueue = self->_xpcCallbackQueue;
  self->_xpcCallbackQueue = v4;

  mach_service = xpc_connection_create_mach_service("com.apple.powerui.bdcdata", self->_xpcCallbackQueue, 1uLL);
  bdcConnection = self->_bdcConnection;
  self->_bdcConnection = mach_service;

  v8 = self->_bdcConnection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __43__PowerUISmartChargeManager_registerBDCXPC__block_invoke;
  handler[3] = &unk_2782D48D8;
  handler[4] = self;
  xpc_connection_set_event_handler(v8, handler);
  xpc_connection_activate(self->_bdcConnection);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_INFO, "registerBDCXPC done", v10, 2u);
  }
}

void __43__PowerUISmartChargeManager_registerBDCXPC__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "xpcRegister event handler called", &v8, 2u);
  }

  if (MEMORY[0x21CEF8D90](v3) == MEMORY[0x277D86450])
  {
    [*(a1 + 32) incomingBDCRequest:v3];
  }

  else
  {
    v5 = MEMORY[0x21CEF8CD0](v3);
    v6 = *(*(a1 + 32) + 96);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = v5;
      _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Received object: %s", &v8, 0xCu);
    }

    free(v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)incomingBDCRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PowerUISmartChargeManager_incomingBDCRequest___block_invoke;
  v6[3] = &unk_2782D4D20;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  xpc_connection_set_event_handler(v5, v6);
  xpc_connection_activate(v5);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [PowerUISmartChargeManager incomingBDCRequest:];
  }
}

void __48__PowerUISmartChargeManager_incomingBDCRequest___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_INFO, "incomingBDCRequest event handler called", &v11, 2u);
  }

  if (MEMORY[0x21CEF8D90](v3) == MEMORY[0x277D86480])
  {
    v8 = MEMORY[0x21CEF8CD0](v3);
    v9 = *(*(a1 + 32) + 96);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = v8;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_INFO, "Connection received error: %s", &v11, 0xCu);
    }

    free(v8);
  }

  else if (MEMORY[0x21CEF8D90](v3) == MEMORY[0x277D86468])
  {
    if (os_log_type_enabled(*(*(a1 + 32) + 96), OS_LOG_TYPE_DEBUG))
    {
      __48__PowerUISmartChargeManager_incomingBDCRequest___block_invoke_cold_1();
    }

    v5 = xpc_dictionary_get_value(v3, "currentSmartChargingStateRequest");

    v6 = *(*(a1 + 32) + 96);
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "incoming xpc connection event: currentSmartChargingStateRequest", &v11, 2u);
      }

      [*(a1 + 32) sendBDCData:*(a1 + 40) withMessage:v3];
      v7 = [*(*(a1 + 32) + 392) bdcSemaphoreToUse];
      dispatch_semaphore_signal(v7);
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__PowerUISmartChargeManager_incomingBDCRequest___block_invoke_cold_2();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendBDCData:(id)a3 withMessage:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    reply = xpc_dictionary_create_reply(v7);
    if (reply)
    {
      *buf = 0u;
      v40 = 0u;
      xpc_connection_get_audit_token();
      v10 = *MEMORY[0x277CBECE8];
      memset(&token, 0, sizeof(token));
      v11 = SecTaskCreateWithAuditToken(v10, &token);
      if (v11 && (v12 = v11, v13 = SecTaskCopyValueForEntitlement(v11, @"com.apple.powerui.bdcdata", 0), CFRelease(v12), v13))
      {
        CFRelease(v13);
        v14 = [(PowerUIBDCDataManager *)self->_bdcDataManager getNextBDCDataDict];
        v15 = [v14 objectForKeyedSubscript:@"MessageVersion"];
        xpc_dictionary_set_int64(reply, "MessageVersion", [v15 intValue]);

        v16 = [v14 objectForKeyedSubscript:@"ChargingState"];
        xpc_dictionary_set_BOOL(reply, "ChargingState", [v16 BOOLValue]);

        v17 = [v14 objectForKeyedSubscript:@"InflowState"];
        xpc_dictionary_set_BOOL(reply, "InflowState", [v17 BOOLValue]);

        v18 = [v14 objectForKeyedSubscript:@"ChargeLimit"];
        xpc_dictionary_set_int64(reply, "ChargeLimit", [v18 intValue]);

        v19 = [v14 objectForKeyedSubscript:@"CheckPoint"];
        xpc_dictionary_set_int64(reply, "CheckPoint", [v19 intValue]);

        v20 = [v14 objectForKeyedSubscript:@"DecisionMaker"];
        xpc_dictionary_set_int64(reply, "DecisionMaker", [v20 intValue]);

        v21 = [v14 objectForKeyedSubscript:@"ModeOfOperation"];
        xpc_dictionary_set_int64(reply, "ModeOfOperation", [v21 intValue]);

        xpc_dictionary_send_reply();
        v22 = [(PowerUISmartChargeManager *)self log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v37 = [v14 objectForKeyedSubscript:@"MessageVersion"];
          v33 = [v37 intValue];
          v36 = [v14 objectForKeyedSubscript:@"ChargingState"];
          v32 = [v36 BOOLValue];
          v35 = [v14 objectForKeyedSubscript:@"InflowState"];
          v31 = [v35 BOOLValue];
          v34 = [v14 objectForKeyedSubscript:@"ChargeLimit"];
          v30 = [v34 intValue];
          v23 = [v14 objectForKeyedSubscript:@"CheckPoint"];
          v24 = [v23 intValue];
          v25 = [v14 objectForKeyedSubscript:@"DecisionMaker"];
          v26 = [v25 intValue];
          v27 = [v14 objectForKeyedSubscript:@"ModeOfOperation"];
          v28 = [v27 intValue];
          *buf = 67110656;
          *&buf[4] = v33;
          *&buf[8] = 1024;
          *&buf[10] = v32;
          *&buf[14] = 1024;
          LODWORD(v40) = v31;
          WORD2(v40) = 1024;
          *(&v40 + 6) = v30;
          WORD5(v40) = 1024;
          HIDWORD(v40) = v24;
          v41 = 1024;
          v42 = v26;
          v43 = 1024;
          v44 = v28;
          _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_INFO, "Sent data to BDC: MessageVersion=%d - ChargingState=%d - InflowState=%d - ChargeLimit=%d - CheckPoint=%d - DecisionMaker=%d - ModeOfOperation: %d", buf, 0x2Cu);
        }
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [PowerUISmartChargeManager sendBDCData:withMessage:];
        }

        xpc_dictionary_set_uint64(reply, "returnCode", 0xFFFFFFFFE00002C1);
        xpc_dictionary_send_reply();
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager sendBDCData:withMessage:];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [PowerUISmartChargeManager sendBDCData:withMessage:];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (unint64_t)currentModeOfOperation
{
  v3 = [PowerUISmartChargeUtilities timelineEventDate:@"Plugin" withDefaultsDomain:self->_defaultsDomain];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[PowerUISmartChargeUtilities lastPluggedInDate];
  }

  v6 = v5;
  [v5 timeIntervalSinceNow];
  if (self->_checkpoint - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (self->_manualChargeLimitStatus == 1)
    {
      v8 = 7;
    }

    else if (self->_isDesktopDevice)
    {
      v8 = 5;
    }

    else if (self->_remoteOBCEngaged)
    {
      v8 = 4;
    }

    else if (v7 >= -72000.0)
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)currentDecisionMaker
{
  v3 = +[PowerUISmartChargeUtilities lastPluggedInDate];
  [(NSDate *)self->_previousDecisionMakerDate timeIntervalSinceDate:v3];
  if (v4 <= 0.0)
  {
    v6 = -1;
  }

  else
  {
    previousDecisionMakerID = self->_previousDecisionMakerID;
    if (previousDecisionMakerID > 9)
    {
      v6 = 1;
    }

    else
    {
      v6 = qword_21B848530[previousDecisionMakerID];
    }
  }

  return v6;
}

- (void)updateNotificationSettings:(BOOL)a3
{
  if (a3)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "Notification", "com.apple.system.powermanagement.useractivity2");
    xpc_set_event();
  }

  else
  {

    xpc_set_event();
  }
}

- (void)handleCallback:(BOOL)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v57 = os_transaction_create();
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of handleCallback"];
  v5 = [(PowerUISmartChargeManager *)self context];
  v6 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v7 = [v5 objectForKeyedSubscript:v6];

  verboseLog = self->_verboseLog;
  if (os_log_type_enabled(verboseLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_21B766000, verboseLog, OS_LOG_TYPE_DEFAULT, "Handling data dictionary: %@", &buf, 0xCu);
  }

  if (v7)
  {
    v9 = [MEMORY[0x277CFE338] batteryPercentageKey];
    v10 = [v7 objectForKeyedSubscript:v9];
    v11 = [v10 intValue];

    v12 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
    v13 = [v7 objectForKeyedSubscript:v12];
    v14 = [v13 BOOLValue];

    v15 = [MEMORY[0x277CFE338] batteryFullyChargedKey];
    v16 = [v7 objectForKeyedSubscript:v15];
    v56 = [v16 BOOLValue];

    context = self->_context;
    v18 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
    v19 = [(_CDLocalContext *)context objectForKeyedSubscript:v18];
    v20 = [v19 BOOLValue];

    [(PowerUISmartChargeManager *)self updateNotificationSettings:v14];
    v21 = [MEMORY[0x277CBEAA8] date];
    if ((([(PowerUISmartChargeManager *)self lastPluginStatus]== 0) & v14) == 1)
    {
      [v21 timeIntervalSinceDate:self->_disabledUntilDate];
      if (v22 > 0.0)
      {
        [(PowerUISmartChargeManager *)self setTemporarilyDisabled:0 until:0];
      }
    }

    v23 = [MEMORY[0x277CFE338] batteryIsChargingKey];
    v24 = [v7 objectForKeyedSubscript:v23];
    v25 = [v24 BOOLValue];

    if (v11 != [(PowerUISmartChargeManager *)self lastBatteryLevel]|| [(PowerUISmartChargeManager *)self lastPluginStatus]< 1)
    {
      goto LABEL_19;
    }

    v26 = [(PowerUISmartChargeManager *)self lastPluginStatus];
    if (v14)
    {
      if (((v26 > 0) & v25) != 1 || v56 && self->_checkpoint - 5 < 2)
      {
        goto LABEL_19;
      }
    }

    else if (v26 > 0)
    {
      goto LABEL_19;
    }

    if (!a3)
    {
      v27 = [(PowerUISmartChargeManager *)self log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [PowerUISmartChargeManager handleCallback:];
      }

      goto LABEL_18;
    }

LABEL_19:
    if (![(PowerUISmartChargeManager *)self shouldContinueAfterMCMCheckWithBatteryLevel:v11 withIsCharging:v25 withIsExternalConnected:v14 withIsPluggedIn:v20])
    {
      goto LABEL_92;
    }

    if (os_log_type_enabled(self->_mcmLog, OS_LOG_TYPE_DEBUG))
    {
      [PowerUISmartChargeManager handleCallback:];
    }

    v28 = [(PowerUISmartChargeManager *)self log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [(PowerUISmartChargeManager *)self handleCallback:v14, v28];
    }

    if ([(PowerUISmartChargeManager *)self lastPluginStatus]!= v14 && !self->_potentialUnplugDate)
    {
      [(PowerUIIntelligenceManager *)self->_intelligenceManager handleCallback];
    }

    debounceOverride = 300.0;
    if (+[PowerUISmartChargeUtilities isInternalBuild]&& self->_debounceOverride >= 0.0)
    {
      debounceOverride = self->_debounceOverride;
    }

    if ([(PowerUISmartChargeManager *)self lastPluginStatus]== v14)
    {
      v30 = 1;
    }

    else
    {
      v30 = v14;
    }

    if (v30)
    {
      if (v14 && self->_potentialUnplugDate)
      {
        v31 = [(PowerUISmartChargeManager *)self log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_21B766000, v31, OS_LOG_TYPE_DEFAULT, "Plugged in within debounce limit, ignore previous unplug", &buf, 2u);
        }

        potentialUnplugDate = self->_potentialUnplugDate;
        self->_potentialUnplugDate = 0;

        [(PowerUISmartChargeManager *)self setDate:0 forPreferenceKey:@"potentialUnplugDate"];
        if (!self->_isDesktopDevice && self->_manualChargeLimitStatus != 1 && self->_checkpoint - 2 <= 2)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "OBC still engaged on re-plug, re-post notification", &buf, 2u);
          }

          [(PowerUISmartChargeManager *)self postOBCNotificationWithTopOff:0];
        }
      }

      goto LABEL_55;
    }

    if (self->_potentialUnplugDate)
    {
      [v21 timeIntervalSinceDate:?];
      if (v34 < debounceOverride + -60.0)
      {
        [v21 timeIntervalSinceDate:self->_potentialUnplugDate];
        v36 = v35;
        v37 = [(PowerUISmartChargeManager *)self log];
        v38 = fmax(debounceOverride - v36, 10.0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v38;
          _os_log_impl(&dword_21B766000, v37, OS_LOG_TYPE_DEFAULT, "Potential disconnect, debounce for %f more seconds", &buf, 0xCu);
        }

        [(PowerUISmartChargeManager *)self requestPeriodicCheckWithDuration:"DebounceTimer" withAlarmKey:v38];
        goto LABEL_92;
      }

      v39 = [(PowerUISmartChargeManager *)self log];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = debounceOverride;
        _os_log_impl(&dword_21B766000, v39, OS_LOG_TYPE_DEFAULT, "Device not reconnected to power within %f seconds, treat as unplugged", &buf, 0xCu);
      }

      v40 = self->_potentialUnplugDate;
      v41 = self->_potentialUnplugDate;
      self->_potentialUnplugDate = 0;

      [(PowerUISmartChargeManager *)self setDate:0 forPreferenceKey:@"potentialUnplugDate"];
      v21 = v40;
LABEL_55:
      [(PowerUISmartChargeManager *)self updateTimeLineForCurrentBatteryLevel:v11 withIsExternalConnected:v14 forDate:v21];
      [(PowerUISmartChargeManager *)self setLastBatteryLevel:v11];
      v21 = v21;
      v42 = [(PowerUISmartChargeManager *)self lastPluginStatus];
      v43 = v14 ^ 1;
      if (v42 == v14)
      {
        v43 = 1;
      }

      if (v43)
      {
        if ([(PowerUISmartChargeManager *)self lastPluginStatus]== v14)
        {
          v47 = 1;
        }

        else
        {
          v47 = v14;
        }

        if (v47)
        {
          v48 = v21;
          if ([(PowerUISmartChargeManager *)self lastPluginStatus]== v14)
          {
            v48 = v21;
            if (self->_manualChargeLimitStatus != 1)
            {
              v48 = v21;
              if (!self->_checkpoint)
              {
                if (!self->_enabled || (v48 = v21, self->_temporarilyDisabled))
                {
                  v49 = [(PowerUISmartChargeManager *)self log];
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    [(PowerUISmartChargeManager *)self handleCallback:v49];
                  }

                  v48 = v21;
                  goto LABEL_91;
                }
              }
            }
          }
        }

        else
        {
          [(PowerUISmartChargeManager *)self handleUnplugAtDate:v21 withBatteryLevel:v11];
          v48 = v21;
        }
      }

      else
      {
        v44 = [PowerUISmartChargeUtilities timelineEventDate:@"Plugin" withDefaultsDomain:self->_defaultsDomain];
        v45 = v44;
        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = +[PowerUISmartChargeUtilities lastPluggedInDate];
        }

        v48 = v46;

        v50 = [(PowerUISmartChargeManager *)self log];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          [PowerUISmartChargeManager handleCallback:];
        }

        v51 = [PowerUISmartChargeUtilities deviceConnectedToWirelessChargerWithContext:self->_context];
        self->_lastChargerWasWireless = v51;
        v52 = [MEMORY[0x277CCABB0] numberWithBool:v51];
        [(PowerUISmartChargeManager *)self setNumber:v52 forPreferenceKey:@"wirelessCharger"];

        [(PowerUISmartChargeManager *)self resetDeviceHasLegitimateUsage];
        [(PowerUIMLTwoStageModelPredictor *)self->_modelTwoStagePredictor setPluginDate:v48];
        if (!v45)
        {
          [(PowerUISmartChargeManager *)self handleNewPluginWithBatteryLevel:v11 pluginDate:v48];
        }

        v53 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
        v54 = v53;
        if (v53)
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v59 = 0x3032000000;
          v60 = __Block_byref_object_copy__8;
          v61 = __Block_byref_object_dispose__8;
          v62 = [v53 objectForKey:@"featureAnalytics"];
          if (*(*(&buf + 1) + 40))
          {
            AnalyticsSendEventLazy();
          }

          _Block_object_dispose(&buf, 8);
        }
      }

      [(PowerUISmartChargeManager *)self setLastPluginStatus:v14];
      if ((((v20 | v14) & 1) != 0 || self->_isChargePackConnected) && self->_manualChargeLimitStatus == 1)
      {
        [(PowerUISmartChargeManager *)self engageManualChargeLimit];
      }

      if (self->_manualChargeLimitStatus == 1)
      {
        [(PowerUISmartChargeManager *)self handleNewBatteryLevelForMCL:v11 whileExternalConnected:v14];
      }

      else if (+[PowerUISmartChargeUtilities isiPhone])
      {
        [(PowerUISmartChargeManager *)self handleNewBatteryLevel:v11 whileExternalConnected:v14 fullyCharged:v56];
      }

LABEL_91:

      goto LABEL_92;
    }

    objc_storeStrong(&self->_potentialUnplugDate, v21);
    [(PowerUISmartChargeManager *)self setDate:self->_potentialUnplugDate forPreferenceKey:@"potentialUnplugDate"];
    [(PowerUISmartChargeManager *)self requestPeriodicCheckWithDuration:"DebounceTimer" withAlarmKey:debounceOverride];
    [(PowerUISmartChargeManager *)self clearAllNotificationState];
    v27 = [(PowerUISmartChargeManager *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = debounceOverride;
      _os_log_impl(&dword_21B766000, v27, OS_LOG_TYPE_DEFAULT, "Potential disconnect, debounce for %f seconds", &buf, 0xCu);
    }

LABEL_18:

LABEL_92:
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)handleUnplugAtDate:(id)a3 withBatteryLevel:(int)a4
{
  v6 = a3;
  v7 = [PowerUISmartChargeUtilities timelineEventDate:@"Unplug" withDefaultsDomain:self->_defaultsDomain];
  if (!v7)
  {
    [(PowerUISmartChargeManager *)self pluginTimelineAddEvent:@"Unplug" atDate:v6 withBatteryLevel:a4];
    [(PowerUISmartChargeManager *)self recordAnalytics];
  }

  [(PowerUISmartChargeManager *)self clearPluginTimeline];
  [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E5C0 forPreferenceKey:@"becameOBCEligible"];
  [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E5C0 forPreferenceKey:@"reachedTargetSoC"];
  *&self->_becameOBCEligible = 0;
  [(PowerUISmartChargeManager *)self cacheCurrentDEoCBehaviorForced:1];
  if (self->_predictorType == 4)
  {
    [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E698 forPreferenceKey:@"chargePredictionModel"];
    self->_predictorType = 2;
    v8 = [(PowerUISmartChargeManager *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Reset predictor type back to default", v9, 2u);
    }
  }

  [(PowerUISmartChargeManager *)self checkWhetherMCLTempDisablementCanBeClearedOnPlugin:0];
  [(PowerUISmartChargeManager *)self clearManualChargeLimit];
}

- (void)reportAggDKeys:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reporting to aggd %@", &v7, 0xCu);
  }

  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1346];

  v6 = *MEMORY[0x277D85DE8];
}

void __44__PowerUISmartChargeManager_reportAggDKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 integerValue];
  ADClientSetValueForScalarKey();
}

- (unint64_t)mostRecentOBCModeOfoperationFromTimeline
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = CFPreferencesCopyAppValue(@"timeline", self->_defaultsDomain);
  v3 = [v2 mutableCopy];

  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 reverseObjectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v14 + 1) + 8 * v8) objectForKey:@"obcModeOfOperation"];
          v10 = [v9 unsignedIntValue];

          if (v10)
          {
            v11 = v10;
            goto LABEL_12;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)recordAnalytics
{
  v241 = *MEMORY[0x277D85DE8];
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of recordAnalytics"];
  v3 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"AggDStatus" inDomain:self->_defaultsDomain];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
  }

  v208 = v4;
  v200 = [(PowerUISmartChargeManager *)self mostRecentOBCModeOfoperationFromTimeline];
  v5 = v200 - 2;
  if (v200 - 2 > 5)
  {
    v7 = @"com.apple.das.smartcharging.analytics.countOBCSessions";
    v6 = @"com.apple.das.smartcharging.analytics.countOBCSessionsTempDisabled";
    v203 = @"com.apple.das.smartcharging.analytics.countTotalMinutesIdledInOBC";
  }

  else
  {
    v203 = off_2782D4F28[v5];
    v6 = off_2782D4F58[v5];
    v7 = off_2782D4F88[v5];
  }

  v8 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessions"];
  v204 = [v8 unsignedIntegerValue];

  v9 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:v7];
  v10 = [v9 unsignedIntegerValue];

  v11 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:v6];
  v12 = [v11 unsignedIntegerValue];

  v13 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countMCLChargeSessionsEnabled"];
  v14 = [v13 unsignedIntegerValue];

  v15 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countOBCSessionsEnabled"];
  v211 = self;
  v16 = [v15 unsignedIntegerValue];

  v17 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countDEoCSessionsEnabled"];
  v18 = [v17 unsignedIntegerValue];

  v19 = [MEMORY[0x277CBEB38] dictionary];
  v202 = v10;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v201 = v7;
  v21 = v7;
  v22 = v18;
  v23 = v16;
  [(NSArray *)v19 setObject:v20 forKeyedSubscript:v21];

  v207 = v12;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  v209 = v6;
  [(NSArray *)v19 setObject:v24 forKeyedSubscript:v6];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  [(NSArray *)v19 setObject:v25 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countMCLChargeSessionsEnabled"];

  v26 = v19;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  [(NSArray *)v19 setObject:v27 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countOBCSessionsEnabled"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  [(NSArray *)v19 setObject:v28 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countDEoCSessionsEnabled"];

  temporarilyDisabled = v211->_temporarilyDisabled;
  if (temporarilyDisabled)
  {
    v29 = v208;
    v30 = v14;
  }

  else
  {
    v23 = v16 + v211->_enabled;
    if (v211->_manualChargeLimitStatus == 1)
    {
      v30 = v14 + 1;
    }

    else
    {
      v30 = v14;
    }

    if (v211->_deocFeatureState == 1)
    {
      ++v22;
    }

    v29 = v208;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v204 + 1];
  [v29 setObject:v31 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countChargeSessions"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v204 + 1];
  [(PowerUISmartChargeManager *)v211 setNumber:v32 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessions"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
  [(PowerUISmartChargeManager *)v211 setNumber:v33 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countMCLChargeSessionsEnabled"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
  [(PowerUISmartChargeManager *)v211 setNumber:v34 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countOBCSessionsEnabled"];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  [(PowerUISmartChargeManager *)v211 setNumber:v35 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countDEoCSessionsEnabled"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v207 + temporarilyDisabled];
  [(PowerUISmartChargeManager *)v211 setNumber:v36 forPreferenceKey:v209];

  if ([(PowerUISmartChargeManager *)v211 isDeviceWithLegitimateUsage])
  {
    v37 = [(PowerUISmartChargeManager *)v211 fullChargeDeadlineOverride];

    if (v37)
    {
      log = v211->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Full charge deadling overriden. Skip recording.", buf, 2u);
      }

      [(PowerUISmartChargeManager *)v211 reportAggDKeys:v29];
      v237[1] = MEMORY[0x277D85DD0];
      v237[2] = 3221225472;
      v237[3] = __44__PowerUISmartChargeManager_recordAnalytics__block_invoke_1362;
      v237[4] = &unk_2782D4188;
      v237[5] = @"StatusReason";
      AnalyticsSendEventLazy();
      v39 = @"StatusReason";
      goto LABEL_99;
    }

    v197 = v30;
    v41 = [(PowerUISmartChargeManager *)v211 constructAnalyticsStatus];
    v42 = [(__CFString *)v41 valueForKey:@"EligibleForIdleBatteryLevelScore"];
    if (v42)
    {
      v43 = v42;
      v44 = [(__CFString *)v41 valueForKey:@"BadSession"];

      if (!v44)
      {
        [(PowerUISmartChargeManager *)v211 recordDEoCAnalytics:v41];
      }
    }

    v45 = [(__CFString *)v41 objectForKeyedSubscript:@"IdleDuration"];
    v199 = [v45 unsignedIntegerValue];

    v46 = [(__CFString *)v41 objectForKeyedSubscript:@"EstimatedUsableEligibleDuration"];
    v194 = [v46 unsignedIntegerValue];

    v47 = [(__CFString *)v41 objectForKeyedSubscript:@"TotalEligibleDuration"];
    [v47 unsignedIntegerValue];

    v48 = [(__CFString *)v41 objectForKeyedSubscript:@"UnderChargedAvoidable"];
    [v48 BOOLValue];

    v49 = [(__CFString *)v41 objectForKeyedSubscript:@"AbsoluteShouldHaveEngaged"];
    [v49 unsignedIntegerValue];

    v50 = [(__CFString *)v41 objectForKeyedSubscript:@"PluginDuration"];
    [v50 unsignedIntegerValue];

    v51 = [(__CFString *)v41 objectForKeyedSubscript:@"AnalyticsPluginDate"];
    [v51 doubleValue];
    v53 = v52;

    v198 = v22;
    v205 = v41;
    v196 = v23;
    if (!v211->_enabled && v199 <= 0x3B && ![(PowerUISmartChargeManager *)v211 isMCLSupported])
    {
      v66 = v212;
      v212[0] = @"StatusReason";
      AnalyticsSendEventLazy();
LABEL_57:

      v77 = [(__CFString *)v41 objectForKeyedSubscript:@"EngagementModelResult"];
      [v77 doubleValue];
      v79 = v78;

      v80 = [(__CFString *)v205 objectForKeyedSubscript:@"EngageModelVersion"];
      v81 = [v80 unsignedIntegerValue];

      v82 = [MEMORY[0x277CCABB0] numberWithInteger:100 * v79];
      [v29 setObject:v82 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.engageModelResult"];

      v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v81];
      [v29 setObject:v83 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.engageModelVersion"];

      v84 = [(__CFString *)v205 objectForKeyedSubscript:@"DurationModelResult"];
      [v84 doubleValue];
      v86 = v85;

      v87 = [(__CFString *)v205 objectForKeyedSubscript:@"DurationModelVersion"];
      v88 = [v87 unsignedIntegerValue];

      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v88];
      [v29 setObject:v89 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.durationModelVersion"];

      v90 = [MEMORY[0x277CCABB0] numberWithInteger:60 * v86];
      [v29 setObject:v90 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.durationModelResult"];

      v91 = [(__CFString *)v205 objectForKeyedSubscript:@"DecisionMaker"];
      v92 = v91;
      if (v91)
      {
        v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.das.smartcharging.analytics.countDecisionMaker.%lu", objc_msgSend(v91, "unsignedIntegerValue")];
        v94 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:v93];
        v95 = [v94 unsignedIntegerValue];

        v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v95 + 1];
        [(PowerUISmartChargeManager *)v211 setNumber:v96 forPreferenceKey:v93];

        v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v95 + 1];
        [v29 setObject:v97 forKeyedSubscript:v93];
      }

      if (v199 >= 0x3C)
      {
        v98 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessionsEngaged"];
        v99 = [v98 unsignedIntegerValue];

        v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v99 + 1];
        [(PowerUISmartChargeManager *)v211 setNumber:v100 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessionsEngaged"];

        v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v99 + 1];
        [v29 setObject:v101 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countChargeSessionsEngaged"];
      }

      v102 = [(__CFString *)v205 objectForKeyedSubscript:@"TopOffInitiated"];
      v103 = [v102 BOOLValue];

      v104 = [(__CFString *)v205 objectForKeyedSubscript:@"FullCharged"];
      v105 = [v104 BOOLValue];

      if (v103)
      {
        v106 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessionsTopOffEngaged"];
        v107 = [v106 unsignedIntegerValue];

        v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v107 + 1];
        [(PowerUISmartChargeManager *)v211 setNumber:v108 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessionsTopOffEngaged"];

        v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v107 + 1];
        [v29 setObject:v109 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countChargeSessionsTopOffEngaged"];
      }

      v195 = v92;
      if (v105)
      {
        v110 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessionsFullCharged"];
        v111 = [v110 unsignedIntegerValue];

        v112 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v111 + 1];
        [(PowerUISmartChargeManager *)v211 setNumber:v112 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessionsFullCharged"];

        v113 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v111 + 1];
        [v29 setObject:v113 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countChargeSessionsFullCharged"];
      }

      v114 = v199 / 0x3C;
      v115 = [(__CFString *)v205 objectForKeyedSubscript:@"PluginDuration"];
      v193 = [v115 unsignedIntegerValue];

      v116 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countMinutesIdled"];
      v117 = [v116 unsignedIntegerValue];

      v118 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countMinutesEligibleForIdle"];
      v119 = [v118 unsignedIntegerValue];

      v120 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countMinutesTotal"];
      v121 = [v120 unsignedIntegerValue];

      v122 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:v203];
      v123 = [v122 unsignedIntegerValue];

      v124 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v117];
      v125 = v123;
      [(NSArray *)v19 setObject:v124 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countMinutesIdled"];

      v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v123];
      [(NSArray *)v19 setObject:v126 forKeyedSubscript:v203];

      if (v199 >= 0x3C)
      {
        v117 += v114;
        ++v202;
        v127 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v117];
        [v29 setObject:v127 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countMinutesIdled"];

        v125 = v123 + v114;
        ADClientSetValueForScalarKey();
      }

      v39 = v205;
      if (v194 >= 0x3C)
      {
        ADClientAddValueForScalarKey();
        v119 += v194 / 0x3C;
        v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v119];
        [v29 setObject:v128 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countMinutesEligibleForIdle"];
      }

      if (v193 >= 0x3C)
      {
        v121 += v193 / 0x3C;
        v129 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v121];
        [v29 setObject:v129 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countMinutesTotal"];
      }

      v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v117];
      [(PowerUISmartChargeManager *)v211 setNumber:v130 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countMinutesIdled"];

      v131 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v119];
      [(PowerUISmartChargeManager *)v211 setNumber:v131 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countMinutesEligibleForIdle"];

      v132 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v121];
      [(PowerUISmartChargeManager *)v211 setNumber:v132 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countMinutesTotal"];

      v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v125];
      [(PowerUISmartChargeManager *)v211 setNumber:v133 forPreferenceKey:v203];

      v134 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v202];
      [(PowerUISmartChargeManager *)v211 setNumber:v134 forPreferenceKey:v201];

      [MEMORY[0x277CBEB38] dictionary];
      v136 = v135 = v125;
      v137 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v202];
      [(NSArray *)v136 setObject:v137 forKeyedSubscript:v201];

      v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v207 + temporarilyDisabled];
      [(NSArray *)v136 setObject:v138 forKeyedSubscript:v209];

      v139 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v197];
      [(NSArray *)v136 setObject:v139 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countMCLChargeSessionsEnabled"];

      v140 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v196];
      [(NSArray *)v136 setObject:v140 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countOBCSessionsEnabled"];

      v141 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v198];
      [(NSArray *)v136 setObject:v141 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countDEoCSessionsEnabled"];

      v142 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v117];
      [(NSArray *)v136 setObject:v142 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countMinutesIdled"];

      v143 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v135];
      [(NSArray *)v136 setObject:v143 forKeyedSubscript:v203];

      v144 = v211->_log;
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        v145 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v200];
        *buf = 138412290;
        v240 = v145;
        _os_log_impl(&dword_21B766000, v144, OS_LOG_TYPE_DEFAULT, "Most recent SmartCharging mode of operation: %@", buf, 0xCu);
      }

      v146 = v211->_log;
      v26 = v19;
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        v147 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v199 / 0x3C];
        *buf = 138412290;
        v240 = v147;
        _os_log_impl(&dword_21B766000, v146, OS_LOG_TYPE_DEFAULT, "Idled minutes in last session: %@", buf, 0xCu);
      }

      v148 = v211->_log;
      v29 = v208;
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v240 = v19;
        _os_log_impl(&dword_21B766000, v148, OS_LOG_TYPE_DEFAULT, "Previous values %@", buf, 0xCu);
      }

      v149 = v211->_log;
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v240 = v136;
        _os_log_impl(&dword_21B766000, v149, OS_LOG_TYPE_DEFAULT, "Updated values %@", buf, 0xCu);
      }

      v150 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"empiricalFullChargeDuration"];
      v151 = [v150 unsignedIntegerValue];

      if (v151)
      {
        v152 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v151];
        [v208 setObject:v152 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.fullChargeDuration"];
      }

      v153 = [(__CFString *)v205 objectForKeyedSubscript:@"IdleBatteryLevelScore"];
      v154 = [v153 unsignedIntegerValue];

      v155 = [(__CFString *)v205 objectForKeyedSubscript:@"PluginEndBatteryLevelScore"];
      v156 = [v155 unsignedIntegerValue];

      v157 = [(__CFString *)v205 objectForKeyedSubscript:@"ProjectedPluginEndBatteryLevelScore"];
      v158 = [v157 unsignedIntegerValue];

      if (v154 && v156)
      {
        v210 = v136;
        v159 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.das.smartcharging.analytics.countChargeSessionsIdleStartBatteryLevel.%lu", v154];
        v160 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:v159];
        v161 = [v160 unsignedIntegerValue];

        v162 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v161 + 1];
        [(PowerUISmartChargeManager *)v211 setNumber:v162 forPreferenceKey:v159];

        v163 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v161 + 1];
        [v208 setObject:v163 forKeyedSubscript:v159];

        v164 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.das.smartcharging.analytics.countChargeSessionsPlugOutBatteryLevel.%lu", v156];

        v165 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:v164];
        v166 = [v165 unsignedIntegerValue];

        v167 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v166 + 1];
        [v208 setObject:v167 forKeyedSubscript:v164];

        if (v156 != 100)
        {
          v168 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countUndercharged"];
          v169 = [v168 unsignedIntegerValue];

          v170 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v169 + 1];
          [(PowerUISmartChargeManager *)v211 setNumber:v170 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countUndercharged"];

          v171 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v169 + 1];
          [v208 setObject:v171 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countUndercharged"];
        }

        if (v211->_encounteredTLCDuringTopOff)
        {
          v172 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countUnderchargedTLC"];
          v173 = [v172 unsignedIntegerValue];

          v174 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173 + 1];
          [(PowerUISmartChargeManager *)v211 setNumber:v174 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countUnderchargedTLC"];

          v175 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173 + 1];
          [v208 setObject:v175 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countUnderchargedTLC"];
        }

        v136 = v210;
        if (v156 != 100 && v158 == 100 && !v211->_encounteredTLCDuringTopOff)
        {
          v176 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.das.smartcharging.analytics.countUnderchargedPreventableBatteryLevel.%lu", v156];
          v177 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:v176];
          v178 = [v177 unsignedIntegerValue];

          v179 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v178 + 1];
          [(PowerUISmartChargeManager *)v211 setNumber:v179 forPreferenceKey:v176];

          v180 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v178 + 1];
          [v208 setObject:v180 forKeyedSubscript:v176];

          v181 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countUnderchargedPreventable"];
          v182 = [v181 unsignedIntegerValue];

          v183 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v182 + 1];
          [(PowerUISmartChargeManager *)v211 setNumber:v183 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countUnderchargedPreventable"];

          v184 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v182 + 1];
          [v208 setObject:v184 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countUnderchargedPreventable"];
        }

        v26 = v19;
      }

      v185 = [(__CFString *)v205 objectForKeyedSubscript:@"ShouldHaveEngaged"];
      v186 = [v185 unsignedIntegerValue];

      if (v186)
      {
        v187 = [(PowerUISmartChargeManager *)v211 readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessionsFailedToEngage"];
        v188 = [v187 unsignedIntegerValue];

        v189 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v188 + 1];
        [(PowerUISmartChargeManager *)v211 setNumber:v189 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countChargeSessionsFailedToEngage"];

        v190 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v188 + 1];
        [v208 setObject:v190 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.countChargeSessionsFailedToEngage"];
      }

      [(PowerUISmartChargeManager *)v211 reportAggDKeys:v208];
      if (v208)
      {
        [PowerUISmartChargeUtilities setDict:v208 forPreferenceKey:@"AggDStatus" inDomain:v211->_defaultsDomain];
      }

      v191 = [(PowerUISmartChargeManager *)v211 constructDailyStats:v205];
      if (v191)
      {
        [PowerUISmartChargeUtilities setDict:v191 forPreferenceKey:@"DailyStatus" inDomain:v211->_defaultsDomain];
      }

      [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of recordAnalytics"];

      goto LABEL_99;
    }

    v233 = MEMORY[0x277D85DD0];
    v234 = 3221225472;
    v235 = __44__PowerUISmartChargeManager_recordAnalytics__block_invoke_2;
    v236 = &unk_2782D4188;
    v237[0] = v41;
    AnalyticsSendEventLazy();
    v228 = MEMORY[0x277D85DD0];
    v229 = 3221225472;
    v230 = __44__PowerUISmartChargeManager_recordAnalytics__block_invoke_3;
    v231 = &unk_2782D4188;
    v54 = v237[0];
    v232 = v54;
    AnalyticsSendEventLazy();
    v223 = MEMORY[0x277D85DD0];
    v224 = 3221225472;
    v225 = __44__PowerUISmartChargeManager_recordAnalytics__block_invoke_4;
    v226 = &unk_2782D4188;
    v227 = @"StatusReason";
    AnalyticsSendEventLazy();
    v55 = v211->_log;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v240 = v54;
      _os_log_impl(&dword_21B766000, v55, OS_LOG_TYPE_DEFAULT, "Reported Plugout Metrics to CoreAnalytics %@", buf, 0xCu);
    }

    [PowerUISmartChargeUtilities setDict:v54 forPreferenceKey:@"CAPluggedInStatus" inDomain:v211->_defaultsDomain];
    v56 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-172800.0];
    [v56 timeIntervalSince1970];
    v58 = v57;

    if (v53 <= v58)
    {
      v65 = v211->_log;
      if (v53 == 0.0)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [PowerUISmartChargeManager recordAnalytics];
        }
      }

      else if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v65, OS_LOG_TYPE_DEFAULT, "Plugin date is too long ago, do not attempt Biome plugout analysis", buf, 2u);
      }
    }

    else
    {
      analyticsManager = v211->_analyticsManager;
      v60 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v53 + -1.0];
      v61 = [(PowerUIAnalyticsManager *)analyticsManager chargingStatisticsSince:v60];

      v62 = [(NSArray *)v61 objectForKeyedSubscript:@"numberChargeSessions"];
      v63 = [v62 intValue];

      v64 = v211->_log;
      if (v63 < 1)
      {
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [PowerUISmartChargeManager recordAnalytics];
        }
      }

      else
      {
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v240 = v61;
          _os_log_impl(&dword_21B766000, v64, OS_LOG_TYPE_DEFAULT, "Reporting Biome Plugout Metrics to CoreAnalytics %@", buf, 0xCu);
        }

        v218 = MEMORY[0x277D85DD0];
        v219 = 3221225472;
        v220 = __44__PowerUISmartChargeManager_recordAnalytics__block_invoke_1381;
        v221 = &unk_2782D4188;
        v222 = v61;
        AnalyticsSendEventLazy();
      }
    }

    v66 = v237;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v67 = v211->_monitors;
    v68 = [(NSArray *)v67 countByEnumeratingWithState:&v214 objects:v238 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = 0;
      v71 = *v215;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v215 != v71)
          {
            objc_enumerationMutation(v67);
          }

          v73 = *(*(&v214 + 1) + 8 * i);
          if ([v73 signalID] == 4)
          {
            v74 = v73;
            v75 = [v74 analyticsData];

            v70 = v75;
          }
        }

        v69 = [(NSArray *)v67 countByEnumeratingWithState:&v214 objects:v238 count:16];
      }

      while (v69);

      v41 = v205;
      if (!v70)
      {
        goto LABEL_56;
      }

      v212[1] = MEMORY[0x277D85DD0];
      v212[2] = 3221225472;
      v212[3] = __44__PowerUISmartChargeManager_recordAnalytics__block_invoke_1385;
      v212[4] = &unk_2782D4188;
      v67 = v70;
      v213 = v67;
      AnalyticsSendEventLazy();
      v76 = v211->_log;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v240 = v67;
        _os_log_impl(&dword_21B766000, v76, OS_LOG_TYPE_DEFAULT, "Reported location decision metadata to CoreAnalytics %@", buf, 0xCu);
      }
    }

LABEL_56:
    goto LABEL_57;
  }

  [v29 setObject:&unk_282D4E5F0 forKeyedSubscript:@"com.apple.das.smartcharging.analytics.nonCarry"];
  v40 = v211->_log;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v40, OS_LOG_TYPE_DEFAULT, "Device does not appear to have legitimate usage; possibly a static device. Skip recording.", buf, 2u);
  }

  [(PowerUISmartChargeManager *)v211 reportAggDKeys:v29];
  v237[6] = MEMORY[0x277D85DD0];
  v237[7] = 3221225472;
  v237[8] = __44__PowerUISmartChargeManager_recordAnalytics__block_invoke;
  v237[9] = &unk_2782D4188;
  v237[10] = @"StatusReason";
  AnalyticsSendEventLazy();
  v39 = @"StatusReason";
LABEL_99:

  v192 = *MEMORY[0x277D85DE8];
}

id __44__PowerUISmartChargeManager_recordAnalytics__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5[0] = @"DeviceNotLegitimate";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id __44__PowerUISmartChargeManager_recordAnalytics__block_invoke_1362(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5[0] = @"DeviceOverride";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id __44__PowerUISmartChargeManager_recordAnalytics__block_invoke_4(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5[0] = @"EnabledAndLegitimate";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id __44__PowerUISmartChargeManager_recordAnalytics__block_invoke_1386(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5[0] = @"FeatureDisabled";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)dailyStatsFromLastReported:(id)a3
{
  v36[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CFPreferencesCopyAppValue(@"timeline", self->_defaultsDomain);
  v6 = [MEMORY[0x277CBEB18] array];
  context = self->_context;
  v8 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v9 = [(_CDLocalContext *)context objectForKeyedSubscript:v8];

  if (v5)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = [v5 mutableCopy];

    v36[0] = @"Unplug";
    v35[0] = @"event";
    v35[1] = @"date";
    v12 = MEMORY[0x277CCABB0];
    v13 = [MEMORY[0x277CBEAA8] date];
    [v13 timeIntervalSinceReferenceDate];
    v14 = [v12 numberWithDouble:?];
    v35[2] = @"batteryLevel";
    v36[1] = v14;
    v36[2] = v9;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
    [v11 addObject:v15];

    v6 = v11;
  }

  v16 = [(PowerUISmartChargeManager *)self constructAnalyticsStatusFromEvents:v6];
  v17 = [(PowerUISmartChargeManager *)self constructDailyStats:v16];
  v18 = [v17 mutableCopy];

  v19 = [v18 objectForKeyedSubscript:@"DailyHoursEngaged"];
  [v19 doubleValue];

  v20 = [v18 objectForKeyedSubscript:@"DailyHoursEstimated"];
  [v20 doubleValue];

  v21 = [v18 objectForKeyedSubscript:@"EligibleForIdleTime"];
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 timeIntervalSinceDate:v21];
    }
  }

  [v4 timeIntervalSinceNow];
  v23 = v22 / -3600.0;
  v24 = [v18 objectForKeyedSubscript:@"DailyHoursEngaged"];
  [v24 doubleValue];
  v26 = v25;

  v27 = [v18 objectForKeyedSubscript:@"DailyHoursEstimated"];
  [v27 doubleValue];
  v29 = v28;

  if (v29 >= v23)
  {
    v30 = v29;
  }

  else
  {
    v30 = v23;
  }

  if (v30 > 0.0)
  {
    if (v26 >= v23)
    {
      v31 = v26;
    }

    else
    {
      v31 = v23;
    }

    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31 / v30];
    [v18 setObject:v32 forKeyedSubscript:@"DailyHoursSaved"];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)constructDailyStats:(id)a3
{
  v4 = a3;
  v5 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"DailyStatus" inDomain:self->_defaultsDomain];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = [v4 objectForKeyedSubscript:@"IdleDuration"];
  v8 = [v7 unsignedIntegerValue];
  v9 = (v8 / 0xE10);

  if (v8 >> 6 > 0x7E8)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager constructDailyStats:?];
    }
  }

  else
  {
    v10 = [v6 objectForKeyedSubscript:@"DailyEngagements"];
    v11 = [v10 unsignedIntegerValue];

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11 + 1.0];
    [v6 setObject:v12 forKeyedSubscript:@"DailyEngagements"];

    v13 = [v6 objectForKeyedSubscript:@"DailyHoursEngaged"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v15 + v9];
    [v6 setObject:v16 forKeyedSubscript:@"DailyHoursEngaged"];
  }

  v18 = [v4 objectForKeyedSubscript:@"EstimatedUsableEligibleDuration"];
  v19 = [v18 unsignedIntegerValue];

  if (v19 >= 0x1FA40)
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager constructDailyStats:v24];
    }
  }

  else
  {
    v20 = [v6 objectForKeyedSubscript:@"DailyHoursEstimated"];
    [v20 doubleValue];
    v22 = v21;

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v22 + (v19 / 0xE10)];
    [v6 setObject:v23 forKeyedSubscript:@"DailyHoursEstimated"];
  }

  v25 = [v4 objectForKeyedSubscript:@"UnderChargedAvoidable"];
  v26 = [v25 BOOLValue];

  if (v26)
  {
    v27 = [v6 objectForKeyedSubscript:@"DailyUndercharges"];
    v28 = [v27 unsignedIntegerValue];

    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v28 + 1.0];
    [v6 setObject:v29 forKeyedSubscript:@"DailyUndercharges"];
  }

  v30 = [v6 objectForKeyedSubscript:@"DailyPluggedInSessions"];
  v31 = [v30 unsignedIntegerValue];

  v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31 + 1.0];
  [v6 setObject:v32 forKeyedSubscript:@"DailyPluggedInSessions"];

  v33 = [v4 objectForKeyedSubscript:@"EligibleForIdleTime"];
  [v6 setObject:v33 forKeyedSubscript:@"EligibleForIdleTime"];

  return v6;
}

- (id)updateAnalyticsWithPluginMetrics:(id)a3 withBatteryLevel:(int)a4
{
  v6 = [a3 mutableCopy];
  v7 = v6;
  if (a4 <= 19)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"MeaningfulUndercharge"];
  }

  [v7 setObject:self->_engagementsLastMonthBucket forKeyedSubscript:@"EngagementsLastMonthBucket"];
  [v7 setObject:self->_lastReportedNumberOfPluginEvents forKeyedSubscript:@"NumberOfPluginEvents"];
  [v7 setObject:self->_medianPluginLength forKeyedSubscript:@"MedianPluginLength"];

  return v7;
}

- (void)startAllMonitoring
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_monitors;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) startMonitoring];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopAllMonitoring
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_monitors;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) stopMonitoring];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addPowerLogEventForCheckpoint:(unint64_t)a3 decisionSignalID:(id)a4 decisionDate:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(PowerUISmartChargeManager *)self powerLogStatus];
  [(PowerUISmartChargeManager *)self setPreviousPowerLogStatus:v10];

  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = v11;
  if (self->_enabled)
  {
    v13 = &unk_282D4E5F0;
  }

  else if (self->_temporarilyDisabled)
  {
    v13 = &unk_282D4E6B0;
  }

  else
  {
    v13 = &unk_282D4E5C0;
  }

  [v11 setObject:v13 forKeyedSubscript:@"status"];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v12 setObject:v14 forKeyedSubscript:@"checkpoint"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentState];
  [v12 setObject:v15 forKeyedSubscript:@"state"];

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:@"decisionMaker"];
    [v12 setObject:v9 forKeyedSubscript:@"decisionTime"];
  }

  [(PowerUISmartChargeManager *)self durationToFullChargeFromBatteryLevel:self->_lastBatteryLevel];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v12 setObject:v16 forKeyedSubscript:@"timeTillTopOff"];

  if (self->_predictorType == 2)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PowerUIMLTwoStageModelPredictor engagementModelVersion](self->_modelTwoStagePredictor, "engagementModelVersion")}];
    [v12 setObject:v17 forKeyedSubscript:@"engagementModelVersion"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PowerUIMLTwoStageModelPredictor durationModelVersion](self->_modelTwoStagePredictor, "durationModelVersion")}];
    [v12 setObject:v18 forKeyedSubscript:@"modelVersion"];

    v19 = MEMORY[0x277CCABB0];
    [(PowerUIMLTwoStageModelPredictor *)self->_modelTwoStagePredictor lastEngagementResult];
    v20 = [v19 numberWithDouble:?];
    [v12 setObject:v20 forKeyedSubscript:@"engagementProbability"];

    v21 = MEMORY[0x277CCABB0];
    [(PowerUIMLTwoStageModelPredictor *)self->_modelTwoStagePredictor lastDurationResult];
    v22 = [v21 numberWithDouble:?];
    [v12 setObject:v22 forKeyedSubscript:@"durationPrediction"];
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PowerUISmartChargeUtilities currentBatteryLevelWithContext:](PowerUISmartChargeUtilities, "currentBatteryLevelWithContext:", self->_context)}];
  [v12 setObject:v23 forKeyedSubscript:@"batteryLevel"];

  if (a3 - 2 >= 3)
  {
    v24 = MEMORY[0x277CBEC28];
  }

  else
  {
    v24 = MEMORY[0x277CBEC38];
  }

  [v12 setObject:v24 forKeyedSubscript:@"isEngaged"];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDesktopDevice];
  [v12 setObject:v25 forKeyedSubscript:@"isMaxChargeLimited"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_manualChargeLimitStatus];
  [v12 setObject:v26 forKeyedSubscript:@"isManuallyChargeLimited"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_mclTargetSoC];
  [v12 setObject:v27 forKeyedSubscript:@"chargeLimitTargetSoC"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_recommendedLimit];
  [v12 setObject:v28 forKeyedSubscript:@"recommendedChargeLimit"];

  v29 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countMCLChargeSessionsEnabled"];
  [v12 setObject:v29 forKeyedSubscript:@"lifeTimeSessionMCLEnabled"];

  v30 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countMCLChargeSessions"];
  [v12 setObject:v30 forKeyedSubscript:@"lifeTimeSessionMCLEngaged"];

  v31 = MEMORY[0x277CCABB0];
  v32 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countTotalMinutesIdledInMCL"];
  v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(v32, "unsignedIntegerValue") / 0x3CuLL}];
  [v12 setObject:v33 forKeyedSubscript:@"lifeTimeIdleHoursMCL"];

  v34 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countOBCSessionsEnabled"];
  [v12 setObject:v34 forKeyedSubscript:@"lifeTimeSessionOBCEnabled"];

  v35 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countOBCSessions"];
  [v12 setObject:v35 forKeyedSubscript:@"lifeTimeSessionOBCEngaged"];

  v36 = MEMORY[0x277CCABB0];
  v37 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countTotalMinutesIdledInOBC"];
  v38 = [v36 numberWithUnsignedInteger:{objc_msgSend(v37, "unsignedIntegerValue") / 0x3CuLL}];
  [v12 setObject:v38 forKeyedSubscript:@"lifeTimeIdleHoursOBC"];

  v39 = +[PowerUICECUtilities isDemoDevice];
  if (+[PowerUICECManager isCECSupported]&& !v39)
  {
    v40 = [(PowerUISmartChargeManager *)self getCECLifetimeValues];
    v41 = [v40 objectForKeyedSubscript:@"lifetimeSessionsEnabled"];
    [v12 setObject:v41 forKeyedSubscript:@"lifeTimeSessionCECEnabled"];

    v42 = [v40 objectForKeyedSubscript:@"lifetimeSessions"];
    [v12 setObject:v42 forKeyedSubscript:@"lifeTimeSessionCECEngaged"];

    v43 = MEMORY[0x277CCABB0];
    v44 = [v40 objectForKeyedSubscript:@"lifetimeIdleDurationMinsForMode"];
    v45 = [v43 numberWithUnsignedInteger:{objc_msgSend(v44, "unsignedIntegerValue") / 0x3CuLL}];
    [v12 setObject:v45 forKeyedSubscript:@"lifeTimeIdleHoursCEC"];
  }

  if (a3 <= 8 && ((1 << a3) & 0x181) != 0)
  {
    if (self->_enabled)
    {
      v46 = (16 * self->_temporarilyDisabled) ^ 0x10;
    }

    else
    {
      v46 = 0;
    }

    v47 = [v12 objectForKeyedSubscript:@"modelVersion"];
    v48 = [v47 unsignedIntegerValue];

    v49 = v46 | (32 * v48);
  }

  else
  {
    v50 = [v12 objectForKeyedSubscript:@"decisionMaker"];
    v49 = 16 * [v50 unsignedIntegerValue];
  }

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v49 | a3];
  [v12 setObject:v51 forKeyedSubscript:@"aggDBitmap"];

  [(PowerUISmartChargeManager *)self setPowerLogStatus:v12];
  v52 = [(PowerUISmartChargeManager *)self powerLogStatus];
  [PowerUISmartChargeUtilities setDict:v52 forPreferenceKey:@"powerLogStatus" inDomain:self->_defaultsDomain];

  verboseLog = self->_verboseLog;
  if (os_log_type_enabled(verboseLog, OS_LOG_TYPE_DEFAULT))
  {
    v56 = 138412290;
    v57 = v12;
    _os_log_impl(&dword_21B766000, verboseLog, OS_LOG_TYPE_DEFAULT, "Writing to PowerLog %@", &v56, 0xCu);
  }

  v54 = objc_autoreleasePoolPush();
  PLLogRegisteredEvent();
  objc_autoreleasePoolPop(v54);

  v55 = *MEMORY[0x277D85DE8];
}

- (id)adjustedFullChargeDeadlineWithSignals:(id)a3 withDesktopMode:(BOOL)a4 withFullChargeDeadline:(id)a5 withResult:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v8 objectForKeyedSubscript:@"decisionDate"];
  v12 = [v9 earlierDate:v11];
  if (([v9 isEqualToDate:v12] & 1) == 0)
  {
    v13 = v12;

    v14 = [v8 objectForKeyedSubscript:@"decisionMaker"];
    [v10 setObject:v14 forKeyedSubscript:@"decisionMaker"];

    v9 = v13;
  }

  [v10 setObject:v9 forKeyedSubscript:@"decisionDate"];

  return v10;
}

- (void)resetState
{
  lastComputedSignalDeadline = self->_lastComputedSignalDeadline;
  self->_lastComputedSignalDeadline = 0;

  signalDeadline = self->_signalDeadline;
  self->_signalDeadline = 0;

  v5 = [(PowerUISmartChargeManager *)self setFullChargeDeadline:0];
  [(PowerUISmartChargeManager *)self recallPeriodicCheck];
  [(PowerUIMLTwoStageModelPredictor *)self->_modelTwoStagePredictor resetSavedDeadline];
  v6 = [@"com.apple.smartcharging.statechange" UTF8String];

  notify_post(v6);
}

- (id)stringFromDecisionMaker:(int64_t)a3 decisionDate:(id)a4
{
  v5 = a4;
  if (stringFromDecisionMaker_decisionDate__onceToken != -1)
  {
    [PowerUISmartChargeManager stringFromDecisionMaker:decisionDate:];
  }

  if (a3 <= 0xD && ((0x33FFu >> a3) & 1) != 0)
  {
    v6 = off_2782D4FB8[a3];
    v7 = [stringFromDecisionMaker_decisionDate__formatter stringFromDate:v5];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v6, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __66__PowerUISmartChargeManager_stringFromDecisionMaker_decisionDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = stringFromDecisionMaker_decisionDate__formatter;
  stringFromDecisionMaker_decisionDate__formatter = v0;

  v2 = stringFromDecisionMaker_decisionDate__formatter;

  return [v2 setDateFormat:@"MM/dd HH:mm"];
}

- (void)cleanupOverrides
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUISmartChargeManager *)self fullChargeDeadlineOverride];
  if (v3)
  {
    v4 = v3;
    v5 = [(PowerUISmartChargeManager *)self fullChargeDeadlineOverride];
    [v5 timeIntervalSinceNow];
    v7 = v6;

    if (v7 <= 0.0)
    {
      v10 = [(PowerUISmartChargeManager *)self fullChargeDeadlineOverride];
      v11 = [v10 dateByAddingTimeInterval:86400.0];

      v12 = [(PowerUISmartChargeManager *)self repeatEngagementOverrideEndDate];
      if (v12)
      {
        v13 = v12;
        v14 = [(PowerUISmartChargeManager *)self repeatEngagementOverrideEndDate];
        [v11 timeIntervalSinceDate:v14];
        if (v15 >= 0.0)
        {
        }

        else
        {
          v16 = [(PowerUISmartChargeManager *)self repeatEngagementOverrideEndDate];
          [v16 timeIntervalSinceNow];
          v18 = v17;

          if (v18 > 0.0)
          {
            v19 = [(PowerUISmartChargeManager *)self engagementTimeOverride];
            v20 = [v19 dateByAddingTimeInterval:86400.0];

            v21 = MEMORY[0x277CCABB0];
            [v11 timeIntervalSinceReferenceDate];
            v22 = [v21 numberWithDouble:?];
            [(PowerUISmartChargeManager *)self setNumber:v22 forPreferenceKey:@"fullChargeDeadlineOverride"];

            v23 = MEMORY[0x277CCABB0];
            [v20 timeIntervalSinceReferenceDate];
            v24 = [v23 numberWithDouble:?];
            [(PowerUISmartChargeManager *)self setNumber:v24 forPreferenceKey:@"engagementTimeOverride"];

            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v26 = log;
              v27 = [(PowerUISmartChargeManager *)self fullChargeDeadlineOverride];
              v28 = [(PowerUISmartChargeManager *)self engagementTimeOverride];
              v33 = 138413058;
              v34 = v27;
              v35 = 2112;
              v36 = v11;
              v37 = 2112;
              v38 = v28;
              v39 = 2112;
              v40 = v20;
              _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, "Forwarding fullChargeDeadlineOverride = %@ to %@ and engagementTimeOverrideDate = %@ to %@", &v33, 0x2Au);
            }

            [(PowerUISmartChargeManager *)self setFullChargeDeadlineOverride:v11];
            [(PowerUISmartChargeManager *)self setEngagementTimeOverride:v20];
            v29 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"overrideAllSignals"];
            -[PowerUISmartChargeManager setOverrideAllSignals:](self, "setOverrideAllSignals:", [v29 BOOLValue]);

            goto LABEL_19;
          }
        }
      }

      [(PowerUISmartChargeManager *)self resetEngagementOverrideWithHandler:&__block_literal_global_1571];
LABEL_19:

      goto LABEL_20;
    }
  }

  v8 = [(PowerUISmartChargeManager *)self fullChargeDeadlineOverride];
  if (v8)
  {
    v9 = *MEMORY[0x277D85DE8];

    return;
  }

  v30 = [(PowerUISmartChargeManager *)self engagementTimeOverride];

  if (!v30)
  {
LABEL_20:
    v32 = *MEMORY[0x277D85DE8];
    return;
  }

  v31 = *MEMORY[0x277D85DE8];

  [(PowerUISmartChargeManager *)self resetEngagementOverrideWithHandler:&__block_literal_global_1573];
}

- (void)updateDecisionMakerID:(int64_t)a3 withCheckpoint:(unint64_t)a4
{
  if (a3 == -1)
  {
    return;
  }

  v15 = v4;
  previousDecisionMakerID = self->_previousDecisionMakerID;
  if (a4 > 1)
  {
    if (a3 >= 0xE || ((0x30BDu >> a3) & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = &unk_21B8485E8;
  }

  else
  {
    if (a3 >= 0xD || ((0x193Du >> a3) & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = &unk_21B848580;
  }

  previousDecisionMakerID = v10[a3];
LABEL_11:
  if (a3 == 14)
  {
    previousDecisionMakerID = 14;
  }

  self->_previousDecisionMakerID = previousDecisionMakerID;
  v11 = [MEMORY[0x277CBEAA8] date];
  previousDecisionMakerDate = self->_previousDecisionMakerDate;
  self->_previousDecisionMakerDate = v11;

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_previousDecisionMakerID];
  [(PowerUISmartChargeManager *)self setNumber:v13 forPreferenceKey:@"previousDecisionMaker"];

  v14 = self->_previousDecisionMakerDate;

  [(PowerUISmartChargeManager *)self setDate:v14 forPreferenceKey:@"previousDecisionMakerDate"];
}

void *__87__PowerUISmartChargeManager_handleNewBatteryLevel_whileExternalConnected_fullyCharged___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetState];
  result = *(a1 + 32);
  if (!result[15])
  {

    return [result promptBDCToQueryCurrentState];
  }

  return result;
}

- (void)handleNewBatteryLevelForMCL:(int)a3 whileExternalConnected:(BOOL)a4
{
  v4 = a4;
  *&v24[5] = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109376;
    v24[0] = a3;
    LOWORD(v24[1]) = 1024;
    *(&v24[1] + 2) = v4;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Called for MCL battery level=%d, externalConnected=%u", &v23, 0xEu);
  }

  if (v4)
  {
    checkpoint = self->_checkpoint;
    if ([(PowerUIBatteryMitigationManager *)self->_batteryMitigationManager mitigationsCurrentlyEnabled])
    {
      v10 = self->_log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Battery mitigations are in place, MCL will be ignored", &v23, 2u);
      }

      if (a3 == 100)
      {
        v11 = 7;
      }

      else
      {
        v11 = 6;
      }
    }

    else
    {
      mclTargetSoC = self->_mclTargetSoC;
      if (mclTargetSoC <= a3 || checkpoint >= 2)
      {
        v14 = 2;
        if (checkpoint > 2)
        {
          v14 = checkpoint;
        }

        if (mclTargetSoC <= a3)
        {
          v11 = v14;
        }

        else
        {
          v11 = checkpoint;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    if (checkpoint != v11)
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      [(PowerUISmartChargeManager *)self updateDecisionMakerID:14 withCheckpoint:v11];
      [(PowerUISmartChargeManager *)self addPowerLogEventForCheckpoint:v11 decisionSignalID:&unk_282D4E6C8 decisionDate:v15];
      v16 = [(PowerUISmartChargeManager *)self checkpointNameFromCheckpoint:v11];
      [(PowerUISmartChargeManager *)self pluginTimelineAddEvent:v16 atDate:v15 withBatteryLevel:a3];

      [(PowerUISmartChargeManager *)self setCheckpoint:v11 withSelector:a2];
      [(PowerUISmartChargeManager *)self promptBDCToQueryCurrentState];
      notify_post([@"com.apple.smartcharging.statechange" UTF8String]);
    }

    [(PowerUISmartChargeManager *)self requestPeriodicCheck];
  }

  else
  {
    v12 = [MEMORY[0x277CBEAA8] date];
    [(PowerUISmartChargeManager *)self addPowerLogEventForCheckpoint:0 decisionSignalID:0 decisionDate:v12];

    [(PowerUISmartChargeManager *)self setCheckpoint:0 withSelector:a2];
    [(PowerUISmartChargeManager *)self promptBDCToQueryCurrentState];
    notify_post([@"com.apple.powerui.smartchargestatuschanged" UTF8String]);
  }

  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = self->_checkpoint;
    v20 = v17;
    v21 = [v18 numberWithUnsignedInteger:v19];
    v23 = 138412290;
    *v24 = v21;
    _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Checkpoint through MCL: %@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)shouldDisableChargingAtBatteryLevel:(unint64_t)a3 withPredictor:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = [v6 date];
  v9 = [(PowerUISmartChargeManager *)self shouldDisableChargingAsOfDate:v8 atBatteryLevel:a3 overrideAllSignals:self->_signalsIgnored withPredictor:v7 bypassSaved:0];

  return v9;
}

- (id)shouldDisableChargingAsOfDate:(id)a3 atBatteryLevel:(unint64_t)a4 overrideAllSignals:(BOOL)a5 withPredictor:(id)a6 bypassSaved:(BOOL)a7
{
  v7 = a7;
  v69 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = v12;
  v16 = v15;
  if (self->_isDesktopDevice)
  {
    v17 = [MEMORY[0x277CBEAA8] distantFuture];
    [v14 setObject:&unk_282D4E6E0 forKeyedSubscript:@"decisionMaker"];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Engage DEoC", buf, 2u);
    }
  }

  else
  {
    if (v7 && (modelTwoStagePredictor = self->_modelTwoStagePredictor, modelTwoStagePredictor == v13))
    {
      v39 = [v15 dateByAddingTimeInterval:-1800.0];
      [(PowerUIMLTwoStageModelPredictor *)modelTwoStagePredictor adjustedChargingDecision:a4 withPluginDate:v39 withPluginBatteryLevel:v16 forDate:1 forStatus:20.0];
      v41 = v40;

      v20 = [v16 dateByAddingTimeInterval:v41];
    }

    else
    {
      v20 = [(PowerUIMLTwoStageModelPredictor *)v13 predictFullChargeDateWithBatteryLevel:a4];
    }

    v17 = v20;
    [v20 timeIntervalSinceDate:v16];
    v22 = v21;
    if (v21 > *&kMaximumDurationUntilFullyCharged)
    {
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = MEMORY[0x277CCABB0];
        v25 = v23;
        v26 = [v24 numberWithDouble:v22 / 60.0];
        *buf = 138412290;
        v66 = v26;
        _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Very lengthy prediction (%@ mins); limiting idle time", buf, 0xCu);
      }

      v27 = [v16 dateByAddingTimeInterval:*&kMaximumDurationUntilFullyCharged];

      v17 = v27;
    }

    if ([(PowerUIMLTwoStageModelPredictor *)v13 predictorType]== 4)
    {
      v28 = &unk_282D4E6F8;
    }

    else
    {
      v28 = &unk_282D4E710;
    }

    [v14 setObject:v28 forKeyedSubscript:@"decisionMaker"];
  }

  [v14 setObject:v17 forKeyedSubscript:@"decisionDate"];
  [v17 timeIntervalSinceDate:v16];
  if (v29 >= 0.0 && !a5)
  {
    v30 = [(PowerUISmartChargeManager *)self computeSignalDeadline];
    v31 = [(PowerUISmartChargeManager *)self adjustedFullChargeDeadlineWithSignals:v30 withDesktopMode:self->_isDesktopDevice withFullChargeDeadline:v17 withResult:v14];

    v32 = [v31 objectForKeyedSubscript:@"decisionDate"];

    if ([(PowerUIBatteryMitigationManager *)self->_batteryMitigationManager mitigationsCurrentlyEnabled])
    {
      v33 = self->_log;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v33, OS_LOG_TYPE_DEFAULT, "Gauging mitigations enabled, adjust deadline", buf, 2u);
      }

      v17 = [MEMORY[0x277CBEAA8] distantPast];
    }

    else
    {
      v17 = v32;
    }

    if (!+[PowerUISmartChargeUtilities isDEoCDryRunSupported])
    {
      goto LABEL_50;
    }

    v35 = [MEMORY[0x277CBEAA8] distantPast];
    if (![v17 isEqualToDate:v35])
    {
      goto LABEL_49;
    }

    v36 = [v31 objectForKeyedSubscript:@"decisionMaker"];
    if ([&unk_282D4E680 isEqualToNumber:v36])
    {
      v37 = [(PowerUITrialManager *)self->_trialManager useTrialEnabledFeature:@"disableLocationCheckForDEoC"];

      v38 = 0x2782D3000;
      if (v37)
      {
        goto LABEL_50;
      }
    }

    else
    {

      v38 = 0x2782D3000uLL;
    }

    [(NSLock *)self->_deocCurrentStatusLock lock];
    v35 = [*(v38 + 2480) readDictForPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
    if (!v35)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUISmartChargeManager shouldDisableChargingAsOfDate:atBatteryLevel:overrideAllSignals:withPredictor:bypassSaved:];
      }

      goto LABEL_48;
    }

    v42 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v35];
    [v42 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"limitCharge"];
    self->_isDesktopDevice = 0;
    v43 = [v31 objectForKeyedSubscript:@"decisionMaker"];

    if (!v43)
    {
      [v42 setObject:&unk_282D4E620 forKeyedSubscript:@"DEoCStatus"];
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUISmartChargeManager shouldDisableChargingAsOfDate:atBatteryLevel:overrideAllSignals:withPredictor:bypassSaved:];
      }

      goto LABEL_45;
    }

    v64 = v42;
    v44 = [v31 objectForKeyedSubscript:@"decisionMaker"];
    v45 = [&unk_282D4E680 isEqualToNumber:v44];

    if (v45)
    {
      v46 = &unk_282D4E6F8;
    }

    else
    {
      v47 = [v31 objectForKeyedSubscript:@"decisionMaker"];
      v48 = [&unk_282D4E728 isEqualToNumber:v47];

      if (v48)
      {
        v46 = &unk_282D4E6C8;
      }

      else
      {
        v49 = [v31 objectForKeyedSubscript:@"decisionMaker"];
        v50 = [&unk_282D4E740 isEqualToNumber:v49];

        if (!v50)
        {
          v42 = v64;
          [v64 setObject:&unk_282D4E620 forKeyedSubscript:@"DEoCStatus"];
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [PowerUISmartChargeManager shouldDisableChargingAsOfDate:atBatteryLevel:overrideAllSignals:withPredictor:bypassSaved:];
          }

          goto LABEL_45;
        }

        v46 = &unk_282D4E758;
      }
    }

    v42 = v64;
    [v64 setObject:v46 forKeyedSubscript:@"DEoCStatus"];
LABEL_45:
    [PowerUISmartChargeUtilities setDict:v42 forPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
    v51 = self->_log;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v42;
      _os_log_impl(&dword_21B766000, v51, OS_LOG_TYPE_DEFAULT, "SignalMonitors updated currentDEoCStatus: %@", buf, 0xCu);
    }

LABEL_48:
    [(NSLock *)self->_deocCurrentStatusLock unlock];
LABEL_49:

LABEL_50:
    goto LABEL_51;
  }

  v34 = self->_log;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring all signals", buf, 2u);
  }

  v31 = v14;
LABEL_51:
  v52 = [(PowerUISmartChargeManager *)self setFullChargeDeadline:v17];

  [v52 timeIntervalSinceDate:v16];
  if (v53 > 0.0)
  {
    [(PowerUISmartChargeManager *)self recomputeEmpiricalTimeToFullCharge];
  }

  v54 = MEMORY[0x277CBEC28];
  [(PowerUISmartChargeManager *)self durationToFullChargeFromBatteryLevel:a4 includeTLCDelay:1];
  v56 = v55;
  v57 = self->_log;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = v57;
    v59 = [v16 dateByAddingTimeInterval:v56];
    *buf = 138412546;
    v66 = v52;
    v67 = 2112;
    v68 = v59;
    _os_log_impl(&dword_21B766000, v58, OS_LOG_TYPE_DEFAULT, "Deadline for full charge is: %@ and resuming now would get us there by %@", buf, 0x16u);
  }

  [v52 timeIntervalSinceDate:v16];
  if (v60 <= v56)
  {
    v61 = v54;
  }

  else
  {
    v61 = MEMORY[0x277CBEC38];
  }

  [v31 setObject:v61 forKeyedSubscript:@"shouldDisableCharging"];

  v62 = *MEMORY[0x277D85DE8];

  return v31;
}

- (BOOL)shouldDisableChargingOverrideModel:(unint64_t)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [(PowerUISmartChargeManager *)self fullChargeDeadlineOverride];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [(PowerUISmartChargeManager *)self engagementTimeOverride];
    if (v7 && (v8 = v7, -[PowerUISmartChargeManager engagementTimeOverride](self, "engagementTimeOverride"), v9 = objc_claimAutoreleasedReturnValue(), [v6 timeIntervalSinceDate:v9], v11 = v10, v9, v8, v11 < 0.0))
    {
      v12 = 0;
    }

    else
    {
      v13 = [(PowerUISmartChargeManager *)self fullChargeDeadlineOverride];
      if (!self->_overrideAllSignals)
      {
        v14 = [(PowerUISmartChargeManager *)self computeSignalDeadline];
        v15 = [v14 objectForKeyedSubscript:@"decisionDate"];
        v16 = [v14 objectForKeyedSubscript:@"decisionMaker"];
        self->_deadlineSignalID = [v16 integerValue];

        v17 = [v13 earlierDate:v15];

        v13 = v17;
      }

      v18 = [(PowerUISmartChargeManager *)self setFullChargeDeadline:v13];

      [(PowerUISmartChargeManager *)self durationToFullChargeFromBatteryLevel:a3 includeTLCDelay:1];
      v20 = v19;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v22 = log;
        v23 = [v6 dateByAddingTimeInterval:v20];
        v27 = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Deadline for full charge is: %@ and resuming now would get us there by %@", &v27, 0x16u);
      }

      [v18 timeIntervalSinceDate:v6];
      v12 = v24 > v20;
    }
  }

  else
  {
    v12 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)chargePrediction:(unint64_t)a3 fullyCharged:(BOOL)a4 previousCheckpoint:(unint64_t)a5 predictor:(unint64_t)a6
{
  v8 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  [v11 setObject:&unk_282D4E5D8 forKeyedSubscript:@"decisionMaker"];
  if (a5)
  {
    goto LABEL_2;
  }

  v16 = [(PowerUISmartChargeManager *)self deviceWasRecentlyConnectedToCharger];
  if ((a3 < 0x50 || v16) && !self->_isDesktopDevice)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    [v11 setObject:v33 forKeyedSubscript:@"checkpoint"];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v11 setObject:v34 forKeyedSubscript:@"shouldDisableCharging"];

    v19 = [(PowerUISmartChargeManager *)self log];
    v35 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (a3 > 0x4F)
    {
      if (!v35)
      {
        goto LABEL_75;
      }

      *buf = 0;
      v36 = "Skipping prediction check: Device was just recently plugged-in";
      v37 = v19;
      v38 = 2;
    }

    else
    {
      if (!v35)
      {
        goto LABEL_75;
      }

      *buf = 67109120;
      v44 = 80;
      v36 = "Skipping prediction check: Battery level below %d%%";
      v37 = v19;
      v38 = 8;
    }

    _os_log_impl(&dword_21B766000, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
    goto LABEL_75;
  }

  if (a3 <= 0x5F && !v8 || self->_isDesktopDevice || self->_remoteOBCEngaged)
  {
LABEL_2:
    v12 = [(PowerUISmartChargeManager *)self shouldOBCRoutineReengage];
    switch(a6)
    {
      case 4uLL:
        if (a5 >= 5 && !v12)
        {
          goto LABEL_27;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __88__PowerUISmartChargeManager_chargePrediction_fullyCharged_previousCheckpoint_predictor___block_invoke;
        block[3] = &unk_2782D3EA8;
        block[4] = self;
        if (chargePrediction_fullyCharged_previousCheckpoint_predictor__onceToken != -1)
        {
          dispatch_once(&chargePrediction_fullyCharged_previousCheckpoint_predictor__onceToken, block);
        }

        modelTwoStagePredictor = chargePrediction_fullyCharged_previousCheckpoint_predictor__sleepPredictor;
        break;
      case 2uLL:
        if (a5 >= 5 && !v12)
        {
          goto LABEL_27;
        }

        modelTwoStagePredictor = self->_modelTwoStagePredictor;
        break;
      case 0xFFFFFFFFFFFFFFFFLL:
        if (a5 < 5 || v12)
        {
          v13 = [(PowerUISmartChargeManager *)self shouldDisableChargingOverrideModel:a3];
          v14 = 0;
          v15 = &unk_282D4E5D8;
          if (a5)
          {
            goto LABEL_31;
          }

          goto LABEL_24;
        }

LABEL_27:
        v14 = 0;
        v13 = 0;
        v15 = &unk_282D4E5D8;
        goto LABEL_28;
      default:
        v13 = 0;
        v14 = 0;
        v15 = &unk_282D4E5D8;
        goto LABEL_31;
    }

    v21 = [(PowerUISmartChargeManager *)self shouldDisableChargingAtBatteryLevel:a3 withPredictor:modelTwoStagePredictor];
    v15 = [v21 objectForKeyedSubscript:@"decisionMaker"];
    v14 = [v21 objectForKeyedSubscript:@"decisionDate"];
    v22 = [v21 objectForKeyedSubscript:@"shouldDisableCharging"];
    v13 = [v22 BOOLValue];

    if (a5)
    {
      goto LABEL_31;
    }

LABEL_24:
    if (v13)
    {
      v13 = 1;
      if (a3 <= 0x4F)
      {
        v23 = 1;
        goto LABEL_61;
      }

      v23 = 2;
      goto LABEL_53;
    }

LABEL_31:
    if (!a5 && !v13)
    {
      [(PowerUISmartChargeManager *)self setNumber:v15 forPreferenceKey:@"lastNonEngagementSignalID"];
      objc_storeStrong(&self->_lastNonEngagementSignalID, v15);
LABEL_49:
      v27 = self->_lastNonEngagementSignalID;

      v23 = 6;
      v15 = v27;
LABEL_50:
      if (a5 - 5 <= 1 && v8)
      {
        self->_OBCReengagementEvaluated = 0;
        notify_post([@"com.apple.smartcharging.statechange" UTF8String]);
        v23 = 7;
      }

      goto LABEL_53;
    }

    v24 = v13 ^ 1;
    if (a5 == 1)
    {
      v25 = v13 ^ 1;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      v13 = 0;
      goto LABEL_49;
    }

    if (a5 - 5 <= 0xFFFFFFFFFFFFFFFCLL)
    {
      v24 = 0;
    }

    if ((v24 & 1) == 0)
    {
      if (a5 <= 4)
      {
        if (a3 > 0x4F)
        {
          v26 = 4;
          if (a5 != 3)
          {
            v26 = a5;
          }

          if (a5 == 1)
          {
            v23 = 2;
          }

          else
          {
            v23 = v26;
          }

          goto LABEL_53;
        }

        v23 = a5;
LABEL_61:
        v39 = 75;
        if (kTopOffProtectionSoCFloor)
        {
          v39 = 77;
        }

        if (v39 >= a3)
        {
          if (a5 == 4 || a5 == 2)
          {
            v23 = 3;
          }
        }

        else if (a5 != 3 && v23 != 1 && v23 != 2 && v23 != 4)
        {
          v40 = [(PowerUISmartChargeManager *)self log];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [PowerUISmartChargeManager chargePrediction:fullyCharged:previousCheckpoint:predictor:];
          }
        }

        goto LABEL_53;
      }

LABEL_28:
      v23 = a5;
      if (a5 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v13 = 0;
    v23 = 5;
LABEL_53:
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
    [v11 setObject:v28 forKeyedSubscript:@"checkpoint"];

    v29 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    [v11 setObject:v29 forKeyedSubscript:@"shouldDisableCharging"];

    [v11 setObject:v15 forKeyedSubscript:@"decisionMaker"];
    [v11 setObject:v14 forKeyedSubscript:@"decisionDate"];
    v30 = v11;

    goto LABEL_54;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  [v11 setObject:v17 forKeyedSubscript:@"checkpoint"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v11 setObject:v18 forKeyedSubscript:@"shouldDisableCharging"];

  v19 = [(PowerUISmartChargeManager *)self log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [PowerUISmartChargeManager chargePrediction:fullyCharged:previousCheckpoint:predictor:];
  }

LABEL_75:

  v41 = v11;
  v15 = &unk_282D4E5D8;
LABEL_54:

  v31 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __88__PowerUISmartChargeManager_chargePrediction_fullyCharged_previousCheckpoint_predictor___block_invoke(uint64_t a1)
{
  chargePrediction_fullyCharged_previousCheckpoint_predictor__sleepPredictor = [[PowerUISleepBasedPredictor alloc] initWithLog:*(*(a1 + 32) + 96)];

  return MEMORY[0x2821F96F8]();
}

- (id)stringFromInterval:(id)a3
{
  v3 = stringFromInterval__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [PowerUISmartChargeManager stringFromInterval:];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = stringFromInterval__formatter;
  v7 = [v4 startDate];
  v8 = [v6 stringFromDate:v7];
  v9 = stringFromInterval__formatter;
  v10 = [v4 endDate];

  v11 = [v9 stringFromDate:v10];
  v12 = [v5 stringWithFormat:@"%@ - %@", v8, v11];

  return v12;
}

uint64_t __48__PowerUISmartChargeManager_stringFromInterval___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = stringFromInterval__formatter;
  stringFromInterval__formatter = v0;

  [stringFromInterval__formatter setDateStyle:1];
  v2 = stringFromInterval__formatter;

  return [v2 setTimeStyle:1];
}

- (id)timeStringFromDate:(id)a3
{
  v3 = timeStringFromDate__onceToken_0;
  v4 = a3;
  if (v3 != -1)
  {
    [PowerUISmartChargeManager timeStringFromDate:];
  }

  v5 = [timeStringFromDate__formatter_0 stringFromDate:v4];

  return v5;
}

uint64_t __48__PowerUISmartChargeManager_timeStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = timeStringFromDate__formatter_0;
  timeStringFromDate__formatter_0 = v0;

  [timeStringFromDate__formatter_0 setDateStyle:0];
  v2 = timeStringFromDate__formatter_0;

  return [v2 setTimeStyle:1];
}

- (void)recomputeEmpiricalTimeToFullCharge
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  if (!recomputeEmpiricalTimeToFullCharge_lastComputedDate || ([recomputeEmpiricalTimeToFullCharge_lastComputedDate timeIntervalSinceDate:v3], v4 < -43200.0))
  {
    objc_storeStrong(&recomputeEmpiricalTimeToFullCharge_lastComputedDate, v3);
    v5 = [PowerUISmartChargeUtilities historicalFullChargeDurationStartingAt:80 withMinimumPluginDuration:1200];
    if ([v5 count] >= 3)
    {
      v6 = [v5 sortedArrayUsingSelector:sel_compare_];
      v7 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 2}];

      v5 = v7;
    }

    [v5 percentile:0.95];
    v9 = v8 / 60.0;
    v10 = [v5 count];
    v11 = fmax(fmin(v9, 180.0), 40.0);
    if (v10 <= 3)
    {
      v11 = 90.0;
    }

    self->_empiricalTimeToFullChargeDurationMinutes = v11;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      empiricalTimeToFullChargeDurationMinutes = self->_empiricalTimeToFullChargeDurationMinutes;
      v16 = 134218240;
      v17 = v9;
      v18 = 2048;
      v19 = empiricalTimeToFullChargeDurationMinutes;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Recompiled empirical TTFC - raw: %f, adjusted: %f", &v16, 0x16u);
    }

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_empiricalTimeToFullChargeDurationMinutes];
    [(PowerUISmartChargeManager *)self setNumber:v14 forPreferenceKey:@"empiricalFullChargeDuration"];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (double)durationToFullChargeFromBatteryLevel:(unint64_t)a3 includeTLCDelay:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = +[PowerUISmartChargeUtilities batteryProperties];
    v7 = [v6 objectForKeyedSubscript:@"ChargerData"];
    v8 = [v7 objectForKeyedSubscript:@"NotChargingReason"];

    if (([v8 unsignedLongLongValue] & 0x11E) != 0)
    {
      if (self->_checkpoint - 5 <= 4)
      {
        self->_encounteredTLCDuringTopOff = 1;
      }

      log = self->_log;
      v10 = 2700.0;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v11 = log;
        v17 = 134217984;
        v18 = [v8 unsignedLongLongValue];
        _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "TLC Engaged; Projecting additional charge delay (Not Charging reason: %llu)", &v17, 0xCu);
      }
    }

    else
    {
      v10 = 900.0;
    }
  }

  else
  {
    v10 = 900.0;
  }

  empiricalTimeToFullChargeDurationMinutes = self->_empiricalTimeToFullChargeDurationMinutes;
  if (empiricalTimeToFullChargeDurationMinutes <= 2.22507386e-308)
  {
    empiricalTimeToFullChargeDurationMinutes = 90.0;
  }

  v13 = empiricalTimeToFullChargeDurationMinutes / 20.0 * (100 - a3);
  v14 = empiricalTimeToFullChargeDurationMinutes + 80.0 - a3;
  if (a3 > 0x4F)
  {
    v14 = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 + v14 * 60.0;
}

- (unint64_t)projectedBatteryLevelForDuration:(unint64_t)a3 withInitialBatteryLevel:(unint64_t)a4
{
  [(PowerUISmartChargeManager *)self durationToFullChargeFromBatteryLevel:a4];
  if (v6 <= a3)
  {
    return 100;
  }

  else
  {
    return ((100 - a4) / (v6 / a3)) + a4;
  }
}

- (BOOL)deviceHasEnoughPluggedInTime
{
  v3 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"activityMinHistory"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 14.0;
  }

  v6 = [PowerUISmartChargeUtilities deviceHasEnoughPluggedInTimeWithMinimumDays:self->_context withContext:self->_defaultsDomain withDefaultsDomain:v5];

  return v6;
}

- (void)forceDEoCReevaluation
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PowerUISmartChargeManager_forceDEoCReevaluation__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __50__PowerUISmartChargeManager_forceDEoCReevaluation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cacheCurrentDEoCBehaviorForced:1];
  v2 = *(a1 + 32);

  return [v2 evaluateIfDEoCDevice];
}

- (void)cacheCurrentDEoCBehaviorForced:(BOOL)a3
{
  v169 = *MEMORY[0x277D85DE8];
  v5 = os_transaction_create();
  v6 = 0x2782D3000uLL;
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of cacheCurrentDEoC"];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(PowerUISmartChargeManager *)self cacheCurrentDEoCBehaviorForced:?];
  }

  if (!+[PowerUISmartChargeUtilities isOBCSupported](PowerUISmartChargeUtilities, "isOBCSupported") || !+[PowerUISmartChargeUtilities isDEoCDryRunSupported])
  {
    goto LABEL_46;
  }

  if ([PowerUISmartChargeUtilities isPluggedInWithContext:self->_context]&& !a3)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUISmartChargeManager cacheCurrentDEoCBehaviorForced:];
    }

    goto LABEL_46;
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:&unk_282D4E710 forKeyedSubscript:@"DEoCStatus"];
  v9 = [MEMORY[0x277CBEAA8] date];
  [v8 setObject:v9 forKeyedSubscript:@"cacheDate"];

  v10 = [MEMORY[0x277CBEAA8] distantPast];
  [v8 setObject:v10 forKeyedSubscript:@"committedDate"];

  if ([(PowerUISmartChargeManager *)self isDEoCSupported])
  {
    v11 = MEMORY[0x277CBEC28];
  }

  else
  {
    v11 = MEMORY[0x277CBEC38];
  }

  [v8 setObject:v11 forKeyedSubscript:@"dryRun"];
  v12 = 0x277CCA000uLL;
  if (self->_temporarilyDisabled)
  {
    v13 = &unk_282D4E770;
LABEL_19:
    [v8 setObject:v13 forKeyedSubscript:@"DEoCStatus"];
    v17 = 0;
    goto LABEL_20;
  }

  if (!self->_enabled || !self->_deocFeatureState)
  {
    v13 = &unk_282D4E788;
    goto LABEL_19;
  }

  v14 = [MEMORY[0x277CCAC38] processInfo];
  v15 = [v14 isLowPowerModeEnabled];

  if (v15)
  {
    v16 = &unk_282D4E7A0;
LABEL_53:
    [v8 setObject:v16 forKeyedSubscript:@"DEoCStatus"];
    v17 = 0;
    v12 = 0x277CCA000;
    goto LABEL_20;
  }

  if (self->_deocFeatureState != 1)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager cacheCurrentDEoCBehaviorForced:?];
    }

    v16 = &unk_282D4E608;
    goto LABEL_53;
  }

  if ([(PowerUIBatteryMitigationManager *)self->_batteryMitigationManager mitigationsCurrentlyEnabled])
  {
    v16 = &unk_282D4E7B8;
    goto LABEL_53;
  }

  v36 = [MEMORY[0x277CBEAA8] date];
  v37 = [PowerUISmartChargeUtilities drainSessionsInfoBetweenRelevantChargesBefore:v36 withMinimumDuration:0.0];

  v38 = self->_log;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v157 = v37;
    _os_log_impl(&dword_21B766000, v38, OS_LOG_TYPE_DEFAULT, "Drain sessions info found: %@", buf, 0xCu);
  }

  v137 = v37;
  v39 = [PowerUISmartChargeUtilities drainBetweenRelevantEventsFromDrainSessionInfo:v37];
  v40 = self->_log;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v40;
    v42 = [v39 count];
    *buf = 134217984;
    v157 = v42;
    _os_log_impl(&dword_21B766000, v41, OS_LOG_TYPE_DEFAULT, "Found %lu instances of historic drain between relevant charge sessions", buf, 0xCu);
  }

  if ([v39 count])
  {
    v43 = [v39 lastObject];
    [v8 setObject:v43 forKeyedSubscript:@"mostRecentDrain"];
  }

  else
  {
    [v8 setObject:&unk_282D4E5D8 forKeyedSubscript:@"mostRecentDrain"];
  }

  if (kMaxDEoCBatteryDrain)
  {
    v45 = 60;
  }

  else
  {
    v45 = 70;
  }

  v46 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"DEoCThresholdOverride"];
  if (v46)
  {
    v47 = self->_log;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
      v49 = [v46 intValue];
      *buf = 67109120;
      LODWORD(v157) = v49;
      _os_log_impl(&dword_21B766000, v48, OS_LOG_TYPE_DEFAULT, "Using DEoC override value: %d", buf, 8u);
    }

    v45 = [v46 intValue];
  }

  v135 = v46;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  obj = v39;
  v50 = [obj countByEnumeratingWithState:&v151 objects:v168 count:16];
  v141 = v8;
  v136 = a3;
  if (v50)
  {
    v51 = v50;
    v138 = v5;
    v52 = 0;
    v53 = *v152;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v152 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v151 + 1) + 8 * i);
        v56 = self->_log;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v157 = v55;
          _os_log_impl(&dword_21B766000, v56, OS_LOG_TYPE_DEFAULT, "  drain: %@", buf, 0xCu);
        }

        if ([v55 intValue] >= v45)
        {
          ++v52;
        }
      }

      v51 = [obj countByEnumeratingWithState:&v151 objects:v168 count:16];
    }

    while (v51);
    v57 = v52;
    v5 = v138;
  }

  else
  {
    v57 = 0;
  }

  v58 = self->_log;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v157 = v57;
    v158 = 2048;
    v159 = v45;
    _os_log_impl(&dword_21B766000, v58, OS_LOG_TYPE_DEFAULT, "Found %lu instances of historic drain above the threshold of %lu between relevant charge sessions", buf, 0x16u);
  }

  v59 = [v137 firstObject];
  v134 = v59;
  if (v59)
  {
    v60 = v59;
    v61 = [MEMORY[0x277CBEAA8] date];
    v62 = [v60 objectForKeyedSubscript:@"start"];
    [v61 timeIntervalSinceDate:v62];
    v64 = v63 / 86400;
  }

  else
  {
    v64 = 0;
  }

  v6 = 0x2782D3000uLL;
  v65 = [(PowerUITrialManager *)self->_trialManager longFactorForName:@"minDaysOfChargingHistoryRequiredForDEoCModel"];
  v66 = [(PowerUITrialManager *)self->_trialManager longFactorForName:@"minNumberOfRelevantDrainsRequiredForDEoCModel"];
  v67 = self->_log;
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    trialManager = self->_trialManager;
    v69 = v67;
    v70 = [(PowerUITrialManager *)trialManager experimentID];
    v71 = [(PowerUITrialManager *)self->_trialManager treatmentID];
    *buf = 138413570;
    v157 = v70;
    v158 = 2112;
    v159 = v71;
    v160 = 2112;
    v161 = @"minDaysOfChargingHistoryRequiredForDEoCModel";
    v162 = 2048;
    v163 = v65;
    v164 = 2112;
    v165 = @"minNumberOfRelevantDrainsRequiredForDEoCModel";
    v166 = 2048;
    v167 = v66;
    _os_log_impl(&dword_21B766000, v69, OS_LOG_TYPE_DEFAULT, "DEoC Trial parameters from experiment: %@ and treatment: %@ \n loaded: \n %@:%ld \n %@:%ld", buf, 0x3Eu);
  }

  if (v64 < v65)
  {
    v8 = v141;
    [v141 setObject:&unk_282D4E7D0 forKeyedSubscript:@"DEoCStatus"];
    [MEMORY[0x277CCACA8] stringWithFormat:@"daysSinceFirstChargeSession : %ld < minDaysOfChargingHistoryRequiredForDEoCModel : %ld", v64, v65, v134, v135];
    v72 = LABEL_95:;
    [v8 setObject:v72 forKeyedSubscript:@"reasonString"];
    v17 = 0;
    a3 = v136;
    v12 = 0x277CCA000;
LABEL_96:

    goto LABEL_97;
  }

  if ([v137 count] < v66)
  {
    v8 = v141;
    [v141 setObject:&unk_282D4E7E8 forKeyedSubscript:@"DEoCStatus"];
    [MEMORY[0x277CCACA8] stringWithFormat:@"numberOfHistoricalDrainSessions : %ld < minNumberOfRelevantDrainsRequiredForDEoCModel : %ld", objc_msgSend(v137, "count"), v66, v134, v135];
    goto LABEL_95;
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v142 = self->_monitors;
  v73 = [(NSArray *)v142 countByEnumeratingWithState:&v147 objects:v155 count:16];
  if (!v73)
  {

LABEL_128:
    v72 = [[PowerUIMLRelevantDrainPredictor alloc] initWithDefaultsDomain:self->_defaultsDomain withContextStore:self->_context withTrialManager:self->_trialManager];
    v89 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
    v90 = [MEMORY[0x277CBEAA8] date];
    v91 = [MEMORY[0x277CCABB0] numberWithInteger:v89];
    v92 = [(PowerUIMLRelevantDrainPredictor *)v72 featuresForChargeSessionAtDate:v90 withChargeStartSoC:v91 withChargeAndDrainSessionHistory:v137];

    v93 = [(PowerUIMLRelevantDrainPredictor *)v72 predictedRelevantDrainwithFeatures:v92];
    v94 = [(PowerUIMLRelevantDrainPredictor *)v72 predictedRelevantDrainWithFeatures:v92 forSchemes:&unk_282D4EAD0];
    v95 = [v94 objectForKey:&unk_282D4E800];
    v96 = v95;
    a3 = v136;
    v143 = v94;
    if (!v95)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_FAULT))
      {
        [PowerUISmartChargeManager cacheCurrentDEoCBehaviorForced:];
      }

      [v141 setObject:&unk_282D4E608 forKeyedSubscript:@"DEoCStatus"];
      v17 = 0;
      v12 = 0x277CCA000;
      goto LABEL_152;
    }

    v140 = v93;
    v97 = [v95 significantDrainAhead];
    v98 = self->_log;
    v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
    if (!v97)
    {
      if (v99)
      {
        v118 = v98;
        [v96 confidence];
        *buf = 134217984;
        v157 = v119;
        _os_log_impl(&dword_21B766000, v118, OS_LOG_TYPE_DEFAULT, "80%% model engaged. (confidence: %f)", buf, 0xCu);
      }

      [v141 setObject:&unk_282D4E740 forKeyedSubscript:@"DEoCStatus"];
      v120 = MEMORY[0x277CCACA8];
      v121 = [v96 description];
      v122 = [v120 stringWithFormat:@"Prediction output %@", v121];
      [v141 setObject:v122 forKeyedSubscript:@"reasonString"];

      v123 = [(PowerUIMLRelevantDrainPredictor *)v72 analyticsEventFromFeatures:v92];
      [v141 setObject:v123 forKeyedSubscript:@"featureAnalytics"];

      v124 = MEMORY[0x277CCABB0];
      [(PowerUIMLRelevantDrainPredictor *)v72 threshold];
      v125 = [v124 numberWithDouble:?];
      [v141 setObject:v125 forKeyedSubscript:@"modelThreshold"];

      v12 = 0x277CCA000uLL;
      [v141 setObject:&unk_282D4E848 forKeyedSubscript:@"socLimit"];
      v17 = 1;
      a3 = v136;
      goto LABEL_151;
    }

    if (v99)
    {
      v100 = v98;
      [v96 confidence];
      *buf = 134217984;
      v157 = v101;
      _os_log_impl(&dword_21B766000, v100, OS_LOG_TYPE_DEFAULT, "80%% model predicts deep drain ahead, check 95%% model. (confidence: %f)", buf, 0xCu);
    }

    v102 = [v94 objectForKey:&unk_282D4E818];
    v103 = v102;
    if (v102)
    {
      v104 = [v102 significantDrainAhead];
      v105 = self->_log;
      v106 = os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT);
      if (!v104)
      {
        if (v106)
        {
          v126 = v105;
          [v103 confidence];
          *buf = 134217984;
          v157 = v127;
          _os_log_impl(&dword_21B766000, v126, OS_LOG_TYPE_DEFAULT, "95%% model engaged. (confidence: %f)", buf, 0xCu);
        }

        [v141 setObject:&unk_282D4E740 forKeyedSubscript:@"DEoCStatus"];
        v128 = MEMORY[0x277CCACA8];
        v129 = [v103 description];
        v130 = [v128 stringWithFormat:@"Prediction output %@", v129];
        [v141 setObject:v130 forKeyedSubscript:@"reasonString"];

        v131 = [(PowerUIMLRelevantDrainPredictor *)v72 analyticsEventFromFeatures:v92];
        [v141 setObject:v131 forKeyedSubscript:@"featureAnalytics"];

        v132 = MEMORY[0x277CCABB0];
        [(PowerUIMLRelevantDrainPredictor *)v72 threshold];
        v133 = [v132 numberWithDouble:?];
        [v141 setObject:v133 forKeyedSubscript:@"modelThreshold"];

        [v141 setObject:&unk_282D4E830 forKeyedSubscript:@"socLimit"];
        v17 = 1;
        goto LABEL_150;
      }

      if (v106)
      {
        v107 = v105;
        [v103 confidence];
        *buf = 134217984;
        v157 = v108;
        _os_log_impl(&dword_21B766000, v107, OS_LOG_TYPE_DEFAULT, "95%% model predicts deep drain ahead, do not engage. (confidence: %f)", buf, 0xCu);
      }

      [v141 setObject:&unk_282D4E5A8 forKeyedSubscript:@"DEoCStatus"];
      v109 = MEMORY[0x277CCACA8];
      v110 = [v103 description];
      v111 = [v109 stringWithFormat:@"Prediction output %@", v110];
      [v141 setObject:v111 forKeyedSubscript:@"reasonString"];

      v112 = [(PowerUIMLRelevantDrainPredictor *)v72 analyticsEventFromFeatures:v92];
      [v141 setObject:v112 forKeyedSubscript:@"featureAnalytics"];

      v113 = MEMORY[0x277CCABB0];
      [(PowerUIMLRelevantDrainPredictor *)v72 threshold];
      v114 = [v113 numberWithDouble:?];
      [v141 setObject:v114 forKeyedSubscript:@"modelThreshold"];

      v115 = &unk_282D4E620;
      v116 = @"socLimit";
      v117 = v141;
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_FAULT))
      {
        [PowerUISmartChargeManager cacheCurrentDEoCBehaviorForced:];
      }

      v115 = &unk_282D4E608;
      v116 = @"DEoCStatus";
      v117 = v141;
    }

    [v117 setObject:v115 forKeyedSubscript:v116];
    v17 = 0;
LABEL_150:
    v6 = 0x2782D3000;
    a3 = v136;

    v12 = 0x277CCA000;
LABEL_151:
    v93 = v140;
LABEL_152:

    v8 = v141;
    goto LABEL_96;
  }

  v74 = v73;
  v139 = 1;
  v75 = *v148;
  do
  {
    for (j = 0; j != v74; ++j)
    {
      if (*v148 != v75)
      {
        objc_enumerationMutation(v142);
      }

      v77 = *(*(&v147 + 1) + 8 * j);
      if (![(PowerUITrialManager *)self->_trialManager useTrialEnabledFeature:@"disableLocationCheckForDEoC"]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v79 = [v77 requiredFullChargeDate];
        if (!v79)
        {
          goto LABEL_122;
        }

        v80 = [MEMORY[0x277CBEAA8] distantPast];
        v81 = [v79 isEqualToDate:v80];

        if (!v81)
        {
          goto LABEL_122;
        }

        v82 = [v77 signalID];
        if (v82 == 3)
        {
          [v141 setObject:&unk_282D4E758 forKeyedSubscript:@"DEoCStatus"];
          v87 = self->_log;
          if (!os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_121;
          }

          *buf = 0;
          v84 = v87;
          v85 = "Opting out of DEoC due to calendar";
        }

        else
        {
          if (v82 != 5)
          {
            if (v82 == 4)
            {
              [v141 setObject:&unk_282D4E6F8 forKeyedSubscript:@"DEoCStatus"];
              v83 = self->_log;
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v84 = v83;
                v85 = "Opting out of DEoC due to location";
                goto LABEL_118;
              }
            }

            else
            {
              [v141 setObject:&unk_282D4E620 forKeyedSubscript:@"DEoCStatus"];
              v88 = self->_log;
              if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
              {
                [(PowerUISmartChargeManager *)&v145 cacheCurrentDEoCBehaviorForced:v146, v88];
              }
            }

LABEL_121:
            v139 = 0;
LABEL_122:

            continue;
          }

          [v141 setObject:&unk_282D4E6C8 forKeyedSubscript:@"DEoCStatus"];
          v86 = self->_log;
          if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_121;
          }

          *buf = 0;
          v84 = v86;
          v85 = "Opting out of DEoC due to wallet";
        }

LABEL_118:
        _os_log_impl(&dword_21B766000, v84, OS_LOG_TYPE_DEFAULT, v85, buf, 2u);
        goto LABEL_121;
      }

      v78 = self->_log;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v78, OS_LOG_TYPE_DEFAULT, "Skipping location check for DEoC", buf, 2u);
      }
    }

    v74 = [(NSArray *)v142 countByEnumeratingWithState:&v147 objects:v155 count:16];
  }

  while (v74);

  if (v139)
  {
    goto LABEL_128;
  }

  v17 = 0;
  v8 = v141;
  a3 = v136;
  v12 = 0x277CCA000;
LABEL_97:

LABEL_20:
  if ([*(v6 + 2480) isInternalBuild])
  {
    v18 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"forcedDEoC"];
    v19 = v18;
    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      if (![v18 BOOLValue])
      {
        goto LABEL_31;
      }

      if (self->_temporarilyDisabled || self->_deocFeatureState != 1 || ([v8 objectForKeyedSubscript:@"DEoCStatus"], v21 = v12, v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "unsignedIntValue"), v22, v12 = v21, v23 == 11))
      {
        v24 = self->_log;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v24, OS_LOG_TYPE_DEFAULT, "DEoC override in place, but is supressed due to system conditions", buf, 2u);
        }

LABEL_31:
        v17 = 0;
      }

      else
      {
        v44 = self->_log;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v44, OS_LOG_TYPE_DEFAULT, "DEoC engagement forced by internal settings override", buf, 2u);
        }

        [v8 setObject:&unk_282D4E860 forKeyedSubscript:@"DEoCStatus"];
        v17 = 1;
      }
    }
  }

  v25 = [*(v12 + 2992) numberWithBool:v17];
  [v8 setObject:v25 forKeyedSubscript:@"limitCharge"];

  self->_isDesktopDevice = v17;
  v26 = self->_log;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    isDesktopDevice = self->_isDesktopDevice;
    *buf = 67109120;
    LODWORD(v157) = isDesktopDevice;
    _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, "Device is detected to be eligible for DEoC: %hhd", buf, 8u);
  }

  [(NSLock *)self->_deocCurrentStatusLock lock];
  if (!a3)
  {
    v28 = [*(v6 + 2480) readDictForPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
    v29 = [MEMORY[0x277CBEAA8] date];
    v30 = [v28 objectForKeyedSubscript:@"committedDate"];
    [v29 timeIntervalSinceDate:v30];
    v32 = v31;

    if (v32 > 0.0 && v32 < 20.0)
    {
      v33 = self->_log;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v33, OS_LOG_TYPE_DEFAULT, "Abort caching the DEoC state, we are commited to current cache!", buf, 2u);
      }

      [(NSLock *)self->_deocCurrentStatusLock unlock];

      goto LABEL_45;
    }
  }

  [*(v6 + 2480) setDict:v8 forPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
  v34 = self->_log;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v157 = v8;
    _os_log_impl(&dword_21B766000, v34, OS_LOG_TYPE_DEFAULT, "Saved current DEoC status: %@", buf, 0xCu);
  }

  [(NSLock *)self->_deocCurrentStatusLock unlock];
  [*(v6 + 2480) logMemoryUsageInternalForEvent:@"End of cacheCurrentDEoC"];
LABEL_45:

LABEL_46:
  v35 = *MEMORY[0x277D85DE8];
}

- (void)evaluateChargeLimitRecommendationForced:(BOOL)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = os_transaction_create();
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [PowerUISmartChargeUtilities drainSessionsInfoBetweenRelevantChargesBefore:v6 withMinimumDuration:0.0];

  v8 = [v7 firstObject];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v8 objectForKeyedSubscript:@"start"];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11 / 86400;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 0x19 || a3)
  {
    v14 = [PowerUISmartChargeUtilities drainBetweenRelevantEventsFromDrainSessionInfo:v7];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = log;
      *buf = 134217984;
      *v72 = [v14 count];
      _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Found %lu instances of historic drain between relevant charge sessions", buf, 0xCu);
    }

    if ([v14 count] <= 0xD && !a3)
    {
      v17 = self->_log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v14 count];
        *buf = 134217984;
        *v72 = v19;
        _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Only %lu available", buf, 0xCu);
      }

      self->_recommendedLimit = 202;
      [PowerUISmartChargeUtilities setNumber:&unk_282D4E878 forPreferenceKey:@"ChargeLimitRecommendation" inDomain:self->_defaultsDomain];
LABEL_60:

      goto LABEL_61;
    }

    v20 = vcvtpd_s64_f64(v12 / 6.0);
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v72 = v20;
      _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "  max instances above threshold: %d", buf, 8u);
    }

    v61 = v20;
    v63 = v8;
    v64 = v7;
    v22 = self;
    v65 = v5;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v62 = v14;
    obj = v14;
    v23 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = *v68;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v68 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v67 + 1) + 8 * i);
          v32 = v22->_log;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v72 = v31;
            _os_log_impl(&dword_21B766000, v32, OS_LOG_TYPE_DEFAULT, "  drain: %@", buf, 0xCu);
          }

          if ([v31 intValue] > 60)
          {
            ++v28;
          }

          if ([v31 intValue] > 65)
          {
            ++v27;
          }

          if ([v31 intValue] > 70)
          {
            ++v26;
          }

          if ([v31 intValue] > 75)
          {
            ++v25;
          }
        }

        v24 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    v33 = 0x277CBE000;
    if (v28 <= v61)
    {
      v35 = v22;
      v40 = v22->_log;
      v5 = v65;
      v8 = v63;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v38 = 80;
        *v72 = 80;
        _os_log_impl(&dword_21B766000, v40, OS_LOG_TYPE_DEFAULT, "Recommend limit %lu", buf, 0xCu);
        v39 = &unk_282D4E848;
      }

      else
      {
        v39 = &unk_282D4E848;
        v38 = 80;
      }

      v7 = v64;
    }

    else
    {
      v34 = v27 <= v61;
      v5 = v65;
      v35 = v22;
      v8 = v63;
      if (v34)
      {
        v41 = v22->_log;
        v7 = v64;
        if (os_log_type_enabled(v35->_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v38 = 85;
          *v72 = 85;
          _os_log_impl(&dword_21B766000, v41, OS_LOG_TYPE_DEFAULT, "Recommend limit %lu", buf, 0xCu);
          v39 = &unk_282D4E890;
        }

        else
        {
          v39 = &unk_282D4E890;
          v38 = 85;
        }
      }

      else
      {
        if (v26 > v61)
        {
          v36 = v22->_log;
          v37 = os_log_type_enabled(v35->_log, OS_LOG_TYPE_DEFAULT);
          v7 = v64;
          if (v25 <= v61)
          {
            v14 = v62;
            if (v37)
            {
              *buf = 134217984;
              v38 = 95;
              *v72 = 95;
              _os_log_impl(&dword_21B766000, v36, OS_LOG_TYPE_DEFAULT, "Recommend limit %lu", buf, 0xCu);
              v39 = &unk_282D4E830;
            }

            else
            {
              v39 = &unk_282D4E830;
              v38 = 95;
            }
          }

          else
          {
            v14 = v62;
            if (v37)
            {
              *buf = 134217984;
              v38 = 100;
              *v72 = 100;
              _os_log_impl(&dword_21B766000, v36, OS_LOG_TYPE_DEFAULT, "Recommend limit %lu", buf, 0xCu);
              v39 = &unk_282D4E620;
            }

            else
            {
              v39 = &unk_282D4E620;
              v38 = 100;
            }
          }

          goto LABEL_50;
        }

        v51 = v22->_log;
        v7 = v64;
        if (os_log_type_enabled(v35->_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v38 = 90;
          *v72 = 90;
          _os_log_impl(&dword_21B766000, v51, OS_LOG_TYPE_DEFAULT, "Recommend limit %lu", buf, 0xCu);
          v39 = &unk_282D4E860;
        }

        else
        {
          v39 = &unk_282D4E860;
          v38 = 90;
        }
      }
    }

    v14 = v62;
LABEL_50:
    v35->_recommendedLimit = v38;
    [PowerUISmartChargeUtilities setNumber:v39 forPreferenceKey:@"ChargeLimitRecommendation" inDomain:v35->_defaultsDomain];
    if (v35->_manualChargeLimitWasEverEnabled || (v42 = v35->_recommendedLimit, v42 - 80 > 0x13) || v42 == v35->_mclTargetSoC || !+[PowerUISmartChargeUtilities isiPhone])
    {
      v46 = v35->_log;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        manualChargeLimitWasEverEnabled = v35->_manualChargeLimitWasEverEnabled;
        recommendedLimit = v35->_recommendedLimit;
        mclTargetSoC = v35->_mclTargetSoC;
        *buf = 67109632;
        *v72 = manualChargeLimitWasEverEnabled;
        *&v72[4] = 2048;
        *&v72[6] = recommendedLimit;
        v73 = 1024;
        v74 = mclTargetSoC;
        _os_log_impl(&dword_21B766000, v46, OS_LOG_TYPE_DEFAULT, "Don't recommend new limit - MCLWasEverEnabled: %d - _recommendedLimit: %lu - _mclTargetSoC: %hhu", buf, 0x18u);
      }
    }

    else
    {
      v43 = [(PowerUISmartChargeManager *)v35 readDateForPreferenceKey:@"chargeLimitRecommendationPostDate"];
      v44 = v35->_log;
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
      if (v43)
      {
        if (v45)
        {
          *buf = 138412290;
          *v72 = v43;
          _os_log_impl(&dword_21B766000, v44, OS_LOG_TYPE_DEFAULT, "Don't recommend new limit, already recommended at %@", buf, 0xCu);
        }
      }

      else
      {
        if (v45)
        {
          v52 = MEMORY[0x277CCABB0];
          v53 = v35->_recommendedLimit;
          v54 = v44;
          v55 = v53;
          v33 = 0x277CBE000uLL;
          v56 = [v52 numberWithUnsignedInteger:v55];
          *buf = 138412290;
          *v72 = v56;
          _os_log_impl(&dword_21B766000, v54, OS_LOG_TYPE_DEFAULT, "Recommend charge limit for %@", buf, 0xCu);
        }

        v57 = +[PowerUINotificationManager sharedInstance];
        v58 = [v57 postChargeLimitRecommendationWithLimit:{-[PowerUISmartChargeManager getUISoCChargeLimit](v35, "getUISoCChargeLimit")}];

        v59 = [*(v33 + 2728) now];
        [(PowerUISmartChargeManager *)v35 setDate:v59 forPreferenceKey:@"chargeLimitRecommendationPostDate"];

        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35->_recommendedLimit];
        [(PowerUISmartChargeManager *)v35 setNumber:v60 forPreferenceKey:@"chargeLimitRecommendationValue"];
      }
    }

    [(PowerUISmartChargeManager *)v35 sendChargeLimitRecommendationAnalytics];
    goto LABEL_60;
  }

  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v72 = v12;
    _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "Earliest charge session is only %lu days old", buf, 0xCu);
  }

  self->_recommendedLimit = 201;
  [PowerUISmartChargeUtilities setNumber:&unk_282D4E650 forPreferenceKey:@"ChargeLimitRecommendation" inDomain:self->_defaultsDomain];
LABEL_61:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)sendChargeLimitRecommendationAnalytics
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  if (self->_manualChargeLimitStatus == 1)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_mclTargetSoC];
    [v4 setObject:v5 forKeyedSubscript:@"currentLimit"];
  }

  else
  {
    [v3 setObject:&unk_282D4E8A8 forKeyedSubscript:@"currentLimit"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_recommendedLimit];
  [v4 setObject:v6 forKeyedSubscript:@"currentRecommendation"];

  v7 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"mostRecentChargeLimitSetDate"];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] now];
    [v8 timeIntervalSinceDate:v7];
    v10 = v9;

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10 / 86400.0];
    [v4 setObject:v11 forKeyedSubscript:@"daysSinceLastChange"];
  }

  else
  {
    [v4 setObject:&unk_282D4E5D8 forKeyedSubscript:@"daysSinceLastChange"];
  }

  v12 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"chargeLimitRecommendationValue"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &unk_282D4E5D8;
  }

  [v4 setObject:v14 forKeyedSubscript:@"initialChargeLimitRecommendation"];
  v15 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"didTapChargeLimitRecommendation"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &unk_282D4E5D8;
  }

  [v4 setObject:v17 forKeyedSubscript:@"tappedChargeLimitNotification"];
  v18 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"chargeLimitRecommendationPostDate"];
  v19 = [(PowerUISmartChargeManager *)self readDateForPreferenceKey:@"initialChargeLimitSetDate"];
  v20 = v19;
  if (v18 || !v19)
  {
    if (!v18 || v19)
    {
      if (v18 && v19)
      {
        [v19 timeIntervalSinceDate:v18];
        v23 = [MEMORY[0x277CCABB0] numberWithDouble:v22 / 86400.0];
        [v4 setObject:v23 forKeyedSubscript:@"limitEnabledDaysAfterNotification"];

        goto LABEL_24;
      }

      v21 = &unk_282D4E8D8;
    }

    else
    {
      v21 = &unk_282D4E8C0;
    }
  }

  else
  {
    v21 = &unk_282D4E5D8;
  }

  [v4 setObject:v21 forKeyedSubscript:@"limitEnabledDaysAfterNotification"];
LABEL_24:
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Sending chargelimitrecommendation to CA: %@", buf, 0xCu);
  }

  v27 = v4;
  v25 = v4;
  AnalyticsSendEventLazy();

  v26 = *MEMORY[0x277D85DE8];
}

- (void)powerStateChangedCallback
{
  if (+[PowerUISmartChargeUtilities isPluggedInWithContext:](PowerUISmartChargeUtilities, "isPluggedInWithContext:", self->_context) && ([MEMORY[0x277CCAC38] processInfo], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isLowPowerModeEnabled"), v3, (v4 & 1) == 0))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_INFO, "LPM disabled on charger", buf, 2u);
    }
  }

  else
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "LPM state changed, reevaluate DEoC", v7, 2u);
    }

    [(PowerUISmartChargeManager *)self forceDEoCReevaluation];
  }
}

- (void)evaluateIfDEoCDevice
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_deocCurrentStatusLock lock];
  v3 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
  [(NSLock *)self->_deocCurrentStatusLock unlock];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 objectForKeyedSubscript:@"cacheDate"];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  log = self->_log;
  v9 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (!v3 || v7 < 0.0)
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "DEoC cached prediction is invalid, do not engage DEoC: %@", &v12, 0xCu);
    }

    goto LABEL_9;
  }

  if (v9)
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "DEoC has a valid cached prediction: %@", &v12, 0xCu);
  }

  if (![(PowerUISmartChargeManager *)self isDEoCSupported])
  {
LABEL_9:
    self->_isDesktopDevice = 0;
    goto LABEL_10;
  }

  v10 = [v3 objectForKeyedSubscript:@"limitCharge"];
  self->_isDesktopDevice = [v10 BOOLValue];

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)resetDeviceHasLegitimateUsage
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = self->_checkpoint || [(PowerUISmartChargeManager *)self deviceHasOverriddenLegitimateUsageDetection]|| [(PowerUISmartChargeManager *)self deviceHasEnoughPluggedInTime];
  self->__hasLegitimateUsage = v3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    hasLegitimateUsage = self->__hasLegitimateUsage;
    v8[0] = 67109120;
    v8[1] = hasLegitimateUsage;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Legitimate Usage = %d", v8, 8u);
  }

  v6 = self->__hasLegitimateUsage;
  ADClientSetValueForScalarKey();
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)deviceHasOverriddenLegitimateUsageDetection
{
  v2 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"overrideCarryDetection"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isDeviceWithLegitimateUsage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__PowerUISmartChargeManager_isDeviceWithLegitimateUsage__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  if (isDeviceWithLegitimateUsage_onceToken != -1)
  {
    dispatch_once(&isDeviceWithLegitimateUsage_onceToken, block);
  }

  return self->__hasLegitimateUsage;
}

void __56__PowerUISmartChargeManager_isDeviceWithLegitimateUsage__block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetDeviceHasLegitimateUsage];
  v2 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 184));
  v3 = isDeviceWithLegitimateUsage_legitimateDeviceDetectionTimer;
  isDeviceWithLegitimateUsage_legitimateDeviceDetectionTimer = v2;

  v4 = isDeviceWithLegitimateUsage_legitimateDeviceDetectionTimer;
  v5 = dispatch_walltime(0, 21600000000000);
  dispatch_source_set_timer(v4, v5, 0x13A52453C000uLL, 0xDF8475800uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __56__PowerUISmartChargeManager_isDeviceWithLegitimateUsage__block_invoke_2;
  handler[3] = &unk_2782D3EA8;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(isDeviceWithLegitimateUsage_legitimateDeviceDetectionTimer, handler);
  dispatch_activate(isDeviceWithLegitimateUsage_legitimateDeviceDetectionTimer);
}

_BYTE *__56__PowerUISmartChargeManager_isDeviceWithLegitimateUsage__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) resetDeviceHasLegitimateUsage];
  result = *(a1 + 32);
  if ((result[10] & 1) == 0)
  {
    result = [result resetState];
    v3 = *(a1 + 32);
    if ((*(v3 + 10) & 1) == 0)
    {
      [*(v3 + 416) clearChargeLimitForLimitType:1];
      v4 = *(*(a1 + 32) + 416);

      return [v4 clearChargeLimitForLimitType:2];
    }
  }

  return result;
}

- (id)computeSignalDeadline
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  v23 = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = self->_monitors;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v24 = -1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        if (!self->_checkpoint || [*(*(&v25 + 1) + 8 * i) signalID] != 4)
        {
          v10 = [v9 requiredFullChargeDate];
          if (v10)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v30 = v9;
              v31 = 2112;
              v32 = v10;
              _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Monitor %@ suggested %@", buf, 0x16u);
            }

            v12 = [v3 earlierDate:v10];

            if (v10 == v12)
            {
              v13 = [MEMORY[0x277CBEAA8] distantFuture];

              if (v10 != v13)
              {
                v24 = [v9 signalID];
              }
            }
          }

          else
          {
            v12 = v3;
          }

          v3 = v12;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  else
  {
    v24 = -1;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
  [v23 setObject:v14 forKeyedSubscript:@"decisionMaker"];

  [v23 setObject:v3 forKeyedSubscript:@"decisionDate"];
  if (self->_isDesktopDevice)
  {
    v15 = [MEMORY[0x277CBEAA8] distantFuture];
    if ([v3 isEqualToDate:v15])
    {
    }

    else
    {
      v16 = [MEMORY[0x277CBEAA8] distantPast];
      v17 = [v3 isEqualToDate:v16];

      if ((v17 & 1) == 0)
      {
        [v23 setObject:&unk_282D4E5D8 forKeyedSubscript:@"decisionMaker"];
        v18 = [MEMORY[0x277CBEAA8] distantFuture];
        [v23 setObject:v18 forKeyedSubscript:@"decisionDate"];

        v19 = self->_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "In DEoC, ignore signals not requiring immediate charge", buf, 2u);
        }
      }
    }
  }

  v20 = self->_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v3;
    _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Monitors suggested: %@", buf, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

- (NSDictionary)signalDeadline
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = v3;
  if (self->_lastComputedSignalDeadline && ([v3 timeIntervalSinceDate:?], v5 <= 600.0))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(PowerUISmartChargeManager *)self computeSignalDeadline];
    v7 = [v6 objectForKeyedSubscript:@"decisionMaker"];
    self->_deadlineSignalID = [v7 unsignedIntegerValue];

    objc_storeStrong(&self->_lastComputedSignalDeadline, v4);
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_deadlineSignalID];
  [v8 setObject:v9 forKeyedSubscript:@"decisionMaker"];

  v10 = [v6 objectForKeyedSubscript:@"decisionDate"];
  [v8 setObject:v10 forKeyedSubscript:@"decisionDate"];

  return v8;
}

- (id)uiDeadlineFromFullChargeDeadline:(id)a3 atDate:(id)a4
{
  v4 = a3;
  if (a3)
  {
    context = self->_context;
    v7 = a4;
    v8 = v4;
    [(PowerUISmartChargeManager *)self durationToFullChargeFromBatteryLevel:[PowerUISmartChargeUtilities currentBatteryLevelWithContext:context]];
    v9 = [v7 dateByAddingTimeInterval:?];

    v4 = [PowerUISmartChargeUtilities roundedDateFromDate:v8];

    [v4 timeIntervalSinceDate:v9];
    if (v10 < 0.0)
    {
      v11 = [PowerUISmartChargeUtilities roundedDateFromDate:v9];

      v4 = v11;
    }
  }

  return v4;
}

- (id)setFullChargeDeadline:(id)a3
{
  v5 = a3;
  v6 = v5;
  p_fullChargeDeadline = &self->__fullChargeDeadline;
  fullChargeDeadline = self->__fullChargeDeadline;
  if (!v5 || !fullChargeDeadline)
  {
    goto LABEL_9;
  }

  checkpoint = self->_checkpoint;
  if (checkpoint - 5 < 2)
  {
    goto LABEL_11;
  }

  if (checkpoint - 2 <= 2)
  {
    [v5 timeIntervalSinceDate:?];
    if (v10 < 0.0)
    {
      objc_storeStrong(&self->__fullChargeDeadline, a3);
      [(PowerUISmartChargeManager *)self setDate:self->__fullChargeDeadline forPreferenceKey:@"fullChargeDeadline"];
      v11 = [MEMORY[0x277CBEAA8] date];
      v12 = [(PowerUISmartChargeManager *)self uiDeadlineFromFullChargeDeadline:v6 atDate:v11];
      uiDeadline = self->_uiDeadline;
      self->_uiDeadline = v12;

      v14 = +[PowerUINotificationManager sharedInstance];
      v15 = [v14 currentOBCEngagedNotification];

      if (v15)
      {
        v16 = self->_uiDeadline;
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v24 = [(PowerUISmartChargeManager *)self fullChargeDeadline];
          v25 = [MEMORY[0x277CBEAA8] date];
          v17 = [(PowerUISmartChargeManager *)self uiDeadlineFromFullChargeDeadline:v24 atDate:v25];
        }

        v26 = +[PowerUINotificationManager sharedInstance];
        [v26 updateOBCEngagedNotificationWithDate:v17];
      }

      else
      {
        v23 = +[PowerUINotificationManager sharedInstance];
        [v23 removeAllNotifications];

        [(PowerUISmartChargeManager *)self postOBCNotificationWithTopOff:0];
      }

      notify_post([@"com.apple.smartcharging.fullChargeDeadlineChanged" UTF8String]);
    }
  }

  else
  {
LABEL_9:
    objc_storeStrong(&self->__fullChargeDeadline, a3);
    [(PowerUISmartChargeManager *)self setDate:self->__fullChargeDeadline forPreferenceKey:@"fullChargeDeadline"];
    v18 = [MEMORY[0x277CBEAA8] date];
    v19 = [(PowerUISmartChargeManager *)self uiDeadlineFromFullChargeDeadline:v6 atDate:v18];
    v20 = self->_uiDeadline;
    self->_uiDeadline = v19;
  }

  fullChargeDeadline = *p_fullChargeDeadline;
LABEL_11:
  v21 = fullChargeDeadline;

  return v21;
}

- (void)updateChargingTimeSaved
{
  v14 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"chargingDisabledAt"];
  v3 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"totalTimeSaved"];
  if (v14)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v4;
    [v14 doubleValue];
    v7 = fmax(v5 - v6, 0.0);
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    [(PowerUISmartChargeManager *)self setNumber:v8 forPreferenceKey:@"lastSavedSeconds"];

    v9 = MEMORY[0x277CCABB0];
    [v3 doubleValue];
    v11 = [v9 numberWithDouble:v7 + v10];
    [(PowerUISmartChargeManager *)self setNumber:v11 forPreferenceKey:@"totalTimeSaved"];

    v12 = MEMORY[0x277CBEAA8];
    [v14 doubleValue];
    v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
    [(PowerUISmartChargeManager *)self addEngagementFromDate:v13 withDuration:v7];

    [(PowerUISmartChargeManager *)self setNumber:0 forPreferenceKey:@"chargingDisabledAt"];
    ADClientSetValueForScalarKey();
  }
}

- (void)enableCharging
{
  [(PowerUIChargingController *)self->_chargingController clearChargeLimitForLimitType:1];
  chargingController = self->_chargingController;

  [(PowerUIChargingController *)chargingController clearChargeLimitForLimitType:2];
}

- (void)disableCharging
{
  if (self->_isDesktopDevice)
  {
    [(NSLock *)self->_deocCurrentStatusLock lock];
    v3 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
    [(NSLock *)self->_deocCurrentStatusLock unlock];
    if (v3 && ([v3 objectForKeyedSubscript:@"socLimit"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      v5 = [v3 objectForKeyedSubscript:@"socLimit"];
      -[PowerUIChargingController setChargeLimitTo:forLimitType:](self->_chargingController, "setChargeLimitTo:forLimitType:", [v5 intValue], 2);
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUISmartChargeManager disableCharging];
      }

      [(PowerUIChargingController *)self->_chargingController setChargeLimitTo:90 forLimitType:2];
    }
  }

  else
  {
    chargingController = self->_chargingController;

    [(PowerUIChargingController *)chargingController setChargeLimitTo:80 forLimitType:1];
  }
}

- (id)ttrURLforGenericFailure:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"tap-to-radar://new?Title=Optimized Battery Charging Error of type: %@&Classification=Serious Bug&ComponentID=971083&ComponentName=PowerUI&ComponentVersion=all&Reproducible=Sometimes&Description=Could you please describe how you were (or are currently) charging your phone/watch?", a3];
  v5 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];

  v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TTR URL is %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)lastAcquiredLocation
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_monitors;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = [v6 lastAcquiredLocation];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)engageManualChargeLimit
{
  v7 = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    if ([(PowerUISmartChargeManager *)self isExternalConnected]|| !self->_isChargePackConnected)
    {
      [(PowerUIChargingController *)self->_chargingController setChargeLimitTo:self->_mclTargetSoC forLimitType:3];
    }

    else
    {
      [(PowerUIChargingController *)self->_chargingController setChargeLimitTo:self->_mclTargetSoC forLimitType:3 setNoChargeToFull:1];
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      mclTargetSoC = self->_mclTargetSoC;
      v6[0] = 67109120;
      v6[1] = mclTargetSoC;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Limiting charging to %hhu%% SoC", v6, 8u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearAllNotificationState
{
  v2 = +[PowerUINotificationManager sharedInstance];
  [v2 removeAllNotifications];

  v3 = +[PowerUINotificationManager sharedInstance];
  [v3 resetAll];
}

- (id)genericOBCFailureNotification:(id)a3
{
  v4 = MEMORY[0x277CE1F60];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
  v9 = [v8 localizedStringForKey:@"OBC_FEATURE_TITLE" value:&stru_282D0B728 table:@"Localizable"];
  [v6 setTitle:v9];

  [v6 setBody:@"Potential charging issue detected. Please file a radar by tapping on the notification."];
  [v6 setShouldIgnoreDoNotDisturb:1];
  v10 = [(PowerUISmartChargeManager *)self ttrURLforGenericFailure:v5];

  [v6 setDefaultActionURL:v10];
  v11 = MEMORY[0x277CE1FC0];
  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [v12 stringWithFormat:@"chargingRequest-%@", v13];
  v15 = [v11 requestWithIdentifier:v14 content:v6 trigger:0];

  return v15;
}

- (void)postOBCNotificationWithTopOff:(BOOL)a3
{
  v3 = a3;
  uiDeadline = self->_uiDeadline;
  if (uiDeadline)
  {
    v5 = uiDeadline;
  }

  else
  {
    v7 = [(PowerUISmartChargeManager *)self fullChargeDeadline];
    v8 = [MEMORY[0x277CBEAA8] date];
    v13 = [(PowerUISmartChargeManager *)self uiDeadlineFromFullChargeDeadline:v7 atDate:v8];

    v5 = v13;
    if (!v13)
    {
      return;
    }
  }

  v14 = v5;
  v9 = +[PowerUINotificationManager sharedInstance];
  v10 = v9;
  if (v3)
  {
    v11 = [v9 postOBCEngagedTopOffNotificationWithDate:v14];
  }

  else
  {
    v12 = [v9 postOBCEngagedNotificationWithDate:v14];
  }
}

- (void)monitor:(id)a3 maySuggestNewFullChargeDeadline:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PowerUISmartChargeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PowerUISmartChargeManager_monitor_maySuggestNewFullChargeDeadline___block_invoke;
  block[3] = &unk_2782D4DB0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __69__PowerUISmartChargeManager_monitor_maySuggestNewFullChargeDeadline___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((v2[15] - 2) <= 2)
  {
    v3 = *(a1 + 40);
    v4 = [v2 fullChargeDeadline];
    v5 = [v3 earlierDate:v4];
    v6 = [v5 isEqual:*(a1 + 40)];

    v7 = *(*(a1 + 32) + 96);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v10 = *(a1 + 40);
        v9 = *(a1 + 48);
        v16 = 138412546;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Monitor %@ with new data (%@). Recomputing full charge deadline", &v16, 0x16u);
      }

      v11 = *(a1 + 32);
      v12 = *(v11 + 176);
      *(v11 + 176) = 0;

      [*(a1 + 32) handleCallback:1];
    }

    else if (v8)
    {
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Monitor %@ with new data (%@). Not recomputing as it is later than target date.", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)monitorMayInvalidateDEoCCache:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Monitor %@ forced DEoC re-caching", &v7, 0xCu);
  }

  [(PowerUISmartChargeManager *)self forceDEoCReevaluation];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 actionIdentifier];
  v6 = [v5 isEqualToString:@"fullCharge"];

  if (!v6)
  {
    v8 = [v4 notification];
    v9 = [v8 request];
    v10 = [v9 content];
    v11 = [v10 categoryIdentifier];
    if ([v11 isEqualToString:@"mcmActiveCategory"])
    {
      v12 = [v4 actionIdentifier];
      v13 = [v12 isEqualToString:*MEMORY[0x277CE20F0]];

      if (v13)
      {
        mcmLog = self->_mcmLog;
        if (os_log_type_enabled(mcmLog, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 0;
          _os_log_impl(&dword_21B766000, mcmLog, OS_LOG_TYPE_DEFAULT, "User dismissed MCM notification", v30, 2u);
        }

        self->_numberOfTimesMCMNotificationWasDisplayed = -1;
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:-1];
        [(PowerUISmartChargeManager *)self setNumber:v15 forPreferenceKey:@"NumberOfTimesMCMNotificationWasDisplayed"];
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
    }

    v16 = [v4 notification];
    v17 = [v16 request];
    v18 = [v17 content];
    v19 = [v18 categoryIdentifier];
    v20 = [v19 isEqualToString:@"chargeRecommendationCategory"];

    if (!v20)
    {
      goto LABEL_24;
    }

    v21 = [v4 actionIdentifier];
    v22 = [v21 isEqualToString:*MEMORY[0x277CE20E8]];

    if (v22)
    {
      v23 = [(PowerUISmartChargeManager *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "User selected defaultAction on charge recommendation", v29, 2u);
      }

      v24 = &unk_282D4E5F0;
    }

    else
    {
      v25 = [v4 actionIdentifier];
      v26 = [v25 isEqualToString:*MEMORY[0x277CE20F0]];

      v27 = [(PowerUISmartChargeManager *)self log];
      v15 = v27;
      if (!v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [PowerUISmartChargeManager handleNotificationResponse:];
        }

        goto LABEL_23;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "User dismissed charge recommendation", v28, 2u);
      }

      v24 = &unk_282D4E5C0;
    }

    [(PowerUISmartChargeManager *)self setNumber:v24 forPreferenceKey:@"didTapChargeLimitRecommendation"];
    goto LABEL_24;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "User requested immediate charge.", buf, 2u);
  }

  [(PowerUISmartChargeManager *)self client:@"Notification" setState:2 withHandler:&__block_literal_global_1765];
LABEL_24:
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [PowerUISmartChargeManager listener:shouldAcceptNewConnection:];
  }

  v7 = [v6 valueForEntitlement:@"com.apple.powerui.smartcharging"];
  v8 = v7;
  if ((!v7 || ([v7 BOOLValue] & 1) == 0) && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [PowerUISmartChargeManager listener:shouldAcceptNewConnection:];
  }

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282D598A0];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = self;
  v16 = objc_opt_class();
  v17 = [v10 setWithObjects:{v11, v12, v13, v14, v16, objc_opt_class(), 0}];
  [v9 setClasses:v17 forSelector:sel_statusWithHandler_ argumentIndex:0 ofReply:1];

  [v6 setExportedInterface:v9];
  [v6 setExportedObject:v15];
  [v6 resume];

  return 1;
}

- (id)stringFromState:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown state";
  }

  else
  {
    return off_2782D5028[a3];
  }
}

- (id)readAndRemoveRecentEngagements
{
  v2 = CFPreferencesCopyAppValue(@"recentEngagements", self->_defaultsDomain);
  v3 = [v2 mutableCopy];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2592000.0];
    v5 = [MEMORY[0x277CBEB58] set];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __59__PowerUISmartChargeManager_readAndRemoveRecentEngagements__block_invoke;
    v14 = &unk_2782D4DF8;
    v15 = v4;
    v16 = v5;
    v6 = v5;
    v7 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:&v11];
    v8 = [v6 allObjects];
    [v3 removeObjectsForKeys:v8];

    v9 = v3;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
  }

  return v9;
}

void __59__PowerUISmartChargeManager_readAndRemoveRecentEngagements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEAA8];
  v7 = v3;
  [v3 doubleValue];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  [v5 timeIntervalSinceDate:*(a1 + 32)];
  if (v6 < 0.0)
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (id)recentEngagements
{
  v3 = [(PowerUISmartChargeManager *)self readAndRemoveRecentEngagements];
  v4 = [v3 copy];
  CFPreferencesSetAppValue(@"recentEngagements", v4, self->_defaultsDomain);

  return v4;
}

- (void)addEngagementFromDate:(id)a3 withDuration:(double)a4
{
  v6 = a3;
  v13 = [(PowerUISmartChargeManager *)self readAndRemoveRecentEngagements];
  v7 = MEMORY[0x277CCACA8];
  [v6 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [v7 stringWithFormat:@"%lf", v9];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:{fmax(a4, 0.0)}];
  [v13 setObject:v11 forKeyedSubscript:v10];

  v12 = [v13 copy];
  CFPreferencesSetAppValue(@"recentEngagements", v12, self->_defaultsDomain);
}

- (void)statusWithHandler:(id)a3
{
  v94[2] = *MEMORY[0x277D85DE8];
  v76 = a3;
  v81 = CFPreferencesCopyAppValue(@"timeline", self->_defaultsDomain);
  v75 = CFPreferencesCopyAppValue(@"timeline.archive", self->_defaultsDomain);
  v4 = [(PowerUISmartChargeManager *)self eligibleEngagementIntervalFromTimelineEvents:?];
  v80 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"lastEnabled"];
  v79 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"lastSavedSeconds"];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"totalTimeSaved"];
  [v6 doubleValue];
  v78 = [v5 numberWithDouble:v7 / 3600.0];

  v82 = [MEMORY[0x277CBEB38] dictionary];
  v77 = v4;
  if (self->_predictorType == 2)
  {
    v8 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
    v9 = [MEMORY[0x277CBEAA8] date];
    modelTwoStagePredictor = self->_modelTwoStagePredictor;
    v83 = v9;
    if (self->_lastPluginStatus < 1)
    {
      v36 = 1;
      [(PowerUIMLTwoStageModelPredictor *)modelTwoStagePredictor adjustedChargingDecision:v8 withPluginDate:v9 withPluginBatteryLevel:v9 forDate:1 forStatus:v8];
      v11 = [v9 dateByAddingTimeInterval:?];
      v91[0] = v9;
      v91[1] = v11;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
      [v82 setObject:v37 forKeyedSubscript:@"CurrentPluginPrediction"];

      v38 = 0;
      v39 = v8 - 5;
      v40 = 3600;
      do
      {
        v41 = v11;
        v42 = [v9 dateByAddingTimeInterval:v40];
        v43 = [v42 dateByAddingTimeInterval:1.0];
        if (v39 <= 1)
        {
          v44 = 1;
        }

        else
        {
          v44 = v39;
        }

        [PowerUIMLTwoStageModelPredictor adjustedChargingDecision:"adjustedChargingDecision:withPluginDate:withPluginBatteryLevel:forDate:forStatus:" withPluginDate:v44 withPluginBatteryLevel:? forDate:? forStatus:?];
        v46 = v45;
        v11 = [v42 dateByAddingTimeInterval:?];

        if ((v38 & 1) == 0 && v46 > 3600.0)
        {
          v90[0] = v42;
          v90[1] = v11;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
          [v82 setObject:v47 forKeyedSubscript:@"NextPluginPrediction"];

          v38 = 1;
        }

        v48 = MEMORY[0x277CCACA8];
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36];
        v50 = [v48 stringWithFormat:@"PluginPredictionIn%@Hours", v49];

        v89[0] = v42;
        v89[1] = v11;
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
        [v82 setObject:v51 forKeyedSubscript:v50];

        ++v36;
        v39 -= 5;
        v40 += 3600;
        v9 = v83;
      }

      while (v36 != 24);
    }

    else
    {
      v11 = [(PowerUIMLTwoStageModelPredictor *)modelTwoStagePredictor pluginDate];
      v12 = self->_modelTwoStagePredictor;
      [(PowerUIMLTwoStageModelPredictor *)v12 pluginBatteryLevel];
      v14 = v13;
      [(PowerUIMLTwoStageModelPredictor *)self->_modelTwoStagePredictor pluginBatteryLevel];
      v15 = 1;
      [(PowerUIMLTwoStageModelPredictor *)v12 adjustedChargingDecision:v14 withPluginDate:v11 withPluginBatteryLevel:v11 forDate:1 forStatus:?];
      v16 = [v11 dateByAddingTimeInterval:?];
      v94[0] = v11;
      v94[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
      [v82 setObject:v17 forKeyedSubscript:@"PluginPredictionAtPlugin"];

      v18 = self->_modelTwoStagePredictor;
      [(PowerUIMLTwoStageModelPredictor *)v18 pluginBatteryLevel];
      v20 = v19;
      v21 = [MEMORY[0x277CBEAA8] date];
      [(PowerUIMLTwoStageModelPredictor *)v18 adjustedChargingDecision:v8 withPluginDate:v11 withPluginBatteryLevel:v21 forDate:1 forStatus:v20];
      v23 = v22;

      v24 = [v11 dateByAddingTimeInterval:v23];

      v93[0] = v11;
      v93[1] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
      [v82 setObject:v25 forKeyedSubscript:@"CurrentPluginPrediction"];

      v26 = v8 - 5;
      v27 = 3600;
      do
      {
        v28 = v24;
        v29 = [v9 dateByAddingTimeInterval:v27];
        v30 = [v29 dateByAddingTimeInterval:1.0];
        if (v26 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v26;
        }

        [PowerUIMLTwoStageModelPredictor adjustedChargingDecision:"adjustedChargingDecision:withPluginDate:withPluginBatteryLevel:forDate:forStatus:" withPluginDate:v31 withPluginBatteryLevel:? forDate:? forStatus:?];
        v24 = [v29 dateByAddingTimeInterval:?];

        v32 = MEMORY[0x277CCACA8];
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
        v34 = [v32 stringWithFormat:@"PluginPredictionIn%@Hours", v33];

        v92[0] = v29;
        v92[1] = v24;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
        [v82 setObject:v35 forKeyedSubscript:v34];

        v9 = v83;
        ++v15;
        v26 -= 5;
        v27 += 3600;
      }

      while (v15 != 24);
    }

    v4 = v77;
  }

  v52 = [(PowerUISmartChargeManager *)self stringFromDecisionMaker:self->_previousDecisionMakerID decisionDate:self->_previousDecisionMakerDate];
  v53 = [(PowerUISmartChargeManager *)self recentEngagements];
  v87[0] = @"Enabled";
  v54 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabled];
  v88[0] = v54;
  v87[1] = @"TemporarilyDisabled";
  v55 = [MEMORY[0x277CCABB0] numberWithBool:self->_temporarilyDisabled];
  v88[1] = v55;
  v87[2] = @"CurrentState";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentState];
  v88[2] = v56;
  v87[3] = @"Checkpoint";
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_checkpoint];
  v58 = v57;
  v59 = MEMORY[0x277CBEBF8];
  if (v81)
  {
    v59 = v81;
  }

  v88[3] = v57;
  v88[4] = v59;
  v87[4] = @"Timeline";
  v87[5] = @"LastEnabled";
  v60 = &unk_282D4E5C0;
  v62 = v79;
  v61 = v80;
  if (!v80)
  {
    v61 = &unk_282D4E5C0;
  }

  if (!v79)
  {
    v62 = &unk_282D4E5C0;
  }

  v88[5] = v61;
  v88[6] = v62;
  v87[6] = @"LastSavedSeconds";
  v87[7] = @"TotalHoursSaved";
  if (v78)
  {
    v60 = v78;
  }

  v63 = MEMORY[0x277CBEC10];
  if (v53)
  {
    v63 = v53;
  }

  v88[7] = v60;
  v88[8] = v63;
  v87[8] = @"RecentEngagements";
  v87[9] = @"PreviousDecisionMaker";
  v64 = &stru_282D0B728;
  v84 = v52;
  if (v52)
  {
    v64 = v52;
  }

  v88[9] = v64;
  v87[10] = @"LastEligibleStart";
  v65 = [v4 startDate];
  v66 = v65;
  if (!v65)
  {
    v66 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v88[10] = v66;
  v87[11] = @"LastEligibleDuration";
  v67 = MEMORY[0x277CCABB0];
  [v4 duration];
  v68 = [v67 numberWithDouble:?];
  v88[11] = v68;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:12];

  if (!v65)
  {
  }

  [v82 addEntriesFromDictionary:v69];
  v70 = +[PowerUICECManager manager];
  v71 = [v70 status];

  [v82 addEntriesFromDictionary:v71];
  v72 = [v82 copy];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v86 = v72;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Status Requested: %@", buf, 0xCu);
  }

  v76[2](v76, v72);

  v74 = *MEMORY[0x277D85DE8];
}

- (void)powerLogStatusWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(PowerUISmartChargeManager *)self powerLogStatus];
  v6 = [v5 copy];

  v4[2](v4, v6);
}

- (void)legacy_isOBCEngagedWithHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  context = self->_context;
  v5 = a3;
  v6 = [PowerUISmartChargeUtilities isPluggedInWithContext:context];
  checkpoint = self->_checkpoint;
  v8 = (checkpoint - 2 < 3) & v6;
  v9 = (checkpoint - 1 < 4) & v6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    isDesktopDevice = self->_isDesktopDevice;
    v13[0] = 67109632;
    v13[1] = v8;
    v14 = 1024;
    v15 = isDesktopDevice;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Returning currently engaged state: %u, desktop device: %u, chargingOverrideAllowed: %u", v13, 0x14u);
  }

  v5[2](v5, v8, self->_isDesktopDevice, v9, 0);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)getCurrentSystemChargeLimit
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = IOPSCopyBatteryLevelLimits();
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:{@"chargeSocLimitOwner", v13}];
        v9 = v8;
        if (v8 && ![v8 intValue])
        {
          v10 = v7;

          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)smartChargingUIStateWithHandler:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v6 = [PowerUISmartChargeUtilities isPluggedInWithContext:self->_context];
  v7 = [(PowerUISmartChargeManager *)self currentChargeLimit];
  checkpoint = self->_checkpoint;
  v9 = (checkpoint - 1) < 4;
  if (self->_temporarilyDisabled)
  {
    v10 = 3;
    goto LABEL_14;
  }

  if (!checkpoint)
  {
    if (self->_isDesktopDevice && self->_enabled)
    {
      v10 = 17;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (checkpoint >= 7 || !v6)
  {
LABEL_13:
    v10 = 1;
    goto LABEL_14;
  }

  if (checkpoint > 3)
  {
    if (checkpoint != 4)
    {
      if (checkpoint == 6)
      {
        v10 = 2;
      }

      else
      {
        v10 = 4;
      }

      goto LABEL_14;
    }
  }

  else if (checkpoint != 2)
  {
    if (self->_isDesktopDevice)
    {
      v10 = 9;
    }

    else
    {
      v10 = 5;
    }

    goto LABEL_14;
  }

  v14 = [(PowerUISmartChargeManager *)self getCurrentSystemChargeLimit];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 objectForKeyedSubscript:@"chargeSocLimitDrain"];
    v25 = [v16 BOOLValue];

    v17 = [v15 objectForKeyedSubscript:@"chargeSocLimitSoc"];
    v18 = [v17 intValue];

    v19 = v18;
    v20 = v25;
  }

  else
  {
    v20 = 0;
    v19 = 100;
  }

  v21 = [PowerUISmartChargeUtilities deviceConnectedToWirelessChargerWithContext:self->_context];
  isDesktopDevice = self->_isDesktopDevice;
  if ((v20 & 1) != 0 || v21)
  {
    v23 = 7;
    if (v5 > 80)
    {
      v23 = 8;
    }

    v24 = 11;
    if (v5 > v19)
    {
      v24 = 12;
    }

    if (self->_isDesktopDevice)
    {
      v10 = v24;
    }

    else
    {
      v10 = v23;
    }
  }

  else if (self->_isDesktopDevice)
  {
    v10 = 10;
  }

  else
  {
    v10 = 6;
  }

LABEL_14:
  v11 = v9 & v6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v27 = v10;
    v28 = 2048;
    v29 = v7;
    v30 = 1024;
    v31 = v11;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Returning currently desired UI state: %lu, charge limit: %lu, chargingOverrideAllowed: %u", buf, 0x1Cu);
  }

  v4[2](v4, v10, v7, v11, 0);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)isSmartChargingCurrentlyEnabledWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    currentState = self->_currentState;
    v8 = log;
    v9 = [v6 numberWithUnsignedInteger:currentState];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Returning current state: %@", &v11, 0xCu);
  }

  v4[2](v4, self->_currentState, 0);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fullChargeDeadlineWithHandler:(id)a3
{
  v7 = a3;
  if (self->_checkpoint - 1 > 4)
  {
    v6 = 0;
  }

  else
  {
    v4 = [(PowerUISmartChargeManager *)self fullChargeDeadline];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(PowerUISmartChargeManager *)self uiDeadlineFromFullChargeDeadline:v4 atDate:v5];
  }

  v7[2](v7, v6, 0);
}

- (void)setEnabled:(BOOL)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [(PowerUISmartChargeManager *)self setNumber:v5 forPreferenceKey:@"enabled"];

  self->_enabled = a3;
}

- (void)setCurrentState:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(PowerUISmartChargeManager *)self setNumber:v5 forPreferenceKey:@"currentState"];

  if (a3 <= 3 && a3 != 1)
  {
    [(PowerUISmartChargeManager *)self enableCharging];
  }

  self->_currentState = a3;
}

- (void)client:(id)a3 setState:(unint64_t)a4 withHandler:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (a4 == 1 && !+[PowerUISmartChargeUtilities isOBCSupported])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager client:setState:withHandler:];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
    v10[2](v10, 0, v15);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = log;
      v13 = [(PowerUISmartChargeManager *)self stringFromState:a4];
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "%@ requests state: %@", buf, 0x16u);
    }

    queue = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__PowerUISmartChargeManager_client_setState_withHandler___block_invoke;
    v17[3] = &unk_2782D4E20;
    v19 = a4;
    v20 = a2;
    v17[4] = self;
    v18 = v10;
    dispatch_async(queue, v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __57__PowerUISmartChargeManager_client_setState_withHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 <= 1)
  {
    if (!v2)
    {
      [*(a1 + 32) setCurrentState:0];
      v14 = *(a1 + 32);
      v15 = [MEMORY[0x277CBEAA8] date];
      [v14 addPowerLogEventForCheckpoint:10 decisionSignalID:0 decisionDate:v15];

      [*(a1 + 32) setCheckpoint:10 withSelector:*(a1 + 56)];
      [*(a1 + 32) setEnabled:0];
      [*(a1 + 32) clearAllNotificationState];
      (*(*(a1 + 40) + 16))();
      notify_post([@"com.apple.powerui.smartchargestatuschanged" UTF8String]);
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __57__PowerUISmartChargeManager_client_setState_withHandler___block_invoke_2;
      v35 = &unk_2782D4188;
      v36 = *(a1 + 32);
      AnalyticsSendEventLazy();
      [*(a1 + 32) forceDEoCReevaluation];
      goto LABEL_16;
    }

    if (v2 == 1)
    {
      [*(a1 + 32) setCurrentState:1];
      [*(a1 + 32) setTemporarilyDisabled:0 until:0];
      [*(a1 + 32) setEnabled:1];
      v3 = *(a1 + 32);
      v4 = [MEMORY[0x277CBEAA8] date];
      [v3 addPowerLogEventForCheckpoint:0 decisionSignalID:0 decisionDate:v4];

      [*(a1 + 32) setCheckpoint:0 withSelector:*(a1 + 56)];
      (*(*(a1 + 40) + 16))();
      notify_post([@"com.apple.powerui.smartchargestatuschanged" UTF8String]);
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v16 = *(a1 + 32);
    v17 = v16[15];
    if (v17 <= 4)
    {
      if (v17)
      {
        [v16 setCurrentState:2];
        v18 = *(a1 + 32);
        v19 = [MEMORY[0x277CBEAA8] date];
        [v18 addPowerLogEventForCheckpoint:9 decisionSignalID:0 decisionDate:v19];

        [*(a1 + 32) setCheckpoint:9 withSelector:*(a1 + 56)];
        v20 = *(a1 + 32);
        v21 = [MEMORY[0x277CBEAA8] date];
        v22 = [v20 defaultDateToDisableUntilGivenDate:v21];

        [*(a1 + 32) setTemporarilyDisabled:1 until:v22];
        (*(*(a1 + 40) + 16))();
        notify_post([@"com.apple.powerui.smartchargestatuschanged" UTF8String]);
        [*(a1 + 32) clearAllNotificationState];
      }

      else
      {
        [v16 setCheckpoint:9 withSelector:*(a1 + 56)];
        v25 = *(a1 + 32);
        v26 = [MEMORY[0x277CBEAA8] date];
        v22 = [v25 defaultDateToDisableUntilGivenDate:v26];

        [*(a1 + 32) setTemporarilyDisabled:1 until:v22];
        (*(*(a1 + 40) + 16))();
        notify_post([@"com.apple.powerui.smartchargestatuschanged" UTF8String]);
      }

      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __57__PowerUISmartChargeManager_client_setState_withHandler___block_invoke_1952;
      v30 = &unk_2782D4188;
      v31 = *(a1 + 32);
      AnalyticsSendEventLazy();
      goto LABEL_16;
    }

LABEL_14:
    v11 = *(a1 + 40);
    v12 = MEMORY[0x277CCA9B8];
    v13 = 2;
    goto LABEL_15;
  }

  if (v2 == 3)
  {
    v5 = *(a1 + 32);
    if (v5[8] == 1)
    {
      v6 = [MEMORY[0x277CBEAA8] date];
      v7 = [v5 defaultDateToDisableUntilGivenDate:v6];

      [*(a1 + 32) setTemporarilyDisabled:1 until:v7];
      [*(a1 + 32) clearAllNotificationState];
      (*(*(a1 + 40) + 16))();
      notify_post([@"com.apple.powerui.smartchargestatuschanged" UTF8String]);
      v8 = *(a1 + 32);
      v9 = *(v8 + 424);
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PowerUISmartChargeUtilities currentBatteryLevelWithContext:](PowerUISmartChargeUtilities, "currentBatteryLevelWithContext:", *(v8 + 48))}];
      [v9 submitEngagementEventWithBatteryLevel:v10 targetSoC:0 predictedEndOfCharge:0 modeOfOperation:2 eventType:3];

      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_9:
  v11 = *(a1 + 40);
  v12 = MEMORY[0x277CCA9B8];
  v13 = 1;
LABEL_15:
  v23 = [v12 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:v13 userInfo:0];
  (*(v11 + 16))(v11, 0, v23);

LABEL_16:
  if (os_log_type_enabled(*(*(a1 + 32) + 96), OS_LOG_TYPE_DEBUG))
  {
    __57__PowerUISmartChargeManager_client_setState_withHandler___block_invoke_cold_1();
  }

  return notify_post([@"com.apple.smartcharging.statechange" UTF8String]);
}

id __57__PowerUISmartChargeManager_client_setState_withHandler___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[PowerUISmartChargeUtilities recentEngagementHistory];
  v3 = [v2 mutableCopy];
  [v3 setObject:@"Disabled" forKeyedSubscript:@"DisableType"];
  v4 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "After disablement, reporting %@", &v8, 0xCu);
  }

  v5 = [v3 copy];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __57__PowerUISmartChargeManager_client_setState_withHandler___block_invoke_1952(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[PowerUISmartChargeUtilities recentEngagementHistory];
  v3 = [v2 mutableCopy];
  [v3 setObject:@"TemporaryDisabled" forKeyedSubscript:@"DisableType"];
  v4 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "After disablement, reporting %@", &v8, 0xCu);
  }

  v5 = [v3 copy];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)isOBCSupportedWithHandler:(id)a3
{
  v4 = a3;
  (*(a3 + 2))(v4, +[PowerUISmartChargeUtilities isOBCSupported], 0);
}

- (void)isMCLSupportedWithHandler:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(PowerUISmartChargeManager *)self isMCLSupported], 0);
}

- (BOOL)isMCLSupported
{
  if (_os_feature_enabled_impl() && (MGGetBoolAnswer() & 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else if (_os_feature_enabled_impl() && +[PowerUISmartChargeUtilities isInternalBuild])
  {
    v4 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"allowMCLOverride"];
    v5 = v4;
    if (v4)
    {
      v3 = ([v4 BOOLValue] << 31) >> 31;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (void)client:(id)a3 getMCLLimitWithHandler:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Client %@ queries MCL limit", &v11, 0xCu);
  }

  if ([(PowerUISmartChargeManager *)self isMCLSupported])
  {
    [(PowerUISmartChargeManager *)self checkWhetherMCLTempDisablementCanBeClearedOnPlugin:0];
    if (self->_manualChargeLimitStatus == 1)
    {
      (*(v7 + 2))(v7, self->_mclTargetSoC, 0);
    }

    else
    {
      (*(v7 + 2))(v7, 100, 0);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
    (*(v7 + 2))(v7, 0, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)tmpDisableMCLViaClient:(id)a3 withHandler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Client %@ requests MCL tmp disablement", &v13, 0xCu);
  }

  if (![(PowerUISmartChargeManager *)self isMCLSupported])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager tmpDisableMCLViaClient:withHandler:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = 4;
    goto LABEL_12;
  }

  if (self->_manualChargeLimitStatus != 1)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager tmpDisableMCLViaClient:withHandler:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = 2;
LABEL_12:
    v11 = [v9 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:v10 userInfo:0];
    v7[2](v7, 0, v11);

    goto LABEL_13;
  }

  [(PowerUISmartChargeManager *)self tempDisableMCL];
  v7[2](v7, 1, 0);
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

- (unsigned)getUISoCChargeLimit
{
  recommendedLimit = self->_recommendedLimit;
  if (recommendedLimit - 80 >= 0x15)
  {
    LOBYTE(recommendedLimit) = 100;
  }

  return recommendedLimit;
}

- (void)enableMCL
{
  if ([(PowerUISmartChargeManager *)self isMCLSupported])
  {
    [(PowerUISmartChargeManager *)self setCheckpoint:0 withSelector:a2];
    [(PowerUISmartChargeManager *)self setTemporarilyDisabled:0 until:0];
    self->_manualChargeLimitStatus = 1;
    [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E5A8 forPreferenceKey:@"MCLFeatureState"];
    mclDisabledUntilDate = self->_mclDisabledUntilDate;
    self->_mclDisabledUntilDate = 0;

    [(PowerUISmartChargeManager *)self setDate:0 forPreferenceKey:@"MCLTempDisabledUntilDate"];
    analyticsManager = self->_analyticsManager;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PowerUISmartChargeUtilities currentBatteryLevelWithContext:](PowerUISmartChargeUtilities, "currentBatteryLevelWithContext:", self->_context)}];
    [(PowerUIAnalyticsManager *)analyticsManager submitEngagementEventWithBatteryLevel:v6 targetSoC:0 predictedEndOfCharge:0 modeOfOperation:6 eventType:5];

    v7 = [(PowerUISmartChargeManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PowerUISmartChargeManager_enableMCL__block_invoke;
    block[3] = &unk_2782D3EA8;
    block[4] = self;
    dispatch_async(v7, block);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [PowerUISmartChargeManager enableMCL];
  }
}

uint64_t __38__PowerUISmartChargeManager_enableMCL__block_invoke(uint64_t a1)
{
  [*(a1 + 32) handleCallback:1];
  v1 = [@"com.apple.powerui.mclstatuschanged" UTF8String];

  return notify_post(v1);
}

- (void)disableMCL
{
  [(PowerUISmartChargeManager *)self setCheckpoint:0 withSelector:a2];
  self->_manualChargeLimitStatus = 0;
  [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E710 forPreferenceKey:@"MCLFeatureState"];
  [(PowerUISmartChargeManager *)self clearManualChargeLimit];
  mclDisabledUntilDate = self->_mclDisabledUntilDate;
  self->_mclDisabledUntilDate = 0;

  [(PowerUISmartChargeManager *)self setDate:0 forPreferenceKey:@"MCLTempDisabledUntilDate"];
  [(PowerUIAnalyticsManager *)self->_analyticsManager submitEngagementEventWithBatteryLevel:0 targetSoC:0 predictedEndOfCharge:0 modeOfOperation:6 eventType:4];
  v4 = [@"com.apple.powerui.mclstatuschanged" UTF8String];

  notify_post(v4);
}

- (void)tempDisableMCL
{
  v4 = [(PowerUISmartChargeManager *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PowerUISmartChargeManager_tempDisableMCL__block_invoke;
  v5[3] = &unk_2782D4B10;
  v5[4] = self;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

uint64_t __43__PowerUISmartChargeManager_tempDisableMCL__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 424) submitEngagementEventWithBatteryLevel:0 targetSoC:0 predictedEndOfCharge:0 modeOfOperation:6 eventType:3];
  if ([PowerUISmartChargeUtilities isPluggedInWithContext:*(*(a1 + 32) + 48)])
  {
    [*(a1 + 32) setCheckpoint:6 withSelector:*(a1 + 40)];
  }

  *(*(a1 + 32) + 496) = 2;
  [*(a1 + 32) setNumber:&unk_282D4E698 forPreferenceKey:@"MCLFeatureState"];
  [*(a1 + 32) clearManualChargeLimit];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 defaultDateToDisableUntilGivenDate:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 520);
  *(v5 + 520) = v4;

  [*(a1 + 32) setDate:*(*(a1 + 32) + 520) forPreferenceKey:@"MCLTempDisabledUntilDate"];
  v7 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 520);
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "MCL has been temp disabled until %@", &v11, 0xCu);
  }

  result = notify_post([@"com.apple.powerui.mclstatuschanged" UTF8String]);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)checkWhetherMCLTempDisablementCanBeClearedOnPlugin:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v5 = [PowerUISmartChargeUtilities isPluggedInWithContext:self->_context];
  mclDisabledUntilDate = self->_mclDisabledUntilDate;
  v7 = !v5 || v3;
  if (mclDisabledUntilDate)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [(NSDate *)mclDisabledUntilDate timeIntervalSinceNow];
    v10 = v9;
    log = self->_log;
    v12 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v10 <= 0.0)
    {
      if (v12)
      {
        v14 = self->_mclDisabledUntilDate;
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "MCL temp disablement date of %@ has passed, reenable feature", buf, 0xCu);
      }

      v15 = [(PowerUISmartChargeManager *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__PowerUISmartChargeManager_checkWhetherMCLTempDisablementCanBeClearedOnPlugin___block_invoke;
      block[3] = &unk_2782D3EA8;
      block[4] = self;
      dispatch_async(v15, block);
    }

    else if (v12)
    {
      v13 = self->_mclDisabledUntilDate;
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "MCL temp disablement date of %@ still upcoming", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __80__PowerUISmartChargeManager_checkWhetherMCLTempDisablementCanBeClearedOnPlugin___block_invoke(uint64_t a1)
{
  [*(a1 + 32) enableMCL];
  v1 = [@"com.apple.powerui.mclstatuschanged" UTF8String];

  return notify_post(v1);
}

- (void)isMCLCurrentlyEnabledWithHandler:(id)a3
{
  v4 = a3;
  [(PowerUISmartChargeManager *)self checkWhetherMCLTempDisablementCanBeClearedOnPlugin:0];
  self->_manualChargeLimitStatus;
  v4[2]();
}

- (unint64_t)currentChargeLimit
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  [(NSLock *)self->_deocCurrentStatusLock lock];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
  v6 = [v5 objectForKeyedSubscript:@"cacheDate"];
  [v4 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
  [v9 setObject:v4 forKeyedSubscript:@"committedDate"];
  if (!v5 || v8 < 0.0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = 100;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Cached DEoC state nonexistent. Committed to charge limit: %lu", &v21, 0xCu);
    }

    [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"limitCharge"];
    [v9 setObject:&unk_282D4E710 forKeyedSubscript:@"DEoCStatus"];
    [PowerUISmartChargeUtilities setDict:v9 forPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
    [(NSLock *)self->_deocCurrentStatusLock unlock];
    goto LABEL_16;
  }

  [PowerUISmartChargeUtilities setDict:v9 forPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
  [(NSLock *)self->_deocCurrentStatusLock unlock];
  v10 = self->_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    [v3 timeIntervalSinceNow];
    v21 = 134217984;
    *&v22 = v12 * -1000.0;
    _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Elapsed time for currentChargeLimit: %f ms", &v21, 0xCu);
  }

  v13 = [v9 objectForKeyedSubscript:@"limitCharge"];
  if ([v13 BOOLValue])
  {
    v14 = [v9 objectForKeyedSubscript:@"dryRun"];
    v15 = [v14 BOOLValue];

    if ((v15 & 1) == 0)
    {
      v16 = self->_log;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 80;
        goto LABEL_17;
      }

      v21 = 134217984;
      v17 = 80;
      v22 = 80;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v16 = self->_log;
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
LABEL_16:
    v17 = 100;
    goto LABEL_17;
  }

  v21 = 134217984;
  v17 = 100;
  v22 = 100;
LABEL_15:
  _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Committed to charge limit: %lu", &v21, 0xCu);
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)isDEoCSupported
{
  if (MGGetBoolAnswer())
  {
    LOBYTE(v3) = 1;
  }

  else if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v4 = [(PowerUISmartChargeManager *)self readNumberForPreferenceKey:@"allowDEoCOverride"];
    v5 = v4;
    if (v4)
    {
      v3 = ([v4 BOOLValue] << 31) >> 31;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (void)isDEoCSupportedWithHandler:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(PowerUISmartChargeManager *)self isDEoCSupported], 0);
}

- (void)isDEoCCurrentlyEnabledWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    deocFeatureState = self->_deocFeatureState;
    v8 = log;
    v9 = [v6 numberWithUnsignedInteger:deocFeatureState];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Returning current DEoC state: %@", &v11, 0xCu);
  }

  v4[2](v4, self->_deocFeatureState, 0);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 setDEoCState:(unint64_t)a4 withHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(PowerUISmartChargeManager *)self isDEoCSupported];
  log = self->_log;
  if (!v10)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager client:setDEoCState:withHandler:];
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = 4;
    goto LABEL_12;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = log;
    v14 = [v12 numberWithUnsignedInteger:a4];
    v19 = 138412546;
    v20 = v8;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "%@ requests DEoC state: %@", &v19, 0x16u);
  }

  if (!a4)
  {
    [(PowerUISmartChargeManager *)self disableDEoC];
    goto LABEL_13;
  }

  if (a4 != 1)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = 1;
LABEL_12:
    v17 = [v15 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:v16 userInfo:0];
    v9[2](v9, 0, v17);

    goto LABEL_13;
  }

  [(PowerUISmartChargeManager *)self enableDEoC];
LABEL_13:
  v9[2](v9, 1, 0);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)disableDEoC
{
  v3 = [(PowerUISmartChargeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PowerUISmartChargeManager_disableDEoC__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __40__PowerUISmartChargeManager_disableDEoC__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Running DEoC disablement request", buf, 2u);
  }

  [*(a1 + 32) setNumber:&unk_282D4E710 forPreferenceKey:@"DEoCFeatureState"];
  *(*(a1 + 32) + 480) = 0;
  *(*(a1 + 32) + 15) = 0;
  [*(a1 + 32) forceDEoCReevaluation];
  [*(*(a1 + 32) + 416) clearChargeLimitForLimitType:2];
  [*(a1 + 32) handleCallback:1];
  v6 = *(a1 + 32);
  AnalyticsSendEventLazy();
  v3 = *(a1 + 32);
  v4 = *(v3 + 424);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PowerUISmartChargeUtilities currentBatteryLevelWithContext:](PowerUISmartChargeUtilities, "currentBatteryLevelWithContext:", *(v3 + 48))}];
  [v4 submitEngagementEventWithBatteryLevel:v5 targetSoC:0 predictedEndOfCharge:0 modeOfOperation:5 eventType:4];
}

id __40__PowerUISmartChargeManager_disableDEoC__block_invoke_1965(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[PowerUISmartChargeUtilities recentEngagementHistory];
  v3 = [v2 mutableCopy];
  [v3 setObject:@"DEoCDisabled" forKeyedSubscript:@"DisableType"];
  v4 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_INFO, "After DEoC disablement, reporting %@", &v8, 0xCu);
  }

  v5 = [v3 copy];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)enableDEoC
{
  v3 = [(PowerUISmartChargeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PowerUISmartChargeManager_enableDEoC__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __39__PowerUISmartChargeManager_enableDEoC__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Running DEoC enablement request", v9, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  if (v4)
  {
    if (v4 == 3)
    {
      [v3 setTemporarilyDisabled:0 until:0];
    }
  }

  else
  {
    if (os_log_type_enabled(*(v3 + 96), OS_LOG_TYPE_ERROR))
    {
      __39__PowerUISmartChargeManager_enableDEoC__block_invoke_cold_1();
    }

    [*(a1 + 32) setCurrentState:1];
    [*(a1 + 32) setTemporarilyDisabled:0 until:0];
    [*(a1 + 32) setEnabled:1];
  }

  [*(a1 + 32) setNumber:&unk_282D4E5A8 forPreferenceKey:@"DEoCFeatureState"];
  *(*(a1 + 32) + 480) = 1;
  v5 = *(a1 + 32);
  v6 = *(v5 + 424);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PowerUISmartChargeUtilities currentBatteryLevelWithContext:](PowerUISmartChargeUtilities, "currentBatteryLevelWithContext:", *(v5 + 48))}];
  [v6 submitEngagementEventWithBatteryLevel:v7 targetSoC:0 predictedEndOfCharge:0 modeOfOperation:5 eventType:5];

  result = [*(a1 + 32) isExternalConnected];
  if (result)
  {
    return [*(a1 + 32) evaluateIfDesktopDevice];
  }

  return result;
}

- (void)currentChargeLimitWithHandler:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(PowerUISmartChargeManager *)self currentChargeLimit], 0);
}

- (void)getDEoCPredictionsWithHandler:(id)a3
{
  v34[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  v29 = a3;
  v5 = [v4 date];
  v6 = [PowerUISmartChargeUtilities drainSessionsInfoBetweenRelevantChargesBefore:v5 withMinimumDuration:0.0];

  v7 = [[PowerUIMLRelevantDrainPredictor alloc] initWithDefaultsDomain:self->_defaultsDomain withContextStore:self->_context withTrialManager:self->_trialManager];
  v8 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v30 = v6;
  v11 = [(PowerUIMLRelevantDrainPredictor *)v7 featuresForChargeSessionAtDate:v9 withChargeStartSoC:v10 withChargeAndDrainSessionHistory:v6];

  v12 = [(PowerUIMLRelevantDrainPredictor *)v7 predictedRelevantDrainwithFeatures:v11];
  v27 = [(PowerUITrialManager *)self->_trialManager longFactorForName:@"minDaysOfChargingHistoryRequiredForDEoCModel"];
  v28 = [(PowerUITrialManager *)self->_trialManager longFactorForName:@"minNumberOfRelevantDrainsRequiredForDEoCModel"];
  v33[0] = @"confidence";
  v13 = MEMORY[0x277CCABB0];
  [v12 confidence];
  v14 = [v13 numberWithDouble:?];
  v34[0] = v14;
  v33[1] = @"significantDrainAhead";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "significantDrainAhead")}];
  v34[1] = v15;
  v33[2] = @"threshold";
  v16 = MEMORY[0x277CCABB0];
  [v12 threshold];
  v17 = [v16 numberWithDouble:?];
  v34[2] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];

  v19 = [(PowerUITrialManager *)self->_trialManager experimentID];

  if (v19)
  {
    v20 = [(PowerUITrialManager *)self->_trialManager experimentID];
  }

  else
  {
    v20 = @"Nil";
  }

  v21 = [(PowerUITrialManager *)self->_trialManager treatmentID];

  if (v21)
  {
    v22 = [(PowerUITrialManager *)self->_trialManager treatmentID];
  }

  else
  {
    v22 = @"Nil";
  }

  v31[0] = @"predictions";
  v31[1] = @"features";
  v32[0] = v18;
  v32[1] = v11;
  v32[2] = v30;
  v31[2] = @"drainInfo";
  v31[3] = @"minDaysCharging";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
  v32[3] = v23;
  v31[4] = @"minNumberOfRelevantDrains";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v28];
  v32[4] = v24;
  v32[5] = v20;
  v31[5] = @"trialexperiment";
  v31[6] = @"trialTreatment";
  v32[6] = v22;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:7];

  v29[2](v29, v25, 0);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)isOBCEngagedOrChargeLimitedWithHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  context = self->_context;
  v5 = a3;
  v6 = [PowerUISmartChargeUtilities isPluggedInWithContext:context];
  checkpoint = self->_checkpoint;
  v8 = (checkpoint - 2 < 3) & v6;
  v9 = (checkpoint - 1 < 4) & v6;
  v10 = [(PowerUISmartChargeManager *)self currentChargeLimit];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109632;
    v13[1] = v8;
    v14 = 2048;
    v15 = v10;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Returning currently engaged state: %u, charge limit: %lu, chargingOverrideAllowed: %u", v13, 0x18u);
  }

  v5[2](v5, v8, v10, v9, 0);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentDEoCStatusAsGaugingMitigated
{
  v9 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_deocCurrentStatusLock lock];
  v3 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];
    [v4 setObject:&unk_282D4E7B8 forKeyedSubscript:@"DEoCStatus"];
    [PowerUISmartChargeUtilities setDict:v4 forPreferenceKey:@"CurrentDEoCStatus" inDomain:self->_defaultsDomain];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "GaugingMitigation updated currentDEoCStatus: %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [PowerUISmartChargeManager updateCurrentDEoCStatusAsGaugingMitigated];
  }

  [(NSLock *)self->_deocCurrentStatusLock unlock];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)isCECSupportedWithHandler:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(PowerUISmartChargeManager *)self isCECSupported], 0);
}

- (void)isCECCurrentlyEnabledWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PowerUICECManager manager];
  v6 = [v5 cecState];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = log;
    v10 = [v8 numberWithUnsignedInteger:v6];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Returning current state: %@", &v12, 0xCu);
  }

  v4[2](v4, v6, 0);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 setCECState:(unint64_t)a4 withHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(PowerUISmartChargeManager *)self isCECSupported];
  log = self->_log;
  if (v10)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = log;
      v14 = [v12 numberWithUnsignedInteger:a4];
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "%@ requests CEC state: %@", &v17, 0x16u);
    }

    v15 = +[PowerUICECManager manager];
    [v15 handlePowerUICECStateChange:a4 withHandler:v9];
  }

  else
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager client:setCECState:withHandler:];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
    v9[2](v9, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)cecFullChargeDeadlineWithHandler:(id)a3
{
  v6 = a3;
  v3 = +[PowerUICECManager manager];
  if ([v3 isEngaged])
  {
    v4 = [v3 userDeadline];
    v5 = [PowerUISmartChargeUtilities roundedDateFromDate:v4];
  }

  else
  {
    v5 = 0;
  }

  v6[2](v6, v5, 0);
}

- (id)getCECLifetimeValues
{
  v2 = +[PowerUICECManager manager];
  v3 = [v2 readLifetimeCECEngagementValues];

  return v3;
}

- (void)shouldMCMBeDisplayedWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PowerUISmartChargeManager *)self isMCMSupported])
  {
    mcmLog = self->_mcmLog;
    if (os_log_type_enabled(mcmLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x277CCABB0];
      isChargePackConnected = self->_isChargePackConnected;
      v8 = mcmLog;
      v9 = [v6 numberWithBool:isChargePackConnected];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Returning whether MCM settings should be displayed: %@", &v11, 0xCu);
    }

    v4[2](v4, self->_isChargePackConnected, 0);
  }

  else
  {
    v4[2](v4, 0, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)isMCMCurrentlyEnabledWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  mcmLog = self->_mcmLog;
  if (os_log_type_enabled(mcmLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    mcmCurrentState = self->_mcmCurrentState;
    v8 = mcmLog;
    v9 = [v6 numberWithUnsignedInteger:mcmCurrentState];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Returning current MCM state: %@", &v11, 0xCu);
  }

  v4[2](v4, self->_mcmCurrentState, 0);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 setMCMState:(unint64_t)a4 withHandler:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(PowerUISmartChargeManager *)self isMCMSupported];
  mcmLog = self->_mcmLog;
  if (v10)
  {
    if (os_log_type_enabled(self->_mcmLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = mcmLog;
      v14 = [v12 numberWithUnsignedInteger:a4];
      v20 = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "%@ requests state: %@", &v20, 0x16u);
    }

    switch(a4)
    {
      case 2uLL:
        self->_mcmCurrentState = 2;
        v15 = &unk_282D4E698;
        goto LABEL_14;
      case 1uLL:
        self->_mcmCurrentState = 1;
        [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E5A8 forPreferenceKey:@"MCMCurrentState"];
LABEL_15:
        v9[2](v9, 1, 0);
        [(PowerUISmartChargeManager *)self reportMCMStatusWithBatteryLevel:0xFFFFFFFFLL];
        goto LABEL_16;
      case 0uLL:
        self->_mcmCurrentState = 0;
        v15 = &unk_282D4E710;
LABEL_14:
        [(PowerUISmartChargeManager *)self setNumber:v15 forPreferenceKey:@"MCMCurrentState"];
        [(PowerUISmartChargeManager *)self mcmEnableCharging];
        goto LABEL_15;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = 1;
  }

  else
  {
    if (os_log_type_enabled(self->_mcmLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUISmartChargeManager client:setMCMState:withHandler:];
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = 4;
  }

  v18 = [v16 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:v17 userInfo:0];
  (v9)[2](v9, 0, v18);

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)resetEngagementOverrideWithHandler:(id)a3
{
  v4 = a3;
  [(PowerUISmartChargeManager *)self setEngagementTimeOverride:0];
  [(PowerUISmartChargeManager *)self setFullChargeDeadlineOverride:0];
  [(PowerUISmartChargeManager *)self setRepeatEngagementOverrideEndDate:0];
  [(PowerUISmartChargeManager *)self setNumber:0 forPreferenceKey:@"engagementTimeOverride"];
  [(PowerUISmartChargeManager *)self setNumber:0 forPreferenceKey:@"fullChargeDeadlineOverride"];
  [(PowerUISmartChargeManager *)self setNumber:0 forPreferenceKey:@"repeatEngagementOverrideEndDate"];
  self->_predictorType = 2;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  [(PowerUISmartChargeManager *)self setNumber:v5 forPreferenceKey:@"chargePredictionModel"];

  [(PowerUISmartChargeManager *)self setEnabled:1];
  [(PowerUISmartChargeManager *)self setCurrentState:1];
  [(PowerUISmartChargeManager *)self setTemporarilyDisabled:0];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Overrides removed.", v7, 2u);
  }

  v4[2](v4, 1);
}

- (void)enterDevelopmentMode
{
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E5F0 forPreferenceKey:@"overrideCarryDetection"];
    [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E5F0 forPreferenceKey:@"activityMinHistory"];
    [(PowerUISmartChargeManager *)self setNumber:&unk_282D4E5F0 forPreferenceKey:@"locIgnored"];

    [(PowerUISmartChargeManager *)self resetDeviceHasLegitimateUsage];
  }
}

- (void)resetDevelopmentMode
{
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    [(PowerUISmartChargeManager *)self setNumber:0 forPreferenceKey:@"overrideCarryDetection"];
    [(PowerUISmartChargeManager *)self setNumber:0 forPreferenceKey:@"activityMinHistory"];
    [(PowerUISmartChargeManager *)self setNumber:0 forPreferenceKey:@"locIgnored"];

    [(PowerUISmartChargeManager *)self resetDeviceHasLegitimateUsage];
  }
}

- (void)currentLeewayWithHandler:(id)a3
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v8 = [(PowerUISmartChargeManager *)self modelTwoStagePredictor];
  [v8 adjustedDuration];
  v7 = [v5 numberWithDouble:?];
  (*(a3 + 2))(v6, v7, 0);
}

- (void)listMonitorSignals
{
  v54 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_monitors;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v45;
    *&v4 = 138412290;
    v34 = v4;
    v35 = *v45;
    do
    {
      v7 = 0;
      v36 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v38 = v7;
          v9 = [v8 detectedSignals];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v41;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v41 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                log = self->_log;
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = *(*(&v40 + 1) + 8 * i);
                  v16 = log;
                  v17 = objc_opt_class();
                  *buf = 138412546;
                  v49 = v17;
                  v50 = 2112;
                  v51 = v15;
                  v18 = v17;
                  _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Monitor of type '%@' detected signal with start date: %@", buf, 0x16u);
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v40 objects:v52 count:16];
            }

            while (v11);
          }

          if (![v9 count])
          {
            v19 = self->_log;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v19;
              v21 = objc_opt_class();
              *buf = v34;
              v49 = v21;
              v22 = v21;
              _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Monitor of type '%@' did not detect any valid signals.", buf, 0xCu);
            }
          }

          v6 = v35;
          v5 = v36;
          v7 = v38;
        }

        else if ([v8 signalID] == 4)
        {
          v23 = v8;
          v24 = self->_log;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = objc_opt_class();
            v39 = v7;
            v27 = v26;
            v28 = [v23 requiredFullChargeDate];
            *buf = 138412546;
            v49 = v26;
            v50 = 2112;
            v51 = v28;
            _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Required full charge date from %@: %@", buf, 0x16u);

            v7 = v39;
          }
        }

        else
        {
          v29 = self->_log;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            v31 = objc_opt_class();
            *buf = v34;
            v49 = v31;
            v32 = v31;
            _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, "Monitor of type '%@' does not respond to signals debug query.", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v5);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)mcmEnableCharging
{
  self->_mcmForbidsCharging = 0;
  [(PowerUISmartChargeManager *)self setNumber:MEMORY[0x277CBEC28] forPreferenceKey:@"MCMForbidsCharging"];
  chargingController = self->_chargingController;

  [(PowerUIChargingController *)chargingController clearChargeLimitForLimitType:5];
}

- (void)mcmDisableCharging
{
  self->_mcmForbidsCharging = 1;
  [(PowerUISmartChargeManager *)self setNumber:MEMORY[0x277CBEC38] forPreferenceKey:@"MCMForbidsCharging"];
  chargingController = self->_chargingController;

  [(PowerUIChargingController *)chargingController setChargeLimitTo:90 forLimitType:5];
}

- (id)mcmActiveNotificationRequest
{
  v2 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = [v4 localizedStringForKey:@"MCM_FEATURE_TITLE" value:&stru_282D0B728 table:@"Localizable-A149"];
  [v2 setTitle:v5];

  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  [v6 setLocale:v7];

  [v6 setNumberStyle:3];
  [v6 setMaximumFractionDigits:0];
  [v6 setMultiplier:&unk_282D4E5F0];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v4 localizedStringForKey:@"MCM_ACTIVE_BODY" value:&stru_282D0B728 table:@"Localizable-A149"];
  v10 = [v6 stringFromNumber:&unk_282D4E8F0];
  v11 = [v8 stringWithFormat:v9, v10];
  [v2 setBody:v11];

  [v2 setCategoryIdentifier:@"mcmActiveCategory"];
  [v2 setShouldHideDate:1];
  [v2 setShouldHideTime:1];
  [v2 setShouldSuppressDefaultAction:1];
  [v2 setShouldIgnoreDowntime:1];
  [v2 setShouldIgnoreDoNotDisturb:1];
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:480.0];
  [v2 setExpirationDate:v12];

  v13 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.fill"];
  [v2 setIcon:v13];

  v14 = MEMORY[0x277CE1FC0];
  v15 = [MEMORY[0x277CE2020] triggerWithTimeInterval:0 repeats:1.0];
  v16 = [v14 requestWithIdentifier:@"mcmActiveNotification" content:v2 trigger:v15];

  [v16 setDestinations:6];

  return v16;
}

- (void)accessoryConnectionAttached:(id)a3 type:(int)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a4 == 9)
  {
    mcmLog = self->_mcmLog;
    if (os_log_type_enabled(mcmLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_21B766000, mcmLog, OS_LOG_TYPE_DEFAULT, "New accessory (%@), connection type: NFC", &v11, 0xCu);
    }

    [(PowerUISmartChargeManager *)self accessoryNFCConnectionCallback:v7];
  }

  else if (a4 == 4)
  {
    v8 = self->_mcmLog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "New accessory (%@), connection type: Inductive", &v11, 0xCu);
    }

    objc_storeStrong(&self->_currentChargePackInductiveConnectionUUID, a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)accessoryNFCConnectionCallback:(id)a3
{
  connectionInfoProvider = self->_connectionInfoProvider;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__PowerUISmartChargeManager_accessoryNFCConnectionCallback___block_invoke;
  v4[3] = &unk_2782D4E70;
  v4[4] = self;
  [(ACCConnectionInfo *)connectionInfoProvider accessoryEndpointsForConnection:a3 withReply:v4];
}

void __60__PowerUISmartChargeManager_accessoryNFCConnectionCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 112);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134218242;
    v26 = [v6 count];
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "%lu endpoints for NFC connection (%@)", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    v13 = *MEMORY[0x277CFD330];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = *(a1 + 32);
        v17 = *(v16 + 440);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __60__PowerUISmartChargeManager_accessoryNFCConnectionCallback___block_invoke_2043;
        v19[3] = &unk_2782D4E48;
        v19[4] = v16;
        [v17 accessoryProperty:v13 forEndpoint:v15 connection:v5 withReply:v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __60__PowerUISmartChargeManager_accessoryNFCConnectionCallback___block_invoke_2043(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12)
  {
    if ([v12 unsignedIntValue] == 66 || objc_msgSend(v13, "unsignedIntValue") == 115)
    {
      v14 = *(*(a1 + 32) + 112);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Charge pack connected through NFC", buf, 2u);
      }

      objc_storeStrong((*(a1 + 32) + 456), a3);
      v15 = *(a1 + 32);
      if (*(v15 + 448))
      {
        v16 = *(v15 + 112);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Cancel fidget mitigation timer", buf, 2u);
        }

        dispatch_source_cancel(*(*(a1 + 32) + 448));
        v15 = *(a1 + 32);
      }

      *(v15 + 17) = 1;
      [*(a1 + 32) reportMCMStatusWithBatteryLevel:0xFFFFFFFFLL];
      if (*(*(a1 + 32) + 472) <= 2uLL)
      {
        v38 = v13;
        v39 = v11;
        v37 = v10;
        v40 = v9;
        v17 = +[PowerUINotificationManager sharedInstance];
        v18 = [v17 getDeliveredNotifications];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v42;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v42 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [*(*(&v41 + 1) + 8 * i) request];
              v25 = [v24 content];
              v26 = [v25 categoryIdentifier];
              v27 = [v26 isEqualToString:@"mcmActiveCategory"];

              if (v27)
              {
                v33 = *(*(a1 + 32) + 112);
                v30 = v19;
                v11 = v39;
                v9 = v40;
                v10 = v37;
                v13 = v38;
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_21B766000, v33, OS_LOG_TYPE_DEFAULT, "MCM notification still active, don't display a new one.", buf, 2u);
                  v30 = v19;
                }

                goto LABEL_31;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        v28 = +[PowerUINotificationManager sharedInstance];
        v29 = [*(a1 + 32) mcmActiveNotificationRequest];
        v30 = [v28 postNotificationWithRequest:v29];

        v31 = *(a1 + 32);
        if (v30)
        {
          v10 = v37;
          if (os_log_type_enabled(*(v31 + 112), OS_LOG_TYPE_ERROR))
          {
            __60__PowerUISmartChargeManager_accessoryNFCConnectionCallback___block_invoke_2043_cold_2();
          }

          v9 = v40;
        }

        else
        {
          ++*(v31 + 472);
          v34 = *(a1 + 32);
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34[59]];
          [v34 setNumber:v35 forPreferenceKey:@"NumberOfTimesMCMNotificationWasDisplayed"];

          v9 = v40;
          v10 = v37;
        }

        v13 = v38;
        v11 = v39;
LABEL_31:
      }
    }

    else if (os_log_type_enabled(*(*(a1 + 32) + 112), OS_LOG_TYPE_ERROR))
    {
      __60__PowerUISmartChargeManager_accessoryNFCConnectionCallback___block_invoke_2043_cold_1();
    }
  }

  else
  {
    v32 = *(*(a1 + 32) + 112);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v9;
      _os_log_impl(&dword_21B766000, v32, OS_LOG_TYPE_DEFAULT, "No NFC property value for endpoint (%@)", buf, 0xCu);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)accessoryConnectionDetached:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 isEqualToString:self->_currentChargePackNFCConnectionUUID])
  {
    if ([v4 isEqualToString:self->_currentChargePackInductiveConnectionUUID])
    {
      currentChargePackInductiveConnectionUUID = self->_currentChargePackInductiveConnectionUUID;
      self->_currentChargePackInductiveConnectionUUID = 0;

      mcmLog = self->_mcmLog;
      if (!os_log_type_enabled(mcmLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v10 = 138412290;
      v11 = v4;
      v8 = "Known inductive connection '%@' lost.";
    }

    else
    {
      mcmLog = self->_mcmLog;
      if (!os_log_type_enabled(mcmLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v10 = 138412290;
      v11 = v4;
      v8 = "Accessory '%@' disconnected.";
    }

    _os_log_impl(&dword_21B766000, mcmLog, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
    goto LABEL_12;
  }

  v5 = self->_mcmLog;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Known charge pack disconnected (%@). Reset state.", &v10, 0xCu);
  }

  self->_isChargePackConnected = 0;
  [(PowerUISmartChargeManager *)self mcmEnableCharging];
  [(PowerUISmartChargeManager *)self reportMCMStatusWithBatteryLevel:0xFFFFFFFFLL];
  [(PowerUISmartChargeManager *)self clearManualChargeLimit];
  if (self->_mcmCurrentState == 2)
  {
    [(PowerUISmartChargeManager *)self startFidgetMitigationTimer];
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startFidgetMitigationTimer
{
  mcmLog = self->_mcmLog;
  if (os_log_type_enabled(mcmLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, mcmLog, OS_LOG_TYPE_DEFAULT, "MCM is temporarily disabled, start fidget mitigation.", buf, 2u);
  }

  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  mcmFidgetMitigationTimer = self->_mcmFidgetMitigationTimer;
  self->_mcmFidgetMitigationTimer = v4;

  v6 = self->_mcmFidgetMitigationTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__PowerUISmartChargeManager_startFidgetMitigationTimer__block_invoke;
  handler[3] = &unk_2782D3EA8;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  v7 = self->_mcmFidgetMitigationTimer;
  v8 = dispatch_walltime(0, 480000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_activate(self->_mcmFidgetMitigationTimer);
}

uint64_t __55__PowerUISmartChargeManager_startFidgetMitigationTimer__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "MCM Fidget mitigation timer ran out, re-enable MCM.", v4, 2u);
  }

  *(*(a1 + 32) + 432) = 1;
  return [*(a1 + 32) setNumber:&unk_282D4E5A8 forPreferenceKey:@"MCMCurrentState"];
}

- (void)idleDurationWithEngagedCheckpoints:(void *)a1 withTopOffStartCheckpoints:withDisabledCheckpoints:withTopOffStart:withIdleStart:withTemporarilyDisabledStart:withPluginEnd:.cold.1(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_5_1();
  v5 = [v4 numberWithDouble:v3];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_21B766000, v6, v7, "ERROR: idleStart after pluginEnd, duration: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)idleDurationWithEngagedCheckpoints:(void *)a1 withTopOffStartCheckpoints:withDisabledCheckpoints:withTopOffStart:withIdleStart:withTemporarilyDisabledStart:withPluginEnd:.cold.2(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_5_1();
  v5 = [v4 numberWithDouble:v3];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_21B766000, v6, v7, "ERROR: idleStart after temporarilyDisabledStart, duration: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)idleDurationWithEngagedCheckpoints:(void *)a1 withTopOffStartCheckpoints:withDisabledCheckpoints:withTopOffStart:withIdleStart:withTemporarilyDisabledStart:withPluginEnd:.cold.3(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_5_1();
  v5 = [v4 numberWithDouble:v3];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_21B766000, v6, v7, "ERROR: idleStart after topOffStart, duration: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)constructAnalyticsStatusFromEvents:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a1;
  _os_log_fault_impl(&dword_21B766000, a2, OS_LOG_TYPE_FAULT, "Negative idleDuration %@, events are %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)recordDEoCAnalytics:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendBDCData:withMessage:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_21B766000, v1, OS_LOG_TYPE_ERROR, "Invalid parameters. remoteConn: %@ msg: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleCallback:(NSObject *)a3 .cold.3(void *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 67109376;
  v6[1] = [a1 lastPluginStatus];
  v7 = 1024;
  v8 = a2;
  _os_log_debug_impl(&dword_21B766000, a3, OS_LOG_TYPE_DEBUG, "lastPluginStatus: %d - newPluginStatus: %d", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCallback:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 9);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_21B766000, a2, OS_LOG_TYPE_DEBUG, "Skipping prediction check: Feature disabled (temporarily %d)", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)handleCallback:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_21B766000, v0, OS_LOG_TYPE_DEBUG, "Plugin date set to %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)constructDailyStats:(void *)a1 .cold.1(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_5_1();
  v5 = [v4 numberWithDouble:v3];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_21B766000, v6, v7, "ERROR: Suspicious number of idleDurationHours: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)constructDailyStats:(void *)a1 .cold.2(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_5_1();
  v5 = [v4 numberWithDouble:v3];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_21B766000, v6, v7, "ERROR: Suspicious number of eligibleDurationHours: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cacheCurrentDEoCBehaviorForced:(unsigned __int8 *)a1 .cold.1(unsigned __int8 *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1[8];
  v5 = a2;
  v6 = [v3 numberWithBool:v4];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a1[9]];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{+[PowerUISmartChargeUtilities isOBCSupported](PowerUISmartChargeUtilities, "isOBCSupported") ^ 1}];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a1, "isDEoCSupported") ^ 1}];
  v11 = 138413058;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  v17 = 2112;
  v18 = v9;
  _os_log_debug_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEBUG, "!_enabled: %@ - _temporarilyDisabled: %@ - ![PowerUISmartChargeUtilities isOBCSupported]: %@ - ![self isDEoCSupported]: %@", &v11, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cacheCurrentDEoCBehaviorForced:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cacheCurrentDEoCBehaviorForced:(os_log_t)log .cold.4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_21B766000, log, OS_LOG_TYPE_FAULT, "Opting out of DEoC due to unexpected monitor", buf, 2u);
}

- (void)client:setState:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v6 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [v0 stringFromState:1];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(&dword_21B766000, v2, OS_LOG_TYPE_ERROR, "%@ requests state: %@, but the state is not supported!", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)client:(uint64_t)a1 setMCLLimit:(void *)a2 withHandler:(unsigned __int8)a3 .cold.1(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithUnsignedChar:a3];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4_0(&dword_21B766000, v7, v8, "%@ requests MCL limit: %@, but MCL is not supported on this hardware!", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)client:(uint64_t)a1 setMCLLimit:(void *)a2 withHandler:(unsigned __int8)a3 .cold.2(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithUnsignedChar:a3];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4_0(&dword_21B766000, v7, v8, "%@ requests MCL limit: %@, but this number is out of bounds!", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)tmpDisableMCLViaClient:withHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)tmpDisableMCLViaClient:withHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setMCLLimit:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_21B766000, a2, OS_LOG_TYPE_DEBUG, "Charge limit %hhu requested, but is unchanged", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)client:setDEoCState:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_9() numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4_0(&dword_21B766000, v4, v5, "%@ requests DEoC state: %@, but DEoC is not supported on this hardware!", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)client:setCECState:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_9() numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4_0(&dword_21B766000, v4, v5, "%@ requests state: %@, but CEC is not supported on this device!", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)client:setMCMState:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_9() numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_4_0(&dword_21B766000, v4, v5, "%@ requests state: %@, but MCM is not supported on this hardware!", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __60__PowerUISmartChargeManager_accessoryNFCConnectionCallback___block_invoke_2043_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__PowerUISmartChargeManager_accessoryNFCConnectionCallback___block_invoke_2043_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end