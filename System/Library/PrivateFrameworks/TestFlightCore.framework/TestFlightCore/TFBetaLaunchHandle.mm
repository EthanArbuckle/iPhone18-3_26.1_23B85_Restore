@interface TFBetaLaunchHandle
- (BOOL)_remoteAlertShouldActivateForLaunchInfo:(id)a3;
- (TFBetaLaunchHandle)initWithProcessHandle:(id)a3;
- (TFBetaLaunchHandleActivationDelegate)activationDelegate;
- (void)_activateRemoteAlertWithLaunchInfo:(id)a3;
- (void)_updatedLaunchInfoForActivation:(id)a3;
- (void)activateIfNeeded;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation TFBetaLaunchHandle

- (TFBetaLaunchHandle)initWithProcessHandle:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TFBetaLaunchHandle;
  v6 = [(TFBetaLaunchHandle *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processHandle, a3);
    v8 = AMSGenerateLogCorrelationKey();
    logKey = v7->_logKey;
    v7->_logKey = v8;
  }

  return v7;
}

- (void)activateIfNeeded
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  v4 = [v3 generatedLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(TFBetaLaunchHandle *)self logKey];
    v8 = [(TFBetaLaunchHandle *)self processHandle];
    v9 = [v8 bundleIdentifier];
    v18 = 138543874;
    v19 = v5;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_26D2C7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: activateIfNeeded bundleId = %@", &v18, 0x20u);
  }

  v10 = [(TFBetaLaunchHandle *)self processHandle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = [MEMORY[0x277CEC4C0] sharedInstance];
    v13 = [v12 getLaunchInfoForBundleID:v11];

    if ([(TFBetaLaunchHandle *)self _remoteAlertShouldActivateForLaunchInfo:v13])
    {
      [(TFBetaLaunchHandle *)self _activateRemoteAlertWithLaunchInfo:v13];
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = [(TFBetaLaunchHandle *)self activationDelegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(TFBetaLaunchHandle *)self activationDelegate];
    [v17 betaLaunchHandle:self activateIfNeededEndedWithResult:v14];
  }
}

- (BOOL)_remoteAlertShouldActivateForLaunchInfo:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFBetaLaunchHandle *)self logKey];
    v25 = 138543874;
    v26 = v7;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo launchInfo=%@", &v25, 0x20u);
  }

  if (!v4)
  {
    v11 = +[TFLogConfiguration defaultConfiguration];
    v12 = [v11 generatedLogger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v15 = v18;
      v16 = [(TFBetaLaunchHandle *)self logKey];
      v25 = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v16;
      v17 = "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo: Not activating - Unconfigured launch info";
      goto LABEL_12;
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  if (([v4 isLaunchScreenEnabled] & 1) == 0)
  {
    v11 = +[TFLogConfiguration defaultConfiguration];
    v12 = [v11 generatedLogger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v15 = v19;
      v16 = [(TFBetaLaunchHandle *)self logKey];
      v25 = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v16;
      v17 = "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo: Not activating - Launch screen disabled";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v10 = [v4 lastWelcomeScreenViewDate];

  v11 = +[TFLogConfiguration defaultConfiguration];
  v12 = [v11 generatedLogger];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [(TFBetaLaunchHandle *)self logKey];
      v25 = 138543618;
      v26 = v14;
      v27 = 2112;
      v28 = v16;
      v17 = "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo: Not activating - Launch screen seen";
LABEL_12:
      _os_log_impl(&dword_26D2C7000, v12, OS_LOG_TYPE_DEFAULT, v17, &v25, 0x16u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v13)
  {
    v22 = objc_opt_class();
    v23 = v22;
    v24 = [(TFBetaLaunchHandle *)self logKey];
    v25 = 138543618;
    v26 = v22;
    v27 = 2112;
    v28 = v24;
    _os_log_impl(&dword_26D2C7000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo: Activating", &v25, 0x16u);
  }

  v20 = 1;
LABEL_14:

  return v20;
}

- (void)_activateRemoteAlertWithLaunchInfo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFBetaLaunchHandle *)self logKey];
    v22 = 138543874;
    v23 = v7;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: _activateRemoteAlertWithLaunchInfo launchInfo = %@", &v22, 0x20u);
  }

  v10 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServiceTFBetaLaunchHostViewController"];
  v11 = objc_alloc_init(MEMORY[0x277D66BD0]);
  v12 = [TFBetaLaunchHandleConfiguration alloc];
  v13 = [(TFBetaLaunchHandle *)self processHandle];
  v14 = [v13 bundleIdentifier];
  v15 = [(TFBetaLaunchHandleConfiguration *)v12 initWithBundleIdentifier:v14 preloadingLaunchInfo:v4];

  v16 = [(TFBetaLaunchHandleConfiguration *)v15 encodedAsUserInfo];
  [v11 setUserInfo:v16];

  v17 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v10 configurationContext:v11];
  [v17 addObserver:self];
  v18 = objc_alloc_init(MEMORY[0x277D66BC0]);
  v19 = objc_alloc(MEMORY[0x277D66C08]);
  v20 = [(TFBetaLaunchHandle *)self processHandle];
  v21 = [v19 initWithTargetProcess:v20];
  [v18 setPresentationTarget:v21];

  [v17 activateWithContext:v18];
  [(TFBetaLaunchHandle *)self _updatedLaunchInfoForActivation:v4];
}

- (void)_updatedLaunchInfoForActivation:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFBetaLaunchHandle *)self logKey];
    *buf = 138543874;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: _updatedLaunchInfoForActivation launchInfo = %@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  [v4 setLastWelcomeScreenViewDate:v10];

  v11 = [MEMORY[0x277CEC4C0] sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__TFBetaLaunchHandle__updatedLaunchInfoForActivation___block_invoke;
  v13[3] = &unk_279D97FC0;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [v11 setLaunchInfo:v12 withCompletionHandler:v13];
}

void __54__TFBetaLaunchHandle__updatedLaunchInfoForActivation___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = +[TFLogConfiguration defaultConfiguration];
    v5 = [v4 generatedLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 version];
      v10 = [v9 bundleID];
      v11 = [v3 localizedDescription];
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_26D2C7000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update launch info after activation. error = %@", &v12, 0x20u);
    }
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFBetaLaunchHandle *)self logKey];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: remoteAlertHandleDidDeactivate", &v10, 0x16u);
  }

  [v4 removeObserver:self];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = +[TFLogConfiguration defaultConfiguration];
  v9 = [v8 generatedLogger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(TFBetaLaunchHandle *)self logKey];
    v13 = [v6 localizedDescription];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_26D2C7000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: remoteAlertHandle:didInvalidateWithError error=%@", &v14, 0x20u);
  }

  [v7 removeObserver:self];
}

- (TFBetaLaunchHandleActivationDelegate)activationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activationDelegate);

  return WeakRetained;
}

@end