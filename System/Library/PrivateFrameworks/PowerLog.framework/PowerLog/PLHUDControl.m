@interface PLHUDControl
- (BOOL)internalHUDEnabled;
- (id)_hudServer;
- (void)_ensureConnection;
- (void)dealloc;
- (void)internalHUDEnabled;
@end

@implementation PLHUDControl

- (void)_ensureConnection
{
  if (!self->_connection)
  {
    v3 = [MEMORY[0x1E698F4A0] endpointForMachName:@"com.apple.internal.PerfPowerHUD.service" service:@"com.apple.internal.PerfPowerHUD.service.hudctl" instance:0];
    v4 = [MEMORY[0x1E698F478] interfaceWithIdentifier:@"com.apple.internal.PerfPowerHUD.service.hudctl"];
    v5 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F38E95F0];
    [v4 setClient:v5];

    v6 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F38E9650];
    [v4 setServer:v6];

    [v4 setClientMessagingExpectation:0];
    objc_initWeak(&location, self);
    v7 = [MEMORY[0x1E698F488] connectionWithEndpoint:v3];
    connection = self->_connection;
    self->_connection = v7;

    v9 = self->_connection;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __33__PLHUDControl__ensureConnection__block_invoke;
    v14 = &unk_1E7F18E30;
    v10 = v4;
    v15 = v10;
    v16 = self;
    objc_copyWeak(&v17, &location);
    [(BSServiceConnectionClient *)v9 configureConnection:&v11];
    [(BSServiceConnectionClient *)self->_connection activate:v11];
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
  }
}

void __33__PLHUDControl__ensureConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  v4 = [MEMORY[0x1E698F4F8] userInitiated];
  [v3 setServiceQuality:v4];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__PLHUDControl__ensureConnection__block_invoke_2;
  v5[3] = &unk_1E7F18E08;
  objc_copyWeak(&v6, (a1 + 48));
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
}

void __33__PLHUDControl__ensureConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __33__PLHUDControl__ensureConnection__block_invoke_2_cold_1(v3);
    }

    v5 = [WeakRetained connection];
    [v5 invalidate];

    [WeakRetained setConnection:0];
  }
}

- (void)dealloc
{
  [(BSServiceConnectionClient *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = PLHUDControl;
  [(PLHUDControl *)&v3 dealloc];
}

- (id)_hudServer
{
  v9[1] = *MEMORY[0x1E69E9840];
  [(PLHUDControl *)self _ensureConnection];
  connection = self->_connection;
  v4 = [MEMORY[0x1E69C7568] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)internalHUDEnabled
{
  v2 = [(PLHUDControl *)self _hudServer];
  v6 = 0;
  v3 = [v2 isHUDVisibleWithError:&v6];
  v4 = v6;

  if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [(PLHUDControl *)v4 internalHUDEnabled];
  }

  return v3;
}

void __33__PLHUDControl__ensureConnection__block_invoke_2_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "HUD: Invalidated/Interrupted connection %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)internalHUDEnabled
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "HUD: service encountered error when querying state %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)setInternalHUDEnabled:(char)a1 .cold.1(char a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "HUD: service encountered error when setting enabled:%d %@", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

@end