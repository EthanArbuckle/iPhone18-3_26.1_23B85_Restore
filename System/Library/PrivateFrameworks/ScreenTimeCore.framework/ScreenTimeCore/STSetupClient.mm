@interface STSetupClient
+ (id)_newConnection;
- (BOOL)applyUpdatedConfiguration:(id)a3 error:(id *)a4;
- (STSetupClient)init;
- (id)currentConfigurationForUser:(id)a3 error:(id *)a4;
- (void)collectPasscodeFromUserWithCompletionHandler:(id)a3;
- (void)dealloc;
@end

@implementation STSetupClient

- (STSetupClient)init
{
  v6.receiver = self;
  v6.super_class = STSetupClient;
  v2 = [(STSetupClient *)&v6 init];
  if (v2)
  {
    v3 = +[STSetupClient _newConnection];
    connection = v2->_connection;
    v2->_connection = v3;

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = STSetupClient;
  [(STSetupClient *)&v3 dealloc];
}

+ (id)_newConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.setup" options:4096];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30776F8];
  [v2 setRemoteObjectInterface:v3];

  return v2;
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
  v30 = __Block_byref_object_copy__14;
  v31 = __Block_byref_object_dispose__14;
  v32 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = 0;
  v8 = [(STSetupClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__STSetupClient_currentConfigurationForUser_error___block_invoke;
  v17[3] = &unk_1E7CE6BA8;
  v17[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v17];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__STSetupClient_currentConfigurationForUser_error___block_invoke_2;
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

void __51__STSetupClient_currentConfigurationForUser_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  v23 = __Block_byref_object_copy__14;
  v24 = __Block_byref_object_dispose__14;
  v25 = 0;
  v8 = [(STSetupClient *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__STSetupClient_applyUpdatedConfiguration_error___block_invoke;
  v16[3] = &unk_1E7CE6BA8;
  v16[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__STSetupClient_applyUpdatedConfiguration_error___block_invoke_2;
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
  v17[0] = buf;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy__14;
  v17[3] = __Block_byref_object_dispose__14;
  v18 = 0;
  v6 = [(STSetupClient *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__STSetupClient_collectPasscodeFromUserWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CE6BA8;
  v15[4] = buf;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];

  if (*(v17[0] + 40))
  {
    v8 = +[STLog setupClient];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(STSetupServiceClient *)v17 collectPasscodeFromUserWithCompletionHandler:v8];
    }

    (*(v4 + 2))(v4, 0, *(v17[0] + 40));
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [v9 providePasscodeProviderService];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__STSetupClient_collectPasscodeFromUserWithCompletionHandler___block_invoke_14;
    v12[3] = &unk_1E7CE7CA8;
    v14 = v4;
    v11 = v9;
    v13 = v11;
    [v10 collectPasscodeWithSetupServiceProxy:v7 completionHandler:v12];
  }

  _Block_object_dispose(buf, 8);
}

void __62__STSetupClient_collectPasscodeFromUserWithCompletionHandler___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[STLog setupClient];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Successfully collected passcode", v10, 2u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__STSetupClient_collectPasscodeFromUserWithCompletionHandler___block_invoke_14_cold_1(v6, v8);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

void __62__STSetupClient_collectPasscodeFromUserWithCompletionHandler___block_invoke_14_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to collect passcode: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end