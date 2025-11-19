@interface SBSCaptureButtonAppConfigurationClient
- (BSServiceConnection)_connection;
- (SBSCaptureButtonAppConfigurationClient)init;
- (SBSCaptureButtonAppConfigurationClientDelegate)delegate;
- (void)_setConnection:(id)a3;
- (void)establishConnectionIfNeeded;
- (void)receiveInitialOrUpdatedAssociatedAppBundleIdentifier:(id)a3;
- (void)receiveInitialOrUpdatedEligibleApps:(id)a3;
- (void)setCurrentAssociatedAppUsingBundleIdentifier:(id)a3;
@end

@implementation SBSCaptureButtonAppConfigurationClient

- (SBSCaptureButtonAppConfigurationClient)init
{
  v3.receiver = self;
  v3.super_class = SBSCaptureButtonAppConfigurationClient;
  result = [(SBSCaptureButtonAppConfigurationClient *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)establishConnectionIfNeeded
{
  v3 = [(SBSCaptureButtonAppConfigurationClient *)self _connection];

  if (!v3)
  {
    v4 = MEMORY[0x1E698F498];
    v5 = [MEMORY[0x1E698F498] defaultShellMachName];
    v6 = +[SBSCaptureButtonAppConfigurationServiceSpecification identifier];
    v7 = [v4 endpointForMachName:v5 service:v6 instance:0];

    v8 = [MEMORY[0x1E698F490] connectionWithEndpoint:v7];
    [(SBSCaptureButtonAppConfigurationClient *)self _setConnection:v8];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__SBSCaptureButtonAppConfigurationClient_establishConnectionIfNeeded__block_invoke;
    v9[3] = &unk_1E735F0A8;
    v9[4] = self;
    objc_copyWeak(&v10, &location);
    [v8 configureConnection:v9];
    [v8 activate];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __69__SBSCaptureButtonAppConfigurationClient_establishConnectionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSCaptureButtonAppConfigurationServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SBSCaptureButtonAppConfigurationServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setInterruptionHandler:&__block_literal_global_15];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SBSCaptureButtonAppConfigurationClient_establishConnectionIfNeeded__block_invoke_3;
  v6[3] = &unk_1E735F080;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
}

void __69__SBSCaptureButtonAppConfigurationClient_establishConnectionIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationClient interrupted connection %@", &v4, 0xCu);
  }

  [v2 activate];
}

void __69__SBSCaptureButtonAppConfigurationClient_establishConnectionIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationClient invalidated connection %@", &v6, 0xCu);
  }

  if (WeakRetained)
  {
    [WeakRetained _setConnection:0];
  }
}

- (BSServiceConnection)_connection
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setConnection:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = v6;
    os_unfair_lock_lock(&self->_lock);
    lock_connection = self->_lock_connection;
    self->_lock_connection = v4;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setCurrentAssociatedAppUsingBundleIdentifier:(id)a3
{
  v4 = a3;
  v6 = [(SBSCaptureButtonAppConfigurationClient *)self _connection];
  v5 = [v6 remoteTarget];
  [v5 setCurrentAssociatedAppUsingBundleIdentifier:v4];
}

- (void)receiveInitialOrUpdatedAssociatedAppBundleIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v3;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationClient received initial or updated active app bundle identifier: %{public}@.", buf, 0xCu);
  }

  v5 = v3;
  BSDispatchMain();
}

void __95__SBSCaptureButtonAppConfigurationClient_receiveInitialOrUpdatedAssociatedAppBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 captureButtonAppConfigurationClient:*(a1 + 32) receiveInitialOrUpdatedAssociatedAppBundleIdentifier:*(a1 + 40)];
}

- (void)receiveInitialOrUpdatedEligibleApps:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v3;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationClient received initial or updated eligible apps: %{public}@.", buf, 0xCu);
  }

  v5 = v3;
  BSDispatchMain();
}

void __78__SBSCaptureButtonAppConfigurationClient_receiveInitialOrUpdatedEligibleApps___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 captureButtonAppConfigurationClient:*(a1 + 32) receiveInitialOrUpdatedEligibleApps:*(a1 + 40)];
}

- (SBSCaptureButtonAppConfigurationClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end