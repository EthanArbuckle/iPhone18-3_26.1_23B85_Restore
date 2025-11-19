@interface TUCallHistoryManagerXPCClient
+ (NSXPCInterface)callHistoryManagerClientXPCInterface;
+ (NSXPCInterface)callHistoryManagerServerXPCInterface;
+ (TUCallHistoryManagerXPCServer)asynchronousServer;
+ (TUCallHistoryManagerXPCServer)synchronousServer;
+ (id)callHistoryManagerAllowedClasses;
- (NSXPCConnection)xpcConnection;
- (TUCallHistoryManagerXPCClient)init;
- (id)serverWithErrorHandler:(id)a3;
- (id)synchronousServerWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)handleServerDisconnect;
- (void)invalidate;
- (void)reportRecentCallForConversation:(id)a3 withStartDate:(id)a4 avMode:(unint64_t)a5;
- (void)updateOutgoingLocalParticipantUUID:(id)a3 forCallsWithOutgoingLocalParticipantUUID:(id)a4;
@end

@implementation TUCallHistoryManagerXPCClient

+ (TUCallHistoryManagerXPCServer)asynchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_5);

  return WeakRetained;
}

+ (TUCallHistoryManagerXPCServer)synchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_5);

  return WeakRetained;
}

+ (id)callHistoryManagerAllowedClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (NSXPCInterface)callHistoryManagerClientXPCInterface
{
  if (callHistoryManagerClientXPCInterface_onceToken != -1)
  {
    +[TUCallHistoryManagerXPCClient callHistoryManagerClientXPCInterface];
  }

  v3 = callHistoryManagerClientXPCInterface_callHistoryManagerClientXPCInterface;

  return v3;
}

uint64_t __69__TUCallHistoryManagerXPCClient_callHistoryManagerClientXPCInterface__block_invoke()
{
  callHistoryManagerClientXPCInterface_callHistoryManagerClientXPCInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09F2F08];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSXPCInterface)callHistoryManagerServerXPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__TUCallHistoryManagerXPCClient_callHistoryManagerServerXPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (callHistoryManagerServerXPCInterface_onceToken != -1)
  {
    dispatch_once(&callHistoryManagerServerXPCInterface_onceToken, block);
  }

  v2 = callHistoryManagerServerXPCInterface_callHistoryManagerServerXPCInterface;

  return v2;
}

void __69__TUCallHistoryManagerXPCClient_callHistoryManagerServerXPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A0A220];
  v3 = callHistoryManagerServerXPCInterface_callHistoryManagerServerXPCInterface;
  callHistoryManagerServerXPCInterface_callHistoryManagerServerXPCInterface = v2;

  v4 = callHistoryManagerServerXPCInterface_callHistoryManagerServerXPCInterface;
  v5 = [*(a1 + 32) callHistoryManagerAllowedClasses];
  [v4 setClasses:v5 forSelector:sel_updateOutgoingLocalParticipantUUID_forCallsWithOutgoingLocalParticipantUUID_ argumentIndex:0 ofReply:0];

  v6 = callHistoryManagerServerXPCInterface_callHistoryManagerServerXPCInterface;
  v7 = [*(a1 + 32) callHistoryManagerAllowedClasses];
  [v6 setClasses:v7 forSelector:sel_reportRecentCallForConversation_withStartDate_avMode_ argumentIndex:0 ofReply:0];

  v8 = callHistoryManagerServerXPCInterface_callHistoryManagerServerXPCInterface;
  v9 = [*(a1 + 32) callHistoryManagerAllowedClasses];
  [v8 setClasses:v9 forSelector:sel_reportRecentCallForConversation_withStartDate_avMode_ argumentIndex:1 ofReply:0];
}

- (TUCallHistoryManagerXPCClient)init
{
  v9.receiver = self;
  v9.super_class = TUCallHistoryManagerXPCClient;
  v2 = [(TUCallHistoryManagerXPCClient *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyutilities.callhistorymanagerxpcclient", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__TUCallHistoryManagerXPCClient_init__block_invoke;
    block[3] = &unk_1E7424950;
    v8 = v2;
    dispatch_async(v5, block);
  }

  return v2;
}

void __37__TUCallHistoryManagerXPCClient_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_5);
  [WeakRetained registerClient:*(a1 + 32)];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = TUCallHistoryManagerXPCClient;
  [(TUCallHistoryManagerXPCClient *)&v3 dealloc];
}

- (void)handleServerDisconnect
{
  v2 = [(TUCallHistoryManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(v2);

  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Server disconnected.", v4, 2u);
  }
}

- (void)invalidate
{
  v3 = [(TUCallHistoryManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TUCallHistoryManagerXPCClient_invalidate__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__TUCallHistoryManagerXPCClient_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_5);
  [WeakRetained unregisterClient:*(a1 + 32)];
}

- (void)updateOutgoingLocalParticipantUUID:(id)a3 forCallsWithOutgoingLocalParticipantUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallHistoryManagerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__TUCallHistoryManagerXPCClient_updateOutgoingLocalParticipantUUID_forCallsWithOutgoingLocalParticipantUUID___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __109__TUCallHistoryManagerXPCClient_updateOutgoingLocalParticipantUUID_forCallsWithOutgoingLocalParticipantUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) synchronousServerWithErrorHandler:&__block_literal_global_65_0];
  [v2 updateOutgoingLocalParticipantUUID:*(a1 + 40) forCallsWithOutgoingLocalParticipantUUID:*(a1 + 48)];
}

void __109__TUCallHistoryManagerXPCClient_updateOutgoingLocalParticipantUUID_forCallsWithOutgoingLocalParticipantUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __109__TUCallHistoryManagerXPCClient_updateOutgoingLocalParticipantUUID_forCallsWithOutgoingLocalParticipantUUID___block_invoke_2_cold_1(v2, v3);
  }
}

- (void)reportRecentCallForConversation:(id)a3 withStartDate:(id)a4 avMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(TUCallHistoryManagerXPCClient *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__TUCallHistoryManagerXPCClient_reportRecentCallForConversation_withStartDate_avMode___block_invoke;
  v13[3] = &unk_1E7424D50;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __86__TUCallHistoryManagerXPCClient_reportRecentCallForConversation_withStartDate_avMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) synchronousServerWithErrorHandler:&__block_literal_global_67_0];
  [v2 reportRecentCallForConversation:*(a1 + 40) withStartDate:*(a1 + 48) avMode:*(a1 + 56)];
}

void __86__TUCallHistoryManagerXPCClient_reportRecentCallForConversation_withStartDate_avMode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __86__TUCallHistoryManagerXPCClient_reportRecentCallForConversation_withStartDate_avMode___block_invoke_2_cold_1(v2, v3);
  }
}

- (NSXPCConnection)xpcConnection
{
  v3 = [(TUCallHistoryManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(v3);

  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.callhistorymanager" options:0];
    v6 = self->_xpcConnection;
    self->_xpcConnection = v5;

    v7 = [objc_opt_class() callHistoryManagerServerXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v7];

    v8 = [objc_opt_class() callHistoryManagerClientXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v8];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__TUCallHistoryManagerXPCClient_xpcConnection__block_invoke;
    v12[3] = &unk_1E7424998;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__TUCallHistoryManagerXPCClient_xpcConnection__block_invoke_70;
    v10[3] = &unk_1E7424998;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v10];
    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __46__TUCallHistoryManagerXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__TUCallHistoryManagerXPCClient_xpcConnection__block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __46__TUCallHistoryManagerXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated.", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  return [*(a1 + 32) handleServerDisconnect];
}

void __46__TUCallHistoryManagerXPCClient_xpcConnection__block_invoke_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__TUCallHistoryManagerXPCClient_xpcConnection__block_invoke_2_71;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __46__TUCallHistoryManagerXPCClient_xpcConnection__block_invoke_2_71(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted.", v4, 2u);
  }

  return [*(a1 + 32) handleServerDisconnect];
}

- (id)serverWithErrorHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_5);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    v8 = [(TUCallHistoryManagerXPCClient *)self xpcConnection];
    v7 = [v8 remoteObjectProxyWithErrorHandler:v4];
  }

  return v7;
}

- (id)synchronousServerWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUCallHistoryManagerXPCClient *)self queue];
  dispatch_assert_queue_V2(v5);

  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_5);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
  }

  else
  {
    v9 = [(TUCallHistoryManagerXPCClient *)self xpcConnection];
    v8 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  return v8;
}

void __109__TUCallHistoryManagerXPCClient_updateOutgoingLocalParticipantUUID_forCallsWithOutgoingLocalParticipantUUID___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Error updating outgoing local participant UUID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __86__TUCallHistoryManagerXPCClient_reportRecentCallForConversation_withStartDate_avMode___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Error reporting recent call for conversation: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end