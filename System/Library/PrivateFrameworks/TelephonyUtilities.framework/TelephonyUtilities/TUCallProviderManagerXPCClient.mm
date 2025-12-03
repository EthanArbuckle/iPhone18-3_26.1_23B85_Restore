@interface TUCallProviderManagerXPCClient
+ (NSXPCInterface)callProviderManagerClientXPCInterface;
+ (NSXPCInterface)callProviderManagerServerXPCInterface;
+ (TUCallProviderManagerXPCServer)asynchronousServer;
+ (TUCallProviderManagerXPCServer)synchronousServer;
+ (id)callProviderManagerAllowedClasses;
- (BOOL)currentProcessCanAccessInitialState;
- (NSArray)sortedProviders;
- (NSDictionary)localProvidersByIdentifier;
- (NSDictionary)pairedHostDeviceProvidersByIdentifier;
- (NSDictionary)providersByIdentifier;
- (NSXPCConnection)xpcConnection;
- (TUCallProvider)defaultAppProvider;
- (TUCallProviderManagerDataSourceDelegate)delegate;
- (TUCallProviderManagerXPCClient)init;
- (id)server;
- (id)serverWithErrorHandler:(id)handler;
- (id)synchronousServerWithErrorHandler:(id)handler;
- (void)_requestInitialState;
- (void)_updateProvidersByIdentifier:(id)identifier localProvidersByIdentifier:(id)byIdentifier pairedHostDeviceProvidersByIdentifier:(id)providersByIdentifier;
- (void)blockUntilInitialStateReceived;
- (void)dealloc;
- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier;
- (void)donateUserIntentForProviderWithIdentifier:(id)identifier;
- (void)invalidate;
- (void)launchAppForDialRequest:(id)request completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)updateProvidersByIdentifier:(id)identifier localProvidersByIdentifier:(id)byIdentifier pairedHostDeviceProvidersByIdentifier:(id)providersByIdentifier;
@end

@implementation TUCallProviderManagerXPCClient

- (TUCallProviderManagerXPCClient)init
{
  v9.receiver = self;
  v9.super_class = TUCallProviderManagerXPCClient;
  v2 = [(TUCallProviderManagerXPCClient *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyutilities.callprovidermanagerxpcclient", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__TUCallProviderManagerXPCClient_init__block_invoke;
    block[3] = &unk_1E7424950;
    v8 = v2;
    dispatch_async(v5, block);
  }

  return v2;
}

void __38__TUCallProviderManagerXPCClient_init__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = +[TUCallProviderManager defaultProviders];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [v8 identifier];
        [v3 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];
  v12 = a1 + 32;
  v11 = *(a1 + 32);
  v13 = *(v11 + 40);
  *(v11 + 40) = v10;

  v14 = [v3 copy];
  v15 = *(*(a1 + 32) + 56);
  *(*v12 + 56) = v14;

  v16 = [v3 copy];
  v17 = *(*(a1 + 32) + 48);
  *(*v12 + 48) = v16;

  objc_initWeak(&location, *(a1 + 32));
  v18 = *(a1 + 32);
  v19 = [v18 queue];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __38__TUCallProviderManagerXPCClient_init__block_invoke_2;
  v25 = &unk_1E7424C60;
  objc_copyWeak(&v26, &location);
  notify_register_dispatch("com.apple.telephonyutilities.callservicesdaemon.connectionrequest", v18 + 3, v19, &v22);

  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_2);
  [WeakRetained registerClient:{*(a1 + 32), v22, v23, v24, v25}];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)currentProcessCanAccessInitialState
{
  if (currentProcessCanAccessInitialState_onceToken != -1)
  {
    [TUCallProviderManagerXPCClient currentProcessCanAccessInitialState];
  }

  if (currentProcessCanAccessInitialState_isCurrentProcessEntitled)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_2);
  v2 = WeakRetained != 0;

  return v2;
}

uint64_t __69__TUCallProviderManagerXPCClient_currentProcessCanAccessInitialState__block_invoke()
{
  result = TUCurrentProcessHasEntitlementCapability(@"access-call-providers");
  currentProcessCanAccessInitialState_isCurrentProcessEntitled = result;
  return result;
}

- (void)_requestInitialState
{
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(TUCallProviderManagerXPCClient *)self setRequestedInitialState:1];
  v4 = [(TUCallProviderManagerXPCClient *)self synchronousServerWithErrorHandler:&__block_literal_global_28_2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__TUCallProviderManagerXPCClient__requestInitialState__block_invoke_29;
  v5[3] = &unk_1E7425FB8;
  v5[4] = self;
  [v4 providersByIdentifier:v5];
}

- (NSXPCConnection)xpcConnection
{
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.callprovidermanager" options:0];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    callProviderManagerServerXPCInterface = [objc_opt_class() callProviderManagerServerXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:callProviderManagerServerXPCInterface];

    callProviderManagerClientXPCInterface = [objc_opt_class() callProviderManagerClientXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:callProviderManagerClientXPCInterface];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__TUCallProviderManagerXPCClient_xpcConnection__block_invoke;
    v11[3] = &unk_1E7424998;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__TUCallProviderManagerXPCClient_xpcConnection__block_invoke_23;
    v9[3] = &unk_1E7424998;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v9];
    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __71__TUCallProviderManagerXPCClient_callProviderManagerServerXPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A0A040];
  v3 = callProviderManagerServerXPCInterface_callProviderManagerServerXPCInterface;
  callProviderManagerServerXPCInterface_callProviderManagerServerXPCInterface = v2;

  v4 = callProviderManagerServerXPCInterface_callProviderManagerServerXPCInterface;
  v5 = [*(a1 + 32) callProviderManagerAllowedClasses];
  [v4 setClasses:v5 forSelector:sel_providersByIdentifier_ argumentIndex:0 ofReply:1];

  v6 = callProviderManagerServerXPCInterface_callProviderManagerServerXPCInterface;
  v7 = [*(a1 + 32) callProviderManagerAllowedClasses];
  [v6 setClasses:v7 forSelector:sel_providersByIdentifier_ argumentIndex:1 ofReply:1];

  v8 = callProviderManagerServerXPCInterface_callProviderManagerServerXPCInterface;
  v9 = [*(a1 + 32) callProviderManagerAllowedClasses];
  [v8 setClasses:v9 forSelector:sel_providersByIdentifier_ argumentIndex:2 ofReply:1];

  v10 = callProviderManagerServerXPCInterface_callProviderManagerServerXPCInterface;
  v11 = [*(a1 + 32) callProviderManagerAllowedClasses];
  [v10 setClasses:v11 forSelector:sel_sortedProviders_ argumentIndex:0 ofReply:1];

  v12 = callProviderManagerServerXPCInterface_callProviderManagerServerXPCInterface;
  v13 = [*(a1 + 32) callProviderManagerAllowedClasses];
  [v12 setClasses:v13 forSelector:sel_defaultAppProvider_ argumentIndex:0 ofReply:1];
}

- (void)blockUntilInitialStateReceived
{
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__TUCallProviderManagerXPCClient_blockUntilInitialStateReceived__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __64__TUCallProviderManagerXPCClient_blockUntilInitialStateReceived__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) requestedInitialState];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _requestInitialState];
  }

  return result;
}

+ (NSXPCInterface)callProviderManagerServerXPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUCallProviderManagerXPCClient_callProviderManagerServerXPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (callProviderManagerServerXPCInterface_onceToken != -1)
  {
    dispatch_once(&callProviderManagerServerXPCInterface_onceToken, block);
  }

  v2 = callProviderManagerServerXPCInterface_callProviderManagerServerXPCInterface;

  return v2;
}

+ (id)callProviderManagerAllowedClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

+ (NSXPCInterface)callProviderManagerClientXPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUCallProviderManagerXPCClient_callProviderManagerClientXPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (callProviderManagerClientXPCInterface_onceToken != -1)
  {
    dispatch_once(&callProviderManagerClientXPCInterface_onceToken, block);
  }

  v2 = callProviderManagerClientXPCInterface_callProviderManagerClientXPCInterface;

  return v2;
}

void __71__TUCallProviderManagerXPCClient_callProviderManagerClientXPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09DA340];
  v3 = callProviderManagerClientXPCInterface_callProviderManagerClientXPCInterface;
  callProviderManagerClientXPCInterface_callProviderManagerClientXPCInterface = v2;

  v4 = callProviderManagerClientXPCInterface_callProviderManagerClientXPCInterface;
  v5 = [*(a1 + 32) callProviderManagerAllowedClasses];
  [v4 setClasses:v5 forSelector:sel_updateProvidersByIdentifier_localProvidersByIdentifier_pairedHostDeviceProvidersByIdentifier_ argumentIndex:0 ofReply:0];

  v6 = callProviderManagerClientXPCInterface_callProviderManagerClientXPCInterface;
  v7 = [*(a1 + 32) callProviderManagerAllowedClasses];
  [v6 setClasses:v7 forSelector:sel_updateProvidersByIdentifier_localProvidersByIdentifier_pairedHostDeviceProvidersByIdentifier_ argumentIndex:1 ofReply:0];

  v8 = callProviderManagerClientXPCInterface_callProviderManagerClientXPCInterface;
  v9 = [*(a1 + 32) callProviderManagerAllowedClasses];
  [v8 setClasses:v9 forSelector:sel_updateProvidersByIdentifier_localProvidersByIdentifier_pairedHostDeviceProvidersByIdentifier_ argumentIndex:2 ofReply:0];
}

- (NSDictionary)providersByIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__TUCallProviderManagerXPCClient_providersByIdentifier__block_invoke;
  v6[3] = &unk_1E7425318;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)invalidate
{
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__TUCallProviderManagerXPCClient_invalidate__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__TUCallProviderManagerXPCClient_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) invalidate];
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_2);
  [WeakRetained unregisterClient:*(a1 + 32)];
}

void __47__TUCallProviderManagerXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__TUCallProviderManagerXPCClient_xpcConnection__block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __47__TUCallProviderManagerXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = TUCallProviderManagerXPCClient;
  [(TUCallProviderManagerXPCClient *)&v3 dealloc];
}

+ (TUCallProviderManagerXPCServer)asynchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_2);

  return WeakRetained;
}

+ (TUCallProviderManagerXPCServer)synchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_2);

  return WeakRetained;
}

void __38__TUCallProviderManagerXPCClient_init__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained requestedInitialState])
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "com.apple.telephonyutilities.callservicesdaemon.connectionrequest";
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection", &v5, 0xCu);
    }

    [v2 _requestInitialState];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (TUCallProviderManagerDataSourceDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__TUCallProviderManagerXPCClient_delegate__block_invoke;
  v6[3] = &unk_1E7425318;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__TUCallProviderManagerXPCClient_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__TUCallProviderManagerXPCClient_setDelegate___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (NSDictionary)localProvidersByIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__TUCallProviderManagerXPCClient_localProvidersByIdentifier__block_invoke;
  v6[3] = &unk_1E7425318;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)pairedHostDeviceProvidersByIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__TUCallProviderManagerXPCClient_pairedHostDeviceProvidersByIdentifier__block_invoke;
  v6[3] = &unk_1E7425318;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)donateUserIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__TUCallProviderManagerXPCClient_donateUserIntentForProviderWithIdentifier___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

void __76__TUCallProviderManagerXPCClient_donateUserIntentForProviderWithIdentifier___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__TUCallProviderManagerXPCClient_donateUserIntentForProviderWithIdentifier___block_invoke_2;
  v4[3] = &unk_1E7425828;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 synchronousServerWithErrorHandler:v4];
  [v3 donateUserIntentForProviderWithIdentifier:*(a1 + 40)];
}

void __76__TUCallProviderManagerXPCClient_donateUserIntentForProviderWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __76__TUCallProviderManagerXPCClient_donateUserIntentForProviderWithIdentifier___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__TUCallProviderManagerXPCClient_donateBackgroundCallIntentForProviderWithIdentifier___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

void __86__TUCallProviderManagerXPCClient_donateBackgroundCallIntentForProviderWithIdentifier___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __86__TUCallProviderManagerXPCClient_donateBackgroundCallIntentForProviderWithIdentifier___block_invoke_2;
  v4[3] = &unk_1E7425828;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 synchronousServerWithErrorHandler:v4];
  [v3 donateBackgroundCallIntentForProviderWithIdentifier:*(a1 + 40)];
}

void __86__TUCallProviderManagerXPCClient_donateBackgroundCallIntentForProviderWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __86__TUCallProviderManagerXPCClient_donateBackgroundCallIntentForProviderWithIdentifier___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (void)launchAppForDialRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__TUCallProviderManagerXPCClient_launchAppForDialRequest_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = requestCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = requestCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __69__TUCallProviderManagerXPCClient_launchAppForDialRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__TUCallProviderManagerXPCClient_launchAppForDialRequest_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 launchAppForDialRequest:*(a1 + 40) reply:*(a1 + 48)];
}

void __69__TUCallProviderManagerXPCClient_launchAppForDialRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__TUCallProviderManagerXPCClient_launchAppForDialRequest_completion___block_invoke_2_cold_1();
  }

  v5 = *MEMORY[0x1E696AA08];
  v10[0] = *MEMORY[0x1E696A578];
  v10[1] = v5;
  v11[0] = @"Error communicating with callservicesd";
  v11[1] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.TelephonyUtilities" code:1 userInfo:v6];
  (*(v7 + 16))(v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

- (TUCallProvider)defaultAppProvider
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__TUCallProviderManagerXPCClient_defaultAppProvider__block_invoke;
  v6[3] = &unk_1E7425C58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__TUCallProviderManagerXPCClient_defaultAppProvider__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) synchronousServerWithErrorHandler:&__block_literal_global_12_1];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__TUCallProviderManagerXPCClient_defaultAppProvider__block_invoke_13;
  v3[3] = &unk_1E7425F90;
  v3[4] = *(a1 + 40);
  [v2 defaultAppProvider:v3];
}

void __52__TUCallProviderManagerXPCClient_defaultAppProvider__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __52__TUCallProviderManagerXPCClient_defaultAppProvider__block_invoke_2_cold_1();
  }
}

- (NSArray)sortedProviders
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = MEMORY[0x1E695E0F0];
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__TUCallProviderManagerXPCClient_sortedProviders__block_invoke;
  v6[3] = &unk_1E7425C58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__TUCallProviderManagerXPCClient_sortedProviders__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) synchronousServerWithErrorHandler:&__block_literal_global_16_1];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__TUCallProviderManagerXPCClient_sortedProviders__block_invoke_17;
  v3[3] = &unk_1E7425BC8;
  v3[4] = *(a1 + 40);
  [v2 sortedProviders:v3];
}

void __49__TUCallProviderManagerXPCClient_sortedProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__TUCallProviderManagerXPCClient_sortedProviders__block_invoke_2_cold_1();
  }
}

void __47__TUCallProviderManagerXPCClient_xpcConnection__block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained queue];
    dispatch_async(v2, &__block_literal_global_26);

    WeakRetained = v3;
  }
}

void __47__TUCallProviderManagerXPCClient_xpcConnection__block_invoke_2_24()
{
  v0 = TUDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1956FD000, v0, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted.", v1, 2u);
  }
}

- (id)server
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_2);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    remoteObjectProxy = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUCallProviderManagerXPCClient *)self xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
  }

  return remoteObjectProxy;
}

- (id)serverWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_2);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUCallProviderManagerXPCClient *)self xpcConnection];
    v7 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

- (id)synchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_2);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUCallProviderManagerXPCClient *)self xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

void __54__TUCallProviderManagerXPCClient__requestInitialState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__TUCallProviderManagerXPCClient__requestInitialState__block_invoke_cold_1();
  }
}

- (void)_updateProvidersByIdentifier:(id)identifier localProvidersByIdentifier:(id)byIdentifier pairedHostDeviceProvidersByIdentifier:(id)providersByIdentifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  byIdentifierCopy = byIdentifier;
  providersByIdentifierCopy = providersByIdentifier;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = TUDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "_updateProvidersByIdentifier providersByIdentifier,: %@", &v17, 0xCu);
  }

  v13 = TUDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = byIdentifierCopy;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "_updateProvidersByIdentifier localProvidersByIdentifier: %@", &v17, 0xCu);
  }

  v14 = TUDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = providersByIdentifierCopy;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "_updateProvidersByIdentifier pairedHostDeviceProvidersByIdentifier: %@", &v17, 0xCu);
  }

  [(TUCallProviderManagerXPCClient *)self setProvidersByIdentifier:identifierCopy];
  [(TUCallProviderManagerXPCClient *)self setLocalProvidersByIdentifier:byIdentifierCopy];
  [(TUCallProviderManagerXPCClient *)self setPairedHostDeviceProvidersByIdentifier:providersByIdentifierCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained providersChangedForDataSource:self];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateProvidersByIdentifier:(id)identifier localProvidersByIdentifier:(id)byIdentifier pairedHostDeviceProvidersByIdentifier:(id)providersByIdentifier
{
  identifierCopy = identifier;
  byIdentifierCopy = byIdentifier;
  providersByIdentifierCopy = providersByIdentifier;
  queue = [(TUCallProviderManagerXPCClient *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __127__TUCallProviderManagerXPCClient_updateProvidersByIdentifier_localProvidersByIdentifier_pairedHostDeviceProvidersByIdentifier___block_invoke;
  v15[3] = &unk_1E7425188;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = byIdentifierCopy;
  v18 = providersByIdentifierCopy;
  v12 = providersByIdentifierCopy;
  v13 = byIdentifierCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

void __76__TUCallProviderManagerXPCClient_donateUserIntentForProviderWithIdentifier___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "Error donating intent for provider with identifier: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __86__TUCallProviderManagerXPCClient_donateBackgroundCallIntentForProviderWithIdentifier___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "Error donating background call intent for provider with identifier: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __69__TUCallProviderManagerXPCClient_launchAppForDialRequest_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error requesting app launch: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__TUCallProviderManagerXPCClient_defaultAppProvider__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error requesting defaultAppProvider: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__TUCallProviderManagerXPCClient_sortedProviders__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error requesting sortedProviders: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__TUCallProviderManagerXPCClient__requestInitialState__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error requesting initial state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end