@interface WFClient
+ (WFClient)sharedInstance;
- (BOOL)_updateWiFiUIFlagsState;
- (BOOL)hasShownSBPickerDontAsk;
- (NSString)hardwareMACAddress;
- (OS_dispatch_queue)stateMonitorQueue;
- (WFClient)init;
- (WFClient)initWithCallbackRunLoop:(id)a3;
- (WFInterface)interface;
- (id)newRandomMACAddressForSSID:(id)a3;
- (int64_t)_askToJoinModeFromCoreWiFiAskToJoinMode:(int64_t)a3;
- (int64_t)_coreWiFiAskToJoinModeFromAskToJoinMode:(int64_t)a3;
- (int64_t)_coreWiFiHotspotJoinOptionFromAutoHotspotMode:(int64_t)a3;
- (int64_t)_hotspotJoinOptionFromCoreWiFiAutoHotspotMode:(int64_t)a3;
- (void)_logWiFiManagerPropertyChange:(id)a3 value:(BOOL)a4;
- (void)_managedConfigurationDidChange:(id)a3;
- (void)_notifyWiFiPropertyChanged:(id)a3 value:(id)a4;
- (void)_registerForCellularRankingStateNotification;
- (void)_scheduleCallbacksWithManager:(__WiFiManagerClient *)a3 runLoop:(id)a4;
- (void)_setupDefaultInterfaceWithManager:(__WiFiManagerClient *)a3 coreWiFiInterface:(id)a4;
- (void)_startMonitoringCoreWiFiEventsWithInterface:(id)a3;
- (void)_unscheduleCallbacksWithManager:(__WiFiManagerClient *)a3;
- (void)_updateAirplaneModeStickiness;
- (void)_updateCellularRankingState;
- (void)_updateManagedAppleIDState;
- (void)_updateNetworkRestrictionActive;
- (void)_updateOSSpecificAttributes:(id)a3;
- (void)_updatePowerModificationDisableState;
- (void)_updatePowerState;
- (void)_updateWPA3Properties:(__WiFiManagerClient *)a3;
- (void)_updateWithDeviceAttachment:(__WiFiDeviceClient *)a3;
- (void)_userAutoJoinStateDidChange:(BOOL)a3 info:(id)a4;
- (void)asyncMISDiscoveryState:(id)a3;
- (void)asyncMISState:(id)a3;
- (void)asyncPowered:(id)a3;
- (void)asyncUserAutoJoinState:(id)a3;
- (void)dealloc;
- (void)dispatchAskToJoinAction:(unint64_t)a3 notificationId:(unsigned int)a4 network:(id)a5;
- (void)dispatchCertificateTrustAction:(int64_t)a3 profile:(id)a4;
- (void)dispatchJoinRecommendationAction:(int64_t)a3 profile:(id)a4;
- (void)reloadConfiguration;
- (void)setAirplaneModeBehavior:(unint64_t)a3;
- (void)setAskToJoinMode:(int64_t)a3;
- (void)setAutoInstantHotspotJoinOption:(int64_t)a3;
- (void)setAutoJoinEnabled:(BOOL)a3;
- (void)setClientTypeAsForeground;
- (void)setEnableRandomMACForNetwork:(id)a3 enable:(BOOL)a4 randomMAC:(id)a5;
- (void)setHasShownSBPickerDontAsk:(BOOL)a3;
- (void)setMISDiscoveryState:(BOOL)a3 immediateDisable:(BOOL)a4;
- (void)setMISState:(BOOL)a3;
- (void)setManagedAppleID:(BOOL)a3;
- (void)setNetworkRestrictionActive:(BOOL)a3;
- (void)setPowerModificationDisableState:(BOOL)a3;
- (void)setPowered:(BOOL)a3;
- (void)setPoweredToggle:(BOOL)a3 handler:(id)a4;
- (void)setRandomAddressModeForNetwork:(id)a3 mode:(unint64_t)a4 randomMAC:(id)a5;
- (void)setUserAutoJoinState:(BOOL)a3 completion:(id)a4;
- (void)setWAPIEnabled:(BOOL)a3;
@end

@implementation WFClient

- (WFInterface)interface
{
  v16 = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  if (!interface)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
    {
      v14 = 136315138;
      v15 = "[WFClient interface]";
      _os_log_impl(&dword_273ECD000, v4, v5, "%s: recreating WFInterface in WFClient because it's nil when trying to access", &v14, 0xCu);
    }

    if (self->_manager)
    {
      v6 = self->_cInterface;
      if (!v6)
      {
        v7 = WFLogForCategory(0);
        v8 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
        {
          v14 = 136315138;
          v15 = "[WFClient interface]";
          _os_log_impl(&dword_273ECD000, v7, v8, "%s: recreating cInterface to recreate WFInterface", &v14, 0xCu);
        }

        v6 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
        v9 = [(CWFInterface *)v6 requestParameters];
        [v9 setTimeout:120000000000];

        objc_storeStrong(&self->_cInterface, v6);
        [(CWFInterface *)v6 resume];
        [(WFClient *)self _startMonitoringCoreWiFiEventsWithInterface:v6];
      }

      [(WFClient *)self _setupDefaultInterfaceWithManager:self->_manager coreWiFiInterface:v6];
    }

    else
    {
      v6 = WFLogForCategory(0);
      v13 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v13))
      {
        v14 = 136315138;
        v15 = "[WFClient interface]";
        _os_log_impl(&dword_273ECD000, v6, v13, "%s: cannot recreate WFInterface in WFClient because WiFiManagerClientRef is nil", &v14, 0xCu);
      }
    }

    interface = self->_interface;
  }

  v10 = interface;
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (WFClient)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WFClient sharedInstance];
  }

  v3 = _sharedWFClient;

  return v3;
}

void __26__WFClient_sharedInstance__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(WFClient);
  v1 = _sharedWFClient;
  _sharedWFClient = v0;

  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v5 = 136315138;
    v6 = "+[WFClient sharedInstance]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: WFClient sharedInstance is deprecated and should be removed.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  notify_cancel(self->_cellularOutrankWiFiNotificationToken);
  self->_cellularOutrankWiFiNotificationToken = -1;
  if (self->_manager)
  {
    [(WFClient *)self _unscheduleCallbacksWithManager:?];
    manager = self->_manager;
    if (manager)
    {
      CFRelease(manager);
      self->_manager = 0;
    }
  }

  interface = self->_interface;
  if (interface)
  {
    self->_interface = 0;
  }

  cInterface = self->_cInterface;
  if (cInterface)
  {
    [(CWFInterface *)cInterface invalidate];
    v7 = self->_cInterface;
    self->_cInterface = 0;
  }

  v8.receiver = self;
  v8.super_class = WFClient;
  [(WFClient *)&v8 dealloc];
}

- (WFClient)initWithCallbackRunLoop:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v6, v7, "initializing WFClient with callback run loop", buf, 2u);
  }

  v8 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
  v9 = [v8 requestParameters];
  [v9 setTimeout:120000000000];

  v27.receiver = self;
  v27.super_class = WFClient;
  v10 = [(WFClient *)&v27 init];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = *MEMORY[0x277CBECE8];
  v12 = WiFiManagerClientCreate();
  if (!v12)
  {
    [WFClient initWithCallbackRunLoop:buf];
LABEL_20:

LABEL_21:
    [WFClient initWithCallbackRunLoop:v10];
    v10 = 0;
    goto LABEL_17;
  }

  v10->_manager = v12;
  v10->_cellularOutrankWiFiNotificationToken = -1;
  [(WFClient *)v10 _registerForCellularRankingStateNotification];
  objc_storeStrong(&v10->_callbackRunLoop, a3);
  [(WFClient *)v10 _scheduleCallbacksWithManager:v10->_manager runLoop:v5];
  if (!v8)
  {
    [WFClient initWithCallbackRunLoop:buf];
    goto LABEL_20;
  }

  [v8 resume];
  [(WFClient *)v10 setCInterface:v8];
  v10->_powered = [v8 powerOn];
  manager = v10->_manager;
  v14 = [(WFClient *)v10 cInterface];
  [(WFClient *)v10 _setupDefaultInterfaceWithManager:manager coreWiFiInterface:v14];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:v10 selector:sel__managedConfigurationDidChange_ name:*MEMORY[0x277D25CA0] object:0];

  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
  {
    *buf = 136315394;
    *&buf[4] = "[WFClient initWithCallbackRunLoop:]";
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_273ECD000, v16, v17, "%s %@", buf, 0x16u);
  }

  v18 = dispatch_queue_create("com.apple.wifikit.wfclient-serial", 0);
  serialClientQueue = v10->_serialClientQueue;
  v10->_serialClientQueue = v18;

  v20 = dispatch_queue_create("WFWiFiStateMonitorQueue", 0);
  stateMonitorQueue = v10->_stateMonitorQueue;
  v10->_stateMonitorQueue = v20;

  if (objc_opt_class())
  {
    v22 = [MEMORY[0x277D243A0] shared];
    v10->_lockdownModeEnabled = [v22 enabled];
  }

  v23 = 2;
  if (v10->_lockdownModeEnabled)
  {
    v23 = -1;
  }

  v10->_askToJoinMode = v23;
  v10->_autoInstantHotspotJoinOption = 1;
  [(WFClient *)v10 reloadConfiguration];
  v24 = [(WFClient *)v10 cInterface];
  [(WFClient *)v10 _startMonitoringCoreWiFiEventsWithInterface:v24];

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

- (WFClient)init
{
  v3 = [MEMORY[0x277CBEB88] mainRunLoop];
  v4 = [(WFClient *)self initWithCallbackRunLoop:v3];

  return v4;
}

- (void)_startMonitoringCoreWiFiEventsWithInterface:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke;
  v12[3] = &unk_279EBCEA0;
  objc_copyWeak(&v13, &location);
  [v4 setInterruptionHandler:v12];
  v5 = [(WFClient *)self cInterface];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_2;
  v10[3] = &unk_279EBDEB0;
  objc_copyWeak(&v11, &location);
  [v5 setEventHandler:v10];

  v6 = [(WFClient *)self stateMonitorQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_2_91;
  v8[3] = &unk_279EBCFE0;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    *v4 = 0;
    _os_log_impl(&dword_273ECD000, v2, v3, "Core WiFi Service restarted.", v4, 2u);
  }

  [WeakRetained reloadConfiguration];
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_77);
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_75()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"WFClientServerRestartedNotification" object:0];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_2(uint64_t a1, void *a2)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 type];
  if (v5 > 18)
  {
    if (v5 > 27)
    {
      if (v5 != 30)
      {
        if (v5 != 28)
        {
          goto LABEL_74;
        }

        v22 = WFLogForCategory(0);
        v23 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v22 && os_log_type_enabled(v22, v23))
        {
          *buf = 138412290;
          v62 = v3;
          _os_log_impl(&dword_273ECD000, v22, v23, "CWFEventTypeWiFiUIStateFlagsChanged - event %@", buf, 0xCu);
        }

        if (![WeakRetained _updateWiFiUIFlagsState])
        {
          goto LABEL_74;
        }

LABEL_72:
        v8 = [WeakRetained interface];
        [v8 asyncCurrentNetwork:0];
LABEL_73:

        goto LABEL_74;
      }

      v26 = WFLogForCategory(0);
      v27 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v26 && os_log_type_enabled(v26, v27))
      {
        *buf = 138412290;
        v62 = v3;
        _os_log_impl(&dword_273ECD000, v26, v27, "CWFEventTypeKnownNetworkProfileChanged - event %@", buf, 0xCu);
      }

      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_89;
      v54[3] = &unk_279EBD290;
      v54[4] = WeakRetained;
      v55 = v3;
      dispatch_async(MEMORY[0x277D85CD0], v54);
      v11 = v55;
    }

    else
    {
      if ((v5 - 19) >= 2)
      {
        if (v5 == 27)
        {
          v24 = WFLogForCategory(0);
          v25 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v24 && os_log_type_enabled(v24, v25))
          {
            *buf = 138412290;
            v62 = v3;
            _os_log_impl(&dword_273ECD000, v24, v25, "CWFEventTypeUserSettingsChanged - event='%@'", buf, 0xCu);
          }

          [WeakRetained reloadConfiguration];
        }

        goto LABEL_74;
      }

      v9 = WFLogForCategory(0);
      v10 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v9 && os_log_type_enabled(v9, v10))
      {
        *buf = 138412290;
        v62 = v3;
        _os_log_impl(&dword_273ECD000, v9, v10, "CWFEventTypeIPChanged - event='%@'", buf, 0xCu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_88;
      block[3] = &unk_279EBCFE0;
      v57 = v3;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v11 = v57;
    }

    goto LABEL_74;
  }

  if (v5 > 5)
  {
    if (v5 == 6)
    {
      v49 = WFLogForCategory(0);
      v50 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v49 && os_log_type_enabled(v49, v50))
      {
        *buf = 138412290;
        v62 = v3;
        _os_log_impl(&dword_273ECD000, v49, v50, "CWFEventTypeLinkChanged - event %@", buf, 0xCu);
      }

      v51 = [WeakRetained interface];
      [v51 asyncCurrentNetwork:0];

      v52 = dispatch_time(0, 1000000000);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_78;
      v60[3] = &unk_279EBCFE0;
      v60[4] = WeakRetained;
      dispatch_after(v52, MEMORY[0x277D85CD0], v60);
      goto LABEL_74;
    }

    if (v5 != 7)
    {
      if (v5 == 13)
      {
        v12 = [v3 info];
        v8 = [v12 objectForKey:@"JoinStatus"];

        v13 = WFLogForCategory(0);
        v14 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
        {
          *buf = 138412290;
          v62 = v3;
          _os_log_impl(&dword_273ECD000, v13, v14, "CWFEventTypeJoinStatusChanged - event='%@'", buf, 0xCu);
        }

        if (v8)
        {
          v15 = [v8 error];
          v16 = [v15 code];

          if (v16)
          {
            v17 = WFLogForCategory(0);
            v18 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v17)
            {
              v19 = v17;
              if (os_log_type_enabled(v19, v18))
              {
                v20 = [v8 error];
                *buf = 136315394;
                v62 = "[WFClient _startMonitoringCoreWiFiEventsWithInterface:]_block_invoke";
                v63 = 2112;
                v64 = v20;
                _os_log_impl(&dword_273ECD000, v19, v18, "%s: updating asyncCurrentNetwork on join error %@", buf, 0x16u);
              }
            }

            v21 = [WeakRetained interface];
            [v21 asyncCurrentNetwork:0];
          }
        }

        goto LABEL_73;
      }

      goto LABEL_74;
    }

    v30 = WFLogForCategory(0);
    v31 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v30 && os_log_type_enabled(v30, v31))
    {
      *buf = 138412290;
      v62 = v3;
      _os_log_impl(&dword_273ECD000, v30, v31, "CWFEventTypeLinkQuality - event='%@'", buf, 0xCu);
    }

    v32 = [v3 info];
    v33 = [v32 objectForKey:@"LinkQualityMetric"];

    v34 = [WeakRetained interface];
    v35 = [v34 currentNetwork];

    if (v35)
    {
      v36 = [v33 RSSI];
      v37 = WFScaleRSSI(v36);
      v38 = 0;
      if (!v36)
      {
        v40 = 0;
        goto LABEL_83;
      }

      v39 = v37;
      v40 = 0;
      if (v37 == 0.0)
      {
LABEL_83:
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_84;
        v58[3] = &unk_279EBCFE0;
        v59 = v40;
        v53 = v40;
        dispatch_async(MEMORY[0x277D85CD0], v58);

        goto LABEL_74;
      }

      v41 = [WFLinkQuality alloc];
      v42 = [WeakRetained interface];
      v43 = [v42 currentNetwork];
      v44 = [v43 ssid];
      *&v45 = v39;
      v38 = [(WFLinkQuality *)v41 initWithSSID:v44 rssi:v36 scaledRSSI:v45];

      if (v38)
      {
        v65 = @"WFInterfaceLinkQualityKey";
        v66[0] = v38;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
        goto LABEL_83;
      }
    }

    else
    {
      v38 = 0;
    }

    v40 = 0;
    goto LABEL_83;
  }

  switch(v5)
  {
    case 1:
      v46 = WFLogForCategory(0);
      v47 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v46 && os_log_type_enabled(v46, v47))
      {
        *buf = 138412290;
        v62 = v3;
        _os_log_impl(&dword_273ECD000, v46, v47, "CWFEventTypePowerChanged - event %@", buf, 0xCu);
      }

      [WeakRetained _updatePowerState];
      goto LABEL_72;
    case 2:
      v28 = WFLogForCategory(0);
      v29 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v28 && os_log_type_enabled(v28, v29))
      {
        *buf = 138412290;
        v62 = v3;
        _os_log_impl(&dword_273ECD000, v28, v29, "CWFEventTypeSSIDChanged - event %@", buf, 0xCu);
      }

      goto LABEL_72;
    case 4:
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
      {
        *buf = 138412290;
        v62 = v3;
        _os_log_impl(&dword_273ECD000, v6, v7, "CWFEventTypeCountryCodeChanged - event %@", buf, 0xCu);
      }

      v8 = [WeakRetained interface];
      [v8 updateDeviceScanChannelsPerCurLocale];
      goto LABEL_73;
  }

LABEL_74:

  v48 = *MEMORY[0x277D85DE8];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_78(uint64_t a1)
{
  v1 = [*(a1 + 32) interface];
  [v1 asyncCurrentNetwork:0];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_84(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFInterfaceLinkQualityNotification" object:0 userInfo:*(a1 + 32)];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_88(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [*(a1 + 32) info];
  [v3 postNotificationName:@"WFInterfaceIPAddressChangedNotification" object:0 userInfo:v2];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_89(uint64_t a1)
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) info];
  [v4 postNotificationName:@"WFClientPreferredNetworksDidChangeNotification" object:v2 userInfo:v3];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_2_91(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2 && os_log_type_enabled(v2, v3))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFClient _startMonitoringCoreWiFiEventsWithInterface:]_block_invoke_2";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: Entering WFClient stateMonitorQueue", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_115;
  v5[3] = &unk_279EBDED8;
  v6 = *(a1 + 32);
  p_buf = &buf;
  [&unk_288304F30 enumerateObjectsUsingBlock:v5];

  _Block_object_dispose(&buf, 8);
  v4 = *MEMORY[0x277D85DE8];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_115(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 integerValue];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  LOBYTE(v4) = [v4 startMonitoringEventType:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if ((v4 & 1) == 0)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7)
    {
      v9 = v7;
      if (os_log_type_enabled(v9, v8))
      {
        v10 = [v3 integerValue];
        v11 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 136315650;
        v15 = "[WFClient _startMonitoringCoreWiFiEventsWithInterface:]_block_invoke";
        v16 = 2048;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_273ECD000, v9, v8, "%s: unable to register for event %lu - error %@", buf, 0x20u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setupDefaultInterfaceWithManager:(__WiFiManagerClient *)a3 coreWiFiInterface:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = WiFiManagerClientCopyDevices();
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
  {
    v20 = 136315394;
    v21 = "[WFClient _setupDefaultInterfaceWithManager:coreWiFiInterface:]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: devices %@", &v20, 0x16u);
  }

  if (v6)
  {
    v9 = [[WFInterface alloc] initWithDevice:[(WFInterface *)v6 objectAtIndex:0] coreWiFiInterface:v5];
    interface = self->_interface;
    self->_interface = v9;

    [(WFInterface *)self->_interface setWifiClient:self];
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v12))
    {
      v13 = self->_interface;
      v20 = 136315394;
      v21 = "[WFClient _setupDefaultInterfaceWithManager:coreWiFiInterface:]";
      v22 = 2112;
      v23 = v13;
      v14 = "%s: Setting up WFInterface %@ in WFClient";
      v15 = v11;
      v16 = v12;
      v17 = 22;
LABEL_14:
      _os_log_impl(&dword_273ECD000, v15, v16, v14, &v20, v17);
    }
  }

  else
  {
    v11 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v18))
    {
      v20 = 136315138;
      v21 = "[WFClient _setupDefaultInterfaceWithManager:coreWiFiInterface:]";
      v14 = "%s: failed to acquire WiFiDeviceClientRef";
      v15 = v11;
      v16 = v18;
      v17 = 12;
      goto LABEL_14;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleCallbacksWithManager:(__WiFiManagerClient *)a3 runLoop:(id)a4
{
  [a4 getCFRunLoop];
  v6 = *MEMORY[0x277CBF058];
  WiFiManagerClientScheduleWithRunLoop();
  WiFiManagerClientRegisterNotificationCallback();
  WiFiManagerClientRegisterDeviceAttachmentCallback();

  MEMORY[0x282187820](a3, _WiFiManagerClientManagedAppleIDCabllack, self);
}

- (void)_updateWithDeviceAttachment:(__WiFiDeviceClient *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315138;
    v15 = "[WFClient _updateWithDeviceAttachment:]";
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: Device became available", buf, 0xCu);
  }

  v7 = [(WFClient *)self interface];

  if (v7)
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
    {
      *buf = 136315138;
      v15 = "[WFClient _updateWithDeviceAttachment:]";
      _os_log_impl(&dword_273ECD000, v8, v9, "%s: interface already exists", buf, 0xCu);
    }

    v10 = [(WFClient *)self interface];
    [v10 setDevice:a3];
  }

  else
  {
    v10 = dispatch_get_global_queue(21, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__WFClient__updateWithDeviceAttachment___block_invoke;
    v13[3] = &unk_279EBCFB8;
    v13[4] = self;
    v13[5] = a3;
    dispatch_async(v10, v13);
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"WFClientInterfaceAvailableNotification" object:self];

  v12 = *MEMORY[0x277D85DE8];
}

void __40__WFClient__updateWithDeviceAttachment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cInterface];
  v3 = [v2 interfaceName];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WFClient__updateWithDeviceAttachment___block_invoke_2;
  block[3] = &unk_279EBD5D0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __40__WFClient__updateWithDeviceAttachment___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [WFInterface alloc];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) cInterface];
  v6 = [(WFInterface *)v3 initWithDevice:v4 coreWiFiInterface:v5 interfaceName:v2];
  [*(a1 + 40) setInterface:v6];

  v7 = *(a1 + 40);
  v8 = [v7 interface];
  [v8 setWifiClient:v7];
}

- (void)_updateWPA3Properties:(__WiFiManagerClient *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  [(WFClient *)self setWPA3PersonalEnabled:WiFiManagerClientIsWPA3PersonalSupported() != 0];
  [(WFClient *)self setWPA3EnterpriseEnabled:WiFiManagerClientIsWPA3EnterpriseSupported() != 0];
  [(WFClient *)self setMfpCapable:WiFiManagerClientIsMfpCapableDevice() != 0];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v8 = 136315906;
      v9 = "[WFClient _updateWPA3Properties:]";
      v10 = 1024;
      v11 = [(WFClient *)self isWPA3PersonalEnabled];
      v12 = 1024;
      v13 = [(WFClient *)self isWPA3EnterpriseEnabled];
      v14 = 1024;
      v15 = [(WFClient *)self isMfpCapable];
      _os_log_impl(&dword_273ECD000, v6, v5, "%s: WPA3 personal (%d) WPA3 enterprise (%d) MFP Capable (%d)", &v8, 0x1Eu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __35__WFClient__updateWiFiUIFlagsState__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientWiFiUIFlagsStateChangedNotification" object:*(a1 + 32)];
}

void __29__WFClient__updatePowerState__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientPowerStateChangedNotification" object:*(a1 + 32)];
}

- (OS_dispatch_queue)stateMonitorQueue
{
  stateMonitorQueue = self->_stateMonitorQueue;
  if (!stateMonitorQueue)
  {
    v4 = dispatch_queue_create("WFWiFiStateMonitorQueue", 0);
    v5 = self->_stateMonitorQueue;
    self->_stateMonitorQueue = v4;

    stateMonitorQueue = self->_stateMonitorQueue;
  }

  return stateMonitorQueue;
}

- (void)setPowered:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  if ([(WFClient *)self powered]== a3)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      v11 = @"OFF";
      if (v3)
      {
        v11 = @"ON";
      }

      *buf = 136315394;
      v17 = "[WFClient setPowered:]";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_273ECD000, v9, v10, "%s: no change to power state (%@)", buf, 0x16u);
    }
  }

  else
  {
    self->_powered = v3;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
    {
      v7 = @"OFF";
      if (v3)
      {
        v7 = @"ON";
      }

      *buf = 136315394;
      v17 = "[WFClient setPowered:]";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_273ECD000, v5, v6, "%s: setting power to %@", buf, 0x16u);
    }

    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__WFClient_setPowered___block_invoke;
    block[3] = &unk_279EBDF00;
    block[4] = self;
    v15 = v3;
    dispatch_async(v8, block);

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __23__WFClient_setPowered___block_invoke_124;
    v13[3] = &unk_279EBCFE0;
    v13[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __23__WFClient_setPowered___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cInterface];
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [v2 setPower:v3 error:&v10];
  v5 = v10;

  if ((v4 & 1) == 0)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
    {
      v8 = @"OFF";
      if (*(a1 + 40))
      {
        v8 = @"ON";
      }

      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_273ECD000, v6, v7, "failed to set power to %@, error: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __23__WFClient_setPowered___block_invoke_124(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientPowerStateChangedNotification" object:*(a1 + 32)];
}

- (void)setPoweredToggle:(BOOL)a3 handler:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(WFClient *)self powered]== v4)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v12))
    {
      v13 = @"OFF";
      if (v4)
      {
        v13 = @"ON";
      }

      *buf = 136315394;
      v19 = "[WFClient setPoweredToggle:handler:]";
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_273ECD000, v11, v12, "%s: no change to power state (%@)", buf, 0x16u);
    }
  }

  else
  {
    self->_powered = v4;
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
    {
      v9 = @"OFF";
      if (v4)
      {
        v9 = @"ON";
      }

      *buf = 136315394;
      v19 = "[WFClient setPoweredToggle:handler:]";
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_273ECD000, v7, v8, "%s: setting power to %@", buf, 0x16u);
    }

    v10 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__WFClient_setPoweredToggle_handler___block_invoke;
    block[3] = &unk_279EBDF50;
    v17 = v4;
    block[4] = self;
    v16 = v6;
    dispatch_async(v10, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __37__WFClient_setPoweredToggle_handler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = *(a1 + 48);
  v2 = [*(a1 + 32) cInterface];
  v3 = *(a1 + 48);
  v13 = 0;
  v4 = [v2 setPower:v3 error:&v13];
  v5 = v13;

  if ((v4 & 1) == 0)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
    {
      v8 = @"OFF";
      if (*(a1 + 48))
      {
        v8 = @"ON";
      }

      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_273ECD000, v6, v7, "failed to set power to %@, error: %@", buf, 0x16u);
    }

    v15[3] = *(a1 + 48) ^ 1;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__WFClient_setPoweredToggle_handler___block_invoke_125;
  v10[3] = &unk_279EBDF28;
  v11 = *(a1 + 40);
  v12 = &v14;
  v10[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v10);

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];
}

void __37__WFClient_setPoweredToggle_handler___block_invoke_125(void *a1)
{
  (*(a1[5] + 16))(a1[5], *(*(a1[6] + 8) + 24) != 0);
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientPowerStateChangedNotification" object:a1[4]];
}

- (void)asyncPowered:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WFClient *)self stateMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__WFClient_asyncPowered___block_invoke;
  block[3] = &unk_279EBDF78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __25__WFClient_asyncPowered___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2 && os_log_type_enabled(v2, v3))
  {
    *buf = 136315138;
    v10 = "[WFClient asyncPowered:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: Entering WFClient stateMonitorQueue", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePowerState];
  if (*(a1 + 32))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__WFClient_asyncPowered___block_invoke_126;
    v7[3] = &unk_279EBDA98;
    v5 = *(a1 + 32);
    v7[4] = WeakRetained;
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __25__WFClient_asyncPowered___block_invoke_126(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) powered];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)reloadConfiguration
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WFClient_reloadConfiguration__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __31__WFClient_reloadConfiguration__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    v29 = 136315138;
    v30 = "[WFClient reloadConfiguration]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: reloading WFClient configuration", &v29, 0xCu);
  }

  v4 = [*(a1 + 32) cInterface];
  v5 = [v4 userSettings];

  v6 = [*(a1 + 32) _askToJoinModeFromCoreWiFiAskToJoinMode:{objc_msgSend(v5, "askToJoinMode")}];
  v7 = *(a1 + 32);
  if (*(v7 + 24))
  {
    v8 = -1;
  }

  else
  {
    v8 = v6;
  }

  if (v8 != *(v7 + 56))
  {
    *(v7 + 56) = v8;
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v9 _notifyWiFiPropertyChanged:@"kWFClientUserInterfacePropertyATJKey" value:v10];

    v7 = *(a1 + 32);
  }

  v11 = [v7 _hotspotJoinOptionFromCoreWiFiAutoHotspotMode:{objc_msgSend(v5, "autoHotspotMode")}];
  v12 = *(a1 + 32);
  if (v11 != *(v12 + 64))
  {
    *(v12 + 64) = v11;
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    [v13 _notifyWiFiPropertyChanged:@"kWFClientUserInterfacePropertyHotspotAJKey" value:v14];
  }

  v15 = [v5 OSSpecificAttributes];

  if (v15)
  {
    v16 = [v5 OSSpecificAttributes];
    v17 = [v16 objectForKeyedSubscript:@"WAPIEnabled"];
    *(*(a1 + 32) + 11) = [v17 BOOLValue];

    v18 = [v5 OSSpecificAttributes];
    v19 = [v18 objectForKeyedSubscript:@"DiagnosticsEnabled"];
    *(*(a1 + 32) + 12) = [v19 BOOLValue];

    v20 = [v5 OSSpecificAttributes];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D29960]];
    *(*(a1 + 32) + 18) = [v21 BOOLValue];

    v22 = [v5 OSSpecificAttributes];
    v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D29820]];
    *(*(a1 + 32) + 20) = [v23 BOOLValue];

    v24 = [v5 OSSpecificAttributes];
    v25 = [v24 objectForKeyedSubscript:@"WiFiMobileAssetIsHealthMonitorDisabled"];
    *(*(a1 + 32) + 19) = [v25 BOOLValue];

    *(*(a1 + 32) + 21) = CFPreferencesGetAppBooleanValue(@"ShowWiFiUI", @"com.apple.wifi.ui", 0) != 0;
    *(*(a1 + 32) + 22) = CFPreferencesGetAppBooleanValue(@"ShowWiFiAwareUI", @"com.apple.wifi.ui", 0) != 0;
  }

  else
  {
    v26 = WFLogForCategory(0);
    v27 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v26 && os_log_type_enabled(v26, v27))
    {
      v29 = 138412290;
      v30 = v5;
      _os_log_impl(&dword_273ECD000, v26, v27, "nil OSSpecificAttributes from user settings='%@'", &v29, 0xCu);
    }
  }

  [*(a1 + 32) _updateNetworkRestrictionActive];
  [*(a1 + 32) _updateAirplaneModeStickiness];
  [*(a1 + 32) _updateWPA3Properties:*(*(a1 + 32) + 88)];
  [*(a1 + 32) _updatePowerModificationDisableState];
  [*(a1 + 32) _updateManagedAppleIDState];
  [*(a1 + 32) _updateCellularRankingState];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setWAPIEnabled:(BOOL)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  v8 = @"WAPIEnabled";
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(WFClient *)self _updateOSSpecificAttributes:v6];

  self->_WAPIEnabled = a3;
  v7 = *MEMORY[0x277D85DE8];
}

- (int64_t)_askToJoinModeFromCoreWiFiAskToJoinMode:(int64_t)a3
{
  if (a3 >= 4)
  {
    return 0;
  }

  else
  {
    return a3 - 1;
  }
}

- (int64_t)_coreWiFiAskToJoinModeFromAskToJoinMode:(int64_t)a3
{
  if ((a3 + 1) < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 1;
  }
}

- (void)setAskToJoinMode:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D02B60]);
  [v5 setAskToJoinMode:{-[WFClient _coreWiFiAskToJoinModeFromAskToJoinMode:](self, "_coreWiFiAskToJoinModeFromAskToJoinMode:", a3)}];
  v6 = [(WFClient *)self cInterface];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_288304A20, 0}];
  v13 = 0;
  v8 = [v6 applyUserSettings:v5 properties:v7 error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(WFClient *)self _notifyWiFiPropertyChanged:@"kWFClientUserInterfacePropertyATJKey" value:v10];
  }

  else
  {
    v10 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 134218242;
      v15 = a3;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_273ECD000, v10, v12, "failed to set ask to join to %ld, error='%@'", buf, 0x16u);
    }
  }

  self->_askToJoinMode = a3;
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasShownSBPickerDontAsk
{
  v2 = [(WFClient *)self cInterface];
  v3 = [v2 userSettings];

  v4 = [v3 OSSpecificAttributes];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D298F8]];

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHasShownSBPickerDontAsk:(BOOL)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277CBEC38];
  }

  else
  {
    v4 = MEMORY[0x277CBEC28];
  }

  v7 = *MEMORY[0x277D298F8];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(WFClient *)self _updateOSSpecificAttributes:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateNetworkRestrictionActive
{
  v11 = *MEMORY[0x277D85DE8];
  [(WFClient *)self manager];
  IsRestrictionPolicyActive = WiFiManagerClientIsRestrictionPolicyActive();
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[WFClient _updateNetworkRestrictionActive]";
    v9 = 1024;
    v10 = IsRestrictionPolicyActive != 0;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: restrictionState %d", &v7, 0x12u);
  }

  [(WFClient *)self setNetworkRestrictionActive:IsRestrictionPolicyActive != 0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setNetworkRestrictionActive:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    *v19 = "[WFClient setNetworkRestrictionActive:]";
    *&v19[8] = 1024;
    *v20 = v3;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: restriction %d", buf, 0x12u);
  }

  if (self->_networkRestrictionActive != v3)
  {
    if (v3)
    {
      v7 = [(WFClient *)self cInterface];
      v8 = [v7 userSettings];

      v9 = [v8 OSSpecificAttributes];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D29970]];
      whitelistingUUID = self->_whitelistingUUID;
      self->_whitelistingUUID = v10;
    }

    else
    {
      v8 = self->_whitelistingUUID;
      self->_whitelistingUUID = 0;
    }

    if (self->_networkRestrictionActive != v3)
    {
      v12 = WFLogForCategory(0);
      v13 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v12 && os_log_type_enabled(v12, v13))
      {
        networkRestrictionActive = self->_networkRestrictionActive;
        v15 = self->_whitelistingUUID;
        *buf = 67109634;
        *v19 = networkRestrictionActive;
        *&v19[4] = 1024;
        *&v19[6] = v3;
        *v20 = 2112;
        *&v20[2] = v15;
        _os_log_impl(&dword_273ECD000, v12, v13, "Restriction policy changed (was %d is %d) policyUUID='%@'", buf, 0x18u);
      }

      self->_networkRestrictionActive = v3;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__WFClient_setNetworkRestrictionActive___block_invoke;
      block[3] = &unk_279EBCFE0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __40__WFClient_setNetworkRestrictionActive___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientNetworkRestrictionPolicyDidChangeNotification" object:*(a1 + 32)];
}

- (void)_updatePowerModificationDisableState
{
  v12 = *MEMORY[0x277D85DE8];
  [(WFClient *)self manager];
  IsPowerModificationDisabled = WiFiManagerClientIsPowerModificationDisabled();
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    v6 = "Enabled";
    if (IsPowerModificationDisabled)
    {
      v6 = "Disabled";
    }

    v8 = 136315394;
    v9 = "[WFClient _updatePowerModificationDisableState]";
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: PowerModification is %s", &v8, 0x16u);
  }

  [(WFClient *)self setPowerModificationDisableState:IsPowerModificationDisabled != 0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPowerModificationDisableState:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_powerModificationDisabled == a3)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 136315138;
      v8 = "[WFClient setPowerModificationDisableState:]";
      _os_log_impl(&dword_273ECD000, v3, v4, "%s: No change in state", buf, 0xCu);
    }
  }

  else
  {
    self->_powerModificationDisabled = a3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__WFClient_setPowerModificationDisableState___block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __45__WFClient_setPowerModificationDisableState___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientPowerModificationStateChangedNotification" object:*(a1 + 32)];
}

- (void)_updateCellularRankingState
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(WFClient *)self cellularOutrankWiFiSymtpomsState];
  if (notify_get_state([(WFClient *)self cellularOutrankWiFiNotificationToken], &self->_cellularOutrankWiFiSymtpomsState))
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
    {
      *buf = 136315138;
      v22 = "[WFClient _updateCellularRankingState]";
      _os_log_impl(&dword_273ECD000, v4, v5, "%s: notify_get_state returned error", buf, 0xCu);
    }
  }

  else
  {
    cellularOutrankWiFiSymtpomsState = self->_cellularOutrankWiFiSymtpomsState;
    if (v3 == cellularOutrankWiFiSymtpomsState)
    {
      v7 = WFLogForCategory(0);
      v8 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
      {
        v9 = self->_cellularOutrankWiFiSymtpomsState;
        *buf = 136315394;
        v22 = "[WFClient _updateCellularRankingState]";
        v23 = 2048;
        v24 = v9;
        _os_log_impl(&dword_273ECD000, v7, v8, "%s: no change to cellular outranking state: %llu", buf, 0x16u);
      }
    }

    else
    {
      if (cellularOutrankWiFiSymtpomsState)
      {
        if ((cellularOutrankWiFiSymtpomsState & 0x40000000) != 0)
        {
          v10 = 5;
        }

        else
        {
          v11 = 3;
          v12 = 4;
          if ((cellularOutrankWiFiSymtpomsState & 0x800) == 0)
          {
            v12 = 2;
          }

          if ((cellularOutrankWiFiSymtpomsState & 0x8000) == 0)
          {
            v11 = v12;
          }

          if ((cellularOutrankWiFiSymtpomsState & 0x2000000) != 0)
          {
            v10 = 1;
          }

          else
          {
            v10 = v11;
          }
        }
      }

      else
      {
        v10 = 0;
      }

      [(WFClient *)self setCellularOutrankState:v10];
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v13)
      {
        v15 = v13;
        if (os_log_type_enabled(v15, v14))
        {
          if ([(WFClient *)self isCellularOutrankingWiFi])
          {
            v16 = "TRUE";
          }

          else
          {
            v16 = "FALSE";
          }

          v17 = [(WFClient *)self cellularOutrankState];
          v18 = self->_cellularOutrankWiFiSymtpomsState;
          *buf = 136315906;
          v22 = "[WFClient _updateCellularRankingState]";
          v23 = 2080;
          v24 = v16;
          v25 = 2048;
          v26 = v17;
          v27 = 2048;
          v28 = v18;
          _os_log_impl(&dword_273ECD000, v15, v14, "%s: symptoms cellular outrank recommendation is set to %s (%lu - %llu)", buf, 0x2Au);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__WFClient__updateCellularRankingState__block_invoke;
      block[3] = &unk_279EBCFE0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __39__WFClient__updateCellularRankingState__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v7 = @"kWFClientCellularOutrankWiFiStateKey";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "cellularOutrankState")}];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:@"WFClientCellularOutrankWiFiNotification" object:v3 userInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerForCellularRankingStateNotification
{
  if ([(WFClient *)self cellularOutrankWiFiNotificationToken]== -1)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_get_global_queue(21, 0);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __56__WFClient__registerForCellularRankingStateNotification__block_invoke;
    v4[3] = &unk_279EBDFA0;
    objc_copyWeak(&v5, &location);
    notify_register_dispatch("com.apple.symptoms.celloutrankrecommendation", &self->_cellularOutrankWiFiNotificationToken, v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __56__WFClient__registerForCellularRankingStateNotification__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    v6 = 136315138;
    v7 = "[WFClient _registerForCellularRankingStateNotification]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: cellular outranking state notification", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCellularRankingState];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateManagedAppleIDState
{
  v12 = *MEMORY[0x277D85DE8];
  [(WFClient *)self manager];
  IsManagedAppleID = WiFiManagerClientIsManagedAppleID();
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    v6 = "Non-Managed";
    if (IsManagedAppleID)
    {
      v6 = "Managed";
    }

    v8 = 136315394;
    v9 = "[WFClient _updateManagedAppleIDState]";
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: %s Account", &v8, 0x16u);
  }

  [(WFClient *)self setManagedAppleID:IsManagedAppleID != 0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setManagedAppleID:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_managedAppleID == a3)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 136315138;
      v8 = "[WFClient setManagedAppleID:]";
      _os_log_impl(&dword_273ECD000, v3, v4, "%s: No change in state", buf, 0xCu);
    }
  }

  else
  {
    self->_managedAppleID = a3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__WFClient_setManagedAppleID___block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __30__WFClient_setManagedAppleID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientManagedAppleIDStateChangedNotification" object:*(a1 + 32)];
}

- (void)_logWiFiManagerPropertyChange:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v9 = 136315650;
    v10 = "[WFClient _logWiFiManagerPropertyChange:value:]";
    v11 = 2112;
    v12 = v5;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: wifi manager property %@ changed to %d", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateAirplaneModeStickiness
{
  v19 = *MEMORY[0x277D85DE8];
  [(WFClient *)self manager];
  v3 = WiFiManagerClientCopyProperty();
  v4 = *MEMORY[0x277CBED28];
  if (v3)
  {
    v5 = v3 == v4;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (v3)
  {
    CFRelease(v3);
  }

  if (v6)
  {
    [(WFClient *)self manager];
    v7 = WiFiManagerClientCopyProperty();
    if (v7 != v4 || v7 == 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9 != self->_airplaneModeBehavior)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10)
    {
      v12 = v10;
      if (os_log_type_enabled(v12, v11))
      {
        v13 = off_279EBE060[v9];
        v15 = 136315394;
        v16 = "[WFClient _updateAirplaneModeStickiness]";
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_273ECD000, v12, v11, "%s: updating to %@", &v15, 0x16u);
      }
    }

    self->_airplaneModeBehavior = v9;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setAirplaneModeBehavior:(unint64_t)a3
{
  v32 = *MEMORY[0x277D85DE8];
  airplaneModeBehavior = self->_airplaneModeBehavior;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v9 = WFCurrentLogLevel() > 2 && v6 != 0;
  if (airplaneModeBehavior != a3)
  {
    if (v9 && os_log_type_enabled(v6, v7))
    {
      if (a3 > 2)
      {
        v11 = &stru_2882E4AD8;
      }

      else
      {
        v11 = off_279EBE060[a3];
      }

      *buf = 136315394;
      v29 = "[WFClient setAirplaneModeBehavior:]";
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_273ECD000, v6, v7, "%s: new state %@", buf, 0x16u);
    }

    if (a3 == 2)
    {
      v20 = @"KeepWiFiPoweredAirplaneModeEnabled";
      v21 = @"KeepWiFiPoweredAirplaneMode";
      v22 = MEMORY[0x277CBEC38];
      v23 = MEMORY[0x277CBEC38];
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v22;
      v14 = &v20;
    }

    else if (a3 == 1)
    {
      v16 = @"KeepWiFiPoweredAirplaneModeEnabled";
      v17 = @"KeepWiFiPoweredAirplaneMode";
      v18 = MEMORY[0x277CBEC38];
      v19 = MEMORY[0x277CBEC28];
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v18;
      v14 = &v16;
    }

    else
    {
      if (a3)
      {
        v6 = 0;
        goto LABEL_28;
      }

      v24 = @"KeepWiFiPoweredAirplaneModeEnabled";
      v25 = @"KeepWiFiPoweredAirplaneMode";
      v26 = MEMORY[0x277CBEC28];
      v27 = MEMORY[0x277CBEC28];
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v26;
      v14 = &v24;
    }

    v6 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:{2, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27}];
LABEL_28:
    [(WFClient *)self _updateOSSpecificAttributes:v6];
    self->_airplaneModeBehavior = a3;
    goto LABEL_29;
  }

  if (v9 && os_log_type_enabled(v6, v7))
  {
    if (a3 > 2)
    {
      v10 = &stru_2882E4AD8;
    }

    else
    {
      v10 = off_279EBE060[a3];
    }

    *buf = 136315394;
    v29 = "[WFClient setAirplaneModeBehavior:]";
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: stickiness already equal to %@", buf, 0x16u);
  }

LABEL_29:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setAutoJoinEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v8 = WFCurrentLogLevel() > 2 && v5 != 0;
  if (v3)
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "Enabled Auto Join", buf, 2u);
    }

    [(WFClient *)self manager];
    WiFiManagerClientEnable();
  }

  else
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *v9 = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "Disabled Auto Join", v9, 2u);
    }

    [(WFClient *)self manager];
    WiFiManagerClientDisable();
  }
}

- (void)setAutoInstantHotspotJoinOption:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D02B60]);
  [v5 setAutoHotspotMode:{-[WFClient _coreWiFiHotspotJoinOptionFromAutoHotspotMode:](self, "_coreWiFiHotspotJoinOptionFromAutoHotspotMode:", a3)}];
  v6 = [(WFClient *)self cInterface];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_288304A80, 0}];
  v13 = 0;
  v8 = [v6 applyUserSettings:v5 properties:v7 error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(WFClient *)self _notifyWiFiPropertyChanged:@"kWFClientUserInterfacePropertyHotspotAJKey" value:v10];
  }

  else
  {
    v10 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 134218242;
      v15 = a3;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_273ECD000, v10, v12, "failed to set auto hotspot join option to %ld, error='%@'", buf, 0x16u);
    }
  }

  self->_autoInstantHotspotJoinOption = a3;
  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)_hotspotJoinOptionFromCoreWiFiAutoHotspotMode:(int64_t)a3
{
  if (a3 > 3)
  {
    return 1;
  }

  else
  {
    return qword_273F75C00[a3];
  }
}

- (int64_t)_coreWiFiHotspotJoinOptionFromAutoHotspotMode:(int64_t)a3
{
  v3 = 1;
  if (a3)
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (void)asyncUserAutoJoinState:(id)a3
{
  v4 = a3;
  v5 = [(WFClient *)self stateMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WFClient_asyncUserAutoJoinState___block_invoke;
  v7[3] = &unk_279EBD9A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __35__WFClient_asyncUserAutoJoinState___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2 && os_log_type_enabled(v2, v3))
  {
    *buf = 136315138;
    v14 = "[WFClient asyncUserAutoJoinState:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: Entering WFClient stateMonitorQueue", buf, 0xCu);
  }

  v4 = [*(a1 + 32) cInterface];
  v5 = [v4 userAutoJoinDisabled];

  if (v5 == [*(a1 + 32) userAutoJoinState])
  {
    v6 = v5 ^ 1;
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
    {
      *buf = 136315394;
      v14 = "[WFClient asyncUserAutoJoinState:]_block_invoke";
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_273ECD000, v7, v8, "%s: user auto join state changed to %d", buf, 0x12u);
    }

    *(*(a1 + 32) + 23) = v6;
  }

  if (*(a1 + 40))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__WFClient_asyncUserAutoJoinState___block_invoke_161;
    v11[3] = &unk_279EBDA98;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __35__WFClient_asyncUserAutoJoinState___block_invoke_161(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) userAutoJoinState];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)setUserAutoJoinState:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WFClient_setUserAutoJoinState_completion___block_invoke;
  block[3] = &unk_279EBDF50;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __44__WFClient_setUserAutoJoinState_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 32) + 23);
    *buf = 136315650;
    v15 = "[WFClient setUserAutoJoinState:completion:]_block_invoke";
    v16 = 1024;
    v17 = v4;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: setting user auto join state to %d (current state=%d)", buf, 0x18u);
  }

  *(*(a1 + 32) + 23) = *(a1 + 48);
  v6 = [*(a1 + 32) cInterface];
  v7 = *(a1 + 48);
  v13 = 0;
  [v6 setUserAutoJoinDisabled:(v7 & 1) == 0 error:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_273ECD000, v9, v10, "Failed to set user auto join state, error: %@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_userAutoJoinStateDidChange:(BOOL)a3 info:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
  {
    v11 = 136315650;
    v12 = "[WFClient _userAutoJoinStateDidChange:info:]";
    v13 = 1024;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: enabled %d info %@", &v11, 0x1Cu);
  }

  self->_userAutoJoinState = v4;
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"WFClientUserAutoJoinStateChangedNotification" object:self];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_managedConfigurationDidChange:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 userInfo];
      *buf = 136315394;
      v17 = "[WFClient _managedConfigurationDidChange:]";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "%s- userInfo %@", buf, 0x16u);
    }
  }

  v9 = dispatch_time(0, 500000000);
  v10 = [(WFClient *)self serialClientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WFClient__managedConfigurationDidChange___block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_after(v9, v10, block);

  v11 = dispatch_time(0, 100000000);
  v12 = [(WFClient *)self serialClientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__WFClient__managedConfigurationDidChange___block_invoke_2;
  v14[3] = &unk_279EBCFE0;
  v14[4] = self;
  dispatch_after(v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)asyncMISState:(id)a3
{
  v4 = a3;
  v5 = [(WFClient *)self stateMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__WFClient_asyncMISState___block_invoke;
  v7[3] = &unk_279EBD9A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __26__WFClient_asyncMISState___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2 && os_log_type_enabled(v2, v3))
  {
    *buf = 136315138;
    v12 = "[WFClient asyncMISState:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: Entering WFClient stateMonitorQueue", buf, 0xCu);
  }

  [*(a1 + 32) manager];
  MISState = WiFiManagerClientGetMISState();
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v12 = "[WFClient asyncMISState:]_block_invoke";
    v13 = 1024;
    v14 = MISState != 0;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: MIS state %d", buf, 0x12u);
  }

  if (*(a1 + 40))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__WFClient_asyncMISState___block_invoke_163;
    v8[3] = &unk_279EBD980;
    v9 = *(a1 + 40);
    v10 = MISState != 0;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setMISState:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v12 = "[WFClient setMISState:]";
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: setting MIS state %d", buf, 0x12u);
  }

  v7 = dispatch_get_global_queue(21, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __24__WFClient_setMISState___block_invoke;
  v9[3] = &unk_279EBDF00;
  v9[4] = self;
  v10 = v3;
  dispatch_async(v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __24__WFClient_setMISState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = *(a1 + 40);

  return MEMORY[0x282187888](v2, v3);
}

- (void)asyncMISDiscoveryState:(id)a3
{
  v4 = a3;
  v5 = [(WFClient *)self stateMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WFClient_asyncMISDiscoveryState___block_invoke;
  v7[3] = &unk_279EBD9A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __35__WFClient_asyncMISDiscoveryState___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2 && os_log_type_enabled(v2, v3))
  {
    *buf = 136315138;
    v12 = "[WFClient asyncMISDiscoveryState:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: Entering WFClient stateMonitorQueue", buf, 0xCu);
  }

  [*(a1 + 32) manager];
  MISDiscoveryState = WiFiManagerClientGetMISDiscoveryState();
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v12 = "[WFClient asyncMISDiscoveryState:]_block_invoke";
    v13 = 1024;
    v14 = MISDiscoveryState != 0;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: MIS discovery state %d", buf, 0x12u);
  }

  if (*(a1 + 40))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__WFClient_asyncMISDiscoveryState___block_invoke_164;
    v8[3] = &unk_279EBD980;
    v9 = *(a1 + 40);
    v10 = MISDiscoveryState != 0;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setMISDiscoveryState:(BOOL)a3 immediateDisable:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    *buf = 136315650;
    v15 = "[WFClient setMISDiscoveryState:immediateDisable:]";
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v4;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: setting MIS discovery state %d (immediateDisable %d)", buf, 0x18u);
  }

  v9 = dispatch_get_global_queue(21, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__WFClient_setMISDiscoveryState_immediateDisable___block_invoke;
  v11[3] = &unk_279EBD620;
  v11[4] = self;
  v12 = v5;
  v13 = v4;
  dispatch_async(v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __50__WFClient_setMISDiscoveryState_immediateDisable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);

  return MEMORY[0x282187878](v2, v3, v4);
}

- (void)dispatchCertificateTrustAction:(int64_t)a3 profile:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [v6 ssid];
      *v13 = 136315650;
      *&v13[4] = "[WFClient dispatchCertificateTrustAction:profile:]";
      v14 = 2048;
      v15 = a3;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_273ECD000, v9, v8, "%s: dispatching trust action %lu for network %@", v13, 0x20u);
    }
  }

  if (v6)
  {
    v11 = [v6 networkAttributes];
    [(WFClient *)self manager];
    WiFiManagerClientDispatchNotificationResponse();
  }

  else
  {
    [WFClient dispatchCertificateTrustAction:v13 profile:?];
    v11 = *v13;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dispatchJoinRecommendationAction:(int64_t)a3 profile:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [v6 ssid];
      *v14 = 136315650;
      *&v14[4] = "[WFClient dispatchJoinRecommendationAction:profile:]";
      v15 = 1024;
      v16 = a3;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_273ECD000, v9, v8, "%s: dispatching auto join action %d for network %@", v14, 0x1Cu);
    }
  }

  if (v6)
  {
    if (a3 <= 3)
    {
      v11 = dword_273F75C30[a3];
    }

    v12 = [v6 networkAttributes];
    [(WFClient *)self manager];
    WiFiManagerClientDispatchNotificationResponse();
  }

  else
  {
    [WFClient dispatchJoinRecommendationAction:v14 profile:?];
    v12 = *v14;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dispatchAskToJoinAction:(unint64_t)a3 notificationId:(unsigned int)a4 network:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v9 && os_log_type_enabled(v9, v10))
  {
    v16 = 136315650;
    v17 = "[WFClient dispatchAskToJoinAction:notificationId:network:]";
    v18 = 2048;
    v19 = a3;
    v20 = 1024;
    v21 = a4;
    _os_log_impl(&dword_273ECD000, v9, v10, "%s: dispatching ask to join action %lu for notificationId %d", &v16, 0x1Cu);
  }

  if (a3 <= 2)
  {
    v11 = dword_273F75C20[a3];
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_7:
  v12 = [v8 attributes];
  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
  {
    v16 = 136315394;
    v17 = "[WFClient dispatchAskToJoinAction:notificationId:network:]";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_273ECD000, v13, v14, "%s: network %@", &v16, 0x16u);
  }

LABEL_14:
  [(WFClient *)self manager];
  WiFiManagerClientDispatchNotificationResponse();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setClientTypeAsForeground
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    v7 = "[WFClient setClientTypeAsForeground]";
    _os_log_impl(&dword_273ECD000, v3, v4, "%s: Setting client type as foreground", &v6, 0xCu);
  }

  [(WFClient *)self manager];
  WiFiManagerClientSetType();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_notifyWiFiPropertyChanged:(id)a3 value:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8 && os_log_type_enabled(v8, v9))
  {
    *buf = 136315650;
    v17 = "[WFClient _notifyWiFiPropertyChanged:value:]";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_273ECD000, v8, v9, "%s: key='%@' value='%@'", buf, 0x20u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__WFClient__notifyWiFiPropertyChanged_value___block_invoke;
  block[3] = &unk_279EBD268;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v12 = *MEMORY[0x277D85DE8];
}

void __45__WFClient__notifyWiFiPropertyChanged_value___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = a1[4];
  v4 = a1[6];
  v7 = a1[5];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:@"WFClientUserInterfacePropertyChangedNotification" object:v3 userInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)hardwareMACAddress
{
  [(WFClient *)self manager];
  v2 = *MEMORY[0x277D29800];
  v3 = WiFiManagerClientCopyProperty();
  if (!v3 || (v4 = v3, WFConvertEthernetNetworkAddressToString(v3), v5 = objc_claimAutoreleasedReturnValue(), CFRelease(v4), !v5))
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
    {
      *v9 = 0;
      _os_log_impl(&dword_273ECD000, v6, v7, "Fail to get hardware MAC Address!", v9, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)setRandomAddressModeForNetwork:(id)a3 mode:(unint64_t)a4 randomMAC:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = dispatch_get_global_queue(21, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__WFClient_setRandomAddressModeForNetwork_mode_randomMAC___block_invoke;
  v13[3] = &unk_279EBDFC8;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v17 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

void __58__WFClient_setRandomAddressModeForNetwork_mode_randomMAC___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v17 = *(a1 + 48);
    v18 = *(*(a1 + 40) + 88);
    v19 = *(a1 + 56);
    v20 = WiFiManagerClientSetPrivateMacPrefForScanRecord();
    v9 = WFLogForCategory(8uLL);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel())
    {
      v21 = v9 == 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = !v21;
    if (v20)
    {
      if (v22 && os_log_type_enabled(v9, v10))
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }

    if (!v22 || !os_log_type_enabled(v9, v10))
    {
      goto LABEL_31;
    }

LABEL_29:
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = *(a1 + 32);
    v27 = 138412802;
    v28 = v23;
    v29 = 2048;
    v30 = v24;
    v31 = 2112;
    v32 = v25;
    v16 = "failed to save private address for '%@' (mode=%lu, address='%@')";
    goto LABEL_30;
  }

  v3 = ether_aton([v2 UTF8String]);
  v4 = CFDataCreate(0, v3->octet, 6);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 40) + 88);
  v7 = *(a1 + 56);
  v8 = WiFiManagerClientSetPrivateMacPrefForScanRecord();
  if (v4)
  {
    CFRelease(v4);
  }

  v9 = WFLogForCategory(8uLL);
  v10 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v8)
  {
    if (!v12 || !os_log_type_enabled(v9, v10))
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v12 && os_log_type_enabled(v9, v10))
  {
LABEL_13:
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 32);
    v27 = 138412802;
    v28 = v13;
    v29 = 2048;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    v16 = "saved private address for '%@' (mode=%lu, address='%@')";
LABEL_30:
    _os_log_impl(&dword_273ECD000, v9, v10, v16, &v27, 0x20u);
  }

LABEL_31:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setEnableRandomMACForNetwork:(id)a3 enable:(BOOL)a4 randomMAC:(id)a5
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [(WFClient *)self setRandomAddressModeForNetwork:a3 mode:v5 randomMAC:a5];
}

- (id)newRandomMACAddressForSSID:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(WFClient *)self manager];
  v5 = *MEMORY[0x277D29800];
  v6 = WiFiManagerClientCopyProperty();
  if (!v6)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_273ECD000, v7, v8, "Fail to read hardwareData", &v23, 2u);
    }
  }

  [(WFClient *)self manager];
  v9 = *MEMORY[0x277D29798];
  v10 = WiFiManagerClientCopyProperty();
  if (!v10)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v12))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_273ECD000, v11, v12, "Fail to read specifierData", &v23, 2u);
    }
  }

  [(WFClient *)self manager];
  v13 = *MEMORY[0x277D298F0];
  v14 = WiFiManagerClientCopyProperty();
  manager = self->_manager;
  PrivateMacAddress = WiFiManagerClientCreatePrivateMacAddress();
  v17 = PrivateMacAddress;
  if (PrivateMacAddress)
  {
    v18 = WFConvertEthernetNetworkAddressToString(PrivateMacAddress);
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v21 = WFLogForCategory(0);
  v22 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v21 && os_log_type_enabled(v21, v22))
  {
    v23 = 138412290;
    v24 = v4;
    _os_log_impl(&dword_273ECD000, v21, v22, "Fail to generate random MAC for ssid: %@", &v23, 0xCu);
  }

  v18 = 0;
  if (v6)
  {
LABEL_15:
    CFRelease(v6);
  }

LABEL_16:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_updateOSSpecificAttributes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D02B60]);
  [v5 setOSSpecificAttributes:v4];
  v6 = [(WFClient *)self cInterface];
  v12 = 0;
  v7 = [v6 applyUserSettings:v5 properties:0 error:&v12];
  v8 = v12;

  if ((v7 & 1) == 0)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      *buf = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_273ECD000, v9, v10, "failed to set OSSpecificAttributes for %@, error='%@'", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_unscheduleCallbacksWithManager:(__WiFiManagerClient *)a3
{
  if (a3)
  {
    v4 = [(WFClient *)self callbackRunLoop];
    [v4 getCFRunLoop];
    v5 = *MEMORY[0x277CBF058];
    WiFiManagerClientUnscheduleFromRunLoop();

    [(WFClient *)self setCallbackRunLoop:0];
    OUTLINED_FUNCTION_0_7();
    WiFiManagerClientRegisterNotificationCallback();
    OUTLINED_FUNCTION_0_7();
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    OUTLINED_FUNCTION_0_7();
    WiFiManagerClientRegisterUserAutoJoinStateChangedCallback();
    OUTLINED_FUNCTION_0_7();
    WiFiManagerClientRegisterPreferredNetworksChangedCallback();
    v6 = OUTLINED_FUNCTION_0_7();

    MEMORY[0x282187820](v6, v7, v8);
  }
}

- (BOOL)_updateWiFiUIFlagsState
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_manager && (-[WFClient cInterface](self, "cInterface"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 wifiUIStateFlags], v3, self->_wifiUIStateFlags != v4))
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
    {
      wifiUIStateFlags = self->_wifiUIStateFlags;
      *buf = 136315650;
      v16 = "[WFClient _updateWiFiUIFlagsState]";
      v17 = 2048;
      v18 = wifiUIStateFlags;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&dword_273ECD000, v6, v7, "%s: wifiUIStateFlags changed from %lu to %lu", buf, 0x20u);
    }

    self->_wifiUIStateFlags = v4;
    OUTLINED_FUNCTION_1_4();
    v11 = 3221225472;
    v12 = __35__WFClient__updateWiFiUIFlagsState__block_invoke;
    v13 = &unk_279EBCFE0;
    v14 = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updatePowerState
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_manager)
  {
    v3 = [(WFClient *)self cInterface];
    v4 = [v3 powerOn];

    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
    {
      *buf = 136315394;
      v14 = "[WFClient _updatePowerState]";
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_273ECD000, v5, v6, "%s: current power %d", buf, 0x12u);
    }

    if (self->_powered != v4)
    {
      self->_powered = v4;
      OUTLINED_FUNCTION_1_4();
      v9 = 3221225472;
      v10 = __29__WFClient__updatePowerState__block_invoke;
      v11 = &unk_279EBCFE0;
      v12 = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithCallbackRunLoop:(void *)a1 .cold.1(void *a1)
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = v1;
}

- (void)initWithCallbackRunLoop:(void *)a1 .cold.2(void *a1)
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = v1;
}

- (void)initWithCallbackRunLoop:(void *)a1 .cold.3(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    CFRelease(v2);
    a1[11] = 0;
  }
}

- (void)dispatchCertificateTrustAction:(void *)a1 profile:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a1 = v1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)dispatchJoinRecommendationAction:(void *)a1 profile:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a1 = v1;
  v8 = *MEMORY[0x277D85DE8];
}

@end