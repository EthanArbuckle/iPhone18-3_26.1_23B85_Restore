@interface SCLInterruptBehaviorResolution
+ (id)resolutionForClientIdentifier:(id)a3;
- (SCLInterruptBehaviorResolution)initWithClientIdentifier:(id)a3;
- (id)resolveBehaviorForEvent:(id)a3 error:(id *)a4;
- (id)serverConnection;
- (void)setServerConnection:(id)a3;
@end

@implementation SCLInterruptBehaviorResolution

+ (id)resolutionForClientIdentifier:(id)a3
{
  v4 = a3;
  if (resolutionForClientIdentifier__onceToken != -1)
  {
    +[SCLInterruptBehaviorResolution resolutionForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = resolutionForClientIdentifier__lockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SCLInterruptBehaviorResolution_resolutionForClientIdentifier___block_invoke_2;
  block[3] = &unk_279B6C648;
  v10 = v4;
  v11 = &v13;
  v12 = a1;
  v6 = v4;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __64__SCLInterruptBehaviorResolution_resolutionForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.schooltime.eventBehaviorResolution", v0);
  v2 = resolutionForClientIdentifier__lockQueue;
  resolutionForClientIdentifier__lockQueue = v1;

  resolutionForClientIdentifier__resolutionByClientIdentifier = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];

  return MEMORY[0x2821F96F8]();
}

void __64__SCLInterruptBehaviorResolution_resolutionForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [resolutionForClientIdentifier__resolutionByClientIdentifier objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = resolutionForClientIdentifier__resolutionByClientIdentifier;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (SCLInterruptBehaviorResolution)initWithClientIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SCLInterruptBehaviorResolution;
  v6 = [(SCLInterruptBehaviorResolution *)&v12 init];
  if (v6)
  {
    v7 = scl_interrupt_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_INFO, "Creating SCLInterruptBehaviorResolution for client %@", buf, 0xCu);
    }

    objc_storeStrong(&v6->_clientIdentifier, a3);
    v8 = dispatch_queue_create("com.apple.schooltime.behaviorResolutionConnection", 0);
    connectionQueue = v6->_connectionQueue;
    v6->_connectionQueue = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)resolveBehaviorForEvent:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = scl_interrupt_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412546;
    *&buf[4] = clientIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_INFO, "Resolving behavior for client %@ event %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v9 = [(SCLInterruptBehaviorResolution *)self serverConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__SCLInterruptBehaviorResolution_resolveBehaviorForEvent_error___block_invoke;
  v17[3] = &unk_279B6C420;
  v17[4] = buf;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v11 = self->_clientIdentifier;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__SCLInterruptBehaviorResolution_resolveBehaviorForEvent_error___block_invoke_2;
  v16[3] = &unk_279B6C670;
  v16[4] = &v18;
  v16[5] = buf;
  [v10 resolveBehaviorForEvent:v6 clientIdentifier:v11 completion:v16];

  if (a4)
  {
    *a4 = *(*&buf[8] + 40);
  }

  if (*(*&buf[8] + 40))
  {
    v12 = scl_interrupt_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SCLInterruptBehaviorResolution *)v6 resolveBehaviorForEvent:v12 error:?];
    }
  }

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __64__SCLInterruptBehaviorResolution_resolveBehaviorForEvent_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v7)
  {
    v8 = scl_interrupt_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(*(a1 + 32) + 8) + 40);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_264829000, v8, OS_LOG_TYPE_INFO, "Resolved behavior %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)serverConnection
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SCLInterruptBehaviorResolution_serverConnection__block_invoke;
  block[3] = &unk_279B6C568;
  block[4] = self;
  dispatch_sync(connectionQueue, block);
  return self->_connection;
}

void __50__SCLInterruptBehaviorResolution_serverConnection__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:0x2876227A8 options:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    v5 = *(*(a1 + 32) + 16);
    v6 = SCLInterruptBehaviorResolutionXPCServerInterface();
    [v5 setRemoteObjectInterface:v6];

    objc_initWeak(&location, *(a1 + 32));
    v7 = *(*(a1 + 32) + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__SCLInterruptBehaviorResolution_serverConnection__block_invoke_2;
    v11[3] = &unk_279B6C3A8;
    objc_copyWeak(&v12, &location);
    [v7 setInterruptionHandler:v11];
    v8 = *(*(a1 + 32) + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__SCLInterruptBehaviorResolution_serverConnection__block_invoke_7;
    v9[3] = &unk_279B6C3A8;
    objc_copyWeak(&v10, &location);
    [v8 setInvalidationHandler:v9];
    [*(*(a1 + 32) + 16) resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __50__SCLInterruptBehaviorResolution_serverConnection__block_invoke_2(uint64_t a1)
{
  v2 = scl_interrupt_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264829000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServerConnection:0];
}

void __50__SCLInterruptBehaviorResolution_serverConnection__block_invoke_7(uint64_t a1)
{
  v2 = scl_interrupt_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264829000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServerConnection:0];
}

- (void)setServerConnection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SCLInterruptBehaviorResolution_setServerConnection___block_invoke;
  block[3] = &unk_279B6C0D8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__SCLInterruptBehaviorResolution_setServerConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeStrong(WeakRetained + 2, *(a1 + 32));
}

- (void)resolveBehaviorForEvent:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_264829000, log, OS_LOG_TYPE_ERROR, "Could not resolve behavior for event %@ (error:%@)", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end