@interface HDSPEnvironment
+ (id)_sleepTrackingManagerProviderForBehavior:(id)a3;
+ (id)demoModeEnvironment;
+ (id)disabledEnvironment;
+ (id)standardEnvironment;
- (BOOL)isDemoEnvironment;
- (BOOL)isEnvironmentReady;
- (HDSPEnvironment)initWithBehavior:(id)a3 sleepStorageProvider:(id)a4 sleepScheduleModelManagerProvider:(id)a5 sleepSchedulerProvider:(id)a6 sleepServerProvider:(id)a7 sleepCoordinatorProvider:(id)a8 sleepModeManagerProvider:(id)a9 sleepTrackingManagerProvider:(id)a10 goodMorningAlertManagerProvider:(id)a11 chargingReminderManagerProvider:(id)a12 wakeDetectionManagerProvider:(id)a13 wakeUpResultsNotificationManagerProvider:(id)a14 actionManagerProvider:(id)a15 sleepAlarmManagerProvider:(id)a16 healthStoreProvider:(id)a17 contextStoreManagerProvider:(id)a18 biomeManagerProvider:(id)a19 migrationManagerProvider:(id)a20 notificationManagerProvider:(id)a21 notificationListenerProvider:(id)a22 sleepLockScreenManagerProvider:(id)a23 sleepWidgetManagerProvider:(id)a24 idsServiceManagerProvider:(id)a25 diagnosticsProvider:(id)a26 systemMonitorProvider:(id)a27 assertionManager:(id)a28 timeChangeListenerProvider:(id)a29 sensitiveUIMonitorProvider:(id)a30 analyticsManagerProvider:(id)a31 userDefaults:(id)a32 fileManager:(id)a33 currentDateProvider:(id)a34 defaultCallbackScheduler:(id)a35 mutexGenerator:(id)a36;
- (id)_environmentAwareComponents;
- (id)currentContext;
- (id)currentSource;
- (id)currentState;
- (id)diagnosticDescription;
- (id)diagnosticInfo;
- (void)dealloc;
- (void)environmentDidBecomeReady;
- (void)environmentShouldMigrateData;
- (void)perform:(id)a3 withContext:(id)a4;
- (void)perform:(id)a3 withSource:(id)a4;
- (void)performWhenEnvironmentIsReady:(id)a3 withContext:(id)a4;
- (void)prepare;
- (void)shutdown;
- (void)systemDidBecomeReady;
- (void)updateState;
@end

@implementation HDSPEnvironment

+ (id)standardEnvironment
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v32 = [HDSPEnvironment alloc];
  v4 = [a1 _sleepTrackingManagerProviderForBehavior:v3];
  v5 = [v3 hksp_supportsGoodMorningAlerts];
  v6 = &__block_literal_global_323;
  if (!v5)
  {
    v6 = 0;
  }

  v31 = v6;
  v7 = [v3 hksp_supportsChargingReminders];
  v8 = &__block_literal_global_327_0;
  if (!v7)
  {
    v8 = 0;
  }

  v30 = v8;
  v9 = [v3 hksp_supportsWakeDetection];
  v10 = &__block_literal_global_331_0;
  if (!v9)
  {
    v10 = 0;
  }

  v28 = v10;
  v11 = [v3 hksp_supportsWakeUpResults];
  v12 = &__block_literal_global_335_0;
  if (!v11)
  {
    v12 = 0;
  }

  v27 = v12;
  v13 = [v3 hksp_supportsSleepAlarms];
  v14 = &__block_literal_global_343_0;
  if (!v13)
  {
    v14 = 0;
  }

  v26 = v14;
  v15 = [v3 hksp_supportsHealthData];
  v33 = v4;
  if (v15)
  {
    v29 = [objc_alloc(MEMORY[0x277D62468]) initWithLocalDeviceHealthStore];
  }

  else
  {
    v29 = 0;
  }

  if ([v3 hksp_supportsSleepLockScreen])
  {
    v16 = &__block_literal_global_368_0;
  }

  else
  {
    v16 = 0;
  }

  if ([v3 hksp_supportsSleepWidget])
  {
    v17 = &__block_literal_global_372;
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_alloc_init(HDSPAssertionManager);
  if ([v3 hksp_supportsDailyAnalytics])
  {
    v19 = &__block_literal_global_397;
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x277CBEBD0] hksp_sleepdUserDefaults];
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = HKSPCurrentDateProvider();
  v23 = HKSPUnfairLockGenerator();
  v24 = [(HDSPEnvironment *)v32 initWithBehavior:v3 sleepStorageProvider:&__block_literal_global_4 sleepScheduleModelManagerProvider:&__block_literal_global_303 sleepSchedulerProvider:&__block_literal_global_307_0 sleepServerProvider:&__block_literal_global_311 sleepCoordinatorProvider:&__block_literal_global_315 sleepModeManagerProvider:&__block_literal_global_319 sleepTrackingManagerProvider:v33 goodMorningAlertManagerProvider:v31 chargingReminderManagerProvider:v30 wakeDetectionManagerProvider:v28 wakeUpResultsNotificationManagerProvider:v27 actionManagerProvider:&__block_literal_global_339_0 sleepAlarmManagerProvider:v26 healthStoreProvider:v29 contextStoreManagerProvider:&__block_literal_global_348 biomeManagerProvider:&__block_literal_global_352 migrationManagerProvider:&__block_literal_global_356 notificationManagerProvider:&__block_literal_global_360 notificationListenerProvider:&__block_literal_global_364_0 sleepLockScreenManagerProvider:v16 sleepWidgetManagerProvider:v17 idsServiceManagerProvider:&__block_literal_global_376 diagnosticsProvider:&__block_literal_global_380 systemMonitorProvider:&__block_literal_global_384 assertionManager:v18 timeChangeListenerProvider:&__block_literal_global_389 sensitiveUIMonitorProvider:&__block_literal_global_393 analyticsManagerProvider:v19 userDefaults:v20 fileManager:v21 currentDateProvider:v22 defaultCallbackScheduler:0 mutexGenerator:v23];

  if (v15)
  {
  }

  return v24;
}

HDSPSleepStorage *__38__HDSPEnvironment_standardEnvironment__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepStorage alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepScheduleModelManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepScheduleModelManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepEventScheduler *__38__HDSPEnvironment_standardEnvironment__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepEventScheduler alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepStoreServer *__38__HDSPEnvironment_standardEnvironment__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepStoreServer alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepScheduleStateCoordinator *__38__HDSPEnvironment_standardEnvironment__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepScheduleStateCoordinator alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepModeManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepModeManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPGoodMorningAlertManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPGoodMorningAlertManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPChargingReminderManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPChargingReminderManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPWakeDetectionManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPWakeDetectionManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPWakeUpResultsNotificationManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPWakeUpResultsNotificationManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepActionManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepActionManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepAlarmManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepAlarmManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPContextStoreManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPContextStoreManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPBiomeManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPBiomeManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepScheduleModelMigrationManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepScheduleModelMigrationManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepNotificationManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepNotificationManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPNotificationListener *__38__HDSPEnvironment_standardEnvironment__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPNotificationListener alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepLockScreenManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepLockScreenManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepWidgetManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_19(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepWidgetManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPIDSServiceManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPIDSServiceManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPDiagnostics *__38__HDSPEnvironment_standardEnvironment__block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPDiagnostics alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSystemMonitor *__38__HDSPEnvironment_standardEnvironment__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSystemMonitor alloc] initWithEnvironment:v2];

  return v3;
}

HDSPTimeChangeListener *__38__HDSPEnvironment_standardEnvironment__block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPTimeChangeListener alloc] initWithEnvironment:v2];

  return v3;
}

id __38__HDSPEnvironment_standardEnvironment__block_invoke_24(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D624C8];
  v3 = a2;
  v4 = [[v2 alloc] initWithEnvironment:v3];

  return v4;
}

HDSPAnalyticsManager *__38__HDSPEnvironment_standardEnvironment__block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPAnalyticsManager alloc] initWithEnvironment:v2];

  return v3;
}

+ (id)_sleepTrackingManagerProviderForBehavior:(id)a3
{
  v3 = a3;
  if ([v3 hksp_supportsSleepTracking])
  {
    if ([v3 hksp_supportsAlwaysOnTracking])
    {
      v4 = 0;
    }

    else
    {
      v4 = &__block_literal_global_403;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

HDSPSleepTrackingManager *__60__HDSPEnvironment__sleepTrackingManagerProviderForBehavior___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepTrackingManager alloc] initWithEnvironment:v2];

  return v3;
}

- (HDSPEnvironment)initWithBehavior:(id)a3 sleepStorageProvider:(id)a4 sleepScheduleModelManagerProvider:(id)a5 sleepSchedulerProvider:(id)a6 sleepServerProvider:(id)a7 sleepCoordinatorProvider:(id)a8 sleepModeManagerProvider:(id)a9 sleepTrackingManagerProvider:(id)a10 goodMorningAlertManagerProvider:(id)a11 chargingReminderManagerProvider:(id)a12 wakeDetectionManagerProvider:(id)a13 wakeUpResultsNotificationManagerProvider:(id)a14 actionManagerProvider:(id)a15 sleepAlarmManagerProvider:(id)a16 healthStoreProvider:(id)a17 contextStoreManagerProvider:(id)a18 biomeManagerProvider:(id)a19 migrationManagerProvider:(id)a20 notificationManagerProvider:(id)a21 notificationListenerProvider:(id)a22 sleepLockScreenManagerProvider:(id)a23 sleepWidgetManagerProvider:(id)a24 idsServiceManagerProvider:(id)a25 diagnosticsProvider:(id)a26 systemMonitorProvider:(id)a27 assertionManager:(id)a28 timeChangeListenerProvider:(id)a29 sensitiveUIMonitorProvider:(id)a30 analyticsManagerProvider:(id)a31 userDefaults:(id)a32 fileManager:(id)a33 currentDateProvider:(id)a34 defaultCallbackScheduler:(id)a35 mutexGenerator:(id)a36
{
  v161 = *MEMORY[0x277D85DE8];
  v133 = a3;
  v154 = a4;
  v155 = a5;
  v153 = a6;
  v152 = a7;
  v151 = a8;
  v40 = a9;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v44 = a13;
  v45 = a14;
  v46 = a15;
  v47 = a16;
  v132 = a17;
  v149 = a18;
  v148 = a19;
  v147 = a20;
  v146 = a21;
  v145 = a22;
  v144 = a23;
  v143 = a24;
  v142 = a25;
  v141 = a26;
  v140 = a27;
  v139 = a29;
  v138 = a30;
  v137 = a31;
  v131 = a32;
  v130 = a33;
  v136 = a34;
  v135 = a35;
  v134 = a36;
  v156.receiver = self;
  v156.super_class = HDSPEnvironment;
  v48 = [(HDSPEnvironment *)&v156 init];
  if (v48)
  {
    v126 = v44;
    v129 = v45;
    v49 = v41;
    v50 = v40;
    v51 = HKSPLogForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = objc_opt_class();
      *buf = 138543618;
      v158 = v52;
      v159 = 2048;
      v160 = v48;
      v53 = v52;
      _os_log_impl(&dword_269B11000, v51, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeStrong(&v48->_behavior, a3);
    if (v135)
    {
      v54 = v135;
      defaultCallbackScheduler = v48->_defaultCallbackScheduler;
      v48->_defaultCallbackScheduler = v54;
    }

    else
    {
      defaultCallbackScheduler = HKSPDispatchQueueName();
      v56 = HKSPSerialQueueBackedScheduler();
      v57 = v48->_defaultCallbackScheduler;
      v48->_defaultCallbackScheduler = v56;
    }

    v58 = [v136 copy];
    currentDateProvider = v48->_currentDateProvider;
    v48->_currentDateProvider = v58;

    objc_storeStrong(&v48->_userDefaults, a32);
    objc_storeStrong(&v48->_fileManager, a33);
    v60 = objc_alloc_init(MEMORY[0x277D2C900]);
    environmentIsReady = v48->_environmentIsReady;
    v48->_environmentIsReady = v60;

    v62 = [v134 copy];
    mutexGenerator = v48->_mutexGenerator;
    v48->_mutexGenerator = v62;

    v64 = (*(v48->_mutexGenerator + 2))();
    mutexProvider = v48->_mutexProvider;
    v48->_mutexProvider = v64;

    v66 = v141;
    if (v141)
    {
      v66 = v141[2]();
    }

    v67 = v50;
    diagnostics = v48->_diagnostics;
    v48->_diagnostics = v66;

    [(HDSPDiagnostics *)v48->_diagnostics addProvider:v48];
    v69 = objc_alloc_init(HDSPAssertionManager);
    assertionManager = v48->_assertionManager;
    v48->_assertionManager = v69;

    [(HDSPDiagnostics *)v48->_diagnostics addProvider:v48->_assertionManager];
    v71 = v149;
    if (v149)
    {
      v71 = v149[2](v149, v48);
    }

    contextStoreManager = v48->_contextStoreManager;
    v48->_contextStoreManager = v71;

    v73 = v148;
    if (v148)
    {
      v73 = v148[2](v148, v48);
    }

    biomeManager = v48->_biomeManager;
    v48->_biomeManager = v73;

    v75 = v140;
    if (v140)
    {
      v75 = v140[2]();
    }

    systemMonitor = v48->_systemMonitor;
    v48->_systemMonitor = v75;

    [(HDSPSystemMonitor *)v48->_systemMonitor setDelegate:v48];
    objc_storeStrong(&v48->_healthStoreProvider, a17);
    if (v154)
    {
      v77 = v154[2](v154, v48);
    }

    else
    {
      v77 = 0;
    }

    sleepStorage = v48->_sleepStorage;
    v48->_sleepStorage = v77;

    v79 = v147;
    if (v147)
    {
      v79 = v147[2]();
    }

    migrationManager = v48->_migrationManager;
    v48->_migrationManager = v79;

    if (v155)
    {
      v81 = v155[2](v155, v48);
    }

    else
    {
      v81 = 0;
    }

    sleepScheduleModelManager = v48->_sleepScheduleModelManager;
    v48->_sleepScheduleModelManager = v81;

    if (v153)
    {
      v83 = v153[2](v153, v48);
    }

    else
    {
      v83 = 0;
    }

    sleepScheduler = v48->_sleepScheduler;
    v48->_sleepScheduler = v83;

    if (v151)
    {
      v85 = v151[2](v151, v48);
    }

    else
    {
      v85 = 0;
    }

    sleepCoordinator = v48->_sleepCoordinator;
    v48->_sleepCoordinator = v85;

    if (v50)
    {
      v87 = (*(v50 + 2))(v50, v48);
    }

    else
    {
      v87 = 0;
    }

    sleepModeManager = v48->_sleepModeManager;
    v48->_sleepModeManager = v87;

    if (v49)
    {
      v89 = v49[2](v49, v48);
    }

    else
    {
      v89 = 0;
    }

    sleepTrackingManager = v48->_sleepTrackingManager;
    v48->_sleepTrackingManager = v89;

    if (v42)
    {
      v91 = v42[2](v42, v48);
    }

    else
    {
      v91 = 0;
    }

    goodMorningAlertManager = v48->_goodMorningAlertManager;
    v48->_goodMorningAlertManager = v91;

    if (v43)
    {
      v93 = v43[2](v43, v48);
    }

    else
    {
      v93 = 0;
    }

    chargingReminderManager = v48->_chargingReminderManager;
    v48->_chargingReminderManager = v93;

    if (v129)
    {
      v95 = v129[2](v129, v48);
    }

    else
    {
      v95 = 0;
    }

    wakeUpResultsNotificationManager = v48->_wakeUpResultsNotificationManager;
    v48->_wakeUpResultsNotificationManager = v95;

    if (v126)
    {
      v97 = v126[2](v126, v48);
    }

    else
    {
      v97 = 0;
    }

    wakeDetectionManager = v48->_wakeDetectionManager;
    v48->_wakeDetectionManager = v97;

    v99 = v46;
    if (v46)
    {
      v99 = v46[2]();
    }

    actionManager = v48->_actionManager;
    v48->_actionManager = v99;

    if (v47)
    {
      v101 = v47[2](v47, v48);
    }

    else
    {
      v101 = 0;
    }

    sleepAlarmManager = v48->_sleepAlarmManager;
    v48->_sleepAlarmManager = v101;

    v103 = v146;
    if (v146)
    {
      v103 = v146[2]();
    }

    notificationManager = v48->_notificationManager;
    v48->_notificationManager = v103;

    v105 = v145;
    if (v145)
    {
      v105 = v145[2]();
    }

    notificationListener = v48->_notificationListener;
    v48->_notificationListener = v105;

    v107 = v144;
    if (v144)
    {
      v107 = v144[2]();
    }

    sleepLockScreenManager = v48->_sleepLockScreenManager;
    v48->_sleepLockScreenManager = v107;

    v109 = v143;
    if (v143)
    {
      v109 = v143[2]();
    }

    sleepWidgetManager = v48->_sleepWidgetManager;
    v48->_sleepWidgetManager = v109;

    v111 = v142;
    if (v142)
    {
      v111 = v142[2]();
    }

    idsServiceManager = v48->_idsServiceManager;
    v48->_idsServiceManager = v111;

    if (v152)
    {
      v113 = v152[2](v152, v48);
    }

    else
    {
      v113 = 0;
    }

    sleepServer = v48->_sleepServer;
    v48->_sleepServer = v113;

    [(HDSPSleepStoreServer *)v48->_sleepServer startListening];
    v115 = v139;
    if (v139)
    {
      v115 = v139[2]();
    }

    timeChangeListener = v48->_timeChangeListener;
    v48->_timeChangeListener = v115;

    v117 = v138;
    if (v138)
    {
      v117 = v138[2]();
    }

    v44 = v126;
    sensitiveUIMonitor = v48->_sensitiveUIMonitor;
    v48->_sensitiveUIMonitor = v117;

    v119 = v137;
    v40 = v67;
    v41 = v49;
    if (v137)
    {
      v119 = v137[2]();
    }

    analyticsManager = v48->_analyticsManager;
    v48->_analyticsManager = v119;

    v121 = [[HDSPEnvironmentStateMachine alloc] initWithDelegate:v48 infoProvider:v48];
    stateMachine = v48->_stateMachine;
    v48->_stateMachine = v121;

    v123 = v48;
    v45 = v129;
  }

  v124 = *MEMORY[0x277D85DE8];
  return v48;
}

+ (id)disabledEnvironment
{
  v2 = objc_alloc_init(HDSPDisabledEnvironment);

  return v2;
}

+ (id)demoModeEnvironment
{
  v2 = objc_alloc_init(HDSPDemoModeEnvironment);

  return v2;
}

- (void)dealloc
{
  [(HDSPEnvironment *)self shutdown];
  v3.receiver = self;
  v3.super_class = HDSPEnvironment;
  [(HDSPEnvironment *)&v3 dealloc];
}

- (void)shutdown
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] shutdown", buf, 0xCu);
  }

  v5 = [(HDSPEnvironment *)self _environmentAwareComponents];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__HDSPEnvironment_shutdown__block_invoke;
  v7[3] = &unk_279C7BC00;
  v7[4] = self;
  [v5 na_each:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __27__HDSPEnvironment_shutdown__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 environmentWillInvalidate:*(a1 + 32)];
  }
}

- (void)performWhenEnvironmentIsReady:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    environmentIsReady = self->_environmentIsReady;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__HDSPEnvironment_performWhenEnvironmentIsReady_withContext___block_invoke;
    v10[3] = &unk_279C7BC28;
    objc_copyWeak(&v13, &location);
    v11 = v7;
    v12 = v6;
    v9 = [(NAFuture *)environmentIsReady addSuccessBlock:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __61__HDSPEnvironment_performWhenEnvironmentIsReady_withContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 40);
  v4 = WeakRetained;
  if (*(a1 + 32))
  {
    [WeakRetained perform:v3 withContext:?];
  }

  else
  {
    (*(v3 + 16))(v3);
  }
}

- (void)perform:(id)a3 withSource:(id)a4
{
  v6 = a3;
  v7 = [HDSPEnvironmentContext contextWithSource:a4];
  [(HDSPEnvironment *)self perform:v6 withContext:v7];
}

- (void)perform:(id)a3 withContext:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CCACC8] currentThread];
  v7 = [v6 threadDictionary];

  if (v5)
  {
    v8 = [v7 objectForKeyedSubscript:@"HDSPEnvironmentContext"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v11 = v10;

    [v11 addObject:v5];
    [v7 setObject:v11 forKeyedSubscript:@"HDSPEnvironmentContext"];

    v13[2]();
    v12 = [v7 objectForKeyedSubscript:@"HDSPEnvironmentContext"];
    [v12 removeLastObject];
  }

  else
  {
    v13[2]();
  }
}

- (id)currentContext
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKeyedSubscript:@"HDSPEnvironmentContext"];

  v5 = [v4 lastObject];

  return v5;
}

- (id)currentSource
{
  v2 = [(HDSPEnvironment *)self currentContext];
  v3 = [v2 source];

  return v3;
}

- (void)prepare
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] prepare", &v6, 0xCu);
  }

  [(HDSPEnvironment *)self updateState];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] updateState", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__HDSPEnvironment_updateState__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPEnvironment *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)systemDidBecomeReady
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] systemDidBecomeReady", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__HDSPEnvironment_systemDidBecomeReady__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPEnvironment *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEnvironmentReady
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HDSPEnvironment_isEnvironmentReady__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPEnvironment *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __37__HDSPEnvironment_isEnvironmentReady__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 80) currentState];
  v2 = [*(*(a1 + 32) + 80) readyState];
  *(*(*(a1 + 40) + 8) + 24) = v3 == v2;
}

- (void)environmentShouldMigrateData
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] environment needs migration", buf, 0xCu);
  }

  v5 = [(HDSPSleepScheduleModelMigrationManager *)self->_migrationManager performDataMigration];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HDSPEnvironment_environmentShouldMigrateData__block_invoke;
  v8[3] = &unk_279C7BC50;
  v8[4] = self;
  v6 = [v5 addCompletionBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __47__HDSPEnvironment_environmentShouldMigrateData__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = v4;
    v7 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] dataMigrationDidComplete (error: %{public}@))", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__HDSPEnvironment_environmentShouldMigrateData__block_invoke_422;
  v10[3] = &unk_279C7B108;
  v10[4] = v8;
  [v8 _withLock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_environmentAwareComponents
{
  v3 = objc_opt_new();
  [v3 na_safeAddObject:self->_sleepStorage];
  [v3 na_safeAddObject:self->_sleepScheduleModelManager];
  [v3 na_safeAddObject:self->_migrationManager];
  [v3 na_safeAddObject:self->_actionManager];
  [v3 na_safeAddObject:self->_sleepServer];
  [v3 na_safeAddObject:self->_sleepAlarmManager];
  [v3 na_safeAddObject:self->_sleepTrackingManager];
  [v3 na_safeAddObject:self->_chargingReminderManager];
  [v3 na_safeAddObject:self->_wakeUpResultsNotificationManager];
  [v3 na_safeAddObject:self->_goodMorningAlertManager];
  [v3 na_safeAddObject:self->_wakeDetectionManager];
  [v3 na_safeAddObject:self->_sleepCoordinator];
  [v3 na_safeAddObject:self->_contextStoreManager];
  [v3 na_safeAddObject:self->_biomeManager];
  [v3 na_safeAddObject:self->_sleepModeManager];
  [v3 na_safeAddObject:self->_sleepScheduler];
  [v3 na_safeAddObject:self->_systemMonitor];
  [v3 na_safeAddObject:self->_notificationManager];
  [v3 na_safeAddObject:self->_diagnostics];
  [v3 na_safeAddObject:self->_timeChangeListener];
  [v3 na_safeAddObject:self->_notificationListener];
  [v3 na_safeAddObject:self->_sleepLockScreenManager];
  [v3 na_safeAddObject:self->_sleepWidgetManager];
  [v3 na_safeAddObject:self->_idsServiceManager];
  [v3 na_safeAddObject:self->_analyticsManager];
  v4 = [v3 copy];

  return v4;
}

- (void)environmentDidBecomeReady
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HDSPEnvironment *)self _environmentAwareComponents];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HDSPEnvironment_environmentDidBecomeReady__block_invoke;
  v9[3] = &unk_279C7BC00;
  v9[4] = self;
  [v3 na_each:v9];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    *buf = 138543362;
    v11 = v5;
    v6 = v5;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] environment is ready", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HDSPEnvironment_environmentDidBecomeReady__block_invoke_426;
  v8[3] = &unk_279C7BC00;
  v8[4] = self;
  [v3 na_each:v8];
  [(NAFuture *)self->_environmentIsReady finishWithNoResult];

  v7 = *MEMORY[0x277D85DE8];
}

void __44__HDSPEnvironment_environmentDidBecomeReady__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 environmentWillBecomeReady:*(a1 + 32)];
  }
}

void __44__HDSPEnvironment_environmentDidBecomeReady__block_invoke_426(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 environmentDidBecomeReady:*(a1 + 32)];
  }
}

- (BOOL)isDemoEnvironment
{
  v2 = [(HDSPEnvironment *)self behavior];
  v3 = [v2 hksp_demoMode];

  return v3;
}

- (id)currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__6;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__HDSPEnvironment_currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPEnvironment *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __31__HDSPEnvironment_currentState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) currentState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HDSPEnvironment *)self currentState];
  v7 = [v3 stringWithFormat:@"(%@) Current State: %@, System Ready: %d, Environment Ready: %d", v5, v6, -[HDSPEnvironment isSystemReady](self, "isSystemReady"), -[HDSPEnvironment isEnvironmentReady](self, "isEnvironmentReady")];

  return v7;
}

- (id)diagnosticInfo
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"Environment";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v15[0] = v4;
  v14[1] = @"Current State";
  v5 = [(HDSPEnvironment *)self currentState];
  v6 = [v5 stateName];
  v7 = v6;
  v8 = @"none";
  if (v6)
  {
    v8 = v6;
  }

  v15[1] = v8;
  v14[2] = @"System Ready";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDSPEnvironment isSystemReady](self, "isSystemReady")}];
  v15[2] = v9;
  v14[3] = @"Environment Ready";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDSPEnvironment isEnvironmentReady](self, "isEnvironmentReady")}];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end