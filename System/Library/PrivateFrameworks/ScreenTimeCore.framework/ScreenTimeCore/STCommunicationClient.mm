@interface STCommunicationClient
+ (id)_newConnection;
- (STCommunicationClient)init;
- (id)currentConfigurationWithError:(id *)error;
- (void)authenticateForCommunicationConfigurationOverrideWithCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation STCommunicationClient

- (STCommunicationClient)init
{
  v6.receiver = self;
  v6.super_class = STCommunicationClient;
  v2 = [(STCommunicationClient *)&v6 init];
  if (v2)
  {
    v3 = +[STCommunicationClient _newConnection];
    connection = v2->_connection;
    v2->_connection = v3;

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

+ (id)_newConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.communication" options:4096];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3077458];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = STCommunicationClient;
  [(STCommunicationClient *)&v3 dealloc];
}

- (void)authenticateForCommunicationConfigurationOverrideWithCompletionHandler:(id)handler
{
  v42[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = +[STLog communicationClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Authenticating for communication configuration override", buf, 2u);
  }

  *buf = 0;
  v40[0] = buf;
  v40[1] = 0x3032000000;
  v40[2] = __Block_byref_object_copy__2;
  v40[3] = __Block_byref_object_dispose__2;
  v41 = 0;
  connection = [(STCommunicationClient *)self connection];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __96__STCommunicationClient_authenticateForCommunicationConfigurationOverrideWithCompletionHandler___block_invoke;
  v38[3] = &unk_1E7CE6BA8;
  v38[4] = buf;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v38];

  if (*(v40[0] + 40))
  {
    v8 = +[STLog communicationClient];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(STCommunicationClient *)v40 authenticateForCommunicationConfigurationOverrideWithCompletionHandler:v8, v9, v10, v11, v12, v13, v14];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, *(v40[0] + 40));
  }

  else
  {
    v15 = objc_opt_new();
    providePasscodeAuthenticationProviderService = [v15 providePasscodeAuthenticationProviderService];
    v17 = objc_alloc(MEMORY[0x1E69C7548]);
    currentProcess = [MEMORY[0x1E69C7640] currentProcess];
    v19 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.screentimeunlock" name:@"WaitForAuth"];
    v42[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    v21 = [v17 initWithExplanation:@"Wait for ScreenTime Auth" target:currentProcess attributes:v20];

    v37 = 0;
    LOBYTE(v19) = [v21 acquireWithError:&v37];
    v22 = v37;
    if ((v19 & 1) == 0)
    {
      v23 = +[STLog communicationClient];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(STCommunicationClient *)v22 authenticateForCommunicationConfigurationOverrideWithCompletionHandler:v23, v24, v25, v26, v27, v28, v29];
      }

      v21 = 0;
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __96__STCommunicationClient_authenticateForCommunicationConfigurationOverrideWithCompletionHandler___block_invoke_23;
    v33[3] = &unk_1E7CE7128;
    v36 = handlerCopy;
    v30 = v21;
    v34 = v30;
    v31 = v15;
    v35 = v31;
    [providePasscodeAuthenticationProviderService authenticatePasscodeWithCommunicationServiceProxy:v7 completionHandler:v33];
  }

  _Block_object_dispose(buf, 8);
  v32 = *MEMORY[0x1E69E9840];
}

void __96__STCommunicationClient_authenticateForCommunicationConfigurationOverrideWithCompletionHandler___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[STLog communicationClient];
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Successfully authenticated passcode", v15, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __96__STCommunicationClient_authenticateForCommunicationConfigurationOverrideWithCompletionHandler___block_invoke_23_cold_1(v5, v8, v9, v10, v11, v12, v13, v14);
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) invalidate];
}

- (id)currentConfigurationWithError:(id *)error
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
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  connection = [(STCommunicationClient *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__STCommunicationClient_currentConfigurationWithError___block_invoke;
  v15[3] = &unk_1E7CE6BA8;
  v15[4] = buf;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v15];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__STCommunicationClient_currentConfigurationWithError___block_invoke_2;
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

  if (error)
  {
    *error = *(v23 + 5);
  }

  v11 = v17[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __55__STCommunicationClient_currentConfigurationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)authenticateForCommunicationConfigurationOverrideWithCompletionHandler:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Failed to authenticate for communication configuration override: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)authenticateForCommunicationConfigurationOverrideWithCompletionHandler:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Failed to grab RBSAssertion. %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __96__STCommunicationClient_authenticateForCommunicationConfigurationOverrideWithCompletionHandler___block_invoke_23_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Failed to authenticate passcode: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end