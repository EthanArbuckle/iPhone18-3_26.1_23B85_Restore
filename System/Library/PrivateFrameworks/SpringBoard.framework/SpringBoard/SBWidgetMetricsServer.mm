@interface SBWidgetMetricsServer
- (SBSWidgetMetricsProviding)ambientMetricsProvider;
- (SBSWidgetMetricsProviding)lockScreenMetricsProvider;
- (SBSWidgetMetricsProviding)systemMetricsProvider;
- (SBWidgetMetricsServer)init;
- (SBWidgetMetricsServer)initWithSystemMetricsProvider:(id)provider lockScreenMetricsProvider:(id)metricsProvider ambientMetricsProvider:(id)ambientMetricsProvider;
- (id)_defaultMetricsProviderForWidget:(id)widget;
- (id)_metricsProviderForHostingEnvironment:(id)environment;
- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationsForBundleIdentifier:(id)identifier;
- (id)previewMetricsSpecificationsForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier;
- (id)systemMetricsForWidget:(id)widget;
- (id)systemMetricsForWidget:(id)widget inHostingEnvironment:(id)environment;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation SBWidgetMetricsServer

- (SBWidgetMetricsServer)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBWidgetMetricsServer.m" lineNumber:43 description:@"Use initWithMetricsProvider:"];

  return 0;
}

- (SBWidgetMetricsServer)initWithSystemMetricsProvider:(id)provider lockScreenMetricsProvider:(id)metricsProvider ambientMetricsProvider:(id)ambientMetricsProvider
{
  providerCopy = provider;
  metricsProviderCopy = metricsProvider;
  ambientMetricsProviderCopy = ambientMetricsProvider;
  v26.receiver = self;
  v26.super_class = SBWidgetMetricsServer;
  v11 = [(SBWidgetMetricsServer *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_systemMetricsProvider, providerCopy);
    objc_storeWeak(&v12->_lockScreenMetricsProvider, metricsProviderCopy);
    objc_storeWeak(&v12->_ambientMetricsProvider, ambientMetricsProviderCopy);
    array = [MEMORY[0x277CBEB18] array];
    connections = v12->_connections;
    v12->_connections = array;

    v15 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.widget-metrics"];
    authenticator = v12->_authenticator;
    v12->_authenticator = v15;

    Serial = BSDispatchQueueCreateSerial();
    queue = v12->_queue;
    v12->_queue = Serial;

    v19 = MEMORY[0x277CF32A0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __104__SBWidgetMetricsServer_initWithSystemMetricsProvider_lockScreenMetricsProvider_ambientMetricsProvider___block_invoke;
    v24[3] = &unk_2783A9A18;
    v20 = v12;
    v25 = v20;
    v21 = [v19 listenerWithConfigurator:v24];
    v22 = v20[3];
    v20[3] = v21;

    [v20[3] activate];
  }

  return v12;
}

void __104__SBWidgetMetricsServer_initWithSystemMetricsProvider_lockScreenMetricsProvider_ambientMetricsProvider___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66D00] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  listener = [(SBWidgetMetricsServer *)self listener];
  [listener invalidate];

  v4.receiver = self;
  v4.super_class = SBWidgetMetricsServer;
  [(SBWidgetMetricsServer *)&v4 dealloc];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "SBWidgetMetricsServer: received connection: %{public}@", buf, 0xCu);
  }

  authenticator = [(SBWidgetMetricsServer *)self authenticator];
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  v11 = [authenticator authenticateAuditToken:auditToken];

  if (v11)
  {
    queue = [(SBWidgetMetricsServer *)self queue];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __67__SBWidgetMetricsServer_listener_didReceiveConnection_withContext___block_invoke;
    v18 = &unk_2783A92D8;
    v13 = connectionCopy;
    v19 = v13;
    selfCopy = self;
    dispatch_sync(queue, &v15);

    [v13 activate];
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBWidgetMetricsServer listener:connectionCopy didReceiveConnection:v14 withContext:?];
    }

    [connectionCopy invalidate];
  }
}

void __67__SBWidgetMetricsServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SBWidgetMetricsServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v6[3] = &unk_2783AB730;
  v6[4] = *(a1 + 40);
  [v2 configureConnection:v6];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "SBWidgetMetricsServer: adding connection: %{public}@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) connections];
  [v5 addObject:*(a1 + 32)];
}

void __67__SBWidgetMetricsServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66D00] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D66D00] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __67__SBWidgetMetricsServer_listener_didReceiveConnection_withContext___block_invoke_3;
  v10 = &unk_2783AB6E0;
  objc_copyWeak(&v11, &location);
  [v3 setInvalidationHandler:&v7];
  v6 = [*(a1 + 32) queue];
  [v3 setTargetQueue:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __67__SBWidgetMetricsServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "SBWidgetMetricsServer: received connection invalidation: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained connections];
    [v7 removeObject:v3];
  }
}

- (id)_defaultMetricsProviderForWidget:(id)widget
{
  family = [widget family];
  if (family <= 0xC && ((1 << family) & 0x1C20) != 0)
  {
    lockScreenMetricsProvider = [(SBWidgetMetricsServer *)self lockScreenMetricsProvider];
  }

  else
  {
    lockScreenMetricsProvider = [(SBWidgetMetricsServer *)self systemMetricsProvider];
  }

  return lockScreenMetricsProvider;
}

- (id)_metricsProviderForHostingEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([environmentCopy isEqualToString:*MEMORY[0x277D67250]])
  {
    lockScreenMetricsProvider = [(SBWidgetMetricsServer *)self lockScreenMetricsProvider];
  }

  else
  {
    if ([environmentCopy isEqualToString:*MEMORY[0x277D67240]])
    {
      [(SBWidgetMetricsServer *)self ambientMetricsProvider];
    }

    else
    {
      [(SBWidgetMetricsServer *)self systemMetricsProvider];
    }
    lockScreenMetricsProvider = ;
  }

  v6 = lockScreenMetricsProvider;

  return v6;
}

- (id)systemMetricsForWidget:(id)widget
{
  widgetCopy = widget;
  v5 = [(SBWidgetMetricsServer *)self _defaultMetricsProviderForWidget:widgetCopy];
  v6 = [v5 systemMetricsForWidget:widgetCopy];

  return v6;
}

- (id)previewMetricsSpecificationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  systemMetricsProvider = [(SBWidgetMetricsServer *)self systemMetricsProvider];
  v6 = [systemMetricsProvider previewMetricsSpecificationForBundleIdentifier:identifierCopy];

  lockScreenMetricsProvider = [(SBWidgetMetricsServer *)self lockScreenMetricsProvider];
  v8 = [lockScreenMetricsProvider previewMetricsSpecificationForBundleIdentifier:identifierCopy];

  v9 = objc_alloc_init(MEMORY[0x277CFA2D0]);
  v10 = [v6 metricsForFamily:1];
  [v9 setMetrics:v10 forFamily:1];

  v11 = [v6 metricsForFamily:2];
  [v9 setMetrics:v11 forFamily:2];

  v12 = [v6 metricsForFamily:3];
  [v9 setMetrics:v12 forFamily:3];

  v13 = [v6 metricsForFamily:4];
  [v9 setMetrics:v13 forFamily:4];

  v14 = [v8 metricsForFamily:5];
  [v9 setMetrics:v14 forFamily:5];

  v15 = [v8 metricsForFamily:10];
  [v9 setMetrics:v15 forFamily:10];

  v16 = [v8 metricsForFamily:11];
  [v9 setMetrics:v16 forFamily:11];

  v17 = [v8 metricsForFamily:12];
  [v9 setMetrics:v17 forFamily:12];

  return v9;
}

- (id)previewMetricsSpecificationForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayContextCopy = displayContext;
  contextCopy = context;
  systemMetricsProvider = [(SBWidgetMetricsServer *)self systemMetricsProvider];
  v12 = [systemMetricsProvider previewMetricsSpecificationForDeviceContext:contextCopy displayContext:displayContextCopy bundleIdentifier:identifierCopy];

  lockScreenMetricsProvider = [(SBWidgetMetricsServer *)self lockScreenMetricsProvider];
  v14 = [lockScreenMetricsProvider previewMetricsSpecificationForDeviceContext:contextCopy displayContext:displayContextCopy bundleIdentifier:identifierCopy];

  v15 = objc_alloc_init(MEMORY[0x277CFA2D0]);
  v16 = [v12 metricsForFamily:1];
  [v15 setMetrics:v16 forFamily:1];

  v17 = [v12 metricsForFamily:2];
  [v15 setMetrics:v17 forFamily:2];

  v18 = [v12 metricsForFamily:3];
  [v15 setMetrics:v18 forFamily:3];

  v19 = [v12 metricsForFamily:4];
  [v15 setMetrics:v19 forFamily:4];

  v20 = [v14 metricsForFamily:5];
  [v15 setMetrics:v20 forFamily:5];

  v21 = [v14 metricsForFamily:10];
  [v15 setMetrics:v21 forFamily:10];

  v22 = [v14 metricsForFamily:11];
  [v15 setMetrics:v22 forFamily:11];

  v23 = [v14 metricsForFamily:12];
  [v15 setMetrics:v23 forFamily:12];

  return v15;
}

- (id)systemMetricsForWidget:(id)widget inHostingEnvironment:(id)environment
{
  widgetCopy = widget;
  v7 = [(SBWidgetMetricsServer *)self _metricsProviderForHostingEnvironment:environment];
  v8 = [v7 systemMetricsForWidget:widgetCopy];

  return v8;
}

- (id)previewMetricsSpecificationsForBundleIdentifier:(id)identifier
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D67248];
  identifierCopy = identifier;
  v6 = [(SBWidgetMetricsServer *)self _metricsProviderForHostingEnvironment:v4];
  v7 = [v6 previewMetricsSpecificationForBundleIdentifier:identifierCopy];

  v8 = *MEMORY[0x277D67250];
  v9 = [(SBWidgetMetricsServer *)self _metricsProviderForHostingEnvironment:*MEMORY[0x277D67250]];
  v10 = [v9 previewMetricsSpecificationForBundleIdentifier:identifierCopy];

  v11 = *MEMORY[0x277D67240];
  v12 = [(SBWidgetMetricsServer *)self _metricsProviderForHostingEnvironment:*MEMORY[0x277D67240]];
  v13 = [v12 previewMetricsSpecificationForBundleIdentifier:identifierCopy];

  v16[0] = v4;
  v16[1] = v8;
  v17[0] = v7;
  v17[1] = v10;
  v16[2] = v11;
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v14;
}

- (id)previewMetricsSpecificationsForDeviceContext:(id)context displayContext:(id)displayContext bundleIdentifier:(id)identifier
{
  v23[3] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D67248];
  identifierCopy = identifier;
  displayContextCopy = displayContext;
  contextCopy = context;
  v12 = [(SBWidgetMetricsServer *)self _metricsProviderForHostingEnvironment:v8];
  v13 = [v12 previewMetricsSpecificationForDeviceContext:contextCopy displayContext:displayContextCopy bundleIdentifier:identifierCopy];

  v14 = *MEMORY[0x277D67250];
  v15 = [(SBWidgetMetricsServer *)self _metricsProviderForHostingEnvironment:*MEMORY[0x277D67250]];
  v16 = [v15 previewMetricsSpecificationForDeviceContext:contextCopy displayContext:displayContextCopy bundleIdentifier:identifierCopy];

  v17 = *MEMORY[0x277D67240];
  v18 = [(SBWidgetMetricsServer *)self _metricsProviderForHostingEnvironment:*MEMORY[0x277D67240]];
  v19 = [v18 previewMetricsSpecificationForDeviceContext:contextCopy displayContext:displayContextCopy bundleIdentifier:identifierCopy];

  v22[0] = v8;
  v22[1] = v14;
  v23[0] = v13;
  v23[1] = v16;
  v22[2] = v17;
  v23[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

  return v20;
}

- (SBSWidgetMetricsProviding)systemMetricsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_systemMetricsProvider);

  return WeakRetained;
}

- (SBSWidgetMetricsProviding)lockScreenMetricsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_lockScreenMetricsProvider);

  return WeakRetained;
}

- (SBSWidgetMetricsProviding)ambientMetricsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientMetricsProvider);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "SBWidgetMetricsServer: connection did not pass entitlement validation: %{public}@", &v2, 0xCu);
}

@end