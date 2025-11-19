@interface SLDServiceCenter
+ (id)sharedCenter;
- (NSXPCConnection)conn;
- (SLDServiceCenter)init;
- (id)_synchronousRemoteObjectProxy;
- (id)connectionForServiceClass:(Class)a3;
- (void)_ensureMainConnectionSynchronously;
- (void)_synchronousRemoteObjectProxy;
- (void)init;
- (void)setConn:(id)a3;
@end

@implementation SLDServiceCenter

- (id)_synchronousRemoteObjectProxy
{
  [(SLDServiceCenter *)self _ensureMainConnectionSynchronously];
  v3 = [(SLDServiceCenter *)self conn];
  v4 = v3;
  if (!v3)
  {
    v6 = SLDaemonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceProxy synchronousRemoteServiceWithErrorHandler:];
    }

    goto LABEL_9;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SLDServiceCenter__synchronousRemoteObjectProxy__block_invoke;
  v9[3] = &unk_278925CC8;
  v9[4] = self;
  v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v6 = v5;
  if (v5 && ([v5 conformsToProtocol:&unk_2846BD5A0]& 1) == 0)
  {
    v7 = SLDaemonLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceCenter _synchronousRemoteObjectProxy];
    }

LABEL_9:
    v6 = 0;
  }

  return v6;
}

- (void)_ensureMainConnectionSynchronously
{
  v3 = [(SLDServiceCenter *)self mainConnectionSetupQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (NSXPCConnection)conn
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  v3 = [(SLDServiceCenter *)self propertyConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__SLDServiceCenter_conn__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)sharedCenter
{
  if (sharedCenter_onceToken != -1)
  {
    +[SLDServiceCenter sharedCenter];
  }

  v3 = sharedCenter_sClient;

  return v3;
}

uint64_t __32__SLDServiceCenter_sharedCenter__block_invoke()
{
  sharedCenter_sClient = objc_alloc_init(SLDServiceCenter);

  return MEMORY[0x2821F96F8]();
}

- (SLDServiceCenter)init
{
  v14.receiver = self;
  v14.super_class = SLDServiceCenter;
  v2 = [(SLDServiceCenter *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SocialLayer.SLDServiceCenter.Properties", v3);
    propertyConcurrentQueue = v2->_propertyConcurrentQueue;
    v2->_propertyConcurrentQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.SocialLayer.SLDServiceCenter.MainConnectionSetup", v6);
    mainConnectionSetupQueue = v2->_mainConnectionSetupQueue;
    v2->_mainConnectionSetupQueue = v7;

    v9 = SLDClientGlobalWorkloop();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__SLDServiceCenter_init__block_invoke;
    block[3] = &unk_278925D90;
    v13 = v2;
    dispatch_async(v9, block);

    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SLDServiceCenter init];
    }
  }

  return v2;
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conn];

  if (!v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2846BD5A0];
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.sociallayerd" options:0];
    [v4 setRemoteObjectInterface:v3];
    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, v4);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_2;
    v12 = &unk_2789270F8;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    [v4 setInvalidationHandler:&v9];
    [v4 resume];
    [*(a1 + 32) setConn:v4];
    v5 = SLDaemonLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = [v6 conn];
      __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_cold_1(v6, v7, buf, v5);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)connectionForServiceClass:(Class)a3
{
  v5 = SLGeneralTelemetryLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = SLGeneralTelemetryLogHandle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SLDServiceCenterConnectionForServiceClass", "", buf, 2u);
  }

  inited = objc_initWeak(&location, self);
  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__11;
  v25 = __Block_byref_object_dispose__11;
  v26 = 0;
  v10 = inited;
  if (objc_opt_respondsToSelector())
  {
    v11 = NSStringFromClass(a3);
    v12 = [(SLDServiceCenter *)self _synchronousRemoteObjectProxy];
    v13 = v12;
    if (v12)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__SLDServiceCenter_connectionForServiceClass___block_invoke;
      v20[3] = &unk_2789270D0;
      v20[4] = buf;
      v20[5] = a3;
      [v12 endpointForServiceNamed:v11 reply:v20];
    }

    else
    {
      v14 = SLDaemonLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SLDServiceCenter connectionForServiceClass:];
      }
    }
  }

  else
  {
    v11 = SLDaemonLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceCenter connectionForServiceClass:];
    }
  }

  v15 = SLGeneralTelemetryLogHandle();
  v16 = v15;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v16, OS_SIGNPOST_INTERVAL_END, v6, "SLDServiceCenterConnectionForServiceClass", "", v19, 2u);
  }

  v17 = *(v22 + 5);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);

  return v17;
}

void __46__SLDServiceCenter_connectionForServiceClass___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCAE80];
    v4 = a2;
    v5 = [[v3 alloc] initWithListenerEndpoint:v4];

    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = MEMORY[0x277CCAE90];
    v9 = [*(a1 + 40) remoteObjectProtocol];
    v11 = [v8 interfaceWithProtocol:v9];

    v10 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) setupInterface:v11];
    }

    [*(*(*(a1 + 32) + 8) + 40) setRemoteObjectInterface:v11];
  }
}

- (void)setConn:(id)a3
{
  v4 = a3;
  v5 = [(SLDServiceCenter *)self propertyConcurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__SLDServiceCenter_setConn___block_invoke;
  v7[3] = &unk_278925CF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, v7);
}

void __49__SLDServiceCenter__synchronousRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__SLDServiceCenter__synchronousRemoteObjectProxy__block_invoke_cold_1(a1, v3, v4);
  }
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained mainConnectionSetupQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_3;
  v6[3] = &unk_278925CF0;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_3(uint64_t a1)
{
  v2 = SLDaemonLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_3_cold_1(a1, v2);
  }

  v3 = [*(a1 + 32) conn];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    [*(a1 + 32) setConn:0];
  }
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_231772000, v0, OS_LOG_TYPE_DEBUG, "[%@] Initialized SLDServiceCenter.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)connectionForServiceClass:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[%@] Service class (%@) does implement remoteObjectProtocol. Disallowing service connection.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)connectionForServiceClass:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[%@] Received a nil remote object proxy, we've probably disconnected, or there was an error connecting. Returning a nil connection to the caller.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_synchronousRemoteObjectProxy
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[%@] Remote proxy object does not conform to <SLDServiceMultiplexing>. Returning a nil proxy object.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__SLDServiceCenter__synchronousRemoteObjectProxy__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_231772000, a2, a3, "[%@] Error retrieving a synchronous remote proxy to the main daemon service multiplexer. Error: [%@]", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_231772000, log, OS_LOG_TYPE_DEBUG, "[%@] New primary connection to sociallayerd: %@", buf, 0x16u);
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[%@] Primary connection to sociallayerd was invalidated", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end