@interface BYBuddyDaemonGeneralClient
- (BOOL)setupAssistantNeedsToRun;
- (BYBuddyDaemonGeneralClient)init;
- (id)_daemonConnection;
- (id)backupMetadata;
- (id)fetchAuthenticationContextForApplePay;
- (id)fetchAuthenticationContextForBiometric;
- (unint64_t)lockScreenMode;
- (void)cancelDataMigratorDeferredExit;
- (void)deferDataMigratorExit;
- (void)enrollInSeedProgramNamed:(id)a3 withAssetAudience:(id)a4 programID:(id)a5;
- (void)ensureShortLivedTokenUpgrade;
- (void)ensureSilentLoginUpgrade;
- (void)observeFinishSetupTriggers;
- (void)performSilentICDPUpgrade;
- (void)setLockScreenMode:(unint64_t)a3;
- (void)startExpressSettingsUpload;
- (void)storeAuthenticationContextforApplyPay:(id)a3;
- (void)storeAuthenticationContextforBiometric:(id)a3;
@end

@implementation BYBuddyDaemonGeneralClient

BYBuddyDaemonGeneralClient *__37__BYBuddyDaemonGeneralClient_factory__block_invoke()
{
  v0 = objc_alloc_init(BYBuddyDaemonGeneralClient);

  return v0;
}

- (BYBuddyDaemonGeneralClient)init
{
  v6.receiver = self;
  v6.super_class = BYBuddyDaemonGeneralClient;
  v2 = [(BYBuddyDaemonGeneralClient *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    connectionLock = v2->_connectionLock;
    v2->_connectionLock = v3;

    [(NSLock *)v2->_connectionLock setName:@"BYBuddyXPCLock"];
  }

  return v2;
}

- (BOOL)setupAssistantNeedsToRun
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_17];

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__BYBuddyDaemonGeneralClient_setupAssistantNeedsToRun__block_invoke_22;
  v5[3] = &unk_1E7D03218;
  v5[4] = &v6;
  [v3 setupAssistantNeedsToRun:v5];
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v2;
}

void __54__BYBuddyDaemonGeneralClient_setupAssistantNeedsToRun__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "setupAssistantNeedsToRun: budd returned an error: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (unint64_t)lockScreenMode
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_25];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__BYBuddyDaemonGeneralClient_lockScreenMode__block_invoke_26;
  v6[3] = &unk_1E7D03240;
  v6[4] = &v7;
  [v3 lockScreenMode:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__BYBuddyDaemonGeneralClient_lockScreenMode__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "lockScreenMode: budd returned an error: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setLockScreenMode:(unint64_t)a3
{
  v4 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_29];

  [v5 setLockScreenMode:a3];
}

void __48__BYBuddyDaemonGeneralClient_setLockScreenMode___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "setupAssistantNeedsToRun: budd returned an error: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)ensureSilentLoginUpgrade
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_31];

  [v3 ensureSilentLoginUpgrade:&__block_literal_global_35];
}

void __54__BYBuddyDaemonGeneralClient_ensureSilentLoginUpgrade__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "ensureSilentLoginUpgrade: budd returned an error: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __54__BYBuddyDaemonGeneralClient_ensureSilentLoginUpgrade__block_invoke_32()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "ensureSilentLoginUpgrade did complete", v1, 2u);
  }
}

- (void)ensureShortLivedTokenUpgrade
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_37];

  [v3 ensureShortLivedTokenUpgrade:&__block_literal_global_40];
}

void __58__BYBuddyDaemonGeneralClient_ensureShortLivedTokenUpgrade__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "ensureShortLivedTokenUpgrade: budd returned an error: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __58__BYBuddyDaemonGeneralClient_ensureShortLivedTokenUpgrade__block_invoke_38()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "ensureShortLivedTokenUpgrade did complete", v1, 2u);
  }
}

- (id)backupMetadata
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_42];

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__BYBuddyDaemonGeneralClient_backupMetadata__block_invoke_43;
  v6[3] = &unk_1E7D03268;
  v6[4] = &v7;
  [v3 backupMetadata:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__BYBuddyDaemonGeneralClient_backupMetadata__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "backupMetadata: budd returned an error: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)observeFinishSetupTriggers
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_46];

  [v3 observeFinishSetupTriggers:&__block_literal_global_49];
}

void __56__BYBuddyDaemonGeneralClient_observeFinishSetupTriggers__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "observeFinishSetupTriggers: budd returned an error: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __56__BYBuddyDaemonGeneralClient_observeFinishSetupTriggers__block_invoke_47()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "observeFinishSetupTriggers did complete", v1, 2u);
  }
}

- (void)performSilentICDPUpgrade
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_51];

  [v3 performSilentICDPUpgrade:&__block_literal_global_54];
}

void __54__BYBuddyDaemonGeneralClient_performSilentICDPUpgrade__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "performSilentICDPUpgrade: budd returned an error: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __54__BYBuddyDaemonGeneralClient_performSilentICDPUpgrade__block_invoke_52()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "performSilentICDPUpgrade did complete", v1, 2u);
  }
}

- (void)deferDataMigratorExit
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_56];

  [v3 deferDataMigratorExit:&__block_literal_global_59];
}

void __51__BYBuddyDaemonGeneralClient_deferDataMigratorExit__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Deferring data migrator exit failed: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __51__BYBuddyDaemonGeneralClient_deferDataMigratorExit__block_invoke_57()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "Deferring data migrator exit completed", v1, 2u);
  }
}

- (void)cancelDataMigratorDeferredExit
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_61];

  [v3 cancelDataMigratorDeferredExit:&__block_literal_global_64_0];
}

void __60__BYBuddyDaemonGeneralClient_cancelDataMigratorDeferredExit__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Cancelling data migrator deferred exit failed: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __60__BYBuddyDaemonGeneralClient_cancelDataMigratorDeferredExit__block_invoke_62()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "Cancelling data migrator deferred exit completed", v1, 2u);
  }
}

- (void)enrollInSeedProgramNamed:(id)a3 withAssetAudience:(id)a4 programID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_66_0];

  [v12 enrollInSeedProgramNamed:v10 withAssetAudience:v9 programID:v8 completion:&__block_literal_global_69];
}

void __83__BYBuddyDaemonGeneralClient_enrollInSeedProgramNamed_withAssetAudience_programID___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Enroll in seed program named failed: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __83__BYBuddyDaemonGeneralClient_enrollInSeedProgramNamed_withAssetAudience_programID___block_invoke_67()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "Enroll in seed program completed", v1, 2u);
  }
}

- (void)storeAuthenticationContextforApplyPay:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_71];

    [v6 storeAuthenticationContextforApplyPay:v4 completion:&__block_literal_global_74];
  }
}

void __68__BYBuddyDaemonGeneralClient_storeAuthenticationContextforApplyPay___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Failed to store context for Apple Pay: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __68__BYBuddyDaemonGeneralClient_storeAuthenticationContextforApplyPay___block_invoke_72()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "Successfully stored context for Apple Pay", v1, 2u);
  }
}

- (id)fetchAuthenticationContextForApplePay
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_76];

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__BYBuddyDaemonGeneralClient_fetchAuthenticationContextForApplePay__block_invoke_77;
  v6[3] = &unk_1E7D03290;
  v6[4] = &v7;
  [v3 fetchAuthenticationContextForApplePay:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __67__BYBuddyDaemonGeneralClient_fetchAuthenticationContextForApplePay__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch Apple Pay context: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)storeAuthenticationContextforBiometric:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_80];

    [v6 storeAuthenticationContextforBiometric:v4 completion:&__block_literal_global_83];
  }
}

void __69__BYBuddyDaemonGeneralClient_storeAuthenticationContextforBiometric___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Failed to store context for biometric: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __69__BYBuddyDaemonGeneralClient_storeAuthenticationContextforBiometric___block_invoke_81()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "Successfully stored context for biometric", v1, 2u);
  }
}

- (id)fetchAuthenticationContextForBiometric
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_85];

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__BYBuddyDaemonGeneralClient_fetchAuthenticationContextForBiometric__block_invoke_86;
  v6[3] = &unk_1E7D03290;
  v6[4] = &v7;
  [v3 fetchAuthenticationContextForBiometric:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __68__BYBuddyDaemonGeneralClient_fetchAuthenticationContextForBiometric__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch biometric context: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)startExpressSettingsUpload
{
  v2 = [(BYBuddyDaemonGeneralClient *)self _daemonConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_88];

  [v3 startExpressSettingsUpload];
}

void __56__BYBuddyDaemonGeneralClient_startExpressSettingsUpload__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Failed to start express settings upload: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __83__BYBuddyDaemonGeneralClient_migrateWithStoredMigratorVersion_userDataDisposition___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Failed to migrate with stored migration version: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_daemonConnection
{
  [(NSLock *)self->_connectionLock lock];
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.purplebuddy.budd.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30B4CF8];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v8 = self->_connection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__BYBuddyDaemonGeneralClient__daemonConnection__block_invoke;
    v14[3] = &unk_1E7D027D0;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v8 setInterruptionHandler:v14];
    v9 = self->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__BYBuddyDaemonGeneralClient__daemonConnection__block_invoke_167;
    v12[3] = &unk_1E7D027D0;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v12];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  v10 = connection;
  [(NSLock *)self->_connectionLock unlock];

  return v10;
}

void __47__BYBuddyDaemonGeneralClient__daemonConnection__block_invoke(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Connection to budd was interrupted!", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] lock];
    v5 = v4[2];
    v4[2] = 0;

    [v4[1] unlock];
  }
}

void __47__BYBuddyDaemonGeneralClient__daemonConnection__block_invoke_167(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Connection to budd was invalidated.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] lock];
    v5 = v4[2];
    v4[2] = 0;

    [v4[1] unlock];
  }
}

@end