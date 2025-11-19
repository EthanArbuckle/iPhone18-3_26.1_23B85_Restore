@interface WBSFileVaultRecoveryKeyListenerProxy
- (WBSFileVaultRecoveryKeyListenerProxy)init;
- (id)_reconnectIfNecessary;
- (id)_remoteObjectProxyWithErrorHandler:(id)a3;
- (void)_setUpConnection:(id)a3;
- (void)deleteRecoveryKeyForVolumeID:(id)a3 serialNumber:(id)a4 completion:(id)a5;
- (void)recoveryKeyForVolumeID:(id)a3 serialNumber:(id)a4 completion:(id)a5;
- (void)recoveryKeysForSerialNumber:(id)a3 completion:(id)a4;
- (void)saveRecoveryKeyWithRequest:(id)a3 completion:(id)a4;
@end

@implementation WBSFileVaultRecoveryKeyListenerProxy

- (WBSFileVaultRecoveryKeyListenerProxy)init
{
  v7.receiver = self;
  v7.super_class = WBSFileVaultRecoveryKeyListenerProxy;
  v2 = [(WBSFileVaultRecoveryKeyListenerProxy *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServices.AuthenticationServicesAgent.FileVaultRecoveryKeys" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    [(WBSFileVaultRecoveryKeyListenerProxy *)v2 _setUpConnection:v2->_connection];
    v5 = v2;
  }

  return v2;
}

- (void)_setUpConnection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = WBSFileVaultRecoveryKeyListenerInterface();
  [v4 setRemoteObjectInterface:v5];

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __57__WBSFileVaultRecoveryKeyListenerProxy__setUpConnection___block_invoke;
  v11 = &unk_1E7CF15E8;
  objc_copyWeak(&v12, &location);
  v6 = _Block_copy(&v8);
  [v4 setInvalidationHandler:{v6, v8, v9, v10, v11}];
  [v4 setInterruptionHandler:v6];
  v7 = WBSFileVaultRecoveryKeyListenerInterface();
  [v4 setExportedInterface:v7];

  [v4 setExportedObject:self];
  [v4 resume];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __57__WBSFileVaultRecoveryKeyListenerProxy__setUpConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __79__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy__setUpConnection___block_invoke_cold_1(v2);
    }

    [WeakRetained[1] invalidate];
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

- (id)_reconnectIfNecessary
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServices.AuthenticationServicesAgent.FileVaultRecoveryKeys" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(WBSFileVaultRecoveryKeyListenerProxy *)self _setUpConnection:self->_connection];
    connection = self->_connection;
  }

  v6 = connection;

  return v6;
}

- (id)_remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(WBSFileVaultRecoveryKeyListenerProxy *)self _reconnectIfNecessary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__WBSFileVaultRecoveryKeyListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke;
  v13[3] = &unk_1E7CF2CC0;
  v6 = v4;
  v14 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v13];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachHelperProxy _remoteObjectProxyWithErrorHandler:v10];
    }

    v11 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A798] code:14 privacyPreservingDescription:@"Failed to acquire remote object proxy."];
    (*(v6 + 2))(v6, v11);
  }

  return v8;
}

void __75__WBSFileVaultRecoveryKeyListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__WBSPasswordBreachHelperProxy__remoteObjectProxyWithErrorHandler___block_invoke_2_cold_1(v4, v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)saveRecoveryKeyWithRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_1B8447000, "FileVaultRecoveryKey/SaveRecoveryKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__WBSFileVaultRecoveryKeyListenerProxy_saveRecoveryKeyWithRequest_completion___block_invoke;
  v14[3] = &unk_1E7CF3860;
  v10 = v9;
  v15 = v10;
  v17 = a2;
  v11 = v8;
  v16 = v11;
  v12 = [(WBSFileVaultRecoveryKeyListenerProxy *)self _remoteObjectProxyWithErrorHandler:v14];
  v13 = v12;
  if (v12)
  {
    [v12 saveRecoveryKeyWithRequest:v7 completion:v11];
  }

  os_activity_scope_leave(&state);
}

void __78__WBSFileVaultRecoveryKeyListenerProxy_saveRecoveryKeyWithRequest_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__WBSFileVaultRecoveryKeyListenerProxy_saveRecoveryKeyWithRequest_completion___block_invoke_2;
  v9[3] = &unk_1E7CF2260;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __78__WBSFileVaultRecoveryKeyListenerProxy_saveRecoveryKeyWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__WBSFileVaultRecoveryKeyListenerProxy_saveRecoveryKeyWithRequest_completion___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)recoveryKeyForVolumeID:(id)a3 serialNumber:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _os_activity_create(&dword_1B8447000, "FileVaultRecoveryKey/GetRecoveryKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__WBSFileVaultRecoveryKeyListenerProxy_recoveryKeyForVolumeID_serialNumber_completion___block_invoke;
  v17[3] = &unk_1E7CF3860;
  v13 = v12;
  v18 = v13;
  v20 = a2;
  v14 = v11;
  v19 = v14;
  v15 = [(WBSFileVaultRecoveryKeyListenerProxy *)self _remoteObjectProxyWithErrorHandler:v17];
  v16 = v15;
  if (v15)
  {
    [v15 recoveryKeyForVolumeID:v9 serialNumber:v10 completion:v14];
  }

  os_activity_scope_leave(&state);
}

void __87__WBSFileVaultRecoveryKeyListenerProxy_recoveryKeyForVolumeID_serialNumber_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__WBSFileVaultRecoveryKeyListenerProxy_recoveryKeyForVolumeID_serialNumber_completion___block_invoke_2;
  v8[3] = &unk_1E7CF2260;
  v5 = a1[6];
  v9 = v3;
  v10 = v5;
  v6 = v3;
  os_activity_apply(v4, v8);
  (*(a1[5] + 16))(a1[5], 0, v6, v7);
}

void __87__WBSFileVaultRecoveryKeyListenerProxy_recoveryKeyForVolumeID_serialNumber_completion___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__WBSFileVaultRecoveryKeyListenerProxy_saveRecoveryKeyWithRequest_completion___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)recoveryKeysForSerialNumber:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_1B8447000, "FileVaultRecoveryKey/GetRecoveryKeys", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__WBSFileVaultRecoveryKeyListenerProxy_recoveryKeysForSerialNumber_completion___block_invoke;
  v14[3] = &unk_1E7CF3860;
  v10 = v9;
  v15 = v10;
  v17 = a2;
  v11 = v8;
  v16 = v11;
  v12 = [(WBSFileVaultRecoveryKeyListenerProxy *)self _remoteObjectProxyWithErrorHandler:v14];
  v13 = v12;
  if (v12)
  {
    [v12 recoveryKeysForSerialNumber:v7 completion:v11];
  }

  os_activity_scope_leave(&state);
}

void __79__WBSFileVaultRecoveryKeyListenerProxy_recoveryKeysForSerialNumber_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__WBSFileVaultRecoveryKeyListenerProxy_recoveryKeysForSerialNumber_completion___block_invoke_2;
  v8[3] = &unk_1E7CF2260;
  v5 = a1[6];
  v9 = v3;
  v10 = v5;
  v6 = v3;
  os_activity_apply(v4, v8);
  (*(a1[5] + 16))(a1[5], 0, v6, v7);
}

void __79__WBSFileVaultRecoveryKeyListenerProxy_recoveryKeysForSerialNumber_completion___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__WBSFileVaultRecoveryKeyListenerProxy_saveRecoveryKeyWithRequest_completion___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)deleteRecoveryKeyForVolumeID:(id)a3 serialNumber:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _os_activity_create(&dword_1B8447000, "FileVaultRecoveryKey/DeleteRecoveryKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__WBSFileVaultRecoveryKeyListenerProxy_deleteRecoveryKeyForVolumeID_serialNumber_completion___block_invoke;
  v17[3] = &unk_1E7CF3860;
  v13 = v12;
  v18 = v13;
  v20 = a2;
  v14 = v11;
  v19 = v14;
  v15 = [(WBSFileVaultRecoveryKeyListenerProxy *)self _remoteObjectProxyWithErrorHandler:v17];
  v16 = v15;
  if (v15)
  {
    [v15 deleteRecoveryKeyForVolumeID:v9 serialNumber:v10 completion:v14];
  }

  os_activity_scope_leave(&state);
}

void __93__WBSFileVaultRecoveryKeyListenerProxy_deleteRecoveryKeyForVolumeID_serialNumber_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__WBSFileVaultRecoveryKeyListenerProxy_deleteRecoveryKeyForVolumeID_serialNumber_completion___block_invoke_2;
  v9[3] = &unk_1E7CF2260;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __93__WBSFileVaultRecoveryKeyListenerProxy_deleteRecoveryKeyForVolumeID_serialNumber_completion___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__WBSFileVaultRecoveryKeyListenerProxy_saveRecoveryKeyWithRequest_completion___block_invoke_2_cold_1(a1, v2);
  }
}

void __78__WBSFileVaultRecoveryKeyListenerProxy_saveRecoveryKeyWithRequest_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4(a1, a2);
  v5 = OUTLINED_FUNCTION_3();
  NSStringFromSelector(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_3_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B8447000, v7, v8, "Could not create AuthenticationServicesAgent proxy object in %{public}@: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

@end