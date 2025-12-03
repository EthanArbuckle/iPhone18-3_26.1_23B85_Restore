@interface TUCallCapabilitiesXPCClient
+ (NSXPCInterface)callCapabilitiesClientXPCInterface;
+ (NSXPCInterface)callCapabilitiesServerXPCInterface;
+ (TUCallCapabilitiesXPCServer)asynchronousServer;
+ (TUCallCapabilitiesXPCServer)synchronousServer;
- (NSXPCConnection)xpcConnection;
- (TUCallCapabilitiesState)state;
- (TUCallCapabilitiesXPCClient)init;
- (id)asynchronousServer;
- (id)asynchronousServerWithErrorHandler:(id)handler;
- (id)synchronousServerWithErrorHandler:(id)handler;
- (void)_retrieveState;
- (void)_updateState:(id)state;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)cancelPinRequestFromPrimaryDevice;
- (void)capabilityStateUpdated:(id)updated;
- (void)dealloc;
- (void)endEmergencyCallbackMode;
- (void)handleServerDisconnect;
- (void)invalidate;
- (void)invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:(id)d;
- (void)invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:(id)d;
- (void)performBlockOnQueue:(id)queue;
- (void)performDelegateCallbackBlock:(id)block;
- (void)removeDelegate:(id)delegate;
- (void)requestPinFromPrimaryDevice;
- (void)setRelayCallingEnabled:(BOOL)enabled;
- (void)setRelayCallingEnabled:(BOOL)enabled forDeviceWithID:(id)d;
- (void)setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d forSenderIdentityWithUUID:(id)iD;
- (void)setThumperCallingAllowedOnDefaultPairedDevice:(BOOL)device forSenderIdentityWithUUID:(id)d;
- (void)setThumperCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)setVoLTECallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)setWiFiCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
- (void)setWiFiCallingRoamingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d;
@end

@implementation TUCallCapabilitiesXPCClient

- (TUCallCapabilitiesXPCClient)init
{
  v11.receiver = self;
  v11.super_class = TUCallCapabilitiesXPCClient;
  v2 = [(TUCallCapabilitiesXPCClient *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyutilities.callcapabilitiesxpcclient", 0);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    dispatch_queue_set_specific(*(v2 + 3), [v2 queueContext], objc_msgSend(v2, "queueContext"), 0);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v6 = *(v2 + 5);
    *(v2 + 5) = weakToStrongObjectsMapTable;

    v7 = *(v2 + 3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__TUCallCapabilitiesXPCClient_init__block_invoke;
    block[3] = &unk_1E7424950;
    v10 = v2;
    dispatch_async(v7, block);
  }

  return v2;
}

void __35__TUCallCapabilitiesXPCClient_init__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = [v2 queue];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __35__TUCallCapabilitiesXPCClient_init__block_invoke_2;
  v8 = &unk_1E7424C60;
  objc_copyWeak(&v9, &location);
  notify_register_dispatch("com.apple.telephonyutilities.callservicesdaemon.connectionrequest", v2 + 2, v3, &v5);

  [*(a1 + 32) _retrieveState];
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_1);
  [WeakRetained registerClient:*(a1 + 32)];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_retrieveState
{
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Retrieving initial call capabilities state.", buf, 2u);
  }

  v5 = [(TUCallCapabilitiesXPCClient *)self synchronousServerWithErrorHandler:&__block_literal_global_21];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__TUCallCapabilitiesXPCClient__retrieveState__block_invoke_12;
  v6[3] = &unk_1E7425CA8;
  v6[4] = self;
  [v5 callCapabilitiesState:v6];
}

- (NSXPCConnection)xpcConnection
{
  v21 = *MEMORY[0x1E69E9840];
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = @"com.apple.telephonyutilities.callservicesdaemon.callcapabilities";
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Setting up XPC connection for %@", buf, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.callcapabilities" options:0];
    v7 = self->_xpcConnection;
    self->_xpcConnection = v6;

    callCapabilitiesServerXPCInterface = [objc_opt_class() callCapabilitiesServerXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:callCapabilitiesServerXPCInterface];

    callCapabilitiesClientXPCInterface = [objc_opt_class() callCapabilitiesClientXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:callCapabilitiesClientXPCInterface];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__TUCallCapabilitiesXPCClient_xpcConnection__block_invoke;
    v17[3] = &unk_1E7424998;
    objc_copyWeak(&v18, buf);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v17];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __44__TUCallCapabilitiesXPCClient_xpcConnection__block_invoke_8;
    v15 = &unk_1E7424998;
    objc_copyWeak(&v16, buf);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&v12];
    [(NSXPCConnection *)self->_xpcConnection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
    xpcConnection = self->_xpcConnection;
  }

  v10 = *MEMORY[0x1E69E9840];

  return xpcConnection;
}

+ (NSXPCInterface)callCapabilitiesServerXPCInterface
{
  if (callCapabilitiesServerXPCInterface_onceToken != -1)
  {
    +[TUCallCapabilitiesXPCClient callCapabilitiesServerXPCInterface];
  }

  v3 = callCapabilitiesServerXPCInterface_callCapabilitiesServerXPCInterface;

  return v3;
}

uint64_t __65__TUCallCapabilitiesXPCClient_callCapabilitiesServerXPCInterface__block_invoke()
{
  callCapabilitiesServerXPCInterface_callCapabilitiesServerXPCInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A09FE0];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSXPCInterface)callCapabilitiesClientXPCInterface
{
  if (callCapabilitiesClientXPCInterface_onceToken != -1)
  {
    +[TUCallCapabilitiesXPCClient callCapabilitiesClientXPCInterface];
  }

  v3 = callCapabilitiesClientXPCInterface_callCapabilitiesClientXPCInterface;

  return v3;
}

uint64_t __65__TUCallCapabilitiesXPCClient_callCapabilitiesClientXPCInterface__block_invoke()
{
  callCapabilitiesClientXPCInterface_callCapabilitiesClientXPCInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09D6490];

  return MEMORY[0x1EEE66BB8]();
}

void __45__TUCallCapabilitiesXPCClient__retrieveState__block_invoke_12(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Received initial call capabilities state: %p", &v7, 0xCu);
  }

  [*(a1 + 32) _updateState:v3];
  v6 = *MEMORY[0x1E69E9840];
}

- (TUCallCapabilitiesState)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__TUCallCapabilitiesXPCClient_state__block_invoke;
  v6[3] = &unk_1E7425C58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__TUCallCapabilitiesXPCClient_state__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    [v2 _retrieveState];
    v3 = *(*(a1 + 32) + 16);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

+ (TUCallCapabilitiesXPCServer)asynchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_1);

  return WeakRetained;
}

+ (TUCallCapabilitiesXPCServer)synchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_1);

  return WeakRetained;
}

void __35__TUCallCapabilitiesXPCClient_init__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "com.apple.telephonyutilities.callservicesdaemon.connectionrequest";
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _retrieveState];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  notify_cancel(self->_token);
  dispatch_queue_set_specific(self->_queue, [(TUCallCapabilitiesXPCClient *)self queueContext], 0, 0);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = TUCallCapabilitiesXPCClient;
  [(TUCallCapabilitiesXPCClient *)&v3 dealloc];
}

- (void)handleServerDisconnect
{
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Server did disconnect", v6, 2u);
  }

  state = self->_state;
  self->_state = 0;
}

void __44__TUCallCapabilitiesXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__TUCallCapabilitiesXPCClient_xpcConnection__block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __44__TUCallCapabilitiesXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated.", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;

  return [*(a1 + 32) handleServerDisconnect];
}

void __44__TUCallCapabilitiesXPCClient_xpcConnection__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__TUCallCapabilitiesXPCClient_xpcConnection__block_invoke_2_9;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __44__TUCallCapabilitiesXPCClient_xpcConnection__block_invoke_2_9(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted.", v4, 2u);
  }

  return [*(a1 + 32) handleServerDisconnect];
}

- (id)asynchronousServer
{
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_1);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    remoteObjectProxy = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUCallCapabilitiesXPCClient *)self xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
  }

  return remoteObjectProxy;
}

- (id)asynchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_1);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUCallCapabilitiesXPCClient *)self xpcConnection];
    v8 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v8;
}

- (id)synchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_1);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUCallCapabilitiesXPCClient *)self xpcConnection];
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v8;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__TUCallCapabilitiesXPCClient_addDelegate_queue___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

void __49__TUCallCapabilitiesXPCClient_addDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__TUCallCapabilitiesXPCClient_removeDelegate___block_invoke;
  v6[3] = &unk_1E7424898;
  v6[4] = self;
  v7 = delegateCopy;
  v5 = delegateCopy;
  [(TUCallCapabilitiesXPCClient *)self performBlockOnQueue:v6];
}

void __46__TUCallCapabilitiesXPCClient_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)performBlockOnQueue:(id)queue
{
  block = queue;
  specific = dispatch_get_specific([(TUCallCapabilitiesXPCClient *)self queueContext]);
  if (specific == [(TUCallCapabilitiesXPCClient *)self queueContext])
  {
    block[2]();
  }

  else
  {
    queue = [(TUCallCapabilitiesXPCClient *)self queue];
    dispatch_sync(queue, block);
  }
}

- (void)performDelegateCallbackBlock:(id)block
{
  blockCopy = block;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__TUCallCapabilitiesXPCClient_performDelegateCallbackBlock___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

void __60__TUCallCapabilitiesXPCClient_performDelegateCallbackBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__TUCallCapabilitiesXPCClient_performDelegateCallbackBlock___block_invoke_2;
        block[3] = &unk_1E7425540;
        v9 = *(a1 + 40);
        block[4] = v6;
        v13 = v9;
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setRelayCallingEnabled:(BOOL)enabled
{
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__TUCallCapabilitiesXPCClient_setRelayCallingEnabled___block_invoke;
  v6[3] = &unk_1E7425000;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v6);
}

void __54__TUCallCapabilitiesXPCClient_setRelayCallingEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 setRelayCallingEnabled:*(a1 + 40)];
}

- (void)setRelayCallingEnabled:(BOOL)enabled forDeviceWithID:(id)d
{
  dCopy = d;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__TUCallCapabilitiesXPCClient_setRelayCallingEnabled_forDeviceWithID___block_invoke;
  block[3] = &unk_1E7425B78;
  enabledCopy = enabled;
  block[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

void __70__TUCallCapabilitiesXPCClient_setRelayCallingEnabled_forDeviceWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 setRelayCallingEnabled:*(a1 + 48) forDeviceWithID:*(a1 + 40)];
}

- (void)setWiFiCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__TUCallCapabilitiesXPCClient_setWiFiCallingEnabled_forSenderIdentityWithUUID___block_invoke;
  block[3] = &unk_1E7425B78;
  enabledCopy = enabled;
  block[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

void __79__TUCallCapabilitiesXPCClient_setWiFiCallingEnabled_forSenderIdentityWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 setWiFiCallingEnabled:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 40)];
}

- (void)setWiFiCallingRoamingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__TUCallCapabilitiesXPCClient_setWiFiCallingRoamingEnabled_forSenderIdentityWithUUID___block_invoke;
  block[3] = &unk_1E7425B78;
  enabledCopy = enabled;
  block[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

void __86__TUCallCapabilitiesXPCClient_setWiFiCallingRoamingEnabled_forSenderIdentityWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 setWiFiCallingRoamingEnabled:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 40)];
}

- (void)setVoLTECallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__TUCallCapabilitiesXPCClient_setVoLTECallingEnabled_forSenderIdentityWithUUID___block_invoke;
  block[3] = &unk_1E7425B78;
  enabledCopy = enabled;
  block[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

void __80__TUCallCapabilitiesXPCClient_setVoLTECallingEnabled_forSenderIdentityWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 setVoLTECallingEnabled:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 40)];
}

- (void)setThumperCallingEnabled:(BOOL)enabled forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__TUCallCapabilitiesXPCClient_setThumperCallingEnabled_forSenderIdentityWithUUID___block_invoke;
  block[3] = &unk_1E7425B78;
  enabledCopy = enabled;
  block[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

void __82__TUCallCapabilitiesXPCClient_setThumperCallingEnabled_forSenderIdentityWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 setThumperCallingEnabled:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 40)];
}

- (void)setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d forSenderIdentityWithUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__TUCallCapabilitiesXPCClient_setThumperCallingAllowed_onSecondaryDeviceWithID_forSenderIdentityWithUUID___block_invoke;
  v13[3] = &unk_1E7425C80;
  allowedCopy = allowed;
  v13[4] = self;
  v14 = dCopy;
  v15 = iDCopy;
  v11 = iDCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

void __106__TUCallCapabilitiesXPCClient_setThumperCallingAllowed_onSecondaryDeviceWithID_forSenderIdentityWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 setThumperCallingAllowed:*(a1 + 56) onSecondaryDeviceWithID:*(a1 + 40) forSenderIdentityWithUUID:*(a1 + 48)];
}

- (void)setThumperCallingAllowedOnDefaultPairedDevice:(BOOL)device forSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__TUCallCapabilitiesXPCClient_setThumperCallingAllowedOnDefaultPairedDevice_forSenderIdentityWithUUID___block_invoke;
  block[3] = &unk_1E7425B78;
  deviceCopy = device;
  block[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(queue, block);
}

void __103__TUCallCapabilitiesXPCClient_setThumperCallingAllowedOnDefaultPairedDevice_forSenderIdentityWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 setThumperCallingAllowedOnDefaultPairedDevice:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 40)];
}

- (void)endEmergencyCallbackMode
{
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__TUCallCapabilitiesXPCClient_endEmergencyCallbackMode__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

void __55__TUCallCapabilitiesXPCClient_endEmergencyCallbackMode__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) asynchronousServer];
  [v1 endEmergencyCallbackMode];
}

- (void)invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__TUCallCapabilitiesXPCClient_invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID___block_invoke;
  block[3] = &unk_1E7424898;
  block[4] = self;
  v6 = dCopy;
  v11 = v6;
  dispatch_async(queue, block);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __103__TUCallCapabilitiesXPCClient_invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID___block_invoke_2;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [TUCallCapabilities _sendNotificationsAndCallbacksAfterRunningBlock:v8];
}

void __103__TUCallCapabilitiesXPCClient_invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:*(a1 + 40)];
}

void __103__TUCallCapabilitiesXPCClient_invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __103__TUCallCapabilitiesXPCClient_invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID___block_invoke_3;
  v4[3] = &unk_1E7424898;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __103__TUCallCapabilitiesXPCClient_invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID___block_invoke_3(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 16) senderIdentityCapabilitiesStateByUUID];
  v2 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 wiFiCallingCapabilitiesState];
  [v3 invalidateProvisioningURL];
}

- (void)invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__TUCallCapabilitiesXPCClient_invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID___block_invoke;
  block[3] = &unk_1E7424898;
  block[4] = self;
  v6 = dCopy;
  v11 = v6;
  dispatch_async(queue, block);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__TUCallCapabilitiesXPCClient_invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID___block_invoke_2;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [TUCallCapabilities _sendNotificationsAndCallbacksAfterRunningBlock:v8];
}

void __106__TUCallCapabilitiesXPCClient_invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asynchronousServer];
  [v2 invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:*(a1 + 40)];
}

void __106__TUCallCapabilitiesXPCClient_invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__TUCallCapabilitiesXPCClient_invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID___block_invoke_3;
  v4[3] = &unk_1E7424898;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __106__TUCallCapabilitiesXPCClient_invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID___block_invoke_3(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 16) senderIdentityCapabilitiesStateByUUID];
  v2 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 thumperCallingCapabilitiesState];
  [v3 invalidateProvisioningURL];
}

- (void)requestPinFromPrimaryDevice
{
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__TUCallCapabilitiesXPCClient_requestPinFromPrimaryDevice__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

void __58__TUCallCapabilitiesXPCClient_requestPinFromPrimaryDevice__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) asynchronousServer];
  [v1 requestPinFromPrimaryDevice];
}

- (void)cancelPinRequestFromPrimaryDevice
{
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__TUCallCapabilitiesXPCClient_cancelPinRequestFromPrimaryDevice__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

void __64__TUCallCapabilitiesXPCClient_cancelPinRequestFromPrimaryDevice__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) asynchronousServer];
  [v1 cancelPinRequestFromPrimaryDevice];
}

- (void)invalidate
{
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__TUCallCapabilitiesXPCClient_invalidate__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__TUCallCapabilitiesXPCClient_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) invalidate];
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_1);
  [WeakRetained unregisterClient:*(a1 + 32)];
}

- (void)capabilityStateUpdated:(id)updated
{
  updatedCopy = updated;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__TUCallCapabilitiesXPCClient_capabilityStateUpdated___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(queue, v7);
}

uint64_t __54__TUCallCapabilitiesXPCClient_capabilityStateUpdated___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCClient - capabilityStateUpdated: %@", &v6, 0xCu);
  }

  result = [*(a1 + 40) _updateState:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __45__TUCallCapabilitiesXPCClient__retrieveState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__TUCallCapabilitiesXPCClient__retrieveState__block_invoke_cold_1(v2, v3);
  }
}

- (void)_updateState:(id)state
{
  v13 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  queue = [(TUCallCapabilitiesXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_state)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__TUCallCapabilitiesXPCClient__updateState___block_invoke;
    v9[3] = &unk_1E7424898;
    v9[4] = self;
    v10 = stateCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  else
  {
    objc_storeStrong(&self->_state, state);
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = stateCopy;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Updated to newState: %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __44__TUCallCapabilitiesXPCClient__updateState___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__TUCallCapabilitiesXPCClient__updateState___block_invoke_2;
  v2[3] = &unk_1E7424898;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [TUCallCapabilities _sendNotificationsAndCallbacksAfterRunningBlock:v2];
}

void __44__TUCallCapabilitiesXPCClient__updateState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__TUCallCapabilitiesXPCClient__updateState___block_invoke_3;
  v4[3] = &unk_1E7424898;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __45__TUCallCapabilitiesXPCClient__retrieveState__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Error grabbing remote object proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end