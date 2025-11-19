@interface PODaemonConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (PODaemonConnection)init;
- (void)addLocalUser:(id)a3 toLocalGroup:(id)a4 completion:(id)a5;
- (void)addPlatformSSOToSearchPolicyWithCompletion:(id)a3;
- (void)bindTokenForUsername:(id)a3 hash:(id)a4 wrapHash:(id)a5 tokenId:(id)a6 pinContext:(id)a7 completion:(id)a8;
- (void)changePasswordForUser:(id)a3 passwordContext:(id)a4 secureToken:(id)a5 secureTokenPasswordContext:(id)a6 completion:(id)a7;
- (void)changePasswordUsingBootstrapTokenForUser:(id)a3 passwordContext:(id)a4 completion:(id)a5;
- (void)createAppSSOCachePathWithCompletion:(id)a3;
- (void)createOrUpdateAdminGroups:(id)a3 authorizationGroups:(id)a4 previousAuthorizationGroups:(id)a5 otherGroups:(id)a6 completion:(id)a7;
- (void)createOrUpdateUser:(id)a3 completion:(id)a4;
- (void)createPlatformSSOAdminGroupWithCompletion:(id)a3;
- (void)createTempUserHomeDirectory:(id)a3;
- (void)createTemporaryUser:(id)a3 passwordContext:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)deviceConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)disablePlatformSSORulesAndDefaults:(id)a3;
- (void)enablePlatformSSORulesAndDefaults:(id)a3;
- (void)findUserWithName:(id)a3 completion:(id)a4;
- (void)getAllUsersWithCompletion:(id)a3;
- (void)init;
- (void)loginConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)removeDeviceConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)removeLocalUser:(id)a3 fromLocalGroup:(id)a4 completion:(id)a5;
- (void)removeLoginConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)removePlatformSSOAdminGroupWithCompletion:(id)a3;
- (void)removePlatformSSOFromSearchPolicyWithCompletion:(id)a3;
- (void)removePlatformSSOUser:(id)a3 completion:(id)a4;
- (void)removeUserConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)removeUserWithName:(id)a3 completion:(id)a4;
- (void)resetStoredConfigurationWithCompletion:(id)a3;
- (void)resetTemporaryAccount:(id)a3;
- (void)retrievePendingSSOTokenForIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveStashedDecryptionContextForIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveStashedSSOTokenForIdentifier:(id)a3 completion:(id)a4;
- (void)saveAppSSOConfiguration:(id)a3 completion:(id)a4;
- (void)saveCachedContextsToDiskWithCompletion:(id)a3;
- (void)saveDeviceConfiguration:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)saveDeviceConfigurationSyncAllConfigToPreboot:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)saveLoginConfiguration:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)savePendingSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)savePlatformSSOUniqueIdentifier:(id)a3 forUser:(id)a4 completion:(id)a5;
- (void)saveStashedDecryptionContext:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)saveStashedSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)setGroups:(id)a3 forLocalUser:(id)a4 completion:(id)a5;
- (void)setGroups:(id)a3 forPlatformSSOUser:(id)a4 completion:(id)a5;
- (void)unbindTokenForAllUsersWithCompletion:(id)a3;
- (void)unbindTokenForUsername:(id)a3 hash:(id)a4 completion:(id)a5;
- (void)updateGroupNames:(id)a3 completion:(id)a4;
- (void)updateLoginStateForIdentifier:(id)a3 state:(id)a4 loginDate:(id)a5 loginType:(id)a6 completion:(id)a7;
- (void)updateProfilePicture:(id)a3 forUsername:(id)a4 completion:(id)a5;
- (void)updateTemporaryAccountName:(id)a3 altSecurityIdentity:(id)a4 completion:(id)a5;
- (void)useVolume:(id)a3 completion:(id)a4;
- (void)userConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)userLoginStateForIdentifier:(id)a3 completion:(id)a4;
@end

@implementation PODaemonConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken_1 != -1)
  {
    +[PODaemonConnection xpcQueue];
  }

  v3 = xpcQueue_queue_1;

  return v3;
}

uint64_t __30__PODaemonConnection_xpcQueue__block_invoke()
{
  xpcQueue_queue_1 = dispatch_queue_create("com.apple.PlatformPSSO.daemon-queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (PODaemonConnection)init
{
  v3 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonConnection init];
  }

  v7.receiver = self;
  v7.super_class = PODaemonConnection;
  v4 = [(PODaemonConnection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PODaemonConnection *)v4 _connectToService];
  }

  return v5;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deviceConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__PODaemonConnection_deviceConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 deviceConfigurationForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __66__PODaemonConnection_deviceConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__PODaemonConnection_loginConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 loginConfigurationForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __65__PODaemonConnection_loginConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)removeDeviceConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__PODaemonConnection_removeDeviceConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removeDeviceConfigurationForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __72__PODaemonConnection_removeDeviceConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)removeLoginConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__PODaemonConnection_removeLoginConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removeLoginConfigurationForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __71__PODaemonConnection_removeLoginConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)removeUserConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__PODaemonConnection_removeUserConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removeUserConfigurationForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __70__PODaemonConnection_removeUserConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveDeviceConfiguration:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__PODaemonConnection_saveDeviceConfiguration_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveDeviceConfiguration:v8 identifier:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __68__PODaemonConnection_saveDeviceConfiguration_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveDeviceConfigurationSyncAllConfigToPreboot:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__PODaemonConnection_saveDeviceConfigurationSyncAllConfigToPreboot_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveDeviceConfigurationSyncAllConfigToPreboot:v8 identifier:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __90__PODaemonConnection_saveDeviceConfigurationSyncAllConfigToPreboot_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveLoginConfiguration:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__PODaemonConnection_saveLoginConfiguration_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveLoginConfiguration:v8 identifier:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __67__PODaemonConnection_saveLoginConfiguration_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __83__PODaemonConnection_saveUserConfiguration_forIdentifier_syncToPreboot_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __87__PODaemonConnection_saveUserConfigurationData_forIdentifier_syncToPreboot_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__PODaemonConnection_userConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 userConfigurationForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __64__PODaemonConnection_userConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__PODaemonConnection_userLoginStateForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 userLoginStateForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __61__PODaemonConnection_userLoginStateForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v17 = [(PODaemonConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __89__PODaemonConnection_updateLoginStateForIdentifier_state_loginDate_loginType_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = v16;
    v22 = v18;
    v19 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 updateLoginStateForIdentifier:v12 state:v13 loginDate:v14 loginType:v15 completion:v18];
  }

  else if (v16)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v16 + 2))(v16, 0, v20);
  }
}

void __89__PODaemonConnection_updateLoginStateForIdentifier_state_loginDate_loginType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__PODaemonConnection_savePendingSSOTokens_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 savePendingSSOTokens:v8 identifier:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __65__PODaemonConnection_savePendingSSOTokens_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__PODaemonConnection_retrievePendingSSOTokenForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrievePendingSSOTokenForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __70__PODaemonConnection_retrievePendingSSOTokenForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__PODaemonConnection_saveStashedSSOTokens_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveStashedSSOTokens:v8 identifier:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __65__PODaemonConnection_saveStashedSSOTokens_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__PODaemonConnection_retrieveStashedSSOTokenForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrieveStashedSSOTokenForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __70__PODaemonConnection_retrieveStashedSSOTokenForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__PODaemonConnection_retrieveStashedDecryptionContextForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrieveStashedDecryptionContextForIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __79__PODaemonConnection_retrieveStashedDecryptionContextForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__PODaemonConnection_useVolume_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 useVolume:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __43__PODaemonConnection_useVolume_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__PODaemonConnection_saveCachedContextsToDiskWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 saveCachedContextsToDiskWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __61__PODaemonConnection_saveCachedContextsToDiskWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)resetStoredConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__PODaemonConnection_resetStoredConfigurationWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 resetStoredConfigurationWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __61__PODaemonConnection_resetStoredConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)disablePlatformSSORulesAndDefaults:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__PODaemonConnection_disablePlatformSSORulesAndDefaults___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 disablePlatformSSORulesAndDefaults:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __57__PODaemonConnection_disablePlatformSSORulesAndDefaults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)enablePlatformSSORulesAndDefaults:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__PODaemonConnection_enablePlatformSSORulesAndDefaults___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 enablePlatformSSORulesAndDefaults:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __56__PODaemonConnection_enablePlatformSSORulesAndDefaults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __54__PODaemonConnection_migrateConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)savePlatformSSOUniqueIdentifier:(id)a3 forUser:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__PODaemonConnection_savePlatformSSOUniqueIdentifier_forUser_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 savePlatformSSOUniqueIdentifier:v8 forUser:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __73__PODaemonConnection_savePlatformSSOUniqueIdentifier_forUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)updateGroupNames:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__PODaemonConnection_updateGroupNames_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 updateGroupNames:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __50__PODaemonConnection_updateGroupNames_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)updateProfilePicture:(id)a3 forUsername:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__PODaemonConnection_updateProfilePicture_forUsername_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 updateProfilePicture:v8 forUsername:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __66__PODaemonConnection_updateProfilePicture_forUsername_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)bindTokenForUsername:(id)a3 hash:(id)a4 wrapHash:(id)a5 tokenId:(id)a6 pinContext:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v20 = [(PODaemonConnection *)self xpcConnection];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __87__PODaemonConnection_bindTokenForUsername_hash_wrapHash_tokenId_pinContext_completion___block_invoke;
    v24[3] = &unk_279A3A270;
    v21 = v19;
    v25 = v21;
    v22 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v24];
    [v22 bindTokenForUsername:v14 hash:v15 wrapHash:v16 tokenId:v17 pinContext:v18 completion:v21];
  }

  else if (v19)
  {
    v23 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v19 + 2))(v19, 0, v23);
  }
}

void __87__PODaemonConnection_bindTokenForUsername_hash_wrapHash_tokenId_pinContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)unbindTokenForUsername:(id)a3 hash:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__PODaemonConnection_unbindTokenForUsername_hash_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 unbindTokenForUsername:v8 hash:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __61__PODaemonConnection_unbindTokenForUsername_hash_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)unbindTokenForAllUsersWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__PODaemonConnection_unbindTokenForAllUsersWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 unbindTokenForAllUsersWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __59__PODaemonConnection_unbindTokenForAllUsersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __117__PODaemonConnection_createUser_passwordContext_name_loginUserName_idpIdentifier_isAdmin_groupMembership_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0, v3);
  }
}

- (void)changePasswordForUser:(id)a3 passwordContext:(id)a4 secureToken:(id)a5 secureTokenPasswordContext:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v17 = [(PODaemonConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __110__PODaemonConnection_changePasswordForUser_passwordContext_secureToken_secureTokenPasswordContext_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = v16;
    v22 = v18;
    v19 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 changePasswordForUser:v12 passwordContext:v13 secureToken:v14 secureTokenPasswordContext:v15 completion:v18];
  }

  else if (v16)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v16 + 2))(v16, 0, v20);
  }
}

void __110__PODaemonConnection_changePasswordForUser_passwordContext_secureToken_secureTokenPasswordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)changePasswordUsingBootstrapTokenForUser:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__PODaemonConnection_changePasswordUsingBootstrapTokenForUser_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 changePasswordUsingBootstrapTokenForUser:v8 passwordContext:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __90__PODaemonConnection_changePasswordUsingBootstrapTokenForUser_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)createTemporaryUser:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PODaemonConnection_createTemporaryUser_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 createTemporaryUser:v8 passwordContext:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __69__PODaemonConnection_createTemporaryUser_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)resetTemporaryAccount:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__PODaemonConnection_resetTemporaryAccount___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 resetTemporaryAccount:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __44__PODaemonConnection_resetTemporaryAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)createTempUserHomeDirectory:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__PODaemonConnection_createTempUserHomeDirectory___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 createTempUserHomeDirectory:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __50__PODaemonConnection_createTempUserHomeDirectory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)updateTemporaryAccountName:(id)a3 altSecurityIdentity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__PODaemonConnection_updateTemporaryAccountName_altSecurityIdentity_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 updateTemporaryAccountName:v8 altSecurityIdentity:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __80__PODaemonConnection_updateTemporaryAccountName_altSecurityIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)createPlatformSSOAdminGroupWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__PODaemonConnection_createPlatformSSOAdminGroupWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 createPlatformSSOAdminGroupWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __64__PODaemonConnection_createPlatformSSOAdminGroupWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)removePlatformSSOAdminGroupWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__PODaemonConnection_removePlatformSSOAdminGroupWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 removePlatformSSOAdminGroupWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __64__PODaemonConnection_removePlatformSSOAdminGroupWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)addPlatformSSOToSearchPolicyWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__PODaemonConnection_addPlatformSSOToSearchPolicyWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 addPlatformSSOToSearchPolicyWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __65__PODaemonConnection_addPlatformSSOToSearchPolicyWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)removePlatformSSOFromSearchPolicyWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__PODaemonConnection_removePlatformSSOFromSearchPolicyWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 removePlatformSSOFromSearchPolicyWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __70__PODaemonConnection_removePlatformSSOFromSearchPolicyWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)createOrUpdateAdminGroups:(id)a3 authorizationGroups:(id)a4 previousAuthorizationGroups:(id)a5 otherGroups:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v17 = [(PODaemonConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __119__PODaemonConnection_createOrUpdateAdminGroups_authorizationGroups_previousAuthorizationGroups_otherGroups_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = v16;
    v22 = v18;
    v19 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 createOrUpdateAdminGroups:v12 authorizationGroups:v13 previousAuthorizationGroups:v14 otherGroups:v15 completion:v18];
  }

  else if (v16)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v16 + 2))(v16, 0, v20);
  }
}

void __119__PODaemonConnection_createOrUpdateAdminGroups_authorizationGroups_previousAuthorizationGroups_otherGroups_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)removePlatformSSOUser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__PODaemonConnection_removePlatformSSOUser_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removePlatformSSOUser:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __55__PODaemonConnection_removePlatformSSOUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)setGroups:(id)a3 forLocalUser:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__PODaemonConnection_setGroups_forLocalUser_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 setGroups:v8 forLocalUser:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __56__PODaemonConnection_setGroups_forLocalUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)setGroups:(id)a3 forPlatformSSOUser:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__PODaemonConnection_setGroups_forPlatformSSOUser_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 setGroups:v8 forPlatformSSOUser:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __62__PODaemonConnection_setGroups_forPlatformSSOUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)getAllUsersWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__PODaemonConnection_getAllUsersWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 getAllUsersWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __48__PODaemonConnection_getAllUsersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)findUserWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__PODaemonConnection_findUserWithName_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 findUserWithName:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __50__PODaemonConnection_findUserWithName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)createOrUpdateUser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__PODaemonConnection_createOrUpdateUser_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 createOrUpdateUser:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __52__PODaemonConnection_createOrUpdateUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)removeUserWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__PODaemonConnection_removeUserWithName_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removeUserWithName:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __52__PODaemonConnection_removeUserWithName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)addLocalUser:(id)a3 toLocalGroup:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__PODaemonConnection_addLocalUser_toLocalGroup_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 addLocalUser:v8 toLocalGroup:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __59__PODaemonConnection_addLocalUser_toLocalGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)removeLocalUser:(id)a3 fromLocalGroup:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__PODaemonConnection_removeLocalUser_fromLocalGroup_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 removeLocalUser:v8 fromLocalGroup:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __64__PODaemonConnection_removeLocalUser_fromLocalGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveAppSSOConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v8 = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__PODaemonConnection_saveAppSSOConfiguration_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 saveAppSSOConfiguration:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __57__PODaemonConnection_saveAppSSOConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(PODaemonConnection *)self _connectToService])
  {
    v11 = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__PODaemonConnection_saveStashedDecryptionContext_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = v10;
    v16 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveStashedDecryptionContext:v8 identifier:v9 completion:v12];
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __73__PODaemonConnection_saveStashedDecryptionContext_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)createAppSSOCachePathWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PODaemonConnection *)self _connectToService])
  {
    v5 = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__PODaemonConnection_createAppSSOCachePathWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 createAppSSOCachePathWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __58__PODaemonConnection_createAppSSOCachePathWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
    v3 = PO_LOG_PODaemonConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [POServiceLoginManagerConnection _connectToService];
    }

LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PlatformSSO.daemon-xpc" options:4096];
  xpcConnection = v2->_xpcConnection;
  v2->_xpcConnection = v4;

  if (v2->_xpcConnection)
  {
    v6 = [MEMORY[0x277D3D1F8] interfaceWithInternalProtocol:&unk_287094D68];
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v6];

    objc_initWeak(&location, v2);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__PODaemonConnection__connectToService__block_invoke;
    v15[3] = &unk_279A3A298;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__PODaemonConnection__connectToService__block_invoke_98;
    v13[3] = &unk_279A3A298;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:v13];
    v7 = v2->_xpcConnection;
    v8 = +[PODaemonConnection xpcQueue];
    [(NSXPCConnection *)v7 _setQueue:v8];

    [(NSXPCConnection *)v2->_xpcConnection resume];
    v9 = PO_LOG_PODaemonConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [POServiceLoginManagerConnection _connectToService];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

  v12 = PO_LOG_PODaemonConnection();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [POServiceConnection _connectToService];
  }

  v10 = 0;
LABEL_10:
  objc_sync_exit(v2);

  return v10;
}

void __39__PODaemonConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcConnection:0];
    v3 = PO_LOG_PODaemonConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __52__POServiceLoginManagerConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __39__PODaemonConnection__connectToService__block_invoke_98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PO_LOG_PODaemonConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __40__POServiceConnection__connectToService__block_invoke_83_cold_1();
    }
  }
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end