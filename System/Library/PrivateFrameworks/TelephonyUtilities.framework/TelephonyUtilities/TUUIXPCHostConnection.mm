@interface TUUIXPCHostConnection
- (TUUIXPCHostConnection)init;
- (TUUIXPCHostConnection)initWithConnection:(id)connection hostDelegate:(id)delegate connectionDelegate:(id)connectionDelegate queue:(id)queue;
- (TUUIXPCHostConnectionDelegate)connectionDelegate;
- (TUUIXPCHostDelegate)hostDelegate;
- (id)remoteObjectProxy;
- (void)dealloc;
- (void)fetchInCallUIState:(id)state;
- (void)fetchRemoteControlStatus:(id)status;
- (void)handleRedialCommandWhileScreening:(id)screening;
- (void)shouldHostHandleMRCommand:(unsigned int)command completion:(id)completion;
- (void)shouldHostHandleMRCommand:(unsigned int)command sourceIdentifier:(id)identifier completion:(id)completion;
@end

@implementation TUUIXPCHostConnection

- (TUUIXPCHostConnection)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUUIXPCHostConnection.m" lineNumber:56 description:{@"%s is unavailable. Use a designated initializer instead", "-[TUUIXPCHostConnection init]"}];

  return 0;
}

- (TUUIXPCHostConnection)initWithConnection:(id)connection hostDelegate:(id)delegate connectionDelegate:(id)connectionDelegate queue:(id)queue
{
  connectionCopy = connection;
  delegateCopy = delegate;
  connectionDelegateCopy = connectionDelegate;
  queueCopy = queue;
  v30.receiver = self;
  v30.super_class = TUUIXPCHostConnection;
  v15 = [(TUUIXPCHostConnection *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_connection, connection);
    connection = [(TUUIXPCHostConnection *)v16 connection];
    [connection setExportedObject:v16];

    hostConnectionInterface = [MEMORY[0x1E696B0D0] hostConnectionInterface];
    connection2 = [(TUUIXPCHostConnection *)v16 connection];
    [connection2 setExportedInterface:hostConnectionInterface];

    remoteObjectInterface = [MEMORY[0x1E696B0D0] remoteObjectInterface];
    connection3 = [(TUUIXPCHostConnection *)v16 connection];
    [connection3 setRemoteObjectInterface:remoteObjectInterface];

    [(TUUIXPCHostConnection *)v16 setHostDelegate:delegateCopy];
    [(TUUIXPCHostConnection *)v16 setConnectionDelegate:connectionDelegateCopy];
    objc_initWeak(&location, v16);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke;
    v27[3] = &unk_1E7424998;
    objc_copyWeak(&v28, &location);
    connection4 = [(TUUIXPCHostConnection *)v16 connection];
    [connection4 setInvalidationHandler:v27];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__TUUIXPCHostConnection_initWithConnection_hostDelegate_connectionDelegate_queue___block_invoke_95;
    v25[3] = &unk_1E7424998;
    objc_copyWeak(&v26, &location);
    connection5 = [(TUUIXPCHostConnection *)v16 connection];
    [connection5 setInterruptionHandler:v25];

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
  connection = [(TUUIXPCHostConnection *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = TUUIXPCHostConnection;
  [(TUUIXPCHostConnection *)&v4 dealloc];
}

- (id)remoteObjectProxy
{
  connection = [(TUUIXPCHostConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)shouldHostHandleMRCommand:(unsigned int)command completion:(id)completion
{
  completionCopy = completion;
  queue = [(TUUIXPCHostConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__TUUIXPCHostConnection_shouldHostHandleMRCommand_completion___block_invoke;
  block[3] = &unk_1E7424DD0;
  commandCopy = command;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
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

- (void)shouldHostHandleMRCommand:(unsigned int)command sourceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(TUUIXPCHostConnection *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__TUUIXPCHostConnection_shouldHostHandleMRCommand_sourceIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7424DF8;
  commandCopy = command;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
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

- (void)handleRedialCommandWhileScreening:(id)screening
{
  screeningCopy = screening;
  queue = [(TUUIXPCHostConnection *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__TUUIXPCHostConnection_handleRedialCommandWhileScreening___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = screeningCopy;
  v6 = screeningCopy;
  dispatch_async(queue, v7);
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

- (void)fetchInCallUIState:(id)state
{
  stateCopy = state;
  queue = [(TUUIXPCHostConnection *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TUUIXPCHostConnection_fetchInCallUIState___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(queue, v7);
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

- (void)fetchRemoteControlStatus:(id)status
{
  statusCopy = status;
  queue = [(TUUIXPCHostConnection *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TUUIXPCHostConnection_fetchRemoteControlStatus___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(queue, v7);
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