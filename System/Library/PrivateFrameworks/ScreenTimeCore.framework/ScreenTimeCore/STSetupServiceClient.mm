@interface STSetupServiceClient
- (BOOL)applyUpdatedConfiguration:(id)a3 error:(id *)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (STSetupServiceClient)init;
- (id)currentConfigurationForUser:(id)a3 error:(id *)a4;
- (void)collectPasscodeFromUserWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)receivePasscode:(id)a3 completionHandler:(id)a4;
@end

@implementation STSetupServiceClient

- (STSetupServiceClient)init
{
  v6.receiver = self;
  v6.super_class = STSetupServiceClient;
  v2 = [(STSetupServiceClient *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30775D8];
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.setup" options:4096];
    [v4 setRemoteObjectInterface:v3];
    [v4 setInterruptionHandler:&__block_literal_global_16];
    [v4 setInvalidationHandler:&__block_literal_global_15_0];
    [v4 resume];
    [(STSetupServiceClient *)v2 setConnection:v4];
  }

  return v2;
}

void __28__STSetupServiceClient_init__block_invoke()
{
  v0 = +[STLog communicationClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __28__STSetupServiceClient_init__block_invoke_cold_1();
  }
}

void __28__STSetupServiceClient_init__block_invoke_13()
{
  v0 = +[STLog communicationClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __28__STSetupServiceClient_init__block_invoke_13_cold_1();
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = STSetupServiceClient;
  [(STSetupServiceClient *)&v3 dealloc];
}

- (id)currentConfigurationForUser:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[STLog setupClient];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting current configuration for user: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__12;
  v31 = __Block_byref_object_dispose__12;
  v32 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  v8 = [(STSetupServiceClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__STSetupServiceClient_currentConfigurationForUser_error___block_invoke;
  v17[3] = &unk_1E7CE6BA8;
  v17[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v17];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__STSetupServiceClient_currentConfigurationForUser_error___block_invoke_2;
  v16[3] = &unk_1E7CE7C58;
  v16[4] = &v18;
  v16[5] = &buf;
  [v9 currentConfigurationForUser:v6 completionHandler:v16];
  v10 = +[STLog setupClient];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v19[5];
    v12 = *(*(&buf + 1) + 40);
    *v24 = 138543618;
    v25 = v11;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Got current configuration: %{public}@ - Error: %{public}@", v24, 0x16u);
  }

  if (a4)
  {
    *a4 = *(*(&buf + 1) + 40);
  }

  v13 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&buf, 8);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __58__STSetupServiceClient_currentConfigurationForUser_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)applyUpdatedConfiguration:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[STLog setupClient];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to apply configuration: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v8 = [(STSetupServiceClient *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__STSetupServiceClient_applyUpdatedConfiguration_error___block_invoke;
  v16[3] = &unk_1E7CE6BA8;
  v16[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__STSetupServiceClient_applyUpdatedConfiguration_error___block_invoke_2;
  v15[3] = &unk_1E7CE6BA8;
  v15[4] = &buf;
  [v9 applyUpdatedConfiguration:v6 completionHandler:v15];
  v10 = +[STLog setupClient];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(&buf + 1) + 40);
    *v17 = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Applied configuration: %{public}@ - Error: %{public}@", v17, 0x16u);
  }

  if (a4)
  {
    *a4 = *(*(&buf + 1) + 40);
  }

  v12 = *(*(&buf + 1) + 40) == 0;

  _Block_object_dispose(&buf, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)collectPasscodeFromUserWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STLog setupClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting user passcode collection", buf, 2u);
  }

  *buf = 0;
  v14[0] = buf;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__12;
  v14[3] = __Block_byref_object_dispose__12;
  v15 = 0;
  v6 = [(STSetupServiceClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__STSetupServiceClient_collectPasscodeFromUserWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CE6BA8;
  v12[4] = buf;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  if (*(v14[0] + 40))
  {
    v8 = +[STLog setupClient];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(STSetupServiceClient *)v14 collectPasscodeFromUserWithCompletionHandler:v8];
    }

    (*(v4 + 2))(v4, 0, *(v14[0] + 40));
  }

  else
  {
    v9 = [MEMORY[0x1E696B0D8] anonymousListener];
    [(STSetupServiceClient *)self setActiveListener:v9];
    [v9 setDelegate:self];
    [(STSetupServiceClient *)self setProvidedService:self];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3067840];
    [(STSetupServiceClient *)self setProvidedServiceInterface:v10];

    v11 = [v9 endpoint];
    objc_storeStrong(&self->_clientListenerEndpoint, v11);
    [v9 resume];
    [(STSetupServiceClient *)self setPendingProvidePasscodeCompletionHandler:v4];
    [v7 promptForPasscodeFromUserWithEndpoint:v11 completionHandler:&__block_literal_global_26];
  }

  _Block_object_dispose(buf, 8);
}

void __69__STSetupServiceClient_collectPasscodeFromUserWithCompletionHandler___block_invoke_24()
{
  v0 = +[STLog setupClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B831F000, v0, OS_LOG_TYPE_DEFAULT, "Prompted for passcode collection", v1, 2u);
  }
}

- (void)receivePasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STSetupServiceClient *)self pendingProvidePasscodeCompletionHandler];
  if (v8)
  {
    v9 = +[STLog setupClient];
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Resolving pending completion with passcode", v14, 2u);
      }

      (v8)[2](v8, v6, 0);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [STSetupServiceClient receivePasscode:completionHandler:];
      }

      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:48 userInfo:0];
      (v8)[2](v8, 0, v13);
    }

    [(STSetupServiceClient *)self setPendingProvidePasscodeCompletionHandler:0];
    v7[2](v7, 0);
  }

  else
  {
    v11 = +[STLog setupClient];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [STSetupServiceClient receivePasscode:completionHandler:];
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
  v8 = [(STSetupServiceClient *)self activeListener];

  if (v8 == v7)
  {
    v9 = [(STSetupServiceClient *)self providedServiceInterface];
    if (v9)
    {
      [v6 setExportedInterface:v9];
      [v6 setExportedObject:self];
      [v6 setInterruptionHandler:&__block_literal_global_29];
      [v6 setInvalidationHandler:&__block_literal_global_32];
      [v6 resume];
      v10 = 1;
      goto LABEL_7;
    }

    v12 = +[STLog setupClient];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [STSetupServiceClient listener:shouldAcceptNewConnection:];
    }
  }

  else
  {
    v9 = +[STLog setupClient];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STSetupServiceClient listener:shouldAcceptNewConnection:];
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

void __59__STSetupServiceClient_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = +[STLog setupClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __59__STSetupServiceClient_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __59__STSetupServiceClient_listener_shouldAcceptNewConnection___block_invoke_30()
{
  v0 = +[STLog setupClient];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __59__STSetupServiceClient_listener_shouldAcceptNewConnection___block_invoke_30_cold_1();
  }
}

- (void)collectPasscodeFromUserWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to collect passcode: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end