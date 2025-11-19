@interface TransparencyXPCConnection
+ (BOOL)retryable:(id)a3 counter:(int)a4;
+ (id)cachedConnection:(id)a3 interface:(Class)a4;
+ (id)idsInstance;
+ (id)mainInstance;
+ (id)swTransparencyConnection;
+ (id)swTransparencyInstance;
+ (id)transparencyAccountsInstance;
+ (id)transparencySupportInstance;
+ (void)invokeAccountsSupportWithBlock:(id)a3 errorHandler:(id)a4;
+ (void)invokeIDSSupportWithBlock:(id)a3 errorHandler:(id)a4;
+ (void)invokeIDSXPCWithBlock:(id)a3 errorHandler:(id)a4;
+ (void)invokeXPCSynchronousCallWithBlock:(id)a3 errorHandler:(id)a4;
+ (void)invokeXPCWithBlock:(id)a3 synchronous:(BOOL)a4 errorHandler:(id)a5;
+ (void)setupTestConnection:(id)a3 forMachName:(id)a4;
- (TransparencyXPCConnection)initWithMachName:(id)a3 interface:(id)a4;
- (id)createConnection;
- (void)dealloc;
- (void)setTestEndpoint:(id)a3;
@end

@implementation TransparencyXPCConnection

+ (BOOL)retryable:(id)a3 counter:(int)a4
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (v5 && a4 <= 4)
  {
    if ([v5 code] == 4097)
    {
      v8 = [v6 domain];
      v7 = [v8 isEqual:*MEMORY[0x1E696A250]];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (TransparencyXPCConnection)initWithMachName:(id)a3 interface:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = TransparencyXPCConnection;
  v9 = [(TransparencyXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_machName, a3);
    objc_storeStrong(&v10->_interface, a4);
    v11 = v10;
  }

  return v10;
}

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(TransparencyXPCConnection *)v2 connection];
  [(TransparencyXPCConnection *)v2 setConnection:0];
  [v3 invalidate];

  objc_sync_exit(v2);
  v4.receiver = v2;
  v4.super_class = TransparencyXPCConnection;
  [(TransparencyXPCConnection *)&v4 dealloc];
}

- (id)createConnection
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(TransparencyXPCConnection *)v2 connection];

  if (v3)
  {
    v4 = [(TransparencyXPCConnection *)v2 connection];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v2->_machName options:4096];
    v5 = [(TransparencyXPCConnection *)v2 interface];
    [v4 setRemoteObjectInterface:v5];

    objc_initWeak(&location, v2);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__TransparencyXPCConnection_createConnection__block_invoke;
    v9[3] = &unk_1E87025A0;
    objc_copyWeak(&v10, &location);
    [v4 setInvalidationHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__TransparencyXPCConnection_createConnection__block_invoke_5;
    v7[3] = &unk_1E87025A0;
    objc_copyWeak(&v8, &location);
    [v4 setInterruptionHandler:v7];
    [v4 resume];
    [(TransparencyXPCConnection *)v2 setConnection:v4];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);

  return v4;
}

void __45__TransparencyXPCConnection_createConnection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
  {
    __45__TransparencyXPCConnection_createConnection__block_invoke_cold_1();
  }

  v2 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    v4 = [WeakRetained machName];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "xpc connection cannot be formed or has been terminated: %@", &v8, 0xCu);
  }

  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = [v5 connection];
    [v5 setConnection:0];
    [v6 invalidate];

    objc_sync_exit(v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __45__TransparencyXPCConnection_createConnection__block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __45__TransparencyXPCConnection_createConnection__block_invoke_5(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
  {
    __45__TransparencyXPCConnection_createConnection__block_invoke_5_cold_1();
  }

  v2 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    v4 = [WeakRetained machName];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "server connection exited or crashed: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __45__TransparencyXPCConnection_createConnection__block_invoke_2_6()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)cachedConnection:(id)a3 interface:(Class)a4
{
  v6 = a3;
  os_unfair_lock_lock(&sharedConectionLock);
  v7 = connectionCache;
  if (!connectionCache)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = connectionCache;
    connectionCache = v8;

    v7 = connectionCache;
  }

  v10 = [v7 objectForKeyedSubscript:v6];
  if (!v10)
  {
    v11 = [a1 alloc];
    v12 = [(objc_class *)a4 interface];
    v10 = [v11 initWithMachName:v6 interface:v12];

    [connectionCache setObject:v10 forKeyedSubscript:v6];
  }

  os_unfair_lock_unlock(&sharedConectionLock);

  return v10;
}

+ (id)mainInstance
{
  v3 = objc_opt_class();

  return [a1 cachedConnection:@"com.apple.transparencyd" interface:v3];
}

+ (id)transparencySupportInstance
{
  v3 = objc_opt_class();

  return [a1 cachedConnection:@"com.apple.transparencyd.ids-support" interface:v3];
}

+ (id)idsInstance
{
  v3 = objc_opt_class();

  return [a1 cachedConnection:@"com.apple.transparencyd.ids" interface:v3];
}

+ (id)transparencyAccountsInstance
{
  v3 = objc_opt_class();

  return [a1 cachedConnection:@"com.apple.transparencyd.accounts-support" interface:v3];
}

+ (id)swTransparencyInstance
{
  v3 = objc_opt_class();

  return [a1 cachedConnection:@"com.apple.swtransparencyd" interface:v3];
}

+ (void)setupTestConnection:(id)a3 forMachName:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = objc_alloc_init(a1);
    [v7 setTestEndpoint:v11];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_lock(&sharedConectionLock);
  v8 = connectionCache;
  if (!connectionCache)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = connectionCache;
    connectionCache = v9;

    v8 = connectionCache;
  }

  [v8 setObject:v7 forKeyedSubscript:v6];
  os_unfair_lock_unlock(&sharedConectionLock);
}

- (void)setTestEndpoint:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v7];
  v6 = +[TransparencyXPCInterface interface];
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];
  [(TransparencyXPCConnection *)v4 setConnection:v5];

  objc_sync_exit(v4);
}

+ (void)invokeXPCWithBlock:(id)a3 synchronous:(BOOL)a4 errorHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[TransparencyXPCConnection mainInstance];
  v10 = [v9 connection];
  if (v10 || ([v9 createConnection], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    if (a4)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke_33;
      v18[3] = &unk_1E87013C8;
      v19 = v8;
      v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v18];
      v13 = v19;
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke;
      v20[3] = &unk_1E87013C8;
      v21 = v8;
      v12 = [v11 remoteObjectProxyWithErrorHandler:v20];
      v13 = v21;
    }

    v14 = 0;
  }

  else
  {
    v14 = [TransparencyError errorWithDomain:@"kTransparencyError" code:-108 description:@"failed to create XPC connection"];
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
    {
      +[TransparencyXPCConnection invokeXPCWithBlock:synchronous:errorHandler:];
    }

    v16 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_1E10DB000, v16, OS_LOG_TYPE_ERROR, "failed to create XPC connection", v17, 2u);
    }

    v11 = 0;
    v12 = 0;
  }

  if (!(v12 | v14))
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
    {
      +[TransparencyXPCConnection invokeXPCWithBlock:synchronous:errorHandler:];
    }

    v15 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_1E10DB000, v15, OS_LOG_TYPE_ERROR, "failed to create XPC protocol", v17, 2u);
    }

    v14 = [TransparencyError errorWithDomain:@"kTransparencyError" code:-1 description:@"unknown XPC interface creation error"];
  }

  v7[2](v7, v12, v14);
}

void __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
  {
    __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "xpc error: %@", &v7, 0xCu);
  }

  v5 = +[TransparencyAnalytics logger];
  [v5 logResultForEvent:@"errorEvent" hardFailure:1 result:v3];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke_33(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
  {
    __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke_33_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "synchronous xpc error: %@", &v7, 0xCu);
  }

  v5 = +[TransparencyAnalytics logger];
  [v5 logResultForEvent:@"errorEvent" hardFailure:1 result:v3];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke_2_34()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke_41()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke_44()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)invokeXPCSynchronousCallWithBlock:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = &v16;
  do
  {
    *(v9 + 24) = 0;
    v11[0] = v8;
    v11[1] = 3221225472;
    v11[2] = __76__TransparencyXPCConnection_invokeXPCSynchronousCallWithBlock_errorHandler___block_invoke;
    v11[3] = &unk_1E87025C8;
    v13 = &v16;
    v14 = v20;
    v15 = a1;
    v10 = v7;
    v12 = v10;
    [TransparencyXPCConnection invokeXPCWithBlock:v6 synchronous:1 errorHandler:v11];

    v9 = v17;
  }

  while ((v17[3] & 1) != 0);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

void __76__TransparencyXPCConnection_invokeXPCSynchronousCallWithBlock_errorHandler___block_invoke(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[7];
  v5 = objc_opt_class();
  ++*(*(a1[6] + 8) + 24);
  *(*(a1[5] + 8) + 24) = [v5 retryable:v3 counter:?];
  if (*(*(a1[5] + 8) + 24))
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
    {
      __76__TransparencyXPCConnection_invokeXPCSynchronousCallWithBlock_errorHandler___block_invoke_cold_1();
    }

    v6 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1E10DB000, v6, OS_LOG_TYPE_ERROR, "retrying invokeXPCSynchronousCallWithBlock: %@", &v8, 0xCu);
    }
  }

  else
  {
    (*(a1[4] + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __76__TransparencyXPCConnection_invokeXPCSynchronousCallWithBlock_errorHandler___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)invokeIDSXPCWithBlock:(id)a3 errorHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[TransparencyXPCConnection idsInstance];
  v8 = [v7 connection];
  if (v8 || ([v7 createConnection], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__TransparencyXPCConnection_invokeIDSXPCWithBlock_errorHandler___block_invoke;
    v15[3] = &unk_1E87013C8;
    v16 = v6;
    v10 = [v9 remoteObjectProxyWithErrorHandler:v15];

    v11 = 0;
  }

  else
  {
    v11 = [TransparencyError errorWithDomain:@"TransparencyErrorXPC" code:-108 description:@"failed to create XPC connection"];
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
    {
      +[TransparencyXPCConnection invokeIDSXPCWithBlock:errorHandler:];
    }

    v13 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_1E10DB000, v13, OS_LOG_TYPE_ERROR, "failed to create XPC connection", v14, 2u);
    }

    v9 = 0;
    v10 = 0;
  }

  if (!(v10 | v11))
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
    {
      +[TransparencyXPCConnection invokeIDSXPCWithBlock:errorHandler:];
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "failed to create XPC protocol", v14, 2u);
    }

    v11 = [TransparencyError errorWithDomain:@"TransparencyErrorXPC" code:-1 description:@"unknown XPC interface creation error"];
  }

  v5[2](v5, v10, v11);
}

void __64__TransparencyXPCConnection_invokeIDSXPCWithBlock_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
  {
    __64__TransparencyXPCConnection_invokeIDSXPCWithBlock_errorHandler___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "xpc ids error: %@", &v7, 0xCu);
  }

  v5 = +[TransparencyAnalytics logger];
  [v5 logResultForEvent:@"errorEvent" hardFailure:1 result:v3];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __64__TransparencyXPCConnection_invokeIDSXPCWithBlock_errorHandler___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __64__TransparencyXPCConnection_invokeIDSXPCWithBlock_errorHandler___block_invoke_54()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __64__TransparencyXPCConnection_invokeIDSXPCWithBlock_errorHandler___block_invoke_57()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)invokeIDSSupportWithBlock:(id)a3 errorHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[TransparencyXPCConnection transparencySupportInstance];
  v8 = [v7 connection];
  if (v8 || ([v7 createConnection], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__TransparencyXPCConnection_invokeIDSSupportWithBlock_errorHandler___block_invoke;
    v15[3] = &unk_1E87013C8;
    v16 = v6;
    v10 = [v9 remoteObjectProxyWithErrorHandler:v15];

    v11 = 0;
  }

  else
  {
    v11 = [TransparencyError errorWithDomain:@"kTransparencyError" code:-108 description:@"failed to create XPC connection"];
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
    {
      +[TransparencyXPCConnection invokeIDSSupportWithBlock:errorHandler:];
    }

    v13 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_1E10DB000, v13, OS_LOG_TYPE_ERROR, "failed to create XPC connection", v14, 2u);
    }

    v9 = 0;
    v10 = 0;
  }

  if (!(v10 | v11))
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
    {
      +[TransparencyXPCConnection invokeIDSSupportWithBlock:errorHandler:];
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "failed to create XPC protocol", v14, 2u);
    }

    v11 = [TransparencyError errorWithDomain:@"kTransparencyError" code:-1 description:@"unknown XPC interface creation error"];
  }

  v5[2](v5, v10, v11);
}

void __68__TransparencyXPCConnection_invokeIDSSupportWithBlock_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
  {
    __68__TransparencyXPCConnection_invokeIDSSupportWithBlock_errorHandler___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "xpc ids error: %@", &v7, 0xCu);
  }

  v5 = +[TransparencyAnalytics logger];
  [v5 logResultForEvent:@"errorEvent" hardFailure:1 result:v3];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __68__TransparencyXPCConnection_invokeIDSSupportWithBlock_errorHandler___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __68__TransparencyXPCConnection_invokeIDSSupportWithBlock_errorHandler___block_invoke_62()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __68__TransparencyXPCConnection_invokeIDSSupportWithBlock_errorHandler___block_invoke_65()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)invokeAccountsSupportWithBlock:(id)a3 errorHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[TransparencyXPCConnection transparencyAccountsInstance];
  v8 = [v7 connection];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [v7 createConnection];
    if (!v9)
    {
      v11 = [TransparencyError errorWithDomain:@"TransparencyErrorXPC" code:-108 description:@"failed to create XPC connection"];
      if (v11)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__TransparencyXPCConnection_invokeAccountsSupportWithBlock_errorHandler___block_invoke;
  v14[3] = &unk_1E87013C8;
  v15 = v6;
  v10 = [v9 remoteObjectProxyWithErrorHandler:v14];

  if (v10)
  {
    v5[2](v5, v10, 0);
    goto LABEL_12;
  }

LABEL_6:
  v11 = [TransparencyError errorWithDomain:@"TransparencyErrorXPC" code:-1 description:@"unknown XPC interface creation error"];
LABEL_7:
  v10 = v11;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
  {
    +[TransparencyXPCConnection invokeAccountsSupportWithBlock:errorHandler:];
  }

  v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "Failed to create XPC protocol: %@", buf, 0xCu);
  }

  (*(v6 + 2))(v6, v10);
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
}

void __73__TransparencyXPCConnection_invokeAccountsSupportWithBlock_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_15 != -1)
  {
    __73__TransparencyXPCConnection_invokeAccountsSupportWithBlock_errorHandler___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_15;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_15, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "xpc accounts error: %@", &v7, 0xCu);
  }

  v5 = +[TransparencyAnalytics logger];
  [v5 logResultForEvent:@"errorEvent" hardFailure:1 result:v3];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __73__TransparencyXPCConnection_invokeAccountsSupportWithBlock_errorHandler___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __73__TransparencyXPCConnection_invokeAccountsSupportWithBlock_errorHandler___block_invoke_70()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_15 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)swTransparencyConnection
{
  v2 = +[TransparencyXPCConnection swTransparencyInstance];
  v3 = [v2 connection];
  if (!v3)
  {
    v3 = [v2 createConnection];
  }

  return v3;
}

@end