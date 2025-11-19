@interface STCommunicationServiceClient
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (STCommunicationServiceClient)init;
- (id)currentConfigurationWithError:(id *)a3;
- (void)authenticateForCommunicationConfigurationOverrideWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)receivePasscodeAuthenticationResult:(id)a3 completionHandler:(id)a4;
@end

@implementation STCommunicationServiceClient

- (STCommunicationServiceClient)init
{
  v6.receiver = self;
  v6.super_class = STCommunicationServiceClient;
  v2 = [(STCommunicationServiceClient *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3077698];
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.communication" options:4096];
    [v4 setRemoteObjectInterface:v3];
    [v4 setInterruptionHandler:&__block_literal_global_17];
    [v4 setInvalidationHandler:&__block_literal_global_14];
    [v4 resume];
    [(STCommunicationServiceClient *)v2 setConnection:v4];
  }

  return v2;
}

void __36__STCommunicationServiceClient_init__block_invoke()
{
  v0 = +[STLog communicationClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __36__STCommunicationServiceClient_init__block_invoke_cold_1();
  }
}

void __36__STCommunicationServiceClient_init__block_invoke_12()
{
  v0 = +[STLog communicationClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __36__STCommunicationServiceClient_init__block_invoke_12_cold_1();
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = STCommunicationServiceClient;
  [(STCommunicationServiceClient *)&v4 dealloc];
}

- (void)authenticateForCommunicationConfigurationOverrideWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STLog communicationClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Authenticating for communication configuration override", buf, 2u);
  }

  *buf = 0;
  v14[0] = buf;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__13;
  v14[3] = __Block_byref_object_dispose__13;
  v15 = 0;
  v6 = [(STCommunicationServiceClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__STCommunicationServiceClient_authenticateForCommunicationConfigurationOverrideWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CE6BA8;
  v12[4] = buf;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  if (*(v14[0] + 40))
  {
    v8 = +[STLog communicationClient];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(STCommunicationServiceClient *)v14 authenticateForCommunicationConfigurationOverrideWithCompletionHandler:v8];
    }

    (*(v4 + 2))(v4, 0, *(v14[0] + 40));
  }

  else
  {
    v9 = [MEMORY[0x1E696B0D8] anonymousListener];
    [(STCommunicationServiceClient *)self setActiveListener:v9];
    [v9 setDelegate:self];
    [(STCommunicationServiceClient *)self setProvidedService:self];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3067BB0];
    [(STCommunicationServiceClient *)self setProvidedServiceInterface:v10];

    v11 = [v9 endpoint];
    objc_storeStrong(&self->_clientListenerEndpoint, v11);
    [v9 resume];
    [(STCommunicationServiceClient *)self setPendingAuthenticationCompletionHandler:v4];
    [v7 authenticatePasscodeForUserWithEndpoint:v11 completionHandler:&__block_literal_global_24];
  }

  _Block_object_dispose(buf, 8);
}

void __103__STCommunicationServiceClient_authenticateForCommunicationConfigurationOverrideWithCompletionHandler___block_invoke_22()
{
  v0 = +[STLog communicationClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B831F000, v0, OS_LOG_TYPE_DEFAULT, "Prompted for passcode authentication", v1, 2u);
  }
}

- (id)currentConfigurationWithError:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = +[STLog communicationClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting current communication configuration", buf, 2u);
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v6 = [(STCommunicationServiceClient *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__STCommunicationServiceClient_currentConfigurationWithError___block_invoke;
  v15[3] = &unk_1E7CE6BA8;
  v15[4] = buf;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__STCommunicationServiceClient_currentConfigurationWithError___block_invoke_2;
  v14[3] = &unk_1E7CE7150;
  v14[4] = &v16;
  v14[5] = buf;
  [v7 currentCommunicationConfigurationWithCompletionHandler:v14];
  v8 = +[STLog communicationClient];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v17[5];
    v10 = *(v23 + 5);
    *v28 = 138543618;
    v29 = v9;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Got current communication configuration: %{public}@ - Error: %{public}@", v28, 0x16u);
  }

  if (a3)
  {
    *a3 = *(v23 + 5);
  }

  v11 = v17[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __62__STCommunicationServiceClient_currentConfigurationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)receivePasscodeAuthenticationResult:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STCommunicationServiceClient *)self pendingAuthenticationCompletionHandler];
  if (v8)
  {
    v9 = +[STLog communicationClient];
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Resolving pending completion with authentication result", v14, 2u);
      }

      (v8)[2](v8, v6, 0);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [STSetupServiceClient receivePasscode:completionHandler:];
      }

      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:51 userInfo:0];
      (v8)[2](v8, 0, v13);
    }

    [(STCommunicationServiceClient *)self setPendingAuthenticationCompletionHandler:0];
    v7[2](v7, 0);
  }

  else
  {
    v11 = +[STLog communicationClient];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [STCommunicationServiceClient receivePasscodeAuthenticationResult:completionHandler:];
    }

    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:1 userInfo:0];
    v7[2](v7, v12);

    v7 = v12;
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STCommunicationServiceClient *)self activeListener];

  if (v8 == v7)
  {
    v9 = [(STCommunicationServiceClient *)self providedServiceInterface];
    if (v9)
    {
      [v6 setExportedInterface:v9];
      [v6 setExportedObject:self];
      [v6 setInterruptionHandler:&__block_literal_global_28];
      [v6 setInvalidationHandler:&__block_literal_global_31];
      [v6 resume];
      v10 = 1;
      goto LABEL_7;
    }

    v12 = +[STLog communicationClient];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [STSetupServiceClient listener:shouldAcceptNewConnection:];
    }
  }

  else
  {
    v9 = +[STLog communicationClient];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STSetupServiceClient listener:shouldAcceptNewConnection:];
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

void __67__STCommunicationServiceClient_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = +[STLog communicationClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __67__STCommunicationServiceClient_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __67__STCommunicationServiceClient_listener_shouldAcceptNewConnection___block_invoke_29()
{
  v0 = +[STLog communicationClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __67__STCommunicationServiceClient_listener_shouldAcceptNewConnection___block_invoke_29_cold_1();
  }
}

- (void)authenticateForCommunicationConfigurationOverrideWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to authenticate for communication configuration override: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end