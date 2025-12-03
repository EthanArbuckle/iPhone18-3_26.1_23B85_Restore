@interface STContactsServiceClient
- (STContactsServiceClient)init;
- (void)authenticateRestrictionsPasscode:(id)passcode completionHandler:(id)handler;
- (void)dealloc;
- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler;
- (void)presentRemotePINControllerWithCompletionHandler:(id)handler;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler;
@end

@implementation STContactsServiceClient

- (STContactsServiceClient)init
{
  v6.receiver = self;
  v6.super_class = STContactsServiceClient;
  v2 = [(STContactsServiceClient *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3077518];
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.Contacts" options:4096];
    [v4 setRemoteObjectInterface:v3];
    [v4 setInterruptionHandler:&__block_literal_global_4];
    [v4 setInvalidationHandler:&__block_literal_global_15];
    [v4 resume];
    [(STContactsServiceClient *)v2 setConnection:v4];
  }

  return v2;
}

void __31__STContactsServiceClient_init__block_invoke()
{
  v0 = +[STLog contactsService];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __31__STContactsServiceClient_init__block_invoke_cold_1(v0);
  }
}

void __31__STContactsServiceClient_init__block_invoke_13()
{
  v0 = +[STLog contactsService];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __31__STContactsServiceClient_init__block_invoke_13_cold_1(v0);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = STContactsServiceClient;
  [(STContactsServiceClient *)&v4 dealloc];
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x3032000000;
  v11[2] = __Block_byref_object_copy__4;
  v11[3] = __Block_byref_object_dispose__4;
  v12 = 0;
  connection = [(STContactsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__STContactsServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7CE71C8;
  v9[4] = &v10;
  v9[5] = &v13;
  v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__STContactsServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v10;
  v8[5] = &v13;
  [v6 isRestrictionsPasscodeSetWithCompletionHandler:v8];
  if (*(v11[0] + 40))
  {
    v7 = +[STLog contactsService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [STContactsServiceClient isRestrictionsPasscodeSetWithCompletionHandler:v11];
    }
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, *(v14 + 24), *(v11[0] + 40));
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v13, 8);
}

void __74__STContactsServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __74__STContactsServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
    a2 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)authenticateRestrictionsPasscode:(id)passcode completionHandler:(id)handler
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__4;
  v13[3] = __Block_byref_object_dispose__4;
  v14 = 0;
  connection = [(STContactsServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__STContactsServiceClient_authenticateRestrictionsPasscode_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE6BA8;
  v11[4] = &v12;
  v9 = [connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  if (*(v13[0] + 40))
  {
    v10 = +[STLog contactsService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [STContactsServiceClient authenticateRestrictionsPasscode:v13 completionHandler:?];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, *(v13[0] + 40));
    }
  }

  [v9 authenticateRestrictionsPasscode:passcodeCopy completionHandler:handlerCopy];

  _Block_object_dispose(&v12, 8);
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x3032000000;
  v10[2] = __Block_byref_object_copy__4;
  v10[3] = __Block_byref_object_dispose__4;
  v11 = 0;
  connection = [(STContactsServiceClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100__STContactsServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CE6BA8;
  v8[4] = &v9;
  v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:v8];

  if (*(v10[0] + 40))
  {
    v7 = +[STLog contactsService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [STContactsServiceClient restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:v10];
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, *(v10[0] + 40));
    }
  }

  else
  {
    [v6 restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:handlerCopy];
  }

  _Block_object_dispose(&v9, 8);
}

- (void)presentRemotePINControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x3032000000;
  v10[2] = __Block_byref_object_copy__4;
  v10[3] = __Block_byref_object_dispose__4;
  v11 = 0;
  connection = [(STContactsServiceClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__STContactsServiceClient_presentRemotePINControllerWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CE6BA8;
  v8[4] = &v9;
  v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:v8];

  if (*(v10[0] + 40))
  {
    v7 = +[STLog contactsService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [STContactsServiceClient restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:v10];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, *(v10[0] + 40));
    }
  }

  else
  {
    [v6 presentRemotePINControllerWithCompletionHandler:handlerCopy];
  }

  _Block_object_dispose(&v9, 8);
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed checking restrictions passcode with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)authenticateRestrictionsPasscode:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed to authenticate passcode with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed to fetch private service proxy with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end