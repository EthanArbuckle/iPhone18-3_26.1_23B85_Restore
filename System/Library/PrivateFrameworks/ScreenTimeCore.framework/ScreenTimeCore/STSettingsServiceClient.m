@interface STSettingsServiceClient
- (BOOL)isCloudSyncEnabled:(id *)a3;
- (BOOL)isRestrictAdultContentEnabled:(id *)a3;
- (BOOL)requestLegacyUsageForUser:(id)a3 withError:(id *)a4;
- (BOOL)updateLegacyUsageWithError:(id *)a3;
- (STSettingsServiceClient)init;
- (id)startCoreDataServerWithError:(id *)a3;
- (void)dealloc;
- (void)processSettingsChangesSinceHistoryToken:(id)a3 withCompletion:(id)a4;
@end

@implementation STSettingsServiceClient

- (STSettingsServiceClient)init
{
  v6.receiver = self;
  v6.super_class = STSettingsServiceClient;
  v2 = [(STSettingsServiceClient *)&v6 init];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3077578];
  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.settings" options:4096];
  [v4 setRemoteObjectInterface:v3];
  [v4 setInterruptionHandler:&__block_literal_global_11];
  [v4 setInvalidationHandler:&__block_literal_global_20];
  [v4 activate];
  [(STSettingsServiceClient *)v2 setConnection:v4];

  return v2;
}

void __31__STSettingsServiceClient_init__block_invoke()
{
  v0 = +[STLog settingsService];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __31__STSettingsServiceClient_init__block_invoke_cold_1(v0);
  }
}

void __31__STSettingsServiceClient_init__block_invoke_18()
{
  v0 = +[STLog settingsService];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __31__STSettingsServiceClient_init__block_invoke_18_cold_1(v0);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = STSettingsServiceClient;
  [(STSettingsServiceClient *)&v4 dealloc];
}

- (id)startCoreDataServerWithError:(id *)a3
{
  v5 = _os_activity_create(&dword_1B831F000, "STSettingsServiceClient.startCoreDataServer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v6 = [(STSettingsServiceClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke;
  v12[3] = &unk_1E7CE6BA8;
  v12[4] = &v13;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_24;
  v11[3] = &unk_1E7CE76E8;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 startCoreDataServerWithCompletionHandler:v11];
  if (a3)
  {
    v8 = v14[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  os_activity_scope_leave(&state);

  return v9;
}

void __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog settingsService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = +[STLog settingsService];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_24_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)processSettingsChangesSinceHistoryToken:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B831F000, "STSettingsServiceClient.processSettingsChangesSinceHistoryToken", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = [(STSettingsServiceClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__STSettingsServiceClient_processSettingsChangesSinceHistoryToken_withCompletion___block_invoke;
  v12[3] = &unk_1E7CE6CE8;
  v10 = v7;
  v13 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v12];

  [v11 processSettingsChangesSinceHistoryToken:v6 completionHandler:v10];
  os_activity_scope_leave(&state);
}

void __82__STSettingsServiceClient_processSettingsChangesSinceHistoryToken_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog settingsService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (BOOL)updateLegacyUsageWithError:(id *)a3
{
  v5 = _os_activity_create(&dword_1B831F000, "STSettingsServiceClient.updateLegacyUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v6 = [(STSettingsServiceClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__STSettingsServiceClient_updateLegacyUsageWithError___block_invoke;
  v12[3] = &unk_1E7CE71C8;
  v12[4] = &v13;
  v12[5] = &v19;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__STSettingsServiceClient_updateLegacyUsageWithError___block_invoke_26;
  v11[3] = &unk_1E7CE6BD0;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 updateLegacyUsageWithCompletionHandler:v11];
  if (a3)
  {
    v8 = v14[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = *(v20 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  return v9;
}

void __54__STSettingsServiceClient_updateLegacyUsageWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog settingsService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __54__STSettingsServiceClient_updateLegacyUsageWithError___block_invoke_26(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = +[STLog settingsService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__STSettingsServiceClient_updateLegacyUsageWithError___block_invoke_26_cold_1();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)requestLegacyUsageForUser:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = _os_activity_create(&dword_1B831F000, "STSettingsServiceClient.updateLegacyUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v8 = [(STSettingsServiceClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__STSettingsServiceClient_requestLegacyUsageForUser_withError___block_invoke;
  v14[3] = &unk_1E7CE71C8;
  v14[4] = &v15;
  v14[5] = &v21;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__STSettingsServiceClient_requestLegacyUsageForUser_withError___block_invoke_28;
  v13[3] = &unk_1E7CE6BD0;
  v13[4] = &v15;
  v13[5] = &v21;
  [v9 requestLegacyUsageForUser:v6 withCompletionHandler:v13];
  if (a4)
  {
    v10 = v16[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  return v11;
}

void __63__STSettingsServiceClient_requestLegacyUsageForUser_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog settingsService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __63__STSettingsServiceClient_requestLegacyUsageForUser_withError___block_invoke_28(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = +[STLog settingsService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__STSettingsServiceClient_updateLegacyUsageWithError___block_invoke_26_cold_1();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __55__STSettingsServiceClient_setCloudSync_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog settingsService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

- (BOOL)isCloudSyncEnabled:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v4 = [(STSettingsServiceClient *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__STSettingsServiceClient_isCloudSyncEnabled___block_invoke;
  v10[3] = &unk_1E7CE71C8;
  v10[4] = &v11;
  v10[5] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__STSettingsServiceClient_isCloudSyncEnabled___block_invoke_29;
  v9[3] = &unk_1E7CE6BD0;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 isCloudSyncEnabled:v9];
  if (a3)
  {
    v6 = v12[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  v7 = *(v18 + 24);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v7;
}

void __46__STSettingsServiceClient_isCloudSyncEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog settingsService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __46__STSettingsServiceClient_isCloudSyncEnabled___block_invoke_29(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)isRestrictAdultContentEnabled:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v4 = [(STSettingsServiceClient *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__STSettingsServiceClient_isRestrictAdultContentEnabled___block_invoke;
  v10[3] = &unk_1E7CE71C8;
  v10[4] = &v11;
  v10[5] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__STSettingsServiceClient_isRestrictAdultContentEnabled___block_invoke_30;
  v9[3] = &unk_1E7CE6BD0;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 isRestrictAdultContentEnabled:v9];
  if (a3)
  {
    v6 = v12[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  v7 = *(v18 + 24);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v7;
}

void __57__STSettingsServiceClient_isRestrictAdultContentEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog settingsService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __57__STSettingsServiceClient_isRestrictAdultContentEnabled___block_invoke_30(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "XPC error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__STSettingsServiceClient_startCoreDataServerWithError___block_invoke_24_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Error starting core data server : %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__STSettingsServiceClient_updateLegacyUsageWithError___block_invoke_26_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Error processing changes : %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end