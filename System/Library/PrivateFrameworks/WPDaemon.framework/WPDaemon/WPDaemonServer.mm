@interface WPDaemonServer
+ (BOOL)isInternalBuild;
+ (BOOL)supportsRanging;
+ (void)initialize;
- (BOOL)isClientTestMode:(id)a3;
- (BOOL)isRangingEnabled;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)scanWithRetainDuplicates;
- (WPDaemonServer)initWithCBStackAdaptor:(id)a3;
- (id)clientForMachName:(id)a3;
- (id)getAllClients;
- (id)getClientForUUID:(id)a3;
- (void)SetupSignalHandler;
- (void)addClient:(id)a3;
- (void)cbManagerDidUpdateState:(id)a3;
- (void)dealloc;
- (void)disableScanningForClient:(id)a3;
- (void)dumpDaemonState;
- (void)dumpDaemonStateAsync;
- (void)generateStateDump;
- (void)initClients;
- (void)initManagers;
- (void)lockStateUpdate;
- (void)mirroringStateUpdate;
- (void)notifyClientsOfStateChange;
- (void)notifyManagersOfStateChange;
- (void)registerClient:(id)a3 withMachName:(id)a4 withCompletion:(id)a5;
- (void)registerForSpringboardNotifications;
- (void)removeClient:(id)a3;
- (void)screenStateUpdate;
- (void)setCbState:(int64_t)a3;
- (void)startListening;
- (void)updateState;
@end

@implementation WPDaemonServer

- (BOOL)scanWithRetainDuplicates
{
  v2 = [(WPDaemonServer *)self scanManager];
  v3 = [v2 retainDuplicates];

  return v3;
}

void __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_2_322(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MKBGetDeviceLockState();
    v3 = [WeakRetained systemLocked];
    v4 = v2 == 1;
    if (v2 == 2)
    {
      v4 = v3;
    }

    if (v2 <= 3)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    if (WPLogInitOnce != -1)
    {
      __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_2_322_cold_1();
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v7 = "Unlocked";
      if (v5)
      {
        v7 = "Locked";
      }

      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_INFO, "Lock state - %s", &v9, 0xCu);
    }

    if (v5 != [WeakRetained systemLocked])
    {
      [WeakRetained setSystemLocked:v5];
      [WeakRetained lockStateUpdate];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)supportsRanging
{
  if (supportsRanging_onceToken != -1)
  {
    +[WPDaemonServer supportsRanging];
  }

  return supportsRanging_supportsRanging;
}

void __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_286(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained screenOff])
    {
      if (WPLogInitOnce != -1)
      {
        __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_286_cold_2();
      }

      v3 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "Screen undimmed - SpringBoard", v5, 2u);
      }

      [v2 setScreenOff:0];
      [v2 screenStateUpdate];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_286_cold_1();
      }

      v4 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, "Screen already undimmed - SpringBoard", buf, 2u);
      }
    }
  }
}

- (void)screenStateUpdate
{
  v3 = [(WPDaemonServer *)self scanManager];
  [v3 updateScanner];

  v4 = [(WPDaemonServer *)self objectDiscoveryManager];
  [v4 updateScanner];

  v5 = [(WPDaemonServer *)self advertisingManager];
  [v5 updateAdvertiser];

  v6 = [(WPDaemonServer *)self statsManager];
  [v6 reportPLStats];
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[WPDaemonServer isInternalBuild];
  }

  return isInternalBuild__isInternalBuild;
}

void __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_301(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    if (notify_get_state(a2, &state64))
    {
      if (WPLogInitOnce != -1)
      {
        __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_301_cold_1();
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_301_cold_2();
      }
    }

    else
    {
      v4 = state64;
      if (WPLogInitOnce != -1)
      {
        __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_301_cold_3();
      }

      v5 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "On";
        if (v4)
        {
          v6 = "Off";
        }

        *buf = 136315138;
        v10 = v6;
        _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "Screen state - %s", buf, 0xCu);
      }

      if ((v4 != 0) != [WeakRetained screenOff])
      {
        [WeakRetained setScreenOff:v4 != 0];
        [WeakRetained screenStateUpdate];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __33__WPDaemonServer_supportsRanging__block_invoke()
{
  result = MGGetBoolAnswer();
  supportsRanging_supportsRanging = result;
  return result;
}

uint64_t __33__WPDaemonServer_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_content();
  isInternalBuild__isInternalBuild = result;
  return result;
}

+ (void)initialize
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRangingEnabled
{
  v3 = [(WPDaemonServer *)self persistence];
  if (v3)
  {
    v4 = [(WPDaemonServer *)self persistence];
    v5 = [v4 isRangingEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)SetupSignalHandler
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __36__WPDaemonServer_SetupSignalHandler__block_invoke;
  v8 = &unk_279E59028;
  objc_copyWeak(&v9, &location);
  v3 = MEMORY[0x2743D14E0](&v5);
  v4 = [(WPDaemonServer *)self serverQueue:v5];
  os_state_add_handler();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __36__WPDaemonServer_SetupSignalHandler__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 16) & 0xFFFFFFFE) == 2)
  {
    if (WPLogInitOnce != -1)
    {
      __36__WPDaemonServer_SetupSignalHandler__block_invoke_cold_1();
    }

    v4 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 16) == 3)
      {
        v5 = "OS_STATE_API_REQUEST";
      }

      else
      {
        v5 = "OS_STATE_API_FAULT";
      }

      v11 = 136315138;
      v12 = v5;
      _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "WIPROX received %s, triggering statedump.", &v11, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained dumpDaemonState];
    }

    if (WPLogInitOnce != -1)
    {
      __36__WPDaemonServer_SetupSignalHandler__block_invoke_cold_2();
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WIPROX completed statedump.", &v11, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (WPDaemonServer)initWithCBStackAdaptor:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = WPDaemonServer;
  v6 = [(WPDaemonServer *)&v23 init];
  v7 = v6;
  if (v6)
  {
    v6->_cbState = 0;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    clients = v7->_clients;
    v7->_clients = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    testClients = v7->_testClients;
    v7->_testClients = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    privilegedClients = v7->_privilegedClients;
    v7->_privilegedClients = v12;

    v14 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    clientsWithMach = v7->_clientsWithMach;
    v7->_clientsWithMach = v14;

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v17 = dispatch_queue_create("com.wiproxd.clientQueue", v16);
    queue = v7->_queue;
    v7->_queue = v17;

    v19 = dispatch_queue_create("com.wiproxd.serverQueue", v16);
    serverQueue = v7->_serverQueue;
    v7->_serverQueue = v19;

    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer initWithCBStackAdaptor:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDaemonServer initWithCBStackAdaptor:];
    }

    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer initWithCBStackAdaptor:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDaemonServer initWithCBStackAdaptor:];
    }

    *&v7->_screenOff = 0;
    v7->_isMirroring = 0;
    *&v7->_lockStatusChangedToken = -1;
    *&v7->_firstUnlockStatusChangedToken = -1;
    *&v7->_screenDimmedChangeNotifyToken = -1;
    [(WPDaemonServer *)v7 registerForSpringboardNotifications];
    stackAdaptor = v7->_stackAdaptor;
    v7->_isTesting = 0;
    v7->_stackAdaptor = 0;

    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      objc_storeStrong(&v7->_stackAdaptor, a3);
    }

    if (initWithCBStackAdaptor__onceDToken != -1)
    {
      [WPDaemonServer initWithCBStackAdaptor:];
    }

    [(WPDaemonServer *)v7 SetupSignalHandler];
    notify_post("com.apple.wirelessproximity.launch");
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer initWithCBStackAdaptor:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDaemonServer initWithCBStackAdaptor:];
    }
  }

  return v7;
}

void __41__WPDaemonServer_initWithCBStackAdaptor___block_invoke_185()
{
  WPLoggingInit();
  if (WPLogInitOnce != -1)
  {
    __41__WPDaemonServer_initWithCBStackAdaptor___block_invoke_185_cold_1();
  }

  v0 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272965000, v0, OS_LOG_TYPE_DEFAULT, "STARTED WIPROX DAEMON", buf, 2u);
  }

  if (WPLogInitOnce != -1)
  {
    __41__WPDaemonServer_initWithCBStackAdaptor___block_invoke_185_cold_2();
  }

  v1 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272965000, v1, OS_LOG_TYPE_DEFAULT, "WPDaemon iOS 26.1 (23B78) (WirelessProximity-191.10) (Release) built on 2025-10-22 21:21:46", v2, 2u);
  }
}

- (void)initManagers
{
  v30[4] = *MEMORY[0x277D85DE8];
  v3 = [WPDState alloc];
  v4 = [(WPDaemonServer *)self serverQueue];
  v5 = [(WPDState *)v3 initWithQueue:v4];
  [(WPDaemonServer *)self setWpdState:v5];

  v6 = [(WPDaemonServer *)self wpdState];
  -[WPDaemonServer setCbState:](self, "setCbState:", [v6 state]);

  v7 = [[WPDScanManager alloc] initWithServer:self];
  [(WPDaemonServer *)self setScanManager:v7];

  v8 = [[WPDAdvertisingManager alloc] initWithServer:self];
  [(WPDaemonServer *)self setAdvertisingManager:v8];

  v9 = [[WPDZoneManager alloc] initWithServer:self];
  [(WPDaemonServer *)self setZoneManager:v9];

  v10 = [[WPDPipeManager alloc] initWithServer:self];
  [(WPDaemonServer *)self setPipeManager:v10];

  v11 = [[WPDStatsManager alloc] initWithServer:self];
  [(WPDaemonServer *)self setStatsManager:v11];

  if (_MergedGlobals == 1)
  {
    v12 = [(WPDaemonServer *)self scanManager];
    v30[0] = v12;
    v13 = [(WPDaemonServer *)self advertisingManager];
    v30[1] = v13;
    v14 = [(WPDaemonServer *)self pipeManager];
    v30[2] = v14;
    v15 = [(WPDaemonServer *)self zoneManager];
    v30[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    [(WPDaemonServer *)self setManagers:v16];

    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer initManagers];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "initManagers - ObjectDiscovery is disabled on this platform", v28, 2u);
    }
  }

  else
  {
    v18 = [[WPDObjectDiscoveryManager alloc] initWithServer:self];
    [(WPDaemonServer *)self setObjectDiscoveryManager:v18];

    v19 = [(WPDaemonServer *)self scanManager];
    v29[0] = v19;
    v20 = [(WPDaemonServer *)self advertisingManager];
    v29[1] = v20;
    v21 = [(WPDaemonServer *)self pipeManager];
    v29[2] = v21;
    v22 = [(WPDaemonServer *)self zoneManager];
    v29[3] = v22;
    v23 = [(WPDaemonServer *)self objectDiscoveryManager];
    v29[4] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
    [(WPDaemonServer *)self setManagers:v24];
  }

  if (+[WPDaemonServer supportsRanging])
  {
    v25 = [(WPDaemonServer *)self scanManager];
    [v25 enableRanging:{-[WPDaemonServer isRangingEnabled](self, "isRangingEnabled")}];
  }

  v26 = [(WPDaemonServer *)self wpdState];
  [v26 updateWithCompletion:&__block_literal_global_209];

  v27 = *MEMORY[0x277D85DE8];
}

void __30__WPDaemonServer_initManagers__block_invoke_207()
{
  if (WPLogInitOnce != -1)
  {
    __30__WPDaemonServer_initManagers__block_invoke_207_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __30__WPDaemonServer_initManagers__block_invoke_207_cold_2();
  }
}

- (void)initClients
{
  if (_MergedGlobals == 1)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer initClients];
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v2, OS_LOG_TYPE_DEFAULT, "initClients - ObjectDiscovery is disabled on this platform", buf, 2u);
    }
  }

  else
  {
    v4 = [[WPDObjectDiscoveryClient alloc] initWithXPCConnection:0 server:self];
    [(WPDaemonServer *)self addClient:v4];
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v6 = [v5 processName];

    [(WPDObjectDiscoveryClient *)v4 registerWithDaemon:@"WPObjectDiscovery" forProcess:v6 machName:0 holdVouchers:0];
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer initClients];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Created WPDObjectDiscoveryClient instance and registered with the server", v9, 2u);
    }

    spObjectDiscoveryClient = self->_spObjectDiscoveryClient;
    self->_spObjectDiscoveryClient = &v4->super;
  }
}

- (void)dealloc
{
  v3 = [(WPDaemonServer *)self spObjectDiscoveryClient];

  if (v3)
  {
    [(WPDClient *)self->_spObjectDiscoveryClient destroy];
    spObjectDiscoveryClient = self->_spObjectDiscoveryClient;
    self->_spObjectDiscoveryClient = 0;
  }

  if ([(WPDaemonServer *)self screenStateToken]!= -1)
  {
    notify_cancel([(WPDaemonServer *)self screenStateToken]);
  }

  if ([(WPDaemonServer *)self lockStatusChangedToken]!= -1)
  {
    notify_cancel([(WPDaemonServer *)self lockStatusChangedToken]);
  }

  if ([(WPDaemonServer *)self firstUnlockStatusChangedToken]!= -1)
  {
    notify_cancel([(WPDaemonServer *)self firstUnlockStatusChangedToken]);
  }

  v5.receiver = self;
  v5.super_class = WPDaemonServer;
  [(WPDaemonServer *)&v5 dealloc];
}

- (BOOL)isClientTestMode:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(WPDaemonServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WPDaemonServer_isClientTestMode___block_invoke;
  block[3] = &unk_279E59050;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __35__WPDaemonServer_isClientTestMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) testClients];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (id)getClientForUUID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v5 = [(WPDaemonServer *)self serverQueue];
  label = dispatch_queue_get_label(v5);

  v7 = dispatch_queue_get_label(0);
  if (!strcmp(label, v7))
  {
    v10 = [(WPDaemonServer *)self clients];
    v11 = [v10 objectForKeyedSubscript:v4];
    v12 = v20[5];
    v20[5] = v11;
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer getClientForUUID:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = v7;
      _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_INFO, "WPDaemonServer:getClientForUUID called on %s", buf, 0xCu);
    }

    v9 = [(WPDaemonServer *)self serverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__WPDaemonServer_getClientForUUID___block_invoke_226;
    block[3] = &unk_279E59050;
    v18 = &v19;
    block[4] = self;
    v17 = v4;
    dispatch_sync(v9, block);
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __35__WPDaemonServer_getClientForUUID___block_invoke_226(uint64_t a1)
{
  v5 = [*(a1 + 32) clients];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)getAllClients
{
  v2 = MEMORY[0x277CBEB58];
  v3 = [(WPDaemonServer *)self clients];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)setCbState:(int64_t)a3
{
  if (self->_cbState != a3)
  {
    self->_cbState = a3;
  }

  [(WPDaemonServer *)self notifyClientsOfStateChange];
}

- (void)cbManagerDidUpdateState:(id)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__WPDaemonServer_cbManagerDidUpdateState___block_invoke;
  v7[3] = &unk_279E59078;
  v7[4] = self;
  v4 = a3;
  v5 = MEMORY[0x2743D14E0](v7);
  v6 = [(WPDaemonServer *)self wpdState];
  [v6 updateWithManager:v4 Completion:v5];
}

- (void)updateState
{
  objc_initWeak(&location, self);
  v3 = [(WPDaemonServer *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WPDaemonServer_updateState__block_invoke;
  block[3] = &unk_279E590A0;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __29__WPDaemonServer_updateState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained wpdState];
    v5 = [v4 state];

    if (v5 == 3)
    {
      if (WPLogInitOnce != -1)
      {
        __29__WPDaemonServer_updateState__block_invoke_cold_1();
      }

      v6 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "Daemon Peripheral is now powered on", buf, 2u);
      }

      if (WPLogInitOnce != -1)
      {
        __29__WPDaemonServer_updateState__block_invoke_cold_2();
      }

      v7 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Daemon Central is now powered on", v11, 2u);
      }
    }

    if (WPLogInitOnce != -1)
    {
      __29__WPDaemonServer_updateState__block_invoke_cold_3();
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __29__WPDaemonServer_updateState__block_invoke_cold_4(v8, v3);
    }

    [v3 notifyManagersOfStateChange];
    [v3 setCbState:v5];
    if (v5 != 3)
    {
      v9 = [v3 statsManager];
      [v9 reportPLStats];
    }

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"WPDaemonServerStateChanged" object:*(a1 + 32)];
  }
}

- (void)notifyManagersOfStateChange
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(WPDaemonServer *)self wpdState];
  v4 = [v3 state];

  v5 = [(WPDaemonServer *)self wpdState];
  v6 = [v5 restricted];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(WPDaemonServer *)self managers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) updateState:v4 Restricted:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 conn];
  v6 = [v5 valueForEntitlement:@"com.apple.wirelessproxd-util-test"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer addClient:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v4 clientUUID];
      *buf = 138543362;
      v30 = v10;
      _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "WiProx test client has connected (UUID: %{public}@)", buf, 0xCu);
    }

    v11 = [(WPDaemonServer *)self queue];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __28__WPDaemonServer_addClient___block_invoke_241;
    v26 = &unk_279E590C8;
    v27 = self;
    v12 = v4;
    v28 = v12;
    dispatch_sync(v11, &v23);

    [v12 setIsTestModeClient:{1, v23, v24, v25, v26, v27}];
  }

  v13 = [v4 conn];
  v14 = [v13 valueForEntitlement:@"com.apple.wirelessproxd-disable-scans"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    [v4 setCanDisableScans:1];
  }

  v16 = [v4 conn];

  if (v16)
  {
    v17 = [v4 conn];
    [v17 resume];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer addClient:];
  }

  v18 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDaemonServer *)v18 addClient:v4];
  }

  v19 = [(WPDaemonServer *)self clients];
  v20 = [v4 clientUUID];
  [v19 setObject:v4 forKeyedSubscript:v20];

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer addClient:];
  }

  v21 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDaemonServer *)v21 addClient:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __28__WPDaemonServer_addClient___block_invoke_241(uint64_t a1)
{
  v3 = [*(a1 + 32) testClients];
  v2 = [*(a1 + 40) clientUUID];
  [v3 addObject:v2];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = [v4 clientUUID];
  if (v5)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer removeClient:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPDaemonServer *)v5 removeClient:v6, v4];
    }

    v7 = [(WPDaemonServer *)self clients];
    [v7 removeObjectForKey:v5];

    v8 = [(WPDaemonServer *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__WPDaemonServer_removeClient___block_invoke_249;
    block[3] = &unk_279E590C8;
    block[4] = self;
    v9 = v5;
    v29 = v9;
    dispatch_sync(v8, block);

    v10 = [(WPDaemonServer *)self privilegedClients];
    v11 = [v10 containsObject:v9];

    if (v11)
    {
      v12 = [(WPDaemonServer *)self privilegedClients];
      [v12 removeObject:v9];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer removeClient:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDaemonServer *)v13 removeClient:v4];
    }
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer removeClient:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDaemonServer *)v14 addClient:?];
  }

  if ([(WPDaemonServer *)self isTesting])
  {
    v15 = [(WPDaemonServer *)self testClients];
    v16 = [v15 count];

    if (!v16)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDaemonServer removeClient:];
      }

      v17 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "No more test clients available, exiting test mode", v27, 2u);
      }

      [(WPDaemonServer *)self enableTestMode:0];
    }
  }

  v18 = [(WPDaemonServer *)self scanManager];
  if ([v18 scanningDisabled])
  {
    v19 = [(WPDaemonServer *)self privilegedClients];
    v20 = [v19 count];

    if (v20)
    {
      goto LABEL_32;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer removeClient:];
    }

    v21 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "No more clients that can disable scans, re-enabling", v27, 2u);
    }

    v22 = [(WPDaemonServer *)self scanManager];
    [v22 setScanningDisabled:0];

    v18 = [(WPDaemonServer *)self scanManager];
    [v18 updateScanner];
  }

LABEL_32:
  v23 = [(WPDaemonServer *)self objectDiscoveryManager];
  if (![v23 scanningDisabled])
  {
LABEL_35:

    goto LABEL_36;
  }

  v24 = [(WPDaemonServer *)self privilegedClients];
  v25 = [v24 count];

  if (!v25)
  {
    v26 = [(WPDaemonServer *)self objectDiscoveryManager];
    [v26 setScanningDisabled:0];

    v23 = [(WPDaemonServer *)self objectDiscoveryManager];
    [v23 updateScanner];
    goto LABEL_35;
  }

LABEL_36:
}

void __31__WPDaemonServer_removeClient___block_invoke_249(uint64_t a1)
{
  v2 = [*(a1 + 32) testClients];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) testClients];
    [v4 removeObject:*(a1 + 40)];
  }
}

- (void)registerClient:(id)a3 withMachName:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WPDaemonServer *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__WPDaemonServer_registerClient_withMachName_withCompletion___block_invoke;
  v15[3] = &unk_279E590F0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __61__WPDaemonServer_registerClient_withMachName_withCompletion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    __61__WPDaemonServer_registerClient_withMachName_withCompletion___block_invoke_cold_1();
  }

  v2 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 processName];
    v6 = [*(a1 + 32) processID];
    v7 = [*(a1 + 32) clientUUID];
    v16 = 138543874;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, "Daemon registering process %{public}@ (%d) with WPDClient UUID %{public}@", &v16, 0x1Cu);
  }

  if (*(a1 + 40))
  {
    v8 = [*(a1 + 48) clientsWithMach];
    [v8 setObject:*(a1 + 32) forKey:*(a1 + 40)];
  }

  v9 = *(a1 + 56);
  v10 = [*(a1 + 48) scanManager];
  v11 = [*(a1 + 48) advertisingManager];
  v12 = [*(a1 + 48) zoneManager];
  v13 = [*(a1 + 48) pipeManager];
  v14 = [*(a1 + 48) objectDiscoveryManager];
  (*(v9 + 16))(v9, v10, v11, v12, v13, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (id)clientForMachName:(id)a3
{
  v4 = a3;
  v5 = [(WPDaemonServer *)self clientsWithMach];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)notifyClientsOfStateChange
{
  v3 = [(WPDaemonServer *)self wpdState];
  v4 = [v3 restricted];

  v5 = [(WPDaemonServer *)self wpdState];
  v6 = [v5 state];

  v7 = [(WPDaemonServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WPDaemonServer_notifyClientsOfStateChange__block_invoke;
  block[3] = &unk_279E59138;
  block[4] = self;
  block[5] = v6;
  v9 = v4;
  dispatch_sync(v7, block);
}

void __44__WPDaemonServer_notifyClientsOfStateChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__WPDaemonServer_notifyClientsOfStateChange__block_invoke_2;
  v3[3] = &__block_descriptor_41_e34_v32__0__NSUUID_8__WPDClient_16_B24l;
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __44__WPDaemonServer_notifyClientsOfStateChange__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (WPLogInitOnce != -1)
  {
    __44__WPDaemonServer_notifyClientsOfStateChange__block_invoke_2_cold_1();
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __44__WPDaemonServer_notifyClientsOfStateChange__block_invoke_2_cold_2(a1, v7, v6);
  }

  [v6 notifyClientStateChange:*(a1 + 32) Restricted:*(a1 + 40)];
}

- (void)startListening
{
  objc_initWeak(&location, self);
  v3 = [(WPDaemonServer *)self serverQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__WPDaemonServer_startListening__block_invoke;
  v4[3] = &unk_279E58EE8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__WPDaemonServer_startListening__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained initManagers];
    [v2 initClients];
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.wirelessproxd"];
    [v2 setListener:v3];

    v4 = [v2 listener];
    [v4 setDelegate:v2];

    v5 = [v2 listener];
    [v5 resume];

    if (WPLogInitOnce != -1)
    {
      __32__WPDaemonServer_startListening__block_invoke_cold_1();
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = @"com.apple.wirelessproxd";
      _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_INFO, "Daemon started listening for mach service %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [[WPDClient alloc] initWithXPCConnection:v5 server:self];

  v7 = [(WPDaemonServer *)self serverQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__WPDaemonServer_listener_shouldAcceptNewConnection___block_invoke;
  v10[3] = &unk_279E590C8;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_sync(v7, v10);

  return 1;
}

- (void)registerForSpringboardNotifications
{
  objc_initWeak(location, self);
  if (self->_screenDimmedChangeNotifyToken == -1)
  {
    v3 = [(WPDaemonServer *)self serverQueue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke;
    handler[3] = &unk_279E59160;
    objc_copyWeak(&v39, location);
    notify_register_dispatch("com.apple.springboardservices.eventobserver.internalSBSEventObserverEventDimmed", &self->_screenDimmedChangeNotifyToken, v3, handler);

    objc_destroyWeak(&v39);
  }

  if (self->_screenUndimmedChangeNotifyToken == -1)
  {
    v4 = [(WPDaemonServer *)self serverQueue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_286;
    v36[3] = &unk_279E59160;
    objc_copyWeak(&v37, location);
    notify_register_dispatch("com.apple.springboardservices.eventobserver.internalSBSEventObserverEventUndimmed", &self->_screenUndimmedChangeNotifyToken, v4, v36);

    objc_destroyWeak(&v37);
  }

  if (_os_feature_enabled_impl() && self->_screenDisplayChangedNotifyToken == -1)
  {
    v5 = [(WPDaemonServer *)self serverQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_295;
    v34[3] = &unk_279E59160;
    objc_copyWeak(&v35, location);
    notify_register_dispatch("com.apple.iokit.hid.displayStatus", &self->_screenDisplayChangedNotifyToken, v5, v34);

    objc_destroyWeak(&v35);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_301;
  v32[3] = &unk_279E59160;
  objc_copyWeak(&v33, location);
  v6 = MEMORY[0x2743D14E0](v32);
  v7 = [(WPDaemonServer *)self serverQueue];
  v8 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_screenStateToken, v7, v6);

  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer registerForSpringboardNotifications];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDaemonServer registerForSpringboardNotifications];
    }
  }

  v9 = [MEMORY[0x277D0AD18] configurationForContinuityDisplay];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_313;
  v30[3] = &unk_279E591B0;
  v30[4] = self;
  objc_copyWeak(&v31, location);
  [v9 setTransitionHandler:v30];
  v10 = [MEMORY[0x277D0AD10] monitorWithConfiguration:v9];
  [(WPDaemonServer *)self setMirroringMonitor:v10];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_2_322;
  v28[3] = &unk_279E59160;
  objc_copyWeak(&v29, location);
  v11 = MEMORY[0x2743D14E0](v28);
  v12 = [(WPDaemonServer *)self serverQueue];
  v13 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_lockStatusChangedToken, v12, v11);

  if (v13)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer registerForSpringboardNotifications];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDaemonServer registerForSpringboardNotifications];
    }
  }

  v14 = [(WPDaemonServer *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_331;
  block[3] = &unk_279E591D8;
  v15 = v11;
  block[4] = self;
  v26 = v15;
  v16 = v6;
  v27 = v16;
  dispatch_async(v14, block);

  if (+[WPDaemonServer supportsRanging])
  {
    v17 = objc_alloc_init(WPDPersistence);
    [(WPDaemonServer *)self setPersistence:v17];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_336;
    v22[3] = &unk_279E59160;
    objc_copyWeak(&v23, location);
    v18 = MEMORY[0x2743D14E0](v22);
    if (MKBDeviceUnlockedSinceBoot() == 1)
    {
      v18[2](v18, [(WPDaemonServer *)self firstUnlockStatusChangedToken]);
    }

    else
    {
      v20 = [(WPDaemonServer *)self serverQueue];
      v21 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->_firstUnlockStatusChangedToken, v20, v18);

      if (v21)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDaemonServer registerForSpringboardNotifications];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDaemonServer registerForSpringboardNotifications];
        }
      }
    }

    objc_destroyWeak(&v23);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer registerForSpringboardNotifications];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_INFO, "Ranging persistence not supported on this platform", buf, 2u);
    }
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

void __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained screenOff])
    {
      if (WPLogInitOnce != -1)
      {
        __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_cold_2();
      }

      v3 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_INFO, "Screen already dimmed - SpringBoard", buf, 2u);
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_cold_1();
      }

      v4 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "Screen dimmed - SpringBoard", v5, 2u);
      }

      [v2 setScreenOff:1];
      [v2 screenStateUpdate];
    }
  }
}

void __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_295(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    if (!notify_get_state(a2, &state64) && !state64)
    {
      v4 = [WeakRetained screenOff];
      if (((v4 ^ (state64 != 0)) & 1) == 0)
      {
        if (WPLogInitOnce != -1)
        {
          __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_295_cold_1();
        }

        v5 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v5;
          v7 = [WeakRetained screenOff];
          v8 = "On";
          if (v7)
          {
            v8 = "Off";
          }

          *buf = 136315138;
          v12 = v8;
          _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "Screen state - %s - IOHIDEvent", buf, 0xCu);
        }

        [WeakRetained setScreenOff:state64 == 0];
        [WeakRetained screenStateUpdate];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_313(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (WPLogInitOnce != -1)
  {
    __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_313_cold_1();
  }

  v10 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "No";
    if (v8)
    {
      v11 = "Yes";
    }

    *buf = 136315138;
    v18 = v11;
    _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_DEFAULT, "Mirroring state - %s", buf, 0xCu);
  }

  v12 = [*(a1 + 32) serverQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_319;
  v14[3] = &unk_279E59188;
  objc_copyWeak(&v15, (a1 + 40));
  v16 = v8 != 0;
  dispatch_async(v12, v14);

  objc_destroyWeak(&v15);
  v13 = *MEMORY[0x277D85DE8];
}

void __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_319(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = *(a1 + 40) == [WeakRetained isMirroring];
    WeakRetained = v4;
    if (!v3)
    {
      [v4 setIsMirroring:?];
      [v4 mirroringStateUpdate];
      WeakRetained = v4;
    }
  }
}

uint64_t __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_331(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) lockStatusChangedToken]);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) screenStateToken];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_336(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2 == -1)
    {
      if (WPLogInitOnce != -1)
      {
        __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_336_cold_1();
      }

      v4 = WiProxLog;
      if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v5 = "Already first unlocked";
      v6 = buf;
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_336_cold_2();
      }

      v4 = WiProxLog;
      if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      LOWORD(v9) = 0;
      v5 = "Received first unlocked notification";
      v6 = &v9;
    }

    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
LABEL_12:
    v7 = [WeakRetained persistence];
    [v7 firstUnlockedWithEvent:a2 != -1];

    v8 = [WeakRetained persistence];
    [WeakRetained enableRanging:{objc_msgSend(v8, "isRangingEnabled")}];
  }
}

- (void)mirroringStateUpdate
{
  v3 = [(WPDaemonServer *)self scanManager];
  [v3 updateScanner];

  v4 = [(WPDaemonServer *)self statsManager];
  [v4 reportPLStats];
}

- (void)lockStateUpdate
{
  v3 = [(WPDaemonServer *)self scanManager];
  [v3 updateScanner];

  v4 = [(WPDaemonServer *)self objectDiscoveryManager];
  [v4 updateScanner];

  v5 = [(WPDaemonServer *)self statsManager];
  [v5 reportPLStats];
}

- (void)disableScanningForClient:(id)a3
{
  v4 = a3;
  v5 = [(WPDaemonServer *)self scanManager];
  [v5 setScanningDisabled:1];

  v6 = [(WPDaemonServer *)self privilegedClients];
  [v6 addObject:v4];
}

- (void)generateStateDump
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = &WPLogInitOnce;
  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer generateStateDump];
  }

  v3 = &WiProxLog;
  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "WPDaemon iOS 26.1 (23B78) (WirelessProximity-191.10) (Release) built on 2025-10-22 21:21:46";
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: %s", buf, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer generateStateDump];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v49 = 1840200;
    _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: WP_API_VERSION: %ld", buf, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer generateStateDump];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(WPDaemonServer *)self wpdState];
    *buf = 138412290;
    v49 = v8;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: wpdState: %@", buf, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer generateStateDump];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [WPDManager wpStateAsString:[(WPDaemonServer *)self cbState]];
    v12 = [(WPDaemonServer *)self cbState];
    *buf = 138412546;
    v49 = v11;
    v50 = 1024;
    v51 = v12;
    _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: cbState: %@ (%d)", buf, 0x12u);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer generateStateDump];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(WPDaemonServer *)self isTesting];
    v16 = "no";
    if (v15)
    {
      v16 = "yes";
    }

    *buf = 136315138;
    v49 = v16;
    _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: isTesting: %s", buf, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer generateStateDump];
  }

  v17 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [(WPDaemonServer *)self isRangingEnabled];
    v20 = "no";
    if (v19)
    {
      v20 = "yes";
    }

    *buf = 136315138;
    v49 = v20;
    _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: isRangingEnabled: %s", buf, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer generateStateDump];
  }

  v21 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [(WPDaemonServer *)self systemLocked];
    v24 = "no";
    if (v23)
    {
      v24 = "yes";
    }

    *buf = 136315138;
    v49 = v24;
    _os_log_impl(&dword_272965000, v22, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: systemLocked: %s", buf, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer generateStateDump];
  }

  v25 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    v27 = [(WPDaemonServer *)self clients];
    v28 = [v27 count];
    *buf = 134217984;
    v49 = v28;
    _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: clients (%ld):", buf, 0xCu);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = [(WPDaemonServer *)self clients];
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      v33 = 0;
      do
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v43 + 1) + 8 * v33);
        if (*v2 != -1)
        {
          [WPDaemonServer generateStateDump];
        }

        v35 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v36 = v35;
          [(WPDaemonServer *)self clients];
          v37 = v3;
          v39 = v38 = v2;
          v40 = [v39 objectForKeyedSubscript:v34];
          *buf = 138412290;
          v49 = v40;
          _os_log_impl(&dword_272965000, v36, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: %@", buf, 0xCu);

          v2 = v38;
          v3 = v37;
        }

        ++v33;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v31);
  }

  +[WPDClient generateStateDump];
  v41 = *MEMORY[0x277D85DE8];
}

- (void)dumpDaemonState
{
  if (+[WPDaemonServer isInternalBuild])
  {
    objc_initWeak(location, self);
    v3 = [(WPDaemonServer *)self serverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__WPDaemonServer_dumpDaemonState__block_invoke;
    block[3] = &unk_279E58EE8;
    objc_copyWeak(&v6, location);
    dispatch_async(v3, block);

    objc_destroyWeak(&v6);
    objc_destroyWeak(location);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer dumpDaemonState];
    }

    v4 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "Statedump disabled on non-internal builds.", location, 2u);
    }
  }
}

void __33__WPDaemonServer_dumpDaemonState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dumpDaemonStateAsync];
    WeakRetained = v2;
  }
}

- (void)dumpDaemonStateAsync
{
  v21 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer dumpDaemonStateAsync];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: BEGIN", buf, 2u);
  }

  [(WPDaemonServer *)self generateStateDump];
  v4 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(WPDaemonServer *)self managers];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * i) generateStateDump];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  v10 = [(WPDaemonServer *)self statsManager];
  [v10 generateStateDump];

  objc_autoreleasePoolPop(v4);
  v11 = [(WPDaemonServer *)self spObjectDiscoveryClient];

  if (v11)
  {
    v12 = [(WPDaemonServer *)self spObjectDiscoveryClient];
    [v12 generateStateDump];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer dumpDaemonStateAsync];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: END", buf, 2u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)initWithCBStackAdaptor:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithCBStackAdaptor:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithCBStackAdaptor:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__WPDaemonServer_initManagers__block_invoke_207_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __29__WPDaemonServer_updateState__block_invoke_cold_4(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 cbState];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xEu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(void *)a1 .cold.3(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 clientUUID];
  v6 = 138543362;
  v7 = v4;
  _os_log_debug_impl(&dword_272965000, v3, OS_LOG_TYPE_DEBUG, "Added WPDClient %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(void *)a1 .cold.5(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 clients];
  [v4 count];
  v5 = [a2 clients];
  v6 = [v5 allValues];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 processName];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(void *)a1 .cold.4(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 processName];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_272965000, v3, OS_LOG_TYPE_ERROR, "Client for process %@ doesn't have a client UUID", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __44__WPDaemonServer_notifyClientsOfStateChange__block_invoke_2_cold_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 clientUUID];
  v14 = [a3 processName];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x22u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enableRanging:(void *)a1 .cold.4(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 persistence];
  [v4 isRangingEnabled];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xEu);

  v10 = *MEMORY[0x277D85DE8];
}

@end