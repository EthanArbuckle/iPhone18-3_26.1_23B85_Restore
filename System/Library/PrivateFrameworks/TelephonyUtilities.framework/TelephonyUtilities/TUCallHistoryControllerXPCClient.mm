@interface TUCallHistoryControllerXPCClient
+ (NSSet)callHistoryControllerAllowedClasses;
+ (NSXPCInterface)callHistoryControllerClientXPCInterface;
+ (NSXPCInterface)callHistoryControllerServerXPCInterface;
+ (TUCallHistoryControllerXPCServer)asynchronousServer;
+ (TUCallHistoryControllerXPCServer)synchronousServer;
- (NSXPCConnection)xpcConnection;
- (TUCallHistoryControllerXPCClient)init;
- (id)asynchronousServerWithErrorHandler:(id)handler;
- (id)synchronousServerWithErrorHandler:(id)handler;
- (void)_invokeCompletionHandler:(id)handler;
- (void)_requestInitialStateIfNecessary;
- (void)_requestInitialStateWithCompletionHandler:(id)handler;
- (void)allCallHistoryDeleted;
- (void)dealloc;
- (void)init;
- (void)invalidate;
- (void)recentCallsDeleted:(id)deleted;
- (void)registerWithCompletionHandler:(id)handler;
- (void)setXpcConnection:(id)connection;
@end

@implementation TUCallHistoryControllerXPCClient

- (TUCallHistoryControllerXPCClient)init
{
  v14.receiver = self;
  v14.super_class = TUCallHistoryControllerXPCClient;
  v2 = [(TUCallHistoryControllerXPCClient *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Initializing TUCallHistoryControllerXPCClient", buf, 2u);
    }

    v5 = dispatch_queue_create("com.apple.telephonyutilities.callhistorycontrollerxpcclient", 0);
    queue = v3->_queue;
    v3->_queue = v5;

    objc_initWeak(buf, v3);
    v7 = v3->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__TUCallHistoryControllerXPCClient_init__block_invoke;
    handler[3] = &unk_1E7424C60;
    objc_copyWeak(&v12, buf);
    notify_register_dispatch("CSDCallHistoryControllerClientsShouldConnectNotification", &v3->_shouldConnectToken, v7, handler);
    WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_4);
    v9 = TUDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(TUCallHistoryControllerXPCClient *)v3 init];
    }

    [WeakRetained registerClient:v3];
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  return v3;
}

+ (TUCallHistoryControllerXPCServer)asynchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_4);

  return WeakRetained;
}

+ (TUCallHistoryControllerXPCServer)synchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_4);

  return WeakRetained;
}

void __40__TUCallHistoryControllerXPCClient_init__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "CSDCallHistoryControllerClientsShouldConnectNotification";
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection for CallHistoryController", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__TUCallHistoryControllerXPCClient_init__block_invoke_2;
    block[3] = &unk_1E7424950;
    v6 = WeakRetained;
    dispatch_async(v3, block);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_accessorLock);
  notify_cancel(self->_shouldConnectToken);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_4);
  [WeakRetained unregisterClient:self];

  os_unfair_lock_unlock(&self->_accessorLock);
  v4.receiver = self;
  v4.super_class = TUCallHistoryControllerXPCClient;
  [(TUCallHistoryControllerXPCClient *)&v4 dealloc];
}

- (void)registerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(TUCallHistoryControllerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__TUCallHistoryControllerXPCClient_registerWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __66__TUCallHistoryControllerXPCClient_registerWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasRequestedInitialState];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {

    return [v3 _invokeCompletionHandler:v4];
  }

  else
  {

    return [v3 _requestInitialStateWithCompletionHandler:v4];
  }
}

- (void)recentCallsDeleted:(id)deleted
{
  deletedCopy = deleted;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__TUCallHistoryControllerXPCClient_recentCallsDeleted___block_invoke;
  v7[3] = &unk_1E7425828;
  v8 = deletedCopy;
  v5 = deletedCopy;
  v6 = [(TUCallHistoryControllerXPCClient *)self asynchronousServerWithErrorHandler:v7];
  [v6 recentCallsDeleted:v5];
}

void __55__TUCallHistoryControllerXPCClient_recentCallsDeleted___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error notifying CSD of deleted recent calls: %@ error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)allCallHistoryDeleted
{
  v2 = [(TUCallHistoryControllerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_55];
  [v2 allCallHistoryDeleted];
}

void __57__TUCallHistoryControllerXPCClient_allCallHistoryDeleted__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error notifying CSD of all call history deleted error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  queue = [(TUCallHistoryControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__TUCallHistoryControllerXPCClient_invalidate__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_requestInitialStateIfNecessary
{
  queue = [(TUCallHistoryControllerXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(TUCallHistoryControllerXPCClient *)self hasRequestedInitialState])
  {

    [(TUCallHistoryControllerXPCClient *)self _requestInitialStateWithCompletionHandler:0];
  }
}

- (void)_requestInitialStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(TUCallHistoryControllerXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(TUCallHistoryControllerXPCClient *)self setHasRequestedInitialState:1];
  [(TUCallHistoryControllerXPCClient *)self _invokeCompletionHandler:handlerCopy];
}

- (void)_invokeCompletionHandler:(id)handler
{
  if (handler)
  {
    v4 = dispatch_get_global_queue(21, 0);
    dispatch_async(v4, handler);
  }
}

- (NSXPCConnection)xpcConnection
{
  os_unfair_lock_lock(&self->_accessorLock);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Starting XPC Connection.", buf, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.callhistorycontroller" options:0];
    v6 = self->_xpcConnection;
    self->_xpcConnection = v5;

    callHistoryControllerServerXPCInterface = [objc_opt_class() callHistoryControllerServerXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:callHistoryControllerServerXPCInterface];

    callHistoryControllerClientXPCInterface = [objc_opt_class() callHistoryControllerClientXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:callHistoryControllerClientXPCInterface];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__TUCallHistoryControllerXPCClient_xpcConnection__block_invoke;
    v16[3] = &unk_1E7424998;
    objc_copyWeak(&v17, buf);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v16];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __49__TUCallHistoryControllerXPCClient_xpcConnection__block_invoke_9;
    v14 = &unk_1E7424998;
    objc_copyWeak(&v15, buf);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&v11];
    [(NSXPCConnection *)self->_xpcConnection resume:v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
    xpcConnection = self->_xpcConnection;
  }

  v9 = xpcConnection;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v9;
}

void __49__TUCallHistoryControllerXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__TUCallHistoryControllerXPCClient_xpcConnection__block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __49__TUCallHistoryControllerXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
}

void __49__TUCallHistoryControllerXPCClient_xpcConnection__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__TUCallHistoryControllerXPCClient_xpcConnection__block_invoke_2_10;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __49__TUCallHistoryControllerXPCClient_xpcConnection__block_invoke_2_10(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted.", v4, 2u);
  }

  return [*(*(a1 + 32) + 24) invalidate];
}

- (void)setXpcConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_xpcConnection != connectionCopy)
  {
    objc_storeStrong(&self->_xpcConnection, connection);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)asynchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_4);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUCallHistoryControllerXPCClient *)self xpcConnection];
    v7 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

- (id)synchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_4);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUCallHistoryControllerXPCClient *)self xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

+ (NSSet)callHistoryControllerAllowedClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v10 = getCHRecentCallClass_softClass_0;
  v18 = getCHRecentCallClass_softClass_0;
  if (!getCHRecentCallClass_softClass_0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getCHRecentCallClass_block_invoke_0;
    v14[3] = &unk_1E7424CD8;
    v14[4] = &v15;
    __getCHRecentCallClass_block_invoke_0(v14);
    v10 = v16[3];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);
  v12 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];

  return v12;
}

+ (NSXPCInterface)callHistoryControllerClientXPCInterface
{
  if (callHistoryControllerClientXPCInterface_onceToken != -1)
  {
    +[TUCallHistoryControllerXPCClient callHistoryControllerClientXPCInterface];
  }

  v3 = callHistoryControllerClientXPCInterface_callHistoryControllerClientXPCInterface;

  return v3;
}

uint64_t __75__TUCallHistoryControllerXPCClient_callHistoryControllerClientXPCInterface__block_invoke()
{
  callHistoryControllerClientXPCInterface_callHistoryControllerClientXPCInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09F2D78];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSXPCInterface)callHistoryControllerServerXPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__TUCallHistoryControllerXPCClient_callHistoryControllerServerXPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (callHistoryControllerServerXPCInterface_onceToken != -1)
  {
    dispatch_once(&callHistoryControllerServerXPCInterface_onceToken, block);
  }

  v2 = callHistoryControllerServerXPCInterface_callHistoryControllerXPCInterface;

  return v2;
}

void __75__TUCallHistoryControllerXPCClient_callHistoryControllerServerXPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A0A1C0];
  v3 = callHistoryControllerServerXPCInterface_callHistoryControllerXPCInterface;
  callHistoryControllerServerXPCInterface_callHistoryControllerXPCInterface = v2;

  v4 = callHistoryControllerServerXPCInterface_callHistoryControllerXPCInterface;
  v5 = [*(a1 + 32) callHistoryControllerAllowedClasses];
  [v4 setClasses:v5 forSelector:sel_recentCallsDeleted_ argumentIndex:0 ofReply:0];
}

- (void)init
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  selfCopy = self;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_1956FD000, log, OS_LOG_TYPE_DEBUG, "Registering TUCallHistoryControllerXPCClient %p with async server %p", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end