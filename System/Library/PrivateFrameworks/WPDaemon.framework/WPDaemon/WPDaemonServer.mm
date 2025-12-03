@interface WPDaemonServer
+ (BOOL)isInternalBuild;
+ (BOOL)supportsRanging;
+ (void)initialize;
- (BOOL)isClientTestMode:(id)mode;
- (BOOL)isRangingEnabled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)scanWithRetainDuplicates;
- (WPDaemonServer)initWithCBStackAdaptor:(id)adaptor;
- (id)clientForMachName:(id)name;
- (id)getAllClients;
- (id)getClientForUUID:(id)d;
- (void)SetupSignalHandler;
- (void)addClient:(id)client;
- (void)cbManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)disableScanningForClient:(id)client;
- (void)dumpDaemonState;
- (void)dumpDaemonStateAsync;
- (void)generateStateDump;
- (void)initClients;
- (void)initManagers;
- (void)lockStateUpdate;
- (void)mirroringStateUpdate;
- (void)notifyClientsOfStateChange;
- (void)notifyManagersOfStateChange;
- (void)registerClient:(id)client withMachName:(id)name withCompletion:(id)completion;
- (void)registerForSpringboardNotifications;
- (void)removeClient:(id)client;
- (void)screenStateUpdate;
- (void)setCbState:(int64_t)state;
- (void)startListening;
- (void)updateState;
@end

@implementation WPDaemonServer

- (BOOL)scanWithRetainDuplicates
{
  scanManager = [(WPDaemonServer *)self scanManager];
  retainDuplicates = [scanManager retainDuplicates];

  return retainDuplicates;
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
  scanManager = [(WPDaemonServer *)self scanManager];
  [scanManager updateScanner];

  objectDiscoveryManager = [(WPDaemonServer *)self objectDiscoveryManager];
  [objectDiscoveryManager updateScanner];

  advertisingManager = [(WPDaemonServer *)self advertisingManager];
  [advertisingManager updateAdvertiser];

  statsManager = [(WPDaemonServer *)self statsManager];
  [statsManager reportPLStats];
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
  persistence = [(WPDaemonServer *)self persistence];
  if (persistence)
  {
    persistence2 = [(WPDaemonServer *)self persistence];
    isRangingEnabled = [persistence2 isRangingEnabled];
  }

  else
  {
    isRangingEnabled = 0;
  }

  return isRangingEnabled;
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

- (WPDaemonServer)initWithCBStackAdaptor:(id)adaptor
{
  adaptorCopy = adaptor;
  v23.receiver = self;
  v23.super_class = WPDaemonServer;
  v6 = [(WPDaemonServer *)&v23 init];
  v7 = v6;
  if (v6)
  {
    v6->_cbState = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    clients = v7->_clients;
    v7->_clients = dictionary;

    v10 = [MEMORY[0x277CBEB58] set];
    testClients = v7->_testClients;
    v7->_testClients = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    privilegedClients = v7->_privilegedClients;
    v7->_privilegedClients = v12;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    clientsWithMach = v7->_clientsWithMach;
    v7->_clientsWithMach = strongToWeakObjectsMapTable;

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
      objc_storeStrong(&v7->_stackAdaptor, adaptor);
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
  serverQueue = [(WPDaemonServer *)self serverQueue];
  v5 = [(WPDState *)v3 initWithQueue:serverQueue];
  [(WPDaemonServer *)self setWpdState:v5];

  wpdState = [(WPDaemonServer *)self wpdState];
  -[WPDaemonServer setCbState:](self, "setCbState:", [wpdState state]);

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
    scanManager = [(WPDaemonServer *)self scanManager];
    v30[0] = scanManager;
    advertisingManager = [(WPDaemonServer *)self advertisingManager];
    v30[1] = advertisingManager;
    pipeManager = [(WPDaemonServer *)self pipeManager];
    v30[2] = pipeManager;
    zoneManager = [(WPDaemonServer *)self zoneManager];
    v30[3] = zoneManager;
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

    scanManager2 = [(WPDaemonServer *)self scanManager];
    v29[0] = scanManager2;
    advertisingManager2 = [(WPDaemonServer *)self advertisingManager];
    v29[1] = advertisingManager2;
    pipeManager2 = [(WPDaemonServer *)self pipeManager];
    v29[2] = pipeManager2;
    zoneManager2 = [(WPDaemonServer *)self zoneManager];
    v29[3] = zoneManager2;
    objectDiscoveryManager = [(WPDaemonServer *)self objectDiscoveryManager];
    v29[4] = objectDiscoveryManager;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
    [(WPDaemonServer *)self setManagers:v24];
  }

  if (+[WPDaemonServer supportsRanging])
  {
    scanManager3 = [(WPDaemonServer *)self scanManager];
    [scanManager3 enableRanging:{-[WPDaemonServer isRangingEnabled](self, "isRangingEnabled")}];
  }

  wpdState2 = [(WPDaemonServer *)self wpdState];
  [wpdState2 updateWithCompletion:&__block_literal_global_209];

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
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    [(WPDObjectDiscoveryClient *)v4 registerWithDaemon:@"WPObjectDiscovery" forProcess:processName machName:0 holdVouchers:0];
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
  spObjectDiscoveryClient = [(WPDaemonServer *)self spObjectDiscoveryClient];

  if (spObjectDiscoveryClient)
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

- (BOOL)isClientTestMode:(id)mode
{
  modeCopy = mode;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(WPDaemonServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WPDaemonServer_isClientTestMode___block_invoke;
  block[3] = &unk_279E59050;
  v9 = modeCopy;
  v10 = &v11;
  block[4] = self;
  v6 = modeCopy;
  dispatch_sync(queue, block);

  LOBYTE(modeCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return modeCopy;
}

void __35__WPDaemonServer_isClientTestMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) testClients];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (id)getClientForUUID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  serverQueue = [(WPDaemonServer *)self serverQueue];
  label = dispatch_queue_get_label(serverQueue);

  v7 = dispatch_queue_get_label(0);
  if (!strcmp(label, v7))
  {
    clients = [(WPDaemonServer *)self clients];
    v11 = [clients objectForKeyedSubscript:dCopy];
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

    serverQueue2 = [(WPDaemonServer *)self serverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__WPDaemonServer_getClientForUUID___block_invoke_226;
    block[3] = &unk_279E59050;
    v18 = &v19;
    block[4] = self;
    v17 = dCopy;
    dispatch_sync(serverQueue2, block);
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
  clients = [(WPDaemonServer *)self clients];
  allValues = [clients allValues];
  v5 = [v2 setWithArray:allValues];

  return v5;
}

- (void)setCbState:(int64_t)state
{
  if (self->_cbState != state)
  {
    self->_cbState = state;
  }

  [(WPDaemonServer *)self notifyClientsOfStateChange];
}

- (void)cbManagerDidUpdateState:(id)state
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__WPDaemonServer_cbManagerDidUpdateState___block_invoke;
  v7[3] = &unk_279E59078;
  v7[4] = self;
  stateCopy = state;
  v5 = MEMORY[0x2743D14E0](v7);
  wpdState = [(WPDaemonServer *)self wpdState];
  [wpdState updateWithManager:stateCopy Completion:v5];
}

- (void)updateState
{
  objc_initWeak(&location, self);
  serverQueue = [(WPDaemonServer *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WPDaemonServer_updateState__block_invoke;
  block[3] = &unk_279E590A0;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(serverQueue, block);

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
  wpdState = [(WPDaemonServer *)self wpdState];
  state = [wpdState state];

  wpdState2 = [(WPDaemonServer *)self wpdState];
  restricted = [wpdState2 restricted];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  managers = [(WPDaemonServer *)self managers];
  v8 = [managers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(managers);
        }

        [*(*(&v13 + 1) + 8 * v11++) updateState:state Restricted:restricted];
      }

      while (v9 != v11);
      v9 = [managers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(id)client
{
  v31 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  conn = [clientCopy conn];
  v6 = [conn valueForEntitlement:@"com.apple.wirelessproxd-util-test"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer addClient:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      clientUUID = [clientCopy clientUUID];
      *buf = 138543362;
      v30 = clientUUID;
      _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "WiProx test client has connected (UUID: %{public}@)", buf, 0xCu);
    }

    queue = [(WPDaemonServer *)self queue];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __28__WPDaemonServer_addClient___block_invoke_241;
    v26 = &unk_279E590C8;
    selfCopy = self;
    v12 = clientCopy;
    v28 = v12;
    dispatch_sync(queue, &v23);

    [v12 setIsTestModeClient:{1, v23, v24, v25, v26, selfCopy}];
  }

  conn2 = [clientCopy conn];
  v14 = [conn2 valueForEntitlement:@"com.apple.wirelessproxd-disable-scans"];
  bOOLValue2 = [v14 BOOLValue];

  if (bOOLValue2)
  {
    [clientCopy setCanDisableScans:1];
  }

  conn3 = [clientCopy conn];

  if (conn3)
  {
    conn4 = [clientCopy conn];
    [conn4 resume];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDaemonServer addClient:];
  }

  v18 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDaemonServer *)v18 addClient:clientCopy];
  }

  clients = [(WPDaemonServer *)self clients];
  clientUUID2 = [clientCopy clientUUID];
  [clients setObject:clientCopy forKeyedSubscript:clientUUID2];

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

- (void)removeClient:(id)client
{
  clientCopy = client;
  clientUUID = [clientCopy clientUUID];
  if (clientUUID)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDaemonServer removeClient:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPDaemonServer *)clientUUID removeClient:v6, clientCopy];
    }

    clients = [(WPDaemonServer *)self clients];
    [clients removeObjectForKey:clientUUID];

    queue = [(WPDaemonServer *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__WPDaemonServer_removeClient___block_invoke_249;
    block[3] = &unk_279E590C8;
    block[4] = self;
    v9 = clientUUID;
    v29 = v9;
    dispatch_sync(queue, block);

    privilegedClients = [(WPDaemonServer *)self privilegedClients];
    v11 = [privilegedClients containsObject:v9];

    if (v11)
    {
      privilegedClients2 = [(WPDaemonServer *)self privilegedClients];
      [privilegedClients2 removeObject:v9];
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
      [(WPDaemonServer *)v13 removeClient:clientCopy];
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
    testClients = [(WPDaemonServer *)self testClients];
    v16 = [testClients count];

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

  scanManager = [(WPDaemonServer *)self scanManager];
  if ([scanManager scanningDisabled])
  {
    privilegedClients3 = [(WPDaemonServer *)self privilegedClients];
    v20 = [privilegedClients3 count];

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

    scanManager2 = [(WPDaemonServer *)self scanManager];
    [scanManager2 setScanningDisabled:0];

    scanManager = [(WPDaemonServer *)self scanManager];
    [scanManager updateScanner];
  }

LABEL_32:
  objectDiscoveryManager = [(WPDaemonServer *)self objectDiscoveryManager];
  if (![objectDiscoveryManager scanningDisabled])
  {
LABEL_35:

    goto LABEL_36;
  }

  privilegedClients4 = [(WPDaemonServer *)self privilegedClients];
  v25 = [privilegedClients4 count];

  if (!v25)
  {
    objectDiscoveryManager2 = [(WPDaemonServer *)self objectDiscoveryManager];
    [objectDiscoveryManager2 setScanningDisabled:0];

    objectDiscoveryManager = [(WPDaemonServer *)self objectDiscoveryManager];
    [objectDiscoveryManager updateScanner];
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

- (void)registerClient:(id)client withMachName:(id)name withCompletion:(id)completion
{
  clientCopy = client;
  nameCopy = name;
  completionCopy = completion;
  queue = [(WPDaemonServer *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__WPDaemonServer_registerClient_withMachName_withCompletion___block_invoke;
  v15[3] = &unk_279E590F0;
  v16 = clientCopy;
  v17 = nameCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = nameCopy;
  v14 = clientCopy;
  dispatch_sync(queue, v15);
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

- (id)clientForMachName:(id)name
{
  nameCopy = name;
  clientsWithMach = [(WPDaemonServer *)self clientsWithMach];
  v6 = [clientsWithMach objectForKey:nameCopy];

  return v6;
}

- (void)notifyClientsOfStateChange
{
  wpdState = [(WPDaemonServer *)self wpdState];
  restricted = [wpdState restricted];

  wpdState2 = [(WPDaemonServer *)self wpdState];
  state = [wpdState2 state];

  queue = [(WPDaemonServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WPDaemonServer_notifyClientsOfStateChange__block_invoke;
  block[3] = &unk_279E59138;
  block[4] = self;
  block[5] = state;
  v9 = restricted;
  dispatch_sync(queue, block);
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
  serverQueue = [(WPDaemonServer *)self serverQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__WPDaemonServer_startListening__block_invoke;
  v4[3] = &unk_279E58EE8;
  objc_copyWeak(&v5, &location);
  dispatch_async(serverQueue, v4);

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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [[WPDClient alloc] initWithXPCConnection:connectionCopy server:self];

  serverQueue = [(WPDaemonServer *)self serverQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__WPDaemonServer_listener_shouldAcceptNewConnection___block_invoke;
  v10[3] = &unk_279E590C8;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_sync(serverQueue, v10);

  return 1;
}

- (void)registerForSpringboardNotifications
{
  objc_initWeak(location, self);
  if (self->_screenDimmedChangeNotifyToken == -1)
  {
    serverQueue = [(WPDaemonServer *)self serverQueue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke;
    handler[3] = &unk_279E59160;
    objc_copyWeak(&v39, location);
    notify_register_dispatch("com.apple.springboardservices.eventobserver.internalSBSEventObserverEventDimmed", &self->_screenDimmedChangeNotifyToken, serverQueue, handler);

    objc_destroyWeak(&v39);
  }

  if (self->_screenUndimmedChangeNotifyToken == -1)
  {
    serverQueue2 = [(WPDaemonServer *)self serverQueue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_286;
    v36[3] = &unk_279E59160;
    objc_copyWeak(&v37, location);
    notify_register_dispatch("com.apple.springboardservices.eventobserver.internalSBSEventObserverEventUndimmed", &self->_screenUndimmedChangeNotifyToken, serverQueue2, v36);

    objc_destroyWeak(&v37);
  }

  if (_os_feature_enabled_impl() && self->_screenDisplayChangedNotifyToken == -1)
  {
    serverQueue3 = [(WPDaemonServer *)self serverQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_295;
    v34[3] = &unk_279E59160;
    objc_copyWeak(&v35, location);
    notify_register_dispatch("com.apple.iokit.hid.displayStatus", &self->_screenDisplayChangedNotifyToken, serverQueue3, v34);

    objc_destroyWeak(&v35);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_301;
  v32[3] = &unk_279E59160;
  objc_copyWeak(&v33, location);
  v6 = MEMORY[0x2743D14E0](v32);
  serverQueue4 = [(WPDaemonServer *)self serverQueue];
  v8 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_screenStateToken, serverQueue4, v6);

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

  configurationForContinuityDisplay = [MEMORY[0x277D0AD18] configurationForContinuityDisplay];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_313;
  v30[3] = &unk_279E591B0;
  v30[4] = self;
  objc_copyWeak(&v31, location);
  [configurationForContinuityDisplay setTransitionHandler:v30];
  v10 = [MEMORY[0x277D0AD10] monitorWithConfiguration:configurationForContinuityDisplay];
  [(WPDaemonServer *)self setMirroringMonitor:v10];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_2_322;
  v28[3] = &unk_279E59160;
  objc_copyWeak(&v29, location);
  v11 = MEMORY[0x2743D14E0](v28);
  serverQueue5 = [(WPDaemonServer *)self serverQueue];
  v13 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_lockStatusChangedToken, serverQueue5, v11);

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

  serverQueue6 = [(WPDaemonServer *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__WPDaemonServer_registerForSpringboardNotifications__block_invoke_331;
  block[3] = &unk_279E591D8;
  v15 = v11;
  block[4] = self;
  v26 = v15;
  v16 = v6;
  v27 = v16;
  dispatch_async(serverQueue6, block);

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
      serverQueue7 = [(WPDaemonServer *)self serverQueue];
      v21 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->_firstUnlockStatusChangedToken, serverQueue7, v18);

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
  scanManager = [(WPDaemonServer *)self scanManager];
  [scanManager updateScanner];

  statsManager = [(WPDaemonServer *)self statsManager];
  [statsManager reportPLStats];
}

- (void)lockStateUpdate
{
  scanManager = [(WPDaemonServer *)self scanManager];
  [scanManager updateScanner];

  objectDiscoveryManager = [(WPDaemonServer *)self objectDiscoveryManager];
  [objectDiscoveryManager updateScanner];

  statsManager = [(WPDaemonServer *)self statsManager];
  [statsManager reportPLStats];
}

- (void)disableScanningForClient:(id)client
{
  clientCopy = client;
  scanManager = [(WPDaemonServer *)self scanManager];
  [scanManager setScanningDisabled:1];

  privilegedClients = [(WPDaemonServer *)self privilegedClients];
  [privilegedClients addObject:clientCopy];
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
    wpdState = [(WPDaemonServer *)self wpdState];
    *buf = 138412290;
    v49 = wpdState;
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
    cbState = [(WPDaemonServer *)self cbState];
    *buf = 138412546;
    v49 = v11;
    v50 = 1024;
    v51 = cbState;
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
    isTesting = [(WPDaemonServer *)self isTesting];
    v16 = "no";
    if (isTesting)
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
    isRangingEnabled = [(WPDaemonServer *)self isRangingEnabled];
    v20 = "no";
    if (isRangingEnabled)
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
    systemLocked = [(WPDaemonServer *)self systemLocked];
    v24 = "no";
    if (systemLocked)
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
    clients = [(WPDaemonServer *)self clients];
    v28 = [clients count];
    *buf = 134217984;
    v49 = v28;
    _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: clients (%ld):", buf, 0xCu);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  clients2 = [(WPDaemonServer *)self clients];
  v30 = [clients2 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
          objc_enumerationMutation(clients2);
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
      v31 = [clients2 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
    serverQueue = [(WPDaemonServer *)self serverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__WPDaemonServer_dumpDaemonState__block_invoke;
    block[3] = &unk_279E58EE8;
    objc_copyWeak(&v6, location);
    dispatch_async(serverQueue, block);

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
  managers = [(WPDaemonServer *)self managers];
  v6 = [managers countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(managers);
        }

        [*(*(&v15 + 1) + 8 * i) generateStateDump];
      }

      v7 = [managers countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  statsManager = [(WPDaemonServer *)self statsManager];
  [statsManager generateStateDump];

  objc_autoreleasePoolPop(v4);
  spObjectDiscoveryClient = [(WPDaemonServer *)self spObjectDiscoveryClient];

  if (spObjectDiscoveryClient)
  {
    spObjectDiscoveryClient2 = [(WPDaemonServer *)self spObjectDiscoveryClient];
    [spObjectDiscoveryClient2 generateStateDump];
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