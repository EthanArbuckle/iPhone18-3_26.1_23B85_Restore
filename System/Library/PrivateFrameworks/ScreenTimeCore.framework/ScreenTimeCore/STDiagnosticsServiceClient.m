@interface STDiagnosticsServiceClient
- (BOOL)postNotificationWithContext:(id)a3 error:(id *)a4;
- (BOOL)postWeeklyReportNotification:(id *)a3;
- (BOOL)removeNotificationWithContext:(id)a3 error:(id *)a4;
- (BOOL)repairBlueprintsWithError:(id *)a3;
- (BOOL)sendBlueprintChangesWithError:(id *)a3;
- (BOOL)sendBlueprintsWithError:(id *)a3;
- (BOOL)sendCheckInRequestOnV2WithError:(id *)a3;
- (BOOL)sendCheckInRequestWithError:(id *)a3;
- (BOOL)sendSettingsChangesWithError:(id *)a3;
- (BOOL)sendSettingsWithError:(id *)a3;
- (BOOL)sendUserDeviceStateWithError:(id *)a3;
- (BOOL)setLocalConfigurationVersion:(id)a3 error:(id *)a4;
- (STDiagnosticsServiceClient)init;
- (id)configurationVersionWithError:(id *)a3;
- (id)localConfigurationVersionWithError:(id *)a3;
- (void)didReceiveCloudKitMessage:(id)a3;
- (void)didReceiveGenericMessage:(id)a3;
- (void)didReceiveIDSMessage:(id)a3;
- (void)killScreenTimeAgent:(id)a3 completionHandler:(id)a4;
- (void)registerCallbackForCloudKitMessages:(id)a3;
- (void)registerCallbackForGenericMessages:(id)a3;
- (void)registerCallbackForIDSMessages:(id)a3;
@end

@implementation STDiagnosticsServiceClient

- (STDiagnosticsServiceClient)init
{
  v15.receiver = self;
  v15.super_class = STDiagnosticsServiceClient;
  v2 = [(STDiagnosticsServiceClient *)&v15 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.diagnostics-service" options:4096];
  connection = v2->_connection;
  v2->_connection = v3;

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30774B8];
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v5 setClasses:v6 forSelector:sel_didReceiveIDSMessage_ argumentIndex:0 ofReply:0];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v5 setClasses:v7 forSelector:sel_didReceiveCloudKitMessage_ argumentIndex:0 ofReply:0];

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v5 setClasses:v8 forSelector:sel_didReceiveGenericMessage_ argumentIndex:0 ofReply:0];

  [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];
  [(NSXPCConnection *)v2->_connection setExportedInterface:v5];
  [(NSXPCConnection *)v2->_connection setExportedObject:v2];
  v9 = [(NSXPCConnection *)v2->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  remoteObject = v2->_remoteObject;
  v2->_remoteObject = v9;

  [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_42];
  [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_45];
  if (v2->_remoteObject)
  {
    [(NSXPCConnection *)v2->_connection resume];

LABEL_4:
    v11 = v2;
    goto LABEL_8;
  }

  v12 = +[STLog test];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_DEFAULT, "Failed to connect to ScreenTimeAgent", buf, 2u);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

void __34__STDiagnosticsServiceClient_init__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[STLog test];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1B831F000, v3, OS_LOG_TYPE_DEFAULT, "Failed to connect to ScreenTimeAgent: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __34__STDiagnosticsServiceClient_init__block_invoke_39()
{
  v0 = +[STLog test];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B831F000, v0, OS_LOG_TYPE_DEFAULT, "ScreenTimeAgent connection interrupted", v1, 2u);
  }
}

void __34__STDiagnosticsServiceClient_init__block_invoke_43()
{
  v0 = +[STLog test];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B831F000, v0, OS_LOG_TYPE_DEFAULT, "ScreenTimeAgent connection invalidated", v1, 2u);
  }
}

- (void)registerCallbackForIDSMessages:(id)a3
{
  if (a3)
  {
    [(STDiagnosticsServiceClient *)self setIdsMessageCallback:?];
    v4 = [(STDiagnosticsServiceClient *)self remoteObject];
    [v4 registerForIDSMessages];
  }
}

- (void)registerCallbackForCloudKitMessages:(id)a3
{
  if (a3)
  {
    [(STDiagnosticsServiceClient *)self setCloudKitMessageCallback:?];
    v4 = [(STDiagnosticsServiceClient *)self remoteObject];
    [v4 registerForCloudKitMessages];
  }
}

- (void)registerCallbackForGenericMessages:(id)a3
{
  if (a3)
  {
    [(STDiagnosticsServiceClient *)self setGenericMessageCallback:?];
    v4 = [(STDiagnosticsServiceClient *)self remoteObject];
    [v4 registerForGenericMessages];
  }
}

- (void)didReceiveIDSMessage:(id)a3
{
  v6 = a3;
  v4 = [(STDiagnosticsServiceClient *)self idsMessageCallback];

  if (v4)
  {
    v5 = [(STDiagnosticsServiceClient *)self idsMessageCallback];
    (v5)[2](v5, v6);
  }
}

- (void)didReceiveCloudKitMessage:(id)a3
{
  v6 = a3;
  v4 = [(STDiagnosticsServiceClient *)self cloudKitMessageCallback];

  if (v4)
  {
    v5 = [(STDiagnosticsServiceClient *)self cloudKitMessageCallback];
    (v5)[2](v5, v6);
  }
}

- (void)didReceiveGenericMessage:(id)a3
{
  v6 = a3;
  v4 = [(STDiagnosticsServiceClient *)self genericMessageCallback];

  if (v4)
  {
    v5 = [(STDiagnosticsServiceClient *)self genericMessageCallback];
    (v5)[2](v5, v6);
  }
}

- (id)localConfigurationVersionWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__STDiagnosticsServiceClient_localConfigurationVersionWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__STDiagnosticsServiceClient_localConfigurationVersionWithError___block_invoke_2;
  v8[3] = &unk_1E7CE71A0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 localConfigurationVersionWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = v17[5];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);

  return v6;
}

void __65__STDiagnosticsServiceClient_localConfigurationVersionWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (BOOL)setLocalConfigurationVersion:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = [(STDiagnosticsServiceClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__STDiagnosticsServiceClient_setLocalConfigurationVersion_error___block_invoke;
  v12[3] = &unk_1E7CE71C8;
  v12[4] = &v13;
  v12[5] = &v19;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__STDiagnosticsServiceClient_setLocalConfigurationVersion_error___block_invoke_2;
  v11[3] = &unk_1E7CE71C8;
  v11[4] = &v13;
  v11[5] = &v19;
  [v8 setLocalConfigurationVersion:v6 completionHandler:v11];
  if (a4)
  {
    *a4 = v14[5];
  }

  v9 = *(v20 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __65__STDiagnosticsServiceClient_setLocalConfigurationVersion_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __65__STDiagnosticsServiceClient_setLocalConfigurationVersion_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (id)configurationVersionWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__STDiagnosticsServiceClient_configurationVersionWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__STDiagnosticsServiceClient_configurationVersionWithError___block_invoke_2;
  v8[3] = &unk_1E7CE71A0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 configurationVersionWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = v17[5];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);

  return v6;
}

void __60__STDiagnosticsServiceClient_configurationVersionWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (BOOL)repairBlueprintsWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__STDiagnosticsServiceClient_repairBlueprintsWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__STDiagnosticsServiceClient_repairBlueprintsWithError___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 repairBlueprintsWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)sendCheckInRequestWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__STDiagnosticsServiceClient_sendCheckInRequestWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__STDiagnosticsServiceClient_sendCheckInRequestWithError___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 sendCheckInRequestWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)sendCheckInRequestOnV2WithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__STDiagnosticsServiceClient_sendCheckInRequestOnV2WithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__STDiagnosticsServiceClient_sendCheckInRequestOnV2WithError___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 sendCheckInRequestOnV2WithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)sendBlueprintsWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__STDiagnosticsServiceClient_sendBlueprintsWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__STDiagnosticsServiceClient_sendBlueprintsWithError___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 sendBlueprintsWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)sendBlueprintChangesWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__STDiagnosticsServiceClient_sendBlueprintChangesWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__STDiagnosticsServiceClient_sendBlueprintChangesWithError___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 sendBlueprintChangesWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)sendSettingsWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__STDiagnosticsServiceClient_sendSettingsWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__STDiagnosticsServiceClient_sendSettingsWithError___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 sendSettingsWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)sendSettingsChangesWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__STDiagnosticsServiceClient_sendSettingsChangesWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__STDiagnosticsServiceClient_sendSettingsChangesWithError___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 sendSettingsChangesWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)sendUserDeviceStateWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__STDiagnosticsServiceClient_sendUserDeviceStateWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v10;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__STDiagnosticsServiceClient_sendUserDeviceStateWithError___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 sendUserDeviceStateWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)postWeeklyReportNotification:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = [(STDiagnosticsServiceClient *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__STDiagnosticsServiceClient_postWeeklyReportNotification___block_invoke;
  v9[3] = &unk_1E7CE71C8;
  v9[4] = &v10;
  v9[5] = &v16;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__STDiagnosticsServiceClient_postWeeklyReportNotification___block_invoke_2;
  v8[3] = &unk_1E7CE6BD0;
  v8[4] = &v10;
  v8[5] = &v16;
  [v5 postWeeklyReportNotificationWithCompletionHandler:v8];
  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

void __59__STDiagnosticsServiceClient_postWeeklyReportNotification___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __59__STDiagnosticsServiceClient_postWeeklyReportNotification___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)postNotificationWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = [(STDiagnosticsServiceClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__STDiagnosticsServiceClient_postNotificationWithContext_error___block_invoke;
  v12[3] = &unk_1E7CE71C8;
  v12[4] = &v13;
  v12[5] = &v19;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__STDiagnosticsServiceClient_postNotificationWithContext_error___block_invoke_2;
  v11[3] = &unk_1E7CE6BD0;
  v11[4] = &v13;
  v11[5] = &v19;
  [v8 postNotificationWithContext:v6 completionHandler:v11];
  if (a4)
  {
    *a4 = v14[5];
  }

  v9 = *(v20 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __64__STDiagnosticsServiceClient_postNotificationWithContext_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __64__STDiagnosticsServiceClient_postNotificationWithContext_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)removeNotificationWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = [(STDiagnosticsServiceClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__STDiagnosticsServiceClient_removeNotificationWithContext_error___block_invoke;
  v12[3] = &unk_1E7CE71C8;
  v12[4] = &v13;
  v12[5] = &v19;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__STDiagnosticsServiceClient_removeNotificationWithContext_error___block_invoke_2;
  v11[3] = &unk_1E7CE6BD0;
  v11[4] = &v13;
  v11[5] = &v19;
  [v8 removeNotificationWithContext:v6 completionHandler:v11];
  if (a4)
  {
    *a4 = v14[5];
  }

  v9 = *(v20 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __66__STDiagnosticsServiceClient_removeNotificationWithContext_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __66__STDiagnosticsServiceClient_removeNotificationWithContext_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)killScreenTimeAgent:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STDiagnosticsServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__STDiagnosticsServiceClient_killScreenTimeAgent_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v12 = v6;
  v9 = v6;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v11];

  [v10 killScreenTimeAgent:v7 completionHandler:v9];
}

void __68__STDiagnosticsServiceClient_killScreenTimeAgent_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog screentime];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__STDiagnosticsServiceClient_killScreenTimeAgent_completionHandler___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __68__STDiagnosticsServiceClient_killScreenTimeAgent_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to communicate with ScreenTimeAgent %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end