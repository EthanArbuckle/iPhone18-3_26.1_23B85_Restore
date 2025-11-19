@interface WPDClient
+ (NSMutableSet)unknownUseCases;
+ (NSSet)approvedBundleIDs;
+ (NSSet)approvedProcesses;
+ (void)generateStateDump;
+ (void)initialize;
- (NSString)description;
- (OS_dispatch_queue)serverQueue;
- (WPDAdvertisingManager)advertisingManager;
- (WPDClient)initWithXPCConnection:(id)a3 server:(id)a4;
- (WPDClientDelegate)delegate;
- (WPDObjectDiscoveryManager)objectDiscoveryManager;
- (WPDPipeManager)pipeManager;
- (WPDScanManager)scanManager;
- (WPDZoneManager)zoneManager;
- (WPDaemonServer)server;
- (id)connectionForUUID:(id)a3;
- (id)getManager;
- (void)_signpostBegin;
- (void)_signpostEnd;
- (void)addCharacteristic:(id)a3 forService:(id)a4;
- (void)anyDiscoveredDevice:(id)a3;
- (void)cancelConnectionTimer:(id)a3;
- (void)checkAllowDuplicates:(id)a3;
- (void)checkEntitlements;
- (void)clearDuplicateFilterCache:(id)a3;
- (void)clearDuplicateFilterCache_async:(id)a3;
- (void)connectToPeer:(id)a3 withOptions:(id)a4;
- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5;
- (void)connectedDeviceOverLEPipe:(id)a3;
- (void)createdConnection:(id)a3;
- (void)dealloc;
- (void)destroy;
- (void)destroy_async;
- (void)disableScanning;
- (void)disconnectFromPeer:(id)a3;
- (void)disconnectedDeviceOverLEPipe:(id)a3 withError:(id)a4;
- (void)disconnectedPeer:(id)a3 error:(id)a4;
- (void)discoverCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4;
- (void)discoveredCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4;
- (void)discoveredDevice:(id)a3;
- (void)discoveredDevices:(id)a3;
- (void)dumpDaemonState;
- (void)enableRanging:(BOOL)a3 reply:(id)a4;
- (void)enableTestMode;
- (void)enteredZone:(id)a3 manufacturerData:(id)a4;
- (void)exitedZone:(id)a3;
- (void)getAllTrackedZones;
- (void)getPowerLogStats:(id)a3;
- (void)isRangingEnabledReply:(id)a3;
- (void)notifyClientStateChange:(int64_t)a3 Restricted:(BOOL)a4;
- (void)overrideAdvTimeout:(double)a3;
- (void)overrideScanTimeout:(double)a3;
- (void)peerTrackingAvailable;
- (void)peerTrackingFull;
- (void)queueBlock:(id)a3;
- (void)readyForDataTransfer;
- (void)receivedData:(id)a3 fromCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6;
- (void)receivedData:(id)a3 fromEndpoint:(id)a4 forPeripheral:(id)a5;
- (void)receivedTestResponse:(id)a3;
- (void)registerForAnyScanResults:(BOOL)a3;
- (void)registerWithDaemon:(id)a3 forProcess:(id)a4 machName:(id)a5 holdVouchers:(int64_t)a6;
- (void)resetConnection;
- (void)sendDataToCharacteristic:(id)a3 inService:(id)a4 forPeer:(id)a5;
- (void)sendDatatoLePipe:(id)a3 forPeer:(id)a4;
- (void)sendTestRequest:(id)a3;
- (void)sentData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6 withError:(id)a7;
- (void)sentData:(id)a3 toEndpoint:(id)a4 forPeripheral:(id)a5 withError:(id)a6;
- (void)setupConnection;
- (void)startAdvertising:(id)a3;
- (void)startAdvertising:(id)a3 reply:(id)a4;
- (void)startAdvertising_async:(id)a3;
- (void)startScanning:(id)a3 withDispatch:(BOOL)a4;
- (void)startScanning_async:(id)a3;
- (void)startTrackingPeerWithRequest:(id)a3;
- (void)startTrackingZone:(id)a3;
- (void)stopAdvertising:(id)a3;
- (void)stopAdvertising_async:(id)a3;
- (void)stopScanning:(id)a3;
- (void)stopScanning_async:(id)a3;
- (void)stopScans;
- (void)stopTrackingAllZones;
- (void)stopTrackingPeerWithRequest:(id)a3;
- (void)stopTrackingZones:(id)a3;
- (void)tickleMachPort;
- (void)unregisterEndpoint:(id)a3;
- (void)verifyApprovedUseCase;
@end

@implementation WPDClient

- (OS_dispatch_queue)serverQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_serverQueue);

  return WeakRetained;
}

- (WPDAdvertisingManager)advertisingManager
{
  WeakRetained = objc_loadWeakRetained(&self->_advertisingManager);

  return WeakRetained;
}

- (void)setupConnection
{
  v3 = +[WPDXPCInterfaces serverInterface];
  v4 = [(WPDClient *)self conn];
  [v4 setExportedInterface:v3];

  v5 = [(WPDClient *)self conn];
  [v5 setExportedObject:self];

  v6 = +[WPDXPCInterfaces clientInterface];
  v7 = [(WPDClient *)self conn];
  [v7 setRemoteObjectInterface:v6];

  v8 = [(WPDClient *)self conn];
  v9 = [(WPDClient *)self serverQueue];
  [v8 _setQueue:v9];

  objc_initWeak(&location, self);
  v10 = [(WPDClient *)self conn];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __28__WPDClient_setupConnection__block_invoke;
  v14[3] = &unk_279E58EE8;
  objc_copyWeak(&v15, &location);
  [v10 setInvalidationHandler:v14];

  v11 = [(WPDClient *)self conn];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__WPDClient_setupConnection__block_invoke_579;
  v12[3] = &unk_279E58EE8;
  objc_copyWeak(&v13, &location);
  [v11 setInterruptionHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)checkEntitlements
{
  v3 = [(WPDClient *)self conn];

  if (v3)
  {
    v4 = [(WPDClient *)self conn];
    v5 = [v4 valueForEntitlement:@"com.apple.wirelessproxd-location"];
    -[WPDClient setEntitledForZones:](self, "setEntitledForZones:", [v5 BOOLValue]);

    v6 = [(WPDClient *)self conn];
    v7 = [v6 valueForEntitlement:@"com.apple.wirelessproxd-object-discovery"];
    -[WPDClient setEntitledForObjectDiscovery:](self, "setEntitledForObjectDiscovery:", [v7 BOOLValue]);

    v9 = [(WPDClient *)self conn];
    v8 = [v9 valueForEntitlement:@"com.apple.wirelessproxd-enable-ranging"];
    -[WPDClient setEntitledForRanging:](self, "setEntitledForRanging:", [v8 BOOLValue]);
  }
}

- (WPDaemonServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (WPDScanManager)scanManager
{
  WeakRetained = objc_loadWeakRetained(&self->_scanManager);

  return WeakRetained;
}

- (void)stopScans
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v3 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)verifyApprovedUseCase
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = 1;
  OUTLINED_FUNCTION_7();
  v5 = v0;
  OUTLINED_FUNCTION_15(&dword_272965000, v1, v2, "WPDClient approved:%d use case: (%@)", v4);
  v3 = *MEMORY[0x277D85DE8];
}

+ (NSSet)approvedBundleIDs
{
  if (approvedBundleIDs_onceToken != -1)
  {
    +[WPDClient approvedBundleIDs];
  }

  v3 = approvedBundleIDs__approvedBundleIDs;

  return v3;
}

+ (NSSet)approvedProcesses
{
  if (approvedProcesses_onceToken != -1)
  {
    +[WPDClient approvedProcesses];
  }

  v3 = approvedProcesses__approvedProcesses;

  return v3;
}

+ (NSMutableSet)unknownUseCases
{
  if (unknownUseCases_onceToken != -1)
  {
    +[WPDClient unknownUseCases];
  }

  v3 = unknownUseCases__unknownUseCases;

  return v3;
}

uint64_t __28__WPDClient_unknownUseCases__block_invoke()
{
  unknownUseCases__unknownUseCases = [MEMORY[0x277CBEB58] set];

  return MEMORY[0x2821F96F8]();
}

uint64_t __30__WPDClient_approvedBundleIDs__block_invoke()
{
  approvedBundleIDs__approvedBundleIDs = [MEMORY[0x277CBEB98] setWithArray:&unk_288201AC0];

  return MEMORY[0x2821F96F8]();
}

uint64_t __30__WPDClient_approvedProcesses__block_invoke()
{
  approvedProcesses__approvedProcesses = [MEMORY[0x277CBEB98] setWithArray:&unk_288201AD8];

  return MEMORY[0x2821F96F8]();
}

+ (void)generateStateDump
{
  v20 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    +[WPDClient generateStateDump];
  }

  v2 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = +[WPDClient unknownUseCases];
    *buf = 134217984;
    v19 = [v4 count];
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: unknown use cases (%ld):", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = +[WPDClient unknownUseCases];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (WPLogInitOnce != -1)
        {
          +[WPDClient generateStateDump];
        }

        v11 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v10;
          _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: %@", buf, 0xCu);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)initialize
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(&dword_272965000, v0, OS_LOG_TYPE_DEBUG, "WPDClient using custom enable scan advert vouchers: %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

- (WPDClient)initWithXPCConnection:(id)a3 server:(id)a4
{
  v7 = a3;
  v8 = a4;
  v38.receiver = self;
  v38.super_class = WPDClient;
  v9 = [(WPDClient *)&v38 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conn, a3);
    bundleID = v10->_bundleID;
    v10->_bundleID = 0;

    if (v7)
    {
      v10->_processID = [v7 processIdentifier];
      v12 = [v7 valueForEntitlement:@"application-identifier"];
      v13 = v10->_bundleID;
      v10->_bundleID = v12;

      if (WPLogInitOnce != -1)
      {
        [WPDClient initWithXPCConnection:server:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDClient initWithXPCConnection:&v10->_bundleID server:?];
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCAC38] processInfo];
      v10->_processID = [v14 processIdentifier];

      v15 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [v15 bundleIdentifier];
      v17 = v10->_bundleID;
      v10->_bundleID = v16;

      if (WPLogInitOnce != -1)
      {
        [WPDClient initWithXPCConnection:server:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDClient initWithXPCConnection:&v10->_bundleID server:?];
      }
    }

    objc_storeWeak(&v10->_server, v8);
    v18 = [v8 serverQueue];
    objc_storeWeak(&v10->_serverQueue, v18);

    v10->_registered = 0;
    v19 = [MEMORY[0x277CCAD78] UUID];
    clientUUID = v10->_clientUUID;
    v10->_clientUUID = v19;

    *&v10->_entitledForZones = 0;
    v10->_entitledForRanging = 0;
    v21 = [MEMORY[0x277CBEB38] dictionary];
    connections = v10->_connections;
    v10->_connections = v21;

    v10->_pendingSent = 0;
    v10->_portTickled = 0;
    v23 = [MEMORY[0x277CBEB38] dictionary];
    advertTimers = v10->_advertTimers;
    v10->_advertTimers = v23;

    v25 = [MEMORY[0x277CBEB38] dictionary];
    advertTimerState = v10->_advertTimerState;
    v10->_advertTimerState = v25;

    v27 = [MEMORY[0x277CBEB38] dictionary];
    scanTimers = v10->_scanTimers;
    v10->_scanTimers = v27;

    v29 = [MEMORY[0x277CBEB38] dictionary];
    connectionTimer = v10->_connectionTimer;
    v10->_connectionTimer = v29;

    v10->_holdVouchers = 0;
    *&v10->_isTestModeClient = 0;
    *&v10->_scanDenylisted = 0;
    v10->_scanTimeout = 0.0;
    v10->_advTimeout = 0.0;
    v31 = [MEMORY[0x277CBEB58] set];
    lePipePeersSet = v10->_lePipePeersSet;
    v10->_lePipePeersSet = v31;

    v33 = [MEMORY[0x277CBEB58] set];
    endpointsSet = v10->_endpointsSet;
    v10->_endpointsSet = v33;

    *&v10->_isObjectDiscovery = 256;
    v10->_supportsRanging = +[WPDaemonServer supportsRanging];
    if (initWithXPCConnection_server__onceToken != -1)
    {
      [WPDClient initWithXPCConnection:server:];
    }

    scanVoucher = v10->_scanVoucher;
    v10->_scanVoucher = 0;

    advertVoucher = v10->_advertVoucher;
    v10->_advertVoucher = 0;

    [(WPDClient *)v10 setupConnection];
    [(WPDClient *)v10 checkEntitlements];
    v10->_wpDClientSignPostID = os_signpost_id_make_with_pointer(WiProxLog, v10);
  }

  return v10;
}

void __42__WPDClient_initWithXPCConnection_server___block_invoke_490()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v1 = AllZeroUUID;
  AllZeroUUID = v0;

  if (WPLogInitOnce != -1)
  {
    __42__WPDClient_initWithXPCConnection_server___block_invoke_490_cold_1();
  }

  v2 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __42__WPDClient_initWithXPCConnection_server___block_invoke_490_cold_2(v2);
  }

  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_288201AF0];
  v4 = DenylistedProcesses;
  DenylistedProcesses = v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDClient dealloc];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(WPDClient *)self clientUUID];
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, "Deallocing WPDClient %@", buf, 0xCu);
  }

  v6 = [(WPDClient *)self conn];

  if (v6)
  {
    v7 = [(WPDClient *)self clientTypeString];
    v8 = [v7 isEqual:@"WPATVSetup"];

    if ((v8 & 1) == 0)
    {
      v9 = [(WPDClient *)self conn];
      [v9 invalidate];
    }

    [(WPDClient *)self setConn:0];
  }

  v11.receiver = self;
  v11.super_class = WPDClient;
  [(WPDClient *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WPDClient *)self clientUUID];
  v5 = [(WPDClient *)self processName];
  v6 = [(WPDClient *)self processID];
  v7 = [(WPDClient *)self bundleID];
  v8 = [(WPDClient *)self clientTypeString];
  v9 = [v3 stringWithFormat:@" %@: %@ (%d) (%@) (%@) (%ld)", v4, v5, v6, v7, v8, -[WPDClient holdVouchers](self, "holdVouchers")];

  return v9;
}

- (void)registerWithDaemon:(id)a3 forProcess:(id)a4 machName:(id)a5 holdVouchers:(int64_t)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (WPLogInitOnce != -1)
  {
    [WPDClient registerWithDaemon:forProcess:machName:holdVouchers:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    v25 = v13;
    v26 = [(WPDClient *)self clientUUID];
    *buf = 138412802;
    v30 = v26;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    _os_log_debug_impl(&dword_272965000, v25, OS_LOG_TYPE_DEBUG, "Registering with daemon client %@ type %@ for process %@", buf, 0x20u);
  }

  [(WPDClient *)self setProcessName:v11];
  [(WPDClient *)self setHoldVouchers:a6];
  [(WPDClient *)self setClientTypeString:v10];
  -[WPDClient setScanDenylisted:](self, "setScanDenylisted:", [DenylistedProcesses containsObject:v11]);
  v14 = [(WPDClient *)self clientTypeString];
  -[WPDClient setIsObjectDiscovery:](self, "setIsObjectDiscovery:", [v14 isEqualToString:@"WPObjectDiscovery"]);

  if (([(WPDClient *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v15 = [(WPDClient *)self server];
    v16 = v15;
    if (v12)
    {
      v17 = [v15 clientForMachName:v12];
      if (v17)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDClient registerWithDaemon:forProcess:machName:holdVouchers:];
        }

        v18 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          v20 = [(WPDClient *)self clientUUID];
          *buf = 138412290;
          v30 = v20;
          _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_INFO, "WPDClient removing new client %@", buf, 0xCu);
        }

        v21 = [(WPDClient *)self conn];
        [v17 resumeCommunicationWithConnection:v21 andProcessID:{-[WPDClient processID](self, "processID")}];

        [v16 removeClient:self];
        goto LABEL_19;
      }

      [(WPDClient *)self setMachName:v12];
    }

    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__WPDClient_registerWithDaemon_forProcess_machName_holdVouchers___block_invoke_522;
    v27[3] = &unk_279E59208;
    objc_copyWeak(&v28, buf);
    v23 = MEMORY[0x2743D14E0](v27);
    [v16 registerClient:self withMachName:v12 withCompletion:v23];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
LABEL_19:

    goto LABEL_20;
  }

  [(WPDClient *)self setMachName:v12];
  [(WPDClient *)self setEntitledForObjectDiscovery:1];
  if (WPLogInitOnce != -1)
  {
    [WPDClient registerWithDaemon:forProcess:machName:holdVouchers:];
  }

  v22 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDClient registerWithDaemon:v22 forProcess:self machName:? holdVouchers:?];
  }

LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
}

void __65__WPDClient_registerWithDaemon_forProcess_machName_holdVouchers___block_invoke_522(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v17 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setRegistered:1];
    [v16 setScanManager:v17];
    [v16 setAdvertisingManager:v11];
    [v16 setZoneManager:v12];
    [v16 setPipeManager:v13];
    [v16 setObjectDiscoveryManager:v14];
    [v16 sendRegisteredWithDaemonAndContinuingSession:0];
  }
}

- (void)tickleMachPort
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_18() clientUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __28__WPDClient_setupConnection__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __28__WPDClient_setupConnection__block_invoke_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = [WeakRetained clientUUID];
      v5 = [WeakRetained processName];
      v7 = 138543874;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      v11 = 1024;
      v12 = [WeakRetained processID];
      _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "WPDClient %{public}@ XPC connection for process %{public}@ (%d) is becoming invalidated", &v7, 0x1Cu);
    }

    [WeakRetained destroy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __28__WPDClient_setupConnection__block_invoke_579(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __28__WPDClient_setupConnection__block_invoke_579_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = [WeakRetained clientUUID];
      v5 = [WeakRetained processName];
      v7 = 138543874;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      v11 = 1024;
      v12 = [WeakRetained processID];
      _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "WPDClient %{public}@ XPC connection for client %{public}@ (%d) is becoming interrupted", &v7, 0x1Cu);
    }

    [WeakRetained destroy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)destroy
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(WPDClient *)self machName];

  if (v3)
  {
    v4 = [(WPDClient *)self messageQueue];

    if (!v4)
    {
      v5 = [@"com.apple.wirelessproxd.framework-message-queue" UTF8String];
      v6 = dispatch_queue_attr_make_initially_inactive(0);
      v7 = [(WPDClient *)self serverQueue];
      v8 = dispatch_queue_create_with_target_V2(v5, v6, v7);
      [(WPDClient *)self setMessageQueue:v8];
    }

    if (WPLogInitOnce != -1)
    {
      [WPDClient destroy];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(WPDClient *)self clientUUID];
      v12 = [(WPDClient *)self processName];
      v13 = [(WPDClient *)self processID];
      v14 = [(WPDClient *)self machName];
      *buf = 138544386;
      v31 = v11;
      v32 = 2050;
      v33 = self;
      v34 = 2114;
      v35 = v12;
      v36 = 1024;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_DEFAULT, "Invalidating WPDClient %{public}@ (%{public}p) of process %{public}@ (%d) with mach port %@", buf, 0x30u);
    }

    v15 = [(WPDClient *)self conn];
    [v15 invalidate];

    [(WPDClient *)self setConn:0];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient destroy];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(WPDClient *)self clientUUID];
      v19 = [(WPDClient *)self processName];
      *buf = 138544130;
      v31 = v18;
      v32 = 2050;
      v33 = self;
      v34 = 2114;
      v35 = v19;
      v36 = 1024;
      v37 = [(WPDClient *)self processID];
      _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "Removing WPDClient %{public}@ (%{public}p) of process %{public}@ (%d)", buf, 0x26u);
    }

    if ([(WPDClient *)self registered])
    {
      objc_initWeak(buf, self);
      v20 = [(WPDClient *)self serverQueue];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __20__WPDClient_destroy__block_invoke_588;
      v27 = &unk_279E590A0;
      objc_copyWeak(&v29, buf);
      v28 = self;
      dispatch_async(v20, &v24);

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    v21 = [(WPDClient *)self conn:v24];
    [v21 invalidate];

    v22 = [(WPDClient *)self server];
    [v22 removeClient:self];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __20__WPDClient_destroy__block_invoke_588(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) destroy_async];
    WeakRetained = v3;
  }
}

- (void)destroy_async
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [OUTLINED_FUNCTION_9() processName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10() processID];
  v6 = 138543618;
  v7 = v2;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_15(&dword_272965000, v1, v4, "Advert voucher release for process %{public}@ (%d)", &v6);

  v5 = *MEMORY[0x277D85DE8];
}

void __26__WPDClient_destroy_async__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 pipeManager];
  v5 = [*(a1 + 32) clientUUID];
  [v6 unregisterEndpoint:v4 forClient:v5];
}

- (void)queueBlock:(id)a3
{
  block = a3;
  v4 = [(WPDClient *)self conn];

  if (v4)
  {
    goto LABEL_2;
  }

  v5 = [(WPDClient *)self machName];

  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:@"No NSXPConnection" format:@"We have no active NSXPCConnection or a mach port set"];
LABEL_2:
    block[2]();
    goto LABEL_5;
  }

  [(WPDClient *)self tickleMachPort];
  v6 = [(WPDClient *)self messageQueue];
  dispatch_async(v6, block);

LABEL_5:
}

- (void)addCharacteristic:(id)a3 forService:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDClient addCharacteristic:forService:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ for service %{public}@", &v12, 0x16u);
  }

  v9 = [(WPDClient *)self advertisingManager];
  v10 = [(WPDClient *)self clientUUID];
  [v9 addCharacteristic:v6 forService:v7 forClient:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising:(id)a3 reply:(id)a4
{
  v7 = a4;
  [(WPDClient *)self startAdvertising:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)startAdvertising:(id)a3
{
  v4 = a3;
  if (_enableScanAdvertVouchers == 1 && ([(WPDClient *)self holdVouchers]& 8) != 0)
  {
    v5 = voucher_copy();
    [(WPDClient *)self setAdvertVoucher:v5];

    [v4 setHoldVoucher:1];
    if (WPLogInitOnce != -1)
    {
      [WPDClient startAdvertising:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPDClient *)v6 startAdvertising:?];
    }
  }

  objc_initWeak(&location, self);
  v7 = [(WPDClient *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WPDClient_startAdvertising___block_invoke_612;
  block[3] = &unk_279E590A0;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __30__WPDClient_startAdvertising___block_invoke_612(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained startAdvertising_async:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)startAdvertising_async:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(WPDClient *)self registered])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient startAdvertising_async:];
    }

    v42 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDClient *)v42 startAdvertising_async:?];
    }

    v41 = 0;
    goto LABEL_39;
  }

  v5 = [v4 clientType];
  [v4 updateTime];
  v7 = v6;
  if ([(WPDClient *)self isTestModeClient])
  {
    [(WPDClient *)self advTimeout];
    if (v8 != 0.0)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient startAdvertising_async:];
      }

      v9 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        [(WPDClient *)self advTimeout];
        v12 = v11;
        v13 = [(WPDClient *)self clientTypeString];
        *buf = 134218242;
        *v55 = v12;
        *&v55[8] = 2112;
        *&v55[10] = v13;
        _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_DEFAULT, "Setting advert update time to %f for %@", buf, 0x16u);
      }

      [(WPDClient *)self advTimeout];
      v7 = v14;
    }
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient startAdvertising_async:];
  }

  v15 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [(WPDClient *)self processName];
    v18 = [(WPDClient *)self processID];
    v19 = [v4 advertisingRate];
    v20 = [v4 advertisingRate];
    *buf = 138544386;
    *v55 = v17;
    *&v55[8] = 1024;
    *&v55[10] = v18;
    *&v55[14] = 2048;
    *&v55[16] = v5;
    v56 = 2048;
    v57 = v19;
    v58 = 2048;
    v59 = v20 * 0.625;
    _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_DEFAULT, "Start advertising for process %{public}@ (%d) of type %ld with advertising interval %ld (%.2f ms)", buf, 0x30u);
  }

  if (*&v7 > 0.0)
  {
    v21 = [(WPDClient *)self advertTimers];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v23 = [v21 objectForKeyedSubscript:v22];

    if (v23)
    {
      v24 = [(WPDClient *)self advertTimers];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
      v26 = [v24 objectForKeyedSubscript:v25];
      dispatch_source_cancel(v26);

      v27 = [(WPDClient *)self advertTimers];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
      [v27 setObject:0 forKeyedSubscript:v28];

      if (WPLogInitOnce != -1)
      {
        [WPDClient startAdvertising_async:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDClient startAdvertising_async:];
      }
    }

    if (WPLogInitOnce != -1)
    {
      [WPDClient startAdvertising_async:];
    }

    v29 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v55 = v5;
      *&v55[4] = 2048;
      *&v55[6] = v7;
      _os_log_impl(&dword_272965000, v29, OS_LOG_TYPE_DEFAULT, "Setting advert timer for client %d with time %.2f ", buf, 0x12u);
    }

    v30 = [(WPDClient *)self serverQueue];
    v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v30);

    v32 = dispatch_time(0, (*&v7 * 1000000000.0));
    dispatch_source_set_timer(v31, v32, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(buf, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __36__WPDClient_startAdvertising_async___block_invoke_625;
    handler[3] = &unk_279E592A0;
    v51 = v5;
    v50[1] = v7;
    v33 = v31;
    v48 = v33;
    objc_copyWeak(v50, buf);
    v49 = v4;
    dispatch_source_set_event_handler(v33, handler);
    v34 = [(WPDClient *)self advertTimerState];
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    [v34 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v35];

    v36 = [(WPDClient *)self advertTimers];
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    [v36 setObject:v33 forKeyedSubscript:v37];

    objc_destroyWeak(v50);
    objc_destroyWeak(buf);
  }

  if (v5 == 18)
  {
    v38 = [(WPDClient *)self objectDiscoveryManager];

    if (v38)
    {
      v39 = [(WPDClient *)self objectDiscoveryManager];
      v40 = [(WPDClient *)self clientUUID];
      v41 = [v39 addAdvertisingRequest:v4 forClient:v40];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient startAdvertising_async:];
      }

      v44 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPDClient *)v44 startAdvertising_async:?];
      }

      v45 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA450];
      v53 = @"ObjectDiscovery advertising is not supported on this platform.";
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v41 = [v45 errorWithDomain:@"WPErrorDomain" code:27 userInfo:v39];
    }
  }

  else
  {
    v39 = [(WPDClient *)self advertisingManager];
    v43 = [(WPDClient *)self clientUUID];
    v41 = [v39 addAdvertisingRequest:v4 forClient:v43];
  }

  if (v41)
  {
LABEL_39:
    -[WPDClient advertisingFailedToStart:ofType:](self, "advertisingFailedToStart:ofType:", v41, [v4 clientType]);
    [(WPDClient *)self setPendingSent:0];
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __36__WPDClient_startAdvertising_async___block_invoke_625(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    __36__WPDClient_startAdvertising_async___block_invoke_625_cold_1();
  }

  v2 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    *buf = 67109376;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&dword_272965000, v2, OS_LOG_TYPE_DEFAULT, "Advert timer expired for client %d after %.2f seconds", buf, 0x12u);
  }

  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 40) clientType] == 8)
    {
      [*(a1 + 40) setUpdateTime:0.0];
      if (WPLogInitOnce != -1)
      {
        __36__WPDClient_startAdvertising_async___block_invoke_625_cold_2();
      }

      v6 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "HeySiri force stoping advertising", buf, 2u);
      }

      [WeakRetained stopAdvertising:*(a1 + 40)];
    }

    v7 = [WeakRetained conn];
    v8 = [v7 remoteObjectProxy];
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__WPDClient_startAdvertising_async___block_invoke_631;
    v11[3] = &unk_279E59278;
    objc_copyWeak(v12, (a1 + 48));
    v13 = *(a1 + 64);
    v12[1] = *(a1 + 56);
    [v8 updateAdvertisingRequest:v9 withUpdate:v11];

    objc_destroyWeak(v12);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __36__WPDClient_startAdvertising_async___block_invoke_631(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_18;
  }

  if (v3)
  {
    v6 = [WeakRetained advertTimers];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 48)];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      if (WPLogInitOnce != -1)
      {
        __36__WPDClient_startAdvertising_async___block_invoke_631_cold_1();
      }

      v9 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 48);
        v11 = *(a1 + 40);
        v18 = 67109376;
        *v19 = v10;
        *&v19[4] = 2048;
        *&v19[6] = v11;
        _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Updating advert request for client %d after %.2f seconds", &v18, 0x12u);
      }

      [v5 startAdvertising:v3];
      goto LABEL_18;
    }

    if (WPLogInitOnce != -1)
    {
      __36__WPDClient_startAdvertising_async___block_invoke_631_cold_2();
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v16;
      v14 = [v5 processName];
      v18 = 138412546;
      *v19 = v14;
      *&v19[8] = 1024;
      *&v19[10] = [v5 processID];
      v15 = "Tried to update the advertising request interval for process %@ (%d), but a client has asked us to stop in the meantime";
      goto LABEL_17;
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __36__WPDClient_startAdvertising_async___block_invoke_631_cold_3();
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v5 processName];
      v18 = 138412546;
      *v19 = v14;
      *&v19[8] = 1024;
      *&v19[10] = [v5 processID];
      v15 = "Tried to update the advertising request for process %@ (%d) - NOOP";
LABEL_17:
      _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, v15, &v18, 0x12u);
    }
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising:(id)a3
{
  v4 = a3;
  if (_enableScanAdvertVouchers == 1 && ([(WPDClient *)self holdVouchers]& 8) != 0)
  {
    [(WPDClient *)self setAdvertVoucher:0];
    if (WPLogInitOnce != -1)
    {
      [WPDClient stopAdvertising:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPDClient *)v5 stopAdvertising:?];
    }
  }

  objc_initWeak(&location, self);
  v6 = [(WPDClient *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WPDClient_stopAdvertising___block_invoke_655;
  block[3] = &unk_279E590A0;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __29__WPDClient_stopAdvertising___block_invoke_655(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained stopAdvertising_async:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)stopAdvertising_async:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WPDClient *)self registered])
  {
    v5 = [v4 clientType];
    if (WPLogInitOnce != -1)
    {
      [WPDClient stopAdvertising_async:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(WPDClient *)self processName];
      *buf = 138543874;
      v32 = v8;
      v33 = 1024;
      v34 = [(WPDClient *)self processID];
      v35 = 2048;
      v36 = v5;
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Stop advertising for process %{public}@ (%d) of type %ld", buf, 0x1Cu);
    }

    v9 = [(WPDClient *)self advertTimers];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = [(WPDClient *)self advertTimers];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
      v14 = [v12 objectForKeyedSubscript:v13];
      dispatch_source_cancel(v14);

      v15 = [(WPDClient *)self advertTimers];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
      [v15 setObject:0 forKeyedSubscript:v16];
    }

    if (v5 == 18)
    {
      v17 = [(WPDClient *)self objectDiscoveryManager];

      if (!v17)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDClient stopAdvertising_async:];
        }

        v27 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDClient stopAdvertising_async:v27];
        }

        v28 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA450];
        v30 = @"ObjectDiscovery advertising is not supported on this platform.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v22 = [v28 errorWithDomain:@"WPErrorDomain" code:27 userInfo:v20];
        goto LABEL_17;
      }

      v18 = [(WPDClient *)self objectDiscoveryManager];
    }

    else
    {
      v18 = [(WPDClient *)self advertisingManager];
    }

    v20 = v18;
    v21 = [(WPDClient *)self clientUUID];
    v22 = [v20 removeAdvertisingRequest:v4 forClient:v21];

LABEL_17:
    if (v22)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient stopAdvertising_async:];
      }

      v23 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDClient stopAdvertising_async:v23];
      }
    }

    else
    {
      v24 = [(WPDClient *)self conn];
      v25 = [v24 remoteObjectProxy];
      [v25 advertisingStoppedOfType:objc_msgSend(v4 withError:{"clientType"), 0}];

      [(WPDClient *)self setPendingSent:0];
    }

    goto LABEL_24;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient stopAdvertising_async:];
  }

  v19 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDClient stopAdvertising_async:v19];
  }

LABEL_24:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientStateChange:(int64_t)a3 Restricted:(BOOL)a4
{
  v4 = a3;
  if (a3 == 3 && a4)
  {
    if ([(WPDClient *)self scanDenylisted])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient notifyClientStateChange:Restricted:];
      }

      v6 = WiProxLog;
      v4 = 2;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDClient notifyClientStateChange:v6 Restricted:?];
        v4 = 2;
      }
    }

    else
    {
      v4 = 3;
    }
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient notifyClientStateChange:Restricted:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDClient notifyClientStateChange:v7 Restricted:self];
  }

  v8 = [(WPDClient *)self conn];
  v9 = [v8 remoteObjectProxy];
  [v9 stateDidChange:v4];

  if (v4 >= 3)
  {
    if (v4 == 3)
    {
      [(WPDClient *)self setScansOff:0];
    }
  }

  else
  {
    [(WPDClient *)self stopScans];
    [(WPDClient *)self setScansOff:1];
    v10 = [(WPDClient *)self lePipePeersSet];
    [v10 removeAllObjects];
  }
}

- (void)discoveredDevice:(id)a3
{
  v4 = a3;
  v5 = [(WPDClient *)self serverQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__WPDClient_discoveredDevice___block_invoke;
  v7[3] = &unk_279E590C8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __30__WPDClient_discoveredDevice___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v4 = [*v2 objectForKeyedSubscript:@"kDeviceType"];
  v5 = [v4 unsignedIntegerValue];

  v6 = [*v2 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  kdebug_trace();
  if (WPLogInitOnce != -1)
  {
    __30__WPDClient_discoveredDevice___block_invoke_cold_1();
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = [v8 processName];
    v11 = [*(a1 + 40) clientUUID];
    *buf = 138413314;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    v23 = 1024;
    v24 = v5;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_INFO, "Telling process %@ (%@) about discovered device (%@) of type %d with data %@", buf, 0x30u);
  }

  objc_initWeak(buf, *(a1 + 40));
  v12 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __30__WPDClient_discoveredDevice___block_invoke_685;
  v14[3] = &unk_279E590A0;
  objc_copyWeak(&v16, buf);
  v15 = *(a1 + 32);
  [v12 queueBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __30__WPDClient_discoveredDevice___block_invoke_685(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained conn];
    v4 = [v3 remoteObjectProxy];
    [v4 deviceDiscovered:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (void)discoveredDevices:(id)a3
{
  v4 = a3;
  v5 = [(WPDClient *)self serverQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__WPDClient_discoveredDevices___block_invoke;
  v7[3] = &unk_279E590C8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __31__WPDClient_discoveredDevices___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 count];
    v2 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__WPDClient_discoveredDevices___block_invoke_2;
  v9[3] = &unk_279E592C8;
  v9[4] = *(a1 + 40);
  v9[5] = v3;
  [v2 enumerateObjectsUsingBlock:v9];
  objc_initWeak(&location, *(a1 + 40));
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__WPDClient_discoveredDevices___block_invoke_689;
  v5[3] = &unk_279E590A0;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 32);
  [v4 queueBlock:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __31__WPDClient_discoveredDevices___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v7 = [v5 objectForKeyedSubscript:@"kDeviceType"];

  v8 = [v7 unsignedIntegerValue];
  kdebug_trace();
  if (WPLogInitOnce != -1)
  {
    __31__WPDClient_discoveredDevices___block_invoke_2_cold_1();
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 processName];
    v13 = [*(a1 + 32) clientUUID];
    v14 = *(a1 + 40);
    v16 = 138413570;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2048;
    v21 = a3 + 1;
    v22 = 2048;
    v23 = v14;
    v24 = 1024;
    v25 = v8;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_INFO, "Telling process %@ (%@) about ADV Buffer (%ld/%ld) discovered device of type %d with data %@", &v16, 0x3Au);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __31__WPDClient_discoveredDevices___block_invoke_689(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained conn];
    v4 = [v3 remoteObjectProxy];
    [v4 devicesDiscovered:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (void)anyDiscoveredDevice:(id)a3
{
  v4 = a3;
  v5 = [(WPDClient *)self serverQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__WPDClient_anyDiscoveredDevice___block_invoke;
  v7[3] = &unk_279E590C8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __33__WPDClient_anyDiscoveredDevice___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v4 = [*v2 objectForKeyedSubscript:@"kDeviceType"];
  v5 = [v4 unsignedIntegerValue];

  kdebug_trace();
  if (WPLogInitOnce != -1)
  {
    __33__WPDClient_anyDiscoveredDevice___block_invoke_cold_1();
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = [v7 processName];
    v10 = [*(a1 + 40) clientUUID];
    *buf = 138413058;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 1024;
    v21 = v5;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_INFO, "Telling process %@ (%@) about ANY discovered device of type %d with data %@", buf, 0x26u);
  }

  objc_initWeak(buf, *(a1 + 40));
  v11 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __33__WPDClient_anyDiscoveredDevice___block_invoke_692;
  v13[3] = &unk_279E590A0;
  objc_copyWeak(&v15, buf);
  v14 = *(a1 + 32);
  [v11 queueBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __33__WPDClient_anyDiscoveredDevice___block_invoke_692(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained conn];
    v4 = [v3 remoteObjectProxy];
    [v4 anyDiscoveredDevice:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (void)resetConnection
{
  v3 = [(WPDClient *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__WPDClient_resetConnection__block_invoke;
  block[3] = &unk_279E59078;
  block[4] = self;
  dispatch_async(v3, block);
}

void __28__WPDClient_resetConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connections];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__WPDClient_resetConnection__block_invoke_2;
  v4[3] = &unk_279E592F0;
  v4[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];

  v3 = [*(a1 + 32) connections];
  [v3 removeAllObjects];
}

- (void)registerForAnyScanResults:(BOOL)a3
{
  v3 = a3;
  v6 = [(WPDClient *)self scanManager];
  v5 = [(WPDClient *)self clientUUID];
  if (v3)
  {
    [v6 addSpyScanClient:v5];
  }

  else
  {
    [v6 removeSpyScanClient:v5];
  }
}

- (void)startScanning:(id)a3 withDispatch:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (_enableScanAdvertVouchers == 1 && ([(WPDClient *)self holdVouchers]& 4) != 0)
  {
    v7 = voucher_copy();
    [(WPDClient *)self setScanVoucher:v7];

    [v6 setHoldVoucher:1];
    if (WPLogInitOnce != -1)
    {
      [WPDClient startScanning:withDispatch:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDClient startScanning:v8 withDispatch:self];
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_9:
      [(WPDClient *)self startScanning_async:v6];
      goto LABEL_10;
    }
  }

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  objc_initWeak(&location, self);
  v9 = [(WPDClient *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WPDClient_startScanning_withDispatch___block_invoke_696;
  block[3] = &unk_279E590A0;
  objc_copyWeak(&v12, &location);
  v11 = v6;
  dispatch_async(v9, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
LABEL_10:
}

void __40__WPDClient_startScanning_withDispatch___block_invoke_696(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained startScanning_async:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)startScanning_async:(id)a3
{
  v73[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clientType];
  if (![(WPDClient *)self registered])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient startScanning_async:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDClient *)v10 startScanning_async:?];
    }

    v11 = MEMORY[0x277CCA9B8];
    v72 = *MEMORY[0x277CCA450];
    v73[0] = @"The client is currently not registered with the daemon";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    v9 = [v11 errorWithDomain:@"WPErrorDomain" code:2 userInfo:v8];
    goto LABEL_13;
  }

  if ([(WPDClient *)self scansOff])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient startScanning_async:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDClient *)v6 startScanning_async:?];
    }

    v7 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA450];
    v71 = @"The client is currently denylisted";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v9 = [v7 errorWithDomain:@"WPErrorDomain" code:2 userInfo:v8];
LABEL_13:
    v12 = v9;

LABEL_14:
    v13 = [(WPDClient *)self conn];
    v14 = [v13 remoteObjectProxy];
    [v14 scanningFailedToStart:v12 ofType:v5];

    goto LABEL_15;
  }

  if (v5 == 18)
  {
    if (![(WPDClient *)self entitledForObjectDiscovery])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient startScanning_async:];
      }

      v52 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPDClient *)v52 startScanning_async:?];
      }

      v53 = MEMORY[0x277CCA9B8];
      v68 = *MEMORY[0x277CCA450];
      v69 = @"The client is not entitled to scan for ObjectDiscovery";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v9 = [v53 errorWithDomain:@"WPErrorDomain" code:10 userInfo:v8];
      goto LABEL_13;
    }

    if (![(WPDClient *)self supportsObjectDiscovery])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient startScanning_async:];
      }

      v55 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPDClient *)v55 startScanning_async:?];
      }

      v56 = MEMORY[0x277CCA9B8];
      v66 = *MEMORY[0x277CCA450];
      v67 = @"ObjectDiscovery not supported on this platform";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v9 = [v56 errorWithDomain:@"WPErrorDomain" code:10 userInfo:v8];
      goto LABEL_13;
    }
  }

  v16 = [(WPDClient *)self scanManager];

  if (!v16)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient startScanning_async:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDClient startScanning_async:];
    }

    v54 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v65 = @"WPDScanManager is nil";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v9 = [v54 errorWithDomain:@"WPErrorDomain" code:10 userInfo:v8];
    goto LABEL_13;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient startScanning_async:];
  }

  v17 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [(WPDClient *)self processName];
    *buf = 138543874;
    *v63 = v19;
    *&v63[8] = 1024;
    *&v63[10] = [(WPDClient *)self processID];
    *&v63[14] = 2114;
    *&v63[16] = v4;
    _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "Start scanning for process %{public}@ (%d) with %{public}@", buf, 0x1Cu);
  }

  v20 = [(WPDClient *)self scanManager];
  v21 = [(WPDClient *)self clientUUID];
  v12 = [v20 addScanRequest:v4 forClient:v21];

  [v4 clientType];
  kdebug_trace();
  if (v12)
  {
    goto LABEL_14;
  }

  if (v5 == 18)
  {
    v22 = [(WPDClient *)self objectDiscoveryManager];
    v23 = v22 == 0;

    if (!v23)
    {
      v24 = [(WPDClient *)self objectDiscoveryManager];
      v25 = [(WPDClient *)self clientUUID];
      v26 = [v24 addScanRequest:v4 forClient:v25];

      if (v26)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDClient startScanning_async:];
        }

        v27 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [(WPDClient *)v27 startScanning_async:v26];
        }
      }
    }
  }

  [v4 updateTime];
  v29 = v28;
  if ([(WPDClient *)self isTestModeClient])
  {
    [(WPDClient *)self scanTimeout];
    if (v30 != 0.0)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient startScanning_async:];
      }

      v31 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v31;
        [(WPDClient *)self scanTimeout];
        v34 = v33;
        v35 = [(WPDClient *)self clientTypeString];
        *buf = 134218242;
        *v63 = v34;
        *&v63[8] = 2112;
        *&v63[10] = v35;
        _os_log_impl(&dword_272965000, v32, OS_LOG_TYPE_DEFAULT, "Setting scan update time to %f for %@", buf, 0x16u);
      }

      [(WPDClient *)self scanTimeout];
      v29 = v36;
    }
  }

  v37 = [(WPDClient *)self scanTimers];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
  v39 = [v37 objectForKeyedSubscript:v38];

  if (v39)
  {
    v40 = [(WPDClient *)self scanTimers];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v42 = [v40 objectForKeyedSubscript:v41];
    dispatch_source_cancel(v42);

    v43 = [(WPDClient *)self scanTimers];
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    [v43 setObject:0 forKeyedSubscript:v44];
  }

  if (*&v29 > 0.0)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient startScanning_async:];
    }

    v45 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v63 = v5;
      *&v63[4] = 2048;
      *&v63[6] = v29;
      _os_log_impl(&dword_272965000, v45, OS_LOG_TYPE_DEFAULT, "Setting scan timer for type %d with time %.2f ", buf, 0x12u);
    }

    v46 = [(WPDClient *)self serverQueue];
    v47 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v46);

    v48 = dispatch_time(0, (*&v29 * 1000000000.0));
    dispatch_source_set_timer(v47, v48, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(buf, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__WPDClient_startScanning_async___block_invoke_738;
    handler[3] = &unk_279E592A0;
    v61 = v5;
    v60[1] = v29;
    v49 = v47;
    v58 = v49;
    objc_copyWeak(v60, buf);
    v59 = v4;
    dispatch_source_set_event_handler(v49, handler);
    v50 = [(WPDClient *)self scanTimers];
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    [v50 setObject:v49 forKeyedSubscript:v51];

    dispatch_resume(v49);
    objc_destroyWeak(v60);

    objc_destroyWeak(buf);
  }

  v12 = [(WPDClient *)self conn];
  v13 = [v12 remoteObjectProxy];
  [v13 scanningStartedOfType:v5];
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

void __33__WPDClient_startScanning_async___block_invoke_738(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    __33__WPDClient_startScanning_async___block_invoke_738_cold_1();
  }

  v2 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    *buf = 67109376;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&dword_272965000, v2, OS_LOG_TYPE_DEFAULT, "Scan timer expired for client %d after %.2f seconds", buf, 0x12u);
  }

  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 40) clientType] == 8)
    {
      [*(a1 + 40) setUpdateTime:0.0];
      if (WPLogInitOnce != -1)
      {
        __33__WPDClient_startScanning_async___block_invoke_738_cold_2();
      }

      v6 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "HeySiri force stoping scan", buf, 2u);
      }

      [WeakRetained stopScanning:*(a1 + 40)];
    }

    v7 = [WeakRetained conn];
    v8 = [v7 remoteObjectProxy];
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __33__WPDClient_startScanning_async___block_invoke_744;
    v11[3] = &unk_279E59318;
    objc_copyWeak(v12, (a1 + 48));
    v13 = *(a1 + 64);
    v12[1] = *(a1 + 56);
    [v8 updateScanningRequest:v9 withUpdate:v11];

    objc_destroyWeak(v12);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __33__WPDClient_startScanning_async___block_invoke_744(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_18;
  }

  if (v3)
  {
    v6 = [WeakRetained scanTimers];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 48)];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      if (WPLogInitOnce != -1)
      {
        __33__WPDClient_startScanning_async___block_invoke_744_cold_1();
      }

      v9 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 48);
        v11 = *(a1 + 40);
        v18 = 67109376;
        *v19 = v10;
        *&v19[4] = 2048;
        *&v19[6] = v11;
        _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Updating scan request for client %d after %.2f seconds", &v18, 0x12u);
      }

      [v5 startScanning:v3];
      goto LABEL_18;
    }

    if (WPLogInitOnce != -1)
    {
      __33__WPDClient_startScanning_async___block_invoke_744_cold_2();
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v16;
      v14 = [v5 processName];
      v18 = 138412546;
      *v19 = v14;
      *&v19[8] = 1024;
      *&v19[10] = [v5 processID];
      v15 = "Tried to update the scan request interval for process %@ (%d), but a client has asked us to stop in the meantime";
      goto LABEL_17;
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __33__WPDClient_startScanning_async___block_invoke_744_cold_3();
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v5 processName];
      v18 = 138412546;
      *v19 = v14;
      *&v19[8] = 1024;
      *&v19[10] = [v5 processID];
      v15 = "Tried to update the scan request for process %@ (%d) - NOOP";
LABEL_17:
      _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, v15, &v18, 0x12u);
    }
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopScanning:(id)a3
{
  v4 = a3;
  if (_enableScanAdvertVouchers == 1 && ([(WPDClient *)self holdVouchers]& 4) != 0)
  {
    [(WPDClient *)self setScanVoucher:0];
    if (WPLogInitOnce != -1)
    {
      [WPDClient stopScanning:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPDClient *)v5 stopScanning:?];
    }
  }

  objc_initWeak(&location, self);
  v6 = [(WPDClient *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__WPDClient_stopScanning___block_invoke_757;
  block[3] = &unk_279E590A0;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __26__WPDClient_stopScanning___block_invoke_757(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained stopScanning_async:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)stopScanning_async:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clientType];
  if ([(WPDClient *)self registered])
  {
    if (v5 != 18)
    {
LABEL_5:
      if (WPLogInitOnce != -1)
      {
        [WPDClient stopScanning_async:];
      }

      v6 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [(WPDClient *)self processName];
        v30 = 138543874;
        v31 = v8;
        v32 = 1024;
        v33 = [(WPDClient *)self processID];
        v34 = 2114;
        v35 = v4;
        _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Stop scanning for process %{public}@ (%d) with %{public}@", &v30, 0x1Cu);
      }

      v9 = [(WPDClient *)self scanTimers];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
      v11 = [v9 objectForKeyedSubscript:v10];

      if (v11)
      {
        v12 = [(WPDClient *)self scanTimers];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
        v14 = [v12 objectForKeyedSubscript:v13];
        dispatch_source_cancel(v14);

        v15 = [(WPDClient *)self scanTimers];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
        [v15 setObject:0 forKeyedSubscript:v16];
      }

      kdebug_trace();
      if (v5 == 18)
      {
        v17 = [(WPDClient *)self objectDiscoveryManager];

        if (v17)
        {
          v18 = [(WPDClient *)self objectDiscoveryManager];
          v19 = [(WPDClient *)self clientUUID];
          [v18 removeScanRequestsForClient:v19];
        }
      }

      v20 = [(WPDClient *)self scanManager];
      v21 = [(WPDClient *)self clientUUID];
      v22 = [v20 removeScanRequest:v4 forClient:v21];

      if (v22)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDClient stopScanning_async:];
        }

        v23 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 67109120;
          LODWORD(v31) = v5;
          _os_log_impl(&dword_272965000, v23, OS_LOG_TYPE_DEFAULT, "Trying to stop scanning for a type %d we don't scan for", &v30, 8u);
        }
      }

      else
      {
        v26 = [(WPDClient *)self conn];
        v27 = [v26 remoteObjectProxy];
        [v27 scanningStoppedOfType:v5];
      }

      goto LABEL_29;
    }

    if ([(WPDClient *)self entitledForObjectDiscovery])
    {
      if ([(WPDClient *)self supportsObjectDiscovery])
      {
        goto LABEL_5;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDClient stopScanning_async:];
      }

      v29 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDClient stopScanning_async:v29];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient stopScanning_async:];
      }

      v25 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDClient stopScanning_async:v25];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient stopScanning_async:];
    }

    v24 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDClient *)v5 stopScanning_async:v24];
    }
  }

LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)clearDuplicateFilterCache:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WPDClient *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WPDClient_clearDuplicateFilterCache___block_invoke;
  block[3] = &unk_279E590A0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __39__WPDClient_clearDuplicateFilterCache___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained clearDuplicateFilterCache_async:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)clearDuplicateFilterCache_async:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clientType];
  if ([(WPDClient *)self registered])
  {
    if (v5 != 18)
    {
LABEL_5:
      if (WPLogInitOnce != -1)
      {
        [WPDClient clearDuplicateFilterCache_async:];
      }

      v6 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [(WPDClient *)self processName];
        v17 = 138543874;
        v18 = v8;
        v19 = 1024;
        v20 = [(WPDClient *)self processID];
        v21 = 2114;
        v22 = v4;
        _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "clear dup filter cache for process %{public}@ (%d) with %{public}@", &v17, 0x1Cu);
      }

      v9 = [(WPDClient *)self scanManager];
      v10 = [(WPDClient *)self clientUUID];
      v11 = [v9 clearDuplicateFilterCache:v4 forClient:v10];

      if (v11)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDClient clearDuplicateFilterCache_async:];
        }

        v12 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 67109120;
          LODWORD(v18) = v5;
          _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "Trying to clear dup filter cache for a type %d we don't scan for", &v17, 8u);
        }
      }

      goto LABEL_19;
    }

    if ([(WPDClient *)self entitledForObjectDiscovery])
    {
      if ([(WPDClient *)self supportsObjectDiscovery])
      {
        goto LABEL_5;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDClient clearDuplicateFilterCache_async:];
      }

      v16 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDClient clearDuplicateFilterCache_async:v16];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient clearDuplicateFilterCache_async:];
      }

      v15 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDClient clearDuplicateFilterCache_async:v15];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient clearDuplicateFilterCache_async:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDClient *)v5 clearDuplicateFilterCache_async:v13];
    }
  }

LABEL_19:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startTrackingPeerWithRequest:(id)a3
{
  v11 = a3;
  v4 = [(WPDClient *)self scanManager];
  v5 = [(WPDClient *)self clientUUID];
  v6 = [v4 addPeerTrackingRequest:v11 forClient:v5];

  v7 = [(WPDClient *)self conn];
  v8 = [v7 remoteObjectProxy];
  v9 = v8;
  if (v6)
  {
    [v8 failedToStartTrackingPeer:v11 error:v6];
  }

  else
  {
    v10 = [v11 peerUUID];
    [v9 startedTrackingPeer:v10 ofType:{objc_msgSend(v11, "clientType")}];
  }
}

- (void)stopTrackingPeerWithRequest:(id)a3
{
  v11 = a3;
  v4 = [(WPDClient *)self scanManager];
  v5 = [(WPDClient *)self clientUUID];
  v6 = [v4 removePeerTrackingRequest:v11 checkZonesAvailable:1 forClient:v5];

  v7 = [(WPDClient *)self conn];
  v8 = [v7 remoteObjectProxy];
  v9 = v8;
  if (v6)
  {
    [v8 failedToStartTrackingPeer:v11 error:v6];
  }

  else
  {
    v10 = [v11 peerUUID];
    [v9 stoppedTrackingPeer:v10 ofType:{objc_msgSend(v11, "clientType")}];
  }
}

- (void)peerTrackingAvailable
{
  v3 = [(WPDClient *)self conn];
  v2 = [v3 remoteObjectProxy];
  [v2 peerTrackingAvailable];
}

- (void)peerTrackingFull
{
  v3 = [(WPDClient *)self conn];
  v2 = [v3 remoteObjectProxy];
  [v2 peerTrackingFull];
}

- (void)startTrackingZone:(id)a3
{
  v4 = a3;
  if ([(WPDClient *)self entitledForZones])
  {
    v5 = [(WPDClient *)self zoneManager];
    v6 = [(WPDClient *)self clientUUID];
    v7 = [v5 addZoneTrackingRequest:v4 forClient:v6];

    if (v7)
    {
      v8 = [(WPDClient *)self conn];
      v9 = [v8 remoteObjectProxy];
      v10 = [v4 zones];
      [v9 failedToRegisterZones:v10 withError:v7];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient startTrackingZone:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDClient startTrackingZone:];
    }

    v11 = [(WPDClient *)self conn];
    [v11 invalidate];
  }
}

- (void)stopTrackingZones:(id)a3
{
  v4 = a3;
  if ([(WPDClient *)self entitledForZones])
  {
    v5 = [(WPDClient *)self zoneManager];
    v6 = [(WPDClient *)self clientUUID];
    [v5 unregisterZones:v4 forClient:v6];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient stopTrackingZones:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDClient stopTrackingZones:];
    }

    v7 = [(WPDClient *)self conn];
    [v7 invalidate];
  }
}

- (void)stopTrackingAllZones
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getAllTrackedZones
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enteredZone:(id)a3 manufacturerData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WPDClient *)self entitledForZones])
  {
    v8 = [(WPDClient *)self conn];
    v9 = [v8 remoteObjectProxy];
    [v9 enteredZone:v6 manufacturerData:v7];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient enteredZone:manufacturerData:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDClient enteredZone:manufacturerData:];
    }

    v8 = [(WPDClient *)self conn];
    [v8 invalidate];
  }
}

- (void)exitedZone:(id)a3
{
  v4 = a3;
  v6 = [(WPDClient *)self conn];
  v5 = [v6 remoteObjectProxy];
  [v5 exitedZone:v4];
}

- (void)connectToPeer:(id)a3 withOptions:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqual:AllZeroUUID])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient connectToPeer:withOptions:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDClient connectToPeer:withOptions:];
    }

    goto LABEL_43;
  }

  if ([(WPDClient *)self registered])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v7];
    v10 = [(WPDClient *)self bundleID];

    if (v10)
    {
      v11 = [(WPDClient *)self bundleID];
      [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277CBDE88]];

      v12 = MEMORY[0x277CBEA60];
      v13 = [(WPDClient *)self bundleID];
      v14 = [v12 arrayWithObject:v13];
      [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277CBDF00]];
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[WPDClient processID](self, "processID")];
    [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x277CBDE90]];

    v16 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];

    objc_autoreleasePoolPop(v8);
    v17 = [(WPDClient *)self connections];
    v18 = [v17 objectForKeyedSubscript:v6];

    if (v18)
    {
      v17 = [v18 getPeripheral];
      if (v17)
      {
        if ([v18 didConnectSent])
        {

LABEL_19:
          if (WPLogInitOnce != -1)
          {
            [WPDClient connectToPeer:withOptions:];
          }

          v22 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
          {
            v45 = v22;
            v46 = [(WPDClient *)self clientUUID];
            *buf = 138543874;
            v51 = v6;
            v52 = 2114;
            v53 = v46;
            v54 = 2112;
            v55 = v16;
            _os_log_debug_impl(&dword_272965000, v45, OS_LOG_TYPE_DEBUG, "TODO: rdar_57238900 amend existing connection, Connect to %{public}@ called by client %{public}@ - options %@", buf, 0x20u);
          }

          if (WPLogInitOnce != -1)
          {
            [WPDClient connectToPeer:withOptions:];
          }

          v23 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v51 = v6;
            _os_log_impl(&dword_272965000, v23, OS_LOG_TYPE_DEFAULT, "We're already connected to this device %{public}@. Sending back didConnect again...", buf, 0xCu);
          }

          WeakRetained = objc_loadWeakRetained(&self->_pipeManager);
          v25 = [(WPDClient *)self clientUUID];
          [WeakRetained setPipeClientConnectionStatus:1 forPeer:v6 forClient:v25];

          [(WPDClient *)self connectedDevice:v6 withError:0 shouldDiscover:0];
LABEL_42:

          v7 = v16;
          goto LABEL_43;
        }
      }
    }

    v20 = [(WPDClient *)self lePipePeersSet];
    v21 = [v20 containsObject:v6];

    if (v18)
    {

      if (v21)
      {
        goto LABEL_19;
      }
    }

    else if (v21)
    {
      goto LABEL_19;
    }

    v26 = objc_loadWeakRetained(&self->_pipeManager);
    v27 = [(WPDClient *)self clientUUID];
    [v26 setConnectionInitiator:1 forPeer:v6 forClient:v27];

    kdebug_trace();
    if (WPLogInitOnce != -1)
    {
      [WPDClient connectToPeer:withOptions:];
    }

    v28 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = [(WPDClient *)self clientUUID];
      v31 = [(WPDClient *)self clientTypeString];
      v32 = [(WPDClient *)self processName];
      *buf = 138544642;
      v51 = v6;
      v52 = 2114;
      v53 = v30;
      v54 = 2112;
      v55 = v31;
      v56 = 2114;
      v57 = v32;
      v58 = 1024;
      v59 = [(WPDClient *)self processID];
      v60 = 2112;
      v61 = v16;
      _os_log_impl(&dword_272965000, v29, OS_LOG_TYPE_DEFAULT, "Connect to %{public}@ called by client %{public}@ (%@) - process %{public}@ (%d) - options %@", buf, 0x3Au);
    }

    v33 = [(WPDClient *)self scanManager];
    v34 = [(WPDClient *)self clientUUID];
    v35 = [v33 connectToPeripheral:v6 fromClient:v34 withOptions:v16];

    if (v35)
    {
      [(WPDClient *)self connectedDevice:v6 withError:v35 shouldDiscover:0];
    }

    else
    {
      v36 = [(WPDClient *)self lePipePeersSet];
      v37 = [v36 containsObject:v6];

      if ((v37 & 1) == 0)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDClient connectToPeer:withOptions:];
        }

        v38 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v51 = v6;
          v52 = 2048;
          v53 = 0x4024000000000000;
          _os_log_impl(&dword_272965000, v38, OS_LOG_TYPE_INFO, "Setting connection timer for peer %@ with time %.2f ", buf, 0x16u);
        }

        v39 = [(WPDClient *)self serverQueue];
        v40 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v39);

        v41 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v40, v41, 0xFFFFFFFFFFFFFFFFLL, 0);
        objc_initWeak(buf, self);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __39__WPDClient_connectToPeer_withOptions___block_invoke_818;
        handler[3] = &unk_279E590A0;
        objc_copyWeak(&v49, buf);
        v42 = v6;
        v48 = v42;
        dispatch_source_set_event_handler(v40, handler);
        [(WPDClient *)self cancelConnectionTimer:v42];
        v43 = [(WPDClient *)self connectionTimer];
        [v43 setObject:v40 forKeyedSubscript:v42];

        dispatch_resume(v40);
        objc_destroyWeak(&v49);
        objc_destroyWeak(buf);
      }
    }

    goto LABEL_42;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient connectToPeer:withOptions:];
  }

  v19 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDClient connectToPeer:v19 withOptions:v6];
  }

LABEL_43:

  v44 = *MEMORY[0x277D85DE8];
}

void __39__WPDClient_connectToPeer_withOptions___block_invoke_818(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"The connection to peer %@ didn't complete in %.2f seconds", *(a1 + 32), 0x4024000000000000];
    v4 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [v4 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v5];

    [WeakRetained connectedDevice:*(a1 + 32) withError:v6 shouldDiscover:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDClient connectedDevice:withError:shouldDiscover:];
  }

  v10 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v9 localizedDescription];
    v30 = 138543362;
    v31 = v12;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Sending connected device with error %{public}@", &v30, 0xCu);
  }

  [(WPDClient *)self cancelConnectionTimer:v8];
  v13 = [(WPDClient *)self connections];
  v14 = [v13 objectForKeyedSubscript:v8];

  if (v9)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient connectedDevice:withError:shouldDiscover:];
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDClient connectedDevice:v15 withError:? shouldDiscover:?];
    }

    v16 = [(WPDClient *)self scanManager];
    v17 = [(WPDClient *)self clientUUID];
    [v16 removePeripheralConnection:v8 forClient:v17];

    if (v14)
    {
      v18 = [(WPDClient *)self connections];
      [v18 removeObjectForKey:v8];
    }
  }

  if (!v5)
  {
    v22 = [(WPDClient *)self conn];
    v23 = [v22 remoteObjectProxy];
    v24 = v23;
    v25 = v8;
    v26 = v9;
    v27 = 0;
LABEL_25:
    [v23 connectedDevice:v25 withError:v26 shouldDiscover:v27];

    goto LABEL_26;
  }

  v19 = [(WPDClient *)self lePipePeersSet];
  v20 = [v19 containsObject:v8];

  if ((v20 & 1) == 0)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient connectedDevice:withError:shouldDiscover:];
    }

    v28 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_272965000, v28, OS_LOG_TYPE_DEFAULT, "connectedDevice over GATT", &v30, 2u);
    }

    v22 = [(WPDClient *)self conn];
    v23 = [v22 remoteObjectProxy];
    v24 = v23;
    v25 = v8;
    v26 = v9;
    v27 = 1;
    goto LABEL_25;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient connectedDevice:withError:shouldDiscover:];
  }

  v21 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "connectedDevice over Pipe, set didConnectSent flag", &v30, 2u);
  }

  [v14 setDidConnectSent:1];
LABEL_26:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)connectedDeviceOverLEPipe:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDClient connectedDeviceOverLEPipe:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(WPDClient *)self clientUUID];
    v8 = [(WPDClient *)self processName];
    v21 = 138412802;
    v22 = v4;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "Sending connected device over LE pipe to peer %@ for client %@ (%@)", &v21, 0x20u);
  }

  [(WPDClient *)self cancelConnectionTimer:v4];
  v9 = [(WPDClient *)self connections];
  v10 = [v9 objectForKeyedSubscript:v4];

  if (v10)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient connectedDeviceOverLEPipe:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Setting didConnectSent flag", &v21, 2u);
    }

    [v10 setDidConnectSent:1];
  }

  v12 = [(WPDClient *)self lePipePeersSet];
  [v12 addObject:v4];

  if (WPLogInitOnce != -1)
  {
    [WPDClient connectedDeviceOverLEPipe:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(WPDClient *)self clientTypeString];
    v16 = [(WPDClient *)self processName];
    v17 = [(WPDClient *)self lePipePeersSet];
    v21 = 138413058;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v4;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "%@ (%@) connected over LE Pipe %@, current pipes %@", &v21, 0x2Au);
  }

  v18 = [(WPDClient *)self conn];
  v19 = [v18 remoteObjectProxy];
  [v19 connectedDeviceOverLEPipe:v4];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromPeer:(id)a3
{
  *&v43[11] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 isEqual:AllZeroUUID])
  {
    v5 = [(WPDClient *)self connections];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (WPLogInitOnce != -1)
    {
      [WPDClient disconnectFromPeer:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(WPDClient *)self clientUUID];
      v10 = [(WPDClient *)self processName];
      v11 = [(WPDClient *)self processID];
      v12 = [v6 subscribedCharacteristics];
      v36 = 138544386;
      v37 = v4;
      v38 = 2114;
      v39 = v9;
      v40 = 2114;
      v41 = v10;
      v42 = 1024;
      *v43 = v11;
      v43[2] = 2114;
      *&v43[3] = v12;
      _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Disconnect from %{public}@ called by client %{public}@ - process %{public}@ (%d) - subscribed characteristics: %{public}@", &v36, 0x30u);
    }

    if (![(WPDClient *)self registered])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient disconnectFromPeer:];
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDClient disconnectFromPeer:v20];
      }

      goto LABEL_34;
    }

    WeakRetained = objc_loadWeakRetained(&self->_pipeManager);
    v14 = [(WPDClient *)self clientUUID];
    [WeakRetained setConnectionInitiator:0 forPeer:v4 forClient:v14];

    if (!v6)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient disconnectFromPeer:];
      }

      v21 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v36 = 138412290;
        v37 = v4;
        _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_INFO, "WPDConnection doesn't exist for %@", &v36, 0xCu);
      }

      v22 = [(WPDClient *)self lePipePeersSet];
      v23 = [v22 containsObject:v4];

      if (v23)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDClient disconnectFromPeer:];
        }

        v24 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          v26 = [(WPDClient *)self clientTypeString];
          v27 = [(WPDClient *)self processName];
          v28 = [(WPDClient *)self lePipePeersSet];
          v36 = 138413058;
          v37 = v26;
          v38 = 2112;
          v39 = v27;
          v40 = 2112;
          v41 = v4;
          v42 = 2112;
          *v43 = v28;
          _os_log_impl(&dword_272965000, v25, OS_LOG_TYPE_DEFAULT, "%@ (%@) Disconnect over LE Pipe %@, current pipes %@", &v36, 0x2Au);
        }

        v29 = objc_loadWeakRetained(&self->_pipeManager);
        v30 = [(WPDClient *)self clientUUID];
        [v29 setPipeClientConnectionStatus:0 forPeer:v4 forClient:v30];

        [(WPDClient *)self disconnectedDeviceOverLEPipe:v4 withError:0];
      }

      else
      {
        v31 = [(WPDClient *)self scanManager];
        v32 = [(WPDClient *)self clientUUID];
        [v31 removePeripheralConnection:v4 forClient:v32];

        [(WPDClient *)self cancelConnectionTimer:v4];
        v33 = [(WPDClient *)self conn];
        v34 = [v33 remoteObjectProxy];
        [v34 disconnectedDevice:v4 withError:0];
      }

      goto LABEL_34;
    }

    v15 = [v6 fetchConnectionType];
    if ((v15 - 1) > 1)
    {
      if (v15)
      {
        v19 = 0;
LABEL_33:
        [(WPDClient *)self disconnectedPeer:v4 error:v19];

LABEL_34:
        goto LABEL_35;
      }

      v16 = [(WPDClient *)self scanManager];
      v17 = [(WPDClient *)self clientUUID];
      [v16 disconnectFromCentral:v4 forClient:v17];
      v19 = 0;
    }

    else
    {
      v16 = [(WPDClient *)self scanManager];
      v17 = [v6 subscribedCharacteristics];
      v18 = [(WPDClient *)self clientUUID];
      v19 = [v16 disconnectFromPeripheral:v4 withSubscribedCharacteristics:v17 forClient:v18];
    }

    goto LABEL_33;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient disconnectFromPeer:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDClient disconnectFromPeer:];
  }

LABEL_35:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)disconnectedPeer:(id)a3 error:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WPDClient *)self connections];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    if ([v9 didConnectSent])
    {
      v10 = [(WPDClient *)self lePipePeersSet];
      v11 = [v10 containsObject:v6];

      if (v11)
      {
LABEL_23:
        v18 = [(WPDClient *)self connections];
        [v18 removeObjectForKey:v6];
        goto LABEL_24;
      }

      v12 = [(WPDClient *)self conn];
      v13 = [v12 remoteObjectProxy];
      [v13 disconnectedDevice:v6 withError:v7];
    }

    else
    {
      if (v7)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDClient disconnectedPeer:error:];
        }

        v20 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDClient stopAdvertising_async:v20];
        }

        [(WPDClient *)self connectedDevice:v6 withError:v7 shouldDiscover:0];
        goto LABEL_23;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"locally initiated disconnection"];
      if (WPLogInitOnce != -1)
      {
        [WPDClient disconnectedPeer:error:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDClient disconnectedPeer:error:];
      }

      v21 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25 = v12;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v13 = [v21 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v22];

      [(WPDClient *)self connectedDevice:v6 withError:v13 shouldDiscover:0];
    }

    goto LABEL_23;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient disconnectedPeer:error:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "Disconnected peer %@ but no connection object is set - check to see if we have pending connection", buf, 0xCu);
  }

  v15 = [(WPDClient *)self scanManager];
  v16 = [(WPDClient *)self clientUUID];
  [v15 removePeripheralConnection:v6 forClient:v16];

  [(WPDClient *)self cancelConnectionTimer:v6];
  v17 = [(WPDClient *)self lePipePeersSet];
  LOBYTE(v16) = [v17 containsObject:v6];

  if ((v16 & 1) == 0)
  {
    v18 = [(WPDClient *)self conn];
    v19 = [v18 remoteObjectProxy];
    [v19 disconnectedDevice:v6 withError:0];

LABEL_24:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)disconnectedDeviceOverLEPipe:(id)a3 withError:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDClient disconnectedDeviceOverLEPipe:withError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 localizedDescription];
    v11 = [(WPDClient *)self clientUUID];
    v12 = [(WPDClient *)self processName];
    v13 = [(WPDClient *)self lePipePeersSet];
    v23 = 138413314;
    v24 = v6;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Disconnected peer %@ over LE pipe with err %@ for client %@ (%@), pipe peers %@", &v23, 0x34u);
  }

  v14 = [(WPDClient *)self lePipePeersSet];
  v15 = [v14 containsObject:v6];

  if (v15)
  {
    v16 = [(WPDClient *)self lePipePeersSet];
    [v16 removeObject:v6];

    v17 = [(WPDClient *)self scanManager];
    v18 = [(WPDClient *)self clientUUID];
    [v17 removePeripheralConnection:v6 forClient:v18];

    [(WPDClient *)self cancelConnectionTimer:v6];
    v19 = [(WPDClient *)self conn];
    v20 = [v19 remoteObjectProxy];
    [v20 disconnectedDeviceOverLEPipe:v6 withError:v7];

    v21 = [(WPDClient *)self connections];
    [v21 removeObjectForKey:v6];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)createdConnection:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  v5 = [v4 fetchConnectionType];
  v6 = [v4 getPeripheralUUID];
  if (!v5)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient createdConnection:];
    }

    v14 = WiProxLog;
    if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v8 = v14;
    v9 = [(WPDClient *)self clientUUID];
    *v21 = 138543618;
    *&v21[4] = v6;
    *&v21[12] = 2114;
    *&v21[14] = v9;
    v10 = "Created a connection to central %{public}@ for client %{public}@";
LABEL_16:
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, v10, v21, 0x16u);

LABEL_17:
    [(WPDClient *)self cancelConnectionTimer:v6, *v21, *&v21[16], v22];
    goto LABEL_18;
  }

  if (v5 != 1)
  {
    if (v5 != 2)
    {
      goto LABEL_18;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDClient createdConnection:];
    }

    v7 = WiProxLog;
    if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v8 = v7;
    v9 = [(WPDClient *)self clientUUID];
    *v21 = 138543618;
    *&v21[4] = v6;
    *&v21[12] = 2114;
    *&v21[14] = v9;
    v10 = "Created a dual connection to peer %{public}@ for client %{public}@";
    goto LABEL_16;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient createdConnection:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(WPDClient *)self clientUUID];
    *v21 = 138543618;
    *&v21[4] = v6;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "Created a connection to peripheral %{public}@ for client %{public}@", v21, 0x16u);
  }

LABEL_18:
  v15 = [(WPDClient *)self connections];
  v16 = [v15 objectForKeyedSubscript:v6];

  if (v16)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient createdConnection:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 138543362;
      *&v21[4] = v6;
      _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "Being given a new connection to %{public}@ when we already have a connection to it", v21, 0xCu);
    }
  }

  if (([(WPDClient *)self holdVouchers]& 2) != 0)
  {
    [v4 holdVoucher];
  }

  v18 = [(WPDClient *)self connections];
  [v18 setObject:v4 forKeyedSubscript:v6];

  v19 = [v4 getPeripheralUUID];
  [(WPDClient *)self connectedDevice:v19 withError:0 shouldDiscover:1];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)cancelConnectionTimer:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WPDClient *)self connectionTimer];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient cancelConnectionTimer:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Cancel connnection timer for peer %@", &v12, 0xCu);
    }

    v8 = [(WPDClient *)self connectionTimer];
    v9 = [v8 objectForKeyedSubscript:v4];
    dispatch_source_cancel(v9);

    v10 = [(WPDClient *)self connectionTimer];
    [v10 setObject:0 forKeyedSubscript:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)discoverCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WPDClient *)self connections];
  v9 = [v8 objectForKeyedSubscript:v7];

  if ([(WPDClient *)self registered]&& v9)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient discoverCharacteristicsAndServices:forPeripheral:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_INFO, "Trying to discover characteristics and services %@ on device %@", &v12, 0x16u);
    }

    [v9 discoverCharacteristicsAndServices:v6 forPeripheral:v7];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient discoverCharacteristicsAndServices:forPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDClient discoverCharacteristicsAndServices:forPeripheral:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)discoveredCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WPDClient *)self lePipePeersSet];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(WPDClient *)self clientTypeString];
      v13 = [(WPDClient *)self processName];
      v14 = [(WPDClient *)self lePipePeersSet];
      v18 = 138413058;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2114;
      v23 = v7;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "%@ (%@) connected to LE pipe during service discovery %{public}@, current pipes %@", &v18, 0x2Au);
    }
  }

  else
  {
    v15 = [(WPDClient *)self conn];
    v16 = [v15 remoteObjectProxy];
    [v16 discoveredCharacteristicsAndServices:v6 forPeripheral:v7];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendDataToCharacteristic:(id)a3 inService:(id)a4 forPeer:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v10 isEqual:AllZeroUUID])
  {
    v11 = [(WPDClient *)self lePipePeersSet];
    v12 = [v11 containsObject:v10];

    if (v12)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient sendDataToCharacteristic:inService:forPeer:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "Send data over LE pipe", buf, 2u);
      }

      v14 = [v8 data];
      [(WPDClient *)self sendDatatoLePipe:v14 forPeer:v10];
      goto LABEL_27;
    }

    v15 = [(WPDClient *)self connections];
    v14 = [v15 objectForKeyedSubscript:v10];

    if ([(WPDClient *)self registered]&& v14)
    {
      v16 = [v8 data];
      [v16 length];
      kdebug_trace();

      if (WPLogInitOnce != -1)
      {
        [WPDClient sendDataToCharacteristic:inService:forPeer:];
      }

      v17 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        v19 = [v10 UUIDString];
        v20 = [v8 data];
        *buf = 138412546;
        v33 = v19;
        v34 = 2048;
        v35 = [v20 length];
        _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_INFO, "Begin sending data to peer %@ of length %ld", buf, 0x16u);
      }

      v21 = [v14 sendDataToCharacteristic:v8 inService:v9 forPeer:v10];
      if (!v21)
      {
        goto LABEL_26;
      }

      v22 = [v8 data];
      v23 = [v8 uuid];
      v24 = [v23 UUIDString];
      [(WPDClient *)self sentData:v22 forCharacteristic:v24 inService:v9 forPeripheral:v10 withError:v21];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDClient sendDataToCharacteristic:inService:forPeer:];
      }

      v25 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDClient sendDataToCharacteristic:v25 inService:? forPeer:?];
        if (v14)
        {
          goto LABEL_27;
        }
      }

      else if (v14)
      {
LABEL_27:

        goto LABEL_28;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device is already disconnected"];
      v26 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      v31 = v21;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v22 = [v26 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v27];

      v23 = [v8 data];
      v24 = [v8 uuid];
      v28 = [v24 UUIDString];
      [(WPDClient *)self sentData:v23 forCharacteristic:v28 inService:v9 forPeripheral:v10 withError:v22];
    }

LABEL_26:
    goto LABEL_27;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient sendDataToCharacteristic:inService:forPeer:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDClient sendDataToCharacteristic:inService:forPeer:];
  }

LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)sentData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6 withError:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  [v12 length];
  kdebug_trace();
  if (WPLogInitOnce != -1)
  {
    [WPDClient sentData:forCharacteristic:inService:forPeripheral:withError:];
  }

  v17 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    v19 = [v13 UUIDString];
    v20 = [v12 length];
    v21 = [v14 localizedDescription];
    v25 = 138412802;
    v26 = v19;
    v27 = 2048;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_INFO, "End sending data to peer %@ of length %ld with error: %@", &v25, 0x20u);
  }

  v22 = [(WPDClient *)self conn];
  v23 = [v22 remoteObjectProxy];
  [v23 sentData:v12 forCharacteristic:v16 inService:v15 forPeripheral:v13 withError:v14];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)sentData:(id)a3 toEndpoint:(id)a4 forPeripheral:(id)a5 withError:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (WPLogInitOnce != -1)
  {
    [WPDClient sentData:toEndpoint:forPeripheral:withError:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v12 UUIDString];
    v17 = [v10 length];
    v18 = [v13 localizedDescription];
    v22 = 138413058;
    v23 = v16;
    v24 = 2048;
    v25 = v17;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_INFO, "End sending data to peer %@ of length %ld to enpoint %@ with error: %@", &v22, 0x2Au);
  }

  v19 = [(WPDClient *)self conn];
  v20 = [v19 remoteObjectProxy];
  [v20 sentData:v10 toEndpoint:v11 forPeripheral:v12 withError:v13];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3 fromCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (WPLogInitOnce != -1)
  {
    [WPDClient receivedData:fromCharacteristic:inService:forPeripheral:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    v18 = v14;
    v19 = [v13 UUIDString];
    v20 = 138412802;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v19;
    _os_log_debug_impl(&dword_272965000, v18, OS_LOG_TYPE_DEBUG, "Client received value update for characteristic %@ in service %@ for peripheral %@. Notifying client implementation.", &v20, 0x20u);
  }

  v15 = [(WPDClient *)self conn];
  v16 = [v15 remoteObjectProxy];
  [v16 receivedData:v10 forCharacteristic:v11 inService:v12 forPeripheral:v13];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3 fromEndpoint:(id)a4 forPeripheral:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(WPDClient *)self lePipePeersSet];
  v12 = [v11 containsObject:v9];

  if ((v12 & 1) == 0)
  {
    v13 = [(WPDClient *)self lePipePeersSet];
    [v13 addObject:v9];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient receivedData:fromEndpoint:forPeripheral:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDClient receivedData:v8 fromEndpoint:v14 forPeripheral:?];
  }

  v15 = [(WPDClient *)self conn];
  v16 = [v15 remoteObjectProxy];
  [v16 receivedData:v10 fromEndpoint:v8 forPeripheral:v9];
}

- (void)enableRanging:(BOOL)a3 reply:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(WPDClient *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__WPDClient_enableRanging_reply___block_invoke;
  block[3] = &unk_279E59340;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __33__WPDClient_enableRanging_reply___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_20;
  }

  if (([*(a1 + 32) supportsRanging] & 1) == 0)
  {
    if (WPLogInitOnce != -1)
    {
      __33__WPDClient_enableRanging_reply___block_invoke_cold_1();
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __33__WPDClient_enableRanging_reply___block_invoke_cold_2(a1, (a1 + 32), v9);
    }

    v10 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Ranging is not supported.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = v10;
    v13 = 27;
    goto LABEL_15;
  }

  if (([*(a1 + 32) entitledForRanging] & 1) == 0)
  {
    if (WPLogInitOnce != -1)
    {
      __33__WPDClient_enableRanging_reply___block_invoke_cold_3();
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __33__WPDClient_enableRanging_reply___block_invoke_cold_4(a1, (a1 + 32), v14);
    }

    v15 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"The client is not entitled to manipulate ranging.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = v15;
    v13 = 29;
LABEL_15:
    v8 = [v12 errorWithDomain:@"WPErrorDomain" code:v13 userInfo:v11];

    goto LABEL_16;
  }

  v3 = [WeakRetained server];
  [v3 enableRanging:*(a1 + 56)];

  v4 = [WeakRetained scanManager];
  [v4 enableRanging:*(a1 + 56)];

  v5 = [WeakRetained advertisingManager];
  v6 = *(a1 + 56);
  v7 = [WeakRetained clientUUID];
  [v5 enableRanging:v6 forClient:v7];

  v8 = 0;
LABEL_16:
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v8);
  }

  else
  {
    [WeakRetained rangingEnabled:*(a1 + 56) withError:v8];
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)isRangingEnabledReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WPDClient *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WPDClient_isRangingEnabledReply___block_invoke;
  block[3] = &unk_279E58FB0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __35__WPDClient_isRangingEnabledReply___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained entitledForRanging])
    {
      v4 = [v3 server];
      v5 = [v4 isRangingEnabled];

      v6 = 0;
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __35__WPDClient_isRangingEnabledReply___block_invoke_cold_1();
      }

      v7 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        __35__WPDClient_isRangingEnabledReply___block_invoke_cold_2(v7);
      }

      v8 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA450];
      v13[0] = @"The client is not entitled to manipulate ranging";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v6 = [v8 errorWithDomain:@"WPErrorDomain" code:29 userInfo:v9];

      v5 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v6, v5);
    }

    else
    {
      [v3 rangingEnabled:v5 withError:v6];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)checkAllowDuplicates:(id)a3
{
  v4 = a3;
  if ([(WPDClient *)self registered])
  {
    v4[2](v4, 1);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient checkAllowDuplicates:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDClient checkAllowDuplicates:];
    }
  }
}

- (id)getManager
{
  v2 = [(WPDClient *)self advertisingManager];
  v3 = [v2 getManager];

  return v3;
}

- (id)connectionForUUID:(id)a3
{
  v4 = a3;
  v5 = [(WPDClient *)self connections];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)readyForDataTransfer
{
  if ([(WPDClient *)self registered])
  {
    v3 = [(WPDClient *)self connections];
    [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_961];
  }
}

- (void)enableTestMode
{
  if ([(WPDClient *)self isTestModeClient])
  {
    v4 = [(WPDClient *)self server];
    [v4 enableTestMode];
  }

  else
  {
    v3 = MEMORY[0x277CBEAD8];
    v4 = [(WPDClient *)self processName];
    [v3 raise:@"Illegal Operation" format:{@"Enabling test mode for process %@ is not supported", v4}];
  }
}

- (void)overrideScanTimeout:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDClient overrideScanTimeout:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(WPDClient *)self clientTypeString];
    v9 = 134218242;
    v10 = a3;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "Overriding scan timeout to %f for %@", &v9, 0x16u);
  }

  [(WPDClient *)self setScanTimeout:a3];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)overrideAdvTimeout:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDClient overrideAdvTimeout:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(WPDClient *)self clientTypeString];
    v9 = 134218242;
    v10 = a3;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "Overriding advertising timeout to %f for %@", &v9, 0x16u);
  }

  [(WPDClient *)self setAdvTimeout:a3];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getPowerLogStats:(id)a3
{
  v4 = a3;
  v5 = [(WPDClient *)self server];
  v6 = [v5 statsManager];
  v7 = [v6 getStatsDictionary];

  v4[2](v4, v7);
}

- (void)disableScanning
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(WPDClient *)self canDisableScans])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDClient disableScanning];
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(WPDClient *)self processName];
      *buf = 138543618;
      v13 = v5;
      v14 = 1024;
      v15 = [(WPDClient *)self processID];
      _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "Disabling all scanning called by process %{public}@ (%d)", buf, 0x12u);
    }

    v6 = [(WPDClient *)self server];
    v7 = [(WPDClient *)self clientUUID];
    [v6 disableScanningForClient:v7];

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = MEMORY[0x277CBEAD8];
    v11 = [(WPDClient *)self processName];
    [v9 raise:@"Illegal Operation" format:{@"Disabling scans for process %@ is not supported", v11}];
    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)dumpDaemonState
{
  if (WPLogInitOnce != -1)
  {
    [WPDClient dumpDaemonState];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "Manually triggered statedump", v5, 2u);
  }

  v4 = [(WPDClient *)self server];
  [v4 dumpDaemonState];
}

- (void)unregisterEndpoint:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    endpointsSet = self->_endpointsSet;
    v5 = a3;
    [(NSMutableSet *)endpointsSet removeObject:v5];
    WeakRetained = objc_loadWeakRetained(&self->_pipeManager);
    v7 = [(WPDClient *)self clientUUID];
    [WeakRetained unregisterEndpoint:v5 forClient:v7];

    if (WPLogInitOnce != -1)
    {
      [WPDClient unregisterEndpoint:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(WPDClient *)self endpointsSet];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "unregisterEndpoint: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendDatatoLePipe:(id)a3 forPeer:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pipeManager);
  v8 = [(WPDClient *)self clientUUID];
  [WeakRetained sendData:v7 forPeer:v6 forClient:v8];
}

- (void)sendTestRequest:(id)a3
{
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDClient sendTestRequest:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDClient *)v4 sendTestRequest:v5, self];
  }

  if ([(WPDClient *)self isTestModeClient])
  {
    v6 = [v4 objectForKeyedSubscript:@"kWPTestRequestKeyID"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 integerValue];
      if ((v8 - 1) <= 7)
      {
        objc_initWeak(&location, self);
        v9 = [(WPDClient *)self serverQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __29__WPDClient_sendTestRequest___block_invoke_987;
        block[3] = &unk_279E590A0;
        objc_copyWeak(&v14, &location);
        v13 = v4;
        dispatch_async(v9, block);

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDClient sendTestRequest:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDClient *)v8 sendTestRequest:v11, self];
    }

    goto LABEL_18;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDClient sendTestRequest:];
  }

  v10 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPDClient *)v10 sendTestRequest:?];
  }

LABEL_19:
}

uint64_t __29__WPDClient_sendTestRequest___block_invoke_987(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if ([WeakRetained isObjectDiscovery])
    {
      v3 = [v8 server];
      v4 = [v3 spObjectDiscoveryClient];

      if (v4)
      {
        v5 = [v8 server];
        v6 = [v5 spObjectDiscoveryClient];
        [v6 sendTestRequest:*(a1 + 32)];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)receivedTestResponse:(id)a3
{
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDClient receivedTestResponse:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDClient *)v4 receivedTestResponse:v5];
  }

  v6 = [(WPDClient *)self conn];
  v7 = [v6 remoteObjectProxy];
  [v7 receivedTestResponse:v4];
}

- (void)_signpostBegin
{
  v3 = WiProxLog;
  v4 = v3;
  wpDClientSignPostID = self->_wpDClientSignPostID;
  if (wpDClientSignPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_272965000, v4, OS_SIGNPOST_INTERVAL_BEGIN, wpDClientSignPostID, "receivedPayload", &unk_2729D0C55, v6, 2u);
  }
}

- (void)_signpostEnd
{
  v3 = WiProxLog;
  v4 = v3;
  wpDClientSignPostID = self->_wpDClientSignPostID;
  if (wpDClientSignPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_272965000, v4, OS_SIGNPOST_INTERVAL_END, wpDClientSignPostID, "receivedPayload", &unk_2729D0C55, v6, 2u);
  }
}

- (WPDClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WPDZoneManager)zoneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_zoneManager);

  return WeakRetained;
}

- (WPDPipeManager)pipeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_pipeManager);

  return WeakRetained;
}

- (WPDObjectDiscoveryManager)objectDiscoveryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_objectDiscoveryManager);

  return WeakRetained;
}

- (void)initWithXPCConnection:(unsigned int *)a1 server:(uint64_t *)a2 .cold.2(unsigned int *a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_7();
  v8 = v4;
  OUTLINED_FUNCTION_15(&dword_272965000, v5, v5, "PID %d bundleID %@", v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCConnection:(unsigned int *)a1 server:(uint64_t *)a2 .cold.4(unsigned int *a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_7();
  v8 = v4;
  OUTLINED_FUNCTION_15(&dword_272965000, v5, v5, "PID %d bundleID %@ from local process", v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__WPDClient_initWithXPCConnection_server___block_invoke_490_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = AllZeroUUID;
  _os_log_debug_impl(&dword_272965000, log, OS_LOG_TYPE_DEBUG, "Initialised AllZeroUUID to %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)registerWithDaemon:(void *)a1 forProcess:(void *)a2 machName:holdVouchers:.cold.3(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 clientUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising:(void *)a1 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [a2 processName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising_async:(void *)a1 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  OUTLINED_FUNCTION_20();
  v5 = [a2 clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising_async:.cold.6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(&dword_272965000, v0, OS_LOG_TYPE_DEBUG, "Canceled previous advert timer for client %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising_async:(void *)a1 .cold.9(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 processID];
  v4 = [a2 clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising:(void *)a1 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [a2 processName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising_async:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v3 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising_async:(void *)a1 .cold.5(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v3 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising_async:(void *)a1 .cold.7(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientStateChange:(void *)a1 Restricted:.cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [OUTLINED_FUNCTION_9() processName];
  objc_claimAutoreleasedReturnValue();
  v5[0] = 67109890;
  v5[1] = 3;
  v6 = 1024;
  v7 = 2;
  v8 = 2112;
  v9 = v2;
  v10 = 1024;
  v11 = [OUTLINED_FUNCTION_10() processID];
  _os_log_debug_impl(&dword_272965000, v1, OS_LOG_TYPE_DEBUG, "Modified state %d -> %d for client %@ (%d) per <rdar://problem/33456853>", v5, 0x1Eu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientStateChange:(void *)a1 Restricted:(void *)a2 .cold.4(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_18() processName];
  [a2 processID];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x1Cu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startScanning:(void *)a1 withDispatch:(void *)a2 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [a2 processName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startScanning_async:(void *)a1 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  OUTLINED_FUNCTION_20();
  v5 = [a2 clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startScanning_async:(void *)a1 .cold.4(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  OUTLINED_FUNCTION_20();
  v5 = [a2 clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startScanning_async:(void *)a1 .cold.6(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  OUTLINED_FUNCTION_20();
  v5 = [a2 clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startScanning_async:(void *)a1 .cold.9(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startScanning_async:.cold.13()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startScanning_async:(void *)a1 .cold.15(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  OUTLINED_FUNCTION_20();
  v5 = [a2 clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopScanning:(void *)a1 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [a2 processName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopScanning_async:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [OUTLINED_FUNCTION_9() processID];
  v4 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x18u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopScanning_async:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v3 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopScanning_async:(void *)a1 .cold.6(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v3 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearDuplicateFilterCache_async:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [OUTLINED_FUNCTION_9() processID];
  v4 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x18u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearDuplicateFilterCache_async:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v3 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearDuplicateFilterCache_async:(void *)a1 .cold.6(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v3 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startTrackingZone:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingZones:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enteredZone:manufacturerData:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeer:(void *)a1 withOptions:(void *)a2 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeer:withOptions:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connectedDevice:(void *)a1 withError:shouldDiscover:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromPeer:(void *)a1 .cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromPeer:.cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)disconnectedPeer:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)shouldSubscribe:toPeer:withCharacteristic:inService:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)shouldSubscribe:toPeer:withCharacteristic:inService:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updatedNotificationState:forCharacteristic:inService:withPeripheral:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)central:subscribed:toCharacteristic:inService:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)central:subscribed:toCharacteristic:inService:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)discoverCharacteristicsAndServices:forPeripheral:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendDataToCharacteristic:(void *)a1 inService:forPeer:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_18() registered];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendDataToCharacteristic:inService:forPeer:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)receivedData:(uint64_t)a1 fromEndpoint:(void *)a2 forPeripheral:.cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_10() UUIDString];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __33__WPDClient_enableRanging_reply___block_invoke_cold_2(uint64_t a1, id *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a1 + 56);
  v5 = *a2;
  v6 = a3;
  [OUTLINED_FUNCTION_18() processID];
  v7 = [*a2 clientUUID];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x1Cu);

  v13 = *MEMORY[0x277D85DE8];
}

void __33__WPDClient_enableRanging_reply___block_invoke_cold_4(uint64_t a1, id *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a1 + 56);
  v5 = *a2;
  v6 = a3;
  [OUTLINED_FUNCTION_18() processID];
  v7 = [*a2 clientUUID];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x1Cu);

  v13 = *MEMORY[0x277D85DE8];
}

void __35__WPDClient_isRangingEnabledReply___block_invoke_cold_2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v3 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)checkAllowDuplicates:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendTestRequest:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v11 = [a3 clientUUID];
  [a3 isTestModeClient];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendTestRequest:(void *)a1 .cold.4(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 clientUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendTestRequest:(void *)a3 .cold.6(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 clientUUID];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)receivedTestResponse:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_10() clientUUID];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end