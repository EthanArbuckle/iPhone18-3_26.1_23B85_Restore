@interface PowerUIAudioAccessorySmartChargeManager
+ (id)readArrayForPreferenceKey:(id)a3;
+ (id)readNumberForPreferenceKeyPrefix:(id)a3 andDevice:(id)a4;
+ (id)readStringForPreferenceKeyPrefix:(id)a3 andDevice:(id)a4;
+ (void)setNumber:(id)a3 forPreferenceKeyPrefix:(id)a4 andDevice:(id)a5;
+ (void)setString:(id)a3 forPreferenceKeyPrefix:(id)a4 andDevice:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)runUpdateForDevice:(BTDeviceImpl *)a3 withHash:(id)a4 asInitialUpdate:(BOOL)a5;
- (BOOL)setOBCState:(BOOL)a3 forDevice:(id)a4;
- (BOOL)setStateViaV2Protocol:(unint64_t)a3 forDevice:(BTDeviceImpl *)a4;
- (PowerUIAudioAccessorySmartChargeManager)init;
- (id)defaultDateToDisableUntilGivenDate:(id)a3;
- (id)firstUseNotificationRequestForDeviceType:(unsigned int)a3;
- (id)getOBCDeadlineFromCBDevice:(id)a3;
- (id)nameForProductID:(unsigned int)a3;
- (id)returnAccessoryStatusForDevice:(id)a3;
- (id)stringFromState:(unint64_t)a3;
- (void)addTimeSeriesDataToStream:(timeSeriesData *)a3 withSide:(unsigned __int8)a4 withFirmwareVersion:(unsigned __int16)a5 withLog:(id)a6;
- (void)clearLastActionForDevice:(id)a3;
- (void)client:(id)a3 connectAndDisableOBCforDevice:(id)a4 withHandler:(id)a5;
- (void)client:(id)a3 setState:(unint64_t)a4 forDevice:(id)a5 withHandler:(id)a6;
- (void)client:(id)a3 updateOBCDeadline:(id)a4 forDevice:(id)a5 withHandler:(id)a6;
- (void)currentLeewayWithHandler:(id)a3;
- (void)deleteRecordsForDevices:(id)a3;
- (void)engageUntil:(id)a3 forDevice:(id)a4 overrideAllSignals:(BOOL)a5 withHandler:(id)a6;
- (void)fakeConnectionForDevice:(id)a3;
- (void)fullChargeDeadlineForDevice:(id)a3 withHandler:(id)a4;
- (void)getAvailableDevicesWithHandler:(id)a3;
- (void)getStatusForDevice:(id)a3 withHandler:(id)a4;
- (void)isSmartChargingCurrentlyEnabledForDevice:(id)a3 withHandler:(id)a4;
- (void)lastActionForDevice:(id)a3 withHandler:(id)a4;
- (void)monitor:(id)a3 maySuggestNewFullChargeDeadline:(id)a4;
- (void)persistentlyHandleSeeingDevice:(id)a3;
- (void)persistentlySetExpectedHash:(id)a3 forDevice:(id)a4;
- (void)persistentlySetLastSentDate:(id)a3 forDevice:(id)a4;
- (void)persistentlySetLastTimeseriesDate:(id)a3 forDevice:(id)a4;
- (void)persistentlySetLastUnderchargeRecordedForPrediction:(id)a3 forDevice:(id)a4;
- (void)recordBudMetricsLocallyForDevice:(id)a3 withTimeSpendAtLowerSoC:(unsigned __int16)a4 timeSpentAtHigherSoC:(unsigned __int16)a5 engagementEventsSinceLastReport:(unsigned __int8)a6 underchargeEventsSinceLastReport:(unsigned __int8)a7 chargingEventsSinceLastReport:(unsigned __int8)a8 budSocAtLastEngagement:(unsigned __int8)a9 successRatio:(unsigned __int16)a10;
- (void)reportDailyMetrics;
- (void)setTemporarilyDisabled:(BOOL)a3 until:(id)a4 forDevice:(id)a5;
- (void)startMockingBluetoothForFakeDevice:(id)a3;
- (void)stopMockingBluetooth;
- (void)timeSeriesForDevice:(id)a3;
- (void)unfilteredDeadlineForDevice:(id)a3 withHandler:(id)a4;
@end

@implementation PowerUIAudioAccessorySmartChargeManager

- (PowerUIAudioAccessorySmartChargeManager)init
{
  v139 = *MEMORY[0x277D85DE8];
  v133.receiver = self;
  v133.super_class = PowerUIAudioAccessorySmartChargeManager;
  v2 = [(PowerUIAudioAccessorySmartChargeManager *)&v133 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.smartcharging.AudioAccessory", "main");
    accessoryLog = v2->_accessoryLog;
    v2->_accessoryLog = v3;

    v5 = v2->_accessoryLog;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "PowerUIAudioAccessorySmartChargeManager initializing...", buf, 2u);
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.PowerUIAgent.btQueue", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    latestAnalyticsForDevice = v2->_latestAnalyticsForDevice;
    v2->_latestAnalyticsForDevice = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    deviceArrayLock = v2->_deviceArrayLock;
    v2->_deviceArrayLock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoryStates = v2->_accessoryStates;
    v2->_accessoryStates = v13;

    v15 = [PowerUIAudioAccessorySmartChargeManager readArrayForPreferenceKey:@"com.apple.smartcharging.audioaccessories.deviceArray"];
    deviceArray = v2->_deviceArray;
    v2->_deviceArray = v15;

    v17 = v2;
    if (!v2->_deviceArray)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19 = v2->_deviceArray;
      v2->_deviceArray = v18;

      v20 = v2->_accessoryLog;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "No deviceArray loaded, set up new", buf, 2u);
      }
    }

    v21 = v2->_accessoryLog;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v2->_deviceArray;
      v23 = v21;
      v24 = [(NSMutableArray *)v22 count];
      *buf = 134217984;
      v135 = v24;
      _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "Device array with %lu entries was loaded", buf, 0xCu);
    }

    v110 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    obj = v17->_deviceArray;
    v25 = v17;
    v26 = 0x2782D3000uLL;
    v112 = [(NSMutableArray *)obj countByEnumeratingWithState:&v129 objects:v138 count:16];
    if (v112)
    {
      v111 = *v130;
      *&v27 = 138412546;
      v108 = v27;
      v115 = v25;
      do
      {
        for (i = 0; i != v112; ++i)
        {
          if (*v130 != v111)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v129 + 1) + 8 * i);
          v30 = objc_alloc_init(PowerUIAccessoryStatus);
          v31 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.currentState." andDevice:v29];
          if (!v31)
          {
            v32 = v25->_accessoryLog;
            v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
            v31 = &unk_282D4E530;
            if (v33)
            {
              *buf = 138412290;
              v135 = v29;
              _os_log_error_impl(&dword_21B766000, v32, OS_LOG_TYPE_ERROR, "ERROR: No proper value stored for 'currentState' for device '%@'", buf, 0xCu);
              v31 = &unk_282D4E530;
            }
          }

          v114 = v31;
          -[PowerUIAccessoryStatus setCurrentState:](v30, "setCurrentState:", [v31 unsignedIntegerValue]);
          v34 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.enabled." andDevice:v29];
          if (!v34)
          {
            v35 = v25->_accessoryLog;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v135 = v29;
              _os_log_error_impl(&dword_21B766000, v35, OS_LOG_TYPE_ERROR, "ERROR: No proper value stored for 'enabled' for device '%@'", buf, 0xCu);
            }

            v34 = [MEMORY[0x277CCABB0] numberWithBool:1];
          }

          -[PowerUIAccessoryStatus setEnabled:](v30, "setEnabled:", [v34 BOOLValue]);
          v36 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.disabledUntilDate." andDevice:v29];
          v113 = v36;
          if (v36)
          {
            v37 = MEMORY[0x277CBEAA8];
            [v36 doubleValue];
            v38 = [v37 dateWithTimeIntervalSinceReferenceDate:?];
            [v38 timeIntervalSinceNow];
            if (v39 >= 0.0)
            {
              v40 = v39;
              [(PowerUIAccessoryStatus *)v30 setDisabledUntilDate:v38];
              [(PowerUIAccessoryStatus *)v30 setTemporarilyDisabled:1];
              v41 = dispatch_walltime(0, (v40 * 1000000000.0));
              v42 = v115->_queue;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke;
              block[3] = &unk_2782D4AC0;
              v127 = v115;
              v128 = v29;
              v43 = v42;
              v25 = v115;
              dispatch_after(v41, v43, block);
              v44 = v115->_accessoryLog;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v108;
                v135 = v29;
                v136 = 2048;
                v137 = v40 / 60.0;
                _os_log_impl(&dword_21B766000, v44, OS_LOG_TYPE_DEFAULT, "PowerUI restart: Re-enable device '%@' in %f minutes", buf, 0x16u);
              }
            }

            else
            {
              [(PowerUIAccessoryStatus *)v30 setDisabledUntilDate:0];
              [(PowerUIAccessoryStatus *)v30 setTemporarilyDisabled:0];
            }
          }

          else
          {
            [(PowerUIAccessoryStatus *)v30 setDisabledUntilDate:0];
            [(PowerUIAccessoryStatus *)v30 setTemporarilyDisabled:0];
          }

          v45 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastSentDate." andDevice:v29];
          v46 = v45;
          if (v45)
          {
            v47 = MEMORY[0x277CBEAA8];
            [v45 doubleValue];
            v48 = [v47 dateWithTimeIntervalSinceReferenceDate:?];
            [(PowerUIAccessoryStatus *)v30 setLastSentDate:v48];
          }

          else
          {
            [(PowerUIAccessoryStatus *)v30 setLastSentDate:0];
          }

          v49 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastSeenDate." andDevice:v29];
          v50 = v49;
          if (!v49)
          {
            [(PowerUIAccessoryStatus *)v30 setLastSeenDate:0];
LABEL_36:
            [v110 addObject:v29];
            goto LABEL_37;
          }

          v51 = MEMORY[0x277CBEAA8];
          [v49 doubleValue];
          v52 = [v51 dateWithTimeIntervalSinceReferenceDate:?];
          [(PowerUIAccessoryStatus *)v30 setLastSeenDate:v52];

          v53 = [MEMORY[0x277CBEAA8] date];
          v54 = [(PowerUIAccessoryStatus *)v30 lastSeenDate];
          [v53 timeIntervalSinceDate:v54];
          v56 = v55;

          v25 = v115;
          if (v56 > 2592000.0)
          {
            goto LABEL_36;
          }

LABEL_37:
          v57 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastTimeseriesDate." andDevice:v29];
          v58 = v57;
          v59 = MEMORY[0x277CBEAA8];
          if (v57)
          {
            [v57 doubleValue];
            [v59 dateWithTimeIntervalSinceReferenceDate:?];
          }

          else
          {
            [MEMORY[0x277CBEAA8] distantPast];
          }
          v60 = ;
          [(PowerUIAccessoryStatus *)v30 setLastTimeseriesDate:v60];

          v61 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastUnderchargeRecordedForPrediction." andDevice:v29];
          v62 = v61;
          if (v61)
          {
            v63 = MEMORY[0x277CBEAA8];
            [v61 doubleValue];
            v64 = [v63 dateWithTimeIntervalSinceReferenceDate:?];
            [(PowerUIAccessoryStatus *)v30 setLastUnderchargeRecordedForPrediction:v64];
          }

          else
          {
            [(PowerUIAccessoryStatus *)v30 setLastUnderchargeRecordedForPrediction:0];
          }

          v65 = [PowerUIAudioAccessorySmartChargeManager readStringForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.expectedHash." andDevice:v29];
          if (v65)
          {
            v66 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v65];
          }

          else
          {
            v67 = v25->_accessoryLog;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v135 = v29;
              _os_log_impl(&dword_21B766000, v67, OS_LOG_TYPE_DEFAULT, "No proper value stored for 'expectedHash' for device '%@'", buf, 0xCu);
            }

            v66 = objc_alloc_init(MEMORY[0x277CCAD78]);
          }

          v68 = v66;
          [(PowerUIAccessoryStatus *)v30 setExpectedHash:v66];

          v25 = v115;
          [(NSMutableDictionary *)v115->_accessoryStates setObject:v30 forKey:v29];

          v26 = 0x2782D3000;
        }

        v112 = [(NSMutableArray *)obj countByEnumeratingWithState:&v129 objects:v138 count:16];
      }

      while (v112);
    }

    v69 = v25->_accessoryLog;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = v25->_accessoryStates;
      v71 = v69;
      v72 = [(NSMutableDictionary *)v70 count];
      v73 = COERCE_DOUBLE([v110 count]);
      *buf = 134218240;
      v135 = v72;
      v136 = 2048;
      v137 = v73;
      _os_log_impl(&dword_21B766000, v71, OS_LOG_TYPE_DEFAULT, "AccessoryStates dict with %lu entries was loaded, %lu devices are old", buf, 0x16u);
    }

    [(PowerUIAudioAccessorySmartChargeManager *)v25 deleteRecordsForDevices:v110];
    v74 = objc_alloc_init(PowerUIMLAudioAccessoryModelPredictor);
    predictor = v25->_predictor;
    v25->_predictor = v74;

    [(PowerUIAudioAccessorySmartChargeManager *)v25 attachToBluetoothSession];
    v76 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.powerui.audioAccessorySmartChargeManager"];
    listener = v25->_listener;
    v25->_listener = v76;

    [(NSXPCListener *)v25->_listener setDelegate:v25];
    [(NSXPCListener *)v25->_listener resume];
    v78 = [MEMORY[0x277CCA9A0] defaultCenter];
    notificationCenter = v25->_notificationCenter;
    v25->_notificationCenter = v78;

    v80 = dispatch_semaphore_create(0);
    btConnectionSemaphore = v25->_btConnectionSemaphore;
    v25->_btConnectionSemaphore = v80;

    v82 = [PowerUIWalletSignalMonitor monitorWithDelegate:v25];
    walletMonitor = v25->_walletMonitor;
    v25->_walletMonitor = v82;

    v84 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.smartcharging.audioaccessories.hardcodedTimeDeltaInSeconds" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    hardcodedTimeDelta = v25->_hardcodedTimeDelta;
    v25->_hardcodedTimeDelta = v84;

    v86 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.smartcharging.audioaccessories.hardcodedTimeBetweenUpdatesInSeconds" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    hardcodedTimeBetweenUpdates = v25->_hardcodedTimeBetweenUpdates;
    v25->_hardcodedTimeBetweenUpdates = v86;

    v88 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"firstNoteDisplayed" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    v25->_firstNotificationDisplayed = [v88 BOOLValue];

    v89 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.smartcharging.audioaccessories.budSideToRecord" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    budSideToRecord = v25->_budSideToRecord;
    v25->_budSideToRecord = v89;

    if (!v25->_budSideToRecord)
    {
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random_uniform(2u) + 1];
      v92 = v25->_budSideToRecord;
      v25->_budSideToRecord = v91;

      [PowerUISmartChargeUtilities setNumber:v25->_budSideToRecord forPreferenceKey:@"com.apple.smartcharging.audioaccessories.budSideToRecord" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    }

    v93 = *MEMORY[0x277D86238];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_291;
    handler[3] = &unk_2782D48D8;
    v94 = v25;
    v125 = v94;
    xpc_activity_register("com.apple.poweruiagent.audioAccessoriesDailyMetrics", v93, handler);
    v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
    acceptMessageFromRightBudForDevice = v94->_acceptMessageFromRightBudForDevice;
    v94->_acceptMessageFromRightBudForDevice = v95;

    v97 = objc_alloc_init(MEMORY[0x277CBEB38]);
    acceptMessageFromLeftBudForDevice = v94->_acceptMessageFromLeftBudForDevice;
    v94->_acceptMessageFromLeftBudForDevice = v97;

    v99 = objc_alloc_init(PowerUIBluetoothHandler);
    btHandler = v94->_btHandler;
    v94->_btHandler = v99;

    *buf = 0;
    v101 = v25->_queue;
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_295;
    v122[3] = &unk_2782D3E60;
    v102 = v94;
    v123 = v102;
    notify_register_dispatch("com.apple.powerui.audioAccessoryFirstUseNote", buf, v101, v122);
    out_token = 0;
    v103 = v25->_queue;
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_299;
    v119[3] = &unk_2782D3E60;
    v104 = v102;
    v120 = v104;
    notify_register_dispatch("com.apple.powerui.startBTScan", &out_token, v103, v119);
    v118 = 0;
    v105 = v25->_queue;
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_307;
    v116[3] = &unk_2782D3E60;
    v117 = v104;
    notify_register_dispatch("com.apple.powerui.stopBTScan", &v118, v105, v116);

    v2 = v25;
  }

  v106 = *MEMORY[0x277D85DE8];
  return v2;
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_291(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v5 = *(a1 + 32);

    [v5 reportDailyMetrics];
  }

  else if (!state)
  {
    v4 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Daily metrics checking in!", v6, 2u);
    }
  }
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_295(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "First use note was called", v6, 2u);
  }

  v3 = +[PowerUINotificationManager sharedInstance];
  v4 = [*(a1 + 32) firstUseNotificationRequestForDeviceType:8206];
  v5 = [v3 postNotificationWithRequest:v4];
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_299(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "startBTScan was called", buf, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x277CBE030]);
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  *(v4 + 152) = v3;

  [*(*(a1 + 32) + 152) setDiscoveryFlags:0x20000000];
  objc_initWeak(&location, *(a1 + 32));
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_301;
  v24[3] = &unk_2782D4AE8;
  objc_copyWeak(&v25, &location);
  [*(*(a1 + 32) + 152) setDeviceFoundHandler:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_303;
  v22[3] = &unk_2782D4AE8;
  objc_copyWeak(&v23, &location);
  [*(*(a1 + 32) + 152) setDeviceLostHandler:v22];
  v6 = *(a1 + 32);
  v7 = v6[19];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_304;
  v20[3] = &unk_2782D4160;
  v21 = v6;
  [v7 activateWithCompletion:v20];
  [MEMORY[0x277CBE030] devicesWithDiscoveryFlags:0x20000000 error:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v8 = v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v29 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = *(*(a1 + 32) + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 identifier];
          *buf = 138412290;
          v28 = v14;
          _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "device array: %@", buf, 0xCu);
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v29 count:16];
    }

    while (v9);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  v15 = *MEMORY[0x277D85DE8];
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_301(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessoryLog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 identifier];
    v7 = MEMORY[0x277CCABB0];
    [v3 accessoryStatusOBCTime];
    v8 = [v7 numberWithDouble:?];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Device found: %@ - Reported time interval: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_303(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessoryLog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 stableIdentifier];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Device lost: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_304(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Error: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_307(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "stopBTScan was called", v4, 2u);
  }

  return [*(*(a1 + 32) + 152) invalidate];
}

- (id)returnAccessoryStatusForDevice:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_accessoryStates objectForKey:v4];
    if (!v5)
    {
      v5 = objc_alloc_init(PowerUIAccessoryStatus);
      [(NSMutableDictionary *)self->_accessoryStates setObject:v5 forKey:v4];
      v6 = [(PowerUIAccessoryStatus *)v5 currentState];
      v7 = [(PowerUIAccessoryStatus *)v5 enabled];
      v8 = [(PowerUIAccessoryStatus *)v5 disabledUntilDate];
      [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:v4 withCurrentState:v6 withEnabled:v7 withDisabledUntilDate:v8 withTemporarilyDisabled:[(PowerUIAccessoryStatus *)v5 temporarilyDisabled]];

      [(NSLock *)self->_deviceArrayLock lock];
      [(NSMutableArray *)self->_deviceArray addObject:v4];
      [PowerUIAudioAccessorySmartChargeManager setArray:self->_deviceArray forPreferenceKey:@"com.apple.smartcharging.audioaccessories.deviceArray"];
      accessoryLog = self->_accessoryLog;
      if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Add new device '%@' to deviceArray", &v12, 0xCu);
      }

      [(NSLock *)self->_deviceArrayLock unlock];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager returnAccessoryStatusForDevice:];
    }

    v5 = objc_alloc_init(PowerUIAccessoryStatus);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)addTimeSeriesDataToStream:(timeSeriesData *)a3 withSide:(unsigned __int8)a4 withFirmwareVersion:(unsigned __int16)a5 withLog:(id)a6
{
  v47 = a5;
  v6 = a4;
  v61 = *MEMORY[0x277D85DE8];
  v8 = a6;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v49 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
  v9 = BiomeLibrary();
  v10 = [v9 Device];
  v11 = [v10 Charging];
  v12 = [v11 AccessoryChargingSession];
  v13 = [v12 publisherWithOptions:v49];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke;
  v53[3] = &__block_descriptor_33_e22_B16__0__BMStoreEvent_8l;
  v54 = v6;
  v14 = [v13 filterWithIsIncluded:v53];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_2;
  v51[3] = &unk_2782D3E10;
  v15 = v8;
  v52 = v15;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_329;
  v50[3] = &unk_2782D4350;
  v50[4] = &v55;
  v16 = [v14 sinkWithCompletion:v51 shouldContinue:v50];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = v56[3];
    *buf = 134218240;
    *v60 = v17;
    *&v60[8] = 1024;
    *&v60[10] = v6;
    _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_INFO, "Previous end date set to %llu from previous record for bud side: %hhu.", buf, 0x12u);
  }

  v48 = 0;
  v18 = 0;
  v19 = v6 == 2;
  if (v6 == 1)
  {
    v19 = 2;
  }

  v46 = v19;
  while (1)
  {
    v20 = &a3[v18];
    if (!v20->var1)
    {
      break;
    }

    if (v20->var2 && (v21 = v18 + 1, v22 = &a3[v18 + 1], v22->var2))
    {
      if (v20->var1 == 1)
      {
        if (v22->var1 == 2)
        {
          if (v22->var0 >= v20->var0)
          {
            if (v56[3] > v20->var0)
            {
              v29 = v15;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v56[3]];
                *buf = 67109378;
                *v60 = v18;
                *&v60[4] = 2112;
                *&v60[6] = v30;
                _os_log_impl(&dword_21B766000, v29, OS_LOG_TYPE_INFO, "Skipping event at i == %d because startDate is earlier than previous end date (%@)", buf, 0x12u);
              }

              goto LABEL_23;
            }

            if (v22->var0 - v20->var0 < 0x278D01)
            {
              v31 = objc_alloc(MEMORY[0x277CF1080]);
              v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v47];
              v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20->var0];
              v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22->var0];
              v35 = [v31 initWithProductID:&unk_282D4E578 firmwareVersion:v32 startTimestamp:v33 endTimestamp:v34 side:v46];

              v36 = BiomeLibrary();
              v37 = [v36 Device];
              v38 = [v37 Charging];
              v39 = [v38 AccessoryChargingSession];
              v40 = [v39 source];
              [v40 sendEvent:v35];

              ++v48;
              v18 = v21;
              goto LABEL_23;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *v60 = v18;
              v23 = v15;
              v24 = "Skipping event at i == %d because charge duration was longer than 30 days";
LABEL_16:
              v25 = 8;
LABEL_22:
              _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_INFO, v24, buf, v25);
            }
          }

          else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *v60 = v18;
            v23 = v15;
            v24 = "Skipping event at i == %d because startDate is later than endDate";
            goto LABEL_16;
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          var1 = v20->var1;
          *buf = 67109376;
          *v60 = v18;
          *&v60[4] = 1024;
          *&v60[6] = var1;
          v23 = v15;
          v24 = "Skipping event at i == %d because event data at i+1 is %hhu (!= 2).";
          goto LABEL_21;
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v26 = v20->var1;
        *buf = 67109376;
        *v60 = v18;
        *&v60[4] = 1024;
        *&v60[6] = v26;
        v23 = v15;
        v24 = "Skipping event at i == %d because event data is %hhu (!= 1).";
LABEL_21:
        v25 = 14;
        goto LABEL_22;
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v60 = v18;
      v23 = v15;
      v24 = "Skipping event at i == %d because 'offset' is FALSE for i or i+1.";
      goto LABEL_16;
    }

LABEL_23:
    if (v18++ >= 0x60)
    {
      goto LABEL_36;
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v60 = v18;
    _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_INFO, "Reached end of records at i == %d", buf, 8u);
  }

LABEL_36:
  v41 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v48 < 1)
  {
    if (v41)
    {
      *buf = 0;
      v42 = "No valid charging time series events found for accessory.";
      v43 = v15;
      v44 = 2;
LABEL_41:
      _os_log_impl(&dword_21B766000, v43, OS_LOG_TYPE_INFO, v42, buf, v44);
    }
  }

  else if (v41)
  {
    *buf = 67109120;
    *v60 = v48;
    v42 = "Saved %d charging time series events to stream.";
    v43 = v15;
    v44 = 8;
    goto LABEL_41;
  }

  _Block_object_dispose(&v55, 8);
  v45 = *MEMORY[0x277D85DE8];
}

uint64_t __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  if ([v4 side] == 1)
  {
    v5 = *(a1 + 32);

    if (v5 == 2)
    {
      v6 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v7 = [v3 eventBody];
  if ([v7 side] == 2)
  {
    v6 = *(a1 + 32);

    if (v6 == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v6 = 0;
LABEL_10:

  return v6;
}

void __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_2_cold_1(v4, v3);
    }
  }
}

uint64_t __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_329(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  [v3 endTimestamp];
  *(*(*(a1 + 32) + 8) + 24) = v4;

  return 0;
}

- (void)recordBudMetricsLocallyForDevice:(id)a3 withTimeSpendAtLowerSoC:(unsigned __int16)a4 timeSpentAtHigherSoC:(unsigned __int16)a5 engagementEventsSinceLastReport:(unsigned __int8)a6 underchargeEventsSinceLastReport:(unsigned __int8)a7 chargingEventsSinceLastReport:(unsigned __int8)a8 budSocAtLastEngagement:(unsigned __int8)a9 successRatio:(unsigned __int16)a10
{
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v44 = a4;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.budMetrics", a3];
  v11 = MEMORY[0x277CBEB38];
  v49 = v10;
  v12 = [PowerUISmartChargeUtilities readDictForPreferenceKey:"readDictForPreferenceKey:inDomain:" inDomain:?];
  v13 = [v11 dictionaryWithDictionary:v12];

  v14 = 4;
  do
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.timeSpentAtLowerSoC", v14];
    v16 = [v13 objectForKeyedSubscript:v15];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.timeSpentAtLowerSoC", (v14 + 1)];
    [v13 setObject:v16 forKeyedSubscript:v17];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.timeSpentAtHigherSoC", v14];
    v19 = [v13 objectForKeyedSubscript:v18];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.timeSpentAtHigherSoC", (v14 + 1)];
    [v13 setObject:v19 forKeyedSubscript:v20];

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.engagementEventsSinceLastReport", v14];
    v22 = [v13 objectForKeyedSubscript:v21];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.engagementEventsSinceLastReport", (v14 + 1)];
    [v13 setObject:v22 forKeyedSubscript:v23];

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.underchargeEventsSinceLastReport", v14];
    v25 = [v13 objectForKeyedSubscript:v24];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.underchargeEventsSinceLastReport", (v14 + 1)];
    [v13 setObject:v25 forKeyedSubscript:v26];

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.chargingEventsSinceLastReport", v14];
    v28 = [v13 objectForKeyedSubscript:v27];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.chargingEventsSinceLastReport", (v14 + 1)];
    [v13 setObject:v28 forKeyedSubscript:v29];

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.budSocAtLastEngagement", v14];
    v31 = [v13 objectForKeyedSubscript:v30];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.budSocAtLastEngagement", (v14 + 1)];
    [v13 setObject:v31 forKeyedSubscript:v32];

    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.successRatio", v14];
    v34 = [v13 objectForKeyedSubscript:v33];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.successRatio", (v14 + 1)];
    [v13 setObject:v34 forKeyedSubscript:v35];

    v36 = v14 != 0;
    v14 = (v14 - 1);
  }

  while (v14 != 0 && v36);
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
  [v13 setObject:v37 forKeyedSubscript:@"1.timeSpentAtLowerSoC"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v45];
  [v13 setObject:v38 forKeyedSubscript:@"1.timeSpentAtHigherSoC"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v46];
  [v13 setObject:v39 forKeyedSubscript:@"1.engagementEventsSinceLastReport"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v47];
  [v13 setObject:v40 forKeyedSubscript:@"1.underchargeEventsSinceLastReport"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v48];
  [v13 setObject:v41 forKeyedSubscript:@"1.chargingEventsSinceLastReport"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a9];
  [v13 setObject:v42 forKeyedSubscript:@"1.budSocAtLastEngagement"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a10];
  [v13 setObject:v43 forKeyedSubscript:@"1.successRatio"];

  [PowerUISmartChargeUtilities setDict:v13 forPreferenceKey:v49 inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
}

- (BOOL)runUpdateForDevice:(BTDeviceImpl *)a3 withHash:(id)a4 asInitialUpdate:(BOOL)a5
{
  v5 = a5;
  v117 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (a3)
  {
    v9 = os_transaction_create();
    hardcodedTimeDelta = self->_hardcodedTimeDelta;
    v11 = [(PowerUIBluetoothHandler *)self->_btHandler getAddressStringForDevice:a3];
    v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v11];
    v13 = v12;
    if (v8)
    {
      v14 = [v12 expectedHash];

      if (v14 != v8)
      {
        accessoryLog = self->_accessoryLog;
        LOBYTE(a3) = 0;
        if (!os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
        {
LABEL_37:

          goto LABEL_38;
        }

        *buf = 138412290;
        v114 = *&v8;
        _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "runUpdate hash '%@' does not match, this message must be old.", buf, 0xCu);
LABEL_16:
        LOBYTE(a3) = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v17 = self->_accessoryLog;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "runUpdate called without hash, proceed.", buf, 2u);
      }
    }

    if (![(PowerUIBluetoothHandler *)self->_btHandler isDeviceConnected:a3 forSession:self->_session])
    {
      v22 = self->_accessoryLog;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v114 = *&v11;
        _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Device with address '%@' is not connected to AACP, do not run OBC update.", buf, 0xCu);
      }

      [v13 setManagerState:4];
      goto LABEL_16;
    }

    v109 = v9;
    v18 = [(PowerUIWalletSignalMonitor *)self->_walletMonitor requiredFullChargeDate];
    v108 = v18;
    if (v18)
    {
      v19 = v18;
      v20 = [MEMORY[0x277CBEAA8] distantPast];
      v21 = [v19 isEqualToDate:v20];
    }

    else
    {
      v21 = 0;
    }

    v23 = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
    v24 = [v23 protocolForDevice:a3];

    if (v24 == 3)
    {
      if (v21)
      {
        v25 = self->_accessoryLog;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "A boarding pass was found within 24 hours, temporarily disable OBC via v2 protocol", buf, 2u);
        }

        LOBYTE(a3) = [(PowerUIAudioAccessorySmartChargeManager *)self setStateViaV2Protocol:3 forDevice:a3];
      }

      else
      {
        LOBYTE(a3) = 1;
      }

      goto LABEL_36;
    }

    if ([v13 temporarilyDisabled])
    {
      v26 = self->_accessoryLog;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v114 = *&v11;
        v27 = "Device with address '%@' has OBC temporarily disabled, do not run OBC update.";
LABEL_34:
        _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    if (([v13 enabled] & 1) == 0)
    {
      v26 = self->_accessoryLog;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v114 = *&v11;
        v27 = "Device with address '%@' has OBC disabled, do not run OBC update.";
        goto LABEL_34;
      }

LABEL_35:
      [v13 setManagerState:2];
      LOBYTE(a3) = 0;
LABEL_36:
      v9 = v109;

      goto LABEL_37;
    }

    if (v21)
    {
      v28 = self->_accessoryLog;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v28, OS_LOG_TYPE_DEFAULT, "A boarding pass was found within 24 hours, temporarily disable OBC", buf, 2u);
      }

      v29 = [MEMORY[0x277CBEAA8] date];
      v30 = [(PowerUIAudioAccessorySmartChargeManager *)self defaultDateToDisableUntilGivenDate:v29];
      LOBYTE(a3) = 1;
      [(PowerUIAudioAccessorySmartChargeManager *)self setTemporarilyDisabled:1 until:v30 forDevice:v11];

      [v13 setManagerState:5];
      goto LABEL_36;
    }

    v33 = [v13 lastSentDate];
    v34 = self->_accessoryLog;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v114 = *&v11;
      v115 = 2112;
      v116 = v8;
      _os_log_impl(&dword_21B766000, v34, OS_LOG_TYPE_DEFAULT, "runUpdate called for device '%@', hash: %@", buf, 0x16u);
    }

    v35 = [MEMORY[0x277CBEAA8] date];
    v107 = v35;
    if (v5)
    {
      v36 = self->_accessoryLog;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v36, OS_LOG_TYPE_DEFAULT, "This is the initial update, re-send last prediction.", buf, 2u);
      }

      v37 = v33;
      [v33 timeIntervalSinceDate:v35];
      v39 = v38;
      v40 = _os_feature_enabled_impl();
      v41 = 0;
      if (v40 && v39 > 0.0)
      {
        v41 = [(PowerUIAudioAccessorySmartChargeManager *)self sendTimeDeltaInSeconds:v39 toAccessory:a3];
      }

      v106 = v41;
      [v13 setManagerState:1];
      v42 = 60;
LABEL_85:
      v90 = dispatch_walltime(0, 1000000000 * v42);
      v91 = objc_alloc_init(MEMORY[0x277CCAD78]);
      [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetExpectedHash:v91 forDevice:v11];
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__PowerUIAudioAccessorySmartChargeManager_runUpdateForDevice_withHash_asInitialUpdate___block_invoke;
      block[3] = &unk_2782D4B58;
      block[4] = self;
      v112 = a3;
      v93 = v91;
      v111 = v93;
      dispatch_after(v90, queue, block);
      v94 = self->_accessoryLog;
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        v95 = MEMORY[0x277CCABB0];
        v96 = v94;
        v97 = [v95 numberWithDouble:v42 / 60.0];
        *buf = 138412290;
        v114 = *&v97;
        _os_log_impl(&dword_21B766000, v96, OS_LOG_TYPE_DEFAULT, "Next update queued in %@ minutes", buf, 0xCu);
      }

      LOBYTE(a3) = v106 == 0;

      goto LABEL_36;
    }

    v105 = [(PowerUIMLAudioAccessoryModelPredictor *)self->_predictor chargingDecisionForDate:v35 forAudioAccessory:v11];
    if ([v105 state] != 1 || hardcodedTimeDelta)
    {
      if ([v105 state] != 2 || hardcodedTimeDelta)
      {
        if ([v105 state] != 3 || hardcodedTimeDelta)
        {
          if (![v105 state] || hardcodedTimeDelta)
          {
            [v105 smartChargeDuration];
            if (hardcodedTimeDelta)
            {
              v99 = [(NSNumber *)self->_hardcodedTimeDelta integerValue];
              v100 = self->_accessoryLog;
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v114 = v99;
                _os_log_impl(&dword_21B766000, v100, OS_LOG_TYPE_DEFAULT, "Applied manual override for prediction, it is now: %f", buf, 0xCu);
              }
            }

            else
            {
              v99 = v98 * 60.0;
            }

            if (_os_feature_enabled_impl())
            {
              v106 = [(PowerUIAudioAccessorySmartChargeManager *)self sendTimeDeltaInSeconds:v99 toAccessory:a3];
            }

            else
            {
              v101 = self->_accessoryLog;
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_21B766000, v101, OS_LOG_TYPE_DEFAULT, "FeatureFlag not enabled or device type not supported, do not send message.", buf, 2u);
              }

              v106 = 0;
            }

            [v13 setManagerState:6];
            goto LABEL_65;
          }

          if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
          {
            [PowerUIAudioAccessorySmartChargeManager runUpdateForDevice:withHash:asInitialUpdate:];
          }

LABEL_64:
          v106 = 0;
LABEL_65:
          v48 = [MEMORY[0x277CBEB38] dictionary];
          v49 = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
          v50 = -[PowerUIAudioAccessorySmartChargeManager nameForProductID:](self, "nameForProductID:", [v49 productIDForDevice:a3]);
          [v48 setObject:v50 forKeyedSubscript:@"AudioAccessoryType"];

          v51 = MEMORY[0x277CCABB0];
          [v105 engagementConfidence];
          v52 = [v51 numberWithDouble:?];
          [v48 setObject:v52 forKeyedSubscript:@"EngagementModelPrediction"];

          v53 = MEMORY[0x277CCABB0];
          [v105 engagementConfidence];
          v104 = [v53 numberWithInt:(5 * ((v54 * 100.0) / 5))];
          [v48 setObject:? forKeyedSubscript:?];
          v55 = MEMORY[0x277CCABB0];
          [v105 smartChargeDuration];
          v56 = [v55 numberWithDouble:?];
          [v48 setObject:v56 forKeyedSubscript:@"DurationModelPrediction"];

          v57 = MEMORY[0x277CCABB0];
          [v105 smartChargeDuration];
          v59 = 30 * (v58 / 30.0);
          if (v59 < 0)
          {
            v60 = 0xFFFFFFFFLL;
          }

          else
          {
            v60 = v59;
          }

          v103 = [v57 numberWithInt:v60];
          [v48 setObject:? forKeyedSubscript:?];
          v61 = [v105 modelVersion];
          [v48 setObject:v61 forKeyedSubscript:@"ModelVersion"];

          v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v105, "state")}];
          [v48 setObject:v62 forKeyedSubscript:@"PredictionContainerState"];

          v63 = [v13 lastSeenDate];
          [v63 timeIntervalSinceDate:v33];
          v65 = v64;

          v66 = [MEMORY[0x277CCABB0] numberWithDouble:v65];
          [v48 setObject:v66 forKeyedSubscript:@"PredictionRealityDelta"];

          v67 = v65 / 3600.0;
          if (v65 / 3600.0 > 48.0)
          {
            v67 = 48.0;
          }

          v102 = [MEMORY[0x277CCABB0] numberWithDouble:v67];
          [v48 setObject:? forKeyedSubscript:?];
          [v33 timeIntervalSinceDate:v107];
          v69 = v68;
          v70 = [(NSMutableDictionary *)self->_latestAnalyticsForDevice objectForKey:v11];
          v37 = v33;
          if (!v70)
          {
            goto LABEL_104;
          }

          v71 = v70;
          v72 = [(NSMutableDictionary *)self->_latestAnalyticsForDevice objectForKeyedSubscript:v11];
          v73 = [v72 objectForKey:@"UnderchargeHappened"];

          if (v73)
          {
            v74 = [(NSMutableDictionary *)self->_latestAnalyticsForDevice objectForKeyedSubscript:v11];
            v75 = [v74 objectForKey:@"UnderchargeHappened"];
            [v48 setObject:v75 forKeyedSubscript:@"UnderchargeHappened"];

            v76 = self->_accessoryLog;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v77 = v76;
              v78 = [v48 objectForKeyedSubscript:@"UnderchargeHappened"];
              *buf = 138412290;
              v114 = *&v78;
              _os_log_impl(&dword_21B766000, v77, OS_LOG_TYPE_DEFAULT, "Undercharge decision already made, it was: %@", buf, 0xCu);
            }
          }

          else
          {
LABEL_104:
            if (v69 <= 0.0 || ([v13 lastUnderchargeRecordedForPrediction], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v37, "isEqualToDate:", v79), v79, (v80 & 1) != 0))
            {
              v81 = self->_accessoryLog;
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = MEMORY[0x277CCABB0];
                v83 = v81;
                v84 = [v82 numberWithDouble:v69];
                *buf = 138412546;
                v114 = *&v84;
                v115 = 2112;
                v116 = v37;
                _os_log_impl(&dword_21B766000, v83, OS_LOG_TYPE_DEFAULT, "Not an undercharge, either last prediciton delta  %@ < 0 or already recorded for last prediction %@", buf, 0x16u);
              }

              [v48 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"UnderchargeHappened"];
            }

            else
            {
              v85 = self->_accessoryLog;
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
              {
                v86 = MEMORY[0x277CCABB0];
                v87 = v85;
                v88 = [v86 numberWithDouble:v69];
                *buf = 138412546;
                v114 = *&v88;
                v115 = 2112;
                v116 = v37;
                _os_log_impl(&dword_21B766000, v87, OS_LOG_TYPE_DEFAULT, "New undercharge, last prediciton delta %@ > 0 and not already recorded for last prediction %@", buf, 0x16u);
              }

              [v48 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UnderchargeHappened"];
              [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetLastUnderchargeRecordedForPrediction:v37 forDevice:v11];
            }
          }

          [(NSMutableDictionary *)self->_latestAnalyticsForDevice setObject:v48 forKeyedSubscript:v11];

          hardcodedTimeBetweenUpdates = self->_hardcodedTimeBetweenUpdates;
          if (hardcodedTimeBetweenUpdates)
          {
            v42 = [(NSNumber *)hardcodedTimeBetweenUpdates integerValue];
          }

          else
          {
            v42 = 3600;
          }

          goto LABEL_85;
        }

        v47 = self->_accessoryLog;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v47, OS_LOG_TYPE_DEFAULT, "Model prediction timeDelta is below zero, do not send timeDelta.", buf, 2u);
        }

        v44 = v13;
        v45 = 11;
      }

      else
      {
        v46 = self->_accessoryLog;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v46, OS_LOG_TYPE_DEFAULT, "Model did not engage, do not send a timeDelta.", buf, 2u);
        }

        v44 = v13;
        v45 = 3;
      }
    }

    else
    {
      v43 = self->_accessoryLog;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v43, OS_LOG_TYPE_DEFAULT, "Not enough data, do not send a timeDelta.", buf, 2u);
      }

      v44 = v13;
      v45 = 10;
    }

    [v44 setManagerState:v45];
    [(PowerUIAudioAccessorySmartChargeManager *)self setOBCState:0 forDevice:v11];
    goto LABEL_64;
  }

  v16 = self->_accessoryLog;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "runUpdate called for nil device.", buf, 2u);
    LOBYTE(a3) = 0;
  }

LABEL_38:

  v31 = *MEMORY[0x277D85DE8];
  return a3;
}

- (id)nameForProductID:(unsigned int)a3
{
  if (a3 > 8218)
  {
    if (a3 > 8227)
    {
      switch(a3)
      {
        case 0x2024u:
          return @"B698c";
        case 0x2027u:
          return @"B788";
        case 0x2028u:
          return @"B788CH";
      }
    }

    else
    {
      switch(a3)
      {
        case 0x201Bu:
          return @"B768M";
        case 0x201Eu:
          return @"B768CHE";
        case 0x2020u:
          return @"B768CHM";
      }
    }
  }

  else if (a3 > 8210)
  {
    switch(a3)
    {
      case 0x2013u:
        return @"B688";
      case 0x2014u:
        return @"B698";
      case 0x2019u:
        return @"B768E";
    }
  }

  else
  {
    switch(a3)
    {
      case 0x2002u:
        return @"B188";
      case 0x200Eu:
        return @"B298";
      case 0x200Fu:
        return @"B288";
    }
  }

  if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager nameForProductID:];
  }

  return @"Unknown";
}

- (void)reportDailyMetrics
{
  v29 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
LABEL_18:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  [(NSLock *)self->_deviceArrayLock lock];
  if ([(NSMutableArray *)self->_deviceArray count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = self->_deviceArray;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      LODWORD(v6) = 0;
      LODWORD(v7) = 0;
      LODWORD(v8) = 0;
      v9 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v3);
          }

          v11 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:*(*(&v22 + 1) + 8 * i)];
          v12 = [v11 enabled];
          v7 = v7 + (v12 ^ 1);
          v8 = (v8 + v12);
          v6 = v6 + [v11 temporarilyDisabled];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }

    [(NSLock *)self->_deviceArrayLock unlock];
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    [v15 setObject:v16 forKeyedSubscript:@"NumberOfEnabledDevices"];

    v17 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [v15 setObject:v17 forKeyedSubscript:@"NumberOfDisabledDevices"];

    v18 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [v15 setObject:v18 forKeyedSubscript:@"NumberOfTemporarilyDisabledDevices"];

    v19 = v15;
    AnalyticsSendEventLazy();
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v19;
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Reported daily metrics to CoreAnalytics %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  deviceArrayLock = self->_deviceArrayLock;
  v14 = *MEMORY[0x277D85DE8];

  [(NSLock *)deviceArrayLock unlock];
}

- (id)firstUseNotificationRequestForDeviceType:(unsigned int)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v6 = [MEMORY[0x277CCA8D8] bundleWithURL:v5];
  v7 = @"Localizable";
  v8 = [v6 localizedStringForKey:@"OBC_FEATURE_ENABLED_TITLE" value:&stru_282D0B728 table:@"Localizable"];
  [v4 setTitle:v8];

  v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  [v9 setLocale:v10];

  [v9 setNumberStyle:3];
  [v9 setMaximumFractionDigits:0];
  [v9 setMultiplier:&unk_282D4E548];
  v11 = [v9 stringFromNumber:&unk_282D4E590];
  if (a3 - 8206 > 0x16 || ((1 << (a3 - 14)) & 0x400041) == 0)
  {
    v7 = @"Localizable-B688";
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [v6 localizedStringForKey:@"AUDIOACCESSORY_OBC_FIRST_USE_BODY" value:&stru_282D0B728 table:v7];
  v14 = [v12 stringWithFormat:v13, v11];
  [v4 setBody:v14];

  [v4 setCategoryIdentifier:@"firstTimeCategory"];
  [v4 setShouldHideDate:1];
  [v4 setShouldHideTime:1];
  [v4 setShouldSuppressDefaultAction:1];
  v15 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.badge.clock.fill"];
  [v4 setIcon:v15];

  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:21600.0];
  [v4 setExpirationDate:v16];

  v17 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"audioAccessoryFirstUseNotification" content:v4 trigger:0];
  [v17 setDestinations:6];

  return v17;
}

- (void)client:(id)a3 connectAndDisableOBCforDevice:(id)a4 withHandler:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = v9;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Request connectAndDisableOBCforDevice for address: %@", &v28, 0xCu);
  }

  v12 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:v9 forSession:self->_session];
  if (!v12)
  {
    v22 = self->_accessoryLog;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "No device for connectAndDisableOBCforDevice.", &v28, 2u);
    }

    goto LABEL_12;
  }

  v13 = v12;
  if (![(PowerUIBluetoothHandler *)self->_btHandler isDeviceConnected:v12 forSession:self->_session])
  {
    v14 = dispatch_semaphore_create(0);
    btConnectionSemaphore = self->_btConnectionSemaphore;
    self->_btConnectionSemaphore = v14;

    v16 = [(PowerUIBluetoothHandler *)self->_btHandler deviceConnectWrapper:v13];
    v17 = self->_btConnectionSemaphore;
    v18 = dispatch_time(0, 15000000000);
    v19 = dispatch_semaphore_wait(v17, v18);
    v20 = v19;
    if (v16 || v19)
    {
      v23 = self->_accessoryLog;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = MEMORY[0x277CCABB0];
        v25 = v23;
        v26 = [v24 numberWithLong:v20];
        v28 = 138412546;
        v29 = v9;
        v30 = 2112;
        v31 = v26;
        _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Connecting device '%@' was not successful. timeout = %@", &v28, 0x16u);
      }

LABEL_12:
      (*(v10 + 2))(v10, 0, 0);
      goto LABEL_13;
    }
  }

  [(PowerUIAudioAccessorySmartChargeManager *)self client:v8 setState:3 forDevice:v9 withHandler:v10];
  v21 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v9];
  [v21 setManagerState:8];

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)isSmartChargingCurrentlyEnabledForDevice:(id)a3 withHandler:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v6];
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = accessoryLog;
      v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v8, "currentState")}];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Returning current state: %@", &v14, 0xCu);
    }

    v7[2](v7, [v8 currentState], 0);
  }

  else
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager isSmartChargingCurrentlyEnabledForDevice:withHandler:];
    }

    v7[2](v7, 0, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)setOBCState:(BOOL)a3 forDevice:(id)a4
{
  v4 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_session)
  {
    v7 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:v6 forSession:?];
    session = self->_session;
    BTAccessoryManagerGetDefault();
    v9 = [(PowerUIBluetoothHandler *)self->_btHandler isDeviceConnected:v7 forSession:self->_session];
    accessoryLog = self->_accessoryLog;
    v11 = os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v4)
      {
        if (v11)
        {
          v12 = MEMORY[0x277CCABB0];
          v13 = accessoryLog;
          v14 = [v12 numberWithBool:1];
          *buf = 138412546;
          v35 = v14;
          v36 = 2112;
          v37 = v6;
          _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "Sending enabling state '%@' to device with address '%@'.", buf, 0x16u);
        }

        [(PowerUIAudioAccessorySmartChargeManager *)self runUpdateForDevice:v7 withHash:0];
LABEL_25:
        v16 = 1;
        goto LABEL_26;
      }

      if (v11)
      {
        v19 = MEMORY[0x277CCABB0];
        v20 = accessoryLog;
        v21 = [v19 numberWithBool:0];
        *buf = 138412546;
        v35 = v21;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Sending disabling state '%@' to device with address '%@'.", buf, 0x16u);
      }

      v33 = 0;
      v32 = 0;
      v22 = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
      v23 = [v22 protocolForDevice:v7];
      if (v23 == 3)
      {
        v24 = 2;
      }

      else if (v23 == 2)
      {
        v24 = 1;
      }

      else
      {
        v24 = 0;
        if (v23 == 1)
        {
          LODWORD(v32) = 0;
          goto LABEL_21;
        }
      }

      LOBYTE(v32) = v24;
      *(&v32 + 1) = 0;
LABEL_21:

      v25 = [(PowerUIBluetoothHandler *)self->_btHandler sendCustomMessageWrapperWithManager:0 withMessageType:0x20000 withDeviceHandle:v7 withData:&v32 withDataSize:9];
      v26 = self->_accessoryLog;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = MEMORY[0x277CCABB0];
        v28 = v26;
        v29 = [v27 numberWithUnsignedLong:v25];
        *buf = 138412546;
        v35 = v6;
        v36 = 2112;
        v37 = v29;
        _os_log_impl(&dword_21B766000, v28, OS_LOG_TYPE_DEFAULT, "Message sent to disable OBC for device '%@' - Error code: %@", buf, 0x16u);
      }

      if (!v25)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (!v11)
    {
LABEL_24:
      v16 = 0;
      goto LABEL_26;
    }

    *buf = 138412290;
    v35 = v6;
    v17 = "Device with address '%@' is not connected to AACP, do not try to set OBC state.";
    v18 = accessoryLog;
LABEL_11:
    _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
    goto LABEL_24;
  }

  v15 = self->_accessoryLog;
  v16 = 0;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v6;
    v17 = "Bluetooth session has not been intialized, device with address '%@' is not connected, do not try to set OBC state.";
    v18 = v15;
    goto LABEL_11;
  }

LABEL_26:

  v30 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)client:(id)a3 setState:(unint64_t)a4 forDevice:(id)a5 withHandler:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:v11 forSession:self->_session];
  if (v13)
  {
    v14 = v13;
    v15 = [(PowerUIBluetoothHandler *)self->_btHandler protocolForDevice:v13];
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = accessoryLog;
      v18 = [(PowerUIAudioAccessorySmartChargeManager *)self stringFromState:a4];
      v41 = 138412802;
      v42 = v10;
      v43 = 2112;
      v44 = v18;
      v45 = 1024;
      v46 = v15;
      _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "%@ requests state %@. Using protocol: %hhu", &v41, 0x1Cu);
    }

    if ((v15 - 1) <= 1)
    {
      v19 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v11];
      v20 = [v19 currentState];
      v21 = self->_accessoryLog;
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20 == a4)
      {
        if (v22)
        {
          v23 = v21;
          v24 = [(PowerUIAudioAccessorySmartChargeManager *)self stringFromState:a4];
          v41 = 138412546;
          v42 = v10;
          v43 = 2112;
          v44 = v24;
          _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "%@ requests state %@, but this is already the current state. Do nothing.", &v41, 0x16u);
        }

        v12[2](v12, 1, 0);
        goto LABEL_38;
      }

      if (v22)
      {
        v30 = v21;
        v31 = [(PowerUIAudioAccessorySmartChargeManager *)self stringFromState:a4];
        v41 = 138412546;
        v42 = v10;
        v43 = 2112;
        v44 = v31;
        _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, "%@ requests state: %@", &v41, 0x16u);
      }

      if (a4 > 1)
      {
        if (a4 == 2)
        {
          v12[2](v12, 0, 0);
          goto LABEL_38;
        }

        if (a4 == 3)
        {
          v36 = [MEMORY[0x277CBEAA8] date];
          v37 = [(PowerUIAudioAccessorySmartChargeManager *)self defaultDateToDisableUntilGivenDate:v36];
          [(PowerUIAudioAccessorySmartChargeManager *)self setTemporarilyDisabled:1 until:v37 forDevice:v11];

LABEL_37:
          v12[2](v12, 1, 0);
          [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargestatuschanged" object:v11];
          goto LABEL_38;
        }
      }

      else
      {
        if (!a4)
        {
          [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:v11 withCurrentState:0 withEnabled:0 withDisabledUntilDate:0 withTemporarilyDisabled:0];
          v32 = self;
          v33 = 0;
          goto LABEL_36;
        }

        if (a4 == 1)
        {
          [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:v11 withCurrentState:1 withEnabled:1 withDisabledUntilDate:0 withTemporarilyDisabled:0];
          v32 = self;
          v33 = 1;
LABEL_36:
          [(PowerUIAudioAccessorySmartChargeManager *)v32 setOBCState:v33 forDevice:v11];
          goto LABEL_37;
        }
      }

      v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:1 userInfo:0];
      (v12)[2](v12, 0, v38);

LABEL_38:
      goto LABEL_39;
    }

    if (v15)
    {
      if (v15 == 3)
      {
        switch(a4)
        {
          case 0uLL:
            [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:v11 withCurrentState:0 withEnabled:0 withDisabledUntilDate:0 withTemporarilyDisabled:0];
            v28 = self;
            v29 = 0;
            goto LABEL_43;
          case 3uLL:
            v40 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:86400.0];
            [(PowerUIAudioAccessorySmartChargeManager *)self setTemporarilyDisabled:1 until:v40 forDevice:v11];

            v28 = self;
            v29 = 3;
            goto LABEL_43;
          case 1uLL:
            [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:v11 withCurrentState:1 withEnabled:1 withDisabledUntilDate:0 withTemporarilyDisabled:0];
            v28 = self;
            v29 = 1;
LABEL_43:
            v12[2](v12, [(PowerUIAudioAccessorySmartChargeManager *)v28 setStateViaV2Protocol:v29 forDevice:v14], 0);
            goto LABEL_39;
        }

        goto LABEL_12;
      }

      v34 = self->_accessoryLog;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 67109120;
        LODWORD(v42) = v15;
        _os_log_impl(&dword_21B766000, v34, OS_LOG_TYPE_DEFAULT, "protocol %hhu is unsupported, do nothing", &v41, 8u);
      }
    }

    else if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager client:setState:forDevice:withHandler:];
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = 4;
    goto LABEL_30;
  }

  v25 = self->_accessoryLog;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 138412546;
    v42 = v10;
    v43 = 2048;
    v44 = a4;
    _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "No device for client '%@' setState '%lu' request.", &v41, 0x16u);
  }

LABEL_12:
  v26 = MEMORY[0x277CCA9B8];
  v27 = 1;
LABEL_30:
  v35 = [v26 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:v27 userInfo:0];
  (v12)[2](v12, 0, v35);

LABEL_39:
  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)setStateViaV2Protocol:(unint64_t)a3 forDevice:(BTDeviceImpl *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_session)
  {
    accessoryLog = self->_accessoryLog;
    v9 = os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT);
    LOBYTE(v10) = 0;
    if (!v9)
    {
      goto LABEL_26;
    }

    *buf = 0;
    v11 = "Bluetooth session has not been intialized, device  is not connected, do not try to set OBC state.";
    goto LABEL_11;
  }

  BTAccessoryManagerGetDefault();
  if (![(PowerUIBluetoothHandler *)self->_btHandler isDeviceConnected:a4 forSession:self->_session])
  {
    accessoryLog = self->_accessoryLog;
    v12 = os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT);
    LOBYTE(v10) = 0;
    if (!v12)
    {
      goto LABEL_26;
    }

    *buf = 0;
    v11 = "Device is not connected to AACP, do not try to set OBC state.";
LABEL_11:
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    goto LABEL_12;
  }

  v24 = 0;
  switch(a3)
  {
    case 3uLL:
      v7 = 254;
      break;
    case 1uLL:
      v7 = 253;
      break;
    case 0uLL:
      v7 = 255;
      break;
    default:
      v10 = os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR);
      if (!v10)
      {
        goto LABEL_26;
      }

      [PowerUIAudioAccessorySmartChargeManager setStateViaV2Protocol:forDevice:];
LABEL_12:
      LOBYTE(v10) = 0;
      goto LABEL_26;
  }

  v22 = 2;
  v23 = v7;
  v13 = [(PowerUIBluetoothHandler *)self->_btHandler sendCustomMessageWrapperWithManager:0 withMessageType:0x20000 withDeviceHandle:a4 withData:&v22 withDataSize:9];
  for (i = 0; i != 9; ++i)
  {
    v15 = self->_accessoryLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(&v22 + i);
      *buf = 67109120;
      LODWORD(v21) = v16;
      _os_log_debug_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEBUG, "  var: %u", buf, 8u);
    }
  }

  v17 = self->_accessoryLog;
  if (v13)
  {
    v10 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      goto LABEL_26;
    }

    [PowerUIAudioAccessorySmartChargeManager setStateViaV2Protocol:v17 forDevice:v13];
    goto LABEL_12;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = a3;
    _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "OBC Message (%lu) sent to device", buf, 0xCu);
  }

  LOBYTE(v10) = 1;
LABEL_26:
  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)getOBCDeadlineFromCBDevice:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc_init(MEMORY[0x277CBE030]);
  discovery = self->_discovery;
  self->_discovery = v6;

  [(CBDiscovery *)self->_discovery setDiscoveryFlags:0x20000000];
  v35[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [(CBDiscovery *)self->_discovery setDeviceFilter:v8];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__PowerUIAudioAccessorySmartChargeManager_getOBCDeadlineFromCBDevice___block_invoke;
  v22[3] = &unk_2782D4B80;
  v24 = &v25;
  v9 = v5;
  v23 = v9;
  [(CBDiscovery *)self->_discovery setDeviceFoundHandler:v22];
  v10 = self->_discovery;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__PowerUIAudioAccessorySmartChargeManager_getOBCDeadlineFromCBDevice___block_invoke_2;
  v21[3] = &unk_2782D4160;
  v21[4] = self;
  [(CBDiscovery *)v10 activateWithCompletion:v21];
  v11 = dispatch_time(0, 3000000000);
  v12 = dispatch_semaphore_wait(v9, v11);
  accessoryLog = self->_accessoryLog;
  if (v12)
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager getOBCDeadlineFromCBDevice:];
    }
  }

  else if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v26[5];
    *buf = 138412546;
    v32 = v4;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Got deadline from device (%@): %@", buf, 0x16u);
  }

  [(CBDiscovery *)self->_discovery invalidate];
  v15 = v26[5];
  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [v15 laterDate:v16];
  LODWORD(v15) = v17 == v26[5];

  if (v15)
  {
    v18 = v26[5];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v25, 8);
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

intptr_t __70__PowerUIAudioAccessorySmartChargeManager_getOBCDeadlineFromCBDevice___block_invoke(intptr_t result, void *a2)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    v3 = result;
    [a2 accessoryStatusOBCTime];
    if (v4 <= 0.0)
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }

    else
    {
      [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    }
    v5 = ;
    v6 = *(*(v3 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(v3 + 32);

    return dispatch_semaphore_signal(v8);
  }

  return result;
}

void __70__PowerUIAudioAccessorySmartChargeManager_getOBCDeadlineFromCBDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Error: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)fullChargeDeadlineForDevice:(id)a3 withHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
  v9 = [v8 getDeviceForAddressString:v6 forSession:self->_session];

  v10 = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
  v11 = [v10 protocolForDevice:v9];

  if (v11 == 3)
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_DEBUG))
    {
      [PowerUIAudioAccessorySmartChargeManager fullChargeDeadlineForDevice:withHandler:];
    }

    v12 = [(PowerUIAudioAccessorySmartChargeManager *)self getOBCDeadlineFromCBDevice:v6];
    if (v12)
    {
      v13 = [PowerUISmartChargeUtilities roundedDateFromDate:v12];
      v7[2](v7, v13, 0);
    }

    else
    {
      v7[2](v7, 0, 0);
    }
  }

  else if ((v11 - 255) > 0xFFFFFF01)
  {
    v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v6];
    v15 = [v12 lastSentDate];
    v16 = [PowerUISmartChargeUtilities roundedDateFromDate:v15];

    [v16 timeIntervalSinceNow];
    if (v17 <= 0.0)
    {

      v16 = 0;
    }

    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v16;
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "fullChargeDeadline requested, returning: %@", &v20, 0xCu);
    }

    v7[2](v7, v16, 0);
  }

  else
  {
    v14 = self->_accessoryLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v6;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Query for OBC deadline for device %@, but protocol is: %hhu", &v20, 0x12u);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
    (v7)[2](v7, 0, v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)unfilteredDeadlineForDevice:(id)a3 withHandler:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:a3];
  v8 = [v7 lastSentDate];
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Unfiltered deadline requested, returning: %@", &v11, 0xCu);
  }

  v6[2](v6, v8, 0);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 updateOBCDeadline:(id)a4 forDevice:(id)a5 withHandler:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CBEAA8] date];
  if (v11 && ([v11 timeIntervalSinceDate:v14], v15 <= 172800.0))
  {
    v17 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v12];
    v18 = [v17 lastSentDate];
    if (v18 && (v19 = v18, [v17 lastSentDate], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "compare:", v11), v20, v19, v21 == 1))
    {
      accessoryLog = self->_accessoryLog;
      if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = accessoryLog;
        v24 = [v17 lastSentDate];
        v34 = 138413058;
        v35 = v10;
        v36 = 2112;
        v37 = v11;
        v38 = 2112;
        v39 = v12;
        v40 = 2112;
        v41 = v24;
        _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "%@ requests deadline update '%@' for device '%@', but on device deadline (%@) is newer", &v34, 0x2Au);
      }

      [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargedeadlinechanged" object:v12];
    }

    else
    {
      v25 = [v17 lastSentDate];
      if (!v25 || (v26 = v25, [v17 lastSentDate], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "compare:", v11), v27, v26, v28 == -1))
      {
        v30 = self->_accessoryLog;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          v32 = [v17 lastSentDate];
          v34 = 138413058;
          v35 = v10;
          v36 = 2112;
          v37 = v11;
          v38 = 2112;
          v39 = v12;
          v40 = 2112;
          v41 = v32;
          _os_log_impl(&dword_21B766000, v31, OS_LOG_TYPE_DEFAULT, "%@ requests deadline update '%@' for device '%@'. Update on device deadline (%@)", &v34, 0x2Au);
        }

        [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetLastSentDate:v11 forDevice:v12];
      }

      else
      {
        v29 = self->_accessoryLog;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 138412802;
          v35 = v10;
          v36 = 2112;
          v37 = v11;
          v38 = 2112;
          v39 = v12;
          _os_log_impl(&dword_21B766000, v29, OS_LOG_TYPE_DEFAULT, "%@ requests deadline update '%@' for device '%@', but dates are equal", &v34, 0x20u);
        }
      }
    }

    [v17 setManagerState:9];
    v13[2](v13, 1, 0);
  }

  else
  {
    v16 = self->_accessoryLog;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412802;
      v35 = v10;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "ERROR: %@ requests invalid deadline update '%@' for device '%@'", &v34, 0x20u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:3 userInfo:0];
    (v13)[2](v13, 0, v17);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)persistentlySetLastSentDate:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v6];
  [v12 setLastSentDate:v7];
  v8 = MEMORY[0x277CCABB0];
  [v7 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v11 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastSentDate." andDevice:v6];

  [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargedeadlinechanged" object:v6];
}

- (void)persistentlySetLastTimeseriesDate:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v6];
  [v12 setLastTimeseriesDate:v7];
  v8 = MEMORY[0x277CCABB0];
  [v7 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v11 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastTimeseriesDate." andDevice:v6];
}

- (void)persistentlySetLastUnderchargeRecordedForPrediction:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v6];
  [v12 setLastUnderchargeRecordedForPrediction:v7];
  v8 = MEMORY[0x277CCABB0];
  [v7 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v11 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastUnderchargeRecordedForPrediction." andDevice:v6];
}

- (void)persistentlyHandleSeeingDevice:(id)a3
{
  v4 = a3;
  v9 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v4];
  v5 = [MEMORY[0x277CBEAA8] date];
  [v9 setLastSeenDate:v5];

  v6 = MEMORY[0x277CCABB0];
  v7 = [v9 lastSeenDate];
  [v7 timeIntervalSinceReferenceDate];
  v8 = [v6 numberWithDouble:?];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v8 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastSeenDate." andDevice:v4];
}

- (void)persistentlySetExpectedHash:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v6];
  [v9 setExpectedHash:v7];
  v8 = [v7 UUIDString];

  [PowerUIAudioAccessorySmartChargeManager setString:v8 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.expectedHash." andDevice:v6];
}

+ (void)setNumber:(id)a3 forPreferenceKeyPrefix:(id)a4 andDevice:(id)a5
{
  value = a3;
  CFPreferencesSetAppValue([a4 stringByAppendingString:a5], value, @"com.apple.smartcharging.topoffprotection.audioaccessories");
}

+ (id)readNumberForPreferenceKeyPrefix:(id)a3 andDevice:(id)a4
{
  v4 = CFPreferencesCopyAppValue([a3 stringByAppendingString:a4], @"com.apple.smartcharging.topoffprotection.audioaccessories");

  return v4;
}

+ (void)setString:(id)a3 forPreferenceKeyPrefix:(id)a4 andDevice:(id)a5
{
  value = a3;
  CFPreferencesSetAppValue([a4 stringByAppendingString:a5], value, @"com.apple.smartcharging.topoffprotection.audioaccessories");
}

+ (id)readStringForPreferenceKeyPrefix:(id)a3 andDevice:(id)a4
{
  v4 = CFPreferencesCopyAppValue([a3 stringByAppendingString:a4], @"com.apple.smartcharging.topoffprotection.audioaccessories");

  return v4;
}

+ (id)readArrayForPreferenceKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.smartcharging.topoffprotection.audioaccessories");
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringFromState:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown state";
  }

  else
  {
    return off_2782D4BA0[a3];
  }
}

- (id)defaultDateToDisableUntilGivenDate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (defaultDateToDisableUntilGivenDate__onceToken != -1)
  {
    [PowerUIAudioAccessorySmartChargeManager defaultDateToDisableUntilGivenDate:];
  }

  v5 = [defaultDateToDisableUntilGivenDate__calendar components:60 fromDate:v4];
  if ([v5 hour] >= 6)
  {
    [v5 setDay:{objc_msgSend(v5, "day") + 1}];
  }

  [v5 setHour:6];
  v6 = [defaultDateToDisableUntilGivenDate__calendar dateFromComponents:v5];
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Feature disabled until: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __78__PowerUIAudioAccessorySmartChargeManager_defaultDateToDisableUntilGivenDate___block_invoke()
{
  defaultDateToDisableUntilGivenDate__calendar = [MEMORY[0x277CBEA80] currentCalendar];

  return MEMORY[0x2821F96F8]();
}

- (void)setTemporarilyDisabled:(BOOL)a3 until:(id)a4 forDevice:(id)a5
{
  v6 = a3;
  v33 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (v8)
    {
      [v8 timeIntervalSinceNow];
      v11 = v10;
      if (v10 < 0.0)
      {
        v6 = 0;
      }
    }

    else
    {
      v11 = 0.0;
    }

    v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v9];
    v13 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:v9 forSession:self->_session];
    if (!v13 && os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager setTemporarilyDisabled:until:forDevice:];
    }

    v14 = [(PowerUIBluetoothHandler *)self->_btHandler protocolForDevice:v13];
    v15 = [v12 temporarilyDisabled];
    if (v6)
    {
      v16 = v15 ^ 1;
      if (!v8)
      {
        v16 = 1;
      }

      if ((v16 & 1) != 0 || ([v12 disabledUntilDate], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v8, "isEqualToDate:", v17), v17, (v18 & 1) == 0))
      {
        [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:v9 withCurrentState:3 withEnabled:1 withDisabledUntilDate:v8 withTemporarilyDisabled:1];
        if ((v14 - 1) <= 1)
        {
          [(PowerUIAudioAccessorySmartChargeManager *)self setOBCState:0 forDevice:v9];
        }

        [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargestatuschanged" object:v9];
        accessoryLog = self->_accessoryLog;
        if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v9;
          _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Set state to temporarilyDisabled for device '%@'", buf, 0xCu);
        }

        v20 = dispatch_walltime(0, (v11 * 1000000000.0));
        queue = self->_queue;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __82__PowerUIAudioAccessorySmartChargeManager_setTemporarilyDisabled_until_forDevice___block_invoke;
        v27[3] = &unk_2782D4AC0;
        v27[4] = self;
        v22 = v9;
        v28 = v22;
        dispatch_after(v20, queue, v27);
        v23 = self->_accessoryLog;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v30 = v22;
          v31 = 2048;
          v32 = v11 / 60.0;
          _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "Re-enable device '%@' in %f minutes", buf, 0x16u);
        }
      }

      goto LABEL_29;
    }

    if (v15)
    {
      [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:v9 withCurrentState:1 withEnabled:1 withDisabledUntilDate:0 withTemporarilyDisabled:0];
      if ((v14 - 1) <= 1)
      {
        [(PowerUIAudioAccessorySmartChargeManager *)self setOBCState:1 forDevice:v9];
      }

      [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargestatuschanged" object:v9];
      v24 = self->_accessoryLog;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 138412290;
      v30 = v9;
      v25 = "Re-enable device '%@' (previously temporarily disabled)";
    }

    else
    {
      v24 = self->_accessoryLog;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:

        goto LABEL_30;
      }

      *buf = 138412290;
      v30 = v9;
      v25 = "Attempted to re-enable device '%@', but it was not temporarily disabled";
    }

    _os_log_impl(&dword_21B766000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
    goto LABEL_29;
  }

LABEL_30:

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v6 = a4;
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Received new connection: %@", buf, 0xCu);
  }

  v8 = [v6 valueForEntitlement:@"com.apple.powerui.smartcharging.AudioAccessory"];
  v9 = v8;
  if ((!v8 || ([v8 BOOLValue] & 1) == 0) && os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager listener:shouldAcceptNewConnection:];
  }

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282D58AB0];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:sel_getAvailableDevicesWithHandler_ argumentIndex:0 ofReply:1];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v14 setWithObjects:{v15, v16, v17, v18, objc_opt_class(), 0}];
  [v10 setClasses:v19 forSelector:sel_getStatusForDevice_withHandler_ argumentIndex:0 ofReply:1];

  [v6 setExportedInterface:v10];
  [v6 setExportedObject:self];
  [v6 resume];

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)engageUntil:(id)a3 forDevice:(id)a4 overrideAllSignals:(BOOL)a5 withHandler:(id)a6
{
  btHandler = self->_btHandler;
  session = self->_session;
  v11 = a6;
  v12 = a3;
  v13 = [(PowerUIBluetoothHandler *)btHandler getDeviceForAddressString:a4 forSession:session];
  v16 = [MEMORY[0x277CBEAA8] date];
  [v12 timeIntervalSinceDate:v16];
  v15 = v14;

  v11[2](v11, [(PowerUIAudioAccessorySmartChargeManager *)self sendTimeDeltaInSeconds:v15 toAccessory:v13]== 0, 0);
}

- (void)getAvailableDevicesWithHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  deviceArrayLock = self->_deviceArrayLock;
  v5 = a3;
  [(NSLock *)deviceArrayLock lock];
  v6 = [(NSMutableArray *)self->_deviceArray copy];
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    deviceArray = self->_deviceArray;
    v10 = accessoryLog;
    v11 = [v8 numberWithUnsignedInteger:{-[NSMutableArray count](deviceArray, "count")}];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Available devices were requested, available: %@ - copy count: %@", &v14, 0x16u);
  }

  [(NSLock *)self->_deviceArrayLock unlock];
  v5[2](v5, v6);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getStatusForDevice:(id)a3 withHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  v10 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v8];
  if ([v10 enabled])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v9 setValue:v11 forKey:@"enabled"];
  if ([v10 temporarilyDisabled])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v9 setValue:v12 forKey:@"temporarilyDisabled"];
  v13 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v13 setDateFormat:@"yyyy-MM-dd 'at' HH:mm"];
  v14 = [v10 lastSentDate];
  v15 = [v13 stringFromDate:v14];

  [v9 setValue:v15 forKey:@"lastSentDate"];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v10, "minutesSavedSinceLastReport")}];
  v17 = [v16 description];
  [v9 setValue:v17 forKey:@"minutesSavedSinceLastReport"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v10, "underchargesSinceLastReport")}];
  v19 = [v18 description];
  [v9 setValue:v19 forKey:@"underchargesSinceLastReport"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v10, "chargingEventsSinceLastReport")}];
  v21 = [v20 description];
  [v9 setValue:v21 forKey:@"chargingEventsSinceLastReport"];

  [v9 setValue:v8 forKey:@"deviceName"];
  v22 = [v9 copy];
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v22;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Status Requested: %@", &v25, 0xCu);
  }

  v7[2](v7, v22);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)deleteRecordsForDevices:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSLock *)self->_deviceArrayLock lock];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v25)
  {
    v24 = *v28;
    *&v5 = 138412546;
    v22 = v5;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        accessoryLog = self->_accessoryLog;
        if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
        {
          deviceArray = self->_deviceArray;
          v10 = accessoryLog;
          v11 = [(NSMutableArray *)deviceArray count];
          *buf = v22;
          v33 = v7;
          v34 = 2048;
          v35 = v11;
          _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Delete device '%@' from known devices (%lu).", buf, 0x16u);
        }

        [(NSMutableArray *)self->_deviceArray removeObject:v7, v22];
        [(NSMutableDictionary *)self->_accessoryStates removeObjectForKey:v7];
        v26 = [@"com.apple.smartcharging.audioaccessories.currentState." stringByAppendingString:v7];
        v31[0] = v26;
        v12 = [@"com.apple.smartcharging.audioaccessories.enabled." stringByAppendingString:v7];
        v31[1] = v12;
        v13 = [@"com.apple.smartcharging.audioaccessories.disabledUntilDate." stringByAppendingString:v7];
        v31[2] = v13;
        v14 = [@"com.apple.smartcharging.audioaccessories.temporarilyDisabled." stringByAppendingString:v7];
        v31[3] = v14;
        v15 = [@"com.apple.smartcharging.audioaccessories.lastSentDate." stringByAppendingString:v7];
        v31[4] = v15;
        v16 = [@"com.apple.smartcharging.audioaccessories.lastSeenDate." stringByAppendingString:v7];
        v31[5] = v16;
        v17 = [@"com.apple.smartcharging.audioaccessories.lastTimeseriesDate." stringByAppendingString:v7];
        v31[6] = v17;
        v18 = [@"com.apple.smartcharging.audioaccessories.lastUnderchargeRecordedForPrediction." stringByAppendingString:v7];
        v31[7] = v18;
        [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:8];
        v20 = v19 = self;

        [PowerUIAudioAccessorySmartChargeManager bulkDeleteDefaultsEntries:v20];
        self = v19;
      }

      v25 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v25);
  }

  [PowerUIAudioAccessorySmartChargeManager setArray:self->_deviceArray forPreferenceKey:@"com.apple.smartcharging.audioaccessories.deviceArray"];
  [(NSLock *)self->_deviceArrayLock unlock];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)lastActionForDevice:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:a3];
  v6[2](v6, [v7 managerState]);
}

- (void)clearLastActionForDevice:(id)a3
{
  v3 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:a3];
  [v3 setManagerState:0];
}

- (void)startMockingBluetoothForFakeDevice:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!+[PowerUISmartChargeUtilities isInternalBuild]&& os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager startMockingBluetoothForFakeDevice:];
  }

  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Start mocking bluetooth for fake device name: %@", &v11, 0xCu);
  }

  v6 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v4];
  v7 = objc_alloc_init(MEMORY[0x277CCAD78]);
  [v6 setExpectedHash:v7];

  v8 = [[PowerUIBluetoothHandlerFake alloc] init:v4];
  btHandler = self->_btHandler;
  self->_btHandler = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopMockingBluetooth
{
  btHandler = self->_btHandler;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  accessoryLog = self->_accessoryLog;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Stop mocking bluetooth", v8, 2u);
    }

    v6 = objc_alloc_init(PowerUIBluetoothHandler);
    v7 = self->_btHandler;
    self->_btHandler = v6;
  }

  else if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager stopMockingBluetooth];
  }
}

- (void)fakeConnectionForDevice:(id)a3
{
  v4 = a3;
  btHandler = self->_btHandler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:v4 forSession:self->_session];
    btConnectionUpdateCallback(v6, v7, 0, 11, 0, self);
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v9 = "Connection callback called with fake event";
      v10 = &v11;
LABEL_6:
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else
  {
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Abort faking connections: Not in mocking mode";
      v10 = buf;
      goto LABEL_6;
    }
  }
}

- (void)currentLeewayWithHandler:(id)a3
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v8 = [(PowerUIAudioAccessorySmartChargeManager *)self predictor];
  [v8 lastUsedLeeway];
  v7 = [v5 numberWithDouble:?];
  (*(a3 + 2))(v6, v7, 0);
}

- (void)timeSeriesForDevice:(id)a3
{
  buf[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v4;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Triggering time series response for device '%@'.", buf, 0xCu);
  }

  buf[0] = 0;
  session = self->_session;
  BTAccessoryManagerGetDefault();
  v7 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:v4 forSession:self->_session];
  if (v7)
  {
    v8 = v7;
    v15 = 0;
    v9 = self->_accessoryLog;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "memset done, about to send message...", v14, 2u);
    }

    v10 = [(PowerUIBluetoothHandler *)self->_btHandler sendCustomMessageWrapperWithManager:buf[0] withMessageType:0x80000 withDeviceHandle:v8 withData:&v15 withDataSize:1];
    v11 = self->_accessoryLog;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "timeseries message sent...", v14, 2u);
    }

    if (v10)
    {
      v12 = self->_accessoryLog;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(PowerUIAudioAccessorySmartChargeManager *)v12 timeSeriesForDevice:v10];
      }
    }
  }

  else if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager timeSeriesForDevice:];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)monitor:(id)a3 maySuggestNewFullChargeDeadline:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [v5 isEqualToDate:v6];

  if ((v7 & 1) == 0)
  {
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Force reevaluation, signal monitor sent a new deadline: %@", buf, 0xCu);
    }

    v17 = v5;
    [(NSLock *)self->_deviceArrayLock lock];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_deviceArray;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = self->_accessoryLog;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v14;
            _os_log_debug_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEBUG, "  handling device %@...", buf, 0xCu);
          }

          [(PowerUIAudioAccessorySmartChargeManager *)self runUpdateForDevice:[(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:v14 forSession:self->_session] withHash:0];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [(NSLock *)self->_deviceArrayLock unlock];
    v5 = v17;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_2_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v5 = [v4 description];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21B766000, v3, OS_LOG_TYPE_ERROR, "Error getting accessory charging event: %@", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setStateViaV2Protocol:(void *)a1 forDevice:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v12 = [v3 numberWithUnsignedLong:a2];
  OUTLINED_FUNCTION_4_0(&dword_21B766000, v5, v6, "Failed to send OBC Message (%lu) to device - Error code: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fullChargeDeadlineForDevice:withHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_21B766000, v0, OS_LOG_TYPE_DEBUG, "Query CB OBC deadline from device %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)timeSeriesForDevice:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedLong:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_21B766000, v6, v7, "Error code '%@' sending OBCv2 message to device '%@'.", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)timeSeriesForDevice:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end