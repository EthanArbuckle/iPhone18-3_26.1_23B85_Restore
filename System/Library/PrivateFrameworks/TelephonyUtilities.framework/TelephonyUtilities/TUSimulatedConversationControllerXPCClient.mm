@interface TUSimulatedConversationControllerXPCClient
+ (NSXPCInterface)simulatedConversationControllerClientXPCInterface;
+ (NSXPCInterface)simulatedConversationControllerServerXPCInterface;
+ (id)simulatedConversationControllerAllowedClasses;
- (NSXPCConnection)xpcConnection;
- (TUSimulatedConversationControllerXPCClient)init;
- (id)asynchronousServerWithErrorHandler:(id)handler;
- (id)synchronousServerWithErrorHandler:(id)handler;
- (void)addRemoteParticipantWithHandle:(id)handle update:(id)update toConversation:(id)conversation;
- (void)createIncomingConversationWithHandles:(id)handles;
- (void)dealloc;
- (void)invalidate;
- (void)removeRemoteParticipant:(id)participant fromConversation:(id)conversation;
- (void)updateParticipant:(id)participant withUpdate:(id)update onConversation:(id)conversation;
@end

@implementation TUSimulatedConversationControllerXPCClient

- (TUSimulatedConversationControllerXPCClient)init
{
  v8.receiver = self;
  v8.super_class = TUSimulatedConversationControllerXPCClient;
  v2 = [(TUSimulatedConversationControllerXPCClient *)&v8 init];
  if (v2)
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Initializing TUSimulatedConversationControllerXPCClient", v7, 2u);
    }

    v4 = dispatch_queue_create("com.apple.telephonyutilities.simulatedconversationcontrollerxpcclient", 0);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = TUSimulatedConversationControllerXPCClient;
  [(TUSimulatedConversationControllerXPCClient *)&v3 dealloc];
}

- (void)updateParticipant:(id)participant withUpdate:(id)update onConversation:(id)conversation
{
  conversationCopy = conversation;
  updateCopy = update;
  participantCopy = participant;
  v12 = [(TUSimulatedConversationControllerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_12];
  groupUUID = [conversationCopy groupUUID];

  [v12 updateParticipant:participantCopy withUpdate:updateCopy onConversationWithGroupUUID:groupUUID];
}

void __90__TUSimulatedConversationControllerXPCClient_updateParticipant_withUpdate_onConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Updating simulated participant failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addRemoteParticipantWithHandle:(id)handle update:(id)update toConversation:(id)conversation
{
  conversationCopy = conversation;
  updateCopy = update;
  handleCopy = handle;
  v12 = [(TUSimulatedConversationControllerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_5];
  groupUUID = [conversationCopy groupUUID];

  [v12 addRemoteParticipantWithHandle:handleCopy update:updateCopy toConversationWithGroupUUID:groupUUID];
}

void __99__TUSimulatedConversationControllerXPCClient_addRemoteParticipantWithHandle_update_toConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Adding remote participant failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeRemoteParticipant:(id)participant fromConversation:(id)conversation
{
  conversationCopy = conversation;
  participantCopy = participant;
  v9 = [(TUSimulatedConversationControllerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_7];
  groupUUID = [conversationCopy groupUUID];

  [v9 removeRemoteParticipant:participantCopy fromConversationWithGroupUUID:groupUUID];
}

void __87__TUSimulatedConversationControllerXPCClient_removeRemoteParticipant_fromConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Remove remote participant failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)createIncomingConversationWithHandles:(id)handles
{
  handlesCopy = handles;
  v5 = [(TUSimulatedConversationControllerXPCClient *)self asynchronousServerWithErrorHandler:&__block_literal_global_9];
  [v5 createIncomingConversationWithHandles:handlesCopy];
}

void __84__TUSimulatedConversationControllerXPCClient_createIncomingConversationWithHandles___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Creating incoming simulated conversation failed with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  queue = [(TUSimulatedConversationControllerXPCClient *)self queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__TUSimulatedConversationControllerXPCClient_invalidate__block_invoke;
  v4[3] = &unk_1E7424998;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__TUSimulatedConversationControllerXPCClient_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] invalidate];
    WeakRetained = v2;
  }
}

- (NSXPCConnection)xpcConnection
{
  queue = [(TUSimulatedConversationControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_sync(queue, block);

  return self->_xpcConnection;
}

void __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = TUDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Starting XPC Connection.", buf, 2u);
    }

    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.simulatedconversationcontroller" options:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v6 = *(a1 + 32);
    v7 = [objc_opt_class() simulatedConversationControllerServerXPCInterface];
    [*(*(a1 + 32) + 8) setRemoteObjectInterface:v7];

    v8 = *(a1 + 32);
    v9 = [objc_opt_class() simulatedConversationControllerClientXPCInterface];
    [*(*(a1 + 32) + 8) setExportedInterface:v9];

    [*(*(a1 + 32) + 8) setExportedObject:?];
    objc_initWeak(buf, *(a1 + 32));
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke_12;
    v15[3] = &unk_1E7424998;
    objc_copyWeak(&v16, buf);
    [*(*(a1 + 32) + 8) setInvalidationHandler:v15];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke_13;
    v13 = &unk_1E7424998;
    objc_copyWeak(&v14, buf);
    [*(*(a1 + 32) + 8) setInterruptionHandler:&v10];
    [*(*(a1 + 32) + 8) resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
}

void __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke_2_14;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __59__TUSimulatedConversationControllerXPCClient_xpcConnection__block_invoke_2_14(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted.", v4, 2u);
  }

  return [*(*(a1 + 32) + 8) invalidate];
}

- (id)asynchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(TUSimulatedConversationControllerXPCClient *)self xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(TUSimulatedConversationControllerXPCClient *)self xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

+ (id)simulatedConversationControllerAllowedClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

+ (NSXPCInterface)simulatedConversationControllerClientXPCInterface
{
  if (simulatedConversationControllerClientXPCInterface_onceToken != -1)
  {
    +[TUSimulatedConversationControllerXPCClient simulatedConversationControllerClientXPCInterface];
  }

  v3 = simulatedConversationControllerClientXPCInterface_conversationProviderManagerClientXPCInterface;

  return v3;
}

uint64_t __95__TUSimulatedConversationControllerXPCClient_simulatedConversationControllerClientXPCInterface__block_invoke()
{
  simulatedConversationControllerClientXPCInterface_conversationProviderManagerClientXPCInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09CF7E8];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSXPCInterface)simulatedConversationControllerServerXPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__TUSimulatedConversationControllerXPCClient_simulatedConversationControllerServerXPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (simulatedConversationControllerServerXPCInterface_onceToken != -1)
  {
    dispatch_once(&simulatedConversationControllerServerXPCInterface_onceToken, block);
  }

  v2 = simulatedConversationControllerServerXPCInterface_conversationProviderManagerXPCInterface;

  return v2;
}

void __95__TUSimulatedConversationControllerXPCClient_simulatedConversationControllerServerXPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A09F80];
  v3 = simulatedConversationControllerServerXPCInterface_conversationProviderManagerXPCInterface;
  simulatedConversationControllerServerXPCInterface_conversationProviderManagerXPCInterface = v2;

  v4 = simulatedConversationControllerServerXPCInterface_conversationProviderManagerXPCInterface;
  v5 = [*(a1 + 32) simulatedConversationControllerAllowedClasses];
  [v4 setClasses:v5 forSelector:sel_createIncomingConversationWithHandles_ argumentIndex:0 ofReply:0];
}

@end