@interface SHSheetUIServiceClient
- (SHSheetContentPresenter)presenter;
- (SHSheetUIServiceClient)initWithSessionIdentifier:(id)identifier;
- (id)sessionServer;
- (void)_activateConnection;
- (void)_didActivateConnection;
- (void)_didInvalidateConnection;
- (void)_reconnect;
- (void)_setupNewConnection;
- (void)connect;
- (void)invalidate;
- (void)updateWithContext:(id)context;
@end

@implementation SHSheetUIServiceClient

- (SHSheetUIServiceClient)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SHSheetUIServiceClient;
  v5 = [(SHSheetUIServiceClient *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    [(SHSheetUIServiceClient *)v5 _setupNewConnection];
  }

  return v5;
}

- (void)_setupNewConnection
{
  if (_setupNewConnection_onceToken != -1)
  {
    [SHSheetUIServiceClient _setupNewConnection];
  }

  v3 = [MEMORY[0x1E698F498] endpointForMachName:@"com.apple.sharinguiservice.services" service:@"com.apple.sharinguiservice.sharesheet-service" instance:0];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F490] connectionWithEndpoint:v3];
    connection = self->_connection;
    self->_connection = v4;

    objc_initWeak(&location, self);
    v6 = self->_connection;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __45__SHSheetUIServiceClient__setupNewConnection__block_invoke_2;
    v10 = &unk_1E71FA960;
    objc_copyWeak(&v11, &location);
    [(BSServiceConnection *)v6 configureConnection:&v7];
    [(SHSheetUIServiceClient *)self _activateConnection:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __45__SHSheetUIServiceClient__setupNewConnection__block_invoke()
{
  v3 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"com.apple.sharinguiservice.sharesheet-service"];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EFF36288];
  [v3 setServer:v0];

  v1 = [v3 copy];
  v2 = _setupNewConnection___interface;
  _setupNewConnection___interface = v1;
}

void __45__SHSheetUIServiceClient__setupNewConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v4];

  [v3 setInterface:_setupNewConnection___interface];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SHSheetUIServiceClient__setupNewConnection__block_invoke_3;
  v9[3] = &unk_1E71FA938;
  objc_copyWeak(&v10, (a1 + 32));
  [v3 setActivationHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SHSheetUIServiceClient__setupNewConnection__block_invoke_4;
  v7[3] = &unk_1E71FA938;
  objc_copyWeak(&v8, (a1 + 32));
  [v3 setInterruptionHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__SHSheetUIServiceClient__setupNewConnection__block_invoke_5;
  v5[3] = &unk_1E71FA938;
  objc_copyWeak(&v6, (a1 + 32));
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
}

void __45__SHSheetUIServiceClient__setupNewConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didActivateConnection];
}

void __45__SHSheetUIServiceClient__setupNewConnection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reconnect];
}

void __45__SHSheetUIServiceClient__setupNewConnection__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didInvalidateConnection];
}

- (id)sessionServer
{
  connection = [(SHSheetUIServiceClient *)self connection];
  remoteTarget = [connection remoteTarget];

  return remoteTarget;
}

- (void)connect
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Connect UI Service", buf, 2u);
  }

  if ([(SHSheetUIServiceClient *)self isConnected])
  {
    sessionServer = [(SHSheetUIServiceClient *)self sessionServer];
    sessionIdentifier = [(SHSheetUIServiceClient *)self sessionIdentifier];
    [sessionServer connectWithSessionIdentifier:sessionIdentifier];
  }

  else
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Current connection is not activated yet.", v7, 2u);
    }

    [(SHSheetUIServiceClient *)self setPendingRequest:[(SHSheetUIServiceClient *)self pendingRequest]| 1];
  }
}

- (void)updateWithContext:(id)context
{
  contextCopy = context;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Request UI Service update", buf, 2u);
  }

  [(SHSheetUIServiceClient *)self setCurrentContext:contextCopy];
  if ([(SHSheetUIServiceClient *)self isConnected])
  {
    sessionServer = [(SHSheetUIServiceClient *)self sessionServer];
    [sessionServer updateWithContext:contextCopy];
  }

  else
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Current connection is not activated yet.", v8, 2u);
    }

    [(SHSheetUIServiceClient *)self setPendingRequest:[(SHSheetUIServiceClient *)self pendingRequest]| 2];
  }
}

- (void)invalidate
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate UI Service connection", v5, 2u);
  }

  connection = [(SHSheetUIServiceClient *)self connection];
  [connection invalidate];
}

- (void)_activateConnection
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = [(SHSheetUIServiceClient *)self connection];
    v6 = 138412290;
    v7 = connection;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Activate UI Service connection:%@", &v6, 0xCu);
  }

  if ([(SHSheetUIServiceClient *)self state]!= 1)
  {
    [(SHSheetUIServiceClient *)self setState:1];
    connection2 = [(SHSheetUIServiceClient *)self connection];
    [connection2 activate];
  }
}

- (void)_reconnect
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = [(SHSheetUIServiceClient *)self connection];
    v5 = 138412290;
    v6 = connection;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Reconnect UI Service connection:%@", &v5, 0xCu);
  }

  [(SHSheetUIServiceClient *)self setPendingRequest:[(SHSheetUIServiceClient *)self pendingRequest]| 1];
  [(SHSheetUIServiceClient *)self setPendingRequest:[(SHSheetUIServiceClient *)self pendingRequest]| 2];
  [(SHSheetUIServiceClient *)self _activateConnection];
}

- (void)_didActivateConnection
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = [(SHSheetUIServiceClient *)self connection];
    v6 = 138412290;
    v7 = connection;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "UI Service Connection was activated:%@", &v6, 0xCu);
  }

  [(SHSheetUIServiceClient *)self setState:2];
  if (([(SHSheetUIServiceClient *)self pendingRequest]& 1) != 0)
  {
    [(SHSheetUIServiceClient *)self connect];
  }

  if (([(SHSheetUIServiceClient *)self pendingRequest]& 2) != 0)
  {
    currentContext = [(SHSheetUIServiceClient *)self currentContext];
    [(SHSheetUIServiceClient *)self updateWithContext:currentContext];
  }

  [(SHSheetUIServiceClient *)self setPendingRequest:0];
}

- (void)_didInvalidateConnection
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = [(SHSheetUIServiceClient *)self connection];
    v5 = 138412290;
    v6 = connection;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "UI Service Connection was invalidated:%@", &v5, 0xCu);
  }

  [(SHSheetUIServiceClient *)self setState:0];
}

- (SHSheetContentPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end