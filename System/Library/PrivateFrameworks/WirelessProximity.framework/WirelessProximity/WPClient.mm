@interface WPClient
+ (BOOL)supportsRanging;
+ (id)stateAsString:(int64_t)string;
+ (void)initialize;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSString)description;
- (WPClient)initWithQueue:(id)queue machName:(id)name;
- (id)connection;
- (void)addServices;
- (void)allowlistConnectionMethods:(id)methods;
- (void)checkAllowDuplicates:(id)duplicates;
- (void)clearDuplicateFilterCache:(id)cache;
- (void)connectToPeer:(id)peer withOptions:(id)options;
- (void)dealloc;
- (void)destroyConnection;
- (void)disableScanning;
- (void)disconnectFromPeer:(id)peer;
- (void)discoverCharacteristicsAndServices:(id)services forPeripheral:(id)peripheral;
- (void)dispatchAdvertisement:(id)advertisement;
- (void)dumpDaemonState;
- (void)enableBubbleTestMode;
- (void)enableRanging:(BOOL)ranging reply:(id)reply;
- (void)enableTestMode;
- (void)establishConnection;
- (void)getAllTrackedZones;
- (void)getPowerLogStats:(id)stats;
- (void)isRangingEnabledReply:(id)reply;
- (void)listenToBandwidthNotifications;
- (void)notifyNotApprovedUseCase:(id)case;
- (void)overrideAdvTimeout:(double)timeout;
- (void)overrideScanTimeout:(double)timeout;
- (void)receivedTestResponse:(id)response;
- (void)registerEndpoint:(id)endpoint requireAck:(BOOL)ack requireEncryption:(BOOL)encryption;
- (void)registerForAnyScanResults:(BOOL)results;
- (void)registeredWithDaemonAndContinuingSession:(BOOL)session;
- (void)sendDataToCharacteristic:(id)characteristic inService:(id)service forPeer:(id)peer;
- (void)sendDatatoLePipe:(id)pipe forPeer:(id)peer;
- (void)sendTestRequest:(id)request;
- (void)setupMachXPCService;
- (void)shouldSubscribe:(BOOL)subscribe toPeer:(id)peer withCharacteristic:(id)characteristic inService:(id)service;
- (void)startAdvertising:(id)advertising;
- (void)startScanning:(id)scanning;
- (void)startScanning:(id)scanning andAdvertising:(id)advertising;
- (void)startTrackingPeerWithRequest:(id)request;
- (void)startTrackingZone:(id)zone;
- (void)stateDidChange:(int64_t)change;
- (void)stopAdvertising:(id)advertising;
- (void)stopScanning:(id)scanning;
- (void)stopTrackingAllZones;
- (void)stopTrackingPeerWithRequest:(id)request;
- (void)stopTrackingZones:(id)zones;
- (void)unregisterEndpoint:(id)endpoint;
- (void)updateAdvertisingRequest:(id)request withUpdate:(id)update;
- (void)updateScanningRequest:(id)request withUpdate:(id)update;
@end

@implementation WPClient

- (id)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcConnection = [(WPClient *)selfCopy xpcConnection];

  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.wirelessproxd" options:4096];
    [(WPClient *)selfCopy allowlistConnectionMethods:v4];
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__0;
    v13[4] = __Block_byref_object_dispose__0;
    v5 = selfCopy;
    v14 = v5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __22__WPClient_connection__block_invoke;
    v12[3] = &unk_279ED76B0;
    v12[4] = v5;
    v12[5] = v13;
    [v4 setInterruptionHandler:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __22__WPClient_connection__block_invoke_178;
    v11[3] = &unk_279ED76B0;
    v11[4] = v5;
    v11[5] = v13;
    [v4 setInvalidationHandler:v11];
    clientQueue = [(WPClient *)v5 clientQueue];

    if (clientQueue)
    {
      clientQueue2 = [(WPClient *)v5 clientQueue];
      [v4 _setQueue:clientQueue2];
    }

    [(WPClient *)v5 setXpcConnection:v4];
    xpcConnection2 = [(WPClient *)v5 xpcConnection];
    [xpcConnection2 resume];

    _Block_object_dispose(v13, 8);
  }

  if ([(WPClient *)selfCopy needsToRegister]&& ![(WPClient *)selfCopy registering])
  {
    [(WPClient *)selfCopy establishConnection];
  }

  objc_sync_exit(selfCopy);

  xpcConnection3 = [(WPClient *)selfCopy xpcConnection];

  return xpcConnection3;
}

- (void)establishConnection
{
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WPClient_establishConnection__block_invoke;
  block[3] = &unk_279ED7688;
  block[4] = self;
  dispatch_async(daemonDeliveryQueue, block);
}

void __31__WPClient_establishConnection__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRegistering:1];
  v2 = [*(a1 + 32) clientAsString];
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 processName];

  if (WPLogInitOnce != -1)
  {
    __31__WPClient_establishConnection__block_invoke_cold_1();
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v18 = 134218498;
    v19 = v6;
    v20 = 2112;
    v21 = v2;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "WPClient (%p - %@) establishing new XPC Connection for process %@", &v18, 0x20u);
  }

  v7 = *(a1 + 32);
  v8 = [objc_opt_class() holdVouchers];
  v9 = [*(a1 + 32) connection];
  v10 = [v9 remoteObjectProxy];
  v11 = [*(a1 + 32) machName];
  [v10 registerWithDaemon:v2 forProcess:v4 machName:v11 holdVouchers:v8];

  v12 = [*(a1 + 32) daemonRegisteredSemaphore];
  v13 = dispatch_time(0, 5000000000);
  v14 = dispatch_semaphore_wait(v12, v13);

  if (v14)
  {
    if (WPLogInitOnce != -1)
    {
      __31__WPClient_establishConnection__block_invoke_cold_2();
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = 134218498;
      v19 = v17;
      v20 = 2112;
      v21 = v2;
      v22 = 2112;
      v23 = v4;
      _os_log_error_impl(&dword_274327000, v15, OS_LOG_TYPE_ERROR, "WPClient (%p - %@) registering with daemon timed out for client %@", &v18, 0x20u);
    }

    [*(a1 + 32) setRegistering:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)supportsRanging
{
  if (supportsRanging_onceToken != -1)
  {
    +[WPClient supportsRanging];
  }

  return supportsRanging_supportsRanging;
}

uint64_t __27__WPClient_supportsRanging__block_invoke()
{
  result = MGGetBoolAnswer();
  supportsRanging_supportsRanging = result;
  return result;
}

+ (void)initialize
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 67109376;
  v2[1] = _MergedGlobals;
  v3 = 1024;
  v4 = byte_280BD37A1;
  _os_log_debug_impl(&dword_274327000, log, OS_LOG_TYPE_DEBUG, "WPClient _isHomePod: %d _isAppleTV: %d", v2, 0xEu);
  v1 = *MEMORY[0x277D85DE8];
}

- (WPClient)initWithQueue:(id)queue machName:(id)name
{
  v55 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  nameCopy = name;
  v41.receiver = self;
  v41.super_class = WPClient;
  v9 = [(WPClient *)&v41 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_20;
  }

  v40 = queueCopy;
  v9->_state = 0;
  v9->_advertiserState = 0;
  v9->_scannerState = 0;
  objc_storeStrong(&v9->_clientQueue, queue);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.wiproxd.daemonMessageQueue.%lu", -[WPClient hash](v10, "hash")];
  if ([objc_opt_class() holdVouchers] && (clientQueue = v10->_clientQueue) != 0)
  {
    relative_priority_ptr = 0;
    qos_class = dispatch_queue_get_qos_class(clientQueue, &relative_priority_ptr);
    v14 = dispatch_queue_attr_make_with_qos_class(0, qos_class, relative_priority_ptr);
    v15 = dispatch_queue_create([v11 UTF8String], v14);
    daemonDeliveryQueue = v10->_daemonDeliveryQueue;
    v10->_daemonDeliveryQueue = v15;

    if (WPLogInitOnce != -1)
    {
      [WPClient initWithQueue:machName:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      clientAsString = [(WPClient *)v10 clientAsString];
      v20 = qos2string(qos_class);
      *buf = 134219010;
      v44 = v10;
      v45 = 2112;
      v46 = clientAsString;
      v47 = 2112;
      v48 = v11;
      v49 = 2080;
      v50 = v20;
      v51 = 1024;
      v52 = qos_class;
      _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, "WPClient (%p - %@) created queue %@ with client QOS class %s (%d)", buf, 0x30u);
    }
  }

  else
  {
    uTF8String = [v11 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(uTF8String, v22);
    v24 = v10->_daemonDeliveryQueue;
    v10->_daemonDeliveryQueue = v23;

    if (WPLogInitOnce != -1)
    {
      [WPClient initWithQueue:machName:];
    }

    v25 = WiProxLog;
    if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v14 = v25;
    clientAsString2 = [(WPClient *)v10 clientAsString];
    *buf = 134218498;
    v44 = v10;
    v45 = 2112;
    v46 = clientAsString2;
    v47 = 2112;
    v48 = v11;
    _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_DEFAULT, "WPClient (%p - %@) created queue %@ (default)", buf, 0x20u);
  }

LABEL_13:
  v27 = dispatch_semaphore_create(0);
  daemonRegisteredSemaphore = v10->_daemonRegisteredSemaphore;
  v10->_daemonRegisteredSemaphore = v27;

  v29 = v10->_daemonDeliveryQueue;
  v30 = v10;
  v31 = v29;
  relative_priority_ptr = 0;
  v32 = dispatch_queue_get_qos_class(v31, &relative_priority_ptr);
  if (WPLogInitOnce != -1)
  {
    [WPClient initWithQueue:machName:];
  }

  v33 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    clientAsString3 = [(WPClient *)v30 clientAsString];
    v36 = [v31 description];
    v37 = qos2string(v32);
    *buf = 134219266;
    v44 = v30;
    v45 = 2112;
    v46 = clientAsString3;
    v47 = 2112;
    v48 = v36;
    v49 = 2080;
    v50 = v37;
    v51 = 1024;
    v52 = v32;
    v53 = 1024;
    v54 = relative_priority_ptr;
    _os_log_impl(&dword_274327000, v34, OS_LOG_TYPE_DEFAULT, "WPClient (%p - %@) queue %@ with QOS class %s (%d) rel priority %d", buf, 0x36u);
  }

  *&v30->_isTestClient = 0x10000;
  v30->_registering = 0;
  if (nameCopy)
  {
    objc_storeStrong(&v30->_machName, name);
    [(WPClient *)v30 setupMachXPCService];
  }

  [(WPClient *)v30 establishConnection];
  v30->_servicesAdded = 0;
  v30->_connectionUseCase = 0;
  v30->_maxAllowedConnectionDelayMs = 0;

  queueCopy = v40;
LABEL_20:

  v38 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPClient dealloc];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    clientAsString = [(WPClient *)self clientAsString];
    *buf = 134218242;
    selfCopy = self;
    v14 = 2114;
    v15 = clientAsString;
    _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "WPClient deallocing (%p - %{public}@)", buf, 0x16u);
  }

  [(WPClient *)self destroyConnection];
  daemonRegisteredSemaphore = [(WPClient *)self daemonRegisteredSemaphore];

  if (daemonRegisteredSemaphore)
  {
    [(WPClient *)self setDaemonRegisteredSemaphore:0];
  }

  xpcListener = [(WPClient *)self xpcListener];

  if (xpcListener)
  {
    xpcListener2 = [(WPClient *)self xpcListener];
    [xpcListener2 setDelegate:0];

    xpcListener3 = [(WPClient *)self xpcListener];
    [xpcListener3 invalidate];

    [(WPClient *)self setXpcListener:0];
  }

  v11.receiver = self;
  v11.super_class = WPClient;
  [(WPClient *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setupMachXPCService
{
  v17 = *MEMORY[0x277D85DE8];
  machName = [(WPClient *)self machName];
  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:machName];
  [(WPClient *)self setXpcListener:v4];

  xpcListener = [(WPClient *)self xpcListener];
  [xpcListener setDelegate:self];

  xpcListener2 = [(WPClient *)self xpcListener];
  [xpcListener2 resume];

  if (WPLogInitOnce != -1)
  {
    [WPClient setupMachXPCService];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    clientAsString = [(WPClient *)self clientAsString];
    v11 = 138412802;
    v12 = machName;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = clientAsString;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_INFO, "WPClient started listening for mach service %@ for client (%p - %@)", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (WPLogInitOnce != -1)
  {
    [WPClient listener:shouldAcceptNewConnection:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v8 = MEMORY[0x277CCAC38];
    v9 = v7;
    processInfo = [v8 processInfo];
    processName = [processInfo processName];
    v14 = 138412290;
    v15 = processName;
    _os_log_impl(&dword_274327000, v9, OS_LOG_TYPE_INFO, "WPClient Process %@ was woken up from mach port tickle", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __22__WPClient_connection__block_invoke(uint64_t result)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (WPLogInitOnce != -1)
    {
      __22__WPClient_connection__block_invoke_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 32);
      v4 = v2;
      v5 = [v3 clientAsString];
      v7 = 134218242;
      v8 = v3;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "WPClient (%p - %{public}@) XPC Connection interrupted", &v7, 0x16u);
    }

    [*(*(*(v1 + 40) + 8) + 40) stateDidChange:1];
    result = [*(*(*(v1 + 40) + 8) + 40) establishConnection];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __22__WPClient_connection__block_invoke_178(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (WPLogInitOnce != -1)
    {
      __22__WPClient_connection__block_invoke_178_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 clientAsString];
      *buf = 134218242;
      v10 = v3;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "WPClient (%p - %{public}@) XPC Connection invalidated", buf, 0x16u);
    }

    [*(*(*(a1 + 40) + 8) + 40) stateDidChange:0];
    v6 = [*(*(*(a1 + 40) + 8) + 40) daemonDeliveryQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__WPClient_connection__block_invoke_182;
    block[3] = &unk_279ED76D8;
    block[4] = *(a1 + 40);
    dispatch_async(v6, block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __22__WPClient_connection__block_invoke_182(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setNeedsToRegister:1];
  v2 = *(*(*(a1 + 32) + 8) + 40);

  return [v2 setXpcConnection:0];
}

- (void)allowlistConnectionMethods:(id)methods
{
  v36[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE90];
  methodsCopy = methods;
  v4 = [v3 interfaceWithProtocol:&unk_28835E1E0];
  v5 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v36[2] = objc_opt_class();
  v36[3] = objc_opt_class();
  v36[4] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:5];
  v27 = [v5 setWithArray:v6];

  [v4 setClasses:v27 forSelector:sel_deviceDiscovered_ argumentIndex:0 ofReply:0];
  v7 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v26 = [v7 setWithArray:v8];

  [v4 setClasses:v26 forSelector:sel_failedToRegisterZones_withError_ argumentIndex:0 ofReply:0];
  v9 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v34[2] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v25 = [v9 setWithArray:v10];

  [v4 setClasses:v25 forSelector:sel_discoveredCharacteristicsAndServices_forPeripheral_ argumentIndex:0 ofReply:0];
  v11 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v33[3] = objc_opt_class();
  v33[4] = objc_opt_class();
  v33[5] = objc_opt_class();
  v33[6] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:7];
  v24 = [v11 setWithArray:v12];

  [v4 setClasses:v24 forSelector:sel_fetchedCurrentlyTrackedZones_ argumentIndex:0 ofReply:0];
  v13 = MEMORY[0x277CBEB98];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v32[3] = objc_opt_class();
  v32[4] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];
  v15 = [v13 setWithArray:v14];

  [v4 setClasses:v15 forSelector:sel_anyDiscoveredDevice_ argumentIndex:0 ofReply:0];
  v16 = MEMORY[0x277CBEB98];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v31[2] = objc_opt_class();
  v31[3] = objc_opt_class();
  v31[4] = objc_opt_class();
  v31[5] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:6];
  v18 = [v16 setWithArray:v17];

  [v4 setClasses:v18 forSelector:sel_devicesDiscovered_ argumentIndex:0 ofReply:0];
  v19 = MEMORY[0x277CBEB98];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v30[2] = objc_opt_class();
  v30[3] = objc_opt_class();
  v30[4] = objc_opt_class();
  v30[5] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];
  v21 = [v19 setWithArray:v20];

  [v4 setClasses:v21 forSelector:sel_receivedTestResponse_ argumentIndex:0 ofReply:0];
  v22 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28835EA58];
  [methodsCopy setExportedInterface:v4];
  [methodsCopy setExportedObject:self];
  [methodsCopy setRemoteObjectInterface:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)destroyConnection
{
  xpcConnection = [(WPClient *)self xpcConnection];
  [xpcConnection invalidate];
}

- (void)registeredWithDaemonAndContinuingSession:(BOOL)session
{
  v13 = *MEMORY[0x277D85DE8];
  if (session)
  {
    [(WPClient *)self setServicesAdded:1];
  }

  [(WPClient *)self setNeedsToRegister:0];
  [(WPClient *)self setRegistering:0];
  if (WPLogInitOnce != -1)
  {
    [WPClient registeredWithDaemonAndContinuingSession:];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    clientAsString = [(WPClient *)self clientAsString];
    v9 = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = clientAsString;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_INFO, "WPClient (%p - %@) registered with daemon, continuing any messages", &v9, 0x16u);
  }

  daemonRegisteredSemaphore = [(WPClient *)self daemonRegisteredSemaphore];
  dispatch_semaphore_signal(daemonRegisteredSemaphore);

  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [WPClient stateAsString:[(WPClient *)self state]];
  v7 = [v3 stringWithFormat:@"<%@: %p state = %@>", v5, self, v6];

  return v7;
}

+ (id)stateAsString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279ED7998[string - 1];
  }
}

- (void)addServices
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __23__WPClient_addServices__block_invoke;
  v2[3] = &unk_279ED7748;
  v2[4] = self;
  [(WPClient *)self populateClientGATT:v2];
}

void __23__WPClient_addServices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    if (WPLogInitOnce != -1)
    {
      __23__WPClient_addServices__block_invoke_cold_1();
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 clientAsString];
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Adding services for %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 32));
    v12 = [*(a1 + 32) daemonDeliveryQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__WPClient_addServices__block_invoke_407;
    block[3] = &unk_279ED7720;
    objc_copyWeak(&v17, buf);
    v15 = v5;
    v16 = v7;
    dispatch_async(v12, block);

    [*(a1 + 32) setServicesAdded:1];
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __23__WPClient_addServices__block_invoke_407(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_411];
    [v4 addCharacteristic:*(a1 + 32) forService:*(a1 + 40)];

    WeakRetained = v5;
  }
}

void __23__WPClient_addServices__block_invoke_2_408(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __23__WPClient_addServices__block_invoke_2_408_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __23__WPClient_addServices__block_invoke_2_408_cold_2(v3);
  }
}

- (void)dispatchAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WPClient_dispatchAdvertisement___block_invoke;
  block[3] = &unk_279ED7798;
  objc_copyWeak(&v9, &location);
  v8 = advertisementCopy;
  v6 = advertisementCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __34__WPClient_dispatchAdvertisement___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __34__WPClient_dispatchAdvertisement___block_invoke_2;
    v9 = &unk_279ED7770;
    v10 = v3;
    v11 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:&v6];
    [v5 startAdvertising:{*(a1 + 32), v6, v7, v8, v9, v10}];
  }
}

void __34__WPClient_dispatchAdvertisement___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [a2 localizedDescription];
  v5 = [v3 stringWithFormat:@"WPClient can't reach bluetoothd to start advertising. ERROR: %@", v4];

  if (WPLogInitOnce != -1)
  {
    __34__WPClient_dispatchAdvertisement___block_invoke_2_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }

  v6 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v6 errorWithDomain:@"WPErrorDomain" code:5 userInfo:v7];

  [*(a1 + 32) advertisingFailedToStart:v8 ofType:{objc_msgSend(*(a1 + 40), "clientType")}];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising:(id)advertising
{
  v24[1] = *MEMORY[0x277D85DE8];
  advertisingCopy = advertising;
  if (![advertisingCopy clientType] || objc_msgSend(advertisingCopy, "clientType") >= 0x1C)
  {
    [MEMORY[0x277CBEAD8] raise:@"Unknown client type" format:{@"Trying to start advertising for an unknown client type %ld", objc_msgSend(advertisingCopy, "clientType")}];
  }

  advertisingData = [advertisingCopy advertisingData];

  if (!advertisingData)
  {
    v8 = MEMORY[0x277CCACA8];
    clientAsString = [(WPClient *)self clientAsString];
    v10 = [v8 stringWithFormat:@"WPClient %@ advertising data is nil", clientAsString];

    if (WPLogInitOnce != -1)
    {
      [WPClient startAdvertising:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v11 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = v10;
    v12 = MEMORY[0x277CBEAC0];
    v13 = v24;
    v14 = &v23;
    goto LABEL_23;
  }

  v6 = [advertisingCopy advertisingRate] == 32 || objc_msgSend(advertisingCopy, "advertisingRate") == 48 || objc_msgSend(advertisingCopy, "advertisingRate") == 192 || objc_msgSend(advertisingCopy, "advertisingRate") == 96 || objc_msgSend(advertisingCopy, "advertisingRate") == 290 || objc_msgSend(advertisingCopy, "advertisingRate") == 432 || objc_msgSend(advertisingCopy, "advertisingRate") == 996 || objc_msgSend(advertisingCopy, "advertisingRate") == 1636 || objc_msgSend(advertisingCopy, "advertisingRate") == 3200 || objc_msgSend(advertisingCopy, "advertisingRate") == 0x4000;
  clientType = [advertisingCopy clientType];
  if (clientType > 0x1B)
  {
    goto LABEL_31;
  }

  if (((1 << clientType) & 0xD6C0000) == 0)
  {
    if (clientType == 2)
    {
      if (+[WPClient isHomePodOrIOS])
      {
        v18 = [advertisingCopy advertisingRate] == 160;
      }

      else
      {
        v18 = 0;
      }

      if (v6 || v18)
      {
        goto LABEL_17;
      }

LABEL_35:
      v19 = MEMORY[0x277CCACA8];
      clientAsString2 = [(WPClient *)self clientAsString];
      v10 = [v19 stringWithFormat:@"WPClient %@ advertising rate 0x%lx is not valid", clientAsString2, objc_msgSend(advertisingCopy, "advertisingRate")];

      if (WPLogInitOnce != -1)
      {
        [WPClient startAdvertising:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTest startAdvertisingOfType:data:priority:mode:options:];
      }

      v11 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA450];
      v22 = v10;
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v22;
      v14 = &v21;
LABEL_23:
      v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
      v16 = [v11 errorWithDomain:@"WPErrorDomain" code:13 userInfo:v15];

      -[WPClient advertisingFailedToStart:ofType:](self, "advertisingFailedToStart:ofType:", v16, [advertisingCopy clientType]);
      goto LABEL_24;
    }

    if (clientType == 8)
    {
      if ((v6 | +[WPClient isHomePodOrIOS]))
      {
        goto LABEL_17;
      }

      goto LABEL_35;
    }

LABEL_31:
    if (v6)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_17:
  [(WPClient *)self dispatchAdvertisement:advertisingCopy];
LABEL_24:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising:(id)advertising
{
  advertisingCopy = advertising;
  if (![advertisingCopy clientType] || objc_msgSend(advertisingCopy, "clientType") >= 0x1C)
  {
    [MEMORY[0x277CBEAD8] raise:@"Unknown client type" format:{@"Trying to stop advertising for an unknown client type %ld", objc_msgSend(advertisingCopy, "clientType")}];
  }

  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__WPClient_stopAdvertising___block_invoke;
  block[3] = &unk_279ED7798;
  objc_copyWeak(&v9, &location);
  v8 = advertisingCopy;
  v6 = advertisingCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __28__WPClient_stopAdvertising___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_443];
    [v4 stopAdvertising:*(a1 + 32)];

    WeakRetained = v5;
  }
}

void __28__WPClient_stopAdvertising___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __28__WPClient_stopAdvertising___block_invoke_2_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __28__WPClient_stopAdvertising___block_invoke_2_cold_2(v3);
  }
}

- (void)updateAdvertisingRequest:(id)request withUpdate:(id)update
{
  requestCopy = request;
  updateCopy = update;
  if (requestCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPClient updateAdvertisingRequest:withUpdate:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPClient updateAdvertisingRequest:v7 withUpdate:?];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPClient updateAdvertisingRequest:withUpdate:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPClient updateAdvertisingRequest:v8 withUpdate:?];
    }
  }
}

- (void)registerForAnyScanResults:(BOOL)results
{
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WPClient_registerForAnyScanResults___block_invoke;
  block[3] = &unk_279ED77C0;
  objc_copyWeak(&v7, &location);
  resultsCopy = results;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __38__WPClient_registerForAnyScanResults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_452];
    [v4 registerForAnyScanResults:*(a1 + 40)];

    WeakRetained = v5;
  }
}

void __38__WPClient_registerForAnyScanResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a2 localizedDescription];
  v4 = [v2 stringWithFormat:@"WPClint can't reach bluetoothd to register for any scan results. ERROR: %@", v3];

  if (WPLogInitOnce != -1)
  {
    __38__WPClient_registerForAnyScanResults___block_invoke_2_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }
}

- (void)startScanning:(id)scanning
{
  scanningCopy = scanning;
  if (![scanningCopy clientType] || objc_msgSend(scanningCopy, "clientType") >= 0x1C)
  {
    [MEMORY[0x277CBEAD8] raise:@"Unknown client type" format:{@"Trying to start scanning for an unknown client type %ld", objc_msgSend(scanningCopy, "clientType")}];
  }

  if ([scanningCopy clientType] == 8)
  {
    daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__WPClient_startScanning___block_invoke;
    block[3] = &unk_279ED77E8;
    block[4] = self;
    v14 = scanningCopy;
    v6 = scanningCopy;
    dispatch_sync(daemonDeliveryQueue, block);
  }

  else
  {
    objc_initWeak(&location, self);
    daemonDeliveryQueue2 = [(WPClient *)self daemonDeliveryQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __26__WPClient_startScanning___block_invoke_3;
    v9[3] = &unk_279ED7798;
    objc_copyWeak(&v11, &location);
    v10 = scanningCopy;
    v8 = scanningCopy;
    dispatch_async(daemonDeliveryQueue2, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __26__WPClient_startScanning___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __26__WPClient_startScanning___block_invoke_2;
  v8 = &unk_279ED7770;
  v3 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v3;
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&v5];
  [v4 startScanning:*(a1 + 40) withDispatch:{0, v5, v6, v7, v8, v9}];
}

void __26__WPClient_startScanning___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 handleStartScanningError:v4 ofType:{objc_msgSend(v3, "clientType")}];
}

void __26__WPClient_startScanning___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __26__WPClient_startScanning___block_invoke_4;
    v9 = &unk_279ED7770;
    v10 = v3;
    v11 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:&v6];
    [v5 startScanning:{*(a1 + 32), v6, v7, v8, v9, v10}];
  }
}

void __26__WPClient_startScanning___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 handleStartScanningError:v4 ofType:{objc_msgSend(v3, "clientType")}];
}

- (void)stopScanning:(id)scanning
{
  scanningCopy = scanning;
  if (![scanningCopy clientType] || objc_msgSend(scanningCopy, "clientType") >= 0x1C)
  {
    [MEMORY[0x277CBEAD8] raise:@"Unknown client type" format:{@"Trying to stop scanning for an unknown client type %ld", objc_msgSend(scanningCopy, "clientType")}];
  }

  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__WPClient_stopScanning___block_invoke;
  block[3] = &unk_279ED7798;
  objc_copyWeak(&v9, &location);
  v8 = scanningCopy;
  v6 = scanningCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __25__WPClient_stopScanning___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __25__WPClient_stopScanning___block_invoke_2;
    v9 = &unk_279ED7770;
    v10 = v3;
    v11 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:&v6];
    [v5 stopScanning:{*(a1 + 32), v6, v7, v8, v9, v10}];
  }
}

void __25__WPClient_stopScanning___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [a2 localizedDescription];
  v5 = [v3 stringWithFormat:@"WPClient can't reach bluetoothd to stop scanning. ERROR: %@", v4];

  if (WPLogInitOnce != -1)
  {
    __25__WPClient_stopScanning___block_invoke_2_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }

  v6 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v6 errorWithDomain:@"WPErrorDomain" code:5 userInfo:v7];

  [*(a1 + 32) scanningFailedToStart:v8 ofType:{objc_msgSend(*(a1 + 40), "clientType")}];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearDuplicateFilterCache:(id)cache
{
  cacheCopy = cache;
  if (![cacheCopy clientType] || objc_msgSend(cacheCopy, "clientType") >= 0x1C)
  {
    [MEMORY[0x277CBEAD8] raise:@"Unknown client type" format:{@"Trying to clear duplicate filter cache for an unknown client type %ld", objc_msgSend(cacheCopy, "clientType")}];
  }

  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WPClient_clearDuplicateFilterCache___block_invoke;
  block[3] = &unk_279ED7798;
  objc_copyWeak(&v9, &location);
  v8 = cacheCopy;
  v6 = cacheCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__WPClient_clearDuplicateFilterCache___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_478];
    [v4 clearDuplicateFilterCache:*(a1 + 32)];

    WeakRetained = v5;
  }
}

void __38__WPClient_clearDuplicateFilterCache___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a2 localizedDescription];
  v4 = [v2 stringWithFormat:@"WPClient can't reach bluetoothd to removeDupFilterPerType. ERROR: %@", v3];

  if (WPLogInitOnce != -1)
  {
    __38__WPClient_clearDuplicateFilterCache___block_invoke_2_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }
}

- (void)updateScanningRequest:(id)request withUpdate:(id)update
{
  requestCopy = request;
  updateCopy = update;
  if (requestCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPClient updateScanningRequest:withUpdate:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPClient updateScanningRequest:v7 withUpdate:?];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPClient updateScanningRequest:withUpdate:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPClient updateScanningRequest:v8 withUpdate:?];
    }
  }
}

- (void)startScanning:(id)scanning andAdvertising:(id)advertising
{
  scanningCopy = scanning;
  [(WPClient *)self startAdvertising:advertising];
  [(WPClient *)self startScanning:scanningCopy];
}

- (void)registerEndpoint:(id)endpoint requireAck:(BOOL)ack requireEncryption:(BOOL)encryption
{
  endpointCopy = endpoint;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__WPClient_registerEndpoint_requireAck_requireEncryption___block_invoke;
  v11[3] = &unk_279ED7810;
  objc_copyWeak(&v13, &location);
  v12 = endpointCopy;
  ackCopy = ack;
  encryptionCopy = encryption;
  v10 = endpointCopy;
  dispatch_async(daemonDeliveryQueue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __58__WPClient_registerEndpoint_requireAck_requireEncryption___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_490];
    [v4 registerEndpoint:*(a1 + 32) requireAck:*(a1 + 48) requireEncryption:*(a1 + 49)];

    WeakRetained = v5;
  }
}

void __58__WPClient_registerEndpoint_requireAck_requireEncryption___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a2 localizedDescription];
  v4 = [v2 stringWithFormat:@"WPClient can't reach bluetoothd to register endpoint. ERROR: %@", v3];

  if (WPLogInitOnce != -1)
  {
    __58__WPClient_registerEndpoint_requireAck_requireEncryption___block_invoke_2_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }
}

- (void)unregisterEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WPClient_unregisterEndpoint___block_invoke;
  block[3] = &unk_279ED7798;
  objc_copyWeak(&v9, &location);
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __31__WPClient_unregisterEndpoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_497];
    [v4 unregisterEndpoint:*(a1 + 32)];

    WeakRetained = v5;
  }
}

void __31__WPClient_unregisterEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a2 localizedDescription];
  v4 = [v2 stringWithFormat:@"WPClint can't reach bluetoothd to unregister endpoint. ERROR: %@", v3];

  if (WPLogInitOnce != -1)
  {
    __31__WPClient_unregisterEndpoint___block_invoke_2_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }
}

- (void)sendDatatoLePipe:(id)pipe forPeer:(id)peer
{
  pipeCopy = pipe;
  peerCopy = peer;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__WPClient_sendDatatoLePipe_forPeer___block_invoke;
  v11[3] = &unk_279ED7720;
  objc_copyWeak(&v14, &location);
  v12 = peerCopy;
  v13 = pipeCopy;
  v9 = pipeCopy;
  v10 = peerCopy;
  dispatch_async(daemonDeliveryQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __37__WPClient_sendDatatoLePipe_forPeer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__WPClient_sendDatatoLePipe_forPeer___block_invoke_2;
    v6[3] = &unk_279ED7838;
    v7 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 sendDatatoLePipe:*(a1 + 40) forPeer:*(a1 + 32)];
  }
}

void __37__WPClient_sendDatatoLePipe_forPeer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (WPLogInitOnce != -1)
  {
    __37__WPClient_sendDatatoLePipe_forPeer___block_invoke_2_cold_1();
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __37__WPClient_sendDatatoLePipe_forPeer___block_invoke_2_cold_2(a1, v4);
  }
}

- (void)startTrackingPeerWithRequest:(id)request
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"Peer tracking is unsupported as the platform is not OS X";
  v5 = MEMORY[0x277CBEAC0];
  requestCopy = request;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 errorWithDomain:@"WPErrorDomain" code:5 userInfo:v7];

  [(WPClient *)self failedToStartTrackingPeer:requestCopy error:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingPeerWithRequest:(id)request
{
  requestCopy = request;
  peerUUID = [requestCopy peerUUID];
  clientType = [requestCopy clientType];

  [(WPClient *)self stoppedTrackingPeer:peerUUID ofType:clientType];
}

- (void)connectToPeer:(id)peer withOptions:(id)options
{
  v39[2] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  optionsCopy = options;
  v8 = optionsCopy;
  if (!optionsCopy)
  {
    goto LABEL_9;
  }

  v9 = *MEMORY[0x277CBDEA0];
  v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CBDEA0]];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [v8 objectForKeyedSubscript:v9];
  bOOLValue = [v11 BOOLValue];

  if (WPLogInitOnce != -1)
  {
    [WPClient connectToPeer:withOptions:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPClient connectToPeer:withOptions:];
  }

  if (bOOLValue && ([(WPClient *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    objc_initWeak(&location, self);
    daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__WPClient_connectToPeer_withOptions___block_invoke_511;
    block[3] = &unk_279ED7798;
    objc_copyWeak(&v36, &location);
    v35 = peerCopy;
    v29 = peerCopy;
    dispatch_async(daemonDeliveryQueue, block);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_9:
    v13 = objc_autoreleasePoolPush();
    v14 = *MEMORY[0x277CBDE98];
    v38[0] = *MEMORY[0x277CBDE98];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WPClient connectionUseCase](self, "connectionUseCase")}];
    v39[0] = v15;
    v38[1] = *MEMORY[0x277CBDEB0];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WPClient maxAllowedConnectionDelayMs](self, "maxAllowedConnectionDelayMs")}];
    v39[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

    if (v8)
    {
      v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v17];
      v19 = [v8 objectForKeyedSubscript:@"WPNearbyKeyUseCaseList"];
      if ([v19 count])
      {
        v20 = MEMORY[0x277CBEA60];
        allObjects = [v19 allObjects];
        v22 = [v20 arrayWithArray:allObjects];
        [v18 setObject:v22 forKey:@"kCBOptionUseCaseList"];

        if ([v19 count] == 1)
        {
          if ([v19 containsObject:&unk_28835C858])
          {
            [v18 setObject:&unk_28835C858 forKey:v14];
          }
        }
      }

      [v18 addEntriesFromDictionary:v8];
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18];

      v17 = v23;
    }

    objc_autoreleasePoolPop(v13);
    objc_initWeak(&location, self);
    daemonDeliveryQueue2 = [(WPClient *)self daemonDeliveryQueue];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __38__WPClient_connectToPeer_withOptions___block_invoke_522;
    v30[3] = &unk_279ED7720;
    objc_copyWeak(&v33, &location);
    v31 = peerCopy;
    v32 = v17;
    v25 = peerCopy;
    v26 = v17;
    dispatch_async(daemonDeliveryQueue2, v30);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __38__WPClient_connectToPeer_withOptions___block_invoke_511(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __38__WPClient_connectToPeer_withOptions___block_invoke_511_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __38__WPClient_connectToPeer_withOptions___block_invoke_511_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"Connection option not allowed.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v11 errorWithDomain:@"WPErrorDomain" code:29 userInfo:v12];

    [WeakRetained connectedDevice:*(a1 + 32) withError:v13 shouldDiscover:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __38__WPClient_connectToPeer_withOptions___block_invoke_522(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__WPClient_connectToPeer_withOptions___block_invoke_2_523;
    v6[3] = &unk_279ED7838;
    v7 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 connectToPeer:*(a1 + 32) withOptions:*(a1 + 40)];
  }
}

void __38__WPClient_connectToPeer_withOptions___block_invoke_2_523(uint64_t a1, void *a2)
{
  v3 = a2;
  if (WPLogInitOnce != -1)
  {
    __38__WPClient_connectToPeer_withOptions___block_invoke_2_523_cold_1();
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __38__WPClient_connectToPeer_withOptions___block_invoke_2_523_cold_2(a1, v4);
  }
}

- (void)disconnectFromPeer:(id)peer
{
  peerCopy = peer;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WPClient_disconnectFromPeer___block_invoke;
  block[3] = &unk_279ED7798;
  objc_copyWeak(&v9, &location);
  v8 = peerCopy;
  v6 = peerCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __31__WPClient_disconnectFromPeer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__WPClient_disconnectFromPeer___block_invoke_2;
    v6[3] = &unk_279ED7838;
    v7 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 disconnectFromPeer:*(a1 + 32)];
  }
}

void __31__WPClient_disconnectFromPeer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (WPLogInitOnce != -1)
  {
    __31__WPClient_disconnectFromPeer___block_invoke_2_cold_1();
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __31__WPClient_disconnectFromPeer___block_invoke_2_cold_2(a1, v4);
  }
}

- (void)discoverCharacteristicsAndServices:(id)services forPeripheral:(id)peripheral
{
  servicesCopy = services;
  peripheralCopy = peripheral;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__WPClient_discoverCharacteristicsAndServices_forPeripheral___block_invoke;
  v11[3] = &unk_279ED7720;
  objc_copyWeak(&v14, &location);
  v12 = peripheralCopy;
  v13 = servicesCopy;
  v9 = servicesCopy;
  v10 = peripheralCopy;
  dispatch_async(daemonDeliveryQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __61__WPClient_discoverCharacteristicsAndServices_forPeripheral___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__WPClient_discoverCharacteristicsAndServices_forPeripheral___block_invoke_2;
    v6[3] = &unk_279ED7838;
    v7 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 discoverCharacteristicsAndServices:*(a1 + 40) forPeripheral:*(a1 + 32)];
  }
}

void __61__WPClient_discoverCharacteristicsAndServices_forPeripheral___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (WPLogInitOnce != -1)
  {
    __61__WPClient_discoverCharacteristicsAndServices_forPeripheral___block_invoke_2_cold_1();
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __61__WPClient_discoverCharacteristicsAndServices_forPeripheral___block_invoke_2_cold_2(a1, v4);
  }
}

- (void)shouldSubscribe:(BOOL)subscribe toPeer:(id)peer withCharacteristic:(id)characteristic inService:(id)service
{
  peerCopy = peer;
  characteristicCopy = characteristic;
  serviceCopy = service;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__WPClient_shouldSubscribe_toPeer_withCharacteristic_inService___block_invoke;
  v17[3] = &unk_279ED7860;
  objc_copyWeak(&v21, &location);
  subscribeCopy = subscribe;
  v18 = peerCopy;
  v19 = characteristicCopy;
  v20 = serviceCopy;
  v14 = serviceCopy;
  v15 = characteristicCopy;
  v16 = peerCopy;
  dispatch_async(daemonDeliveryQueue, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __64__WPClient_shouldSubscribe_toPeer_withCharacteristic_inService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__WPClient_shouldSubscribe_toPeer_withCharacteristic_inService___block_invoke_2;
    v6[3] = &unk_279ED7838;
    v7 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 shouldSubscribe:*(a1 + 64) toPeer:*(a1 + 32) withCharacteristic:*(a1 + 40) inService:*(a1 + 48)];
  }
}

void __64__WPClient_shouldSubscribe_toPeer_withCharacteristic_inService___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (WPLogInitOnce != -1)
  {
    __64__WPClient_shouldSubscribe_toPeer_withCharacteristic_inService___block_invoke_2_cold_1();
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __64__WPClient_shouldSubscribe_toPeer_withCharacteristic_inService___block_invoke_2_cold_2(a1, v4);
  }
}

- (void)sendDataToCharacteristic:(id)characteristic inService:(id)service forPeer:(id)peer
{
  v24 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  serviceCopy = service;
  peerCopy = peer;
  if (WPLogInitOnce != -1)
  {
    [WPClient sendDataToCharacteristic:inService:forPeer:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = characteristicCopy;
    _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_INFO, "Sending data to %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__WPClient_sendDataToCharacteristic_inService_forPeer___block_invoke_534;
  v17[3] = &unk_279ED7888;
  objc_copyWeak(&v21, buf);
  v18 = peerCopy;
  v19 = characteristicCopy;
  v20 = serviceCopy;
  v13 = serviceCopy;
  v14 = characteristicCopy;
  v15 = peerCopy;
  dispatch_async(daemonDeliveryQueue, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __55__WPClient_sendDataToCharacteristic_inService_forPeer___block_invoke_534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__WPClient_sendDataToCharacteristic_inService_forPeer___block_invoke_2;
    v6[3] = &unk_279ED7838;
    v7 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 sendDataToCharacteristic:*(a1 + 40) inService:*(a1 + 48) forPeer:*(a1 + 32)];
  }
}

void __55__WPClient_sendDataToCharacteristic_inService_forPeer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (WPLogInitOnce != -1)
  {
    __55__WPClient_sendDataToCharacteristic_inService_forPeer___block_invoke_2_cold_1();
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __37__WPClient_sendDatatoLePipe_forPeer___block_invoke_2_cold_2(a1, v4);
  }
}

- (void)startTrackingZone:(id)zone
{
  zoneCopy = zone;
  if (![zoneCopy clientType] || objc_msgSend(zoneCopy, "clientType") >= 0x1C)
  {
    [MEMORY[0x277CBEAD8] raise:@"Unknown client type" format:{@"Trying to start tracking a zone for an unknown client type %ld", objc_msgSend(zoneCopy, "clientType")}];
  }

  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WPClient_startTrackingZone___block_invoke;
  block[3] = &unk_279ED7798;
  objc_copyWeak(&v9, &location);
  v8 = zoneCopy;
  v6 = zoneCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __30__WPClient_startTrackingZone___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __30__WPClient_startTrackingZone___block_invoke_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __30__WPClient_startTrackingZone___block_invoke_cold_2(v3);
    }

    v4 = [WeakRetained connection];
    v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_544];
    [v5 startTrackingZone:*(a1 + 32)];
  }
}

void __30__WPClient_startTrackingZone___block_invoke_542(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __30__WPClient_startTrackingZone___block_invoke_542_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __30__WPClient_startTrackingZone___block_invoke_542_cold_2(v3);
  }
}

- (void)stopTrackingZones:(id)zones
{
  zonesCopy = zones;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WPClient_stopTrackingZones___block_invoke;
  block[3] = &unk_279ED7798;
  objc_copyWeak(&v9, &location);
  v8 = zonesCopy;
  v6 = zonesCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __30__WPClient_stopTrackingZones___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __30__WPClient_stopTrackingZones___block_invoke_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __30__WPClient_stopTrackingZones___block_invoke_cold_2(a1, v3);
    }

    v4 = [WeakRetained connection];
    v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_552];
    [v5 stopTrackingZones:*(a1 + 32)];
  }
}

void __30__WPClient_stopTrackingZones___block_invoke_550(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __30__WPClient_stopTrackingZones___block_invoke_550_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __30__WPClient_stopTrackingZones___block_invoke_550_cold_2(v3);
  }
}

- (void)stopTrackingAllZones
{
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__WPClient_stopTrackingAllZones__block_invoke;
  v4[3] = &unk_279ED78B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(daemonDeliveryQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__WPClient_stopTrackingAllZones__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __32__WPClient_stopTrackingAllZones__block_invoke_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __32__WPClient_stopTrackingAllZones__block_invoke_cold_2(v2);
    }

    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_560];
    [v4 stopTrackingAllZones];
  }
}

void __32__WPClient_stopTrackingAllZones__block_invoke_558(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __32__WPClient_stopTrackingAllZones__block_invoke_558_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __32__WPClient_stopTrackingAllZones__block_invoke_558_cold_2(v3);
  }
}

- (void)getAllTrackedZones
{
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__WPClient_getAllTrackedZones__block_invoke;
  v4[3] = &unk_279ED78B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(daemonDeliveryQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __30__WPClient_getAllTrackedZones__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __30__WPClient_getAllTrackedZones__block_invoke_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __30__WPClient_getAllTrackedZones__block_invoke_cold_2(v2);
    }

    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_568];
    [v4 getAllTrackedZones];
  }
}

void __30__WPClient_getAllTrackedZones__block_invoke_566(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __30__WPClient_getAllTrackedZones__block_invoke_566_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __30__WPClient_getAllTrackedZones__block_invoke_566_cold_2(v3);
  }
}

- (void)enableRanging:(BOOL)ranging reply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__WPClient_enableRanging_reply___block_invoke;
  v9[3] = &unk_279ED78D8;
  objc_copyWeak(&v11, &location);
  rangingCopy = ranging;
  v10 = replyCopy;
  v8 = replyCopy;
  dispatch_async(daemonDeliveryQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __32__WPClient_enableRanging_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_573];
    [v4 enableRanging:*(a1 + 48) reply:*(a1 + 32)];

    WeakRetained = v5;
  }
}

void __32__WPClient_enableRanging_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __32__WPClient_enableRanging_reply___block_invoke_2_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __32__WPClient_enableRanging_reply___block_invoke_2_cold_2(v3);
  }
}

- (void)isRangingEnabledReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WPClient_isRangingEnabledReply___block_invoke;
  block[3] = &unk_279ED7900;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __34__WPClient_isRangingEnabledReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_577];
    [v4 isRangingEnabledReply:*(a1 + 32)];

    WeakRetained = v5;
  }
}

void __34__WPClient_isRangingEnabledReply___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __34__WPClient_isRangingEnabledReply___block_invoke_2_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __34__WPClient_isRangingEnabledReply___block_invoke_2_cold_2(v3);
  }
}

- (void)listenToBandwidthNotifications
{
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__WPClient_listenToBandwidthNotifications__block_invoke;
  v4[3] = &unk_279ED78B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(daemonDeliveryQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__WPClient_listenToBandwidthNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __42__WPClient_listenToBandwidthNotifications__block_invoke_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __42__WPClient_listenToBandwidthNotifications__block_invoke_cold_2(v2);
    }

    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_584];
    [v4 listenToBandwidthNotifications];
  }
}

void __42__WPClient_listenToBandwidthNotifications__block_invoke_582(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __42__WPClient_listenToBandwidthNotifications__block_invoke_582_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __42__WPClient_listenToBandwidthNotifications__block_invoke_582_cold_2(v3);
  }
}

- (void)stateDidChange:(int64_t)change
{
  v20 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPClient stateDidChange:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v16 = 134218240;
    changeCopy3 = change;
    v18 = 2048;
    state = [(WPClient *)self state];
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "State changed to %ld from %ld", &v16, 0x16u);
  }

  if ([(WPClient *)self state]!= change)
  {
    [(WPClient *)self setState:change];
    if (WPLogInitOnce != -1)
    {
      [WPClient stateDidChange:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      advertiserState = [(WPClient *)self advertiserState];
      v16 = 134218240;
      changeCopy3 = change;
      v18 = 2048;
      state = advertiserState;
      _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "Advertiser state changed to %ld from %ld", &v16, 0x16u);
    }

    if ([(WPClient *)self advertiserState]!= change)
    {
      [(WPClient *)self setAdvertiserState:change];
      if ([(WPClient *)self advertiserState]== 1)
      {
        if (WPLogInitOnce != -1)
        {
          [WPClient stateDidChange:];
        }

        v10 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "State is resetting, need to re-add services when asked to re-advertise", &v16, 2u);
        }

        [(WPClient *)self setServicesAdded:0];
      }

      if ([(WPClient *)self advertiserState]== 3)
      {
        if (WPLogInitOnce != -1)
        {
          [WPClient stateDidChange:];
        }

        v11 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "State is on, adding services if necessary", &v16, 2u);
        }

        if (![(WPClient *)self servicesAdded])
        {
          [(WPClient *)self addServices];
        }
      }
    }

    if (WPLogInitOnce != -1)
    {
      [WPClient stateDidChange:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      scannerState = [(WPClient *)self scannerState];
      v16 = 134218240;
      changeCopy3 = change;
      v18 = 2048;
      state = scannerState;
      _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Scanner state changed to %ld from %ld", &v16, 0x16u);
    }

    [(WPClient *)self setScannerState:change];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)receivedTestResponse:(id)response
{
  responseCopy = response;
  if (WPLogInitOnce != -1)
  {
    [WPClient receivedTestResponse:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPClient receivedTestResponse:];
  }
}

- (void)checkAllowDuplicates:(id)duplicates
{
  duplicatesCopy = duplicates;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__WPClient_checkAllowDuplicates___block_invoke;
  block[3] = &unk_279ED7900;
  objc_copyWeak(&v9, &location);
  v8 = duplicatesCopy;
  v6 = duplicatesCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __33__WPClient_checkAllowDuplicates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __33__WPClient_checkAllowDuplicates___block_invoke_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __33__WPClient_checkAllowDuplicates___block_invoke_cold_2(v3);
    }

    v4 = [WeakRetained connection];
    v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_608];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__WPClient_checkAllowDuplicates___block_invoke_612;
    v6[3] = &unk_279ED7928;
    v7 = *(a1 + 32);
    [v5 checkAllowDuplicates:v6];
  }
}

void __33__WPClient_checkAllowDuplicates___block_invoke_606(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __33__WPClient_checkAllowDuplicates___block_invoke_606_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __33__WPClient_checkAllowDuplicates___block_invoke_606_cold_2(v3);
  }
}

- (void)enableTestMode
{
  [(WPClient *)self setIsTestClient:1];
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__WPClient_enableTestMode__block_invoke;
  v4[3] = &unk_279ED78B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(daemonDeliveryQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __26__WPClient_enableTestMode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __26__WPClient_enableTestMode__block_invoke_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __26__WPClient_enableTestMode__block_invoke_cold_2(v2);
    }

    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_618];
    [v4 enableTestMode];
  }
}

void __26__WPClient_enableTestMode__block_invoke_616(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __26__WPClient_enableTestMode__block_invoke_616_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __26__WPClient_enableTestMode__block_invoke_616_cold_2(v3);
  }
}

- (void)enableBubbleTestMode
{
  [(WPClient *)self setIsTestClient:1];
  [(WPClient *)self setIsBubbleTestClient:1];
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__WPClient_enableBubbleTestMode__block_invoke;
  v4[3] = &unk_279ED78B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(daemonDeliveryQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__WPClient_enableBubbleTestMode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __32__WPClient_enableBubbleTestMode__block_invoke_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __32__WPClient_enableBubbleTestMode__block_invoke_cold_2(v2);
    }

    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_626];
    [v4 enableTestMode];
  }
}

void __32__WPClient_enableBubbleTestMode__block_invoke_624(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __32__WPClient_enableBubbleTestMode__block_invoke_624_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __32__WPClient_enableBubbleTestMode__block_invoke_624_cold_2(v3);
  }
}

- (void)overrideScanTimeout:(double)timeout
{
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__WPClient_overrideScanTimeout___block_invoke;
  block[3] = &unk_279ED7950;
  objc_copyWeak(v7, &location);
  v7[1] = *&timeout;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __32__WPClient_overrideScanTimeout___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __32__WPClient_overrideScanTimeout___block_invoke_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "Setting scan timeout for class %@", &v10, 0xCu);
    }

    v7 = [WeakRetained connection];
    v8 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_634];
    [v8 overrideScanTimeout:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __32__WPClient_overrideScanTimeout___block_invoke_632(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __32__WPClient_overrideScanTimeout___block_invoke_632_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __32__WPClient_overrideScanTimeout___block_invoke_632_cold_2(v3);
  }
}

- (void)overrideAdvTimeout:(double)timeout
{
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WPClient_overrideAdvTimeout___block_invoke;
  block[3] = &unk_279ED7950;
  objc_copyWeak(v7, &location);
  v7[1] = *&timeout;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __31__WPClient_overrideAdvTimeout___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __31__WPClient_overrideAdvTimeout___block_invoke_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "Setting adv timeout for class %@", &v10, 0xCu);
    }

    v7 = [WeakRetained connection];
    v8 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_642];
    [v8 overrideAdvTimeout:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __31__WPClient_overrideAdvTimeout___block_invoke_640(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __31__WPClient_overrideAdvTimeout___block_invoke_640_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __31__WPClient_overrideAdvTimeout___block_invoke_640_cold_2(v3);
  }
}

- (void)getPowerLogStats:(id)stats
{
  statsCopy = stats;
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WPClient_getPowerLogStats___block_invoke;
  block[3] = &unk_279ED7900;
  objc_copyWeak(&v9, &location);
  v8 = statsCopy;
  v6 = statsCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __29__WPClient_getPowerLogStats___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __29__WPClient_getPowerLogStats___block_invoke_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __29__WPClient_getPowerLogStats___block_invoke_cold_2(v3);
    }

    v4 = [WeakRetained connection];
    v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_650];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__WPClient_getPowerLogStats___block_invoke_654;
    v6[3] = &unk_279ED7978;
    v7 = *(a1 + 32);
    [v5 getPowerLogStats:v6];
  }
}

void __29__WPClient_getPowerLogStats___block_invoke_648(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __29__WPClient_getPowerLogStats___block_invoke_648_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __29__WPClient_getPowerLogStats___block_invoke_648_cold_2(v3);
  }
}

- (void)dumpDaemonState
{
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__WPClient_dumpDaemonState__block_invoke;
  v4[3] = &unk_279ED78B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(daemonDeliveryQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __27__WPClient_dumpDaemonState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __27__WPClient_dumpDaemonState__block_invoke_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __27__WPClient_dumpDaemonState__block_invoke_cold_2(v2);
    }

    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_660];
    [v4 dumpDaemonState];
  }
}

void __27__WPClient_dumpDaemonState__block_invoke_658(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __27__WPClient_dumpDaemonState__block_invoke_658_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __27__WPClient_dumpDaemonState__block_invoke_658_cold_2(v3);
  }
}

- (void)disableScanning
{
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__WPClient_disableScanning__block_invoke;
  v4[3] = &unk_279ED78B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(daemonDeliveryQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __27__WPClient_disableScanning__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __27__WPClient_disableScanning__block_invoke_cold_1();
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __27__WPClient_disableScanning__block_invoke_cold_2(v2);
    }

    v3 = [WeakRetained connection];
    v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_668];
    [v4 disableScanning];
  }
}

void __27__WPClient_disableScanning__block_invoke_666(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __27__WPClient_disableScanning__block_invoke_666_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __27__WPClient_disableScanning__block_invoke_666_cold_2(v3);
  }
}

- (void)sendTestRequest:(id)request
{
  requestCopy = request;
  [(WPClient *)self setIsTestClient:1];
  objc_initWeak(&location, self);
  daemonDeliveryQueue = [(WPClient *)self daemonDeliveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__WPClient_sendTestRequest___block_invoke;
  block[3] = &unk_279ED7798;
  objc_copyWeak(&v9, &location);
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(daemonDeliveryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __28__WPClient_sendTestRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __28__WPClient_sendTestRequest___block_invoke_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __28__WPClient_sendTestRequest___block_invoke_cold_2(a1, v3);
    }

    v4 = [WeakRetained connection];
    v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_676];
    [v5 sendTestRequest:*(a1 + 32)];
  }
}

void __28__WPClient_sendTestRequest___block_invoke_674(uint64_t a1, void *a2)
{
  v2 = a2;
  if (WPLogInitOnce != -1)
  {
    __28__WPClient_sendTestRequest___block_invoke_674_cold_1();
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    __28__WPClient_sendTestRequest___block_invoke_674_cold_2(v3);
  }
}

- (void)notifyNotApprovedUseCase:(id)case
{
  caseCopy = case;
  if (WPLogInitOnce != -1)
  {
    [WPClient notifyNotApprovedUseCase:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_FAULT))
  {
    [WPClient notifyNotApprovedUseCase:];
  }
}

void __23__WPClient_addServices__block_invoke_2_408_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to add services. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __28__WPClient_stopAdvertising___block_invoke_2_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to stop advertising. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertisingRequest:(void *)a1 withUpdate:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_6_0() clientType];
  OUTLINED_FUNCTION_0_3(&dword_274327000, v3, v4, "Client type (%ld) calling [super updateAdvertisingRequest:withUpdate:]", v5, v6, v7, v8, 0);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateScanningRequest:(void *)a1 withUpdate:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_6_0() clientType];
  OUTLINED_FUNCTION_0_3(&dword_274327000, v3, v4, "Client type (%ld) calling [super updateScanningRequest:withUpdate:]", v5, v6, v7, v8, 0);

  v9 = *MEMORY[0x277D85DE8];
}

void __37__WPClient_sendDatatoLePipe_forPeer___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2);
  [OUTLINED_FUNCTION_7() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_1(&dword_274327000, v6, v7, "WPClient can't reach bluetoothd to send data to peer %@. ERROR: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeer:withOptions:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_274327000, v1, OS_LOG_TYPE_DEBUG, "Client connecting to peer %@ with option CBConnectPeripheralOptionDoNotDisconnectOnEncryptionFailure:%d", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void __38__WPClient_connectToPeer_withOptions___block_invoke_511_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __38__WPClient_connectToPeer_withOptions___block_invoke_2_523_cold_2(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2);
  [OUTLINED_FUNCTION_7() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_1(&dword_274327000, v6, v7, "WPClient can't reach bluetoothd to connect peer with options %@. ERROR: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __31__WPClient_disconnectFromPeer___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2);
  [OUTLINED_FUNCTION_7() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_1(&dword_274327000, v6, v7, "WPClient can't reach bluetoothd to disconnect peer %@. ERROR: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __61__WPClient_discoverCharacteristicsAndServices_forPeripheral___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2);
  [OUTLINED_FUNCTION_7() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_1(&dword_274327000, v6, v7, "WPClient can't reach bluetoothd to discover services and characteristics for peer %@. ERROR: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __64__WPClient_shouldSubscribe_toPeer_withCharacteristic_inService___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2);
  [OUTLINED_FUNCTION_7() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_1(&dword_274327000, v6, v7, "WPClient can't reach bluetoothd to subscribe characteristic for peer %@. ERROR: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __30__WPClient_startTrackingZone___block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __30__WPClient_startTrackingZone___block_invoke_542_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to start tracking zone. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __30__WPClient_stopTrackingZones___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  OUTLINED_FUNCTION_6_0();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void __30__WPClient_stopTrackingZones___block_invoke_550_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to stop tracking zone. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __32__WPClient_stopTrackingAllZones__block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __32__WPClient_stopTrackingAllZones__block_invoke_558_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to stop tracking all zones. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __30__WPClient_getAllTrackedZones__block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __30__WPClient_getAllTrackedZones__block_invoke_566_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to get all tracked zones. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __32__WPClient_enableRanging_reply___block_invoke_2_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to enable/disable ranging. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __34__WPClient_isRangingEnabledReply___block_invoke_2_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to get ranging status. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __42__WPClient_listenToBandwidthNotifications__block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __42__WPClient_listenToBandwidthNotifications__block_invoke_582_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to listen to bandwidth notifications. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)receivedTestResponse:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_274327000, v1, OS_LOG_TYPE_DEBUG, "FIXME: Client %@ received testResponse %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __33__WPClient_checkAllowDuplicates___block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __33__WPClient_checkAllowDuplicates___block_invoke_606_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to check duplicate support. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __26__WPClient_enableTestMode__block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __26__WPClient_enableTestMode__block_invoke_616_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to enable test mode. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __32__WPClient_enableBubbleTestMode__block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __32__WPClient_enableBubbleTestMode__block_invoke_624_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to enable bubble test mode. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __32__WPClient_overrideScanTimeout___block_invoke_632_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to set scan timeout. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __31__WPClient_overrideAdvTimeout___block_invoke_640_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to set advertising timeout. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __29__WPClient_getPowerLogStats___block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __29__WPClient_getPowerLogStats___block_invoke_648_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to get power stats. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __27__WPClient_dumpDaemonState__block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __27__WPClient_dumpDaemonState__block_invoke_658_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to dump WirelessProximity state. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __27__WPClient_disableScanning__block_invoke_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_6_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __27__WPClient_disableScanning__block_invoke_666_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to disable scanning. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __28__WPClient_sendTestRequest___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  OUTLINED_FUNCTION_6_0();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void __28__WPClient_sendTestRequest___block_invoke_674_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_274327000, v4, v5, "WPClient can't reach bluetoothd to send test request. ERROR: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyNotApprovedUseCase:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_274327000, v0, OS_LOG_TYPE_FAULT, "Not approved use case: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end