@interface UAFXPCConnection
+ (id)selectXPCEndpoint;
- (UAFXPCConnection)initWithDefaultService;
- (UAFXPCConnection)initWithMachServiceName:(id)a3;
- (UAFXPCConnection)initWithSubscriptionServiceName;
- (UAFXPCConnection)initWithUserService;
- (id)_connection;
- (void)_invalidate;
- (void)checkAssetStatus:(id)a3;
- (void)dealloc;
- (void)diagnosticInformation:(id)a3;
- (void)diskSpaceNeededInBytesForLanguage:(id)a3 forClient:(unint64_t)a4 completion:(id)a5;
- (void)downloadDictationAssetsForLanguage:(id)a3;
- (void)downloadSiriAssets;
- (void)downloadSiriAssetsOverCellular;
- (void)expireSubscriptions:(id)a3;
- (void)invalidate;
- (void)lockLatestAtomicInstance:(id)a3 completion:(id)a4;
- (void)markAssetsExpired:(id)a3 completion:(id)a4;
- (void)operationWithConfig:(id)a3 completion:(id)a4;
- (void)postAssetNotificationIfNeeded;
- (void)postDictationAssetNotificationForLanguage:(id)a3;
- (void)setSystemConfigurationForKey:(id)a3 withValue:(id)a4 completion:(id)a5;
- (void)subscriptions:(id)a3 subscriber:(id)a4 user:(id)a5 completion:(id)a6;
@end

@implementation UAFXPCConnection

- (UAFXPCConnection)initWithUserService
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [objc_opt_class() getUserServiceXPCEndpoint];
  v5 = [v3 initWithMachServiceName:v4];

  return v5;
}

- (void)_invalidate
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection setExportedObject:0];
    [(NSXPCConnection *)self->_xpcConnection invalidate];
    v4 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (id)_connection
{
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_serviceName options:0];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_queue];
    v6 = self->_xpcConnection;
    v7 = +[UAFXPCProxyServiceInterface defaultInterface];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:0];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:0];
    objc_initWeak(&location, self);
    v8 = self->_xpcConnection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __31__UAFXPCConnection__connection__block_invoke;
    v13[3] = &unk_1E7FFD110;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v8 setInterruptionHandler:v13];
    v9 = self->_xpcConnection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __31__UAFXPCConnection__connection__block_invoke_291;
    v11[3] = &unk_1E7FFD110;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v11];
    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

- (void)dealloc
{
  [(UAFXPCConnection *)self _invalidate];
  v3.receiver = self;
  v3.super_class = UAFXPCConnection;
  [(UAFXPCConnection *)&v3 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__UAFXPCConnection_invalidate__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (UAFXPCConnection)initWithDefaultService
{
  v13 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__UAFXPCConnection_initWithDefaultService__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  v2 = self;
  v8 = v2;
  if (qword_1ED7D1040 != -1)
  {
    dispatch_once(&qword_1ED7D1040, block);
  }

  v3 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[UAFXPCConnection initWithDefaultService]";
    v11 = 2114;
    v12 = _MergedGlobals;
    _os_log_debug_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEBUG, "%s Using XPC endpoint: %{public}@", buf, 0x16u);
  }

  v4 = [objc_alloc(objc_opt_class()) initWithMachServiceName:_MergedGlobals];
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void __42__UAFXPCConnection_initWithDefaultService__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() selectXPCEndpoint];
  v3 = _MergedGlobals;
  _MergedGlobals = v2;
}

- (UAFXPCConnection)initWithMachServiceName:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = UAFXPCConnection;
  v6 = [(UAFXPCConnection *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceName, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INTERACTIVE, 0);

    v10 = [v5 stringByAppendingString:@".queue.connection"];
    v11 = dispatch_queue_create([v10 cStringUsingEncoding:1], v9);
    queue = v7->_queue;
    v7->_queue = v11;
  }

  return v7;
}

- (UAFXPCConnection)initWithSubscriptionServiceName
{
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    v3 = [(UAFXPCConnection *)self initWithMachServiceName:@"com.apple.siri.uaf.subscription.service"];
  }

  else
  {
    v3 = [(UAFXPCConnection *)self init];
  }

  v4 = v3;

  return v4;
}

void __31__UAFXPCConnection__connection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[UAFXPCConnection _connection]_block_invoke";
    _os_log_debug_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEBUG, "%s XPC Connection interrupted", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];

  v4 = *MEMORY[0x1E69E9840];
}

void __31__UAFXPCConnection__connection__block_invoke_291(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[UAFXPCConnection _connection]_block_invoke";
    _os_log_debug_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEBUG, "%s XPC Connection invalidated", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)operationWithConfig:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UAFXPCConnection_operationWithConfig_completion___block_invoke;
  block[3] = &unk_1E7FFD558;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __51__UAFXPCConnection_operationWithConfig_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__UAFXPCConnection_operationWithConfig_completion___block_invoke_2;
  v7[3] = &unk_1E7FFD530;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__UAFXPCConnection_operationWithConfig_completion___block_invoke_293;
  v5[3] = &unk_1E7FFD530;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 operationWithConfig:v4 completion:v5];
}

void __51__UAFXPCConnection_operationWithConfig_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[UAFXPCConnection operationWithConfig:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_debug_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEBUG, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __51__UAFXPCConnection_operationWithConfig_completion___block_invoke_293(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[UAFXPCConnection operationWithConfig:completion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_debug_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEBUG, "%s operationWithConfig failed with: %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)diagnosticInformation:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__UAFXPCConnection_diagnosticInformation___block_invoke;
  v7[3] = &unk_1E7FFD5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __42__UAFXPCConnection_diagnosticInformation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__UAFXPCConnection_diagnosticInformation___block_invoke_2;
  v6[3] = &unk_1E7FFD530;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__UAFXPCConnection_diagnosticInformation___block_invoke_294;
  v4[3] = &unk_1E7FFD580;
  v5 = *(a1 + 40);
  [v3 diagnosticInformation:v4];
}

void __42__UAFXPCConnection_diagnosticInformation___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[UAFXPCConnection diagnosticInformation:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_debug_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEBUG, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __42__UAFXPCConnection_diagnosticInformation___block_invoke_294(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[UAFXPCConnection diagnosticInformation:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      _os_log_debug_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEBUG, "%s diagnosticInformation failed with: %@", &v10, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)lockLatestAtomicInstance:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__UAFXPCConnection_lockLatestAtomicInstance_completion___block_invoke;
  block[3] = &unk_1E7FFD558;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __56__UAFXPCConnection_lockLatestAtomicInstance_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__UAFXPCConnection_lockLatestAtomicInstance_completion___block_invoke_2;
  v7[3] = &unk_1E7FFD530;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__UAFXPCConnection_lockLatestAtomicInstance_completion___block_invoke_296;
  v5[3] = &unk_1E7FFD530;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 lockLatestAtomicInstance:v4 completion:v5];
}

void __56__UAFXPCConnection_lockLatestAtomicInstance_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[UAFXPCConnection lockLatestAtomicInstance:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __56__UAFXPCConnection_lockLatestAtomicInstance_completion___block_invoke_296(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[UAFXPCConnection lockLatestAtomicInstance:completion:]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s updateAutoAssetsFromAssetSetUsages complete", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)markAssetsExpired:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__UAFXPCConnection_markAssetsExpired_completion___block_invoke;
  block[3] = &unk_1E7FFD620;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __49__UAFXPCConnection_markAssetsExpired_completion___block_invoke(id *a1)
{
  v2 = [a1[4] _connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__UAFXPCConnection_markAssetsExpired_completion___block_invoke_2;
  v8[3] = &unk_1E7FFD5D0;
  v9 = a1[5];
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v4 = a1[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__UAFXPCConnection_markAssetsExpired_completion___block_invoke_297;
  v5[3] = &unk_1E7FFD5F8;
  v6 = v4;
  v7 = a1[6];
  [v3 markAssetsExpired:v6 completion:v5];
}

void __49__UAFXPCConnection_markAssetsExpired_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[UAFXPCConnection markAssetsExpired:completion:]_block_invoke_2";
      v9 = 2114;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s markAssetsExpired of %{public}@ failed with: %@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __49__UAFXPCConnection_markAssetsExpired_completion___block_invoke_297(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[UAFXPCConnection markAssetsExpired:completion:]_block_invoke";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s markAssetsExpired of %{public}@ complete", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSystemConfigurationForKey:(id)a3 withValue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__UAFXPCConnection_setSystemConfigurationForKey_withValue_completion___block_invoke;
  v15[3] = &unk_1E7FFD670;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(queue, v15);
}

void __70__UAFXPCConnection_setSystemConfigurationForKey_withValue_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__UAFXPCConnection_setSystemConfigurationForKey_withValue_completion___block_invoke_2;
  v10[3] = &unk_1E7FFD530;
  v11 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__UAFXPCConnection_setSystemConfigurationForKey_withValue_completion___block_invoke_298;
  v6[3] = &unk_1E7FFD648;
  v7 = v4;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v3 setSystemConfigurationForKey:v7 withValue:v5 completion:v6];
}

void __70__UAFXPCConnection_setSystemConfigurationForKey_withValue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[UAFXPCConnection setSystemConfigurationForKey:withValue:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __70__UAFXPCConnection_setSystemConfigurationForKey_withValue_completion___block_invoke_298(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v8 = 136315650;
    v9 = "[UAFXPCConnection setSystemConfigurationForKey:withValue:completion:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s setSystemConfigurationForKey:%{}@ withValue:%{public}@ complete", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

- (void)expireSubscriptions:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__UAFXPCConnection_expireSubscriptions___block_invoke;
  v7[3] = &unk_1E7FFD5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __40__UAFXPCConnection_expireSubscriptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__UAFXPCConnection_expireSubscriptions___block_invoke_2;
  v6[3] = &unk_1E7FFD530;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__UAFXPCConnection_expireSubscriptions___block_invoke_299;
  v4[3] = &unk_1E7FFD530;
  v5 = *(a1 + 40);
  [v3 expireSubscriptions:v4];
}

void __40__UAFXPCConnection_expireSubscriptions___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[UAFXPCConnection expireSubscriptions:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __40__UAFXPCConnection_expireSubscriptions___block_invoke_299(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[UAFXPCConnection expireSubscriptions:]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s expireSubscriptions complete", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)subscriptions:(id)a3 subscriber:(id)a4 user:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__UAFXPCConnection_subscriptions_subscriber_user_completion___block_invoke;
  block[3] = &unk_1E7FFD070;
  block[4] = self;
  block[5] = &v24;
  dispatch_sync(queue, block);
  v15 = v25[5];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__UAFXPCConnection_subscriptions_subscriber_user_completion___block_invoke_2;
  v21[3] = &unk_1E7FFD530;
  v16 = v13;
  v22 = v16;
  v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__UAFXPCConnection_subscriptions_subscriber_user_completion___block_invoke_300;
  v19[3] = &unk_1E7FFD698;
  v18 = v16;
  v20 = v18;
  [v17 subscriptions:v10 subscriber:v11 user:v12 completion:v19];

  _Block_object_dispose(&v24, 8);
}

void __61__UAFXPCConnection_subscriptions_subscriber_user_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __61__UAFXPCConnection_subscriptions_subscriber_user_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[UAFXPCConnection subscriptions:subscriber:user:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __61__UAFXPCConnection_subscriptions_subscriber_user_completion___block_invoke_300(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[UAFXPCConnection subscriptions:subscriber:user:completion:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s complete with error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)downloadSiriAssets
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__UAFXPCConnection_downloadSiriAssets__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__UAFXPCConnection_downloadSiriAssets__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v1 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_0];
  [v1 downloadSiriAssets];
}

void __38__UAFXPCConnection_downloadSiriAssets__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "[UAFXPCConnection downloadSiriAssets]_block_invoke_2";
      v7 = 2112;
      v8 = v2;
      _os_log_debug_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEBUG, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)downloadSiriAssetsOverCellular
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UAFXPCConnection_downloadSiriAssetsOverCellular__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__UAFXPCConnection_downloadSiriAssetsOverCellular__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v1 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_303];
  [v1 downloadSiriAssetsOverCellular];
}

void __50__UAFXPCConnection_downloadSiriAssetsOverCellular__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "[UAFXPCConnection downloadSiriAssetsOverCellular]_block_invoke_2";
      v7 = 2112;
      v8 = v2;
      _os_log_debug_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEBUG, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)postAssetNotificationIfNeeded
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__UAFXPCConnection_postAssetNotificationIfNeeded__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__UAFXPCConnection_postAssetNotificationIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v1 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_305];
  [v1 postAssetNotificationIfNeeded];
}

void __49__UAFXPCConnection_postAssetNotificationIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "[UAFXPCConnection postAssetNotificationIfNeeded]_block_invoke_2";
      v7 = 2112;
      v8 = v2;
      _os_log_debug_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEBUG, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)downloadDictationAssetsForLanguage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__UAFXPCConnection_downloadDictationAssetsForLanguage___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __55__UAFXPCConnection_downloadDictationAssetsForLanguage___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _connection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_307];
  [v2 downloadDictationAssetsForLanguage:*(a1 + 40)];
}

void __55__UAFXPCConnection_downloadDictationAssetsForLanguage___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "[UAFXPCConnection downloadDictationAssetsForLanguage:]_block_invoke_2";
      v7 = 2112;
      v8 = v2;
      _os_log_debug_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEBUG, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)postDictationAssetNotificationForLanguage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__UAFXPCConnection_postDictationAssetNotificationForLanguage___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __62__UAFXPCConnection_postDictationAssetNotificationForLanguage___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _connection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_309];
  [v2 postDictationAssetNotificationForLanguage:*(a1 + 40)];
}

void __62__UAFXPCConnection_postDictationAssetNotificationForLanguage___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "[UAFXPCConnection postDictationAssetNotificationForLanguage:]_block_invoke_2";
      v7 = 2112;
      v8 = v2;
      _os_log_debug_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEBUG, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)checkAssetStatus:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__UAFXPCConnection_checkAssetStatus___block_invoke;
  v7[3] = &unk_1E7FFD5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __37__UAFXPCConnection_checkAssetStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__UAFXPCConnection_checkAssetStatus___block_invoke_2;
  v6[3] = &unk_1E7FFD530;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__UAFXPCConnection_checkAssetStatus___block_invoke_310;
  v4[3] = &unk_1E7FFD6E0;
  v5 = *(a1 + 40);
  [v3 checkAssetStatus:v4];
}

void __37__UAFXPCConnection_checkAssetStatus___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[UAFXPCConnection checkAssetStatus:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_debug_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEBUG, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __37__UAFXPCConnection_checkAssetStatus___block_invoke_310(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[UAFXPCConnection checkAssetStatus:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      _os_log_debug_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEBUG, "%s checkAssetStatus failed with: %@", &v10, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)diskSpaceNeededInBytesForLanguage:(id)a3 forClient:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__UAFXPCConnection_diskSpaceNeededInBytesForLanguage_forClient_completion___block_invoke;
  v13[3] = &unk_1E7FFD730;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(queue, v13);
}

void __75__UAFXPCConnection_diskSpaceNeededInBytesForLanguage_forClient_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__UAFXPCConnection_diskSpaceNeededInBytesForLanguage_forClient_completion___block_invoke_2;
  v9[3] = &unk_1E7FFD530;
  v10 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__UAFXPCConnection_diskSpaceNeededInBytesForLanguage_forClient_completion___block_invoke_312;
  v6[3] = &unk_1E7FFD708;
  v7 = v4;
  v8 = *(a1 + 48);
  [v3 diskSpaceNeededInBytesForLanguage:v7 forClient:v5 completion:v6];
}

void __75__UAFXPCConnection_diskSpaceNeededInBytesForLanguage_forClient_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[UAFXPCConnection diskSpaceNeededInBytesForLanguage:forClient:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_debug_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEBUG, "%s remoteObjectProxyWithErrorHandler failed with: %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __75__UAFXPCConnection_diskSpaceNeededInBytesForLanguage_forClient_completion___block_invoke_312(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = 136315650;
      v12 = "[UAFXPCConnection diskSpaceNeededInBytesForLanguage:forClient:completion:]_block_invoke";
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_debug_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEBUG, "%s diskSpaceInBytesForLanguage %@ failed with: %@", &v11, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)selectXPCEndpoint
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [UAFCommonUtilities getenv:@"UAF_XPC_ENDPOINT"];
  if (+[UAFCommonUtilities isInternalInstall])
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (+[UAFConfiguration subscriptionServiceEnabled])
    {
      v5 = @"com.apple.siri.uaf.subscription.service";
      if (+[UAFCommonUtilities isInternalInstall])
      {
        v4 = [UAFCommonUtilities getenv:@"UAF_FAIL_MACH_SANDBOX_CHECK"];

        if (v4)
        {
          v4 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136315394;
            v15 = "+[UAFXPCConnection selectXPCEndpoint]";
            v16 = 2114;
            v17 = v5;
            _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Overriding mach sandbox check for %{public}@ due to environment variable", &v14, 0x16u);
          }

          LOBYTE(v4) = 1;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }

      v8 = [UAFCommonUtilities sandboxCheckMachEndpoint:v5];
      if ((v4 & 1) != 0 || v8)
      {
        v9 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = "+[UAFXPCConnection selectXPCEndpoint]";
          v16 = 2114;
          v17 = v5;
          v18 = 2114;
          v19 = v5;
          _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Current process cannot access %{public}@ XPC endpoint.  Falling back to proxying through old endpoint.  Please update entitlements/sandbox to allow access to %{public}@ XPC endpoint.", &v14, 0x20u);
        }

        v10 = @"com.apple.siri.uaf.service";
        v5 = v10;
      }
    }

    else
    {
      v5 = @"com.apple.siri.uaf.service";
    }
  }

  else
  {
    v5 = v2;
    v6 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "+[UAFXPCConnection selectXPCEndpoint]";
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Overriding XPC endpoint with environment variable: %{public}@", &v14, 0x16u);
    }
  }

  v11 = v5;

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end