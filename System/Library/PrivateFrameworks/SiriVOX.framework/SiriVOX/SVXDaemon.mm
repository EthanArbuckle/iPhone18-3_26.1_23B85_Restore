@interface SVXDaemon
+ (void)initialize;
- (BOOL)handleClientServiceXPCConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SVXDaemon)init;
- (SVXDaemon)initWithClientServiceQueuePerformer:(id)performer mainQueuePerformer:(id)queuePerformer clientServiceListener:(id)listener platformDependenciesTracker:(id)tracker virtualDeviceManager:(id)manager runningObserver:(id)observer siriActivationListenerDelegate:(id)delegate remoraVirtualDeviceManager:(id)self0 homeHubManagerObserver:(id)self1 rebootExecutor:(id)self2 connectionFactory:(id)self3;
- (void)_enumerateVirtualDevicesUsingBlock:(id)block;
- (void)clientServiceServerConnectionDidInvalidate:(id)invalidate;
- (void)startWithPlatformDependencies:(id)dependencies;
- (void)stop;
@end

@implementation SVXDaemon

- (void)_enumerateVirtualDevicesUsingBlock:(id)block
{
  if (block)
  {
    virtualDeviceManager = self->_virtualDeviceManager;
    blockCopy = block;
    hostVirtualDevice = [(SVXVirtualDeviceManager *)virtualDeviceManager hostVirtualDevice];
    (*(block + 2))(blockCopy, hostVirtualDevice);
  }
}

- (void)clientServiceServerConnectionDidInvalidate:(id)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXDaemon clientServiceServerConnectionDidInvalidate:]";
    v13 = 2112;
    v14 = invalidateCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s connection = %@", buf, 0x16u);
  }

  mainQueuePerformer = self->_mainQueuePerformer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SVXDaemon_clientServiceServerConnectionDidInvalidate___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = invalidateCopy;
  v7 = invalidateCopy;
  [(SVXQueuePerformer *)mainQueuePerformer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __56__SVXDaemon_clientServiceServerConnectionDidInvalidate___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__SVXDaemon_clientServiceServerConnectionDidInvalidate___block_invoke_2;
  v2[3] = &unk_279C68B48;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _enumerateVirtualDevicesUsingBlock:v2];
}

void __56__SVXDaemon_clientServiceServerConnectionDidInvalidate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 clientServiceServer];
  [v3 removeConnection:*(a1 + 32)];
}

- (BOOL)handleClientServiceXPCConnection:(id)connection
{
  v27 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[SVXDaemon handleClientServiceXPCConnection:]";
    *&buf[12] = 2112;
    *&buf[14] = @"com.apple.SiriVOXService.client";
    *&buf[22] = 2112;
    v24 = connectionCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Checking entitlement %@ on %@...", buf, 0x20u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.SiriVOXService.client"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    *buf = 136315138;
    *&buf[4] = "[SVXDaemon handleClientServiceXPCConnection:]";
    v15 = "%s Entitlement value of SVXMachServiceEntitlements.clientService is expected to be an NSNumber.";
LABEL_16:
    _os_log_error_impl(&dword_2695B9000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    goto LABEL_13;
  }

  if (([v7 BOOLValue] & 1) == 0)
  {
    v14 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    *&buf[4] = "[SVXDaemon handleClientServiceXPCConnection:]";
    v15 = "%s Entitlement value of SVXMachServiceEntitlements.clientService is expected to be true.";
    goto LABEL_16;
  }

  queue = [(SVXQueuePerformer *)self->_clientServiceQueuePerformer queue];
  [connectionCopy _setQueue:queue];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = __Block_byref_object_copy__12981;
  v25 = __Block_byref_object_dispose__12982;
  v26 = [(SVXClientServiceServerConnectionFactory *)self->_connectionFactory createWithXPCConnection:connectionCopy performer:self->_clientServiceQueuePerformer delegate:self];
  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    v10 = *(*&buf[8] + 40);
    *v19 = 136315394;
    v20 = "[SVXDaemon handleClientServiceXPCConnection:]";
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Connected to %@.", v19, 0x16u);
    v9 = *v5;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = *(*&buf[8] + 40);
    *v19 = 136315394;
    v20 = "[SVXDaemon handleClientServiceXPCConnection:]";
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Checking instance info on %@...", v19, 0x16u);
  }

  clientServiceQueuePerformer = self->_clientServiceQueuePerformer;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__SVXDaemon_handleClientServiceXPCConnection___block_invoke;
  v18[3] = &unk_279C68B20;
  v18[4] = self;
  v18[5] = buf;
  [(SVXQueuePerformer *)clientServiceQueuePerformer performBlock:v18 withOptions:0];
  [connectionCopy resume];
  _Block_object_dispose(buf, 8);

  v13 = 1;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __46__SVXDaemon_handleClientServiceXPCConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(v1 + 8) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SVXDaemon_handleClientServiceXPCConnection___block_invoke_2;
  v4[3] = &unk_279C68AF8;
  v4[4] = *(a1 + 32);
  v4[5] = v1;
  return [v2 getInstanceInfoWithCompletion:v4];
}

void __46__SVXDaemon_handleClientServiceXPCConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136315650;
      v18 = "[SVXDaemon handleClientServiceXPCConnection:]_block_invoke_2";
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Instance info on %@ is %@.", buf, 0x20u);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__SVXDaemon_handleClientServiceXPCConnection___block_invoke_14;
    v14[3] = &unk_279C68AD0;
    v14[4] = v6;
    v8 = v3;
    v9 = *(a1 + 40);
    v15 = v8;
    v16 = v9;
    [v7 performBlock:v14];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136315394;
      v18 = "[SVXDaemon handleClientServiceXPCConnection:]_block_invoke";
      v19 = 2112;
      v20 = v13;
      _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s Instance info on %@ is unavailable. Disconnect now.", buf, 0x16u);
    }

    [*(*(*(a1 + 40) + 8) + 40) invalidate];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __46__SVXDaemon_handleClientServiceXPCConnection___block_invoke_14(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SVXDaemon_handleClientServiceXPCConnection___block_invoke_2_15;
  v4[3] = &unk_279C68AA8;
  v4[4] = a1[6];
  return [v2 getVirtualDeviceForInstanceInfo:v1 completion:v4];
}

void __46__SVXDaemon_handleClientServiceXPCConnection___block_invoke_2_15(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = *(*(*(a1 + 32) + 8) + 40);
      v11 = 136315650;
      v12 = "[SVXDaemon handleClientServiceXPCConnection:]_block_invoke_2";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Virtual device for %@ is %@.", &v11, 0x20u);
    }

    v6 = [v3 clientServiceServer];
    [v6 addConnection:*(*(*(a1 + 32) + 8) + 40)];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(*(a1 + 32) + 8) + 40);
      v11 = 136315394;
      v12 = "[SVXDaemon handleClientServiceXPCConnection:]_block_invoke";
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s Virtual device for %@ is unavailable. Disconnect now.", &v11, 0x16u);
    }

    [*(*(*(a1 + 32) + 8) + 40) invalidate];
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (self->_clientServiceListener == listenerCopy)
  {
    v9 = [(SVXDaemon *)self handleClientServiceXPCConnection:connectionCopy];
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[SVXDaemon listener:shouldAcceptNewConnection:]";
      _os_log_error_impl(&dword_2695B9000, v8, OS_LOG_TYPE_ERROR, "%s Ignored because the XPC listener is unexpected.", &v12, 0xCu);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)stop
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x277CCAC38];
    v5 = v3;
    processInfo = [v4 processInfo];
    processName = [processInfo processName];
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    processIdentifier = [processInfo2 processIdentifier];
    v10 = AFBuildVersion();
    *buf = 136315906;
    v15 = "[SVXDaemon stop]";
    v16 = 2112;
    v17 = processName;
    v18 = 1024;
    v19 = processIdentifier;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Stopping SiriVOX service in %@ (pid=%d) on %@...", buf, 0x26u);
  }

  mainQueuePerformer = self->_mainQueuePerformer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __17__SVXDaemon_stop__block_invoke;
  v13[3] = &unk_279C68FC0;
  v13[4] = self;
  [(SVXQueuePerformer *)mainQueuePerformer performBlock:v13 withOptions:2];
  v12 = *MEMORY[0x277D85DE8];
}

void __17__SVXDaemon_stop__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 48) isRunning])
  {
    [*(*(a1 + 32) + 48) setIsRunning:0];
    [*(*(a1 + 32) + 56) stop];
    [*(*(a1 + 32) + 24) suspend];
    v2 = [*(*(a1 + 32) + 40) hostVirtualDevice];
    [v2 stop];

    [*(*(a1 + 32) + 32) setPlatformDependencies:0];
  }

  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x277CCAC38];
    v5 = v3;
    v6 = [v4 processInfo];
    v7 = [v6 processName];
    v8 = [MEMORY[0x277CCAC38] processInfo];
    v9 = [v8 processIdentifier];
    v10 = AFBuildVersion();
    v12 = 136315906;
    v13 = "[SVXDaemon stop]_block_invoke";
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Stopped SiriVOX service in %@ (pid=%d) on %@.", &v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startWithPlatformDependencies:(id)dependencies
{
  v26 = *MEMORY[0x277D85DE8];
  dependenciesCopy = dependencies;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCAC38];
    v7 = v5;
    processInfo = [v6 processInfo];
    processName = [processInfo processName];
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    processIdentifier = [processInfo2 processIdentifier];
    v12 = AFBuildVersion();
    *buf = 136315906;
    v19 = "[SVXDaemon startWithPlatformDependencies:]";
    v20 = 2112;
    v21 = processName;
    v22 = 1024;
    v23 = processIdentifier;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Starting SiriVOX service in %@ (pid=%d) on %@...", buf, 0x26u);
  }

  mainQueuePerformer = self->_mainQueuePerformer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__SVXDaemon_startWithPlatformDependencies___block_invoke;
  v16[3] = &unk_279C68FE8;
  v16[4] = self;
  v17 = dependenciesCopy;
  v14 = dependenciesCopy;
  [(SVXQueuePerformer *)mainQueuePerformer performBlock:v16 withOptions:2];

  v15 = *MEMORY[0x277D85DE8];
}

void __43__SVXDaemon_startWithPlatformDependencies___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 48) isRunning] & 1) == 0)
  {
    [*(*(a1 + 32) + 48) setIsRunning:1];
    v2 = [*(a1 + 40) copy];
    [*(*(a1 + 32) + 32) setPlatformDependencies:v2];

    v3 = [*(*(a1 + 32) + 40) hostVirtualDevice];
    v4 = [*(*(a1 + 32) + 32) platformDependencies];
    [v3 startWithPlatformDependencies:v4];

    [*(*(a1 + 32) + 24) resume];
    [*(*(a1 + 32) + 56) start];
  }

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCAC38];
    v7 = v5;
    v8 = [v6 processInfo];
    v9 = [v8 processName];
    v10 = [MEMORY[0x277CCAC38] processInfo];
    v11 = [v10 processIdentifier];
    v12 = AFBuildVersion();
    v14 = 136315906;
    v15 = "[SVXDaemon startWithPlatformDependencies:]_block_invoke";
    v16 = 2112;
    v17 = v9;
    v18 = 1024;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Started SiriVOX service in %@ (pid=%d) on %@.", &v14, 0x26u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (SVXDaemon)initWithClientServiceQueuePerformer:(id)performer mainQueuePerformer:(id)queuePerformer clientServiceListener:(id)listener platformDependenciesTracker:(id)tracker virtualDeviceManager:(id)manager runningObserver:(id)observer siriActivationListenerDelegate:(id)delegate remoraVirtualDeviceManager:(id)self0 homeHubManagerObserver:(id)self1 rebootExecutor:(id)self2 connectionFactory:(id)self3
{
  performerCopy = performer;
  queuePerformerCopy = queuePerformer;
  listenerCopy = listener;
  listenerCopy2 = listener;
  trackerCopy = tracker;
  managerCopy = manager;
  managerCopy2 = manager;
  observerCopy = observer;
  observerCopy2 = observer;
  delegateCopy = delegate;
  deviceManagerCopy = deviceManager;
  managerObserverCopy = managerObserver;
  executorCopy = executor;
  factoryCopy = factory;
  v39.receiver = self;
  v39.super_class = SVXDaemon;
  v23 = [(SVXDaemon *)&v39 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_clientServiceQueuePerformer, performer);
    objc_storeStrong(&v24->_mainQueuePerformer, queuePerformer);
    objc_storeStrong(&v24->_clientServiceListener, listenerCopy);
    [(NSXPCListener *)v24->_clientServiceListener setDelegate:v24];
    clientServiceListener = v24->_clientServiceListener;
    queue = [(SVXQueuePerformer *)v24->_clientServiceQueuePerformer queue];
    [(NSXPCListener *)clientServiceListener _setQueue:queue];

    objc_storeStrong(&v24->_platformDependenciesTracker, tracker);
    objc_storeStrong(&v24->_virtualDeviceManager, managerCopy);
    objc_storeStrong(&v24->_runningObserver, observerCopy);
    objc_storeStrong(&v24->_siriActivationListenerDelegate, delegate);
    objc_storeStrong(&v24->_remoraVirtualDeviceManager, deviceManager);
    objc_storeStrong(&v24->_homeHubManagerObserver, managerObserver);
    objc_storeStrong(&v24->_rebootExecutor, executor);
    objc_storeStrong(&v24->_connectionFactory, factory);
  }

  return v24;
}

- (SVXDaemon)init
{
  v13 = [[SVXQueuePerformer alloc] initWithIdentifier:@"com.apple.SiriVOXService.client-service" qosClass:33 relativePriority:0 options:2];
  v15 = +[SVXQueuePerformer sharedMainQueuePerformer];
  v14 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.SiriVOXService.client"];
  v3 = objc_alloc_init(SVXPlatformDependenciesTracker);
  v4 = objc_alloc_init(SVXDaemonRunningObserver);
  v5 = [[SVXRemoraVirtualDeviceManager alloc] initWithRunningObserver:v4];
  v6 = [[SVXVirtualDeviceManager alloc] initWithRemoraVirtualDeviceManager:v5];
  v7 = [[SVXSiriActivationListenerDelegate alloc] initWithVirtualDeviceManager:v6];
  v8 = [[SVXHomeHubManagerObserver alloc] initWithRemoraVirtualDeviceManager:v5 platformDependenciesTracker:v3];
  v9 = objc_alloc_init(SVXRebootExecutor);
  v10 = objc_alloc_init(SVXClientServiceServerConnectionFactory);
  v12 = [(SVXDaemon *)self initWithClientServiceQueuePerformer:v13 mainQueuePerformer:v15 clientServiceListener:v14 platformDependenciesTracker:v3 virtualDeviceManager:v6 runningObserver:v4 siriActivationListenerDelegate:v7 remoraVirtualDeviceManager:v5 homeHubManagerObserver:v8 rebootExecutor:v9 connectionFactory:v10];

  return v12;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x282141828]();
  }
}

@end