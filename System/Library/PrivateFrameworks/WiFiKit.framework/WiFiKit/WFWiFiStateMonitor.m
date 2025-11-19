@interface WFWiFiStateMonitor
- (NSString)identifier;
- (WFWiFiStateMonitor)initWithClient:(id)a3 handler:(id)a4;
- (id)description;
- (void)_asyncGetCurrentNetwork:(id)a3;
- (void)_autoJoinStateChanged:(id)a3;
- (void)_carPlayNetworkTypeDidChange:(id)a3;
- (void)_clientConnectionRestarted:(id)a3;
- (void)_hostAPStateChanged:(id)a3;
- (void)_interfaceBecameAvailable:(id)a3;
- (void)_linkDidChange:(id)a3;
- (void)_linkQualityDidChange:(id)a3;
- (void)_notifyStateChanged:(int64_t)a3 newState:(int64_t)a4;
- (void)_outrankStateDidChange:(id)a3;
- (void)_powerStateDidChange:(id)a3;
- (void)_registerInterfaceObserversForInterface:(id)a3;
- (void)_runManagerCallbackThread;
- (void)_spawnManagerCallbackThread;
- (void)_updateState:(id)a3;
- (void)_updateWiFiUIState:(id)a3;
- (void)_wifiUIFlagsStateChanged:(id)a3;
- (void)dealloc;
- (void)setState:(int64_t)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation WFWiFiStateMonitor

- (WFWiFiStateMonitor)initWithClient:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = WFWiFiStateMonitor;
  v9 = [(WFWiFiStateMonitor *)&v21 init];
  v10 = v9;
  if (!v9)
  {
    v11 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v9->_client, a3);
  v11 = WFCopyProcessIdentifier();
  if (![(__CFString *)v11 isEqualToString:@"com.apple.TVRemote"])
  {
    v13 = dispatch_queue_create("WFWiFiStateMonitor-Queue", 0);
    v14 = *(v10 + 6);
    *(v10 + 6) = v13;

    if (*(v10 + 6))
    {
      v15 = dispatch_queue_create("WiFiUIStateFlags-Queue", 0);
      v16 = *(v10 + 7);
      *(v10 + 7) = v15;

      if (*(v10 + 7))
      {
        objc_storeStrong(v10 + 12, v11);
        *(v10 + 2) = 0;
        v17 = _Block_copy(v8);
        v18 = *(v10 + 3);
        *(v10 + 3) = v17;

        [v10 startMonitoring];
LABEL_7:
        v12 = v10;
        v10 = v12;
        goto LABEL_8;
      }
    }

LABEL_10:

    v10 = 0;
    goto LABEL_7;
  }

  v12 = [[WFMobileWiFiStateMonitor alloc] initWithHandler:v8];
LABEL_8:
  v19 = v12;

  return v19;
}

- (void)startMonitoring
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(WFWiFiStateMonitor *)self monitoring])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 138412290;
      v19 = self;
      _os_log_impl(&dword_273ECD000, v3, v4, "%@: already monitoring", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__powerStateDidChange_ name:@"WFClientPowerStateChangedNotification" object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__wifiUIFlagsStateChanged_ name:@"WFClientWiFiUIFlagsStateChangedNotification" object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__clientConnectionRestarted_ name:@"WFClientServerRestartedNotification" object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel__interfaceBecameAvailable_ name:@"WFClientInterfaceAvailableNotification" object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel__autoJoinStateChanged_ name:@"WFClientUserAutoJoinStateChangedNotification" object:0];

  v10 = [(WFWiFiStateMonitor *)self client];

  if (!v10)
  {
    objc_initWeak(buf, self);
    v14 = [(WFWiFiStateMonitor *)self internalQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __37__WFWiFiStateMonitor_startMonitoring__block_invoke;
    v16[3] = &unk_279EBCDE8;
    objc_copyWeak(&v17, buf);
    v16[4] = self;
    dispatch_async(v14, v16);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
LABEL_12:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v11 = [(WFWiFiStateMonitor *)self client];
  v12 = [v11 interface];
  [(WFWiFiStateMonitor *)self _registerInterfaceObserversForInterface:v12];

  [(WFWiFiStateMonitor *)self _updateState];
  v13 = *MEMORY[0x277D85DE8];

  [(WFWiFiStateMonitor *)self setMonitoring:1];
}

void __37__WFWiFiStateMonitor_startMonitoring__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) _spawnManagerCallbackThread];
    v3 = [WFClient alloc];
    v4 = [*(a1 + 32) callbackRunLoop];
    v5 = [(WFClient *)v3 initWithCallbackRunLoop:v4];
    [WeakRetained setClient:v5];

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        v9 = *(a1 + 32);
        v10 = [v9 client];
        *buf = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_273ECD000, v8, v7, "%@: client %@", buf, 0x16u);
      }
    }

    v11 = [WeakRetained client];
    v12 = [v11 interface];
    [WeakRetained _registerInterfaceObserversForInterface:v12];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__WFWiFiStateMonitor_startMonitoring__block_invoke_15;
    block[3] = &unk_279EBCFE0;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __37__WFWiFiStateMonitor_startMonitoring__block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) _updateState];
  v2 = *(a1 + 32);

  return [v2 setMonitoring:1];
}

- (void)_spawnManagerCallbackThread
{
  v3 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel__runManagerCallbackThread object:0];
  [v3 start];
  [(WFWiFiStateMonitor *)self setCallbackThread:v3];
  [(WFWiFiStateMonitor *)self performSelector:sel_class onThread:v3 withObject:0 waitUntilDone:1];
}

- (void)_runManagerCallbackThread
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CCACC8] currentThread];
  [v4 setName:@"WFWiFiStateMonitor callback thread"];

  self->_callbackRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  v5 = [MEMORY[0x277CBEB00] port];
  v6 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v5 scheduleInRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v7 run];
}

- (void)_registerInterfaceObserversForInterface:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v17 = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%@: using interface %@", &v17, 0x16u);
  }

  if (!v4)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7)
    {
      v9 = v7;
      if (os_log_type_enabled(v9, v8))
      {
        v10 = [(WFWiFiStateMonitor *)self client];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_273ECD000, v9, v8, "%@: nil interface (client %@)", &v17, 0x16u);
      }
    }
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:self selector:sel__hostAPStateChanged_ name:@"WFInterfaceHostAPStateChangeNotification" object:0];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel__linkDidChange_ name:@"WFInterfaceNetworkChangedNotification" object:v4];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel__linkQualityDidChange_ name:@"WFInterfaceLinkQualityNotification" object:v4];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:self selector:sel__outrankStateDidChange_ name:@"WFClientCellularOutrankWiFiNotification" object:0];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:self selector:sel__carPlayNetworkTypeDidChange_ name:@"WFInterfaceCarPlayNetworkTypeDidChangeNotification" object:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoring
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(WFWiFiStateMonitor *)self monitoring])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self];

    self->_state = 0;
    v4 = *MEMORY[0x277D85DE8];

    [(WFWiFiStateMonitor *)self setMonitoring:0];
  }

  else
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_273ECD000, v5, v6, "%@: not monitoring", &v8, 0xCu);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)dealloc
{
  [(WFWiFiStateMonitor *)self stopMonitoring];
  v3 = [(WFWiFiStateMonitor *)self callbackThread];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = WFWiFiStateMonitor;
  [(WFWiFiStateMonitor *)&v4 dealloc];
}

- (void)_updateState:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v18 = self;
    _os_log_impl(&dword_273ECD000, v5, v6, "%@: updating state", buf, 0xCu);
  }

  v7 = [(WFWiFiStateMonitor *)self client];
  v8 = [v7 cInterface];

  if (v8)
  {
    v9 = [(WFWiFiStateMonitor *)self client];

    if (v9)
    {
      if (_os_feature_enabled_impl())
      {
        [(WFWiFiStateMonitor *)self _updateWiFiUIState:v4];
      }

      else
      {
        v13 = [(WFWiFiStateMonitor *)self client];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __35__WFWiFiStateMonitor__updateState___block_invoke;
        v15[3] = &unk_279EBE0B0;
        v15[4] = self;
        v16 = v4;
        [v13 asyncPowered:v15];
      }

      goto LABEL_21;
    }

    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v18 = self;
      v12 = "%@: client is unavailable";
      goto LABEL_17;
    }
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v18 = self;
      v12 = "%@: interface is unavailable";
LABEL_17:
      _os_log_impl(&dword_273ECD000, v10, v11, v12, buf, 0xCu);
    }
  }

  [(WFWiFiStateMonitor *)self setState:0];
  [(WFWiFiStateMonitor *)self setAssociatedToCarPlayOnly:0];
  if (v4)
  {
    (*(v4 + 2))(v4, [(WFWiFiStateMonitor *)self state]);
  }

LABEL_21:

  v14 = *MEMORY[0x277D85DE8];
}

void __35__WFWiFiStateMonitor__updateState___block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: inside asyncPowered block, powered=%d", buf, 0x12u);
  }

  if (a2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__5;
    v18 = __Block_byref_object_dispose__5;
    v19 = 0;
    v7 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__WFWiFiStateMonitor__updateState___block_invoke_41;
    v13[3] = &unk_279EBE0D8;
    v13[4] = v7;
    v15 = buf;
    v14 = *(a1 + 40);
    [v7 _asyncGetCurrentNetwork:v13];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&dword_273ECD000, v8, v9, "%@: power is off", buf, 0xCu);
    }

    [*(a1 + 32) setState:1];
    [*(a1 + 32) setLinkQuality:0];
    [*(a1 + 32) setAssociatedToCarPlayOnly:0];
    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, [*(a1 + 32) state]);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __35__WFWiFiStateMonitor__updateState___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
  {
    v10 = *(a1 + 32);
    *buf = 138412290;
    v79 = v10;
    _os_log_impl(&dword_273ECD000, v8, v9, "%@: inside _asyncGetCurrentNetwork block", buf, 0xCu);
  }

  v11 = [*(a1 + 32) currentNetwork];
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v13))
  {
    v14 = *(a1 + 32);
    v15 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412802;
    v79 = v14;
    v80 = 2112;
    v81 = v15;
    v82 = 2112;
    v83 = v7;
    _os_log_impl(&dword_273ECD000, v12, v13, "%@: network %@ profile %@", buf, 0x20u);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if ([v7 carPlayNetworkType] == 1)
    {
      v16 = WFLogForCategory(0);
      v17 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
      {
        v18 = *(a1 + 32);
        *buf = 138412290;
        v79 = v18;
        _os_log_impl(&dword_273ECD000, v16, v17, "%@: associated to CarPlay only network", buf, 0xCu);
      }

      [*(a1 + 32) setState:2];
      [*(a1 + 32) setAssociatedToCarPlayOnly:1];
      v19 = [*(a1 + 32) linkQuality];

      if (v19)
      {
        v20 = WFLogForCategory(0);
        v21 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v20)
        {
          v22 = v20;
          if (os_log_type_enabled(v22, v21))
          {
            v23 = *(a1 + 32);
            v24 = [v23 linkQuality];
            *buf = 138412546;
            v79 = v23;
            v80 = 2112;
            v81 = v24;
            _os_log_impl(&dword_273ECD000, v22, v21, "%@: clearing out link quality='%@' due to CarPlay only network", buf, 0x16u);
          }
        }

        [*(a1 + 32) setLinkQuality:0];
      }

      goto LABEL_67;
    }

    [*(a1 + 32) setAssociatedToCarPlayOnly:0];
    v32 = [*(a1 + 32) linkQuality];
    if (!v32)
    {
      goto LABEL_30;
    }

    v33 = v32;
    v34 = [*(a1 + 32) linkQuality];
    v35 = [v34 ssid];
    v36 = [*(*(*(a1 + 48) + 8) + 40) networkName];
    v37 = [v35 isEqualToString:v36];

    if ((v37 & 1) == 0)
    {
LABEL_30:
      v38 = WFLogForCategory(0);
      v39 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v38)
      {
        v40 = v38;
        if (os_log_type_enabled(v40, v39))
        {
          v41 = *(a1 + 32);
          v42 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          *buf = 138412546;
          v79 = v41;
          v80 = 2112;
          v81 = v42;
          _os_log_impl(&dword_273ECD000, v40, v39, "%@: creating link quality for network %@", buf, 0x16u);
        }
      }

      v43 = [v7 displayFriendlyName];
      if (!v43)
      {
        v43 = [*(*(*(a1 + 48) + 8) + 40) networkName];
      }

      v44 = [WFLinkQuality alloc];
      LODWORD(v45) = 1.0;
      v46 = [(WFLinkQuality *)v44 initWithSSID:v43 rssi:0 scaledRSSI:v45];
      [*(a1 + 32) setLinkQuality:v46];
    }

    v47 = [*(a1 + 32) client];
    v48 = [v47 isCellularOutrankingWiFi];

    if (v48)
    {
      v49 = WFLogForCategory(0);
      v50 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v49)
      {
        v51 = v49;
        if (os_log_type_enabled(v51, v50))
        {
          v52 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          *buf = 138412290;
          v79 = v52;
          _os_log_impl(&dword_273ECD000, v51, v50, "associated to '%@' but cellular is outranking WiFi", buf, 0xCu);
        }
      }

      [*(a1 + 32) setState:2];
      goto LABEL_67;
    }

    [*(a1 + 32) setState:4];
    v53 = *(*(*(a1 + 48) + 8) + 40);
    if (v53 && v11)
    {
      v54 = [v53 networkName];
      if (!v54)
      {
        goto LABEL_66;
      }

      v55 = v54;
      v56 = [v11 networkName];
      if (!v56)
      {

        goto LABEL_66;
      }

      v57 = v56;
      v58 = [*(*(*(a1 + 48) + 8) + 40) networkName];
      v59 = [v11 networkName];
      v60 = [v58 isEqual:v59];

      if (v60)
      {
LABEL_66:
        [*(a1 + 32) setCurrentNetwork:*(*(*(a1 + 48) + 8) + 40)];
LABEL_67:
        v74 = *(a1 + 40);
        if (v74)
        {
          (*(v74 + 16))(v74, [*(a1 + 32) state]);
        }

        goto LABEL_69;
      }

      v61 = WFLogForCategory(0);
      v62 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v61)
      {
        v63 = v61;
        if (os_log_type_enabled(v63, v62))
        {
          v64 = *(a1 + 32);
          v65 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          v66 = [v11 networkName];
          *buf = 138412802;
          v79 = v64;
          v80 = 2112;
          v81 = v65;
          v82 = 2112;
          v83 = v66;
          _os_log_impl(&dword_273ECD000, v63, v62, "%@: network changed (was %@, is %@), calling state change handler", buf, 0x20u);
        }
      }

      v67 = *(a1 + 32);
      v68 = 4;
    }

    else
    {
      if (!v53 || v11)
      {
        goto LABEL_66;
      }

      v69 = WFLogForCategory(0);
      v70 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v69)
      {
        v71 = v69;
        if (os_log_type_enabled(v71, v70))
        {
          v72 = *(a1 + 32);
          v73 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          *buf = 138412546;
          v79 = v72;
          v80 = 2112;
          v81 = v73;
          _os_log_impl(&dword_273ECD000, v71, v70, "%@: network changed to %@, calling state change handler", buf, 0x16u);
        }
      }

      v67 = *(a1 + 32);
      v68 = 3;
    }

    [v67 _notifyStateChanged:v68 newState:4];
    goto LABEL_66;
  }

  [*(a1 + 32) setAssociatedToCarPlayOnly:0];
  [*(a1 + 32) setCurrentNetwork:0];
  [*(a1 + 32) setLinkQuality:0];
  v25 = WFLogForCategory(0);
  v26 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v25)
  {
    v27 = v25;
    if (os_log_type_enabled(v27, v26))
    {
      v28 = *(a1 + 32);
      v29 = [v28 linkQuality];
      *buf = 138412546;
      v79 = v28;
      v80 = 2112;
      v81 = v29;
      _os_log_impl(&dword_273ECD000, v27, v26, "%@: no network, cleared out link quality %@", buf, 0x16u);
    }
  }

  v30 = [*(a1 + 32) client];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __35__WFWiFiStateMonitor__updateState___block_invoke_43;
  v76[3] = &unk_279EBE0B0;
  v31 = *(a1 + 40);
  v76[4] = *(a1 + 32);
  v77 = v31;
  [v30 asyncMISState:v76];

LABEL_69:
  v75 = *MEMORY[0x277D85DE8];
}

void __35__WFWiFiStateMonitor__updateState___block_invoke_43(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 32);
    *buf = 138412546;
    v18 = v6;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: inside asyncMISState block, enabled=%d", buf, 0x12u);
  }

  v7 = *(a1 + 32);
  if (a2)
  {
    [v7 setState:5];
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_273ECD000, v8, v9, "%@: not associated, MIS=1", buf, 0xCu);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, [*(a1 + 32) state]);
    }
  }

  else
  {
    v12 = [v7 client];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__WFWiFiStateMonitor__updateState___block_invoke_44;
    v15[3] = &unk_279EBE0B0;
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v13;
    [v12 asyncUserAutoJoinState:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __35__WFWiFiStateMonitor__updateState___block_invoke_44(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 32);
    v19 = 138412546;
    v20 = v6;
    v21 = 1024;
    LODWORD(v22) = a2;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: inside asyncUserAutoJoinState block, ajEnabled=%d", &v19, 0x12u);
  }

  v7 = [*(a1 + 32) currentNetwork];

  if (v7 && a2)
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8)
    {
      v10 = v8;
      if (os_log_type_enabled(v10, v9))
      {
        v11 = *(a1 + 32);
        v12 = [v11 currentNetwork];
        v19 = 138412546;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_273ECD000, v10, v9, "%@: became associated during _updateState, self.currentNetwork is not nil %@", &v19, 0x16u);
      }
    }

    v13 = 4;
  }

  else if (a2)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  [*(a1 + 32) setState:v13];
  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v15))
  {
    v16 = *(a1 + 32);
    v19 = 138412546;
    v20 = v16;
    v21 = 1024;
    LODWORD(v22) = a2;
    _os_log_impl(&dword_273ECD000, v14, v15, "%@: not associated, userAutoJoin state=%d", &v19, 0x12u);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, [*(a1 + 32) state]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateWiFiUIState:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v5 = [(WFWiFiStateMonitor *)self client];
  v6 = [v5 cInterface];

  if (v6)
  {
    v7 = [(WFWiFiStateMonitor *)self wifiUIStateFlagsQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_2;
    block[3] = &unk_279EBE100;
    v23[2] = &v26;
    v23[0] = v6;
    v23[1] = self;
    dispatch_sync(v7, block);

    if ((v27[3] & 2) != 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__5;
      v33 = __Block_byref_object_dispose__5;
      v34 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_47;
      v18[3] = &unk_279EBE128;
      v18[4] = self;
      p_buf = &buf;
      v21 = &v26;
      v19 = v4;
      [(WFWiFiStateMonitor *)self _asyncGetCurrentNetwork:v18];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_273ECD000, v8, v9, "%@: power is off", &buf, 0xCu);
      }

      [(WFWiFiStateMonitor *)self setState:1];
      [(WFWiFiStateMonitor *)self setLinkQuality:0];
      [(WFWiFiStateMonitor *)self setAssociatedToCarPlayOnly:0];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_50;
    v16[3] = &unk_279EBDA98;
    v16[4] = self;
    v17 = v4;
    v14 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v16);

    v12 = v23;
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_273ECD000, v10, v11, "%@: wifi UI status is unavailable", &buf, 0xCu);
    }

    [(WFWiFiStateMonitor *)self setState:0];
    [(WFWiFiStateMonitor *)self setAssociatedToCarPlayOnly:0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke;
    v24[3] = &unk_279EBDA98;
    v12 = &v25;
    v24[4] = self;
    v25 = v4;
    v13 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v24);
  }

  _Block_object_dispose(&v26, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) state];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

void __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) wifiUIStateFlags];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 48) + 8) + 24);
    v7 = 138412546;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_273ECD000, v2, v3, "%@: wifiuistateflags %lu", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) currentNetwork];
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
  {
    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412802;
    v91 = v11;
    v92 = 2112;
    v93 = v12;
    v94 = 2112;
    v95 = v7;
    _os_log_impl(&dword_273ECD000, v9, v10, "%@: network %@ profile %@", buf, 0x20u);
  }

  if (!*(*(*(a1 + 48) + 8) + 40) || (*(*(*(a1 + 56) + 8) + 24) & 4) == 0)
  {
    [*(a1 + 32) setAssociatedToCarPlayOnly:0];
    [*(a1 + 32) setCurrentNetwork:0];
    [*(a1 + 32) setLinkQuality:0];
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v13)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, v14))
      {
        v16 = *(a1 + 32);
        v17 = [v16 linkQuality];
        *buf = 138412546;
        v91 = v16;
        v92 = 2112;
        v93 = v17;
        _os_log_impl(&dword_273ECD000, v15, v14, "%@: no network, cleared out link quality %@", buf, 0x16u);
      }
    }

    v18 = *(*(*(a1 + 56) + 8) + 24);
    if ((v18 & 8) != 0)
    {
      [*(a1 + 32) setState:5];
      v21 = WFLogForCategory(0);
      v22 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v21 || !os_log_type_enabled(v21, v22))
      {
        goto LABEL_64;
      }

      v23 = *(a1 + 32);
      *buf = 138412290;
      v91 = v23;
      v24 = "%@: not associated, MIS=1";
      v25 = v21;
      v26 = v22;
      v27 = 12;
    }

    else
    {
      v19 = *(a1 + 32);
      if ((v18 & 1) == 0)
      {
        v20 = 3;
LABEL_40:
        [v19 setState:v20];
        goto LABEL_65;
      }

      v39 = [v19 currentNetwork];
      if (v39)
      {
        v40 = *(*(*(a1 + 56) + 8) + 24);

        if ((v40 & 1) == 0)
        {
          v41 = WFLogForCategory(0);
          v42 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v41)
          {
            v43 = v41;
            if (os_log_type_enabled(v43, v42))
            {
              v44 = *(a1 + 32);
              v45 = [v44 currentNetwork];
              *buf = 138412546;
              v91 = v44;
              v92 = 2112;
              v93 = v45;
              _os_log_impl(&dword_273ECD000, v43, v42, "%@: became associated during _updateState, self.currentNetwork is not nil %@", buf, 0x16u);
            }
          }

          v19 = *(a1 + 32);
          v20 = 4;
          goto LABEL_40;
        }
      }

      [*(a1 + 32) setState:2];
      v21 = WFLogForCategory(0);
      v68 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v21 || !os_log_type_enabled(v21, v68))
      {
LABEL_64:

        goto LABEL_65;
      }

      v69 = *(a1 + 32);
      v70 = (*(*(*(a1 + 56) + 8) + 24) & 1) == 0;
      *buf = 138412546;
      v91 = v69;
      v92 = 1024;
      LODWORD(v93) = v70;
      v24 = "%@: not associated, userAutoJoin state=%d";
      v25 = v21;
      v26 = v68;
      v27 = 18;
    }

    _os_log_impl(&dword_273ECD000, v25, v26, v24, buf, v27);
    goto LABEL_64;
  }

  if ([v7 carPlayNetworkType] == 1)
  {
    v28 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v28 && os_log_type_enabled(v28, v29))
    {
      v30 = *(a1 + 32);
      *buf = 138412290;
      v91 = v30;
      _os_log_impl(&dword_273ECD000, v28, v29, "%@: associated to CarPlay only network", buf, 0xCu);
    }

    [*(a1 + 32) setState:2];
    [*(a1 + 32) setAssociatedToCarPlayOnly:1];
    v31 = [*(a1 + 32) linkQuality];

    if (v31)
    {
      v32 = WFLogForCategory(0);
      v33 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v32)
      {
        v34 = v32;
        if (os_log_type_enabled(v34, v33))
        {
          v35 = *(a1 + 32);
          v36 = [v35 linkQuality];
          *buf = 138412546;
          v91 = v35;
          v92 = 2112;
          v93 = v36;
          _os_log_impl(&dword_273ECD000, v34, v33, "%@: clearing out link quality='%@' due to CarPlay only network", buf, 0x16u);
        }
      }

      [*(a1 + 32) setLinkQuality:0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_48;
    block[3] = &unk_279EBDA98;
    v37 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v89 = v37;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v38 = v89;
LABEL_58:

    goto LABEL_65;
  }

  [*(a1 + 32) setAssociatedToCarPlayOnly:0];
  v46 = [*(a1 + 32) linkQuality];
  if (!v46)
  {
    goto LABEL_43;
  }

  v47 = v46;
  v48 = [*(a1 + 32) linkQuality];
  v49 = [v48 ssid];
  v50 = [*(*(*(a1 + 48) + 8) + 40) networkName];
  v51 = [v49 isEqualToString:v50];

  if ((v51 & 1) == 0)
  {
LABEL_43:
    v52 = WFLogForCategory(0);
    v53 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v52)
    {
      v54 = v52;
      if (os_log_type_enabled(v54, v53))
      {
        v55 = *(a1 + 32);
        v56 = [*(*(*(a1 + 48) + 8) + 40) networkName];
        *buf = 138412546;
        v91 = v55;
        v92 = 2112;
        v93 = v56;
        _os_log_impl(&dword_273ECD000, v54, v53, "%@: creating link quality for network %@", buf, 0x16u);
      }
    }

    v57 = [v7 displayFriendlyName];
    if (!v57)
    {
      v57 = [*(*(*(a1 + 48) + 8) + 40) networkName];
    }

    v58 = [WFLinkQuality alloc];
    LODWORD(v59) = 1.0;
    v60 = [(WFLinkQuality *)v58 initWithSSID:v57 rssi:0 scaledRSSI:v59];
    [*(a1 + 32) setLinkQuality:v60];
  }

  v61 = [*(a1 + 32) client];
  v62 = [v61 isCellularOutrankingWiFi];

  if (v62)
  {
    v63 = WFLogForCategory(0);
    v64 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v63)
    {
      v65 = v63;
      if (os_log_type_enabled(v65, v64))
      {
        v66 = [*(*(*(a1 + 48) + 8) + 40) networkName];
        *buf = 138412290;
        v91 = v66;
        _os_log_impl(&dword_273ECD000, v65, v64, "associated to '%@' but cellular is outranking WiFi", buf, 0xCu);
      }
    }

    [*(a1 + 32) setState:2];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_49;
    v86[3] = &unk_279EBDA98;
    v67 = *(a1 + 40);
    v86[4] = *(a1 + 32);
    v87 = v67;
    dispatch_async(MEMORY[0x277D85CD0], v86);
    v38 = v87;
    goto LABEL_58;
  }

  [*(a1 + 32) setState:4];
  v72 = *(*(*(a1 + 48) + 8) + 40);
  if (v72)
  {
    if (v8)
    {
      v73 = [v72 networkName];
      if (v73)
      {
        v74 = v73;
        v75 = [v8 networkName];
        if (v75)
        {
          v76 = v75;
          v77 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          v78 = [v8 networkName];
          v79 = [v77 isEqual:v78];

          if ((v79 & 1) == 0)
          {
            v80 = WFLogForCategory(0);
            v81 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v80)
            {
              v82 = v80;
              if (os_log_type_enabled(v82, v81))
              {
                v83 = *(a1 + 32);
                v84 = [*(*(*(a1 + 48) + 8) + 40) networkName];
                v85 = [v8 networkName];
                *buf = 138412802;
                v91 = v83;
                v92 = 2112;
                v93 = v84;
                v94 = 2112;
                v95 = v85;
                _os_log_impl(&dword_273ECD000, v82, v81, "%@: network changed (was %@, is %@), calling state change handler", buf, 0x20u);
              }
            }

            [*(a1 + 32) _notifyStateChanged:4 newState:4];
          }
        }

        else
        {
        }
      }
    }
  }

  [*(a1 + 32) setCurrentNetwork:*(*(*(a1 + 48) + 8) + 40)];
LABEL_65:

  v71 = *MEMORY[0x277D85DE8];
}

uint64_t __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_48(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) state];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

uint64_t __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_49(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) state];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

uint64_t __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_50(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) state];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (void)_asyncGetCurrentNetwork:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke;
  v7[3] = &unk_279EBD9A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) client];
  v3 = [v2 interface];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke_2;
  v4[3] = &unk_279EBE150;
  objc_copyWeak(&v6, &location);
  v5 = *(a1 + 40);
  [v3 asyncCurrentNetwork:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke_3;
  block[3] = &unk_279EBDA20;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v5 = *(a1 + 32);
    v10 = 138412546;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_273ECD000, v3, v4, "%@: inside asyncCurrentNetwork block. network=%@", &v10, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) scanResult];
  v8 = [*(a1 + 32) matchingKnownNetworkProfile];
  (*(v6 + 16))(v6, v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setState:(int64_t)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__WFWiFiStateMonitor_setState___block_invoke;
  v4[3] = &unk_279EBCFB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(internalQueue, v4);
}

void __31__WFWiFiStateMonitor_setState___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v2 == v3)
  {
    if (v7)
    {
      v8 = v4;
      if (os_log_type_enabled(v8, v5))
      {
        v9 = *(a1 + 32);
        v10 = WFWiFiStateMonitorStringForState(*(v9 + 16));
        v18 = 138412546;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_273ECD000, v8, v5, "%@: no change to state (%@)", &v18, 0x16u);
      }
    }
  }

  else
  {
    if (v7)
    {
      v11 = v4;
      if (os_log_type_enabled(v11, v5))
      {
        v12 = *(a1 + 32);
        v13 = WFWiFiStateMonitorStringForState(*(v12 + 16));
        v14 = WFWiFiStateMonitorStringForState(*(a1 + 40));
        v18 = 138412802;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_273ECD000, v11, v5, "%@: old state %@ new state %@", &v18, 0x20u);
      }
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    *(v15 + 16) = *(a1 + 40);
    [*(a1 + 32) _notifyStateChanged:v16 newState:?];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_notifyStateChanged:(int64_t)a3 newState:(int64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = [(WFWiFiStateMonitor *)self handler];

  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__WFWiFiStateMonitor__notifyStateChanged_newState___block_invoke;
    block[3] = &unk_279EBE178;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
    {
      *buf = 138412290;
      v13 = self;
      _os_log_impl(&dword_273ECD000, v8, v9, "%@: handler is nil, can't call state changed handler", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __51__WFWiFiStateMonitor__notifyStateChanged_newState___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) handler];

  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v2)
  {
    if (v6 && os_log_type_enabled(v3, v4))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_273ECD000, v3, v4, "%@: calling state changed handler", &v10, 0xCu);
    }

    v3 = [*(a1 + 32) handler];
    (*(v3 + 16))(v3, *(a1 + 40), *(a1 + 48));
  }

  else if (v6 && os_log_type_enabled(v3, v4))
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_273ECD000, v3, v4, "%@: handler is nil, can't call state changed handler", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_powerStateDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 object];
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "%@: (sender: %@) power state changed", &v10, 0x16u);
    }
  }

  [(WFWiFiStateMonitor *)self _updateState];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_wifiUIFlagsStateChanged:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 object];
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "%@: (sender: %@) wifi ui flags state changed", &v10, 0x16u);
    }
  }

  if (_os_feature_enabled_impl())
  {
    [(WFWiFiStateMonitor *)self _updateWiFiUIState:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_linkDidChange:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: link change", &v7, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_linkQualityDidChange:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACC8] currentThread];
  v6 = [(WFWiFiStateMonitor *)self callbackThread];

  if (v5 == v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:@"WFInterfaceLinkQualityKey"];
    v9 = [v8 copy];
    linkQuality = self->_linkQuality;
    self->_linkQuality = v9;

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v11)
    {
      v13 = v11;
      if (os_log_type_enabled(v13, v12))
      {
        v14 = [(WFWiFiStateMonitor *)self linkQuality];
        v15 = WFWiFiStateMonitorStringForState([(WFWiFiStateMonitor *)self state]);
        v17 = 138412802;
        v18 = self;
        v19 = 2112;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_273ECD000, v13, v12, "%@: link quality changed %@ (current state %@)", &v17, 0x20u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_clientConnectionRestarted:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    *buf = 138412290;
    v10 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: client connection restarted", buf, 0xCu);
  }

  v6 = [(WFWiFiStateMonitor *)self state];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__WFWiFiStateMonitor__clientConnectionRestarted___block_invoke;
  v8[3] = &unk_279EBE1A0;
  v8[4] = self;
  v8[5] = v6;
  [(WFWiFiStateMonitor *)self _updateState:v8];
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __49__WFWiFiStateMonitor__clientConnectionRestarted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 state];

  return [v1 _notifyStateChanged:v2 newState:v3];
}

- (void)_hostAPStateChanged:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: host ap state change", &v7, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_interfaceBecameAvailable:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: interface became available", buf, 0xCu);
  }

  v6 = [(WFWiFiStateMonitor *)self state];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__WFWiFiStateMonitor__interfaceBecameAvailable___block_invoke;
  v10[3] = &unk_279EBE1A0;
  v10[4] = self;
  v10[5] = v6;
  [(WFWiFiStateMonitor *)self _updateState:v10];
  v7 = [(WFWiFiStateMonitor *)self client];
  v8 = [v7 interface];
  [(WFWiFiStateMonitor *)self _registerInterfaceObserversForInterface:v8];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __48__WFWiFiStateMonitor__interfaceBecameAvailable___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 state];

  return [v1 _notifyStateChanged:v2 newState:v3];
}

- (void)_autoJoinStateChanged:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: auto join state changed", &v7, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_outrankStateDidChange:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: cellular outrank state changed", &v7, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_carPlayNetworkTypeDidChange:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%@: car play network type did change", &v7, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    v3 = identifier;
  }

  else
  {
    v5 = [(WFWiFiStateMonitor *)self bundleIdentifier];

    if (v5)
    {
      v3 = [(WFWiFiStateMonitor *)self bundleIdentifier];
    }

    else
    {
      v3 = @"UNKNOWN";
    }
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWiFiStateMonitor *)self identifier];
  v7 = WFWiFiStateMonitorStringForState([(WFWiFiStateMonitor *)self state]);
  v8 = [(WFWiFiStateMonitor *)self currentNetwork];
  v9 = [v8 networkName];
  if (v9)
  {
    v10 = [(WFWiFiStateMonitor *)self currentNetwork];
    v11 = [v10 networkName];
    v12 = [v3 stringWithFormat:@"<%@ : %p identifier='%@' state='%@' network='%@'>", v5, self, v6, v7, v11];
  }

  else
  {
    v12 = [v3 stringWithFormat:@"<%@ : %p identifier='%@' state='%@' network='%@'>", v5, self, v6, v7, &stru_2882E4AD8];
  }

  return v12;
}

@end