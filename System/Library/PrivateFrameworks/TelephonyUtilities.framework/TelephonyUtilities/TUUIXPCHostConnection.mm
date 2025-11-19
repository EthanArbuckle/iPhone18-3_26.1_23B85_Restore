@interface TUUIXPCHostConnection
- (TUUIXPCHostConnection)init;
- (TUUIXPCHostConnection)initWithConnection:(id)a3 hostDelegate:(id)a4 connectionDelegate:(id)a5 queue:(id)a6;
- (TUUIXPCHostConnectionDelegate)connectionDelegate;
- (TUUIXPCHostDelegate)hostDelegate;
- (id)remoteObjectProxy;
- (void)dealloc;
- (void)fetchInCallUIState:(id)a3;
- (void)fetchRemoteControlStatus:(id)a3;
- (void)handleRedialCommandWhileScreening:(id)a3;
- (void)shouldHostHandleMRCommand:(unsigned int)a3 completion:(id)a4;
- (void)shouldHostHandleMRCommand:(unsigned int)a3 sourceIdentifier:(id)a4 completion:(id)a5;
@end

@implementation TUUIXPCHostConnection

- (TUUIXPCHostConnection)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUUIXPCHostConnection.m" lineNumber:56 description:{@"%s is unavailable. Use a designated initializer instead", "-[TUUIXPCHostConnection init]"}];

  return 0;
}

- (TUUIXPCHostConnection)initWithConnection:(id)a3 hostDelegate:(id)a4 connectionDelegate:(id)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = TUUIXPCHostConnection;
  v15 = [(TUUIXPCHostConnection *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a6);
    objc_storeStrong(&v16->_connection, a3);
    v17 = [(TUUIXPCHostConnection *)v16 connection];
    [v17 setExportedObject:v16];

    v18 = [MEMORY[0x1E696B0D0] hostConnectionInterface];
    v19 = [(TUUIXPCHostConnection *)v16 connection];
    [v19 setExportedInterface:v18];

    v20 = [MEMORY[0x1E696B0D0] remoteObjectInterface];
    v21 = [(TUUIXPCHostConnection *)v16 connection];
    [v21 setRemoteObjectInterface:v20];

    [(TUUIXPCHostConnection *)v16 setHostDelegate:v12];
    [(TUUIXPCHostConnection *)v16 setConnectionDelegate:v13];
    objc_initWeak(&location, v16);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke;
    v27[3] = &unk_1E7424998;
    objc_copyWeak(&v28, &location);
    v22 = [(TUUIXPCHostConnection *)v16 connection];
    [v22 setInvalidationHandler:v27];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke_95;
    v25[3] = &unk_1E7424998;
    objc_copyWeak(&v26, &location);
    v23 = [(TUUIXPCHostConnection *)v16 connection];
    [v23 setInterruptionHandler:v25];

    [(NSXPCConnection *)v16->_connection resume];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke_2;
    block[3] = &unk_1E7424950;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for TUUIXPCHostConnection: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) connectionDelegate];
  [v4 connectionInvalidated:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

void __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke_95(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke_2_96;
    block[3] = &unk_1E7424950;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke_2_96(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for call TUUIXPCHostConnection: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) connection];
  [v4 invalidate];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = [(TUUIXPCHostConnection *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = TUUIXPCHostConnection;
  [(TUUIXPCHostConnection *)&v4 dealloc];
}

- (id)remoteObjectProxy
{
  v2 = [(TUUIXPCHostConnection *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)shouldHostHandleMRCommand:(unsigned int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(TUUIXPCHostConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__TUUIXPCHostConnection_shouldHostHandleMRCommand_completion___block_invoke;
  block[3] = &unk_1E7424DD0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __62__TUUIXPCHostConnection_shouldHostHandleMRCommand_completion___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Asked to handle MRcommand", v4, 2u);
  }

  v3 = [*(a1 + 32) hostDelegate];
  [v3 shouldHandleMRCommand:*(a1 + 48) completion:*(a1 + 40)];
}

- (void)shouldHostHandleMRCommand:(unsigned int)a3 sourceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(TUUIXPCHostConnection *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__TUUIXPCHostConnection_shouldHostHandleMRCommand_sourceIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7424DF8;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __79__TUUIXPCHostConnection_shouldHostHandleMRCommand_sourceIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Asked to handle MRcommand", v4, 2u);
  }

  v3 = [*(a1 + 32) hostDelegate];
  [v3 shouldHandleMRCommand:*(a1 + 56) sourceIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)handleRedialCommandWhileScreening:(id)a3
{
  v4 = a3;
  v5 = [(TUUIXPCHostConnection *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__TUUIXPCHostConnection_handleRedialCommandWhileScreening___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__TUUIXPCHostConnection_handleRedialCommandWhileScreening___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Asked to redial while screening", v4, 2u);
  }

  v3 = [*(a1 + 32) hostDelegate];
  [v3 handleRedialCommandWhileScreening:*(a1 + 40)];
}

- (void)fetchInCallUIState:(id)a3
{
  v4 = a3;
  v5 = [(TUUIXPCHostConnection *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TUUIXPCHostConnection_fetchInCallUIState___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__TUUIXPCHostConnection_fetchInCallUIState___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Asked to fetch UI state", v4, 2u);
  }

  v3 = [*(a1 + 32) hostDelegate];
  [v3 fetchInCallUIState:*(a1 + 40)];
}

- (void)fetchRemoteControlStatus:(id)a3
{
  v4 = a3;
  v5 = [(TUUIXPCHostConnection *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TUUIXPCHostConnection_fetchRemoteControlStatus___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__TUUIXPCHostConnection_fetchRemoteControlStatus___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Asked to fetch remote control status", v4, 2u);
  }

  v3 = [*(a1 + 32) hostDelegate];
  [v3 fetchRemoteControlStatus:*(a1 + 40)];
}

- (TUUIXPCHostConnectionDelegate)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

- (TUUIXPCHostDelegate)hostDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);

  return WeakRetained;
}

@end