@interface TUUIXPCClientConnection
- (TUCallCenter)callCenter;
- (TUUIXPCClientConnection)initWithListenerEndpoint:(id)a3 callCenter:(id)a4;
- (id)host;
- (id)hostWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)fetchInCallUIState:(id)a3;
- (void)fetchRemoteControlStatus:(id)a3;
- (void)handleRedialCommandWhileScreening:(id)a3;
- (void)ping;
@end

@implementation TUUIXPCClientConnection

- (void)ping
{
  v2 = [(TUUIXPCClientConnection *)self hostWithErrorHandler:&__block_literal_global_90];
  [v2 ping];
}

- (TUUIXPCClientConnection)initWithListenerEndpoint:(id)a3 callCenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = TUUIXPCClientConnection;
  v8 = [(TUUIXPCClientConnection *)&v22 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v6];
    connection = v8->_connection;
    v8->_connection = v9;

    v11 = dispatch_queue_create("com.apple.telephonyutilities.tuuixpcclient", 0);
    queue = v8->_queue;
    v8->_queue = v11;

    objc_storeWeak(&v8->_callCenter, v7);
    v13 = [MEMORY[0x1E696B0D0] hostInterface];
    [(NSXPCConnection *)v8->_connection setRemoteObjectInterface:v13];

    v14 = [MEMORY[0x1E696B0D0] clientInterface];
    [(NSXPCConnection *)v8->_connection setExportedInterface:v14];

    v15 = [[TUUIXPClientConnectionWeakWrapper alloc] initWithWrappedObject:v8];
    [(NSXPCConnection *)v8->_connection setExportedObject:v15];

    objc_initWeak(&location, v8);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke;
    v19[3] = &unk_1E7424998;
    objc_copyWeak(&v20, &location);
    [(NSXPCConnection *)v8->_connection setInvalidationHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_84;
    v17[3] = &unk_1E7424998;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v8->_connection setInterruptionHandler:v17];
    [(NSXPCConnection *)v8->_connection resume];
    [(TUUIXPCClientConnection *)v8 ping];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_2;
    block[3] = &unk_1E7424950;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for TUUIXPCClientConnection %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_2_85;
    block[3] = &unk_1E7424950;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_2_85(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for TUUIXPCClientConnection: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) connection];
  [v4 invalidate];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = TUUIXPCClientConnection;
  [(TUUIXPCClientConnection *)&v3 dealloc];
}

- (id)host
{
  v2 = [(TUUIXPCClientConnection *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)hostWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUUIXPCClientConnection *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

void __31__TUUIXPCClientConnection_ping__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error while pinging host: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __64__TUUIXPCClientConnection_shouldHostHandleMRCommand_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7[0] = 67109378;
    v7[1] = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error while asking host to handle media remote command: %u error: %@", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

void __81__TUUIXPCClientConnection_shouldHostHandleMRCommand_sourceIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7[0] = 67109378;
    v7[1] = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error while asking host to handle media remote command: %u error: %@", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleRedialCommandWhileScreening:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "handleRedialCommandWhileScreening: %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__TUUIXPCClientConnection_handleRedialCommandWhileScreening___block_invoke;
  v9[3] = &unk_1E7425828;
  v10 = v4;
  v6 = v4;
  v7 = [(TUUIXPCClientConnection *)self hostWithErrorHandler:v9];
  [v7 handleRedialCommandWhileScreening:v6];

  v8 = *MEMORY[0x1E69E9840];
}

void __61__TUUIXPCClientConnection_handleRedialCommandWhileScreening___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error while asking host to handle redial request: %@ error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchInCallUIState:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[TUUIXPCClientConnection fetchInCallUIState:]";
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%s: ", buf, 0xCu);
  }

  v6 = [(TUUIXPCClientConnection *)self callCenter];
  v7 = [v6 queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__TUUIXPCClientConnection_fetchInCallUIState___block_invoke;
  v10[3] = &unk_1E7424E20;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __46__TUUIXPCClientConnection_fetchInCallUIState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callCenter];
  v3 = [v2 _allCalls];
  v4 = [v3 count];

  if (v4)
  {
    v8 = [*(a1 + 32) hostWithErrorHandler:&__block_literal_global_94];
    [v8 fetchInCallUIState:*(a1 + 40)];
  }

  else
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "No calls on the system so early returning since ICS shouldn't show any UI", buf, 2u);
    }

    v6 = *(a1 + 40);
    v7 = [[TUUIContext alloc] initWithState:0];
    (*(v6 + 16))(v6, v7, 0);
  }
}

void __46__TUUIXPCClientConnection_fetchInCallUIState___block_invoke_92(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error while asking host for UI state: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)fetchRemoteControlStatus:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[TUUIXPCClientConnection fetchRemoteControlStatus:]";
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%s: ", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__TUUIXPCClientConnection_fetchRemoteControlStatus___block_invoke;
  v9[3] = &unk_1E7424A10;
  v10 = v4;
  v6 = v4;
  v7 = [(TUUIXPCClientConnection *)self hostWithErrorHandler:v9];
  [v7 fetchRemoteControlStatus:v6];

  v8 = *MEMORY[0x1E69E9840];
}

void __52__TUUIXPCClientConnection_fetchRemoteControlStatus___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error while asking host for UI state, InCallService isn't running: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (TUCallCenter)callCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_callCenter);

  return WeakRetained;
}

@end