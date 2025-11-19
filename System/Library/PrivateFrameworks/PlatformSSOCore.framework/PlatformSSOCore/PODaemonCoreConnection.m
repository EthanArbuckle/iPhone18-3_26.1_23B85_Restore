@interface PODaemonCoreConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (PODaemonCoreConnection)initWithVolume:(id)a3;
- (void)_connectToService;
- (void)dealloc;
- (void)deviceConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)insertTokenForUserName:(id)a3 completion:(id)a4;
- (void)loginConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)retrievePendingSSOTokenForIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveStashedDecryptionContextForIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveStashedSSOTokenForIdentifier:(id)a3 completion:(id)a4;
- (void)saveCachedContextsToDiskWithCompletion:(id)a3;
- (void)savePendingSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)saveStashedDecryptionContext:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)saveStashedSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)updateLoginStateForIdentifier:(id)a3 state:(id)a4 loginDate:(id)a5 loginType:(id)a6 completion:(id)a7;
- (void)useVolume:(id)a3 completion:(id)a4;
- (void)userConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)userLoginStateForIdentifier:(id)a3 completion:(id)a4;
- (void)verifyTokenForUserName:(id)a3 passwordContext:(id)a4 completion:(id)a5;
@end

@implementation PODaemonCoreConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken != -1)
  {
    +[PODaemonCoreConnection xpcQueue];
  }

  v3 = xpcQueue_queue;

  return v3;
}

uint64_t __34__PODaemonCoreConnection_xpcQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PlatformPSSO.daemon-queue", 0);
  v1 = xpcQueue_queue;
  xpcQueue_queue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (PODaemonCoreConnection)initWithVolume:(id)a3
{
  v5 = a3;
  v6 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreConnection initWithVolume:];
  }

  v10.receiver = self;
  v10.super_class = PODaemonCoreConnection;
  v7 = [(PODaemonCoreConnection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_volume, a3);
    [(PODaemonCoreConnection *)v8 _connectToService];
  }

  return v8;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deviceConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v8 = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 deviceConfigurationForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)loginConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v8 = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__PODaemonCoreConnection_loginConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 loginConfigurationForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __69__PODaemonCoreConnection_loginConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)userConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v8 = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__PODaemonCoreConnection_userConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 userConfigurationForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __68__PODaemonCoreConnection_userConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)userLoginStateForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v8 = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__PODaemonCoreConnection_userLoginStateForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 userLoginStateForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __65__PODaemonCoreConnection_userLoginStateForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)updateLoginStateForIdentifier:(id)a3 state:(id)a4 loginDate:(id)a5 loginType:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v17 = [(PODaemonCoreConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__PODaemonCoreConnection_updateLoginStateForIdentifier_state_loginDate_loginType_completion___block_invoke;
    v21[3] = &unk_279A3E488;
    v18 = v16;
    v22 = v18;
    v19 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 updateLoginStateForIdentifier:v12 state:v13 loginDate:v14 loginType:v15 completion:v18];
  }

  else if (v16)
  {
    v20 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v16 + 2))(v16, 0, v20);
  }
}

void __93__PODaemonCoreConnection_updateLoginStateForIdentifier_state_loginDate_loginType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)savePendingSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v11 = [(PODaemonCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PODaemonCoreConnection_savePendingSSOTokens_identifier_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 savePendingSSOTokens:v8 identifier:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __69__PODaemonCoreConnection_savePendingSSOTokens_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)retrievePendingSSOTokenForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v8 = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__PODaemonCoreConnection_retrievePendingSSOTokenForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrievePendingSSOTokenForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __74__PODaemonCoreConnection_retrievePendingSSOTokenForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveStashedSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v11 = [(PODaemonCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PODaemonCoreConnection_saveStashedSSOTokens_identifier_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveStashedSSOTokens:v8 identifier:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __69__PODaemonCoreConnection_saveStashedSSOTokens_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)retrieveStashedSSOTokenForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v8 = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__PODaemonCoreConnection_retrieveStashedSSOTokenForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrieveStashedSSOTokenForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __74__PODaemonCoreConnection_retrieveStashedSSOTokenForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveStashedDecryptionContext:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v11 = [(PODaemonCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__PODaemonCoreConnection_saveStashedDecryptionContext_identifier_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveStashedDecryptionContext:v8 identifier:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __77__PODaemonCoreConnection_saveStashedDecryptionContext_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)retrieveStashedDecryptionContextForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v8 = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__PODaemonCoreConnection_retrieveStashedDecryptionContextForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrieveStashedDecryptionContextForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __83__PODaemonCoreConnection_retrieveStashedDecryptionContextForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveCachedContextsToDiskWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v5 = [(PODaemonCoreConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__PODaemonCoreConnection_saveCachedContextsToDiskWithCompletion___block_invoke;
    v9[3] = &unk_279A3E488;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 saveCachedContextsToDiskWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __65__PODaemonCoreConnection_saveCachedContextsToDiskWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)insertTokenForUserName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v8 = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PODaemonCoreConnection_insertTokenForUserName_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 insertTokenForUserName:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v7 + 2))(v7, v11);
  }
}

void __60__PODaemonCoreConnection_insertTokenForUserName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)verifyTokenForUserName:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v11 = [(PODaemonCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__PODaemonCoreConnection_verifyTokenForUserName_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 verifyTokenForUserName:v8 passwordContext:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __76__PODaemonCoreConnection_verifyTokenForUserName_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)useVolume:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    v8 = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__PODaemonCoreConnection_useVolume_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 useVolume:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __47__PODaemonCoreConnection_useVolume_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (BOOL)_connectToService
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_xpcConnection)
  {
    v3 = PO_LOG_PODaemonCoreConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreConnection _connectToService];
    }

LABEL_11:
    v17 = 1;
    goto LABEL_12;
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PlatformSSO.daemon-xpc" options:4096];
  xpcConnection = v2->_xpcConnection;
  v2->_xpcConnection = v4;

  if (v2->_xpcConnection)
  {
    v6 = [POInternalProtocols interfaceWithInternalProtocol:&unk_2870AD398];
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v6];

    v7 = [(NSXPCConnection *)v2->_xpcConnection remoteObjectInterface];
    [v7 setClass:objc_opt_class() forSelector:sel_userLoginStateForIdentifier_completion_ argumentIndex:0 ofReply:1];

    v8 = [(NSXPCConnection *)v2->_xpcConnection remoteObjectInterface];
    [v8 setClass:objc_opt_class() forSelector:sel_updateLoginStateForIdentifier_state_loginDate_loginType_completion_ argumentIndex:1 ofReply:0];

    v9 = [(NSXPCConnection *)v2->_xpcConnection remoteObjectInterface];
    [v9 setClass:objc_opt_class() forSelector:sel_updateLoginStateForIdentifier_state_loginDate_loginType_completion_ argumentIndex:3 ofReply:0];

    v10 = [(NSXPCConnection *)v2->_xpcConnection remoteObjectInterface];
    [v10 setClass:objc_opt_class() forSelector:sel_updateLoginStateForIdentifier_state_loginDate_loginType_completion_ argumentIndex:2 ofReply:0];

    objc_initWeak(&location, v2);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__PODaemonCoreConnection__connectToService__block_invoke;
    v23[3] = &unk_279A3E4B0;
    objc_copyWeak(&v24, &location);
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__PODaemonCoreConnection__connectToService__block_invoke_77;
    v21[3] = &unk_279A3E4B0;
    objc_copyWeak(&v22, &location);
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:v21];
    v11 = v2->_xpcConnection;
    v12 = +[PODaemonCoreConnection xpcQueue];
    [(NSXPCConnection *)v11 _setQueue:v12];

    [(NSXPCConnection *)v2->_xpcConnection resume];
    v13 = PO_LOG_PODaemonCoreConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreConnection _connectToService];
    }

    if (v2->_volume)
    {
      v14 = [(PODaemonCoreConnection *)v2 xpcConnection];
      v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_81];
      volume = v2->_volume;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __43__PODaemonCoreConnection__connectToService__block_invoke_82;
      v20[3] = &unk_279A3E4F8;
      v20[4] = v2;
      [v15 useVolume:volume completion:v20];
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v19 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [PODaemonCoreConnection _connectToService];
  }

  v17 = 0;
LABEL_12:
  objc_sync_exit(v2);

  return v17;
}

void __43__PODaemonCoreConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcConnection:0];
    v3 = PO_LOG_PODaemonCoreConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __43__PODaemonCoreConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __43__PODaemonCoreConnection__connectToService__block_invoke_77(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PO_LOG_PODaemonCoreConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __43__PODaemonCoreConnection__connectToService__block_invoke_77_cold_1();
    }
  }
}

void __43__PODaemonCoreConnection__connectToService__block_invoke_79(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }
}

void __43__PODaemonCoreConnection__connectToService__block_invoke_82(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = PO_LOG_PODaemonCoreConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25E8B1000, v2, OS_LOG_TYPE_INFO, "%{public}@: volume UUID set", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithVolume:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25E8B1000, v0, v1, "XPC error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_connectToService
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25E8B1000, v0, v1, "%{public}@: failed to create XPC connection", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__PODaemonCoreConnection__connectToService__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PODaemonCoreConnection__connectToService__block_invoke_77_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25E8B1000, v0, v1, "%{public}@: XPC connection interrupted", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end