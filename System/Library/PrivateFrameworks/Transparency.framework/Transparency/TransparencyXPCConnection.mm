@interface TransparencyXPCConnection
+ (BOOL)retryable:(id)retryable counter:(int)counter;
+ (id)cachedConnection:(id)connection interface:(Class)interface;
+ (id)idsInstance;
+ (id)mainInstance;
+ (id)swTransparencyConnection;
+ (id)swTransparencyInstance;
+ (id)transparencyAccountsInstance;
+ (id)transparencySupportInstance;
+ (void)invokeAccountsSupportWithBlock:(id)block errorHandler:(id)handler;
+ (void)invokeIDSSupportWithBlock:(id)block errorHandler:(id)handler;
+ (void)invokeIDSXPCWithBlock:(id)block errorHandler:(id)handler;
+ (void)invokeXPCSynchronousCallWithBlock:(id)block errorHandler:(id)handler;
+ (void)invokeXPCWithBlock:(id)block synchronous:(BOOL)synchronous errorHandler:(id)handler;
+ (void)setupTestConnection:(id)connection forMachName:(id)name;
- (TransparencyXPCConnection)initWithMachName:(id)name interface:(id)interface;
- (id)createConnection;
- (void)dealloc;
- (void)setTestEndpoint:(id)endpoint;
@end

@implementation TransparencyXPCConnection

+ (BOOL)retryable:(id)retryable counter:(int)counter
{
  retryableCopy = retryable;
  v6 = retryableCopy;
  v7 = 0;
  if (retryableCopy && counter <= 4)
  {
    if ([retryableCopy code] == 4097)
    {
      domain = [v6 domain];
      v7 = [domain isEqual:*MEMORY[0x1E696A250]];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (TransparencyXPCConnection)initWithMachName:(id)name interface:(id)interface
{
  nameCopy = name;
  interfaceCopy = interface;
  v13.receiver = self;
  v13.super_class = TransparencyXPCConnection;
  v9 = [(TransparencyXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_machName, name);
    objc_storeStrong(&v10->_interface, interface);
    v11 = v10;
  }

  return v10;
}

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [(TransparencyXPCConnection *)selfCopy connection];
  [(TransparencyXPCConnection *)selfCopy setConnection:0];
  [connection invalidate];

  objc_sync_exit(selfCopy);
  v4.receiver = selfCopy;
  v4.super_class = TransparencyXPCConnection;
  [(TransparencyXPCConnection *)&v4 dealloc];
}

- (id)createConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [(TransparencyXPCConnection *)selfCopy connection];

  if (connection)
  {
    connection2 = [(TransparencyXPCConnection *)selfCopy connection];
  }

  else
  {
    connection2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:selfCopy->_machName options:4096];
    interface = [(TransparencyXPCConnection *)selfCopy interface];
    [connection2 setRemoteObjectInterface:interface];

    objc_initWeak(&location, selfCopy);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__TransparencyXPCConnection_createConnection__block_invoke;
    v9[3] = &unk_1E87025A0;
    objc_copyWeak(&v10, &location);
    [connection2 setInvalidationHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__TransparencyXPCConnection_createConnection__block_invoke_5;
    v7[3] = &unk_1E87025A0;
    objc_copyWeak(&v8, &location);
    [connection2 setInterruptionHandler:v7];
    [connection2 resume];
    [(TransparencyXPCConnection *)selfCopy setConnection:connection2];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  return connection2;
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

+ (id)cachedConnection:(id)connection interface:(Class)interface
{
  connectionCopy = connection;
  os_unfair_lock_lock(&sharedConectionLock);
  v7 = connectionCache;
  if (!connectionCache)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = connectionCache;
    connectionCache = dictionary;

    v7 = connectionCache;
  }

  v10 = [v7 objectForKeyedSubscript:connectionCopy];
  if (!v10)
  {
    v11 = [self alloc];
    interface = [(objc_class *)interface interface];
    v10 = [v11 initWithMachName:connectionCopy interface:interface];

    [connectionCache setObject:v10 forKeyedSubscript:connectionCopy];
  }

  os_unfair_lock_unlock(&sharedConectionLock);

  return v10;
}

+ (id)mainInstance
{
  v3 = objc_opt_class();

  return [self cachedConnection:@"com.apple.transparencyd" interface:v3];
}

+ (id)transparencySupportInstance
{
  v3 = objc_opt_class();

  return [self cachedConnection:@"com.apple.transparencyd.ids-support" interface:v3];
}

+ (id)idsInstance
{
  v3 = objc_opt_class();

  return [self cachedConnection:@"com.apple.transparencyd.ids" interface:v3];
}

+ (id)transparencyAccountsInstance
{
  v3 = objc_opt_class();

  return [self cachedConnection:@"com.apple.transparencyd.accounts-support" interface:v3];
}

+ (id)swTransparencyInstance
{
  v3 = objc_opt_class();

  return [self cachedConnection:@"com.apple.swtransparencyd" interface:v3];
}

+ (void)setupTestConnection:(id)connection forMachName:(id)name
{
  connectionCopy = connection;
  nameCopy = name;
  if (connectionCopy)
  {
    v7 = objc_alloc_init(self);
    [v7 setTestEndpoint:connectionCopy];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_lock(&sharedConectionLock);
  v8 = connectionCache;
  if (!connectionCache)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = connectionCache;
    connectionCache = dictionary;

    v8 = connectionCache;
  }

  [v8 setObject:v7 forKeyedSubscript:nameCopy];
  os_unfair_lock_unlock(&sharedConectionLock);
}

- (void)setTestEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
  v6 = +[TransparencyXPCInterface interface];
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];
  [(TransparencyXPCConnection *)selfCopy setConnection:v5];

  objc_sync_exit(selfCopy);
}

+ (void)invokeXPCWithBlock:(id)block synchronous:(BOOL)synchronous errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  v9 = +[TransparencyXPCConnection mainInstance];
  connection = [v9 connection];
  if (connection || ([v9 createConnection], (connection = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = connection;
    if (synchronous)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke_33;
      v18[3] = &unk_1E87013C8;
      v19 = handlerCopy;
      v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v18];
      v13 = v19;
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __73__TransparencyXPCConnection_invokeXPCWithBlock_synchronous_errorHandler___block_invoke;
      v20[3] = &unk_1E87013C8;
      v21 = handlerCopy;
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

  blockCopy[2](blockCopy, v12, v14);
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

+ (void)invokeXPCSynchronousCallWithBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
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
    selfCopy = self;
    v10 = handlerCopy;
    v12 = v10;
    [TransparencyXPCConnection invokeXPCWithBlock:blockCopy synchronous:1 errorHandler:v11];

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

+ (void)invokeIDSXPCWithBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  v7 = +[TransparencyXPCConnection idsInstance];
  connection = [v7 connection];
  if (connection || ([v7 createConnection], (connection = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__TransparencyXPCConnection_invokeIDSXPCWithBlock_errorHandler___block_invoke;
    v15[3] = &unk_1E87013C8;
    v16 = handlerCopy;
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

  blockCopy[2](blockCopy, v10, v11);
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

+ (void)invokeIDSSupportWithBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  v7 = +[TransparencyXPCConnection transparencySupportInstance];
  connection = [v7 connection];
  if (connection || ([v7 createConnection], (connection = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__TransparencyXPCConnection_invokeIDSSupportWithBlock_errorHandler___block_invoke;
    v15[3] = &unk_1E87013C8;
    v16 = handlerCopy;
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

  blockCopy[2](blockCopy, v10, v11);
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

+ (void)invokeAccountsSupportWithBlock:(id)block errorHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  handlerCopy = handler;
  v7 = +[TransparencyXPCConnection transparencyAccountsInstance];
  connection = [v7 connection];
  if (connection)
  {
    createConnection = connection;
  }

  else
  {
    createConnection = [v7 createConnection];
    if (!createConnection)
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
  v15 = handlerCopy;
  v10 = [createConnection remoteObjectProxyWithErrorHandler:v14];

  if (v10)
  {
    blockCopy[2](blockCopy, v10, 0);
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

  (*(handlerCopy + 2))(handlerCopy, v10);
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
  connection = [v2 connection];
  if (!connection)
  {
    connection = [v2 createConnection];
  }

  return connection;
}

@end