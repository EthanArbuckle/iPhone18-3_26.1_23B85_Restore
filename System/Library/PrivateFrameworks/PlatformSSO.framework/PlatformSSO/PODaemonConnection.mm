@interface PODaemonConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (PODaemonConnection)init;
- (void)addLocalUser:(id)user toLocalGroup:(id)group completion:(id)completion;
- (void)addPlatformSSOToSearchPolicyWithCompletion:(id)completion;
- (void)bindTokenForUsername:(id)username hash:(id)hash wrapHash:(id)wrapHash tokenId:(id)id pinContext:(id)context completion:(id)completion;
- (void)changePasswordForUser:(id)user passwordContext:(id)context secureToken:(id)token secureTokenPasswordContext:(id)passwordContext completion:(id)completion;
- (void)changePasswordUsingBootstrapTokenForUser:(id)user passwordContext:(id)context completion:(id)completion;
- (void)createAppSSOCachePathWithCompletion:(id)completion;
- (void)createOrUpdateAdminGroups:(id)groups authorizationGroups:(id)authorizationGroups previousAuthorizationGroups:(id)previousAuthorizationGroups otherGroups:(id)otherGroups completion:(id)completion;
- (void)createOrUpdateUser:(id)user completion:(id)completion;
- (void)createPlatformSSOAdminGroupWithCompletion:(id)completion;
- (void)createTempUserHomeDirectory:(id)directory;
- (void)createTemporaryUser:(id)user passwordContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)deviceConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)disablePlatformSSORulesAndDefaults:(id)defaults;
- (void)enablePlatformSSORulesAndDefaults:(id)defaults;
- (void)findUserWithName:(id)name completion:(id)completion;
- (void)getAllUsersWithCompletion:(id)completion;
- (void)init;
- (void)loginConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)removeDeviceConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)removeLocalUser:(id)user fromLocalGroup:(id)group completion:(id)completion;
- (void)removeLoginConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)removePlatformSSOAdminGroupWithCompletion:(id)completion;
- (void)removePlatformSSOFromSearchPolicyWithCompletion:(id)completion;
- (void)removePlatformSSOUser:(id)user completion:(id)completion;
- (void)removeUserConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)removeUserWithName:(id)name completion:(id)completion;
- (void)resetStoredConfigurationWithCompletion:(id)completion;
- (void)resetTemporaryAccount:(id)account;
- (void)retrievePendingSSOTokenForIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveStashedDecryptionContextForIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveStashedSSOTokenForIdentifier:(id)identifier completion:(id)completion;
- (void)saveAppSSOConfiguration:(id)configuration completion:(id)completion;
- (void)saveCachedContextsToDiskWithCompletion:(id)completion;
- (void)saveDeviceConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
- (void)saveDeviceConfigurationSyncAllConfigToPreboot:(id)preboot identifier:(id)identifier completion:(id)completion;
- (void)saveLoginConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
- (void)savePendingSSOTokens:(id)tokens identifier:(id)identifier completion:(id)completion;
- (void)savePlatformSSOUniqueIdentifier:(id)identifier forUser:(id)user completion:(id)completion;
- (void)saveStashedDecryptionContext:(id)context identifier:(id)identifier completion:(id)completion;
- (void)saveStashedSSOTokens:(id)tokens identifier:(id)identifier completion:(id)completion;
- (void)setGroups:(id)groups forLocalUser:(id)user completion:(id)completion;
- (void)setGroups:(id)groups forPlatformSSOUser:(id)user completion:(id)completion;
- (void)unbindTokenForAllUsersWithCompletion:(id)completion;
- (void)unbindTokenForUsername:(id)username hash:(id)hash completion:(id)completion;
- (void)updateGroupNames:(id)names completion:(id)completion;
- (void)updateLoginStateForIdentifier:(id)identifier state:(id)state loginDate:(id)date loginType:(id)type completion:(id)completion;
- (void)updateProfilePicture:(id)picture forUsername:(id)username completion:(id)completion;
- (void)updateTemporaryAccountName:(id)name altSecurityIdentity:(id)identity completion:(id)completion;
- (void)useVolume:(id)volume completion:(id)completion;
- (void)userConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)userLoginStateForIdentifier:(id)identifier completion:(id)completion;
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

- (void)deviceConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__PODaemonConnection_deviceConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 deviceConfigurationForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)loginConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__PODaemonConnection_loginConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 loginConfigurationForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)removeDeviceConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__PODaemonConnection_removeDeviceConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removeDeviceConfigurationForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)removeLoginConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__PODaemonConnection_removeLoginConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removeLoginConfigurationForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)removeUserConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__PODaemonConnection_removeUserConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removeUserConfigurationForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)saveDeviceConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__PODaemonConnection_saveDeviceConfiguration_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveDeviceConfiguration:configurationCopy identifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)saveDeviceConfigurationSyncAllConfigToPreboot:(id)preboot identifier:(id)identifier completion:(id)completion
{
  prebootCopy = preboot;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__PODaemonConnection_saveDeviceConfigurationSyncAllConfigToPreboot_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveDeviceConfigurationSyncAllConfigToPreboot:prebootCopy identifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)saveLoginConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__PODaemonConnection_saveLoginConfiguration_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveLoginConfiguration:configurationCopy identifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)userConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__PODaemonConnection_userConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 userConfigurationForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)userLoginStateForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__PODaemonConnection_userLoginStateForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 userLoginStateForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)updateLoginStateForIdentifier:(id)identifier state:(id)state loginDate:(id)date loginType:(id)type completion:(id)completion
{
  identifierCopy = identifier;
  stateCopy = state;
  dateCopy = date;
  typeCopy = type;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __89__PODaemonConnection_updateLoginStateForIdentifier_state_loginDate_loginType_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = completionCopy;
    v22 = v18;
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 updateLoginStateForIdentifier:identifierCopy state:stateCopy loginDate:dateCopy loginType:typeCopy completion:v18];
  }

  else if (completionCopy)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v20);
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

- (void)savePendingSSOTokens:(id)tokens identifier:(id)identifier completion:(id)completion
{
  tokensCopy = tokens;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__PODaemonConnection_savePendingSSOTokens_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 savePendingSSOTokens:tokensCopy identifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)retrievePendingSSOTokenForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__PODaemonConnection_retrievePendingSSOTokenForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrievePendingSSOTokenForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)saveStashedSSOTokens:(id)tokens identifier:(id)identifier completion:(id)completion
{
  tokensCopy = tokens;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__PODaemonConnection_saveStashedSSOTokens_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveStashedSSOTokens:tokensCopy identifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)retrieveStashedSSOTokenForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__PODaemonConnection_retrieveStashedSSOTokenForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrieveStashedSSOTokenForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)retrieveStashedDecryptionContextForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__PODaemonConnection_retrieveStashedDecryptionContextForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrieveStashedDecryptionContextForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)useVolume:(id)volume completion:(id)completion
{
  volumeCopy = volume;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__PODaemonConnection_useVolume_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 useVolume:volumeCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)saveCachedContextsToDiskWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__PODaemonConnection_saveCachedContextsToDiskWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 saveCachedContextsToDiskWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
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

- (void)resetStoredConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__PODaemonConnection_resetStoredConfigurationWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 resetStoredConfigurationWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
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

- (void)disablePlatformSSORulesAndDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__PODaemonConnection_disablePlatformSSORulesAndDefaults___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = defaultsCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 disablePlatformSSORulesAndDefaults:v6];
  }

  else if (defaultsCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(defaultsCopy + 2))(defaultsCopy, 0, v8);
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

- (void)enablePlatformSSORulesAndDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__PODaemonConnection_enablePlatformSSORulesAndDefaults___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = defaultsCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 enablePlatformSSORulesAndDefaults:v6];
  }

  else if (defaultsCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(defaultsCopy + 2))(defaultsCopy, 0, v8);
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

- (void)savePlatformSSOUniqueIdentifier:(id)identifier forUser:(id)user completion:(id)completion
{
  identifierCopy = identifier;
  userCopy = user;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__PODaemonConnection_savePlatformSSOUniqueIdentifier_forUser_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 savePlatformSSOUniqueIdentifier:identifierCopy forUser:userCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)updateGroupNames:(id)names completion:(id)completion
{
  namesCopy = names;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__PODaemonConnection_updateGroupNames_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 updateGroupNames:namesCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)updateProfilePicture:(id)picture forUsername:(id)username completion:(id)completion
{
  pictureCopy = picture;
  usernameCopy = username;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__PODaemonConnection_updateProfilePicture_forUsername_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 updateProfilePicture:pictureCopy forUsername:usernameCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)bindTokenForUsername:(id)username hash:(id)hash wrapHash:(id)wrapHash tokenId:(id)id pinContext:(id)context completion:(id)completion
{
  usernameCopy = username;
  hashCopy = hash;
  wrapHashCopy = wrapHash;
  idCopy = id;
  contextCopy = context;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __87__PODaemonConnection_bindTokenForUsername_hash_wrapHash_tokenId_pinContext_completion___block_invoke;
    v24[3] = &unk_279A3A270;
    v21 = completionCopy;
    v25 = v21;
    v22 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
    [v22 bindTokenForUsername:usernameCopy hash:hashCopy wrapHash:wrapHashCopy tokenId:idCopy pinContext:contextCopy completion:v21];
  }

  else if (completionCopy)
  {
    v23 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v23);
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

- (void)unbindTokenForUsername:(id)username hash:(id)hash completion:(id)completion
{
  usernameCopy = username;
  hashCopy = hash;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__PODaemonConnection_unbindTokenForUsername_hash_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 unbindTokenForUsername:usernameCopy hash:hashCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)unbindTokenForAllUsersWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__PODaemonConnection_unbindTokenForAllUsersWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 unbindTokenForAllUsersWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
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

- (void)changePasswordForUser:(id)user passwordContext:(id)context secureToken:(id)token secureTokenPasswordContext:(id)passwordContext completion:(id)completion
{
  userCopy = user;
  contextCopy = context;
  tokenCopy = token;
  passwordContextCopy = passwordContext;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __110__PODaemonConnection_changePasswordForUser_passwordContext_secureToken_secureTokenPasswordContext_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = completionCopy;
    v22 = v18;
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 changePasswordForUser:userCopy passwordContext:contextCopy secureToken:tokenCopy secureTokenPasswordContext:passwordContextCopy completion:v18];
  }

  else if (completionCopy)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v20);
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

- (void)changePasswordUsingBootstrapTokenForUser:(id)user passwordContext:(id)context completion:(id)completion
{
  userCopy = user;
  contextCopy = context;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__PODaemonConnection_changePasswordUsingBootstrapTokenForUser_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 changePasswordUsingBootstrapTokenForUser:userCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)createTemporaryUser:(id)user passwordContext:(id)context completion:(id)completion
{
  userCopy = user;
  contextCopy = context;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PODaemonConnection_createTemporaryUser_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 createTemporaryUser:userCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)resetTemporaryAccount:(id)account
{
  accountCopy = account;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__PODaemonConnection_resetTemporaryAccount___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = accountCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 resetTemporaryAccount:v6];
  }

  else if (accountCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(accountCopy + 2))(accountCopy, 0, v8);
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

- (void)createTempUserHomeDirectory:(id)directory
{
  directoryCopy = directory;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__PODaemonConnection_createTempUserHomeDirectory___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = directoryCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 createTempUserHomeDirectory:v6];
  }

  else if (directoryCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(directoryCopy + 2))(directoryCopy, 0, v8);
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

- (void)updateTemporaryAccountName:(id)name altSecurityIdentity:(id)identity completion:(id)completion
{
  nameCopy = name;
  identityCopy = identity;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__PODaemonConnection_updateTemporaryAccountName_altSecurityIdentity_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 updateTemporaryAccountName:nameCopy altSecurityIdentity:identityCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)createPlatformSSOAdminGroupWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__PODaemonConnection_createPlatformSSOAdminGroupWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 createPlatformSSOAdminGroupWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
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

- (void)removePlatformSSOAdminGroupWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__PODaemonConnection_removePlatformSSOAdminGroupWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 removePlatformSSOAdminGroupWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
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

- (void)addPlatformSSOToSearchPolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__PODaemonConnection_addPlatformSSOToSearchPolicyWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 addPlatformSSOToSearchPolicyWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
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

- (void)removePlatformSSOFromSearchPolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__PODaemonConnection_removePlatformSSOFromSearchPolicyWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 removePlatformSSOFromSearchPolicyWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
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

- (void)createOrUpdateAdminGroups:(id)groups authorizationGroups:(id)authorizationGroups previousAuthorizationGroups:(id)previousAuthorizationGroups otherGroups:(id)otherGroups completion:(id)completion
{
  groupsCopy = groups;
  authorizationGroupsCopy = authorizationGroups;
  previousAuthorizationGroupsCopy = previousAuthorizationGroups;
  otherGroupsCopy = otherGroups;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __119__PODaemonConnection_createOrUpdateAdminGroups_authorizationGroups_previousAuthorizationGroups_otherGroups_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = completionCopy;
    v22 = v18;
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 createOrUpdateAdminGroups:groupsCopy authorizationGroups:authorizationGroupsCopy previousAuthorizationGroups:previousAuthorizationGroupsCopy otherGroups:otherGroupsCopy completion:v18];
  }

  else if (completionCopy)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v20);
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

- (void)removePlatformSSOUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__PODaemonConnection_removePlatformSSOUser_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removePlatformSSOUser:userCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)setGroups:(id)groups forLocalUser:(id)user completion:(id)completion
{
  groupsCopy = groups;
  userCopy = user;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__PODaemonConnection_setGroups_forLocalUser_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 setGroups:groupsCopy forLocalUser:userCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)setGroups:(id)groups forPlatformSSOUser:(id)user completion:(id)completion
{
  groupsCopy = groups;
  userCopy = user;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__PODaemonConnection_setGroups_forPlatformSSOUser_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 setGroups:groupsCopy forPlatformSSOUser:userCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)getAllUsersWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__PODaemonConnection_getAllUsersWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 getAllUsersWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
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

- (void)findUserWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__PODaemonConnection_findUserWithName_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 findUserWithName:nameCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)createOrUpdateUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__PODaemonConnection_createOrUpdateUser_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 createOrUpdateUser:userCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)removeUserWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__PODaemonConnection_removeUserWithName_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 removeUserWithName:nameCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)addLocalUser:(id)user toLocalGroup:(id)group completion:(id)completion
{
  userCopy = user;
  groupCopy = group;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__PODaemonConnection_addLocalUser_toLocalGroup_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 addLocalUser:userCopy toLocalGroup:groupCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)removeLocalUser:(id)user fromLocalGroup:(id)group completion:(id)completion
{
  userCopy = user;
  groupCopy = group;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__PODaemonConnection_removeLocalUser_fromLocalGroup_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 removeLocalUser:userCopy fromLocalGroup:groupCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)saveAppSSOConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__PODaemonConnection_saveAppSSOConfiguration_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 saveAppSSOConfiguration:configurationCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)saveStashedDecryptionContext:(id)context identifier:(id)identifier completion:(id)completion
{
  contextCopy = context;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__PODaemonConnection_saveStashedDecryptionContext_identifier_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveStashedDecryptionContext:contextCopy identifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)createAppSSOCachePathWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__PODaemonConnection_createAppSSOCachePathWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 createAppSSOCachePathWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_xpcConnection)
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
  xpcConnection = selfCopy->_xpcConnection;
  selfCopy->_xpcConnection = v4;

  if (selfCopy->_xpcConnection)
  {
    v6 = [MEMORY[0x277D3D1F8] interfaceWithInternalProtocol:&unk_287094D68];
    [(NSXPCConnection *)selfCopy->_xpcConnection setRemoteObjectInterface:v6];

    objc_initWeak(&location, selfCopy);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__PODaemonConnection__connectToService__block_invoke;
    v15[3] = &unk_279A3A298;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)selfCopy->_xpcConnection setInvalidationHandler:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__PODaemonConnection__connectToService__block_invoke_98;
    v13[3] = &unk_279A3A298;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)selfCopy->_xpcConnection setInterruptionHandler:v13];
    v7 = selfCopy->_xpcConnection;
    v8 = +[PODaemonConnection xpcQueue];
    [(NSXPCConnection *)v7 _setQueue:v8];

    [(NSXPCConnection *)selfCopy->_xpcConnection resume];
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
  objc_sync_exit(selfCopy);

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